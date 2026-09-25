Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/compiler?download=true
inline.NumInlined: 6910
inline.NumDeleted: 1940
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZZN12_GLOBAL__N_116FunctionCompiler7compileEN5cxx204spanIKN8WasmEdge3AST11InstructionELm18446744073709551615EEEENKUlRS6_E_clES8_:bb.a
  %222 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %223 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %224 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %225 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %226 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %227 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %228 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %229 = alloca %"struct.std::pair.227", align 8  ; 5 uses
  %230 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %231 = alloca %"struct.std::pair.227", align 8  ; 4 uses
  %232 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %233 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %234 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %235 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %236 = alloca [2 x %"class.WasmEdge::LLVM::Type"], align 16 ; 4 uses
  %237 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %238 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %239 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %240 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 16 ; 5 uses
  %241 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %242 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %243 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %244 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %245 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 7 uses
  %246 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %247 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %248 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %249 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %250 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %251 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %252 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %253 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %254 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %255 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 8 uses
  %256 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %257 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %258 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %259 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %260 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %261 = alloca [3 x %"class.WasmEdge::LLVM::Type"], align 8 ; 6 uses
  %262 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 6 uses
  %263 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %264 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %265 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %266 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %267 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %268 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %269 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %270 = alloca [4 x %"class.WasmEdge::LLVM::Type"], align 8 ; 7 uses
  %271 = alloca [4 x %"class.WasmEdge::LLVM::Value"], align 8 ; 7 uses
  %272 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %273 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %274 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %275 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %276 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %277 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %278 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %279 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %280 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %281 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %282 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %283 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %284 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %285 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %286 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %287 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %288 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %289 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %290 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %291 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %292 = alloca [2 x %"class.WasmEdge::LLVM::Type"], align 16 ; 4 uses
  %293 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %294 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %295 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %296 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 7 uses
  %297 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %298 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %299 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %300 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %301 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %302 = alloca [1 x %"class.WasmEdge::LLVM::Value"], align 8 ; 4 uses
  %303 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %304 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %305 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %306 = alloca [5 x %"class.WasmEdge::LLVM::Type"], align 8 ; 8 uses
  %307 = alloca [5 x %"class.WasmEdge::LLVM::Value"], align 8 ; 8 uses
  %308 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %309 = alloca %"struct.WasmEdge::LLVM::FunctionCallee", align 8 ; 2 uses
  %310 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %311 = alloca [4 x %"class.WasmEdge::LLVM::Type"], align 16 ; 6 uses
  %312 = alloca [4 x %"class.WasmEdge::LLVM::Value"], align 8 ; 7 uses
  %313 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 3 uses
  %314 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %315 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %316 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %317 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %318 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %319 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %320 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %321 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %322 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %323 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %324 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %325 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %326 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %327 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %328 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %329 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %330 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %331 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %332 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %333 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %334 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %335 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %336 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %337 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %338 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %339 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %340 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %341 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %342 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %343 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %344 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %345 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %346 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %347 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %348 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %349 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %350 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %351 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %352 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %353 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %354 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %355 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %356 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %357 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %358 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %359 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %360 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %361 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %362 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %363 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %364 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %365 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %366 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %367 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %368 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %369 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %370 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %371 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %372 = alloca %"class.WasmEdge::LLVM::BasicBlock", align 8 ; 2 uses
  %373 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %374 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %375 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %376 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %377 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %378 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %379 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %380 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %381 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %382 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %383 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %384 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %385 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %386 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %387 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %388 = alloca [3 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %389 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %390 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %391 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %392 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %393 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %394 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %395 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %396 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %397 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %398 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %399 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %400 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %401 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %402 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %403 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %404 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %405 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %406 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %407 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %408 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %409 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %410 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %411 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %412 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %413 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %414 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 8 ; 5 uses
  %415 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %416 = alloca [1 x %"class.WasmEdge::LLVM::Type"], align 8 ; 4 uses
  %417 = alloca %"struct.cxx20::span.146", align 8 ; 3 uses
  %418 = alloca [2 x %"class.WasmEdge::LLVM::Value"], align 16 ; 4 uses
  %419 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %420 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 4 uses
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %421 = alloca %"struct.std::array", align 16    ; 4 uses
  %422 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %423 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %424 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %425 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %426 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %427 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %428 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %429 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %430 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %431 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %432 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %433 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %434 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %435 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %436 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %437 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %438 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %439 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %440 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %441 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %442 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %443 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %444 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %445 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %446 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %447 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %448 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %449 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %450 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %451 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %452 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %453 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %454 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %455 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %456 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %457 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 6 uses
  %458 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %459 = alloca %"class.WasmEdge::LLVM::Value", align 8 ; 2 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %460 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %461 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %462 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %463 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %464 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %465 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %466 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %467 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %468 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %469 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %470 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %471 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %472 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %473 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %474 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %475 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %476 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %477 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %478 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %479 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %480 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %481 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %482 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %483 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %484 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %485 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %486 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %487 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %488 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %489 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %490 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %491 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %492 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %493 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %494 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %495 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %496 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %497 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %498 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %499 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %500 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %501 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %502 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %503 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %504 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %505 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %506 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %507 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %508 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %509 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %510 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %511 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %512 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %513 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %514 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %515 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %516 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %517 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %518 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %519 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %520 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %521 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %522 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %523 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %524 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %525 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %526 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %527 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %528 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %529 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %530 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %531 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %532 = alloca %"class.WasmEdge::LLVM::Type", align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !210  ; 15 uses
  switch i32 %i.e, label %bb.cl [
    i32 2, label %bb.b
    i32 3, label %bb.k
    i32 4, label %bb.u
    i32 22, label %bb.af
    i32 8, label %bb.ag
    i32 5, label %bb.ca
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 176 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !52, !noalias !3457
  %i.k = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.j, ptr noundef %i.i, ptr noundef nonnull @.str.88) #17, !noalias !3457 ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !100
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !52, !noalias !3458
  %i.o = tail call ptr @LLVMAppendBasicBlockInContext(ptr noundef %i.n, ptr noundef %i.m, ptr noundef nonnull @.str.89) #17, !noalias !3458
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108, !noalias !3459
  %i.r = tail call ptr @LLVMBuildBr(ptr noundef %i.q, ptr noundef %i.k) #17, !noalias !3459 ; 0 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !108
  tail call void @LLVMPositionBuilderAtEnd(ptr noundef %i.s, ptr noundef %i.k) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.t = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNK8WasmEdge4LLVM8Compiler14CompileContext16resolveBlockTypeERKNS_9BlockTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.215") align 8 %7, ptr noundef nonnull align 8 dereferenceable(456) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.u) #17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !160  ; 4 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !161    ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 1152921504606846975
  br i1 %i.ac, label %bb.c, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #18
  unreachable

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit.thread

_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #20 ; 7 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.aa  ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.aa, i1 false), !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %.val.i2000 = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  %.val2.i2001 = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 2 uses
  %i.ai = icmp eq ptr %.val.i2000, %.val2.i2001
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.ak = getelementptr inbounds i8, ptr %.val2.i2001, i64 -128
  %.0.in.in.i2002 = select i1 %i.ai, ptr %i.aj, ptr %i.ak
  %.0.in.i2003 = load i8, ptr %.0.in.in.i2002, align 8, !tbaa !220, !range !49, !noundef !50
  %.0.i2004 = trunc nuw i8 %.0.in.i2003 to i1
  br i1 %.0.i2004, label %.lr.ph1805, label %.lr.ph1801

.lr.ph1801:                                       ; preds = %_ZNSt6vectorIN8WasmEdge4LLVM5ValueESaIS2_EEC2EmRKS3_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 %i.aa  ; 6 uses
  %.promoted1802 = load ptr, ptr %i.al, align 8   ; 5 uses
  %min.iters.check2292 = icmp ult i64 %i.ab, 12
  br i1 %min.iters.check2292, label %scalar.ph2291.preheader, label %vector.memcheck2288

vector.memcheck2288:                              ; preds = %.lr.ph1801
  %.promoted18022289 = ptrtoaddr ptr %.promoted1802 to i64
  %i.an = add i64 %i.z, %.promoted18022289
  %i.ao = add i64 %i.ae, %i.y
  %i.ap = sub i64 %i.ao, %i.an
  %diff.check2290 = icmp ugt i64 %i.ap, -32
  br i1 %diff.check2290, label %scalar.ph2291.preheader, label %vector.ph2293

vector.ph2293:                                    ; preds = %vector.memcheck2288
  %n.vec2294 = and i64 %i.ab, 1152921504606846972 ; 4 uses
  %i.aq = mul nsw i64 %n.vec2294, -8
  %i.ar = getelementptr i8, ptr %.promoted1802, i64 %i.aq ; 2 uses
  br label %vector.body2295

end_hunk_0
begin_hunk_1_@_ZZN12_GLOBAL__N_116FunctionCompiler7compileEN5cxx204spanIKN8WasmEdge3AST11InstructionELm18446744073709551615EEEENKUlRS6_E_clES8_:bb.a

bb.jn:                                            ; preds = %bb.cn
  %i.gkf = load i32, ptr %1, align 16, !tbaa !32
  %i.gkg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gkh = load i64, ptr %i.gkg, align 8, !tbaa !32
  %i.gki = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gkj = getelementptr inbounds nuw i8, ptr %i.gki, i64 104
  %i.gkk = load i64, ptr %i.gkj, align 8, !tbaa !71
  %i.gkl = getelementptr inbounds nuw i8, ptr %i.gki, i64 120
  %i.gkm = load i64, ptr %i.gkl, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileVectorLoadOpEjmjN8WasmEdge4LLVM4TypeES3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gkf, i64 noundef %i.gkh, i64 %i.gkk, i64 %i.gkm, i1 noundef zeroext false) #17
  br label %bb.vj

