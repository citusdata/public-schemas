SELECT create_distributed_table('companies', 'id', shard_count => {{ shard_count | default(4) }});
SELECT create_distributed_table('campaigns', 'company_id', colocate_with => 'companies');
SELECT create_distributed_table('ads', 'company_id', colocate_with => 'companies');
