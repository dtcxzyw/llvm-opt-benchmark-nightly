Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.13?download=true
inline.NumInlined: 887
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCs2NzvFoTxuAy_2rg5flags6hiargsNtB2_6HiArgs8searcher:bb.a
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 62, !dbg !10295
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 63, !dbg !10295
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !10295
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 65, !dbg !10295 ; 2 uses
  store i8 1, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !10295
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 66, !dbg !10295
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10296
  %i.i = load <2 x i64>, ptr %i.h, align 8, !dbg !10296
  store <2 x i64> %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10297
  store i8 %i.c, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !10298
  store i8 %.sroa.4.0, ptr %.sroa.11.0..sroa_idx, align 1, !dbg !10298
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912, !dbg !10299
  %i.k = load i8, ptr %i.j, align 8, !dbg !10299, !range !476, !noundef !413
  store i8 %i.k, ptr %.sroa.14.0..sroa_idx, align 4, !dbg !10300
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 914, !dbg !10301
  %i.m = load i8, ptr %i.l, align 2, !dbg !10301, !range !476, !noundef !413
  store i8 %i.m, ptr %.sroa.16.0..sroa_idx, align 2, !dbg !10302
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 917, !dbg !10303
  %i.o = load i8, ptr %i.n, align 1, !dbg !10303, !range !476, !noundef !413
  store i8 %i.o, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !10304
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 916, !dbg !10305
  %i.q = load i8, ptr %i.p, align 4, !dbg !10305, !range !476, !noundef !413
  store i8 %i.q, ptr %.sroa.17.0..sroa_idx, align 1, !dbg !10306
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 933, !dbg !10307
  %i.s = load i8, ptr %i.r, align 1, !dbg !10307, !range !476, !noundef !413
  store i8 %i.s, ptr %.sroa.20.0..sroa_idx, align 2, !dbg !10308
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !10309
  %i.u = load i64, ptr %i.t, align 8, !dbg !10309, !range !596, !noundef !413 ; 2 uses
  %.not = icmp eq i64 %i.u, 2, !dbg !10309
  br i1 %.not, label %bb.c, label %bb.b, !dbg !10310

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !10295
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !10311
  %i.w = load i64, ptr %i.v, align 8, !dbg !10311, !range !566, !noundef !413
  %i.x = trunc nuw i64 %i.w to i1, !dbg !10312
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !10312
  %i.z = load i64, ptr %i.y, align 8, !dbg !10312
  %.sroa.08.0 = select i1 %i.x, i64 %i.z, i64 0, !dbg !10312 ; 2 uses
  %i.aa = trunc nuw i64 %i.u to i1, !dbg !10313
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !10313
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !10313
  %.sroa.08.1 = select i1 %i.aa, i64 %i.ac, i64 %.sroa.08.0, !dbg !10313
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !10314
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !10314, !range !566, !noundef !413
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !10315
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !10315
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !10315
  %.sroa.06.1 = select i1 %i.af, i64 %i.ah, i64 %.sroa.08.0, !dbg !10315
  store i64 %.sroa.08.1, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !10316
  store i64 %.sroa.06.1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10317
  br label %bb.d, !dbg !10318

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 1, !dbg !10319
  br label %bb.d, !dbg !10320

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !10321
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !10321, !range !596, !noundef !413
  switch i64 %i.aj, label %default.unreachable9 [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ], !dbg !10322

default.unreachable9:                             ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  call void @_RNvMs5_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_15SearcherBuilder5build(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a), !dbg !10323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10324
  ret void, !dbg !10325

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !10321
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !10326, !nonnull !413, !align !612, !noundef !413
  store ptr %i.al, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !10327
  br label %bb.e, !dbg !10328