bb.jo:                                            ; preds = %bb.cn
  %i.gkn = load i32, ptr %1, align 16, !tbaa !32
  %i.gko = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gkp = load i64, ptr %i.gko, align 8, !tbaa !32
  %i.gkq = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gkr = getelementptr inbounds nuw i8, ptr %i.gkq, i64 112
  %i.gks = load i64, ptr %i.gkr, align 8, !tbaa !71
  %i.gkt = getelementptr inbounds nuw i8, ptr %i.gkq, i64 120
  %i.gku = load i64, ptr %i.gkt, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler19compileVectorLoadOpEjmjN8WasmEdge4LLVM4TypeES3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gkn, i64 noundef %i.gkp, i64 %i.gks, i64 %i.gku, i1 noundef zeroext false) #17
  br label %bb.vj

bb.jp:                                            ; preds = %bb.cn
  %i.gkv = load i32, ptr %1, align 16, !tbaa !32
  %i.gkw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gkx = load i64, ptr %i.gkw, align 8, !tbaa !32
  %i.gky = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gkz = getelementptr inbounds nuw i8, ptr %i.gky, i64 192
  %i.gla = load i64, ptr %i.gkz, align 8, !tbaa !71
  store i64 %i.gla, ptr %419, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler14compileStoreOpEjmjN8WasmEdge4LLVM4TypeEbb(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gkv, i64 noundef %i.gkx, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %419, i1 noundef zeroext false, i1 noundef zeroext true) #17
  br label %bb.vj

