SELECT create_distributed_table('github_users', 'user_id', shard_count => {{ shard_count | default(4) }});
SELECT create_distributed_table('github_events', 'user_id', colocate_with => 'github_users');
