Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCNvNtNtCskY9G75ZWc4U_11polars_expr11expressions4sort33map_sorted_indices_to_group_slice0EEB3d_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !86233
  store i32 %i.h, ptr %i.z, align 4, !dbg !86234
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !86235
  store i32 %i.y, ptr %i.ad, align 4, !dbg !86236
  store i64 2, ptr %i.ac, align 8, !dbg !86237, !alias.scope !86203
  store ptr %i.l, ptr %i.c, align 8, !dbg !86238
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86238
  store ptr %.sroa.10.0.copyload27, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !86238
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !86238
  store ptr %.sroa.13.0.copyload30, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !86238
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4ItermENCNvNtNtCskY9G75ZWc4U_11polars_expr11expressions4sort33map_sorted_indices_to_group_slice0EE11spec_extendB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.j, !dbg !86239

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !86240
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !86243
  br label %bb.i, !dbg !86244

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  ret void, !dbg !86245

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.d) #54
          to label %bb.l unwind label %bb.k, !dbg !86243

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86246
  unreachable, !dbg !86246

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86246
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3rev3RevINtNtB2f_6copied6CopiedINtNtNtB17_5slice4iter4ItermEEEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !86247 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !86305
  store ptr %1, ptr %i.e, align 8, !dbg !86306
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !86306 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !dbg !86306
  %i.g = call { i32, i32 } @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !86307 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0, !dbg !86308
  %i.i = extractvalue { i32, i32 } %i.g, 1, !dbg !86308 ; 2 uses
  %i.j = trunc i32 %i.h to i1, !dbg !86309
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !86309

bb.b:                                             ; preds = %bb.a
  %i.k = call { i32, i32 } @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !86310 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0, !dbg !86311
  %i.m = extractvalue { i32, i32 } %i.k, 1, !dbg !86311
  %i.n = trunc i32 %i.l to i1, !dbg !86312
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !86312

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86313
  store i32 0, ptr %i.o, align 8, !dbg !86313
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86313
  store i32 1, ptr %i.p, align 4, !dbg !86313
  store ptr null, ptr %0, align 8, !dbg !86313
  br label %bb.m, !dbg !86292

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !86314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86315
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !dbg !86316
  %i.q = load i64, ptr %i.c, align 8, !dbg !86315, !noundef !3509
  %i.r = add i64 %i.q, 2, !dbg !86315             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86317
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86317
  %i.s = load i64, ptr %i.a, align 8, !dbg !86317, !range !3569, !noundef !3509
  %i.t = trunc nuw i64 %i.s to i1, !dbg !86318
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !86319
  %i.v = load i64, ptr %i.u, align 8, !dbg !86319, !range !3572, !noundef !3509 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !86319 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !dbg !86318, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %i.i to i64, !dbg !86320
  %i.x = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86320
  store ptr %i.x, ptr %0, align 8, !dbg !86321
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86321
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86321
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86321
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86321
  br label %bb.m, !dbg !86322

bb.f:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !dbg !86323
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.y) #57, !dbg !86324
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.w, align 8, !dbg !86325, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.aa = icmp ule i64 %i.r, %i.v, !dbg !86326
  call void @llvm.assume(i1 %i.aa), !dbg !86327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86328
  store i64 %i.v, ptr %i.d, align 8, !dbg !86329
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !86329 ; 3 uses
  store ptr %i.z, ptr %i.ab, align 8, !dbg !86329
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !86329 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !dbg !86329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86330
  %i.ad = icmp eq i64 %i.v, 0, !dbg !86331
  br i1 %i.ad, label %bb.h, label %bb.i, !dbg !86331

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge unwind label %bb.n, !dbg !86332

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.ab, align 8, !dbg !86333, !alias.scope !86301
  br label %bb.i, !dbg !86332

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %bb.g ], !dbg !86333
  store i32 %i.i, ptr %i.ae, align 4, !dbg !86334
  store i64 1, ptr %i.ac, align 8, !dbg !86335, !alias.scope !86301
  %i.af = load i64, ptr %i.d, align 8, !dbg !86336, !range !3583, !alias.scope !86302, !noundef !3509
  %i.ag = icmp eq i64 %i.af, 1, !dbg !86337
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !86337

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.n, !dbg !86338

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ah = load ptr, ptr %i.ab, align 8, !dbg !86339, !alias.scope !86302, !nonnull !3509, !noundef !3509
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !86340
  store i32 %i.m, ptr %i.ai, align 4, !dbg !86341
  store i64 2, ptr %i.ac, align 8, !dbg !86342, !alias.scope !86302
  %i.aj = load ptr, ptr %i.e, align 8, !dbg !86343, !nonnull !3509, !noundef !3509
  %i.ak = load ptr, ptr %i.f, align 8, !dbg !86343, !noundef !3509
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB1j_6copied6CopiedINtNtNtB1n_5slice4iter4ItermEEEE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.aj, ptr noundef %i.ak)
          to label %bb.l unwind label %bb.n, !dbg !86344

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !86345
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !86348
  br label %bb.m, !dbg !86349

