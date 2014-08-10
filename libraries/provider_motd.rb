#
# Cookbook Name:: motd
# Provider:: motd
#
# Author:: Sean OMeara <someara@getchef.com>
# Copyright 2013, Chef
# Author:: John Ko <git@johnko.ca>
# Copyright 2014, John Ko
#
# Licensed under the Apache License, Version 2.0 (the "License""");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef::Provider::Motd < Chef::Provider::MotdTail 

  action :create do
    converge_by 'write the template' do

      template new_resource.path do
        if new_resource.template_source.nil?
          source 'motd.erb'
          cookbook 'motd'
        else
          source new_resource.template_source
        end
        owner  'root'
        group  node['motd']['rootgroup']
        mode   '0644'
        backup 0
        action :create
      end

    end
  end

end
