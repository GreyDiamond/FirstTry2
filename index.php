<?php
if ($_POST) {
    echo '<pre>';
    echo htmlspecialchars(print_r($_POST, true));
    echo '</pre>';
}
?>
<form action="" method="post">
    ИМЯ:  <input type="text" name="personal[name]" /><br />
    МЫЛО: <input type="text" name="personal[email]" /><br />
    ПИВО: <br />
    <select multiple name="beer[]">
        <option value="warthog">Warthog</option>
        <option value="guinness">Guinness</option>
        <option value="stuttgarter">Stuttgarter Schwabenbrau</option>
    </select><br />
    <input type="submit" value="сабмит!" />
</form> 