Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clang?download=true
inline.NumInlined: 10765
inline.NumDeleted: 2395
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK5clang6driver5tools5Clang12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS8_Lj4EEERKNSB_3opt7ArgListEPKc:bb.a
  %366 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %367 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %368 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %369 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %370 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %371 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %372 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %373 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %374 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %375 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %376 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %377 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %378 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %379 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %380 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %381 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %382 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %383 = alloca %"class.llvm::StringRef", align 8 ; 5 uses
  %384 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %385 = alloca %"class.llvm::SmallString", align 8 ; 15 uses
  %386 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %387 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %388 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %389 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %390 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %391 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %392 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %393 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %394 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %395 = alloca %"class.llvm::StringRef", align 8 ; 5 uses
  %396 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %397 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %398 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %399 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %400 = alloca %"class.clang::driver::XRayArgs", align 8 ; 5 uses
  %401 = alloca %"class.std::vector.64", align 8  ; 8 uses
  %402 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %403 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %404 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %405 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %406 = alloca %"class.llvm::StringRef", align 8 ; 11 uses
  %407 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %408 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %409 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %410 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %411 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %412 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %413 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %414 = alloca %"class.std::vector.64", align 8  ; 8 uses
  %415 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %416 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %417 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %418 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %419 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %420 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %421 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %422 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %423 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %424 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %425 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %426 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %427 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %428 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %429 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %430 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %431 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %432 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %433 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %434 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %435 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %436 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %437 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %438 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %439 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 12 uses
  %440 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 12 uses
  %441 = alloca %"class.llvm::VersionTuple", align 8 ; 11 uses
  %442 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %443 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %444 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %445 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %446 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %447 = alloca %"class.llvm::VersionTuple", align 8 ; 6 uses
  %448 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %449 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %450 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %451 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %452 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %453 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %454 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %455 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %456 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %457 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %458 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %459 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %460 = alloca %"class.clang::ObjCRuntime", align 4 ; 20 uses
  %461 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %462 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %463 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %464 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %465 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %466 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %467 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %468 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %469 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %470 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %471 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %472 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %473 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %474 = alloca %"class.llvm::StringRef", align 8 ; 8 uses
  %475 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %476 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %477 = alloca %"class.llvm::StringRef", align 8 ; 8 uses
  %478 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %479 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %480 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %481 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %482 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %483 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %484 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %485 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %486 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %487 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %488 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %489 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %490 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %491 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %492 = alloca %"class.llvm::SmallString", align 8 ; 7 uses
  %493 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %i.ak = alloca i8, align 1                      ; 5 uses
  %i.al = alloca i8, align 1                      ; 5 uses
  %i.am = alloca i8, align 1                      ; 5 uses
  %494 = alloca %"class.clang::driver::InputInfo", align 8 ; 4 uses
  %495 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %496 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %497 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %498 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %499 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %500 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %501 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %502 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %503 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %504 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %505 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %506 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %507 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %508 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %509 = alloca %"class.llvm::Twine", align 8     ; 10 uses
  %510 = alloca %"class.llvm::StringRef", align 8 ; 3 uses
  %511 = alloca %"class.clang::driver::Distro", align 4 ; 4 uses
  %512 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %513 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %514 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %515 = alloca %"class.llvm::SmallString", align 8 ; 15 uses
  %516 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %517 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %518 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %519 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35, !nonnull !36, !align !37 ; 161 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 17 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1888 ; 51 uses
  %i.ar = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 2631, i32 noundef 445)
  %i.as = icmp ne ptr %i.ar, null                 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !249, !nonnull !36, !align !37 ; 202 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #21
  %i.av = getelementptr inbounds nuw i8, ptr %255, i64 16 ; 4 uses
  store ptr %i.av, ptr %255, align 8, !tbaa !143
  %i.aw = getelementptr inbounds nuw i8, ptr %255, i64 8 ; 1547 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw i8, ptr %255, i64 12 ; 505 uses
  store i32 16, ptr %i.ax, align 4, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !163
  %.fr7980 = freeze i32 %i.az                     ; 5 uses
  %i.ba = and i32 %.fr7980, 2
  %i.bb = icmp ne i32 %i.ba, 0                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 11 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 8 uses
  %i.be = icmp eq i32 %i.bd, 2                    ; 3 uses
  %i.bf = or i1 %i.be, %i.bb                      ; 2 uses
  %i.bg = and i32 %.fr7980, 8
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = icmp eq i32 %i.bd, 8                    ; 3 uses
  %i.bj = or i1 %i.bi, %i.bh                      ; 3 uses
  %i.bk = and i32 %.fr7980, 16
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = icmp eq i32 %i.bd, 16                   ; 2 uses
  %i.bn = or i1 %i.bm, %i.bl                      ; 5 uses
  %i.bo = icmp eq i32 %i.bd, 4                    ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !175
  %i.br = icmp eq i32 %i.bq, 5                    ; 11 uses
  %spec.select8031 = icmp ugt i32 %i.bd, 1        ; 3 uses
  %i.bs = and i32 %.fr7980, 20
  %brmerge.not = icmp eq i32 %i.bs, 0
  br i1 %brmerge.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !285 ; 2 uses
  %i.bv = and i32 %i.bu, %.fr7980
  %.not7921 = icmp eq i32 %i.bv, 0
  br i1 %.not7921, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %520 = icmp ne i32 %i.bu, 0
  %i.bw = call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 3289, i32 3215, i1 noundef zeroext %520) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.bx = phi i1 [ %i.bw, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  %i.by = call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 899, i32 1268, i1 noundef zeroext false) #21 ; 3 uses
  %i.bz = load i32, ptr %i.bc, align 8, !tbaa !155
  %i.ca = load ptr, ptr %i.ao, align 8, !tbaa !177
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(2568) %i.ao, ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef %i.bz) #21 ; 7 uses
  %i.ce = icmp ne i32 %i.cd, 0                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #21
  %i.cf = load ptr, ptr %4, align 8, !tbaa !143   ; 13 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !162
  %i.ci = getelementptr inbounds nuw i8, ptr %256, i64 8
  store i32 1, ptr %i.ci, align 8, !tbaa !375
  %i.cj = getelementptr inbounds nuw i8, ptr %256, i64 16
  store ptr null, ptr %i.cj, align 8, !tbaa !378
  %i.ck = getelementptr inbounds nuw i8, ptr %256, i64 24 ; 2 uses
  store i32 %i.ch, ptr %i.ck, align 8, !tbaa !162
  %i.cl = getelementptr inbounds nuw i8, ptr %256, i64 32
  store ptr @.str.132, ptr %i.cl, align 8, !tbaa !174
  store ptr @.str.132, ptr %256, align 8, !tbaa !138
  %spec.select10070 = select i1 %i.br, ptr %256, ptr %i.cf ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %257, i64 16 ; 2 uses
  store ptr %i.cm, ptr %257, align 8, !tbaa !143
  %i.cn = getelementptr inbounds nuw i8, ptr %257, i64 8 ; 5 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !140
  %i.co = getelementptr inbounds nuw i8, ptr %257, i64 12 ; 2 uses
  store i32 4, ptr %i.co, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %258, i64 16 ; 2 uses
  store ptr %i.cp, ptr %258, align 8, !tbaa !143
  %i.cq = getelementptr inbounds nuw i8, ptr %258, i64 8 ; 5 uses
  store i32 0, ptr %i.cq, align 8, !tbaa !140
  %i.cr = getelementptr inbounds nuw i8, ptr %258, i64 12 ; 2 uses
  store i32 4, ptr %i.cr, align 4, !tbaa !141
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !140 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %.idx = mul nuw nsw i64 %i.cu, 40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx
  %.not23138067 = icmp eq i32 %i.ct, 0
  br i1 %.not23138067, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %or.cond = or i1 %i.bf, %i.bj
  %i.cw = getelementptr inbounds nuw i8, ptr %259, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit, %bb.d
  %.02153.lcssa = phi ptr [ null, %bb.d ], [ %.12154, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit ] ; 2 uses
  %.02152.lcssa = phi ptr [ null, %bb.d ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 60 ; 30 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !48 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 14
  %i.da = icmp eq i32 %i.cy, 25
  br i1 %i.da, label %bb.r, label %bb.t

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit
  %.021528070 = phi ptr [ null, %.lr.ph ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit ] ; 8 uses
  %.021538069 = phi ptr [ null, %.lr.ph ], [ %.12154, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit ] ; 7 uses
  %.021558068 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ft, %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit ] ; 10 uses
  %i.db = icmp eq ptr %.021558068, %spec.select10070
  br i1 %i.db, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %.021558068, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !162 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 69
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.br, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.df = load i32, ptr %i.ck, align 8, !tbaa !162 ; 2 uses
  %.not = icmp eq i32 %i.dd, %i.df
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #21
  %i.dg = load ptr, ptr %i.au, align 8, !tbaa !101, !noalias !1372, !nonnull !36, !align !37
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %259, ptr noundef nonnull align 8 dereferenceable(15256) %i.dg, i32 0, i32 noundef 363) #21
  %i.dh = load ptr, ptr %.021558068, align 8, !tbaa !138
  %i.di = load ptr, ptr %259, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.i
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !125
  %i.dk = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.dj) ; 2 uses
  store ptr %i.dk, ptr %259, align 8, !tbaa !124
  br label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit: ; preds = %bb.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.dl = phi ptr [ %i.dk, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.di, %bb.i ] ; 2 uses
  %i.dm = ptrtoint ptr %i.dh to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.do = load i8, ptr %i.dl, align 8, !tbaa !137
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  store i8 1, ptr %i.dq, align 1, !tbaa !138
  %i.dr = load ptr, ptr %259, align 8, !tbaa !124 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i8, ptr %i.dr, align 8, !tbaa !137 ; 2 uses
  %i.du = add i8 %i.dt, 1
  store i8 %i.du, ptr %i.dr, align 8, !tbaa !137
  %i.dv = zext i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  store i64 %i.dm, ptr %i.dw, align 8, !tbaa !139
  %i.dx = load i32, ptr %i.dc, align 8, !tbaa !162
  %i.dy = call noundef ptr @_ZN5clang6driver5types11getTypeNameENS1_2IDE(i32 noundef %i.dx) #21
  %i.dz = load ptr, ptr %259, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i2519 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i2519, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2520, label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2520: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit
  %i.ea = load ptr, ptr %i.cw, align 8, !tbaa !125
  %i.eb = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ea) ; 2 uses
  store ptr %i.eb, ptr %259, align 8, !tbaa !124
  br label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521

