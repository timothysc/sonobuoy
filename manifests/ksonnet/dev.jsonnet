# Copyright 2017 Heptio Inc.
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

local rbac = import "examples/ksonnet/components/00-rbac.jsonnet";
local configmaps = import "examples/ksonnet/components/10-configmaps.jsonnet";
local pod = import "examples/ksonnet/components/20-pod.jsonnet";

rbac + configmaps + pod.objects(pullPolicy="IfNotPresent", debug=true)
