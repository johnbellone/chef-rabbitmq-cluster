#
# Cookbook Name:: rabbitmq-cluster
# Recipe:: default
#
# Copyright (C) 2015 Sunggun Yu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if defined?(ChefSpec)
  ChefSpec.define_matcher :rabbitmq_cluster

  def join_rabbitmq_cluster(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rabbitmq_cluster, :join, resource_name)
  end

  def change_cluster_node_type_rabbitmq_cluster(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rabbitmq_cluster, :change_cluster_node_type, resource_name)
  end
end
