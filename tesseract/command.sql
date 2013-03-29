mysql -e "SELECT `id` `link`, FROM `memes`" | while read id link; do
    # use $id and $link variables
    echo "id: $id, link: $link"
done