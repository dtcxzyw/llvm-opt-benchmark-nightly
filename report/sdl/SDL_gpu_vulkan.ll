Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0
@.str.159 = private unnamed_addr constant [118 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderSampledImageArrayNonUniformIndexing'\00", align 1
@.str.160 = private unnamed_addr constant [119 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderStorageBufferArrayNonUniformIndexing'\00", align 1
@.str.161 = private unnamed_addr constant [118 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderStorageImageArrayNonUniformIndexing'\00", align 1
@.str.162 = private unnamed_addr constant [121 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderInputAttachmentArrayNonUniformIndexing'\00", align 1
@.str.163 = private unnamed_addr constant [124 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderUniformTexelBufferArrayNonUniformIndexing'\00", align 1
@.str.164 = private unnamed_addr constant [124 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderStorageTexelBufferArrayNonUniformIndexing'\00", align 1
@.str.165 = private unnamed_addr constant [122 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingUniformBufferUpdateAfterBind'\00", align 1
@.str.166 = private unnamed_addr constant [121 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingSampledImageUpdateAfterBind'\00", align 1
@.str.167 = private unnamed_addr constant [121 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingStorageImageUpdateAfterBind'\00", align 1
@.str.168 = private unnamed_addr constant [122 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingStorageBufferUpdateAfterBind'\00", align 1
@.str.169 = private unnamed_addr constant [127 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingUniformTexelBufferUpdateAfterBind'\00", align 1
@.str.170 = private unnamed_addr constant [127 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingStorageTexelBufferUpdateAfterBind'\00", align 1
@.str.171 = private unnamed_addr constant [118 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingUpdateUnusedWhilePending'\00", align 1
@.str.172 = private unnamed_addr constant [108 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingPartiallyBound'\00", align 1
@.str.173 = private unnamed_addr constant [117 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingVariableDescriptorCount'\00", align 1
@.str.174 = private unnamed_addr constant [99 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'runtimeDescriptorArray'\00", align 1
@.str.175 = private unnamed_addr constant [96 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'samplerFilterMinmax'\00", align 1
@.str.176 = private unnamed_addr constant [94 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'scalarBlockLayout'\00", align 1
@.str.177 = private unnamed_addr constant [97 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'imagelessFramebuffer'\00", align 1
@.str.178 = private unnamed_addr constant [104 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'uniformBufferStandardLayout'\00", align 1
@.str.179 = private unnamed_addr constant [104 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderSubgroupExtendedTypes'\00", align 1
@.str.180 = private unnamed_addr constant [104 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'separateDepthStencilLayouts'\00", align 1
@.str.181 = private unnamed_addr constant [91 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'hostQueryReset'\00", align 1
@.str.182 = private unnamed_addr constant [94 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'timelineSemaphore'\00", align 1
@.str.183 = private unnamed_addr constant [96 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'bufferDeviceAddress'\00", align 1
@.str.184 = private unnamed_addr constant [109 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'bufferDeviceAddressCaptureReplay'\00", align 1
@.str.185 = private unnamed_addr constant [107 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'bufferDeviceAddressMultiDevice'\00", align 1
@.str.186 = private unnamed_addr constant [94 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'vulkanMemoryModel'\00", align 1
@.str.187 = private unnamed_addr constant [105 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'vulkanMemoryModelDeviceScope'\00", align 1
@.str.188 = private unnamed_addr constant [122 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'vulkanMemoryModelAvailabilityVisibilityChains'\00", align 1
@.str.189 = private unnamed_addr constant [102 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderOutputViewportIndex'\00", align 1
@.str.190 = private unnamed_addr constant [94 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderOutputLayer'\00", align 1
@.str.191 = private unnamed_addr constant [103 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'subgroupBroadcastDynamicId'\00", align 1
@.str.192 = private unnamed_addr constant [94 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'robustImageAccess'\00", align 1
@.str.193 = private unnamed_addr constant [95 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'inlineUniformBlock'\00", align 1
@.str.194 = private unnamed_addr constant [127 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'descriptorBindingInlineUniformBlockUpdateAfterBind'\00", align 1
@.str.195 = private unnamed_addr constant [105 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'pipelineCreationCacheControl'\00", align 1
@.str.196 = private unnamed_addr constant [88 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'privateData'\00", align 1
@.str.197 = private unnamed_addr constant [107 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderDemoteToHelperInvocation'\00", align 1
@.str.198 = private unnamed_addr constant [102 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderTerminateInvocation'\00", align 1
@.str.199 = private unnamed_addr constant [96 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'subgroupSizeControl'\00", align 1
@.str.200 = private unnamed_addr constant [97 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'computeFullSubgroups'\00", align 1
@.str.201 = private unnamed_addr constant [93 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'synchronization2'\00", align 1
@.str.202 = private unnamed_addr constant [103 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'textureCompressionASTC_HDR'\00", align 1
@.str.203 = private unnamed_addr constant [112 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderZeroInitializeWorkgroupMemory'\00", align 1
@.str.204 = private unnamed_addr constant [93 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'dynamicRendering'\00", align 1
@.str.205 = private unnamed_addr constant [100 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'shaderIntegerDotProduct'\00", align 1
@.str.206 = private unnamed_addr constant [89 x i8] c"SDL GPU Vulkan: Application requested unsupported physical device feature 'maintenance4'\00", align 1
@.str.207 = private unnamed_addr constant [52 x i8] c"Required Vulkan device extension '%s' not supported\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"VK_KHR_swapchain\00", align 1
@.str.209 = private unnamed_addr constant [20 x i8] c"VK_KHR_maintenance1\00", align 1
@.str.210 = private unnamed_addr constant [25 x i8] c"VK_KHR_driver_properties\00", align 1
@.str.211 = private unnamed_addr constant [26 x i8] c"VK_KHR_portability_subset\00", align 1
@.str.212 = private unnamed_addr constant [23 x i8] c"VK_MSFT_layered_driver\00", align 1
@.str.213 = private unnamed_addr constant [36 x i8] c"VK_EXT_texture_compression_astc_hdr\00", align 1
@VULKAN_INTERNAL_GetDeviceRank.DEVICE_PRIORITY_HIGHPERFORMANCE = internal unnamed_addr constant [5 x i8] c"\00\03\04\02\01", align 1
@VULKAN_INTERNAL_GetDeviceRank.DEVICE_PRIORITY_LOWPOWER = internal unnamed_addr constant [5 x i8] c"\00\04\03\02\01", align 1
@.str.214 = private unnamed_addr constant [30 x i8] c"SDL.gpu.device.create.verbose\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.216 = private unnamed_addr constant [29 x i8] c"Failed to initialize Vulkan!\00", align 1
@.str.217 = private unnamed_addr constant [23 x i8] c"SDL_GPU Driver: Vulkan\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"SDL.gpu.device.name\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c"Vulkan Device: %s\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.222 = private unnamed_addr constant [30 x i8] c"SDL.gpu.device.driver_version\00", align 1
@.str.223 = private unnamed_addr constant [27 x i8] c"SDL.gpu.device.driver_name\00", align 1
@.str.224 = private unnamed_addr constant [27 x i8] c"SDL.gpu.device.driver_info\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"Vulkan Driver: %s %s\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"Vulkan Conformance: %s\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"Vulkan Driver: %s\00", align 1
@.str.229 = private unnamed_addr constant [33 x i8] c"Failed to create logical device!\00", align 1
@.str.230 = private unnamed_addr constant [25 x i8] c"vkAllocateCommandBuffers\00", align 1
@.str.231 = private unnamed_addr constant [25 x i8] c"vkAllocateDescriptorSets\00", align 1
@.str.232 = private unnamed_addr constant [17 x i8] c"vkAllocateMemory\00", align 1
@.str.233 = private unnamed_addr constant [21 x i8] c"vkBeginCommandBuffer\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"vkBindBufferMemory\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"vkBindImageMemory\00", align 1
@.str.236 = private unnamed_addr constant [21 x i8] c"vkCmdBeginRenderPass\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"vkCmdBindDescriptorSets\00", align 1
@.str.238 = private unnamed_addr constant [21 x i8] c"vkCmdBindIndexBuffer\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"vkCmdBindPipeline\00", align 1
@.str.240 = private unnamed_addr constant [23 x i8] c"vkCmdBindVertexBuffers\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"vkCmdBlitImage\00", align 1
@.str.242 = private unnamed_addr constant [22 x i8] c"vkCmdClearAttachments\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"vkCmdClearColorImage\00", align 1
@.str.244 = private unnamed_addr constant [28 x i8] c"vkCmdClearDepthStencilImage\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c"vkCmdCopyBuffer\00", align 1
@.str.246 = private unnamed_addr constant [15 x i8] c"vkCmdCopyImage\00", align 1
@.str.247 = private unnamed_addr constant [23 x i8] c"vkCmdCopyBufferToImage\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c"vkCmdCopyImageToBuffer\00", align 1
@.str.249 = private unnamed_addr constant [14 x i8] c"vkCmdDispatch\00", align 1
@.str.250 = private unnamed_addr constant [22 x i8] c"vkCmdDispatchIndirect\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"vkCmdDraw\00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"vkCmdDrawIndexed\00", align 1
@.str.253 = private unnamed_addr constant [25 x i8] c"vkCmdDrawIndexedIndirect\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"vkCmdDrawIndirect\00", align 1
@.str.255 = private unnamed_addr constant [19 x i8] c"vkCmdEndRenderPass\00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"vkCmdPipelineBarrier\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"vkCmdResolveImage\00", align 1
@.str.258 = private unnamed_addr constant [23 x i8] c"vkCmdSetBlendConstants\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"vkCmdSetDepthBias\00", align 1
@.str.260 = private unnamed_addr constant [16 x i8] c"vkCmdSetScissor\00", align 1
@.str.261 = private unnamed_addr constant [25 x i8] c"vkCmdSetStencilReference\00", align 1
@.str.262 = private unnamed_addr constant [17 x i8] c"vkCmdSetViewport\00", align 1
@.str.263 = private unnamed_addr constant [15 x i8] c"vkCreateBuffer\00", align 1
@.str.264 = private unnamed_addr constant [20 x i8] c"vkCreateCommandPool\00", align 1
@.str.265 = private unnamed_addr constant [23 x i8] c"vkCreateDescriptorPool\00", align 1
@.str.266 = private unnamed_addr constant [28 x i8] c"vkCreateDescriptorSetLayout\00", align 1
@.str.267 = private unnamed_addr constant [14 x i8] c"vkCreateFence\00", align 1
@.str.268 = private unnamed_addr constant [20 x i8] c"vkCreateFramebuffer\00", align 1
@.str.269 = private unnamed_addr constant [25 x i8] c"vkCreateComputePipelines\00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"vkCreateGraphicsPipelines\00", align 1
@.str.271 = private unnamed_addr constant [14 x i8] c"vkCreateImage\00", align 1
@.str.272 = private unnamed_addr constant [18 x i8] c"vkCreateImageView\00", align 1
@.str.273 = private unnamed_addr constant [22 x i8] c"vkCreatePipelineCache\00", align 1
@.str.274 = private unnamed_addr constant [23 x i8] c"vkCreatePipelineLayout\00", align 1
@.str.275 = private unnamed_addr constant [19 x i8] c"vkCreateRenderPass\00", align 1
@.str.276 = private unnamed_addr constant [16 x i8] c"vkCreateSampler\00", align 1
@.str.277 = private unnamed_addr constant [18 x i8] c"vkCreateSemaphore\00", align 1
@.str.278 = private unnamed_addr constant [21 x i8] c"vkCreateShaderModule\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"vkDestroyBuffer\00", align 1
@.str.280 = private unnamed_addr constant [21 x i8] c"vkDestroyCommandPool\00", align 1
@.str.281 = private unnamed_addr constant [24 x i8] c"vkDestroyDescriptorPool\00", align 1
@.str.282 = private unnamed_addr constant [29 x i8] c"vkDestroyDescriptorSetLayout\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"vkDestroyDevice\00", align 1
@.str.284 = private unnamed_addr constant [15 x i8] c"vkDestroyFence\00", align 1
@.str.285 = private unnamed_addr constant [21 x i8] c"vkDestroyFramebuffer\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"vkDestroyImage\00", align 1
@.str.287 = private unnamed_addr constant [19 x i8] c"vkDestroyImageView\00", align 1
@.str.288 = private unnamed_addr constant [18 x i8] c"vkDestroyPipeline\00", align 1
@.str.289 = private unnamed_addr constant [23 x i8] c"vkDestroyPipelineCache\00", align 1
@.str.290 = private unnamed_addr constant [24 x i8] c"vkDestroyPipelineLayout\00", align 1
@.str.291 = private unnamed_addr constant [20 x i8] c"vkDestroyRenderPass\00", align 1
@.str.292 = private unnamed_addr constant [17 x i8] c"vkDestroySampler\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"vkDestroySemaphore\00", align 1
@.str.294 = private unnamed_addr constant [22 x i8] c"vkDestroyShaderModule\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"vkDeviceWaitIdle\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"vkEndCommandBuffer\00", align 1
@.str.297 = private unnamed_addr constant [21 x i8] c"vkFreeCommandBuffers\00", align 1
@.str.298 = private unnamed_addr constant [13 x i8] c"vkFreeMemory\00", align 1
@.str.299 = private unnamed_addr constant [17 x i8] c"vkGetDeviceQueue\00", align 1
@.str.300 = private unnamed_addr constant [23 x i8] c"vkGetPipelineCacheData\00", align 1
@.str.301 = private unnamed_addr constant [17 x i8] c"vkGetFenceStatus\00", align 1
@.str.302 = private unnamed_addr constant [30 x i8] c"vkGetBufferMemoryRequirements\00", align 1
@.str.303 = private unnamed_addr constant [29 x i8] c"vkGetImageMemoryRequirements\00", align 1
@.str.304 = private unnamed_addr constant [12 x i8] c"vkMapMemory\00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"vkQueueSubmit\00", align 1
@.str.306 = private unnamed_addr constant [16 x i8] c"vkQueueWaitIdle\00", align 1
@.str.307 = private unnamed_addr constant [21 x i8] c"vkResetCommandBuffer\00", align 1
@.str.308 = private unnamed_addr constant [19 x i8] c"vkResetCommandPool\00", align 1
@.str.309 = private unnamed_addr constant [22 x i8] c"vkResetDescriptorPool\00", align 1
@.str.310 = private unnamed_addr constant [14 x i8] c"vkResetFences\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"vkUnmapMemory\00", align 1
@.str.312 = private unnamed_addr constant [23 x i8] c"vkUpdateDescriptorSets\00", align 1
@.str.313 = private unnamed_addr constant [16 x i8] c"vkWaitForFences\00", align 1
@.str.314 = private unnamed_addr constant [22 x i8] c"vkAcquireNextImageKHR\00", align 1
@.str.315 = private unnamed_addr constant [21 x i8] c"vkCreateSwapchainKHR\00", align 1
@.str.316 = private unnamed_addr constant [22 x i8] c"vkDestroySwapchainKHR\00", align 1
@.str.317 = private unnamed_addr constant [18 x i8] c"vkQueuePresentKHR\00", align 1
@.str.318 = private unnamed_addr constant [24 x i8] c"vkGetSwapchainImagesKHR\00", align 1
@.str.319 = private unnamed_addr constant [39 x i8] c"Incompatible shader format for Vulkan!\00", align 1
@.str.320 = private unnamed_addr constant [46 x i8] c"The provided shader code is not valid SPIR-V!\00", align 1
@.str.321 = private unnamed_addr constant [24 x i8] c"vkCreateComputePipeline\00", align 1
@.str.322 = private unnamed_addr constant [36 x i8] c"SDL.gpu.computepipeline.create.name\00", align 1
@VULKAN_CreateGraphicsPipeline.dynamicStates = internal constant [4 x i32] [i32 0, i32 1, i32 4, i32 8], align 16
@SDLToVK_SampleCount = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@VULKAN_CreateGraphicsPipeline.sdl_assert_data = internal global { i8, [3 x i8], i32, ptr, ptr, i32, [4 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, ptr @.str.324, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.324 = private unnamed_addr constant [76 x i8] c"!\22CreateGraphicsPipeline was passed a fragment shader for the vertex stage\22\00", align 1
@__func__.VULKAN_CreateGraphicsPipeline = private unnamed_addr constant [30 x i8] c"VULKAN_CreateGraphicsPipeline\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"SDL_gpu_vulkan.c\00", align 1
@VULKAN_CreateGraphicsPipeline.sdl_assert_data.327 = internal global { i8, [3 x i8], i32, ptr, ptr, i32, [4 x i8], ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, ptr @.str.328, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.328 = private unnamed_addr constant [76 x i8] c"!\22CreateGraphicsPipeline was passed a vertex shader for the fragment stage\22\00", align 1
@SDLToVK_VertexFormat = internal unnamed_addr constant [31 x i32] [i32 0, i32 99, i32 102, i32 105, i32 108, i32 98, i32 101, i32 104, i32 107, i32 100, i32 103, i32 106, i32 109, i32 21, i32 42, i32 20, i32 41, i32 17, i32 38, i32 16, i32 37, i32 82, i32 96, i32 81, i32 95, i32 78, i32 92, i32 77, i32 91, i32 83, i32 97], align 16
@SDLToVK_PrimitiveType = internal unnamed_addr constant [5 x i32] [i32 3, i32 4, i32 1, i32 2, i32 0], align 16
@SDLToVK_CullMode = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@SDLToVK_CompareOp = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@SDLToVK_BlendFactor = internal unnamed_addr constant [14 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 14], align 16
@SDLToVK_BlendOp = internal unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@.str.329 = private unnamed_addr constant [47 x i8] c"Failed to initialize pipeline resource layout!\00", align 1
@.str.330 = private unnamed_addr constant [37 x i8] c"SDL.gpu.graphicspipeline.create.name\00", align 1
@SDLToVK_TextureFormat = internal unnamed_addr constant [105 x i32] [i32 0, i32 9, i32 9, i32 16, i32 37, i32 70, i32 77, i32 91, i32 64, i32 4, i32 8, i32 3, i32 44, i32 133, i32 135, i32 137, i32 139, i32 141, i32 145, i32 144, i32 143, i32 10, i32 17, i32 38, i32 71, i32 78, i32 92, i32 76, i32 83, i32 97, i32 100, i32 103, i32 109, i32 122, i32 13, i32 20, i32 41, i32 74, i32 81, i32 95, i32 98, i32 101, i32 107, i32 14, i32 21, i32 42, i32 75, i32 82, i32 96, i32 99, i32 102, i32 108, i32 43, i32 50, i32 134, i32 136, i32 138, i32 146, i32 124, i32 125, i32 126, i32 129, i32 130, i32 157, i32 159, i32 161, i32 163, i32 165, i32 167, i32 169, i32 171, i32 173, i32 175, i32 177, i32 179, i32 181, i32 183, i32 158, i32 160, i32 162, i32 164, i32 166, i32 168, i32 170, i32 172, i32 174, i32 176, i32 178, i32 180, i32 182, i32 184, i32 1000066000, i32 1000066001, i32 1000066002, i32 1000066003, i32 1000066004, i32 1000066005, i32 1000066006, i32 1000066007, i32 1000066008, i32 1000066009, i32 1000066010, i32 1000066011, i32 1000066012, i32 1000066013], align 16
@.str.331 = private unnamed_addr constant [45 x i8] c"Unsupported fill mode requested, using FILL!\00", align 1
@.str.332 = private unnamed_addr constant [28 x i8] c"SDL.gpu.sampler.create.name\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.334 = private unnamed_addr constant [27 x i8] c"SDL.gpu.shader.create.name\00", align 1
@.str.335 = private unnamed_addr constant [28 x i8] c"SDL.gpu.texture.create.name\00", align 1
@.str.336 = private unnamed_addr constant [35 x i8] c"Unable to bind memory for texture!\00", align 1
@.str.337 = private unnamed_addr constant [20 x i8] c"\22vkCreateImageView\22\00", align 1
@.str.338 = private unnamed_addr constant [70 x i8] c"Out of device-local memory, allocating textures on host-local memory!\00", align 1
@.str.339 = private unnamed_addr constant [74 x i8] c"BindResourceMemory must be given either a VulkanBuffer or a VulkanTexture\00", align 1
@.str.342 = private unnamed_addr constant [35 x i8] c"Texture has no default usage mode!\00", align 1
@.str.343 = private unnamed_addr constant [34 x i8] c"Failed to bind memory for buffer!\00", align 1
@.str.344 = private unnamed_addr constant [26 x i8] c"Unrecognized buffer type!\00", align 1
@.str.345 = private unnamed_addr constant [98 x i8] c"Out of device-local memory, allocating buffers on host-local memory, expect degraded performance!\00", align 1
@.str.346 = private unnamed_addr constant [97 x i8] c"Out of BAR memory, allocating uniform buffers on host-local memory, expect degraded performance!\00", align 1
@.str.347 = private unnamed_addr constant [79 x i8] c"Integrated memory detected, allocating TransferBuffers on device-local memory!\00", align 1
@SDLToVK_LoadOp = internal unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@SDLToVK_StoreOp = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 1, i32 0], align 16
@.str.349 = private unnamed_addr constant [34 x i8] c"Buffer has no default usage mode!\00", align 1
@.str.350 = private unnamed_addr constant [65 x i8] c"Must claim window before querying swapchain composition support!\00", align 1
@.str.351 = private unnamed_addr constant [29 x i8] c"Window has no Vulkan surface\00", align 1
@SwapchainCompositionToFormat = internal unnamed_addr constant [4 x i32] [i32 44, i32 50, i32 97, i32 64], align 16
@SwapchainCompositionToColorSpace = internal unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1000104002, i32 1000104008], align 16
@SwapchainCompositionToFallbackFormat = internal unnamed_addr constant [4 x i32] [i32 37, i32 43, i32 0, i32 0], align 16
@.str.352 = private unnamed_addr constant [29 x i8] c"SDL.internal.gpu.vulkan.data\00", align 1
@.str.353 = private unnamed_addr constant [42 x i8] c"This surface does not support presenting!\00", align 1
@.str.354 = private unnamed_addr constant [65 x i8] c"Opaque presentation unsupported! Expect weird transparency bugs!\00", align 1
@.str.355 = private unnamed_addr constant [56 x i8] c"Must claim window before querying present mode support!\00", align 1
@SDLToVK_PresentMode = internal unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@.str.356 = private unnamed_addr constant [22 x i8] c"No video device found\00", align 1
@.str.357 = private unnamed_addr constant [53 x i8] c"Video device does not implement Vulkan_CreateSurface\00", align 1
@.str.358 = private unnamed_addr constant [23 x i8] c"Window already claimed\00", align 1
@SwapchainCompositionSwizzle = internal unnamed_addr constant [4 x %struct.VkComponentMapping] [%struct.VkComponentMapping zeroinitializer, %struct.VkComponentMapping zeroinitializer, %struct.VkComponentMapping zeroinitializer, %struct.VkComponentMapping { i32 3, i32 4, i32 5, i32 6 }], align 16
@.str.359 = private unnamed_addr constant [57 x i8] c"Device does not support requested swapchain composition!\00", align 1
@.str.360 = private unnamed_addr constant [48 x i8] c"Device does not support requested present_mode!\00", align 1
@.str.361 = private unnamed_addr constant [92 x i8] c"SDL_WINDOW_TRANSPARENT flag set, but no suitable swapchain composite alpha value supported!\00", align 1
@.str.362 = private unnamed_addr constant [34 x i8] c"Window not claimed by this device\00", align 1
@.str.363 = private unnamed_addr constant [53 x i8] c"Cannot set swapchain parameters on unclaimed window!\00", align 1
@.str.364 = private unnamed_addr constant [37 x i8] c"Swapchain composition not supported!\00", align 1
@.str.365 = private unnamed_addr constant [28 x i8] c"Present mode not supported!\00", align 1
@.str.366 = private unnamed_addr constant [58 x i8] c"Cannot get swapchain format, window has not been claimed!\00", align 1
@.str.367 = private unnamed_addr constant [61 x i8] c"Cannot acquire a swapchain texture from an unclaimed window!\00", align 1
@.str.368 = private unnamed_addr constant [35 x i8] c"Failed to recreate Vulkan surface!\00", align 1
@.str.369 = private unnamed_addr constant [54 x i8] c"Cannot wait for a swapchain from an unclaimed window!\00", align 1
@.str.370 = private unnamed_addr constant [41 x i8] c"Failed to defragment memory, likely OOM!\00", align 1
@.str.371 = private unnamed_addr constant [34 x i8] c"Failed to allocate defrag buffer!\00", align 1
@.str.372 = private unnamed_addr constant [21 x i8] c"vkGetFenceStatus: %s\00", align 1
@switch.table.VULKAN_INTERNAL_CreateTexture = private unnamed_addr constant [3 x i8] c" \10\10", align 4
@switch.table.VULKAN_INTERNAL_CreateTexture.24 = private unnamed_addr constant [4 x i8] c"\05\02\03\06", align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionFromDefaultUsage.29 = private unnamed_addr constant [9 x i16] [i16 2048, i16 4096, i16 32, i16 32, i16 32, i16 96, i16 384, i16 1536, i16 0], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionFromDefaultUsage.30 = private unnamed_addr constant [9 x i32] [i32 6, i32 7, i32 5, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1000001002], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionFromDefaultUsage.31 = private unnamed_addr constant [9 x i16] [i16 4096, i16 4096, i16 136, i16 136, i16 2048, i16 2048, i16 1024, i16 768, i16 8192], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage = private unnamed_addr constant [7 x i16] [i16 2048, i16 4096, i16 32, i16 32, i16 32, i16 96, i16 256], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.32 = private unnamed_addr constant [7 x i8] c"\06\07\05\01\01\01\02", align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.33 = private unnamed_addr constant [7 x i16] [i16 4096, i16 4096, i16 136, i16 136, i16 2048, i16 2048, i16 1024], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.34 = private unnamed_addr constant [6 x i16] [i16 32, i16 32, i16 32, i16 96, i16 384, i16 1536], align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.35 = private unnamed_addr constant [6 x i8] c"\05\01\01\01\02\03", align 4
@switch.table.VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage.36 = private unnamed_addr constant [6 x i16] [i16 136, i16 136, i16 2048, i16 2048, i16 1024, i16 768], align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage = private unnamed_addr constant [5 x i16] [i16 32, i16 32, i16 32, i16 96, i16 256], align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage.37 = private unnamed_addr constant [5 x i8] c"\05\01\01\01\02", align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage.38 = private unnamed_addr constant [5 x i16] [i16 136, i16 136, i16 2048, i16 2048, i16 1024], align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage.39 = private unnamed_addr constant [5 x i16] [i16 2048, i16 4096, i16 32, i16 32, i16 32], align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage.40 = private unnamed_addr constant [5 x i8] c"\06\07\05\01\01", align 4
@switch.table.VULKAN_INTERNAL_TextureTransitionFromDefaultUsage.41 = private unnamed_addr constant [5 x i16] [i16 4096, i16 4096, i16 136, i16 136, i16 2048], align 4

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @VULKAN_PrepareDriver(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.VulkanFeatures, align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %1, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #13
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @SDL_Vulkan_LoadLibrary_REAL(ptr noundef null) #13
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(3248) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 3248) #16 ; 7 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %1, ptr noundef nonnull @.str.2, i1 noundef zeroext false) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1404
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 4
  %i.j = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %1, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1405
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 1
  %i.m = call fastcc zeroext i1 @VULKAN_INTERNAL_PrepareVulkan(ptr noundef %i.f, ptr noundef %2, i32 noundef %1) ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2376
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.f, align 8
  call void %i.o(ptr noundef %i.p, ptr noundef null) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @SDL_free_REAL(ptr noundef nonnull %i.f) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.0 = phi i1 [ %i.m, %bb.g ], [ false, %bb.d ]
  call void @SDL_Vulkan_UnloadLibrary_REAL() #13
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  %.014 = phi i1 [ false, %bb.a ], [ %.0, %bb.h ], [ false, %bb.b ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.014
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @VULKAN_CreateDevice(i1 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.VulkanFeatures, align 8     ; 4 uses
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = zext i1 %0 to i8
  %i.d = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.e = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %2, ptr noundef nonnull @.str.214, i1 noundef zeroext true) #13 ; 3 uses
  %i.f = tail call zeroext i1 @SDL_Vulkan_LoadLibrary_REAL(ptr noundef null) #13
  br i1 %i.f, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(3248) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 3248) #16 ; 90 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_Vulkan_UnloadLibrary_REAL() #13
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1404 ; 3 uses
  store i8 %i.c, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1405
  store i8 %i.d, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1412
  store i32 2, ptr %i.j, align 4
  %i.k = call fastcc zeroext i1 @VULKAN_INTERNAL_PrepareVulkan(ptr noundef %i.g, ptr noundef %3, i32 noundef %2)
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.h, align 4, !range !23, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216) #13 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.g) #13
  call void @SDL_Vulkan_UnloadLibrary_REAL() #13
  br label %bb.y

bb.h:                                             ; preds = %bb.d
  %i.o = call i32 @SDL_CreateProperties_REAL() #13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1408 ; 5 uses
  store i32 %i.o, ptr %i.p, align 8
  br i1 %i.e, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @SDL_LogInfo_REAL(i32 noundef 9, ptr noundef nonnull @.str.217) #13
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8
  %i.s = call zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef %i.r, ptr noundef nonnull @.str.218, ptr noundef nonnull %i.q) #13 ; 0 uses
  call void (i32, ptr, ...) @SDL_LogInfo_REAL(i32 noundef 9, ptr noundef nonnull @.str.219, ptr noundef nonnull %i.q) #13
  br label %bb.j

.critedge:                                        ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.u = call zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef %i.o, ptr noundef nonnull @.str.218, ptr noundef nonnull %i.t) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.w = load i32, ptr %i.v, align 4              ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 4318
  %i.aa = lshr i32 %i.w, 22                       ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = lshr i32 %i.w, 14
  %i.ac = and i32 %i.ab, 255
  %i.ad = lshr i32 %i.w, 6
  %i.ae = and i32 %i.ad, 255
  %i.af = and i32 %i.w, 63
  %i.ag = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.220, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.af) #13 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = lshr i32 %i.w, 12
  %i.ai = and i32 %i.ah, 1023
  %i.aj = and i32 %i.w, 4095
  %i.ak = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.221, i32 noundef %i.aa, i32 noundef %i.ai, i32 noundef %i.aj) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = load i32, ptr %i.p, align 8
  %i.am = call zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef %i.al, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1418
end_hunk_0
begin_hunk_1_@VULKAN_CreateGraphicsPipeline:bb.a
    i32 -1000255000, label %bb.aj
    i32 1000001003, label %bb.ak
    i32 -1000000001, label %bb.al
    i32 -1000012000, label %bb.am
  ]

bb.x:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.y:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.z:                                             ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.aa:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ab:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ac:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ad:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ae:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.af:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ag:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ah:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ai:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.aj:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.ak:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.al:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.am:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

bb.an:                                            ; preds = %bb.w
  br label %VkErrorMessages.exit42.i

VkErrorMessages.exit42.i:                         ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.0.i41.i = phi ptr [ @.str.74, %bb.an ], [ @.str.73, %bb.am ], [ @.str.58, %bb.x ], [ @.str.59, %bb.y ], [ @.str.60, %bb.z ], [ @.str.61, %bb.aa ], [ @.str.62, %bb.ab ], [ @.str.63, %bb.ac ], [ @.str.64, %bb.ad ], [ @.str.65, %bb.ae ], [ @.str.66, %bb.af ], [ @.str.67, %bb.ag ], [ @.str.68, %bb.ah ], [ @.str.69, %bb.ai ], [ @.str.70, %bb.aj ], [ @.str.71, %bb.ak ], [ @.str.72, %bb.al ], [ @.str.57, %bb.w ]
  %i.bz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.275, ptr noundef nonnull %.0.i41.i) #13 ; 0 uses
  br label %VULKAN_INTERNAL_CreateTransientRenderPass.exit

bb.ao:                                            ; preds = %bb.c
  %i.ca = load ptr, ptr %i.c, align 8
  br label %VULKAN_INTERNAL_CreateTransientRenderPass.exit

VULKAN_INTERNAL_CreateTransientRenderPass.exit:   ; preds = %VkErrorMessages.exit42.i, %bb.ao
  %.039.i = phi ptr [ null, %VkErrorMessages.exit42.i ], [ %i.ca, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  store i32 27, ptr %18, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 4, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr @VULKAN_CreateGraphicsPipeline.dynamicStates, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %1, align 8               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.ci = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ch, i32 noundef 1) #13 ; 0 uses
  store i32 18, ptr %10, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ck, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 1, ptr %i.cl, align 4
  %i.cm = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cq, ptr %i.cr, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 4 uses
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.cx = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.cw, i32 noundef 1) #13 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 18, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 68
  store i32 16, ptr %i.db, align 4
  %i.dc = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.dg, ptr %i.dh, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr null, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 5 uses
  %i.dk = load i8, ptr %i.dj, align 4, !range !23, !noundef !24
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ap, label %.thread204

bb.ap:                                            ; preds = %VULKAN_INTERNAL_CreateTransientRenderPass.exit
  %i.dm = load ptr, ptr %i.cg, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.dn, align 8
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %.thread, label %.preheader207

.preheader207:                                    ; preds = %bb.ap, %.preheader207
  %i.dp = call i32 @SDL_ReportAssertion_REAL(ptr noundef nonnull @VULKAN_CreateGraphicsPipeline.sdl_assert_data, ptr noundef nonnull @__func__.VULKAN_CreateGraphicsPipeline, ptr noundef nonnull @.str.325, i32 noundef 6425) #13
  switch i32 %i.dp, label %.thread [
    i32 0, label %.preheader207
    i32 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %.preheader207
  call void @llvm.debugtrap()
  br label %.thread

.thread:                                          ; preds = %.preheader207, %bb.aq, %bb.ap
  %i.dq = load ptr, ptr %i.cv, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i32, ptr %i.dr, align 8
  %.not184 = icmp eq i32 %i.ds, 1
  br i1 %.not184, label %.thread204, label %.preheader206

.preheader206:                                    ; preds = %.thread, %.preheader206
  %i.dt = call i32 @SDL_ReportAssertion_REAL(ptr noundef nonnull @VULKAN_CreateGraphicsPipeline.sdl_assert_data.327, ptr noundef nonnull @__func__.VULKAN_CreateGraphicsPipeline, ptr noundef nonnull @.str.325, i32 noundef 6428) #13
  switch i32 %i.dt, label %.thread204 [
    i32 0, label %.preheader206
    i32 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %.preheader206
  call void @llvm.debugtrap()
  br label %.thread204

.thread204:                                       ; preds = %.preheader206, %bb.ar, %.thread, %VULKAN_INTERNAL_CreateTransientRenderPass.exit
  %i.du = load i32, ptr %i.g, align 8             ; 5 uses
  %.not218 = icmp eq i32 %i.du, 0
  br i1 %.not218, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.thread204
  %i.dv = load ptr, ptr %i.f, align 8             ; 3 uses
  %wide.trip.count = zext i32 %i.du to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dw = icmp eq i32 %i.du, 1
  br i1 %i.dw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.as

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod240 = trunc i32 %i.du to i1
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv.epil.init ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.epil.init ; 3 uses
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i32, ptr %i.ea, align 4
  %notmask.epil = shl nsw i32 -1, %i.eb
  %20 = xor i32 %notmask.epil, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %20, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.ee, ptr %i.ef, align 4
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.thread204
  %i.eg = load i32, ptr %i.l, align 8             ; 5 uses
  %.not219 = icmp eq i32 %i.eg, 0
  br i1 %.not219, label %._crit_edge, label %.lr.ph212

.lr.ph212:                                        ; preds = %.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  %wide.trip.count225 = zext i32 %i.eg to i64     ; 2 uses
  %xtraiter242 = and i64 %wide.trip.count225, 1
  %i.ej = icmp eq i32 %i.eg, 1
  br i1 %i.ej, label %.epil.preheader241, label %.lr.ph212.new

.lr.ph212.new:                                    ; preds = %.lr.ph212
  %unroll_iter245 = and i64 %wide.trip.count225, 4294967294
  br label %bb.at

bb.as:                                            ; preds = %bb.as, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.as ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.as ]
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  store i32 %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load i32, ptr %i.en, align 4
  %notmask = shl nsw i32 -1, %i.eo
  %21 = xor i32 %notmask, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %21, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.er, ptr %i.es, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv.next ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %indvars.iv.next ; 3 uses
  store i32 %i.eu, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load i32, ptr %i.ew, align 4
  %notmask.1 = shl nsw i32 -1, %i.ex
  %22 = xor i32 %notmask.1, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %22, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.fa, ptr %i.fb, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.as, !llvm.loop !78

bb.at:                                            ; preds = %bb.at, %.lr.ph212.new
  %indvars.iv222 = phi i64 [ 0, %.lr.ph212.new ], [ %indvars.iv.next223.1, %bb.at ] ; 4 uses
  %niter246 = phi i64 [ 0, %.lr.ph212.new ], [ %niter246.next.1, %bb.at ]
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv222 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv222 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 %i.fe, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_VertexFormat, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 %i.fl, ptr %i.fm, align 8
  %i.fn = load i32, ptr %i.fc, align 4
  store i32 %i.fn, ptr %i.ff, align 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 %i.fp, ptr %i.fq, align 4
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.next223 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.next223 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.ft, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_VertexFormat, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 %i.ga, ptr %i.gb, align 8
  %i.gc = load i32, ptr %i.fr, align 4
  store i32 %i.gc, ptr %i.fu, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 %i.ge, ptr %i.gf, align 4
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.at, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.at
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %._crit_edge, label %.epil.preheader241

.epil.preheader241:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph212
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next223.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i32 %i.eg to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv222.epil.init ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv222.epil.init ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 %i.gi, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_VertexFormat, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i32 %i.gp, ptr %i.gq, align 8
  %i.gr = load i32, ptr %i.gg, align 4
  store i32 %i.gr, ptr %i.gj, align 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 %i.gt, ptr %i.gu, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader241, %._crit_edge.loopexit.unr-lcssa, %.preheader
  store i32 19, ptr %11, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %i.du, ptr %i.gx, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.k, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %i.eg, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.p, ptr %i.ha, align 8
  store i32 20, ptr %12, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 0, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hf = load i32, ptr %i.he, align 8            ; 2 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_PrimitiveType, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %i.hi, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %i.hf, ptr %i.hk, align 8
  store i32 22, ptr %13, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr null, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr null, ptr %i.hq, align 8
  store i32 23, ptr %14, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.hv = load i8, ptr %i.hu, align 1, !range !23, !noundef !24
  %i.hw = xor i8 %i.hv, 1
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %i.hx, ptr %i.hy, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 0, ptr %i.hz, align 8
  %i.ia = load i32, ptr %i.ht, align 4            ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %SDLToVK_PolygonMode.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1426
  %i.id = load i8, ptr %i.ic, align 2, !range !23, !noundef !24
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = icmp eq i32 %i.ia, 1
  %or.cond.i = and i1 %i.if, %i.ie
  br i1 %or.cond.i, label %SDLToVK_PolygonMode.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1403 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1
  %.not.i186 = icmp eq i8 %i.ih, 0
  br i1 %.not.i186, label %bb.aw, label %SDLToVK_PolygonMode.exit

bb.aw:                                            ; preds = %bb.av
  call void (i32, ptr, ...) @SDL_LogWarn_REAL(i32 noundef 9, ptr noundef nonnull @.str.331) #13
  store i8 1, ptr %i.ig, align 1
  br label %SDLToVK_PolygonMode.exit

SDLToVK_PolygonMode.exit:                         ; preds = %._crit_edge, %bb.au, %bb.av, %bb.aw
  %.0.i = phi i32 [ 1, %bb.au ], [ 0, %._crit_edge ], [ 0, %bb.aw ], [ 0, %bb.av ]
  %i.ii = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.0.i, ptr %i.ii, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ik = load i32, ptr %i.ij, align 8
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CullMode, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 %i.in, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.iq = load i32, ptr %i.ip, align 4
  %notmask220 = shl nsw i32 -1, %i.iq
  %23 = xor i32 %notmask220, -1
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 %23, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.it = load i8, ptr %i.is, align 4, !range !23, !noundef !24
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %i.iu, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.iy = load <2 x float>, ptr %i.iw, align 8
  store <2 x float> %i.iy, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ja = load float, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 52
  store float %i.ja, ptr %i.jb, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %14, i64 56
  store float 1.000000e+00, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 -1, ptr %i.d, align 4
  store i32 24, ptr %15, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.je, align 8
  %i.jf = load i32, ptr %i.w, align 8
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 %i.ji, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 0, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store float 1.000000e+00, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.d, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.jo = load i8, ptr %i.jn, align 1, !range !23, !noundef !24
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %i.jp, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 44
  store i32 0, ptr %i.jr, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ju = load i32, ptr %i.jt, align 8
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ko = load i8, ptr %i.kn, align 8
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i32                    ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.le = load i32, ptr %i.ld, align 8
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4
  store i32 25, ptr %16, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.lq = load i8, ptr %i.lp, align 2, !range !23, !noundef !24
  %i.lr = zext nneg i8 %i.lq to i32
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 %i.lr, ptr %i.ls, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.lu = load i8, ptr %i.lt, align 1, !range !23, !noundef !24
  %i.lv = zext nneg i8 %i.lu to i32
  %i.lw = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.lv, ptr %i.lw, align 8
  %i.lx = load i32, ptr %i.js, align 4
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %i.ma, ptr %i.mb, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 0, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.me = load i8, ptr %i.md, align 4, !range !23, !noundef !24
  %i.mf = zext nneg i8 %i.me to i32
  %i.mg = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %i.mf, ptr %i.mg, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.jx, ptr %i.mh, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.kc, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 %i.kh, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 52
  store i32 %i.km, ptr %.sroa.641.0..sroa_idx, align 4
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i32 %i.kp, ptr %.sroa.742.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 %i.ks, ptr %.sroa.843.0..sroa_idx, align 4
  %.sroa.944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %.sroa.944.0..sroa_idx, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %16, i64 68
  store i32 %i.kx, ptr %i.mi, align 4
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i32 %i.lc, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 76
  store i32 %i.lh, ptr %.sroa.533.0..sroa_idx, align 4
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i32 %i.lm, ptr %.sroa.634.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 84
  store i32 %i.kp, ptr %.sroa.735.0..sroa_idx, align 4
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 88
  store i32 %i.ks, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 92
  store i32 0, ptr %.sroa.937.0..sroa_idx, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <2 x float> zeroinitializer, ptr %i.mj, align 8
  %i.mk = load i32, ptr %i.r, align 8             ; 3 uses
  %.not220 = icmp eq i32 %i.mk, 0
  br i1 %.not220, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %SDLToVK_PolygonMode.exit
  %i.ml = load ptr, ptr %i.q, align 8
  %wide.trip.count230 = zext i32 %i.mk to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph215, %bb.ax
  %indvars.iv227 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next228, %bb.ax ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [36 x i8], ptr %i.ml, i64 %indvars.iv227 ; 9 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.mn, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 29
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 30
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 2
  %i.mo = trunc i8 %.sroa.11.0.copyload to i1
  %narrow = select i1 %i.mo, i8 %.sroa.9.0.copyload, i8 15
  %i.mp = and i8 %.sroa.10.0.copyload, 1
  %i.mq = zext nneg i8 %i.mp to i32
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv227 ; 8 uses
  store i32 %i.mq, ptr %i.mr, align 16
  %i.ms = zext i32 %.sroa.0.0.copyload to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 %i.mu, ptr %i.mv, align 4
  %i.mw = zext i32 %.sroa.4.0.copyload to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 %i.my, ptr %i.mz, align 8
  %i.na = zext i32 %.sroa.5.0.copyload to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendOp, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  store i32 %i.nc, ptr %i.nd, align 4
  %i.ne = zext i32 %.sroa.6.0.copyload to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4
end_hunk_1
begin_hunk_2_@VULKAN_CreateGraphicsPipeline:bb.a
bb.dh:                                            ; preds = %bb.ct
  br label %VkErrorMessages.exit

bb.di:                                            ; preds = %bb.ct
  br label %VkErrorMessages.exit

bb.dj:                                            ; preds = %bb.ct
  br label %VkErrorMessages.exit

bb.dk:                                            ; preds = %bb.ct
  br label %VkErrorMessages.exit

VkErrorMessages.exit:                             ; preds = %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %.0.i192 = phi ptr [ @.str.74, %bb.dk ], [ @.str.73, %bb.dj ], [ @.str.58, %bb.cu ], [ @.str.59, %bb.cv ], [ @.str.60, %bb.cw ], [ @.str.61, %bb.cx ], [ @.str.62, %bb.cy ], [ @.str.63, %bb.cz ], [ @.str.64, %bb.da ], [ @.str.65, %bb.db ], [ @.str.66, %bb.dc ], [ @.str.67, %bb.dd ], [ @.str.68, %bb.de ], [ @.str.69, %bb.df ], [ @.str.70, %bb.dg ], [ @.str.71, %bb.dh ], [ @.str.72, %bb.di ], [ @.str.57, %bb.ct ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.270, ptr noundef nonnull %.0.i192) #13
  br label %bb.dl

bb.dl:                                            ; preds = %VkErrorMessages.exit, %bb.cs
  switch i32 %i.sw, label %bb.ec [
    i32 -1, label %VkErrorMessages.exit194
    i32 -2, label %bb.dm
    i32 -12, label %bb.dn
    i32 -1000069000, label %bb.do
    i32 -3, label %bb.dp
    i32 -6, label %bb.dq
    i32 -7, label %bb.dr
    i32 -8, label %bb.ds
    i32 -10, label %bb.dt
    i32 -4, label %bb.du
    i32 -9, label %bb.dv
    i32 -1000001004, label %bb.dw
    i32 -1000000000, label %bb.dx
    i32 -1000255000, label %bb.dy
    i32 1000001003, label %bb.dz
    i32 -1000000001, label %bb.ea
    i32 -1000012000, label %bb.eb
  ]

bb.dm:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dn:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.do:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dp:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dq:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dr:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.ds:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dt:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.du:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dv:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dw:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dx:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dy:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.dz:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.ea:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.eb:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

bb.ec:                                            ; preds = %bb.dl
  br label %VkErrorMessages.exit194

VkErrorMessages.exit194:                          ; preds = %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec
  %.0.i193 = phi ptr [ @.str.74, %bb.ec ], [ @.str.73, %bb.eb ], [ @.str.58, %bb.dm ], [ @.str.59, %bb.dn ], [ @.str.60, %bb.do ], [ @.str.61, %bb.dp ], [ @.str.62, %bb.dq ], [ @.str.63, %bb.dr ], [ @.str.64, %bb.ds ], [ @.str.65, %bb.dt ], [ @.str.66, %bb.du ], [ @.str.67, %bb.dv ], [ @.str.68, %bb.dw ], [ @.str.69, %bb.dx ], [ @.str.70, %bb.dy ], [ @.str.71, %bb.dz ], [ @.str.72, %bb.ea ], [ @.str.57, %bb.dl ]
  %i.tc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.270, ptr noundef nonnull %.0.i193) #13 ; 0 uses
  br label %bb.ei

bb.ed:                                            ; preds = %bb.cr
  %i.td = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.te = call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.td, i32 noundef 0) #13 ; 0 uses
  %i.tf = load i8, ptr %i.dj, align 4, !range !23, !noundef !24
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1422
  %i.ti = load i8, ptr %i.th, align 2, !range !23, !noundef !24
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8
  %i.tm = call zeroext i1 @SDL_HasProperty_REAL(i32 noundef %i.tl, ptr noundef nonnull @.str.330) #13
  br i1 %i.tm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  store i32 1000128000, ptr %19, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.tn, align 8
  %i.to = load i32, ptr %i.tk, align 8
  %i.tp = call ptr @SDL_GetStringProperty_REAL(i32 noundef %i.to, ptr noundef nonnull @.str.330, ptr noundef null) #13
  %i.tq = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.tp, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 19, ptr %i.tr, align 8
  %i.ts = load ptr, ptr %i.sv, align 8
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 %i.tt, ptr %i.tu, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = load ptr, ptr %i.bt, align 8
  %i.ty = call i32 %i.tw(ptr noundef %i.tx, ptr noundef nonnull %19) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %i.tz = load ptr, ptr %i.ru, align 8            ; 8 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = load i32, ptr %i.ua, align 8
  store i32 %i.ub, ptr %i.e, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  %i.ud = load i32, ptr %i.uc, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.ud, ptr %i.ue, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 44
  %i.ug = load i32, ptr %i.uf, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ug, ptr %i.uh, align 4
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tz, i64 52
  %i.uj = load i32, ptr %i.ui, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.uj, ptr %i.uk, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  %i.um = load i32, ptr %i.ul, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.um, ptr %i.un, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  %i.up = load i32, ptr %i.uo, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.up, ptr %i.uq, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tz, i64 60
  %i.us = load i32, ptr %i.ur, align 4
  %i.ut = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %i.us, ptr %i.ut, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tz, i64 68
  %i.uv = load i32, ptr %i.uu, align 4
  %i.uw = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %i.uv, ptr %i.uw, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %VkErrorMessages.exit194, %bb.cq
  %.0 = phi ptr [ null, %bb.cq ], [ null, %VkErrorMessages.exit194 ], [ %i.e, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @VULKAN_CreateSampler(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.VkSamplerCreateInfo, align 8 ; 20 uses
  %3 = alloca %struct.VkDebugUtilsObjectNameInfoEXT, align 8 ; 8 uses
  %i.a = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #13 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 31, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %notmask = shl nsw i32 -1, %i.e
  %4 = xor i32 %notmask, -1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %4, ptr %i.f, align 4
  %i.g = load i32, ptr %1, align 4
  %notmask35 = shl nsw i32 -1, %i.g
  %5 = xor i32 %notmask35, -1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %notmask36 = shl nsw i32 -1, %i.j
  %6 = xor i32 %notmask36, -1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %6, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load i8, ptr %i.ag, align 4, !range !23, !noundef !24
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.ao = load i8, ptr %i.an, align 1, !range !23, !noundef !24
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = load <2 x float>, ptr %i.ax, align 4
  store <2 x float> %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call i32 %i.bd(ptr noundef %i.bf, ptr noundef nonnull %2, ptr noundef null, ptr noundef %i.a) #13 ; 3 uses
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @SDL_free_REAL(ptr noundef %i.a) #13
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.bi = load i8, ptr %i.bh, align 4, !range !23, !noundef !24
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  switch i32 %i.bg, label %bb.t [
    i32 -1, label %VkErrorMessages.exit
    i32 -2, label %bb.d
    i32 -12, label %bb.e
    i32 -1000069000, label %bb.f
    i32 -3, label %bb.g
    i32 -6, label %bb.h
    i32 -7, label %bb.i
    i32 -8, label %bb.j
    i32 -10, label %bb.k
    i32 -4, label %bb.l
    i32 -9, label %bb.m
    i32 -1000001004, label %bb.n
    i32 -1000000000, label %bb.o
    i32 -1000255000, label %bb.p
    i32 1000001003, label %bb.q
    i32 -1000000001, label %bb.r
    i32 -1000012000, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.e:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.f:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.g:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.h:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.i:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.j:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.k:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.l:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.m:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.n:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.o:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.p:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.q:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.r:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.s:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.t:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

VkErrorMessages.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi ptr [ @.str.74, %bb.t ], [ @.str.73, %bb.s ], [ @.str.58, %bb.d ], [ @.str.59, %bb.e ], [ @.str.60, %bb.f ], [ @.str.61, %bb.g ], [ @.str.62, %bb.h ], [ @.str.63, %bb.i ], [ @.str.64, %bb.j ], [ @.str.65, %bb.k ], [ @.str.66, %bb.l ], [ @.str.67, %bb.m ], [ @.str.68, %bb.n ], [ @.str.69, %bb.o ], [ @.str.70, %bb.p ], [ @.str.71, %bb.q ], [ @.str.72, %bb.r ], [ @.str.57, %bb.c ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.276, ptr noundef nonnull %.0.i) #13
  br label %bb.u

bb.u:                                             ; preds = %VkErrorMessages.exit, %bb.b
  switch i32 %i.bg, label %bb.al [
    i32 -1, label %VkErrorMessages.exit34
    i32 -2, label %bb.v
    i32 -12, label %bb.w
    i32 -1000069000, label %bb.x
    i32 -3, label %bb.y
    i32 -6, label %bb.z
    i32 -7, label %bb.aa
    i32 -8, label %bb.ab
    i32 -10, label %bb.ac
    i32 -4, label %bb.ad
    i32 -9, label %bb.ae
    i32 -1000001004, label %bb.af
    i32 -1000000000, label %bb.ag
    i32 -1000255000, label %bb.ah
    i32 1000001003, label %bb.ai
    i32 -1000000001, label %bb.aj
    i32 -1000012000, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.w:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.x:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.y:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.z:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.aa:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.ab:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.ac:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.ad:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.ae:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

bb.af:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit34

end_hunk_2
begin_hunk_3_@VULKAN_SetStencilReference:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2784
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i8 %1 to i32
  tail call void %i.e(ptr noundef %i.g, i32 noundef 3, i32 noundef %i.h) #13, !inline_history !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindVertexBuffers(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 916
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %3, %1
  %. = tail call i32 @llvm.umax.i32(i32 %i.h, i32 %i.i)
  store i32 %., ptr %i.g, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = add i32 %1, %i.m
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, %i.s
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = zext i32 %i.w to i64
  %.not36 = icmp eq i64 %i.u, %i.x
  br i1 %.not36, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load i32, ptr %i.c, align 8              ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.d
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = load ptr, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ac = trunc nuw i64 %i.ae to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %._crit_edge44, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph43, %bb.e
  %indvars.iv.i41 = phi i64 [ %i.aa, %.lr.ph43 ], [ %i.ae, %bb.e ]
  %i.ae = add nsw i64 %indvars.iv.i41, -1         ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.e, !llvm.loop !11

._crit_edge44:                                    ; preds = %bb.e, %bb.d
  %i.ai = load i32, ptr %i.e, align 4
  %i.aj = icmp eq i32 %i.y, %i.ai
  %.pre.i = load ptr, ptr %i.d, align 8           ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge44
  %i.ak = add nsw i32 %i.y, 1                     ; 2 uses
  store i32 %i.ak, ptr %i.e, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.am) #17 ; 2 uses
  store ptr %i.an, ptr %i.d, align 8
  %.pre22.i = load i32, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge44
  %i.ao = phi i32 [ %.pre22.i, %bb.g ], [ %i.y, %._crit_edge44 ]
  %i.ap = phi ptr [ %i.an, %bb.g ], [ %.pre.i, %._crit_edge44 ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  store ptr %i.l, ptr %i.ar, align 8
  %i.as = load i32, ptr %i.c, align 8
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.c, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.av = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.au, i32 noundef 1) #13 ; 0 uses
  %.pre = load ptr, ptr %i.r, align 8
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.f, %bb.h
  %i.aw = phi ptr [ %.pre, %bb.h ], [ %i.s, %bb.f ]
  store ptr %i.aw, ptr %i.p, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o
  store i64 %i.az, ptr %i.ba, align 8
  store i8 1, ptr %i.f, align 4
  br label %bb.i

bb.i:                                             ; preds = %VULKAN_INTERNAL_TrackBuffer.exit, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !98
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindIndexBuffer(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext nneg i32 %i.f to i64
  %i.j = load ptr, ptr %i.g, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.m to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %._crit_edge, !llvm.loop !11

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i9 = phi i64 [ %i.i, %.lr.ph ], [ %i.m, %bb.b ]
  %i.m = add nsw i64 %indvars.iv.i9, -1           ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %VULKAN_INTERNAL_TrackBuffer.exit, label %bb.b, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2572 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.f, %i.r
  %.pre.i = load ptr, ptr %i.g, align 8           ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.t = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.t, ptr %i.q, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.v) #17 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8
  %.pre22.i = load i32, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.x = phi i32 [ %.pre22.i, %bb.d ], [ %i.f, %._crit_edge ]
  %i.y = phi ptr [ %i.w, %bb.d ], [ %.pre.i, %._crit_edge ]
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  store ptr %i.d, ptr %i.aa, align 8
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ae = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ad, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackBuffer.exit

VULKAN_INTERNAL_TrackBuffer.exit:                 ; preds = %bb.c, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = zext i32 %i.am to i64
  %notmask = shl nsw i32 -1, %2
  %3 = xor i32 %notmask, -1
  tail call void %i.ag(ptr noundef %i.ai, ptr noundef %i.ak, i64 noundef %i.an, i32 noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindVertexSamplers(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %.not35 = icmp eq i32 %3, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2636 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 2 uses
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = trunc nuw i64 %indvars.iv to i32
  %i.o = add i32 %1, %i.n
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.b, align 8              ; 5 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.c
  %i.v = zext nneg i32 %i.t to i64
  %i.w = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.x = trunc nuw i64 %i.z to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %._crit_edge48, !llvm.loop !12

bb.e:                                             ; preds = %.lr.ph47, %bb.d
  %indvars.iv.i45 = phi i64 [ %i.v, %.lr.ph47 ], [ %i.z, %bb.d ]
  %i.z = add nsw i64 %indvars.iv.i45, -1          ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %VULKAN_INTERNAL_TrackSampler.exit, label %bb.d, !llvm.loop !12

._crit_edge48:                                    ; preds = %bb.d, %bb.c
  %i.ad = load i32, ptr %i.d, align 4
  %i.ae = icmp eq i32 %i.t, %i.ad
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge48
  %i.af = add nsw i32 %i.t, 1                     ; 2 uses
  store i32 %i.af, ptr %i.d, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.ah) #17 ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8
  %.pre22.i = load i32, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge48
  %i.aj = phi i32 [ %.pre22.i, %bb.f ], [ %i.t, %._crit_edge48 ]
  %i.ak = phi ptr [ %i.ai, %bb.f ], [ %.pre.i, %._crit_edge48 ]
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %i.m, ptr %i.am, align 8
  %i.an = load i32, ptr %i.b, align 8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ap, i32 noundef 1) #13 ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8
  br label %VULKAN_INTERNAL_TrackSampler.exit

VULKAN_INTERNAL_TrackSampler.exit:                ; preds = %bb.e, %bb.g
  %i.ar = phi ptr [ %.pre, %bb.g ], [ %i.s, %bb.e ]
  store ptr %i.ar, ptr %i.q, align 8
  store i8 1, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %VULKAN_INTERNAL_TrackSampler.exit, %bb.b
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.at, %i.ax
  br i1 %.not30, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.g, align 8             ; 5 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %bb.i
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = load ptr, ptr %i.h, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bc = trunc nuw i64 %i.be to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %._crit_edge52, !llvm.loop !6

bb.k:                                             ; preds = %.lr.ph51, %bb.j
  %indvars.iv.i3149 = phi i64 [ %i.ba, %.lr.ph51 ], [ %i.be, %bb.j ]
  %i.be = add nsw i64 %indvars.iv.i3149, -1       ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, %i.av
  br i1 %i.bh, label %VULKAN_INTERNAL_TrackTexture.exit, label %bb.j, !llvm.loop !6

._crit_edge52:                                    ; preds = %bb.j, %bb.i
  %i.bi = load i32, ptr %i.i, align 4
  %i.bj = icmp eq i32 %i.ay, %i.bi
  %.pre.i32 = load ptr, ptr %i.h, align 8         ; 2 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge52
  %i.bk = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.i, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i32, i64 noundef %i.bm) #17 ; 2 uses
  store ptr %i.bn, ptr %i.h, align 8
  %.pre22.i33 = load i32, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge52
  %i.bo = phi i32 [ %.pre22.i33, %bb.l ], [ %i.ay, %._crit_edge52 ]
  %i.bp = phi ptr [ %i.bn, %bb.l ], [ %.pre.i32, %._crit_edge52 ]
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  store ptr %i.av, ptr %i.br, align 8
  %i.bs = load i32, ptr %i.g, align 8
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.g, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  %i.bv = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.bu, i32 noundef 1) #13 ; 0 uses
  %.pre37 = load ptr, ptr %i.au, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre37, i64 32
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8
  br label %VULKAN_INTERNAL_TrackTexture.exit

VULKAN_INTERNAL_TrackTexture.exit:                ; preds = %bb.k, %bb.m
  %i.bw = phi ptr [ %.pre38, %bb.m ], [ %i.ax, %bb.k ]
  store ptr %i.bw, ptr %i.as, align 8
  store i8 1, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindVertexStorageTextures(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = add i32 %1, %i.h
end_hunk_3
begin_hunk_4_@VULKAN_GenerateMipmaps:bb.a
  store ptr %i.jy, ptr %i.kv, align 8
  %i.kw = load i32, ptr %i.cj, align 8
  %i.kx = add nsw i32 %i.kw, 1
  store i32 %i.kx, ptr %i.cj, align 8
  %i.ky = load ptr, ptr %i.jz, align 8
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 96
  %i.lb = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.la, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTextureTransfer.exit130

VULKAN_INTERNAL_TrackTextureTransfer.exit130:     ; preds = %bb.am, %VULKAN_INTERNAL_TrackTextureTransfer.exit, %bb.ao
  %i.lc = add nuw i32 %.0131, 1                   ; 2 uses
  %i.ld = load i32, ptr %i.g, align 8             ; 3 uses
  %i.le = icmp ult i32 %i.lc, %i.ld
  br i1 %i.le, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @VULKAN_EndCopyPass(ptr nofree readnone captures(none) %0) #9 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_Blit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.VkImageBlit, align 4        ; 21 uses
  %3 = alloca %struct.SDL_GPUColorTargetInfo, align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.f = load i32, ptr %i.c, align 4
  %i.g = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %. = select i1 %i.g, i32 0, i32 %i.i
  %.84 = select i1 %i.g, i32 %i.i, i32 0          ; 2 uses
  %i.j = load i32, ptr %i.e, align 4
  %i.k = icmp eq i32 %i.j, 2                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %.85 = select i1 %i.k, i32 0, i32 %i.m
  %.86 = select i1 %i.k, i32 %i.m, i32 0          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.m, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aa = load i8, ptr %i.z, align 4, !range !23, !noundef !24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 %i.aa, ptr %i.ab, align 8
  call void @VULKAN_BeginRenderPass(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null)
  tail call void @VULKAN_EndRenderPass(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.pre = load ptr, ptr %1, align 8
  %.pre79 = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = phi ptr [ %.pre79, %bb.b ], [ %i.e, %bb.a ]
  %i.ad = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.ad, i64 24
  %.val = load i32, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.ad, i64 40
  %.val73 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val73, i64 88
  %.val73.val = load ptr, ptr %i.ai, align 8
  %i.aj = mul i32 %.val, %.
  %i.ak = add i32 %i.aj, %i.af
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %.val73.val, i64 %i.al ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aq = load i8, ptr %i.ap, align 4, !range !23, !noundef !24
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = tail call fastcc ptr @VULKAN_INTERNAL_PrepareTextureSubresourceForWrite(ptr noundef %i.b, ptr noundef nonnull %0, ptr noundef %i.ac, i32 noundef %.85, i32 noundef %i.ao, i1 noundef zeroext %i.ar, i32 noundef 2) ; 5 uses
  tail call fastcc void @VULKAN_INTERNAL_TextureSubresourceTransitionFromDefaultUsage(ptr noundef %i.b, ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.am)
  %i.at = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i32, ptr %i.au, align 8
  store i32 %i.av, ptr %2, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.84, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = add i32 %i.bl, %i.be                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, %i.bh                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = add i32 %.84, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i32 %i.bv, 1
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.bm, ptr %i.bf, align 4
  store i32 %i.be, ptr %i.bn, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bx = and i32 %i.bv, 2
  %.not72 = icmp eq i32 %i.bx, 0
  br i1 %.not72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.bi, align 4
  store i32 %i.bh, ptr %i.br, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.by = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 1, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.86, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.co = load <2 x i32>, ptr %i.cj, align 8      ; 2 uses
  store <2 x i32> %i.co, ptr %i.ck, align 4
  %i.cp = load <2 x i32>, ptr %i.cm, align 8
  %i.cq = add <2 x i32> %i.cp, %i.co
  store <2 x i32> %i.cq, ptr %i.cn, align 4
  %i.cr = add i32 %.86, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 2624
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dc = load i32, ptr %i.db, align 8
  %notmask = shl nsw i32 -1, %i.dc
  %4 = xor i32 %notmask, -1
  call void %i.cu(ptr noundef %i.cw, ptr noundef %i.cy, i32 noundef 6, ptr noundef %i.da, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %2, i32 noundef %4) #13
  call fastcc void @VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage(ptr noundef %i.b, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.am)
  call fastcc void @VULKAN_INTERNAL_TextureSubresourceTransitionToDefaultUsage(ptr noundef %i.b, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.as)
  %i.dd = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 8 uses
  %i.df = load i32, ptr %i.de, align 8            ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 6 uses
  %i.dh = zext i32 %i.df to i64                   ; 2 uses
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.dj = load ptr, ptr %i.dg, align 8
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.dk = trunc nuw i64 %i.dm to i32
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph, label %._crit_edge, !llvm.loop !6

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv.i87 = phi i64 [ %i.dm, %bb.h ], [ %i.dh, %.lr.ph.preheader ]
  %i.dm = add nsw i64 %indvars.iv.i87, -1         ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = icmp eq ptr %i.do, %i.dd
  br i1 %i.dp, label %VULKAN_INTERNAL_TrackTexture.exit, label %bb.h, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp eq i32 %i.df, %i.dr
  %.pre.i = load ptr, ptr %i.dg, align 8          ; 2 uses
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.dt = add nsw i32 %i.df, 1                    ; 2 uses
  store i32 %i.dt, ptr %i.dq, align 4
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 3
  %i.dw = call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.dv) #17 ; 2 uses
  store ptr %i.dw, ptr %i.dg, align 8
  %.pre22.i = load i32, ptr %i.de, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.dx = phi i32 [ %.pre22.i, %bb.i ], [ %i.df, %._crit_edge ]
  %i.dy = phi ptr [ %i.dw, %bb.i ], [ %.pre.i, %._crit_edge ]
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  store ptr %i.dd, ptr %i.ea, align 8
  %i.eb = load i32, ptr %i.de, align 8
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.de, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 100
  %i.ee = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ed, i32 noundef 1) #13 ; 0 uses
  %.pre80 = load i32, ptr %i.de, align 8          ; 2 uses
  %.pre81 = zext i32 %.pre80 to i64
  br label %VULKAN_INTERNAL_TrackTexture.exit

VULKAN_INTERNAL_TrackTexture.exit:                ; preds = %.lr.ph, %bb.j
  %.pre-phi = phi i64 [ %.pre81, %bb.j ], [ %i.dh, %.lr.ph ] ; 2 uses
  %i.ef = phi i32 [ %.pre80, %bb.j ], [ %i.df, %.lr.ph ] ; 3 uses
  %i.eg = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.eh = trunc nuw i64 %.pre-phi to i32
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %VULKAN_INTERNAL_TrackTexture.exit
  %i.ej = load ptr, ptr %i.dg, align 8
  br label %.lr.ph89

bb.k:                                             ; preds = %.lr.ph89
  %i.ek = trunc nuw i64 %i.em to i32
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph89, label %._crit_edge90, !llvm.loop !6

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.k
  %indvars.iv.i7488 = phi i64 [ %i.em, %bb.k ], [ %.pre-phi, %.lr.ph89.preheader ]
  %i.em = add nsw i64 %indvars.iv.i7488, -1       ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, %i.eg
  br i1 %i.ep, label %VULKAN_INTERNAL_TrackTexture.exit77, label %bb.k, !llvm.loop !6

._crit_edge90:                                    ; preds = %bb.k, %VULKAN_INTERNAL_TrackTexture.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = icmp eq i32 %i.ef, %i.er
  %.pre.i75 = load ptr, ptr %i.dg, align 8        ; 2 uses
  br i1 %i.es, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge90
  %i.et = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.et, ptr %i.eq, align 4
  %i.eu = sext i32 %i.et to i64
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = call ptr @SDL_realloc_REAL(ptr noundef %.pre.i75, i64 noundef %i.ev) #17 ; 2 uses
  store ptr %i.ew, ptr %i.dg, align 8
  %.pre22.i76 = load i32, ptr %i.de, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge90
  %i.ex = phi i32 [ %.pre22.i76, %bb.l ], [ %i.ef, %._crit_edge90 ]
  %i.ey = phi ptr [ %i.ew, %bb.l ], [ %.pre.i75, %._crit_edge90 ]
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  store ptr %i.eg, ptr %i.fa, align 8
  %i.fb = load i32, ptr %i.de, align 8
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.de, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 100
  %i.fe = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.fd, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTexture.exit77

VULKAN_INTERNAL_TrackTexture.exit77:              ; preds = %.lr.ph89, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @VULKAN_SupportsSwapchainComposition(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.SwapchainSupportDetails, align 8 ; 6 uses
  %i.a = tail call i32 @SDL_GetWindowProperties_REAL(ptr noundef %1) #13
  %i.b = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.352, ptr noundef null) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.e = load i8, ptr %i.d, align 4, !range !23, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.350) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.350) #13 ; 0 uses
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.k = load i8, ptr %i.j, align 4, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.351) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.351) #13 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call fastcc zeroext i1 @VULKAN_INTERNAL_QuerySwapchainSupport(ptr noundef %0, ptr noundef %i.o, ptr noundef nonnull %i.i, ptr noundef %3)
  br i1 %i.p, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.q = zext i32 %2 to i64                       ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @SwapchainCompositionToFormat, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @SwapchainCompositionToColorSpace, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %VULKAN_INTERNAL_VerifySwapSurfaceFormat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext i32 %i.y to i64       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, %i.s
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, %i.u
  br i1 %i.ae, label %VULKAN_INTERNAL_VerifySwapSurfaceFormat.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
end_hunk_4