bb.jq:                                            ; preds = %bb.cn
  %i.glb = load i32, ptr %1, align 16, !tbaa !32
  %i.glc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gld = load i64, ptr %i.glc, align 8, !tbaa !32
  %i.gle = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.glf = load i8, ptr %i.gle, align 8, !tbaa !4305
  %i.glg = zext i8 %i.glf to i32
  %i.glh = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gli = getelementptr inbounds nuw i8, ptr %i.glh, i64 88
  %i.glj = load i64, ptr %i.gli, align 8, !tbaa !71
  %i.glk = getelementptr inbounds nuw i8, ptr %i.glh, i64 144
  %i.gll = load i64, ptr %i.glk, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler17compileLoadLaneOpEjmjjN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.glb, i64 noundef %i.gld, i32 noundef %i.glg, i64 %i.glj, i64 %i.gll) #17
  br label %bb.vj

bb.jr:                                            ; preds = %bb.cn
  %i.glm = load i32, ptr %1, align 16, !tbaa !32
  %i.gln = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.glo = load i64, ptr %i.gln, align 8, !tbaa !32
  %i.glp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.glq = load i8, ptr %i.glp, align 8, !tbaa !4305
  %i.glr = zext i8 %i.glq to i32
  %i.gls = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.glt = getelementptr inbounds nuw i8, ptr %i.gls, i64 96
  %i.glu = load i64, ptr %i.glt, align 8, !tbaa !71
  %i.glv = getelementptr inbounds nuw i8, ptr %i.gls, i64 152
  %i.glw = load i64, ptr %i.glv, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler17compileLoadLaneOpEjmjjN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.glm, i64 noundef %i.glo, i32 noundef %i.glr, i64 %i.glu, i64 %i.glw) #17
  br label %bb.vj

