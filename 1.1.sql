SELECT
  contacts.*,
  COUNT(friendship.id) AS friends_amount
FROM contacts
  INNER JOIN friendship ON contacts.id = friendship.contact_id
#   Если необходимо удостовериться что все друзья существую - добавляем join ниже
#   INNER JOIN contacts AS friend_in_contacts ON friend_in_contacts.id = friendship.friend_id
GROUP BY contacts.id
HAVING friends_amount >= 5