bb.m:                                             ; preds = %bb.c, %bb.e, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !86349
  ret void, !dbg !86350

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.d) #54
          to label %bb.p unwind label %bb.o, !dbg !86348

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86351
  unreachable, !dbg !86351

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86351
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3rev3RevINtNtNtB17_3ops5range5RangemEEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !86352 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = icmp ult i32 %1, %2, !dbg !86412
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !86413

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %2, -1, !dbg !86414              ; 3 uses
  %i.f = icmp ult i32 %1, %i.e, !dbg !86415
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !86416

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86417
  store i32 0, ptr %i.g, align 8, !dbg !86417
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86417
  store i32 1, ptr %i.h, align 4, !dbg !86417
  store ptr null, ptr %0, align 8, !dbg !86417
  br label %bb.i, !dbg !86400

bb.d:                                             ; preds = %bb.b
  %i.i = add i32 %2, -2, !dbg !86418              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86419
  %narrow.i.i41 = sub nuw i32 %i.i, %1, !dbg !86420
  %.sink1.i.i = zext i32 %narrow.i.i41 to i64, !dbg !86420
  %i.j = add nuw nsw i64 %.sink1.i.i, 2, !dbg !86421 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86422
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86422
  %i.k = load i64, ptr %i.a, align 8, !dbg !86422, !range !3569, !noundef !3509
  %i.l = trunc nuw i64 %i.k to i1, !dbg !86423
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !86424
  %i.n = load i64, ptr %i.m, align 8, !dbg !86424, !range !3572, !noundef !3509 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !86424 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !86423, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %i.e to i64, !dbg !86425
  %i.p = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86425
  store ptr %i.p, ptr %0, align 8, !dbg !86426
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86426
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86426
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86426
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86426
  br label %bb.i, !dbg !86427

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !dbg !86428
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #57, !dbg !86429
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !dbg !86430, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.s = icmp samesign ule i64 %i.j, %i.n, !dbg !86431
  tail call void @llvm.assume(i1 %i.s), !dbg !86432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86433
  store i64 %i.n, ptr %i.c, align 8, !dbg !86434
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86434
  store ptr %i.r, ptr %i.t, align 8, !dbg !86434
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !86434
  store i32 %i.e, ptr %i.r, align 4, !dbg !86435
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !86436
  store i32 %i.i, ptr %i.v, align 4, !dbg !86437
  store i64 2, ptr %i.u, align 8, !dbg !86438, !alias.scope !86410
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtNtB1n_3ops5range5RangemEEE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %1, i32 noundef %i.i)
          to label %bb.h unwind label %bb.j, !dbg !86439

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !86440
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86443
  br label %bb.i, !dbg !86444

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  ret void, !dbg !86445

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #54
          to label %bb.l unwind label %bb.k, !dbg !86443

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86446
  unreachable, !dbg !86446

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86446
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItermEEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !86447 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !86500
  store ptr %1, ptr %i.e, align 8, !dbg !86501
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !86501 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !dbg !86501
  %i.g = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !86502 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0, !dbg !86503
  %i.i = extractvalue { i32, i32 } %i.g, 1, !dbg !86503 ; 2 uses
  %i.j = trunc i32 %i.h to i1, !dbg !86504
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !86504

