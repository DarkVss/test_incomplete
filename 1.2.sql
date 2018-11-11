SELECT
  friend_left.name,
  friend_right.name
FROM friendship
  INNER JOIN contacts AS friend_left ON friend_left.id = friendship.contact_id
  INNER JOIN contacts AS friend_right ON friend_right.id = friendship.friend_id
WHERE friendship.request_accepted = 1