bb.g:                                             ; preds = %bb.d
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !10329
  br label %bb.e, !dbg !10330
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc11is_assigned(i32 noundef range(i32 33, 1114112) %0) unnamed_addr #0 !dbg !274 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 888, !dbg !10332
  br i1 %i.a, label %bb.f, label %bb.b, !dbg !10332

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 262142, !dbg !10333
  br i1 %i.b, label %bb.d, label %bb.c, !dbg !10333

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 917505, !dbg !10334
  %i.d = add nsw i32 %0, -917536
  %or.cond2 = icmp ult i32 %i.d, 96
  %or.cond = select i1 %i.c, i1 true, i1 %or.cond2, !dbg !10334
  %i.e = add nsw i32 %0, -917760
  %or.cond3 = icmp ult i32 %i.e, 240
  %or.cond6 = select i1 %or.cond, i1 true, i1 %or.cond3, !dbg !10334
  %i.f = add nsw i32 %0, -983040
  %or.cond4 = icmp ult i32 %i.f, 65534
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %or.cond4, !dbg !10334
  br i1 %or.cond7, label %bb.f, label %bb.e, !dbg !10334

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 noundef %0) #35, !dbg !10335
  %i.h = xor i1 %i.g, true, !dbg !10336
  br label %bb.f, !dbg !10337

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %0, -1048576, !dbg !10338
  %spec.select = icmp ult i32 %i.i, 65534, !dbg !10338
  br label %bb.f, !dbg !10338

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ], [ true, %bb.a ], [ %spec.select, %bb.e ]
  ret i1 %.sroa.0.0.shrunk, !dbg !10339
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 44) i8 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10340 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64, !dbg !10354 ; 3 uses
  %i.b = and i64 %i.a, 3, !dbg !10355
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ], !dbg !10356, !prof !423

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32, !dbg !10357
  %i.d = trunc nuw i64 %i.c to i32, !dbg !10357
  %i.e = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions(), !dbg !10358
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10359
  %i.g = load ptr, ptr %i.f, align 8, !dbg !10359, !nonnull !413, !noundef !413
  %i.h = tail call noundef i8 %i.g(i32 noundef %i.d), !dbg !10359
  br label %bb.f, !dbg !10360

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.a, 32, !dbg !10361
  %i.j = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr), !dbg !10362
  %switch.idx.cast.i.i = trunc i64 %i.i to i8     ; 2 uses
  %i.k = icmp ne i8 %switch.idx.cast.i.i, -1, !dbg !10363
  tail call void @llvm.assume(i1 %i.j), !dbg !10364
  tail call void @llvm.assume(i1 %i.k), !dbg !10364
  br label %bb.f, !dbg !10365

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !10366
  %i.m = load i8, ptr %i.l, align 8, !dbg !10366, !range !724, !noundef !413
  br label %bb.f, !dbg !10367

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %.0.val, i64 31, !dbg !10368
  %i.o = load i8, ptr %i.n, align 8, !dbg !10368, !range !724, !noundef !413
  br label %bb.f, !dbg !10369

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.h, %bb.b ], [ %switch.idx.cast.i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ], !dbg !10370
  ret i8 %.sroa.0.0, !dbg !10371
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs2NzvFoTxuAy_2rg(i64 noundef %0) unnamed_addr #1 !dbg !10372 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10379
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !10379
  %i.b = load i64, ptr %i.a, align 8, !dbg !10379, !range !566, !noundef !413
  %i.c = trunc nuw i64 %i.b to i1, !dbg !10380
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !10380, !prof !493

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10381
  %i.e = load i64, ptr %i.d, align 8, !dbg !10381, !range !567, !noundef !413
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10381
  %i.g = load i64, ptr %i.f, align 8, !dbg !10381
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #34, !dbg !10382
  unreachable, !dbg !10382

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10383
  %i.i = load ptr, ptr %i.h, align 8, !dbg !10383, !nonnull !413, !noundef !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10384
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0, !dbg !10385
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %0, 1, !dbg !10385
  ret { ptr, i64 } %i.k, !dbg !10385
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_6borrow3CowShENtNtBL_7set_val9SetValZSTEE13new_uninit_inCs2NzvFoTxuAy_2rg() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10386 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10395
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 376, i64 noundef 8) #33, !dbg !10396 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10397
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10398, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #34, !dbg !10399
  unreachable, !dbg !10399

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10400
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueEE13new_uninit_inCs2NzvFoTxuAy_2rg() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10401 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10410
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 728, i64 noundef 8) #33, !dbg !10411 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10412
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10413, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #34, !dbg !10414
  unreachable, !dbg !10414

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10415
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtB6_6string6StringEE13new_uninit_inB1y_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10416 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10425
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 384, i64 noundef 8) #33, !dbg !10426 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10427
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10428, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 384) #34, !dbg !10429
  unreachable, !dbg !10429

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10430
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtB6_3vec3VecNtNtB6_6string6StringEB25_EEE13new_uninit_inB1y_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10431 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10440
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(648) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 648, i64 noundef 8) #33, !dbg !10441 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10442
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10443, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 648) #34, !dbg !10444
  unreachable, !dbg !10444

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10445
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_6borrow3CowShENtNtBL_7set_val9SetValZSTEE13new_uninit_inCs2NzvFoTxuAy_2rg() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10446 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10455
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 280, i64 noundef 8) #33, !dbg !10456 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10457
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10458, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #34, !dbg !10459
  unreachable, !dbg !10459

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10460
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueEE13new_uninit_inCs2NzvFoTxuAy_2rg() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10461 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10470
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 632, i64 noundef 8) #33, !dbg !10471 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10472
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10473, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #34, !dbg !10474
  unreachable, !dbg !10474

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10475
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtB6_6string6StringEE13new_uninit_inB1t_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10476 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10485
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 288, i64 noundef 8) #33, !dbg !10486 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10487
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10488, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #34, !dbg !10489
  unreachable, !dbg !10489

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10490
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtB6_3vec3VecNtNtB6_6string6StringEB20_EEE13new_uninit_inB1t_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10491 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10500
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3977) 552, i64 noundef 8) #33, !dbg !10501 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10502
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10503, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #34, !dbg !10504
  unreachable, !dbg !10504

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10505
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEE13new_zeroed_inB1v_() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10506 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10518
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(3976) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef 3976, i64 noundef 8) #33, !dbg !10519 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !10520
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10521, !prof !493

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3976) #34, !dbg !10522
  unreachable, !dbg !10522

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !10523
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCseNfSUspcXaQ_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !271 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64, !dbg !10532      ; 2 uses
  %i.c = and i64 %i.b, 1, !dbg !10533
  %.not = icmp eq i64 %i.c, 0, !dbg !10533
  br i1 %.not, label %bb.c, label %bb.b, !dbg !10533

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1, !dbg !10534
  %i.e = tail call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d), !dbg !10535
  br label %bb.d, !dbg !10536

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10531
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !10537
  %i.f = call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !10538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10539
  br label %bb.d, !dbg !10536

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ], !dbg !10540
  ret ptr %.sroa.0.0, !dbg !10541
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs2NzvFoTxuAy_2rg5flags6hiargs17platform_hostname(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10542 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10672
  call void @_RNvNtCsgwyS1EwTFAS_8grep_cli8hostname8hostname(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i), !dbg !10672
  %i.k = load i64, ptr %i.i, align 8, !dbg !10672, !range !442, !noundef !413
  %i.l = icmp eq i64 %i.k, -1, !dbg !10672
  br i1 %i.l, label %bb.w, label %bb.b, !dbg !10673

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !10674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10675
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !10676
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10676, !nonnull !413, !noundef !413
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !10677
  %i.p = load i64, ptr %i.o, align 8, !dbg !10677, !noundef !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10678
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.d unwind label %bb.c, !dbg !10679

bb.c:                                             ; preds = %bb.p, %bb.g, %bb.e, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #31
          to label %common.resume unwind label %bb.u, !dbg !10680

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.c, align 8, !dbg !10681, !range !566, !noundef !413
  %i.s = trunc nuw i64 %i.r to i1, !dbg !10682
  br i1 %i.s, label %bb.o, label %bb.e, !dbg !10682

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10683
  %i.u = load ptr, ptr %i.t, align 8, !dbg !10683, !nonnull !413, !noundef !413
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10683
  %i.w = load i64, ptr %i.v, align 8, !dbg !10683, !noundef !413 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10685
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.c, !dbg !10685

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.b, align 8, !dbg !10685, !range !566, !noundef !413
  %i.y = trunc nuw i64 %i.x to i1, !dbg !10686
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10687
  %i.aa = load i64, ptr %i.z, align 8, !dbg !10687, !range !567, !noundef !413 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10687 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h, !dbg !10686, !prof !493

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !10688
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #34
          to label %bb.n unwind label %bb.c, !dbg !10689

bb.h:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !10690, !nonnull !413, !noundef !413 ; 2 uses
  %i.ae = icmp ule i64 %i.w, %i.aa, !dbg !10691
  call void @llvm.assume(i1 %i.ae), !dbg !10692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10693
  %.not = icmp eq i64 %i.w, 0, !dbg !10694
  br i1 %.not, label %bb.i, label %bb.l, !dbg !10694

bb.i:                                             ; preds = %bb.l, %bb.h
  store i64 %i.aa, ptr %0, align 8, !dbg !10695
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10695
  store ptr %i.ad, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !10695
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10695
  store i64 %i.w, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !10695
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit unwind label %bb.j, !dbg !10696

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k, !dbg !10697

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !10696
  unreachable, !dbg !10696

common.resume:                                    ; preds = %bb.c, %bb.v, %bb.r, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.af, %bb.j ], [ %i.ar, %bb.v ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !10698

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !10699
  br label %bb.m, !dbg !10700

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.u, i64 %i.w, i1 false), !dbg !10701
  br label %bb.i, !dbg !10702

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10680
  ret void, !dbg !10700

