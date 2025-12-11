let games = [];

/*************** INITIAL LOAD ***************/
async function loadGames() {
    const res = await fetch("/games");
    games = await res.json();
    renderGames(games);
}
loadGames();


/*************** RENDER GAME CARDS ***************/
function renderGames(list) {
    const grid = document.getElementById("gameGrid");
    grid.innerHTML = "";
    list.forEach(g => {
        const div = document.createElement("div");
        div.className = "game-card";
        div.textContent = g.title;
        div.onclick = () => launchGame(g.id);
        grid.appendChild(div);
    });
}


/*************** SEARCH (HASH via backend) ***************/
/* async function filterGames() {
    const q = document.getElementById("searchInput").value;
    const res = await fetch(`/search?q=${encodeURIComponent(q)}`);
    const filtered = await res.json();
    renderGames(filtered);
}

Searh was broken, decided i dont need it. Maybe in future
*/

/*************** SORTING (Now fully backend) ***************/
async function sortAZ() {
    const res = await fetch("/sortAZ");
    const sorted = await res.json();
    renderGames(sorted);
}

async function sortNew() {
    let res = await fetch("/sortNewest");
    let sorted = await res.json();
    renderGames(sorted);
}

async function sortOld() {
    let res = await fetch("/sortOldest");
    let sorted = await res.json();
    renderGames(sorted);
}



/*************** LAUNCH ***************/
async function launchGame(id) {
    await fetch(`/launch?id=${id}`);
    showHistory();
}


/*************** HISTORY (STACK) ***************/
async function showHistory() {
    const out = document.getElementById("output");
    out.style.display = "block";
    const res = await fetch("/history");
    const txt = await res.text();
    out.textContent = txt;
}


/*************** RECOMMENDATIONS (GRAPH) ***************/
function startRecommend() {
    const out = document.getElementById("output");
    const grid = document.getElementById("gameGrid");

    out.style.display = "block";
    out.textContent = "Enter game name below to get related games.";

    grid.innerHTML = `
        <div id="recResults"
             style="
                display:flex;
                flex-wrap:wrap;
                gap:15px;
                justify-content:center;
                margin-top:35px;
                margin-bottom:35px;
             ">
        </div>
    `;

    let existing = document.getElementById("recInputWrapper");
    if (existing) existing.remove();

    const wrapper = document.createElement("div");
    wrapper.id = "recInputWrapper";
    wrapper.style.cssText = `
        width:100%;
        text-align:center;
        margin-top:35px;
        display:block;
    `;

    wrapper.innerHTML = `
        <input id="recInput"
               placeholder="Search game..."
               oninput="recommendSearch()"
               style="
                   width:350px;
                   padding:12px;
                   border-radius:6px;
                   font-size:18px;
                   background:#0f0f14;
                   color:white;
               ">
    `;

    document.body.appendChild(wrapper);
}

async function backendPrefixSearch(prefix) {
    const res = await fetch(`/search?q=${encodeURIComponent(prefix)}`);
    return await res.json();
}

async function recommendSearch() {
    let q = document.getElementById("recInput").value.toLowerCase();
    if (q.length === 0) {
        document.getElementById("recResults").textContent = "";
        return;
    }

    // use the hash table from backend
    let matches = await backendPrefixSearch(q);

    if (matches.length === 0) {
        document.getElementById("recResults").textContent = "No game found.";
        return;
    }

    // pick first match
    let game = matches[0];

    const res = await fetch(`/recommend?id=${game.id}`);
    const txt = await res.text();

    document.getElementById("recResults").textContent = txt;
}