bb.js:                                            ; preds = %bb.cn
  %i.glx = load i32, ptr %1, align 16, !tbaa !32
  %i.gly = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.glz = load i64, ptr %i.gly, align 8, !tbaa !32
  %i.gma = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gmb = load i8, ptr %i.gma, align 8, !tbaa !4305
  %i.gmc = zext i8 %i.gmb to i32
  %i.gmd = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gme = getelementptr inbounds nuw i8, ptr %i.gmd, i64 104
  %i.gmf = load i64, ptr %i.gme, align 8, !tbaa !71
  %i.gmg = getelementptr inbounds nuw i8, ptr %i.gmd, i64 160
  %i.gmh = load i64, ptr %i.gmg, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler17compileLoadLaneOpEjmjjN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.glx, i64 noundef %i.glz, i32 noundef %i.gmc, i64 %i.gmf, i64 %i.gmh) #17
  br label %bb.vj

bb.jt:                                            ; preds = %bb.cn
  %i.gmi = load i32, ptr %1, align 16, !tbaa !32
  %i.gmj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gmk = load i64, ptr %i.gmj, align 8, !tbaa !32
  %i.gml = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gmm = load i8, ptr %i.gml, align 8, !tbaa !4305
  %i.gmn = zext i8 %i.gmm to i32
  %i.gmo = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gmp = getelementptr inbounds nuw i8, ptr %i.gmo, i64 112
  %i.gmq = load i64, ptr %i.gmp, align 8, !tbaa !71
  %i.gmr = getelementptr inbounds nuw i8, ptr %i.gmo, i64 176
  %i.gms = load i64, ptr %i.gmr, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler17compileLoadLaneOpEjmjjN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gmi, i64 noundef %i.gmk, i32 noundef %i.gmn, i64 %i.gmq, i64 %i.gms) #17
  br label %bb.vj

bb.ju:                                            ; preds = %bb.cn
  %i.gmt = load i32, ptr %1, align 16, !tbaa !32
  %i.gmu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gmv = load i64, ptr %i.gmu, align 8, !tbaa !32
  %i.gmw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gmx = load i8, ptr %i.gmw, align 8, !tbaa !4305
  %i.gmy = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gmz = getelementptr inbounds nuw i8, ptr %i.gmy, i64 88
  %i.gna = load i64, ptr %i.gmz, align 8, !tbaa !71
  %i.gnb = getelementptr inbounds nuw i8, ptr %i.gmy, i64 144
  %i.gnc = load i64, ptr %i.gnb, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler18compileStoreLaneOpEjmjhN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gmt, i64 noundef %i.gmv, i8 noundef zeroext %i.gmx, i64 %i.gna, i64 %i.gnc) #17
  br label %bb.vj

bb.jv:                                            ; preds = %bb.cn
  %i.gnd = load i32, ptr %1, align 16, !tbaa !32
  %i.gne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gnf = load i64, ptr %i.gne, align 8, !tbaa !32
  %i.gng = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gnh = load i8, ptr %i.gng, align 8, !tbaa !4305
  %i.gni = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.gni, i64 96
  %i.gnk = load i64, ptr %i.gnj, align 8, !tbaa !71
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.gni, i64 152
  %i.gnm = load i64, ptr %i.gnl, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler18compileStoreLaneOpEjmjhN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gnd, i64 noundef %i.gnf, i8 noundef zeroext %i.gnh, i64 %i.gnk, i64 %i.gnm) #17
  br label %bb.vj

bb.jw:                                            ; preds = %bb.cn
  %i.gnn = load i32, ptr %1, align 16, !tbaa !32
  %i.gno = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gnp = load i64, ptr %i.gno, align 8, !tbaa !32
  %i.gnq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gnr = load i8, ptr %i.gnq, align 8, !tbaa !4305
  %i.gns = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gnt = getelementptr inbounds nuw i8, ptr %i.gns, i64 104
  %i.gnu = load i64, ptr %i.gnt, align 8, !tbaa !71
  %i.gnv = getelementptr inbounds nuw i8, ptr %i.gns, i64 160
  %i.gnw = load i64, ptr %i.gnv, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler18compileStoreLaneOpEjmjhN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gnn, i64 noundef %i.gnp, i8 noundef zeroext %i.gnr, i64 %i.gnu, i64 %i.gnw) #17
  br label %bb.vj