bb.n:                                             ; preds = %bb.g
  unreachable

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10684
  %i.ah = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !10703 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6, !dbg !10704
  call void @llvm.assume(i1 %i.ai), !dbg !10704
  %i.aj = icmp samesign ugt i64 %i.ah, 3, !dbg !10705
  br i1 %i.aj, label %bb.p, label %bb.q, !dbg !10645

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10706
  store ptr %i.j, ptr %i.e, align 8, !dbg !10706
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10706
  store ptr @_RNvXs7_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !10706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10645
  store ptr @27, ptr %i.d, align 8, !dbg !10645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10645
  store i64 17, ptr %i.ak, align 8, !dbg !10645
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10645
  store ptr @27, ptr %i.al, align 8, !dbg !10645
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !10645
  store i64 17, ptr %i.am, align 8, !dbg !10645
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !10645
  store ptr @70, ptr %i.an, align 8, !dbg !10645
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @69, ptr noundef nonnull %i.e, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.t unwind label %bb.c, !dbg !10645

bb.q:                                             ; preds = %bb.o, %bb.t
  store i64 -1, ptr %0, align 8, !dbg !10707
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit18 unwind label %bb.r, !dbg !10708

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.s, !dbg !10709

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !10708
  unreachable, !dbg !10708

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit18: ; preds = %bb.q
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !10710
  br label %bb.m, !dbg !10680

end_hunk_0