_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2520
  %i.ec = phi ptr [ %i.eb, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2520 ], [ %i.dz, %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit ] ; 2 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ef = load i8, ptr %i.ec, align 8, !tbaa !137
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eg
  store i8 1, ptr %i.eh, align 1, !tbaa !138
  %i.ei = load ptr, ptr %259, align 8, !tbaa !124 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i8, ptr %i.ei, align 8, !tbaa !137 ; 2 uses
  %i.el = add i8 %i.ek, 1
  store i8 %i.el, ptr %i.ei, align 8, !tbaa !137
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  store i64 %i.ed, ptr %i.en, align 8, !tbaa !139
  %i.eo = call noundef ptr @_ZN5clang6driver5types11getTypeNameENS1_2IDE(i32 noundef %i.df) #21
  %i.ep = load ptr, ptr %259, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i2522 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i2522, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2523, label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2524

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2523: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521
  %i.eq = load ptr, ptr %i.cw, align 8, !tbaa !125
  %i.er = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.eq) ; 2 uses
  store ptr %i.er, ptr %259, align 8, !tbaa !124
  br label %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2524

_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2524: ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2523
  %i.es = phi ptr [ %i.er, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i2523 ], [ %i.ep, %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2521 ] ; 2 uses
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ev = load i8, ptr %i.es, align 8, !tbaa !137
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ew
  store i8 1, ptr %i.ex, align 1, !tbaa !138
  %i.ey = load ptr, ptr %259, align 8, !tbaa !124 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i8, ptr %i.ey, align 8, !tbaa !137 ; 2 uses
  %i.fb = add i8 %i.fa, 1
  store i8 %i.fb, ptr %i.ey, align 8, !tbaa !137
  %i.fc = zext i8 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fc
  store i64 %i.et, ptr %i.fd, align 8, !tbaa !139
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %259) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcvEERKS0_OT_.exit2524, %bb.h
  %i.fe = load i32, ptr %i.cn, align 8, !tbaa !140 ; 2 uses
  %i.ff = load i32, ptr %i.co, align 4, !tbaa !141
  %.not.i = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !142

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %257, ptr noundef nonnull align 8 dereferenceable(40) %.021558068)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.fg = zext i32 %i.fe to i64
  %i.fh = load ptr, ptr %257, align 8, !tbaa !143
  %i.fi = getelementptr inbounds nuw [40 x i8], ptr %i.fh, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %.021558068, i64 40, i1 false)
  %i.fj = load i32, ptr %i.cn, align 8, !tbaa !140
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.cn, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6driver9InputInfoELb1EE9push_backERKS3_.exit

bb.m:                                             ; preds = %bb.g
  br i1 %i.bx, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.fl = load i32, ptr %i.cq, align 8, !tbaa !140 ; 2 uses
  %i.fm = load i32, ptr %i.cr, align 4, !tbaa !141
  %.not.i2525 = icmp ult i32 %i.fl, %i.fm
  br i1 %.not.i2525, label %bb.p, label %bb.o, !prof !142
end_hunk_0
