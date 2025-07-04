window.addEventListener('message', function (event) {
    const data = event.data;

    if (data.action === "show") {
        document.getElementById("key").textContent = data.key || '';
        document.getElementById("title").textContent = data.title || '';
        document.getElementById("description").textContent = data.description || '';

        document.getElementById("text-ui").classList.remove("hidden");
    } else if (data.action === "hide") {
        document.getElementById("text-ui").classList.add("hidden");
    }
});
