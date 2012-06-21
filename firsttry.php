<?php
if ($_POST) {
    echo '<pre>';
    echo htmlspecialchars(print_r($_POST, true));
    echo '</pre>';
}
?>
<form action="" method="post">
    Èìÿ:  <input type="text" name="personal[name]" /><br />
    Email: <input type="text" name="personal[email]" /><br />
    Ïèâî: <br />
    <select multiple name="beer[]">
        <option value="warthog">Warthog</option>
        <option value="guinness">Guinness</option>
        <option value="stuttgarter">Stuttgarter Schwabenbrau</option>
    </select><br />
    <input type="submit" value="Ñ‚Ğ¾Ğ¶Ğµ ÑĞ°Ğ±Ğ¼Ğ¸Ñ‚!" />
</form> 