bb.b:                                             ; preds = %bb.a
  %i.k = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !86505 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0, !dbg !86506
  %i.m = extractvalue { i32, i32 } %i.k, 1, !dbg !86506
  %i.n = trunc i32 %i.l to i1, !dbg !86507
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !86507

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86508
  store i32 0, ptr %i.o, align 8, !dbg !86508
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86508
  store i32 1, ptr %i.p, align 4, !dbg !86508
  store ptr null, ptr %0, align 8, !dbg !86508
  br label %bb.m, !dbg !86487

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !86509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86510
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !dbg !86511
  %i.q = load i64, ptr %i.c, align 8, !dbg !86510, !noundef !3509
  %i.r = add i64 %i.q, 2, !dbg !86510             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86512
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86512
  %i.s = load i64, ptr %i.a, align 8, !dbg !86512, !range !3569, !noundef !3509
  %i.t = trunc nuw i64 %i.s to i1, !dbg !86513
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !86514
  %i.v = load i64, ptr %i.u, align 8, !dbg !86514, !range !3572, !noundef !3509 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !86514 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !dbg !86513, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %i.i to i64, !dbg !86515
  %i.x = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86515
  store ptr %i.x, ptr %0, align 8, !dbg !86516
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86516
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86516
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86516
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86516
  br label %bb.m, !dbg !86517

bb.f:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !dbg !86518
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.y) #57, !dbg !86519
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.w, align 8, !dbg !86520, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.aa = icmp ule i64 %i.r, %i.v, !dbg !86521
  call void @llvm.assume(i1 %i.aa), !dbg !86522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86523
  store i64 %i.v, ptr %i.d, align 8, !dbg !86524
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !86524 ; 3 uses
  store ptr %i.z, ptr %i.ab, align 8, !dbg !86524
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !86524 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !dbg !86524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86525
  %i.ad = icmp eq i64 %i.v, 0, !dbg !86526
  br i1 %i.ad, label %bb.h, label %bb.i, !dbg !86526

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge unwind label %bb.n, !dbg !86527

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.ab, align 8, !dbg !86528, !alias.scope !86496
  br label %bb.i, !dbg !86527

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %bb.g ], !dbg !86528
  store i32 %i.i, ptr %i.ae, align 4, !dbg !86529
  store i64 1, ptr %i.ac, align 8, !dbg !86530, !alias.scope !86496
  %i.af = load i64, ptr %i.d, align 8, !dbg !86531, !range !3583, !alias.scope !86497, !noundef !3509
  %i.ag = icmp eq i64 %i.af, 1, !dbg !86532
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !86532

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.n, !dbg !86533

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ah = load ptr, ptr %i.ab, align 8, !dbg !86534, !alias.scope !86497, !nonnull !3509, !noundef !3509
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !86535
  store i32 %i.m, ptr %i.ai, align 4, !dbg !86536
  store i64 2, ptr %i.ac, align 8, !dbg !86537, !alias.scope !86497
  %i.aj = load ptr, ptr %i.e, align 8, !dbg !86538, !nonnull !3509, !noundef !3509
  %i.ak = load ptr, ptr %i.f, align 8, !dbg !86538, !noundef !3509
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItermEEE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %i.aj, ptr noundef %i.ak)
          to label %bb.l unwind label %bb.n, !dbg !86539

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !86540
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !86543
  br label %bb.m, !dbg !86544

bb.m:                                             ; preds = %bb.c, %bb.e, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !86544
  ret void, !dbg !86545

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.d) #54
          to label %bb.p unwind label %bb.o, !dbg !86543

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86546
  unreachable, !dbg !86546

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86546
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters6filter6FilterINtNtB2f_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000EEB3L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !86547 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !86610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !86611, !alias.scope !86594
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !86612 ; 2 uses
  %i.h = call { i32, i32 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0INtNtNtBb_3ops12control_flow11ControlFlowmEEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g), !dbg !86613 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0, !dbg !86613
  %i.j = trunc i32 %i.i to i1, !dbg !86614
  %i.k = extractvalue { i32, i32 } %i.h, 1, !dbg !86614 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !86615