bb.jx:                                            ; preds = %bb.cn
  %i.gnx = load i32, ptr %1, align 16, !tbaa !32
  %i.gny = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gnz = load i64, ptr %i.gny, align 8, !tbaa !32
  %i.goa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gob = load i8, ptr %i.goa, align 8, !tbaa !4305
  %i.goc = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.god = getelementptr inbounds nuw i8, ptr %i.goc, i64 112
  %i.goe = load i64, ptr %i.god, align 8, !tbaa !71
  %i.gof = getelementptr inbounds nuw i8, ptr %i.goc, i64 176
  %i.gog = load i64, ptr %i.gof, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler18compileStoreLaneOpEjmjhN8WasmEdge4LLVM4TypeES3_(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i32 noundef %i.gnx, i64 noundef %i.gnz, i8 noundef zeroext %i.gob, i64 %i.goe, i64 %i.gog) #17
  br label %bb.vj

bb.jy:                                            ; preds = %bb.cn
  %i.goh = load <2 x i64>, ptr %1, align 16, !tbaa !4012
  call void @llvm.lifetime.start.p0(ptr nonnull %420) #17
  %i.goi = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store <2 x i64> %i.goh, ptr %i.a, align 16, !tbaa !236
  call void @_ZN8WasmEdge4LLVM5Value16getConstVector64ERNS0_7ContextEN5cxx204spanIKmLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %420, ptr noundef nonnull align 8 dereferenceable(8) %i.goi, ptr nonnull %i.a, i64 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.goj = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %i.gok = load i64, ptr %420, align 8, !tbaa !100
  %i.gol = inttoptr i64 %i.gok to ptr
  %i.gom = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gon = getelementptr inbounds nuw i8, ptr %i.gom, i64 176
  %i.goo = load i64, ptr %i.gon, align 8, !tbaa !71
  %i.gop = inttoptr i64 %i.goo to ptr
  %i.goq = load ptr, ptr %i.goj, align 8, !tbaa !108, !noalias !4306
  %i.gor = call ptr @LLVMBuildBitCast(ptr noundef %i.goq, ptr noundef %i.gol, ptr noundef %i.gop, ptr noundef nonnull @.str.13) #17, !noalias !4306
  %i.gos = ptrtoint ptr %i.gor to i64
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gos) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %420) #17
  br label %bb.vj

