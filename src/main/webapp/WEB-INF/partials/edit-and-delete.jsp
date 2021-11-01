<div>
    <a href="/ads/edit?id=${ad.id}" class="btn btn-warning">Edit Ad</a>
    <form action="/ads/delete" method="post" style="display: inline;">
        <button type="submit" class="btn btn-Danger">Delete Ad</button>
        <input type="hidden" id="id" name="id" value="${ad.id}">
    </form>

</div>