bb.b:                                             ; preds = %bb.a
  %i.l = call { i32, i32 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkmQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000E0INtNtNtBb_3ops12control_flow11ControlFlowmEEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g), !dbg !86616 ; 2 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0, !dbg !86616
  %i.n = trunc i32 %i.m to i1, !dbg !86617
  %i.o = extractvalue { i32, i32 } %i.l, 1, !dbg !86617
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !86618

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86619
  store i32 0, ptr %i.p, align 8, !dbg !86619
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86619
  store i32 1, ptr %i.q, align 4, !dbg !86619
  store ptr null, ptr %0, align 8, !dbg !86619
  br label %bb.i, !dbg !86596

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !86620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86621, !noalias !86597
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !dbg !86622, !noalias !86598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86623, !noalias !86597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86624
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86624
  %i.r = load i64, ptr %i.b, align 8, !dbg !86624, !range !3569, !noundef !3509
  %i.s = trunc nuw i64 %i.r to i1, !dbg !86625
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !86626
  %i.u = load i64, ptr %i.t, align 8, !dbg !86626, !range !3572, !noundef !3509 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !86626 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g, !dbg !86625, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64, !dbg !86627
  %i.w = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86627
  store ptr %i.w, ptr %0, align 8, !dbg !86628
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86628
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86628
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86628
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86628
  br label %bb.i, !dbg !86629

bb.f:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !dbg !86630
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.x) #57, !dbg !86631
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.v, align 8, !dbg !86632, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.z = icmp samesign ugt i64 %i.u, 1, !dbg !86633
  call void @llvm.assume(i1 %i.z), !dbg !86634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86635
  store i64 %i.u, ptr %i.e, align 8, !dbg !86636
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !86636
  store ptr %i.y, ptr %i.aa, align 8, !dbg !86636
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !86636
  store i32 %i.k, ptr %i.y, align 4, !dbg !86637
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4, !dbg !86638
  store i32 %i.o, ptr %i.ac, align 4, !dbg !86639
  store i64 2, ptr %i.ab, align 8, !dbg !86640, !alias.scope !86608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !86641
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter6FilterINtNtB1h_6copied6CopiedINtNtNtB1l_5slice4iter4ItermEENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_000EE11spec_extendB39_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.j, !dbg !86642

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !86643
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !dbg !86644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !86646
  br label %bb.i, !dbg !86647

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !86647
  ret void, !dbg !86648

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.e) #54
          to label %bb.l unwind label %bb.k, !dbg !86646

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86649
  unreachable, !dbg !86649

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86649
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB17_3ops5range5RangemEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !86650 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = icmp ult i32 %1, %2, !dbg !86701
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !86702

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %1, 1, !dbg !86703           ; 2 uses
  %i.f = icmp ult i32 %i.e, %2, !dbg !86704
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !86705

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86706
  store i32 0, ptr %i.g, align 8, !dbg !86706
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86706
  store i32 1, ptr %i.h, align 4, !dbg !86706
  store ptr null, ptr %0, align 8, !dbg !86706
  br label %bb.i, !dbg !86689