_ZN12_GLOBAL__N_116FunctionCompiler8stackPopEv.exit2562: ; preds = %bb.cn
  %i.got = getelementptr inbounds nuw i8, ptr %.0.val, i64 192 ; 4 uses
  %.in2353 = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.gou = load ptr, ptr %.in2353, align 8, !tbaa !232, !noalias !4307
  %i.gov = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 3 uses
  %i.gow = getelementptr inbounds i8, ptr %i.gou, i64 -8 ; 2 uses
  %i.gox = load i64, ptr %i.gow, align 8, !tbaa !100, !noalias !4307
  %i.goy = inttoptr i64 %i.gox to ptr
  store ptr %i.gow, ptr %i.gov, align 8, !tbaa !143, !noalias !4307
  %i.goz = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gpa = getelementptr inbounds nuw i8, ptr %i.goz, i64 144
  %i.gpb = load i64, ptr %i.gpa, align 8, !tbaa !71
  %i.gpc = inttoptr i64 %i.gpb to ptr
  %i.gpd = load ptr, ptr %i.got, align 8, !tbaa !108, !noalias !4308
  %i.gpe = tail call ptr @LLVMBuildBitCast(ptr noundef %i.gpd, ptr noundef %i.goy, ptr noundef %i.gpc, ptr noundef nonnull @.str.13) #17, !noalias !4308
  %i.gpf = load ptr, ptr %i.gov, align 8, !tbaa !232, !noalias !4309
  %i.gpg = getelementptr inbounds i8, ptr %i.gpf, i64 -8 ; 2 uses
  %i.gph = load i64, ptr %i.gpg, align 8, !tbaa !100, !noalias !4309
  %i.gpi = inttoptr i64 %i.gph to ptr
  store ptr %i.gpg, ptr %i.gov, align 8, !tbaa !143, !noalias !4309
  %i.gpj = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gpk = getelementptr inbounds nuw i8, ptr %i.gpj, i64 144
  %i.gpl = load i64, ptr %i.gpk, align 8, !tbaa !71
  %i.gpm = inttoptr i64 %i.gpl to ptr
  %i.gpn = load ptr, ptr %i.got, align 8, !tbaa !108, !noalias !4310
  %i.gpo = tail call ptr @LLVMBuildBitCast(ptr noundef %i.gpn, ptr noundef %i.gpi, ptr noundef %i.gpm, ptr noundef nonnull @.str.13) #17, !noalias !4310
  call void @llvm.lifetime.start.p0(ptr nonnull %421) #17
  %533 = load i128, ptr %1, align 16, !tbaa !4012
  %534 = insertelement <16 x i128> poison, i128 %533, i64 0
  %535 = shufflevector <16 x i128> %534, <16 x i128> poison, <16 x i32> zeroinitializer
  %536 = lshr <16 x i128> %535, <i128 0, i128 8, i128 16, i128 24, i128 32, i128 40, i128 48, i128 56, i128 64, i128 72, i128 80, i128 88, i128 96, i128 104, i128 112, i128 120>
  %537 = trunc <16 x i128> %536 to <16 x i8>
  store <16 x i8> %537, ptr %421, align 16, !tbaa !32
  %i.gpp = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  call void @_ZN8WasmEdge4LLVM5Value15getConstVector8ERNS0_7ContextEN5cxx204spanIKhLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::LLVM::Value") align 8 %422, ptr noundef nonnull align 8 dereferenceable(8) %i.gpp, ptr nonnull %421, i64 16) #17
  %i.gpq = load ptr, ptr %i.got, align 8, !tbaa !108, !noalias !4311
  %i.gpr = load ptr, ptr %422, align 8, !tbaa !100, !noalias !4311
  %i.gps = call ptr @LLVMBuildShuffleVector(ptr noundef %i.gpq, ptr noundef %i.gpo, ptr noundef %i.gpe, ptr noundef %i.gpr, ptr noundef nonnull @.str.13) #17, !noalias !4311
  %i.gpt = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gpu = getelementptr inbounds nuw i8, ptr %i.gpt, i64 176
  %i.gpv = load i64, ptr %i.gpu, align 8, !tbaa !71
  %i.gpw = inttoptr i64 %i.gpv to ptr
  %i.gpx = load ptr, ptr %i.got, align 8, !tbaa !108, !noalias !4312
  %i.gpy = call ptr @LLVMBuildBitCast(ptr noundef %i.gpx, ptr noundef %i.gps, ptr noundef %i.gpw, ptr noundef nonnull @.str.13) #17, !noalias !4312
  %i.gpz = ptrtoint ptr %i.gpy to i64
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler9stackPushEN8WasmEdge4LLVM5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gpz) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %421) #17
  br label %bb.vj

bb.jz:                                            ; preds = %bb.cn
  %i.gqa = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gqa, i64 144
  %i.gqc = load i64, ptr %i.gqb, align 8, !tbaa !71
  %i.gqd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gqe = load i8, ptr %i.gqd, align 8, !tbaa !4305
  %i.gqf = zext i8 %i.gqe to i32
  %i.gqg = getelementptr inbounds nuw i8, ptr %i.gqa, i64 104
  %i.gqh = load i64, ptr %i.gqg, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEjS3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gqc, i32 noundef %i.gqf, i64 %i.gqh, i1 noundef zeroext true) #17
  br label %bb.vj

bb.ka:                                            ; preds = %bb.cn
  %i.gqi = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gqj = getelementptr inbounds nuw i8, ptr %i.gqi, i64 144
  %i.gqk = load i64, ptr %i.gqj, align 8, !tbaa !71
  %i.gql = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gqm = load i8, ptr %i.gql, align 8, !tbaa !4305
  %i.gqn = zext i8 %i.gqm to i32
  %i.gqo = getelementptr inbounds nuw i8, ptr %i.gqi, i64 104
  %i.gqp = load i64, ptr %i.gqo, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEjS3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gqk, i32 noundef %i.gqn, i64 %i.gqp, i1 noundef zeroext false) #17
  br label %bb.vj