bb.d:                                             ; preds = %bb.b
  %i.i = add nuw i32 %1, 2, !dbg !86707           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86708
  %narrow.i36 = sub nuw i32 %2, %i.i, !dbg !86709
  %.sink1.i = zext i32 %narrow.i36 to i64, !dbg !86709
  %i.j = add nuw nsw i64 %.sink1.i, 2, !dbg !86710 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86711
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86711
  %i.k = load i64, ptr %i.a, align 8, !dbg !86711, !range !3569, !noundef !3509
  %i.l = trunc nuw i64 %i.k to i1, !dbg !86712
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !86713
  %i.n = load i64, ptr %i.m, align 8, !dbg !86713, !range !3572, !noundef !3509 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !86713 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !86712, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %1 to i64, !dbg !86714
  %i.p = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86714
  store ptr %i.p, ptr %0, align 8, !dbg !86715
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86715
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86715
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86715
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86715
  br label %bb.i, !dbg !86716

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !dbg !86717
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #57, !dbg !86718
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !dbg !86719, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.s = icmp samesign ule i64 %i.j, %i.n, !dbg !86720
  tail call void @llvm.assume(i1 %i.s), !dbg !86721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86722
  store i64 %i.n, ptr %i.c, align 8, !dbg !86723
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86723
  store ptr %i.r, ptr %i.t, align 8, !dbg !86723
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !86723
  store i32 %1, ptr %i.r, align 4, !dbg !86724
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !86725
  store i32 %i.e, ptr %i.v, align 4, !dbg !86726
  store i64 2, ptr %i.u, align 8, !dbg !86727, !alias.scope !86699
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtCscgRAwXFJnXP_4core3ops5range5RangemEE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.i, i32 noundef %2)
          to label %bb.h unwind label %bb.j, !dbg !86728

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !86729
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86732
  br label %bb.i, !dbg !86733

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  ret void, !dbg !86734

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #54
          to label %bb.l unwind label %bb.k, !dbg !86732

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !86735
  unreachable, !dbg !86735

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !86735
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterAmj2_EINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB8_7flatten7FlatMapINtNtB8_3map3MapIBS_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1s_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4e_12ChunkedArrayNtNtB4g_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1s_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIBS_mEENtNtB6l_8iterator10BitmapIterENCNvMNtB4e_8iteratorB59_4iter0EINtNtBc_6option6OptionmEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB90_3any5checkTRB1h_B8A_ENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBal_10WindowExprNtBan_12PhysicalExpr23evaluate_on_groups_impls1_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBap_(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86736 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b, !dbg !86773

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRAmj2_INtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1O_10WindowExprNtB1Q_12PhysicalExpr23evaluate_on_groups_impls1_0E0B1S_.exit, %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !dbg !86774, !alias.scope !86770, !noalias !86771, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !dbg !86775, !alias.scope !86770, !noalias !86771, !nonnull !3509, !noundef !3509
  %i.e = icmp eq ptr %i.c, %i.d, !dbg !86776
  br i1 %i.e, label %bb.e, label %bb.c, !dbg !86777

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86778
  store ptr %i.f, ptr %i.a, align 8, !dbg !86779, !alias.scope !86770, !noalias !86771
  %i.g = tail call fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) #58, !dbg !86780, !noalias !86771 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0, !dbg !86781
  switch i32 %i.h, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRAmj2_INtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1O_10WindowExprNtB1Q_12PhysicalExpr23evaluate_on_groups_impls1_0E0B1S_.exit [
    i32 2, label %bb.e
    i32 0, label %bb.d
  ], !dbg !86782, !prof !4246

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #52, !dbg !86783, !noalias !86772
  unreachable, !dbg !86783

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRAmj2_INtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1O_10WindowExprNtB1Q_12PhysicalExpr23evaluate_on_groups_impls1_0E0B1S_.exit: ; preds = %bb.c
  %i.i = extractvalue { i32, i32 } %i.g, 1, !dbg !86781
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !86784
  %i.k = load i32, ptr %i.j, align 4, !dbg !86784, !noalias !86772, !noundef !3509
  %.not = icmp eq i32 %i.k, %i.i, !dbg !86784
  br i1 %.not, label %bb.b, label %bb.e, !dbg !86785

bb.e:                                             ; preds = %bb.c, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRAmj2_INtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1O_10WindowExprNtB1Q_12PhysicalExpr23evaluate_on_groups_impls1_0E0B1S_.exit, %bb.b
  %.not10 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRAmj2_INtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1O_10WindowExprNtB1Q_12PhysicalExpr23evaluate_on_groups_impls1_0E0B1S_.exit ]
  ret i1 %.not10, !dbg !86786
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB8_7flatten7FlatMapINtNtB8_3map3MapIBS_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2c_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4Y_12ChunkedArrayNtNtB50_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB2c_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIBS_mEENtNtB75_8iterator10BitmapIterENCNvMNtB4Y_8iteratorB5T_4iter0EINtNtBc_6option6OptionmEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9K_3any5checkTRB1h_B9k_ENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBb5_10WindowExprNtBb7_12PhysicalExpr23evaluate_on_groups_impls0_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEBb9_(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86787 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b, !dbg !86826

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEINtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2y_10WindowExprNtB2A_12PhysicalExpr23evaluate_on_groups_impls0_0E0B2C_.exit, %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !dbg !86827, !alias.scope !86823, !noalias !86824, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !dbg !86828, !alias.scope !86823, !noalias !86824, !nonnull !3509, !noundef !3509
  %i.e = icmp eq ptr %i.c, %i.d, !dbg !86829
  br i1 %i.e, label %bb.e, label %bb.c, !dbg !86830

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !86831
  store ptr %i.f, ptr %i.a, align 8, !dbg !86832, !alias.scope !86823, !noalias !86824
  %i.g = tail call fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) #58, !dbg !86833, !noalias !86824 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0, !dbg !86834
  switch i32 %i.h, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEINtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2y_10WindowExprNtB2A_12PhysicalExpr23evaluate_on_groups_impls0_0E0B2C_.exit [
    i32 2, label %bb.e
    i32 0, label %bb.d
  ], !dbg !86835, !prof !4246

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #52, !dbg !86836, !noalias !86825
  unreachable, !dbg !86836

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEINtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2y_10WindowExprNtB2A_12PhysicalExpr23evaluate_on_groups_impls0_0E0B2C_.exit: ; preds = %bb.c
  %i.i = extractvalue { i32, i32 } %i.g, 1, !dbg !86834
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86837
  %i.k = load i32, ptr %i.j, align 8, !dbg !86837, !noalias !86825, !noundef !3509
  %.not = icmp eq i32 %i.k, %i.i, !dbg !86838
  br i1 %.not, label %bb.b, label %bb.e, !dbg !86839

bb.e:                                             ; preds = %bb.c, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEINtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2y_10WindowExprNtB2A_12PhysicalExpr23evaluate_on_groups_impls0_0E0B2C_.exit, %bb.b
  %.not10 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEINtNtBe_6option6OptionmEENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2y_10WindowExprNtB2A_12PhysicalExpr23evaluate_on_groups_impls0_0E0B2C_.exit ]
  ret i1 %.not10, !dbg !86840
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5apply19apply_in_place_implNtNtBc_9datatypes11Float64TypeNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops3log3expNtB1p_10Int128TypeE0E00CskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86841 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 16               ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !86944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !86944
  store i8 13, ptr %i.l, align 16, !dbg !86945, !alias.scope !86927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !86946
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, i16 noundef 1)
          to label %bb.c unwind label %bb.b, !dbg !86947

bb.b:                                             ; preds = %bb.s, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !86948

.body:                                            ; preds = %bb.v, %bb.z, %bb.aa, %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.n, %bb.b ], [ %i.be, %bb.aa ], [ %eh.lpad-body9.i, %bb.z ], [ %i.bb, %bb.v ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.l) #54
          to label %bb.ad unwind label %bb.ac, !dbg !86948

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !86929), !dbg !86949
  call void @llvm.experimental.noalias.scope.decl(metadata !86930), !dbg !86949
  %i.o = load i64, ptr %i.k, align 8, !dbg !86950, !range !3636, !alias.scope !86930, !noalias !86929, !noundef !3509
  %.not.i = icmp eq i64 %i.o, 18, !dbg !86950
  br i1 %.not.i, label %bb.h, label %bb.d, !dbg !86951, !prof !3850

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !86952, !noalias !86931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !86952, !noalias !86929
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #57
          to label %bb.f unwind label %bb.e, !dbg !86953, !noalias !86931

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #54
          to label %.body unwind label %bb.g, !dbg !86954, !noalias !86931

bb.f:                                             ; preds = %bb.d
  unreachable
end_hunk_0