bb.kb:                                            ; preds = %bb.cn
  %i.gqq = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gqr = getelementptr inbounds nuw i8, ptr %i.gqq, i64 144
  %i.gqs = load i64, ptr %i.gqr, align 8, !tbaa !71
  store i64 %i.gqs, ptr %423, align 8, !tbaa !71
  %i.gqt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gqu = load i8, ptr %i.gqt, align 8, !tbaa !4305
  %i.gqv = zext i8 %i.gqu to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %423, i32 noundef %i.gqv) #17
  br label %bb.vj

bb.kc:                                            ; preds = %bb.cn
  %i.gqw = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.gqx = getelementptr inbounds nuw i8, ptr %i.gqw, i64 152
  %i.gqy = load i64, ptr %i.gqx, align 8, !tbaa !71
  %i.gqz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gra = load i8, ptr %i.gqz, align 8, !tbaa !4305
  %i.grb = zext i8 %i.gra to i32
  %i.grc = getelementptr inbounds nuw i8, ptr %i.gqw, i64 104
  %i.grd = load i64, ptr %i.grc, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEjS3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gqy, i32 noundef %i.grb, i64 %i.grd, i1 noundef zeroext true) #17
  br label %bb.vj

bb.kd:                                            ; preds = %bb.cn
  %i.gre = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98 ; 2 uses
  %i.grf = getelementptr inbounds nuw i8, ptr %i.gre, i64 152
  %i.grg = load i64, ptr %i.grf, align 8, !tbaa !71
  %i.grh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gri = load i8, ptr %i.grh, align 8, !tbaa !4305
  %i.grj = zext i8 %i.gri to i32
  %i.grk = getelementptr inbounds nuw i8, ptr %i.gre, i64 104
  %i.grl = load i64, ptr %i.grk, align 8, !tbaa !71
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEjS3_b(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.grg, i32 noundef %i.grj, i64 %i.grl, i1 noundef zeroext false) #17
  br label %bb.vj

bb.ke:                                            ; preds = %bb.cn
  %i.grm = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.grn = getelementptr inbounds nuw i8, ptr %i.grm, i64 152
  %i.gro = load i64, ptr %i.grn, align 8, !tbaa !71
  store i64 %i.gro, ptr %424, align 8, !tbaa !71
  %i.grp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.grq = load i8, ptr %i.grp, align 8, !tbaa !4305
  %i.grr = zext i8 %i.grq to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %424, i32 noundef %i.grr) #17
  br label %bb.vj

bb.kf:                                            ; preds = %bb.cn
  %i.grs = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.grt = getelementptr inbounds nuw i8, ptr %i.grs, i64 160
  %i.gru = load i64, ptr %i.grt, align 8, !tbaa !71
  %i.grv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.grw = load i8, ptr %i.grv, align 8, !tbaa !4305
  %i.grx = zext i8 %i.grw to i32
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gru, i32 noundef %i.grx) #17
  br label %bb.vj

bb.kg:                                            ; preds = %bb.cn
  %i.gry = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.grz = getelementptr inbounds nuw i8, ptr %i.gry, i64 160
  %i.gsa = load i64, ptr %i.grz, align 8, !tbaa !71
  store i64 %i.gsa, ptr %425, align 8, !tbaa !71
  %i.gsb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gsc = load i8, ptr %i.gsb, align 8, !tbaa !4305
  %i.gsd = zext i8 %i.gsc to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %425, i32 noundef %i.gsd) #17
  br label %bb.vj

bb.kh:                                            ; preds = %bb.cn
  %i.gse = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gsf = getelementptr inbounds nuw i8, ptr %i.gse, i64 176
  %i.gsg = load i64, ptr %i.gsf, align 8, !tbaa !71
  %i.gsh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gsi = load i8, ptr %i.gsh, align 8, !tbaa !4305
  %i.gsj = zext i8 %i.gsi to i32
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gsg, i32 noundef %i.gsj) #17
  br label %bb.vj

bb.ki:                                            ; preds = %bb.cn
  %i.gsk = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gsl = getelementptr inbounds nuw i8, ptr %i.gsk, i64 176
  %i.gsm = load i64, ptr %i.gsl, align 8, !tbaa !71
  store i64 %i.gsm, ptr %426, align 8, !tbaa !71
  %i.gsn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gso = load i8, ptr %i.gsn, align 8, !tbaa !4305
  %i.gsp = zext i8 %i.gso to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %426, i32 noundef %i.gsp) #17
  br label %bb.vj

bb.kj:                                            ; preds = %bb.cn
  %i.gsq = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gsr = getelementptr inbounds nuw i8, ptr %i.gsq, i64 168
  %i.gss = load i64, ptr %i.gsr, align 8, !tbaa !71
  %i.gst = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gsu = load i8, ptr %i.gst, align 8, !tbaa !4305
  %i.gsv = zext i8 %i.gsu to i32
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gss, i32 noundef %i.gsv) #17
  br label %bb.vj

bb.kk:                                            ; preds = %bb.cn
  %i.gsw = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gsx = getelementptr inbounds nuw i8, ptr %i.gsw, i64 168
  %i.gsy = load i64, ptr %i.gsx, align 8, !tbaa !71
  store i64 %i.gsy, ptr %427, align 8, !tbaa !71
  %i.gsz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gta = load i8, ptr %i.gsz, align 8, !tbaa !4305
  %i.gtb = zext i8 %i.gta to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %427, i32 noundef %i.gtb) #17
  br label %bb.vj

bb.kl:                                            ; preds = %bb.cn
  %i.gtc = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gtd = getelementptr inbounds nuw i8, ptr %i.gtc, i64 184
  %i.gte = load i64, ptr %i.gtd, align 8, !tbaa !71
  %i.gtf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gtg = load i8, ptr %i.gtf, align 8, !tbaa !4305
  %i.gth = zext i8 %i.gtg to i32
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileExtractLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, i64 %i.gte, i32 noundef %i.gth) #17
  br label %bb.vj

bb.km:                                            ; preds = %bb.cn
  %i.gti = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gtj = getelementptr inbounds nuw i8, ptr %i.gti, i64 184
  %i.gtk = load i64, ptr %i.gtj, align 8, !tbaa !71
  store i64 %i.gtk, ptr %428, align 8, !tbaa !71
  %i.gtl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gtm = load i8, ptr %i.gtl, align 8, !tbaa !4305
  %i.gtn = zext i8 %i.gtm to i32
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileReplaceLaneOpEN8WasmEdge4LLVM4TypeEj(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %428, i32 noundef %i.gtn) #17
  br label %bb.vj

bb.kn:                                            ; preds = %bb.cn
  tail call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler20compileVectorSwizzleEv(ptr noundef nonnull align 8 dereferenceable(200) %.0.val) #17
  br label %bb.vj

bb.ko:                                            ; preds = %bb.cn
  %i.gto = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gtp = getelementptr inbounds nuw i8, ptr %i.gto, i64 144
  %i.gtq = load i64, ptr %i.gtp, align 8, !tbaa !71
  store i64 %i.gtq, ptr %429, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler14compileSplatOpEN8WasmEdge4LLVM4TypeE(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %429) #17
  br label %bb.vj

bb.kp:                                            ; preds = %bb.cn
  %i.gtr = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gts = getelementptr inbounds nuw i8, ptr %i.gtr, i64 152
  %i.gtt = load i64, ptr %i.gts, align 8, !tbaa !71
  store i64 %i.gtt, ptr %430, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler14compileSplatOpEN8WasmEdge4LLVM4TypeE(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %430) #17
  br label %bb.vj

bb.kq:                                            ; preds = %bb.cn
  %i.gtu = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
  %i.gtv = getelementptr inbounds nuw i8, ptr %i.gtu, i64 160
  %i.gtw = load i64, ptr %i.gtv, align 8, !tbaa !71
  store i64 %i.gtw, ptr %431, align 8, !tbaa !71
  call fastcc void @_ZN12_GLOBAL__N_116FunctionCompiler14compileSplatOpEN8WasmEdge4LLVM4TypeE(ptr noundef nonnull align 8 dereferenceable(200) %.0.val, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %431) #17
  br label %bb.vj

bb.kr:                                            ; preds = %bb.cn
  %i.gtx = load ptr, ptr %.0.val, align 8, !tbaa !206, !nonnull !50, !align !98
end_hunk_1
