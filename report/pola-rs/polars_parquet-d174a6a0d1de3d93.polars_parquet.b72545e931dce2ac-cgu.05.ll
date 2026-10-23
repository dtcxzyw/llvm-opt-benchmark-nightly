Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.05?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive6nested13array_to_pageyxEBa_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !13475
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !13475, !range !1108, !alias.scope !13426, !noundef !1032
  %i.az = icmp eq i8 %i.ay, -40, !dbg !13476
  br i1 %i.az, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit, !dbg !13476, !prof !1109

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !13477
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit unwind label %bb.ai, !dbg !13478

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.h, i64 136, i1 false), !dbg !13479
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !13480
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !13480, !range !1108, !alias.scope !13427, !noundef !1032
  %i.bd = icmp eq i8 %i.bc, -40, !dbg !13481
  br i1 %i.bd, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit31, !dbg !13481, !prof !1109

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !13482
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit31 unwind label %bb.i, !dbg !13483

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit31: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13484
  br label %bb.o, !dbg !13454

bb.v:                                             ; preds = %bb.o
  %.not24 = icmp eq i64 %5, 0, !dbg !13485
  br i1 %.not24, label %bb.ac, label %bb.w, !dbg !13485

bb.w:                                             ; preds = %bb.v
  %i.bf = load i64, ptr %4, align 8, !dbg !13486, !range !1382, !noundef !1032
  switch i64 %i.bf, label %default.unreachable [
    i64 0, label %bb.x
    i64 1, label %bb.y
    i64 2, label %bb.z
    i64 3, label %bb.aa
    i64 4, label %bb.ab
  ], !dbg !13487

default.unreachable:                              ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !13488
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !13488, !noundef !1032
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !13489

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !13490
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !13490, !noundef !1032
  %i.bk = add i64 %i.bj, -1, !dbg !13491
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !13492

bb.z:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24, !dbg !13493
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !13493, !noundef !1032
  %i.bn = add i64 %i.bm, -1, !dbg !13494
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !13495

bb.aa:                                            ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48, !dbg !13496
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !13496, !noundef !1032
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !13497

bb.ab:                                            ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !13498
  %i.br = load i64, ptr %i.bq, align 8, !dbg !13498, !noundef !1032
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !13499

bb.ac:                                            ; preds = %bb.v
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #44
          to label %bb.ad unwind label %bb.ah, !dbg !13485

bb.ad:                                            ; preds = %bb.ac
  unreachable

_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.sroa.0.0.i32 = phi i64 [ %i.bh, %bb.x ], [ %i.bk, %bb.y ], [ %i.bn, %bb.z ], [ %i.bp, %bb.aa ], [ %i.br, %bb.ab ], !dbg !13500
  %i.bs = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247) #42
          to label %.noexc33 unwind label %bb.ah, !dbg !13501

.noexc33:                                         ; preds = %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit
  br i1 %i.bs, label %bb.af, label %bb.ae, !dbg !13502

bb.ae:                                            ; preds = %.noexc33
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !13503 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !13503, !noundef !1032
  %.not.i.i = icmp eq ptr %i.bu, null, !dbg !13503
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ag, !dbg !13504

bb.af:                                            ; preds = %.noexc33
  %i.bv = getelementptr i8, ptr %1, i64 48, !dbg !13505
  %.val.i = load i64, ptr %i.bv, align 8, !dbg !13505, !noundef !1032
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !13506

bb.ag:                                            ; preds = %bb.ae
  %i.bw = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.bt)
          to label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.ah, !dbg !13507

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.af, %bb.ae, %bb.ag
  %.sroa.0.1.i = phi i64 [ %.val.i, %bb.af ], [ 0, %bb.ae ], [ %i.bw, %bb.ag ], !dbg !13508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.i, i64 136, i1 false), !dbg !13509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !dbg !13510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !dbg !13511
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16build_plain_page(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.an, i64 noundef %.sroa.0.0.i32, i64 noundef %.sroa.0.1.i, i64 noundef %i.y, i64 noundef %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.b, i8 noundef 0), !dbg !13511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13436
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !13515

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit: ; preds = %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit
  ret void, !dbg !13516

bb.ah:                                            ; preds = %bb.ag, %bb.o, %bb.ac, %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.e) #39
          to label %bb.aj unwind label %bb.ai, !dbg !13512

bb.ai:                                            ; preds = %bb.am, %bb.s, %bb.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit, %bb.aj, %bb.ah
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !13517
  unreachable, !dbg !13517

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(136) %i.i) #39
          to label %.thread unwind label %bb.ai, !dbg !13513

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit: ; preds = %bb.r, %bb.s, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.k) #39
          to label %.thread unwind label %bb.ai, !dbg !13514

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13436
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 71, !dbg !13518
  %i.bz = load i8, ptr %i.by, align 1, !dbg !13518, !range !1108, !alias.scope !13428, !noundef !1032
  %i.ca = icmp eq i8 %i.bz, -40, !dbg !13519
  br i1 %i.ca, label %bb.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !13519, !prof !1109

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !13520
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb), !dbg !13521
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !13521

bb.al:                                            ; preds = %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.m) #39
          to label %.thread unwind label %bb.ai, !dbg !13436

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit36: ; preds = %.thread, %bb.am
  resume { ptr, i32 } %.pn2740, !dbg !13517

.thread:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit, %bb.aj, %bb.al, %bb.b, %bb.e
  %.pn2740 = phi { ptr, i32 } [ %i.v, %bb.b ], [ %lpad.thr_comm, %bb.aj ], [ %i.ac, %bb.e ], [ %i.cc, %bb.al ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsxEEBP_.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 71, !dbg !13522
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !13522, !range !1108, !alias.scope !13429, !noundef !1032
  %i.cf = icmp eq i8 %i.ce, -40, !dbg !13523
  br i1 %i.cf, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit36, !dbg !13523, !prof !1109

bb.am:                                            ; preds = %.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !13524
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit36 unwind label %bb.ai, !dbg !13525
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB1w_7binview5basic12encode_deltas_0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13526 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !13882

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !13883
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !13884
  %3 = udiv i16 256, %.rhs.trunc, !dbg !13884
  %.zext = zext nneg i16 %3 to i64, !dbg !13884   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !13886
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13887 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !13888, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !13889
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !13890
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13891 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !13891, !alias.scope !13784, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !13892
  call void @llvm.assume(i1 %i.n), !dbg !13893
  %.not.i = icmp eq i64 %i.j, 0, !dbg !13894
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !13894

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13895
  %i.p = load ptr, ptr %i.o, align 8, !dbg !13895, !alias.scope !13784, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !13896
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !13897
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !13898, !alias.scope !13784
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !13899

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !13898
  %i.s = add i64 %i.r, %i.j, !dbg !13898
  store i64 %i.s, ptr %i.l, align 8, !dbg !13898, !alias.scope !13784
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13900 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !13901, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !13902
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !13903
  %i.v = load i64, ptr %i.l, align 8, !dbg !13904, !alias.scope !13797, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !13905
  call void @llvm.assume(i1 %i.w), !dbg !13906
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !13907
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !13907

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13908
  %i.y = load ptr, ptr %i.x, align 8, !dbg !13908, !alias.scope !13797, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !13909
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !13910
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !13911, !alias.scope !13797
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !13912

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !13911
  %i.ab = add i64 %i.aa, %i.t, !dbg !13911
  store i64 %i.ab, ptr %i.l, align 8, !dbg !13911, !alias.scope !13797
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13913 ; 2 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !13913, !noundef !1032 ; 3 uses
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !13914 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !13915, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !13916
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !13917
  %i.af = load i64, ptr %i.l, align 8, !dbg !13918, !alias.scope !13810, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !13919
  call void @llvm.assume(i1 %i.ag), !dbg !13920
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !13921
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !13921

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13922
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !13922, !alias.scope !13810, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !13923
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !13924
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !13925, !alias.scope !13810
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !13926

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !13925
  %i.al = add i64 %i.ak, %i.ad, !dbg !13925
  store i64 %i.al, ptr %i.l, align 8, !dbg !13925, !alias.scope !13810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13927
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !13928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !13930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13931
  store i32 0, ptr %i.f, align 4, !dbg !13932
  call void @llvm.experimental.noalias.scope.decl(metadata !13811), !dbg !13933
  call void @llvm.experimental.noalias.scope.decl(metadata !13812), !dbg !13934
  %i.am = load ptr, ptr %0, align 8, !dbg !13935, !alias.scope !13813, !nonnull !1032, !noundef !1032 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13936
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !13936, !alias.scope !13813, !nonnull !1032, !noundef !1032 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao, !dbg !13937
  br i1 %i.ap, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB7_7binview5basic12encode_deltas_0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, label %bb.l, !dbg !13938

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !13939 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !dbg !13940, !alias.scope !13813
  %.val.i.i = load i32, ptr %i.am, align 4, !dbg !13941, !noalias !13814, !noundef !1032
  %i.ar = zext i32 %.val.i.i to i64, !dbg !13942
  %i.as = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ar, 1, !dbg !13943
  %i.at = add i64 %.val62, -1, !dbg !13944        ; 2 uses
  store i64 %i.at, ptr %i.ac, align 8, !dbg !13944, !alias.scope !13815
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB7_7binview5basic12encode_deltas_0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !13945

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB7_7binview5basic12encode_deltas_0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %.promoted135 = phi ptr [ %i.aq, %bb.l ], [ %i.am, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ]
  %.val63 = phi i64 [ %i.at, %bb.l ], [ %.val62, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.au = phi { i64, i64 } [ %i.as, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0, !dbg !13946
  %i.aw = trunc nuw i64 %i.av to i1, !dbg !13947
  %i.ax = extractvalue { i64, i64 } %i.au, 1, !dbg !13947
  %.sroa.0.0 = select i1 %i.aw, i64 %i.ax, i64 0, !dbg !13947 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13948
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !13948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !13949
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !13950
  %i.az = load i64, ptr %i.ay, align 8, !dbg !13950, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13951
  %i.ba = icmp ult i64 %i.az, 11
  br i1 %i.ba, label %bb.n, label %bb.m, !dbg !13952, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB7_7binview5basic12encode_deltas_0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.az, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !13953
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB7_7binview5basic12encode_deltas_0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.az), !dbg !13954
  %i.bb = load i64, ptr %i.l, align 8, !dbg !13955, !alias.scope !13829, !noundef !1032 ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, -1, !dbg !13956
  call void @llvm.assume(i1 %i.bc), !dbg !13957
  %.not.i72 = icmp eq i64 %i.az, 0, !dbg !13958
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !13958

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13959
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !13959, !alias.scope !13829, !nonnull !1032, !noundef !1032
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb, !dbg !13960
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.e, i64 %i.az, i1 false), !dbg !13961
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !13962, !alias.scope !13829
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !13963

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bg = phi i64 [ %.pre.i73, %bb.o ], [ %i.bb, %bb.n ], !dbg !13962
  %i.bh = add i64 %i.bg, %i.az, !dbg !13962
  store i64 %i.bh, ptr %i.l, align 8, !dbg !13962, !alias.scope !13829
  %i.bi = icmp eq i64 %.val63, 0, !dbg !13964
  br i1 %i.bi, label %._crit_edge134, label %.preheader.lr.ph, !dbg !13964

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.preheader, !dbg !13964

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.val64161 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64163, %._crit_edge ] ; 3 uses
  %i.bp = phi ptr [ %.promoted135, %.preheader.lr.ph ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.sroa.0.1133 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi125.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !13965

._crit_edge134:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13970
  ret void, !dbg !13971

.preheader.split:                                 ; preds = %.preheader, %bb.ac
  %.val64159 = phi i64 [ %.val64163, %bb.ac ], [ %.val64161, %.preheader ]
  %i.bq = phi i64 [ %i.bz, %bb.ac ], [ %.val64161, %.preheader ] ; 2 uses
  %i.br = phi ptr [ %i.ca, %bb.ac ], [ %i.bp, %.preheader ]
  %i.bs = phi ptr [ %i.cb, %bb.ac ], [ %i.bp, %.preheader ] ; 4 uses
  %.sroa.0.2124 = phi i64 [ %i.fe, %bb.ac ], [ %.sroa.0.1133, %.preheader ] ; 2 uses
  %.sroa.012.0123 = phi i64 [ %.sroa.0.0.i86, %bb.ac ], [ -9223372036854775808, %.preheader ]
  %.sroa.087.0122 = phi i64 [ %.sroa.0.0.i85, %bb.ac ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0121 = phi i64 [ %i.fi, %bb.ac ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0120 = phi i64 [ %i.bt, %bb.ac ], [ 256, %.preheader ]
  %i.bt = add nsw i64 %.sroa.7.0120, -1, !dbg !13972 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.ao, !dbg !13973
  br i1 %i.bu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14ExactSizedIterxINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtBV_7binview5basic12encode_deltas_0EENtB5_8Iterator4nextBZ_.exit.i, label %bb.p, !dbg !13965

bb.p:                                             ; preds = %.preheader.split
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16, !dbg !13974 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.bs, align 4, !dbg !13975, !noalias !13832, !noundef !1032
  %i.bw = zext i32 %.val.i.i.i.i to i64, !dbg !13976
  %i.bx = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.bw, 1, !dbg !13977
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2l_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB1w_7binview5basic12encode_deltas_0EEEBa_:bb.a
  %i.db = add i64 %i.da, %.val.i75, !dbg !13994
  %i.dc = icmp ugt i64 %i.db, -4, !dbg !13994
  br i1 %i.dc, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !13994

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !13994
  %invariant.op256 = add i64 2, %.val.i75, !dbg !13994
  %invariant.op258 = add i64 3, %.val.i75, !dbg !13994
  br label %scalar.ph, !dbg !13994

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.dn, %scalar.ph ] ; 5 uses
  %i.dd = add i64 %.sroa.0.012.i, %.val.i75, !dbg !13996 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.dd, !dbg !13997
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.dd, !dbg !13998
  %.val10.i = load i64, ptr %i.de, align 8, !dbg !13999, !noalias !13844, !noundef !1032
  %i.dg = sub i64 %.val10.i, %.us-phi.ph, !dbg !14000
  store i64 %i.dg, ptr %i.df, align 8, !dbg !14001, !alias.scope !13845, !noalias !13844
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !13997
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !13998
  %.val10.i.1 = load i64, ptr %i.dh, align 8, !dbg !13999, !noalias !13844, !noundef !1032
  %i.dj = sub i64 %.val10.i.1, %.us-phi.ph, !dbg !14000
  store i64 %i.dj, ptr %i.di, align 8, !dbg !14001, !alias.scope !13845, !noalias !13844
  %.reass257 = add i64 %.sroa.0.012.i, %invariant.op256 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass257, !dbg !13997
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass257, !dbg !13998
  %.val10.i.2 = load i64, ptr %i.dk, align 8, !dbg !13999, !noalias !13844, !noundef !1032
  %i.dm = sub i64 %.val10.i.2, %.us-phi.ph, !dbg !14000
  store i64 %i.dm, ptr %i.dl, align 8, !dbg !14001, !alias.scope !13845, !noalias !13844
  %i.dn = add nuw i64 %.sroa.0.012.i, 4, !dbg !13995 ; 2 uses
  %.reass259 = add i64 %.sroa.0.012.i, %invariant.op258 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass259, !dbg !13997
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass259, !dbg !13998
  %.val10.i.3 = load i64, ptr %i.do, align 8, !dbg !13999, !noalias !13844, !noundef !1032
  %i.dq = sub i64 %.val10.i.3, %.us-phi.ph, !dbg !14000
  store i64 %i.dq, ptr %i.dp, align 8, !dbg !14001, !alias.scope !13845, !noalias !13844
  %exitcond.not.i.3 = icmp eq i64 %i.dn, %i.ck, !dbg !13993
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !13994, !llvm.loop !13713

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14003
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi.ph), !dbg !14003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !14004
  %i.dr = load i64, ptr %i.bn, align 8, !dbg !14005, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14006
  %i.ds = icmp ult i64 %i.dr, 11
  br i1 %i.ds, label %bb.s, label %bb.r, !dbg !14007, !prof !1072

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !14008
  unreachable

bb.s:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapIBY_NtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvNtNtB4H_7binview5basic12encode_deltas_0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dr), !dbg !14009
  %i.dt = load i64, ptr %i.l, align 8, !dbg !14010, !alias.scope !13858, !noundef !1032 ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1, !dbg !14011
  call void @llvm.assume(i1 %i.du), !dbg !14012
  %.not.i78 = icmp eq i64 %i.dr, 0, !dbg !14013
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.t, !dbg !14013

bb.t:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %i.bo, align 8, !dbg !14014, !alias.scope !13858, !nonnull !1032, !noundef !1032
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt, !dbg !14015
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull readonly align 1 %i.b, i64 %i.dr, i1 false), !dbg !14016
  %.pre.i79 = load i64, ptr %i.l, align 8, !dbg !14017, !alias.scope !13858
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !14018

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.s, %bb.t
  %i.dx = phi i64 [ %.pre.i79, %bb.t ], [ %i.dt, %bb.s ], !dbg !14017
  %i.dy = add i64 %i.dx, %i.dr, !dbg !14017
  store i64 %i.dy, ptr %i.l, align 8, !dbg !14017, !alias.scope !13858
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14019
  %i.dz = load i64, ptr %i.l, align 8, !dbg !14020, !alias.scope !13862, !noundef !1032 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, -1, !dbg !14021
  call void @llvm.assume(i1 %i.ea), !dbg !14022
  %i.eb = load ptr, ptr %i.bo, align 8, !dbg !14023, !alias.scope !13862, !nonnull !1032, !noundef !1032
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz, !dbg !14024
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14025
  %.pre.i82 = load i64, ptr %i.l, align 8, !dbg !14026, !alias.scope !13862
  %i.ed = add i64 %.pre.i82, %2, !dbg !14026      ; 2 uses
  store i64 %i.ed, ptr %i.l, align 8, !dbg !14026, !alias.scope !13862
  br label %.lr.ph, !dbg !14027

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ee = phi i64 [ %i.fc, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ed, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0130 = phi i64 [ %i.ef, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0129 = phi i64 [ %i.ei, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.ef = add nuw nsw i64 %.sroa.027.0130, 1, !dbg !14028 ; 3 uses
  %i.eg = icmp eq i64 %.sroa.016.0129, 0, !dbg !14027
  br i1 %i.eg, label %._crit_edge, label %bb.u, !dbg !14027

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14029
  %i.eh = icmp eq i64 %.val64163, 0, !dbg !13964
  br i1 %i.eh, label %._crit_edge134, label %.preheader, !dbg !13964

bb.u:                                             ; preds = %.lr.ph
  %i.ei = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0129, i64 %.zext), !dbg !14030
  %i.ej = mul nuw nsw i64 %.sroa.027.0130, %.zext, !dbg !14031 ; 2 uses
  %i.ek = mul nuw nsw i64 %i.ef, %.zext, !dbg !14032 ; 2 uses
  %i.el = icmp samesign ult i64 %i.ek, 257, !dbg !14033
  br i1 %i.el, label %bb.w, label %bb.v, !dbg !14033, !prof !1184

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ej, i64 noundef %i.ek, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14034
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0130, !dbg !14035
  %i.en = load i8, ptr %i.em, align 1, !dbg !14035, !noundef !1032 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ej, !dbg !14036
  %i.ep = zext i8 %i.en to i64, !dbg !14037       ; 2 uses
  %.not.i84 = icmp eq i8 %i.en, 0, !dbg !14038
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.x, !dbg !14038

bb.x:                                             ; preds = %bb.w
  %i.eq = icmp sgt i64 %i.ee, -1, !dbg !14039
  call void @llvm.assume(i1 %i.eq), !dbg !14040
  %i.er = mul nuw nsw i64 %i.ep, %.zext, !dbg !14041
  %i.es = add nuw nsw i64 %i.er, 7, !dbg !14042
  %i.et = lshr i64 %i.es, 3, !dbg !14042
  %i.eu = add nuw i64 %i.ee, %i.et, !dbg !14043   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.eu, i8 noundef 0), !dbg !14044, !noalias !13876
  %i.ev = load i64, ptr %i.l, align 8, !dbg !14045, !alias.scope !13877, !noundef !1032 ; 4 uses
  %i.ew = icmp ugt i64 %i.ee, %i.ev, !dbg !14046
  br i1 %i.ew, label %bb.z, label %bb.y, !dbg !14046, !prof !1109

bb.y:                                             ; preds = %bb.x
  %i.ex = load ptr, ptr %i.bo, align 8, !dbg !14047, !alias.scope !13877, !nonnull !1032, !noundef !1032
  %i.ey = sub nuw i64 %i.ev, %i.ee, !dbg !14048
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ee, !dbg !14049
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.eo, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ep, ptr noalias noundef nonnull %i.ez, i64 noundef %i.ey), !dbg !14050
  %i.fa = load i64, ptr %i.l, align 8, !dbg !14051, !alias.scope !13877, !noundef !1032 ; 2 uses
  %i.fb = icmp ugt i64 %i.eu, %i.fa, !dbg !14052
  br i1 %i.fb, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.aa, !dbg !14052

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ee, i64 noundef %i.ev, i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14053, !noalias !13876
  unreachable, !dbg !14053

bb.aa:                                            ; preds = %bb.y
  store i64 %i.eu, ptr %i.l, align 8, !dbg !14054, !alias.scope !13877
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14055

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.w, %bb.y, %bb.aa
  %i.fc = phi i64 [ %i.ee, %bb.w ], [ %i.fa, %bb.y ], [ %i.eu, %bb.aa ]
  %exitcond.not = icmp eq i64 %i.ef, %2, !dbg !14056
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !13878

bb.ab:                                            ; preds = %bb.q
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !13984
  unreachable

bb.ac:                                            ; preds = %bb.q
  %i.fd = icmp eq i64 %i.cg, 0, !dbg !13983       ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.cc, 1, !dbg !13980 ; 3 uses
  %i.ff = sub i64 %i.fe, %.sroa.0.2124, !dbg !14057 ; 5 uses
  %i.fg = call i64 @llvm.smax.i64(i64 %i.ff, i64 %.sroa.012.0123), !dbg !14058
  %.sroa.0.0.i86 = select i1 %i.fd, i64 %i.ff, i64 %i.fg, !dbg !13983 ; 2 uses
  %i.fh = call i64 @llvm.smin.i64(i64 %i.ff, i64 %.sroa.087.0122), !dbg !14059
  %.sroa.0.0.i85 = select i1 %i.fd, i64 %i.ff, i64 %i.fh, !dbg !13983 ; 3 uses
  %i.fi = add nuw nsw i64 %.sroa.4.0121, 1, !dbg !14060
  %i.fj = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !14061
  %i.fk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fj, i1 false), !dbg !14062
  %i.fl = trunc nuw nsw i64 %i.fk to i8, !dbg !14062
  %i.fm = sub nuw nsw i8 64, %i.fl, !dbg !14063
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cf, !dbg !13984
  store i8 %i.fm, ptr %i.fn, align 1, !dbg !13984
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0121, !dbg !14064
  store i64 %i.ff, ptr %i.fo, align 8, !dbg !14064
  %i.fp = icmp eq i64 %i.bt, 0, !dbg !14065
  br i1 %i.fp, label %.split.us, label %.preheader.split, !dbg !14065
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14066 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !14484

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !14485
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !14486
  %3 = udiv i16 256, %.rhs.trunc, !dbg !14486
  %.zext = zext nneg i16 %3 to i64, !dbg !14486   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !14488
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14489 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !14490, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !14491
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !14492
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14493 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !14493, !alias.scope !14375, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !14494
  call void @llvm.assume(i1 %i.n), !dbg !14495
  %.not.i = icmp eq i64 %i.j, 0, !dbg !14496
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !14496

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14497
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14497, !alias.scope !14375, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !14498
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !14499
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !14500, !alias.scope !14375
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !14501

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !14500
  %i.s = add i64 %i.r, %i.j, !dbg !14500
  store i64 %i.s, ptr %i.l, align 8, !dbg !14500, !alias.scope !14375
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14502 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !14503, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !14504
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !14505
  %i.v = load i64, ptr %i.l, align 8, !dbg !14506, !alias.scope !14388, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !14507
  call void @llvm.assume(i1 %i.w), !dbg !14508
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !14509
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !14509

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14510
  %i.y = load ptr, ptr %i.x, align 8, !dbg !14510, !alias.scope !14388, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !14511
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !14512
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !14513, !alias.scope !14388
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !14514

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !14513
  %i.ab = add i64 %i.aa, %i.t, !dbg !14513
  store i64 %i.ab, ptr %i.l, align 8, !dbg !14513, !alias.scope !14388
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14515 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !14515, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !14516 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !14517, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !14518
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !14519
  %i.af = load i64, ptr %i.l, align 8, !dbg !14520, !alias.scope !14401, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !14521
  call void @llvm.assume(i1 %i.ag), !dbg !14522
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !14523
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !14523

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14524
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !14524, !alias.scope !14401, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !14525
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !14526
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !14527, !alias.scope !14401
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !14528

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !14527
  %i.al = add i64 %i.ak, %i.ad, !dbg !14527
  store i64 %i.al, ptr %i.l, align 8, !dbg !14527, !alias.scope !14401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !14530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14531
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !14532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14533
  store i32 0, ptr %i.f, align 4, !dbg !14534
  call void @llvm.experimental.noalias.scope.decl(metadata !14402), !dbg !14535
  call void @llvm.experimental.noalias.scope.decl(metadata !14403), !dbg !14536
  call void @llvm.experimental.noalias.scope.decl(metadata !14404), !dbg !14537
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14538 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !14539 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !14539
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !14540
  br i1 %i.ap, label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !14540

_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !14539 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !14541, !alias.scope !14405, !nonnull !1032, !align !1099, !noundef !1032 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !14542
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !dbg !14542, !noalias !14405, !noundef !1032 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16, !dbg !14542
  %.val3.i.i.i = load i64, ptr %i.at, align 8, !dbg !14542, !noalias !14405, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %.val3.i.i.i, !dbg !14543
  call void @llvm.assume(i1 %i.au), !dbg !14544
  %.not.i.i = icmp eq ptr %.val.i.i.i, null, !dbg !14545
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, label %bb.l, !dbg !14546

bb.l:                                             ; preds = %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.aq, !dbg !14547
  %.val.i.i = load i32, ptr %i.av, align 4, !dbg !14548, !noalias !14407, !noundef !1032
  %i.aw = zext i32 %.val.i.i to i64, !dbg !14549
  %i.ax = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.aw, 1, !dbg !14550
  %i.ay = load i64, ptr %i.ac, align 8, !dbg !14551, !alias.scope !14408, !noundef !1032
  %i.az = add i64 %i.ay, -1, !dbg !14551
  store i64 %i.az, ptr %i.ac, align 8, !dbg !14551, !alias.scope !14408
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !14552

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.l
  %i.ba = phi { i64, i64 } [ %i.ax, %bb.l ], [ { i64 0, i64 undef }, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB7_7binview4view4ViewEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0, !dbg !14553
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !14554
  %i.bd = extractvalue { i64, i64 } %i.ba, 1, !dbg !14554
  %.sroa.0.0 = select i1 %i.bc, i64 %i.bd, i64 0, !dbg !14554 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14555
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !14555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !14556
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !14557
  %i.bf = load i64, ptr %i.be, align 8, !dbg !14557, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14558
  %i.bg = icmp ult i64 %i.bf, 11
  br i1 %i.bg, label %bb.n, label %bb.m, !dbg !14559, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bf, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !14560
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB2d_7binview4view4ViewEENCNvNtNtB7_7binview5basic12encode_delta0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf), !dbg !14561
  %i.bh = load i64, ptr %i.l, align 8, !dbg !14562, !alias.scope !14422, !noundef !1032 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !14563
  call void @llvm.assume(i1 %i.bi), !dbg !14564
  %.not.i72 = icmp eq i64 %i.bf, 0, !dbg !14565
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !14565

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14566
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !14566, !alias.scope !14422, !nonnull !1032, !noundef !1032
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !14567
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.e, i64 %i.bf, i1 false), !dbg !14568
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !14569, !alias.scope !14422
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !14570

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bm = phi i64 [ %.pre.i73, %bb.o ], [ %i.bh, %bb.n ], !dbg !14569
  %i.bn = add i64 %i.bm, %i.bf, !dbg !14569
  store i64 %i.bn, ptr %i.l, align 8, !dbg !14569, !alias.scope !14422
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !14571, !noundef !1032 ; 2 uses
  %i.bo = icmp eq i64 %.val63, 0, !dbg !14572
  br i1 %i.bo, label %._crit_edge140, label %.preheader.lr.ph, !dbg !14572

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted141 = load i64, ptr %i.bp, align 8, !alias.scope !14423, !noalias !14424
  %.promoted = load i64, ptr %i.bq, align 8, !alias.scope !14423, !noalias !14424
  %i.cc = load i64, ptr %i.br, align 8            ; 2 uses
  %i.cd = load i64, ptr %i.bs, align 8
  %i.ce = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.cf = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.cg = load i64, ptr %i.bu, align 8            ; 4 uses
  %i.ch = load ptr, ptr %0, align 8, !nonnull !1032, !align !1099 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %.promoted311 = load i64, ptr %i.bv, align 8
  br label %.preheader, !dbg !14572

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted306314 = phi i64 [ %.promoted311, %.preheader.lr.ph ], [ %.promoted306312, %._crit_edge ] ; 2 uses
  %.val64184 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB35_7binview4view4ViewEENCNvNtNtB1w_7binview5basic12encode_delta0EEEBa_:bb.a
  %i.hf = add i64 %i.he, %.val.i75, !dbg !14690
  %i.hg = icmp ugt i64 %i.hf, -4, !dbg !14690
  br i1 %i.hg, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !14690

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !14690
  %invariant.op307 = add i64 2, %.val.i75, !dbg !14690
  %invariant.op309 = add i64 3, %.val.i75, !dbg !14690
  br label %scalar.ph, !dbg !14690

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hr, %scalar.ph ] ; 5 uses
  %i.hh = add i64 %.sroa.0.012.i, %.val.i75, !dbg !14692 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %i.hh, !dbg !14693
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hh, !dbg !14694
  %.val10.i = load i64, ptr %i.hi, align 8, !dbg !14695, !noalias !14446, !noundef !1032
  %i.hk = sub i64 %.val10.i, %.sroa.089.0.lcssa, !dbg !14696
  store i64 %i.hk, ptr %i.hj, align 8, !dbg !14697, !alias.scope !14447, !noalias !14446
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass, !dbg !14693
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !14694
  %.val10.i.1 = load i64, ptr %i.hl, align 8, !dbg !14695, !noalias !14446, !noundef !1032
  %i.hn = sub i64 %.val10.i.1, %.sroa.089.0.lcssa, !dbg !14696
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !14697, !alias.scope !14447, !noalias !14446
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass308, !dbg !14693
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !14694
  %.val10.i.2 = load i64, ptr %i.ho, align 8, !dbg !14695, !noalias !14446, !noundef !1032
  %i.hq = sub i64 %.val10.i.2, %.sroa.089.0.lcssa, !dbg !14696
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !14697, !alias.scope !14447, !noalias !14446
  %i.hr = add nuw i64 %.sroa.0.012.i, 4, !dbg !14691 ; 2 uses
  %.reass310 = add i64 %.sroa.0.012.i, %invariant.op309 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i77, i64 %.reass310, !dbg !14693
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass310, !dbg !14694
  %.val10.i.3 = load i64, ptr %i.hs, align 8, !dbg !14695, !noalias !14446, !noundef !1032
  %i.hu = sub i64 %.val10.i.3, %.sroa.089.0.lcssa, !dbg !14696
  store i64 %i.hu, ptr %i.ht, align 8, !dbg !14697, !alias.scope !14447, !noalias !14446
  %exitcond.not.i.3 = icmp eq i64 %i.hr, %i.go, !dbg !14689
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !14690, !llvm.loop !14304

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14699
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.089.0.lcssa), !dbg !14699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !14700
  %i.hv = load i64, ptr %i.ca, align 8, !dbg !14701, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14702
  %i.hw = icmp ult i64 %i.hv, 11
  br i1 %i.hw, label %bb.af, label %bb.ae, !dbg !14703, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hv, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !14704
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtB5J_7binview4view4ViewEENCNvNtNtB4H_7binview5basic12encode_delta0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hv), !dbg !14705
  %i.hx = load i64, ptr %i.l, align 8, !dbg !14706, !alias.scope !14460, !noundef !1032 ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, -1, !dbg !14707
  call void @llvm.assume(i1 %i.hy), !dbg !14708
  %.not.i78 = icmp eq i64 %i.hv, 0, !dbg !14709
  br i1 %.not.i78, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, label %bb.ag, !dbg !14709

bb.ag:                                            ; preds = %bb.af
  %i.hz = load ptr, ptr %i.cb, align 8, !dbg !14710, !alias.scope !14460, !nonnull !1032, !noundef !1032
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx, !dbg !14711
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull readonly align 1 %i.b, i64 %i.hv, i1 false), !dbg !14712
  %.pre.i79 = load i64, ptr %i.l, align 8, !dbg !14713, !alias.scope !14460
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, !dbg !14714

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80: ; preds = %bb.af, %bb.ag
  %i.ib = phi i64 [ %.pre.i79, %bb.ag ], [ %i.hx, %bb.af ], !dbg !14713
  %i.ic = add i64 %i.ib, %i.hv, !dbg !14713
  store i64 %i.ic, ptr %i.l, align 8, !dbg !14713, !alias.scope !14460
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !14715
  %i.id = load i64, ptr %i.l, align 8, !dbg !14716, !alias.scope !14464, !noundef !1032 ; 2 uses
  %i.ie = icmp sgt i64 %i.id, -1, !dbg !14717
  call void @llvm.assume(i1 %i.ie), !dbg !14718
  %i.if = load ptr, ptr %i.cb, align 8, !dbg !14719, !alias.scope !14464, !nonnull !1032, !noundef !1032
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.id, !dbg !14720
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !14721
  %.pre.i82 = load i64, ptr %i.l, align 8, !dbg !14722, !alias.scope !14464
  %i.ih = add i64 %.pre.i82, %2, !dbg !14722      ; 2 uses
  store i64 %i.ih, ptr %i.l, align 8, !dbg !14722, !alias.scope !14464
  br label %.lr.ph, !dbg !14723

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ii = phi i64 [ %i.jg, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ih, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 7 uses
  %.sroa.027.0136 = phi i64 [ %i.ij, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 3 uses
  %.sroa.016.0135 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit80 ] ; 2 uses
  %i.ij = add nuw nsw i64 %.sroa.027.0136, 1, !dbg !14724 ; 3 uses
  %i.ik = icmp eq i64 %.sroa.016.0135, 0, !dbg !14723
  br i1 %i.ik, label %._crit_edge, label %bb.ah, !dbg !14723

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14725
  %i.il = icmp eq i64 %.val64, 0, !dbg !14572
  br i1 %i.il, label %._crit_edge140, label %.preheader, !dbg !14572

bb.ah:                                            ; preds = %.lr.ph
  %i.im = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0135, i64 %.zext), !dbg !14726
  %i.in = mul nuw nsw i64 %.sroa.027.0136, %.zext, !dbg !14727 ; 2 uses
  %i.io = mul nuw nsw i64 %i.ij, %.zext, !dbg !14728 ; 2 uses
  %i.ip = icmp samesign ult i64 %i.io, 257, !dbg !14729
  br i1 %i.ip, label %bb.aj, label %bb.ai, !dbg !14729, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.in, i64 noundef %i.io, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !14730
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0136, !dbg !14731
  %i.ir = load i8, ptr %i.iq, align 1, !dbg !14731, !noundef !1032 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.in, !dbg !14732
  %i.it = zext i8 %i.ir to i64, !dbg !14733       ; 2 uses
  %.not.i84 = icmp eq i8 %i.ir, 0, !dbg !14734
  br i1 %.not.i84, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !14734

bb.ak:                                            ; preds = %bb.aj
  %i.iu = icmp sgt i64 %i.ii, -1, !dbg !14735
  call void @llvm.assume(i1 %i.iu), !dbg !14736
  %i.iv = mul nuw nsw i64 %i.it, %.zext, !dbg !14737
  %i.iw = add nuw nsw i64 %i.iv, 7, !dbg !14738
  %i.ix = lshr i64 %i.iw, 3, !dbg !14738
  %i.iy = add nuw i64 %i.ii, %i.ix, !dbg !14739   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iy, i8 noundef 0), !dbg !14740, !noalias !14478
  %i.iz = load i64, ptr %i.l, align 8, !dbg !14741, !alias.scope !14479, !noundef !1032 ; 4 uses
  %i.ja = icmp ugt i64 %i.ii, %i.iz, !dbg !14742
  br i1 %i.ja, label %bb.am, label %bb.al, !dbg !14742, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jb = load ptr, ptr %i.cb, align 8, !dbg !14743, !alias.scope !14479, !nonnull !1032, !noundef !1032
  %i.jc = sub nuw i64 %i.iz, %i.ii, !dbg !14744
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ii, !dbg !14745
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.it, ptr noalias noundef nonnull %i.jd, i64 noundef %i.jc), !dbg !14746
  %i.je = load i64, ptr %i.l, align 8, !dbg !14747, !alias.scope !14479, !noundef !1032 ; 2 uses
  %i.jf = icmp ugt i64 %i.iy, %i.je, !dbg !14748
  br i1 %i.jf, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !14748

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.iz, i64 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !14749, !noalias !14478
  unreachable, !dbg !14749

bb.an:                                            ; preds = %bb.al
  store i64 %i.iy, ptr %i.l, align 8, !dbg !14750, !alias.scope !14479
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !14751

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jg = phi i64 [ %i.ii, %bb.aj ], [ %i.je, %bb.al ], [ %i.iy, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ij, %2, !dbg !14752
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !14480

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !14678
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jh = icmp eq i64 %i.gk, 0, !dbg !14677       ; 2 uses
  %i.ji = extractvalue { i64, i64 } %i.gg, 1, !dbg !14674 ; 3 uses
  %i.jj = sub i64 %i.ji, %.sroa.0.2131, !dbg !14753 ; 5 uses
  %i.jk = call i64 @llvm.smax.i64(i64 %i.jj, i64 %.sroa.012.0130), !dbg !14754
  %.sroa.0.0.i86 = select i1 %i.jh, i64 %i.jj, i64 %i.jk, !dbg !14677 ; 2 uses
  %i.jl = call i64 @llvm.smin.i64(i64 %i.jj, i64 %.sroa.089.0129), !dbg !14755
  %.sroa.0.0.i85 = select i1 %i.jh, i64 %i.jj, i64 %i.jl, !dbg !14677 ; 3 uses
  %i.jm = add nuw nsw i64 %.sroa.4.0128, 1, !dbg !14756
  %i.jn = sub i64 %.sroa.0.0.i86, %.sroa.0.0.i85, !dbg !14757
  %i.jo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jn, i1 false), !dbg !14758
  %i.jp = trunc nuw nsw i64 %i.jo to i8, !dbg !14758
  %i.jq = sub nuw nsw i8 64, %i.jp, !dbg !14759
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gj, !dbg !14678
  store i8 %i.jq, ptr %i.jr, align 1, !dbg !14678
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0128, !dbg !14760
  store i64 %i.jj, ptr %i.js, align 8, !dbg !14760
  %i.jt = icmp eq i64 %i.co, 0, !dbg !14573
  br i1 %i.jt, label %bb.ad, label %bb.p, !dbg !14573
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14761 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !15180

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !15181
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !15182
  %3 = udiv i16 256, %.rhs.trunc, !dbg !15182
  %.zext = zext nneg i16 %3 to i64, !dbg !15182   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !15184
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15185 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !15186, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !15187
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !15188
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15189 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !15189, !alias.scope !15072, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !15190
  call void @llvm.assume(i1 %i.n), !dbg !15191
  %.not.i = icmp eq i64 %i.j, 0, !dbg !15192
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !15192

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15193
  %i.p = load ptr, ptr %i.o, align 8, !dbg !15193, !alias.scope !15072, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !15194
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !15195
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !15196, !alias.scope !15072
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15197

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !15196
  %i.s = add i64 %i.r, %i.j, !dbg !15196
  store i64 %i.s, ptr %i.l, align 8, !dbg !15196, !alias.scope !15072
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15198 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !15199, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !15200
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !15201
  %i.v = load i64, ptr %i.l, align 8, !dbg !15202, !alias.scope !15085, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !15203
  call void @llvm.assume(i1 %i.w), !dbg !15204
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !15205
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !15205

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15206
  %i.y = load ptr, ptr %i.x, align 8, !dbg !15206, !alias.scope !15085, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !15207
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !15208
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !15209, !alias.scope !15085
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !15210

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !15209
  %i.ab = add i64 %i.aa, %i.t, !dbg !15209
  store i64 %i.ab, ptr %i.l, align 8, !dbg !15209, !alias.scope !15085
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15211 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !15211, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15212 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !15213, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !15214
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !15215
  %i.af = load i64, ptr %i.l, align 8, !dbg !15216, !alias.scope !15098, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !15217
  call void @llvm.assume(i1 %i.ag), !dbg !15218
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !15219
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !15219

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15220
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !15220, !alias.scope !15098, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !15221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !15222
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !15223, !alias.scope !15098
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !15224

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !15223
  %i.al = add i64 %i.ak, %i.ad, !dbg !15223
  store i64 %i.al, ptr %i.l, align 8, !dbg !15223, !alias.scope !15098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !15226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !15228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15229
  store i32 0, ptr %i.f, align 4, !dbg !15230
  call void @llvm.experimental.noalias.scope.decl(metadata !15099), !dbg !15231
  call void @llvm.experimental.noalias.scope.decl(metadata !15100), !dbg !15232
  call void @llvm.experimental.noalias.scope.decl(metadata !15101), !dbg !15233
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15234 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !15235 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !15235
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !15236
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB7_9primitive5basic12encode_deltaalE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !15236

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !15235 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !15237, !alias.scope !15102, !nonnull !1032, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15237
  %i.at = load i64, ptr %i.as, align 8, !dbg !15237, !alias.scope !15102, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !15238
  call void @llvm.assume(i1 %i.au), !dbg !15239
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq, !dbg !15240
  %i.aw = load i8, ptr %i.av, align 1, !dbg !15241, !alias.scope !15103, !noalias !15102, !noundef !1032
  %i.ax = sext i8 %i.aw to i64, !dbg !15242
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !15243
  %i.az = load i64, ptr %i.ac, align 8, !dbg !15244, !alias.scope !15104, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !15244
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !15244, !alias.scope !15104
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB7_9primitive5basic12encode_deltaalE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !15245

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB7_9primitive5basic12encode_deltaalE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !15246
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !15247
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !15247
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !15247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15248
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !15248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !15249
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15250
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !15250, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15251
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !15252, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB7_9primitive5basic12encode_deltaalE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !15253
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB7_9primitive5basic12encode_deltaalE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !15254
  %i.bi = load i64, ptr %i.l, align 8, !dbg !15255, !alias.scope !15118, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !15256
  call void @llvm.assume(i1 %i.bj), !dbg !15257
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !15258
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !15258

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15259
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !15259, !alias.scope !15118, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !15260
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !15261
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !15262, !alias.scope !15118
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !15263

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !15262
  %i.bo = add i64 %i.bn, %i.bg, !dbg !15262
  store i64 %i.bo, ptr %i.l, align 8, !dbg !15262, !alias.scope !15118
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !15264, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !15265
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !15265

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !15119, !noalias !15120
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !15119, !noalias !15120
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !15265

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !15266

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB1w_9primitive5basic12encode_deltaalE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !15380
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !15380
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !15380

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !15380
  %invariant.op305 = add i64 2, %.val.i75, !dbg !15380
  %invariant.op307 = add i64 3, %.val.i75, !dbg !15380
  br label %scalar.ph, !dbg !15380

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !15382 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !15383
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !15384
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !15385, !noalias !15142, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !15386
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !15387, !alias.scope !15143, !noalias !15142
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !15383
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !15384
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !15385, !noalias !15142, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !15386
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !15387, !alias.scope !15143, !noalias !15142
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !15383
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !15384
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !15385, !noalias !15142, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !15386
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !15387, !alias.scope !15143, !noalias !15142
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !15381 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !15383
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !15384
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !15385, !noalias !15142, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !15386
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !15387, !alias.scope !15143, !noalias !15142
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !15379
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !15380, !llvm.loop !15001

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15389
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !15389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !15390
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !15391, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15392
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !15393, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !15394
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENCINvNtNtB4H_9primitive5basic12encode_deltaalE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !15395
  %i.hz = load i64, ptr %i.l, align 8, !dbg !15396, !alias.scope !15156, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !15397
  call void @llvm.assume(i1 %i.ia), !dbg !15398
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !15399
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !15399

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !15400, !alias.scope !15156, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !15401
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !15402
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !15403, !alias.scope !15156
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !15404

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !15403
  %i.ie = add i64 %i.id, %i.hx, !dbg !15403
  store i64 %i.ie, ptr %i.l, align 8, !dbg !15403, !alias.scope !15156
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !15405
  %i.if = load i64, ptr %i.l, align 8, !dbg !15406, !alias.scope !15160, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !15407
  call void @llvm.assume(i1 %i.ig), !dbg !15408
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !15409, !alias.scope !15160, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !15410
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !15411
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !15412, !alias.scope !15160
  %i.ij = add i64 %.pre.i81, %2, !dbg !15412      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !15412, !alias.scope !15160
  br label %.lr.ph, !dbg !15413

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !15414 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !15413
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !15413

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15415
  %i.in = icmp eq i64 %.val64, 0, !dbg !15265
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !15265

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !15416
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !15417 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !15418 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !15419
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !15419, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !15420
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !15421
  %i.it = load i8, ptr %i.is, align 1, !dbg !15421, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !15422
  %i.iv = zext i8 %i.it to i64, !dbg !15423       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !15424
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !15424

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !15425
  call void @llvm.assume(i1 %i.iw), !dbg !15426
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !15427
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !15428
  %i.iz = lshr i64 %i.iy, 3, !dbg !15428
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !15429   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !15430, !noalias !15174
  %i.jb = load i64, ptr %i.l, align 8, !dbg !15431, !alias.scope !15175, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !15432
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !15432, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !15433, !alias.scope !15175, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !15434
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !15435
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !15436
  %i.jg = load i64, ptr %i.l, align 8, !dbg !15437, !alias.scope !15175, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !15438
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !15438

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !15439, !noalias !15174
  unreachable, !dbg !15439

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !15440, !alias.scope !15175
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !15441

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !15442
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !15176

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !15368
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !15367       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !15364 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !15443 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !15444
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !15367 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !15445
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !15367 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !15446
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !15447
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !15448
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !15448
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !15449
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !15368
  store i8 %i.js, ptr %i.jt, align 1, !dbg !15368
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !15450
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !15450
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !15266
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !15266
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15451 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !15870

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !15871
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !15872
  %3 = udiv i16 256, %.rhs.trunc, !dbg !15872
  %.zext = zext nneg i16 %3 to i64, !dbg !15872   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !15874
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15875 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !15876, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !15877
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !15878
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15879 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !15879, !alias.scope !15762, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !15880
  call void @llvm.assume(i1 %i.n), !dbg !15881
  %.not.i = icmp eq i64 %i.j, 0, !dbg !15882
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !15882

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15883
  %i.p = load ptr, ptr %i.o, align 8, !dbg !15883, !alias.scope !15762, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !15884
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !15885
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !15886, !alias.scope !15762
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15887

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !15886
  %i.s = add i64 %i.r, %i.j, !dbg !15886
  store i64 %i.s, ptr %i.l, align 8, !dbg !15886, !alias.scope !15762
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15888 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !15889, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !15890
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !15891
  %i.v = load i64, ptr %i.l, align 8, !dbg !15892, !alias.scope !15775, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !15893
  call void @llvm.assume(i1 %i.w), !dbg !15894
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !15895
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !15895

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15896
  %i.y = load ptr, ptr %i.x, align 8, !dbg !15896, !alias.scope !15775, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !15897
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !15898
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !15899, !alias.scope !15775
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !15900

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !15899
  %i.ab = add i64 %i.aa, %i.t, !dbg !15899
  store i64 %i.ab, ptr %i.l, align 8, !dbg !15899, !alias.scope !15775
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15901 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !15901, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !15902 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !15903, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !15904
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !15905
  %i.af = load i64, ptr %i.l, align 8, !dbg !15906, !alias.scope !15788, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !15907
  call void @llvm.assume(i1 %i.ag), !dbg !15908
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !15909
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !15909

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15910
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !15910, !alias.scope !15788, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !15911
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !15912
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !15913, !alias.scope !15788
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !15914

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !15913
  %i.al = add i64 %i.ak, %i.ad, !dbg !15913
  store i64 %i.al, ptr %i.l, align 8, !dbg !15913, !alias.scope !15788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15915
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !15916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15917
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !15918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15919
  store i32 0, ptr %i.f, align 4, !dbg !15920
  call void @llvm.experimental.noalias.scope.decl(metadata !15789), !dbg !15921
  call void @llvm.experimental.noalias.scope.decl(metadata !15790), !dbg !15922
  call void @llvm.experimental.noalias.scope.decl(metadata !15791), !dbg !15923
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15924 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !15925 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !15925
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !15926
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB7_9primitive5basic12encode_deltahlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !15926

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !15925 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !15927, !alias.scope !15792, !nonnull !1032, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15927
  %i.at = load i64, ptr %i.as, align 8, !dbg !15927, !alias.scope !15792, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !15928
  call void @llvm.assume(i1 %i.au), !dbg !15929
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq, !dbg !15930
  %i.aw = load i8, ptr %i.av, align 1, !dbg !15931, !alias.scope !15793, !noalias !15792, !noundef !1032
  %i.ax = zext i8 %i.aw to i64, !dbg !15932
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !15933
  %i.az = load i64, ptr %i.ac, align 8, !dbg !15934, !alias.scope !15794, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !15934
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !15934, !alias.scope !15794
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB7_9primitive5basic12encode_deltahlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !15935

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB7_9primitive5basic12encode_deltahlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !15936
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !15937
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !15937
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !15937 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15938
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !15938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !15939
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15940
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !15940, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15941
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !15942, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB7_9primitive5basic12encode_deltahlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !15943
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB7_9primitive5basic12encode_deltahlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !15944
  %i.bi = load i64, ptr %i.l, align 8, !dbg !15945, !alias.scope !15808, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !15946
  call void @llvm.assume(i1 %i.bj), !dbg !15947
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !15948
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !15948

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15949
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !15949, !alias.scope !15808, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !15950
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !15951
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !15952, !alias.scope !15808
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !15953

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !15952
  %i.bo = add i64 %i.bn, %i.bg, !dbg !15952
  store i64 %i.bo, ptr %i.l, align 8, !dbg !15952, !alias.scope !15808
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !15954, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !15955
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !15955

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !15809, !noalias !15810
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !15809, !noalias !15810
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !15955

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !15956

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB1w_9primitive5basic12encode_deltahlE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !16070
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !16070
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16070

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16070
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16070
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16070
  br label %scalar.ph, !dbg !16070

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16072 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !16073
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !16074
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !16075, !noalias !15832, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16076
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !16077, !alias.scope !15833, !noalias !15832
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16073
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16074
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !16075, !noalias !15832, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16076
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !16077, !alias.scope !15833, !noalias !15832
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16073
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16074
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !16075, !noalias !15832, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16076
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !16077, !alias.scope !15833, !noalias !15832
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !16071 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16073
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16074
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !16075, !noalias !15832, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16076
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !16077, !alias.scope !15833, !noalias !15832
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !16069
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16070, !llvm.loop !15691

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16079
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16080
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !16081, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16082
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !16083, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16084
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENCINvNtNtB4H_9primitive5basic12encode_deltahlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !16085
  %i.hz = load i64, ptr %i.l, align 8, !dbg !16086, !alias.scope !15846, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !16087
  call void @llvm.assume(i1 %i.ia), !dbg !16088
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !16089
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16089

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !16090, !alias.scope !15846, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !16091
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !16092
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !16093, !alias.scope !15846
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16094

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !16093
  %i.ie = add i64 %i.id, %i.hx, !dbg !16093
  store i64 %i.ie, ptr %i.l, align 8, !dbg !16093, !alias.scope !15846
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16095
  %i.if = load i64, ptr %i.l, align 8, !dbg !16096, !alias.scope !15850, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !16097
  call void @llvm.assume(i1 %i.ig), !dbg !16098
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !16099, !alias.scope !15850, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !16100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16101
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !16102, !alias.scope !15850
  %i.ij = add i64 %.pre.i81, %2, !dbg !16102      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !16102, !alias.scope !15850
  br label %.lr.ph, !dbg !16103

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !16104 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !16103
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !16103

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16105
  %i.in = icmp eq i64 %.val64, 0, !dbg !15955
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !15955

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16106
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16107 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !16108 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !16109
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !16109, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16110
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16111
  %i.it = load i8, ptr %i.is, align 1, !dbg !16111, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !16112
  %i.iv = zext i8 %i.it to i64, !dbg !16113       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !16114
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16114

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !16115
  call void @llvm.assume(i1 %i.iw), !dbg !16116
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !16117
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !16118
  %i.iz = lshr i64 %i.iy, 3, !dbg !16118
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !16119   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !16120, !noalias !15864
  %i.jb = load i64, ptr %i.l, align 8, !dbg !16121, !alias.scope !15865, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !16122
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !16122, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !16123, !alias.scope !15865, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !16124
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !16125
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !16126
  %i.jg = load i64, ptr %i.l, align 8, !dbg !16127, !alias.scope !15865, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !16128
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16128

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16129, !noalias !15864
  unreachable, !dbg !16129

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !16130, !alias.scope !15865
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16131

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !16132
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !15866

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !16058
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !16057       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !16054 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !16133 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !16134
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !16057 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !16135
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !16057 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16136
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16137
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !16138
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !16138
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !16139
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !16058
  store i8 %i.js, ptr %i.jt, align 1, !dbg !16058
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16140
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !16140
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !15956
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !15956
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16141 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !16560

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !16561
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !16562
  %3 = udiv i16 256, %.rhs.trunc, !dbg !16562
  %.zext = zext nneg i16 %3 to i64, !dbg !16562   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16563
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !16564
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16565 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !16566, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !16567
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !16568
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16569 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !16569, !alias.scope !16452, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !16570
  call void @llvm.assume(i1 %i.n), !dbg !16571
  %.not.i = icmp eq i64 %i.j, 0, !dbg !16572
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !16572

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16573
  %i.p = load ptr, ptr %i.o, align 8, !dbg !16573, !alias.scope !16452, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !16574
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !16575
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !16576, !alias.scope !16452
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16577

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !16576
  %i.s = add i64 %i.r, %i.j, !dbg !16576
  store i64 %i.s, ptr %i.l, align 8, !dbg !16576, !alias.scope !16452
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16578 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !16579, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !16580
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !16581
  %i.v = load i64, ptr %i.l, align 8, !dbg !16582, !alias.scope !16465, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !16583
  call void @llvm.assume(i1 %i.w), !dbg !16584
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !16585
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !16585

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16586
  %i.y = load ptr, ptr %i.x, align 8, !dbg !16586, !alias.scope !16465, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !16587
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !16588
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !16589, !alias.scope !16465
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !16590

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !16589
  %i.ab = add i64 %i.aa, %i.t, !dbg !16589
  store i64 %i.ab, ptr %i.l, align 8, !dbg !16589, !alias.scope !16465
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !16591 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !16591, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !16592 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !16593, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !16594
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !16595
  %i.af = load i64, ptr %i.l, align 8, !dbg !16596, !alias.scope !16478, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !16597
  call void @llvm.assume(i1 %i.ag), !dbg !16598
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !16599
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !16599

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16600
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !16600, !alias.scope !16478, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !16601
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !16602
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !16603, !alias.scope !16478
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !16604

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !16603
  %i.al = add i64 %i.ak, %i.ad, !dbg !16603
  store i64 %i.al, ptr %i.l, align 8, !dbg !16603, !alias.scope !16478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16605
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !16606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !16608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16609
  store i32 0, ptr %i.f, align 4, !dbg !16610
  call void @llvm.experimental.noalias.scope.decl(metadata !16479), !dbg !16611
  call void @llvm.experimental.noalias.scope.decl(metadata !16480), !dbg !16612
  call void @llvm.experimental.noalias.scope.decl(metadata !16481), !dbg !16613
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16614 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !16615 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !16615
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !16616
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB7_9primitive5basic12encode_deltallE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !16616

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !16615 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !16617, !alias.scope !16482, !nonnull !1032, !align !1201, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16617
  %i.at = load i64, ptr %i.as, align 8, !dbg !16617, !alias.scope !16482, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !16618
  call void @llvm.assume(i1 %i.au), !dbg !16619
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq, !dbg !16620
  %i.aw = load i32, ptr %i.av, align 4, !dbg !16621, !alias.scope !16483, !noalias !16482, !noundef !1032
  %i.ax = sext i32 %i.aw to i64, !dbg !16622
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !16623
  %i.az = load i64, ptr %i.ac, align 8, !dbg !16624, !alias.scope !16484, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !16624
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !16624, !alias.scope !16484
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB7_9primitive5basic12encode_deltallE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !16625

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB7_9primitive5basic12encode_deltallE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !16626
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !16627
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !16627
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !16627 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16628
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !16628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !16629
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16630
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !16630, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16631
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !16632, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB7_9primitive5basic12encode_deltallE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !16633
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB7_9primitive5basic12encode_deltallE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !16634
  %i.bi = load i64, ptr %i.l, align 8, !dbg !16635, !alias.scope !16498, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !16636
  call void @llvm.assume(i1 %i.bj), !dbg !16637
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !16638
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !16638

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16639
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !16639, !alias.scope !16498, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !16640
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !16641
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !16642, !alias.scope !16498
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !16643

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !16642
  %i.bo = add i64 %i.bn, %i.bg, !dbg !16642
  store i64 %i.bo, ptr %i.l, align 8, !dbg !16642, !alias.scope !16498
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !16644, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !16645
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !16645

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !16499, !noalias !16500
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !16499, !noalias !16500
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032, !align !1201
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !16645

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !16646

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB1w_9primitive5basic12encode_deltallE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !16760
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !16760
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !16760

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !16760
  %invariant.op305 = add i64 2, %.val.i75, !dbg !16760
  %invariant.op307 = add i64 3, %.val.i75, !dbg !16760
  br label %scalar.ph, !dbg !16760

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !16762 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !16763
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !16764
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !16765, !noalias !16522, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !16766
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !16767, !alias.scope !16523, !noalias !16522
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !16763
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !16764
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !16765, !noalias !16522, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !16766
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !16767, !alias.scope !16523, !noalias !16522
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !16763
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !16764
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !16765, !noalias !16522, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !16766
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !16767, !alias.scope !16523, !noalias !16522
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !16761 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !16763
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !16764
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !16765, !noalias !16522, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !16766
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !16767, !alias.scope !16523, !noalias !16522
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !16759
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !16760, !llvm.loop !16381

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16769
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !16769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !16770
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !16771, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16772
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !16773, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !16774
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSlENCINvNtNtB4H_9primitive5basic12encode_deltallE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !16775
  %i.hz = load i64, ptr %i.l, align 8, !dbg !16776, !alias.scope !16536, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !16777
  call void @llvm.assume(i1 %i.ia), !dbg !16778
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !16779
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !16779

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !16780, !alias.scope !16536, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !16781
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !16782
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !16783, !alias.scope !16536
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !16784

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !16783
  %i.ie = add i64 %i.id, %i.hx, !dbg !16783
  store i64 %i.ie, ptr %i.l, align 8, !dbg !16783, !alias.scope !16536
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !16785
  %i.if = load i64, ptr %i.l, align 8, !dbg !16786, !alias.scope !16540, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !16787
  call void @llvm.assume(i1 %i.ig), !dbg !16788
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !16789, !alias.scope !16540, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !16790
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !16791
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !16792, !alias.scope !16540
  %i.ij = add i64 %.pre.i81, %2, !dbg !16792      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !16792, !alias.scope !16540
  br label %.lr.ph, !dbg !16793

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !16794 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !16793
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !16793

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16795
  %i.in = icmp eq i64 %.val64, 0, !dbg !16645
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !16645

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !16796
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !16797 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !16798 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !16799
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !16799, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !16800
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !16801
  %i.it = load i8, ptr %i.is, align 1, !dbg !16801, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !16802
  %i.iv = zext i8 %i.it to i64, !dbg !16803       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !16804
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !16804

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !16805
  call void @llvm.assume(i1 %i.iw), !dbg !16806
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !16807
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !16808
  %i.iz = lshr i64 %i.iy, 3, !dbg !16808
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !16809   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !16810, !noalias !16554
  %i.jb = load i64, ptr %i.l, align 8, !dbg !16811, !alias.scope !16555, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !16812
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !16812, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !16813, !alias.scope !16555, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !16814
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !16815
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !16816
  %i.jg = load i64, ptr %i.l, align 8, !dbg !16817, !alias.scope !16555, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !16818
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !16818

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !16819, !noalias !16554
  unreachable, !dbg !16819

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !16820, !alias.scope !16555
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !16821

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !16822
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !16556

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !16748
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !16747       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !16744 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !16823 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !16824
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !16747 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !16825
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !16747 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !16826
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !16827
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !16828
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !16828
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !16829
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !16748
  store i8 %i.js, ptr %i.jt, align 1, !dbg !16748
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !16830
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !16830
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !16646
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !16646
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16831 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !17250

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !17251
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !17252
  %3 = udiv i16 256, %.rhs.trunc, !dbg !17252
  %.zext = zext nneg i16 %3 to i64, !dbg !17252   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !17254
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17255 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !17256, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !17257
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !17258
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17259 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !17259, !alias.scope !17142, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !17260
  call void @llvm.assume(i1 %i.n), !dbg !17261
  %.not.i = icmp eq i64 %i.j, 0, !dbg !17262
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !17262

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17263
  %i.p = load ptr, ptr %i.o, align 8, !dbg !17263, !alias.scope !17142, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !17264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !17265
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !17266, !alias.scope !17142
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17267

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !17266
  %i.s = add i64 %i.r, %i.j, !dbg !17266
  store i64 %i.s, ptr %i.l, align 8, !dbg !17266, !alias.scope !17142
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17268 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !17269, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !17270
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !17271
  %i.v = load i64, ptr %i.l, align 8, !dbg !17272, !alias.scope !17155, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !17273
  call void @llvm.assume(i1 %i.w), !dbg !17274
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !17275
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !17275

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17276
  %i.y = load ptr, ptr %i.x, align 8, !dbg !17276, !alias.scope !17155, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !17277
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !17278
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !17279, !alias.scope !17155
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17280

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !17279
  %i.ab = add i64 %i.aa, %i.t, !dbg !17279
  store i64 %i.ab, ptr %i.l, align 8, !dbg !17279, !alias.scope !17155
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17281 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !17281, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17282 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !17283, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17284
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !17285
  %i.af = load i64, ptr %i.l, align 8, !dbg !17286, !alias.scope !17168, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !17287
  call void @llvm.assume(i1 %i.ag), !dbg !17288
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !17289
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !17289

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17290
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !17290, !alias.scope !17168, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !17291
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !17292
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !17293, !alias.scope !17168
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !17294

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !17293
  %i.al = add i64 %i.ak, %i.ad, !dbg !17293
  store i64 %i.al, ptr %i.l, align 8, !dbg !17293, !alias.scope !17168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17295
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !17296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !17298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17299
  store i32 0, ptr %i.f, align 4, !dbg !17300
  call void @llvm.experimental.noalias.scope.decl(metadata !17169), !dbg !17301
  call void @llvm.experimental.noalias.scope.decl(metadata !17170), !dbg !17302
  call void @llvm.experimental.noalias.scope.decl(metadata !17171), !dbg !17303
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17304 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !17305 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !17305
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !17306
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB7_9primitive5basic12encode_deltamlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !17306

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !17305 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !17307, !alias.scope !17172, !nonnull !1032, !align !1201, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17307
  %i.at = load i64, ptr %i.as, align 8, !dbg !17307, !alias.scope !17172, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !17308
  call void @llvm.assume(i1 %i.au), !dbg !17309
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq, !dbg !17310
  %i.aw = load i32, ptr %i.av, align 4, !dbg !17311, !alias.scope !17173, !noalias !17172, !noundef !1032
  %i.ax = sext i32 %i.aw to i64, !dbg !17312
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !17313
  %i.az = load i64, ptr %i.ac, align 8, !dbg !17314, !alias.scope !17174, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !17314
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !17314, !alias.scope !17174
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB7_9primitive5basic12encode_deltamlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !17315

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB7_9primitive5basic12encode_deltamlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !17316
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !17317
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !17317
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !17317 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17318
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !17318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !17319
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17320
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !17320, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17321
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !17322, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB7_9primitive5basic12encode_deltamlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !17323
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB7_9primitive5basic12encode_deltamlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !17324
  %i.bi = load i64, ptr %i.l, align 8, !dbg !17325, !alias.scope !17188, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !17326
  call void @llvm.assume(i1 %i.bj), !dbg !17327
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !17328
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !17328

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17329
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !17329, !alias.scope !17188, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !17330
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !17331
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !17332, !alias.scope !17188
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !17333

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !17332
  %i.bo = add i64 %i.bn, %i.bg, !dbg !17332
  store i64 %i.bo, ptr %i.l, align 8, !dbg !17332, !alias.scope !17188
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !17334, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !17335
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !17335

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !17189, !noalias !17190
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !17189, !noalias !17190
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032, !align !1201
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !17335

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !17336

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB1w_9primitive5basic12encode_deltamlE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !17450
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !17450
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !17450

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !17450
  %invariant.op305 = add i64 2, %.val.i75, !dbg !17450
  %invariant.op307 = add i64 3, %.val.i75, !dbg !17450
  br label %scalar.ph, !dbg !17450

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !17452 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !17453
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !17454
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !17455, !noalias !17212, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !17456
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !17457, !alias.scope !17213, !noalias !17212
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !17453
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !17454
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !17455, !noalias !17212, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !17456
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !17457, !alias.scope !17213, !noalias !17212
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !17453
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !17454
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !17455, !noalias !17212, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !17456
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !17457, !alias.scope !17213, !noalias !17212
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !17451 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !17453
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !17454
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !17455, !noalias !17212, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !17456
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !17457, !alias.scope !17213, !noalias !17212
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !17449
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !17450, !llvm.loop !17071

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17459
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !17459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !17460
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !17461, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17462
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !17463, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !17464
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSmENCINvNtNtB4H_9primitive5basic12encode_deltamlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !17465
  %i.hz = load i64, ptr %i.l, align 8, !dbg !17466, !alias.scope !17226, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !17467
  call void @llvm.assume(i1 %i.ia), !dbg !17468
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !17469
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !17469

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !17470, !alias.scope !17226, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !17471
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !17472
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !17473, !alias.scope !17226
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !17474

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !17473
  %i.ie = add i64 %i.id, %i.hx, !dbg !17473
  store i64 %i.ie, ptr %i.l, align 8, !dbg !17473, !alias.scope !17226
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !17475
  %i.if = load i64, ptr %i.l, align 8, !dbg !17476, !alias.scope !17230, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !17477
  call void @llvm.assume(i1 %i.ig), !dbg !17478
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !17479, !alias.scope !17230, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !17480
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !17481
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !17482, !alias.scope !17230
  %i.ij = add i64 %.pre.i81, %2, !dbg !17482      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !17482, !alias.scope !17230
  br label %.lr.ph, !dbg !17483

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !17484 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !17483
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !17483

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17485
  %i.in = icmp eq i64 %.val64, 0, !dbg !17335
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !17335

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !17486
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !17487 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !17488 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !17489
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !17489, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !17490
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !17491
  %i.it = load i8, ptr %i.is, align 1, !dbg !17491, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !17492
  %i.iv = zext i8 %i.it to i64, !dbg !17493       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !17494
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !17494

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !17495
  call void @llvm.assume(i1 %i.iw), !dbg !17496
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !17497
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !17498
  %i.iz = lshr i64 %i.iy, 3, !dbg !17498
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !17499   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !17500, !noalias !17244
  %i.jb = load i64, ptr %i.l, align 8, !dbg !17501, !alias.scope !17245, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !17502
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !17502, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !17503, !alias.scope !17245, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !17504
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !17505
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !17506
  %i.jg = load i64, ptr %i.l, align 8, !dbg !17507, !alias.scope !17245, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !17508
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !17508

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !17509, !noalias !17244
  unreachable, !dbg !17509

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !17510, !alias.scope !17245
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !17511

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !17512
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !17246

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !17438
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !17437       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !17434 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !17513 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !17514
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !17437 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !17515
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !17437 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !17516
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !17517
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !17518
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !17518
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !17519
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !17438
  store i8 %i.js, ptr %i.jt, align 1, !dbg !17438
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !17520
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !17520
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !17336
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !17336
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17521 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !17940

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !17941
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !17942
  %3 = udiv i16 256, %.rhs.trunc, !dbg !17942
  %.zext = zext nneg i16 %3 to i64, !dbg !17942   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17943
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !17944
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17945 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !17946, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !17947
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !17948
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17949 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !17949, !alias.scope !17832, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !17950
  call void @llvm.assume(i1 %i.n), !dbg !17951
  %.not.i = icmp eq i64 %i.j, 0, !dbg !17952
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !17952

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17953
  %i.p = load ptr, ptr %i.o, align 8, !dbg !17953, !alias.scope !17832, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !17954
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !17955
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !17956, !alias.scope !17832
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17957

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !17956
  %i.s = add i64 %i.r, %i.j, !dbg !17956
  store i64 %i.s, ptr %i.l, align 8, !dbg !17956, !alias.scope !17832
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17958 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !17959, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !17960
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !17961
  %i.v = load i64, ptr %i.l, align 8, !dbg !17962, !alias.scope !17845, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !17963
  call void @llvm.assume(i1 %i.w), !dbg !17964
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !17965
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !17965

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17966
  %i.y = load ptr, ptr %i.x, align 8, !dbg !17966, !alias.scope !17845, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !17967
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !17968
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !17969, !alias.scope !17845
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !17970

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !17969
  %i.ab = add i64 %i.aa, %i.t, !dbg !17969
  store i64 %i.ab, ptr %i.l, align 8, !dbg !17969, !alias.scope !17845
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17971 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !17971, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !17972 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !17973, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !17974
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !17975
  %i.af = load i64, ptr %i.l, align 8, !dbg !17976, !alias.scope !17858, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !17977
  call void @llvm.assume(i1 %i.ag), !dbg !17978
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !17979
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !17979

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17980
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !17980, !alias.scope !17858, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !17981
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !17982
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !17983, !alias.scope !17858
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !17984

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !17983
  %i.al = add i64 %i.ak, %i.ad, !dbg !17983
  store i64 %i.al, ptr %i.l, align 8, !dbg !17983, !alias.scope !17858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17985
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !17986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17987
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !17988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17989
  store i32 0, ptr %i.f, align 4, !dbg !17990
  call void @llvm.experimental.noalias.scope.decl(metadata !17859), !dbg !17991
  call void @llvm.experimental.noalias.scope.decl(metadata !17860), !dbg !17992
  call void @llvm.experimental.noalias.scope.decl(metadata !17861), !dbg !17993
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17994 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !17995 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !17995
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !17996
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB7_9primitive5basic12encode_deltaslE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !17996

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !17995 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !17997, !alias.scope !17862, !nonnull !1032, !align !1186, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17997
  %i.at = load i64, ptr %i.as, align 8, !dbg !17997, !alias.scope !17862, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !17998
  call void @llvm.assume(i1 %i.au), !dbg !17999
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.aq, !dbg !18000
  %i.aw = load i16, ptr %i.av, align 2, !dbg !18001, !alias.scope !17863, !noalias !17862, !noundef !1032
  %i.ax = sext i16 %i.aw to i64, !dbg !18002
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !18003
  %i.az = load i64, ptr %i.ac, align 8, !dbg !18004, !alias.scope !17864, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !18004
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !18004, !alias.scope !17864
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB7_9primitive5basic12encode_deltaslE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !18005

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB7_9primitive5basic12encode_deltaslE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !18006
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !18007
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !18007
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !18007 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18008
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !18008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !18009
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18010
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !18010, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18011
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !18012, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB7_9primitive5basic12encode_deltaslE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !18013
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB7_9primitive5basic12encode_deltaslE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !18014
  %i.bi = load i64, ptr %i.l, align 8, !dbg !18015, !alias.scope !17878, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !18016
  call void @llvm.assume(i1 %i.bj), !dbg !18017
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !18018
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !18018

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18019
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !18019, !alias.scope !17878, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !18020
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !18021
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !18022, !alias.scope !17878
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !18023

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !18022
  %i.bo = add i64 %i.bn, %i.bg, !dbg !18022
  store i64 %i.bo, ptr %i.l, align 8, !dbg !18022, !alias.scope !17878
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !18024, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !18025
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !18025

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !17879, !noalias !17880
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !17879, !noalias !17880
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032, !align !1186
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !18025

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !18026

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB1w_9primitive5basic12encode_deltaslE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !18140
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !18140
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18140

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18140
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18140
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18140
  br label %scalar.ph, !dbg !18140

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18142 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !18143
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !18144
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !18145, !noalias !17902, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18146
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !18147, !alias.scope !17903, !noalias !17902
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18143
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18144
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !18145, !noalias !17902, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18146
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !18147, !alias.scope !17903, !noalias !17902
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18143
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18144
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !18145, !noalias !17902, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18146
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !18147, !alias.scope !17903, !noalias !17902
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !18141 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18143
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18144
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !18145, !noalias !17902, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18146
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !18147, !alias.scope !17903, !noalias !17902
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !18139
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18140, !llvm.loop !17761

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18149
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18150
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !18151, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18152
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !18153, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18154
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENCINvNtNtB4H_9primitive5basic12encode_deltaslE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !18155
  %i.hz = load i64, ptr %i.l, align 8, !dbg !18156, !alias.scope !17916, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !18157
  call void @llvm.assume(i1 %i.ia), !dbg !18158
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !18159
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18159

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !18160, !alias.scope !17916, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !18161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !18162
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !18163, !alias.scope !17916
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18164

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !18163
  %i.ie = add i64 %i.id, %i.hx, !dbg !18163
  store i64 %i.ie, ptr %i.l, align 8, !dbg !18163, !alias.scope !17916
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18165
  %i.if = load i64, ptr %i.l, align 8, !dbg !18166, !alias.scope !17920, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !18167
  call void @llvm.assume(i1 %i.ig), !dbg !18168
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !18169, !alias.scope !17920, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !18170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18171
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !18172, !alias.scope !17920
  %i.ij = add i64 %.pre.i81, %2, !dbg !18172      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !18172, !alias.scope !17920
  br label %.lr.ph, !dbg !18173

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !18174 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !18173
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !18173

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18175
  %i.in = icmp eq i64 %.val64, 0, !dbg !18025
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !18025

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18176
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18177 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !18178 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !18179
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !18179, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18180
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18181
  %i.it = load i8, ptr %i.is, align 1, !dbg !18181, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !18182
  %i.iv = zext i8 %i.it to i64, !dbg !18183       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !18184
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18184

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !18185
  call void @llvm.assume(i1 %i.iw), !dbg !18186
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !18187
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !18188
  %i.iz = lshr i64 %i.iy, 3, !dbg !18188
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !18189   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !18190, !noalias !17934
  %i.jb = load i64, ptr %i.l, align 8, !dbg !18191, !alias.scope !17935, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !18192
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !18192, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !18193, !alias.scope !17935, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !18194
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !18195
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !18196
  %i.jg = load i64, ptr %i.l, align 8, !dbg !18197, !alias.scope !17935, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !18198
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18198

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18199, !noalias !17934
  unreachable, !dbg !18199

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !18200, !alias.scope !17935
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18201

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !18202
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !17936

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18128
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !18127       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !18124 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !18203 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !18204
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !18127 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !18205
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !18127 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18206
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18207
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !18208
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !18208
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !18209
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !18128
  store i8 %i.js, ptr %i.jt, align 1, !dbg !18128
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18210
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !18210
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !18026
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !18026
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18211 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !18630

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !18631
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !18632
  %3 = udiv i16 256, %.rhs.trunc, !dbg !18632
  %.zext = zext nneg i16 %3 to i64, !dbg !18632   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !18634
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18635 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !18636, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !18637
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !18638
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18639 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !18639, !alias.scope !18522, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !18640
  call void @llvm.assume(i1 %i.n), !dbg !18641
  %.not.i = icmp eq i64 %i.j, 0, !dbg !18642
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !18642

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18643
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18643, !alias.scope !18522, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !18644
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !18645
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !18646, !alias.scope !18522
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18647

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !18646
  %i.s = add i64 %i.r, %i.j, !dbg !18646
  store i64 %i.s, ptr %i.l, align 8, !dbg !18646, !alias.scope !18522
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18648 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !18649, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !18650
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !18651
  %i.v = load i64, ptr %i.l, align 8, !dbg !18652, !alias.scope !18535, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !18653
  call void @llvm.assume(i1 %i.w), !dbg !18654
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !18655
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !18655

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18656
  %i.y = load ptr, ptr %i.x, align 8, !dbg !18656, !alias.scope !18535, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !18657
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !18658
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !18659, !alias.scope !18535
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !18660

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !18659
  %i.ab = add i64 %i.aa, %i.t, !dbg !18659
  store i64 %i.ab, ptr %i.l, align 8, !dbg !18659, !alias.scope !18535
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18661 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !18661, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !18662 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !18663, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !18664
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !18665
  %i.af = load i64, ptr %i.l, align 8, !dbg !18666, !alias.scope !18548, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !18667
  call void @llvm.assume(i1 %i.ag), !dbg !18668
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !18669
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !18669

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18670
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !18670, !alias.scope !18548, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !18671
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !18672
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !18673, !alias.scope !18548
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !18674

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !18673
  %i.al = add i64 %i.ak, %i.ad, !dbg !18673
  store i64 %i.al, ptr %i.l, align 8, !dbg !18673, !alias.scope !18548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !18676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !18678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18679
  store i32 0, ptr %i.f, align 4, !dbg !18680
  call void @llvm.experimental.noalias.scope.decl(metadata !18549), !dbg !18681
  call void @llvm.experimental.noalias.scope.decl(metadata !18550), !dbg !18682
  call void @llvm.experimental.noalias.scope.decl(metadata !18551), !dbg !18683
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18684 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !18685 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !18685
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !18686
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB7_9primitive5basic12encode_deltatlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !18686

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !18685 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !18687, !alias.scope !18552, !nonnull !1032, !align !1186, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18687
  %i.at = load i64, ptr %i.as, align 8, !dbg !18687, !alias.scope !18552, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !18688
  call void @llvm.assume(i1 %i.au), !dbg !18689
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.aq, !dbg !18690
  %i.aw = load i16, ptr %i.av, align 2, !dbg !18691, !alias.scope !18553, !noalias !18552, !noundef !1032
  %i.ax = zext i16 %i.aw to i64, !dbg !18692
  %i.ay = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.ax, 1, !dbg !18693
  %i.az = load i64, ptr %i.ac, align 8, !dbg !18694, !alias.scope !18554, !noundef !1032
  %i.ba = add i64 %i.az, -1, !dbg !18694
  store i64 %i.ba, ptr %i.ac, align 8, !dbg !18694, !alias.scope !18554
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB7_9primitive5basic12encode_deltatlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !18695

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB7_9primitive5basic12encode_deltatlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.bb = phi { i64, i64 } [ %i.ay, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !18696
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !18697
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !18697
  %.sroa.0.0 = select i1 %i.bd, i64 %i.be, i64 0, !dbg !18697 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18698
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !18698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !18699
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18700
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !18700, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18701
  %i.bh = icmp ult i64 %i.bg, 11
  br i1 %i.bh, label %bb.n, label %bb.m, !dbg !18702, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB7_9primitive5basic12encode_deltatlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bg, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !18703
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB7_9primitive5basic12encode_deltatlE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg), !dbg !18704
  %i.bi = load i64, ptr %i.l, align 8, !dbg !18705, !alias.scope !18568, !noundef !1032 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !18706
  call void @llvm.assume(i1 %i.bj), !dbg !18707
  %.not.i72 = icmp eq i64 %i.bg, 0, !dbg !18708
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !18708

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18709
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !18709, !alias.scope !18568, !nonnull !1032, !noundef !1032
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi, !dbg !18710
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.e, i64 %i.bg, i1 false), !dbg !18711
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !18712, !alias.scope !18568
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !18713

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bn = phi i64 [ %.pre.i73, %bb.o ], [ %i.bi, %bb.n ], !dbg !18712
  %i.bo = add i64 %i.bn, %i.bg, !dbg !18712
  store i64 %i.bo, ptr %i.l, align 8, !dbg !18712, !alias.scope !18568
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !18714, !noundef !1032 ; 2 uses
  %i.bp = icmp eq i64 %.val63, 0, !dbg !18715
  br i1 %i.bp, label %._crit_edge138, label %.preheader.lr.ph, !dbg !18715

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bq, align 8, !alias.scope !18569, !noalias !18570
  %.promoted = load i64, ptr %i.br, align 8, !alias.scope !18569, !noalias !18570
  %i.ce = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8
  %i.cg = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.ch = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8            ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !nonnull !1032, !align !1186
  %i.ck = load i64, ptr %i.bx, align 8
  %.promoted309 = load i64, ptr %i.bw, align 8
  br label %.preheader, !dbg !18715

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !18716

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB1w_9primitive5basic12encode_deltatlE0EEEBa_:bb.a
  %i.hh = add i64 %i.hg, %.val.i75, !dbg !18830
  %i.hi = icmp ugt i64 %i.hh, -4, !dbg !18830
  br i1 %i.hi, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !18830

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !18830
  %invariant.op305 = add i64 2, %.val.i75, !dbg !18830
  %invariant.op307 = add i64 3, %.val.i75, !dbg !18830
  br label %scalar.ph, !dbg !18830

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 5 uses
  %i.hj = add i64 %.sroa.0.012.i, %.val.i75, !dbg !18832 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hj, !dbg !18833
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hj, !dbg !18834
  %.val10.i = load i64, ptr %i.hk, align 8, !dbg !18835, !noalias !18592, !noundef !1032
  %i.hm = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !18836
  store i64 %i.hm, ptr %i.hl, align 8, !dbg !18837, !alias.scope !18593, !noalias !18592
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !18833
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !18834
  %.val10.i.1 = load i64, ptr %i.hn, align 8, !dbg !18835, !noalias !18592, !noundef !1032
  %i.hp = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !18836
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !18837, !alias.scope !18593, !noalias !18592
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !18833
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !18834
  %.val10.i.2 = load i64, ptr %i.hq, align 8, !dbg !18835, !noalias !18592, !noundef !1032
  %i.hs = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !18836
  store i64 %i.hs, ptr %i.hr, align 8, !dbg !18837, !alias.scope !18593, !noalias !18592
  %i.ht = add nuw i64 %.sroa.0.012.i, 4, !dbg !18831 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !18833
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !18834
  %.val10.i.3 = load i64, ptr %i.hu, align 8, !dbg !18835, !noalias !18592, !noundef !1032
  %i.hw = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !18836
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !18837, !alias.scope !18593, !noalias !18592
  %exitcond.not.i.3 = icmp eq i64 %i.ht, %i.gq, !dbg !18829
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !18830, !llvm.loop !18451

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18839
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !18839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !18840
  %i.hx = load i64, ptr %i.cc, align 8, !dbg !18841, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18842
  %i.hy = icmp ult i64 %i.hx, 11
  br i1 %i.hy, label %bb.af, label %bb.ae, !dbg !18843, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !18844
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENCINvNtNtB4H_9primitive5basic12encode_deltatlE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hx), !dbg !18845
  %i.hz = load i64, ptr %i.l, align 8, !dbg !18846, !alias.scope !18606, !noundef !1032 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1, !dbg !18847
  call void @llvm.assume(i1 %i.ia), !dbg !18848
  %.not.i77 = icmp eq i64 %i.hx, 0, !dbg !18849
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !18849

bb.ag:                                            ; preds = %bb.af
  %i.ib = load ptr, ptr %i.cd, align 8, !dbg !18850, !alias.scope !18606, !nonnull !1032, !noundef !1032
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz, !dbg !18851
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.b, i64 %i.hx, i1 false), !dbg !18852
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !18853, !alias.scope !18606
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !18854

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.id = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hz, %bb.af ], !dbg !18853
  %i.ie = add i64 %i.id, %i.hx, !dbg !18853
  store i64 %i.ie, ptr %i.l, align 8, !dbg !18853, !alias.scope !18606
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !18855
  %i.if = load i64, ptr %i.l, align 8, !dbg !18856, !alias.scope !18610, !noundef !1032 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1, !dbg !18857
  call void @llvm.assume(i1 %i.ig), !dbg !18858
  %i.ih = load ptr, ptr %i.cd, align 8, !dbg !18859, !alias.scope !18610, !nonnull !1032, !noundef !1032
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if, !dbg !18860
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !18861
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !18862, !alias.scope !18610
  %i.ij = add i64 %.pre.i81, %2, !dbg !18862      ; 2 uses
  store i64 %i.ij, ptr %i.l, align 8, !dbg !18862, !alias.scope !18610
  br label %.lr.ph, !dbg !18863

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ik = phi i64 [ %i.ji, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ij, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.il, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.io, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !18864 ; 3 uses
  %i.im = icmp eq i64 %.sroa.016.0133, 0, !dbg !18863
  br i1 %i.im, label %._crit_edge, label %bb.ah, !dbg !18863

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18865
  %i.in = icmp eq i64 %.val64, 0, !dbg !18715
  br i1 %i.in, label %._crit_edge138, label %.preheader, !dbg !18715

bb.ah:                                            ; preds = %.lr.ph
  %i.io = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !18866
  %i.ip = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !18867 ; 2 uses
  %i.iq = mul nuw nsw i64 %i.il, %.zext, !dbg !18868 ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, 257, !dbg !18869
  br i1 %i.ir, label %bb.aj, label %bb.ai, !dbg !18869, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ip, i64 noundef %i.iq, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !18870
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !18871
  %i.it = load i8, ptr %i.is, align 1, !dbg !18871, !noundef !1032 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ip, !dbg !18872
  %i.iv = zext i8 %i.it to i64, !dbg !18873       ; 2 uses
  %.not.i83 = icmp eq i8 %i.it, 0, !dbg !18874
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !18874

bb.ak:                                            ; preds = %bb.aj
  %i.iw = icmp sgt i64 %i.ik, -1, !dbg !18875
  call void @llvm.assume(i1 %i.iw), !dbg !18876
  %i.ix = mul nuw nsw i64 %i.iv, %.zext, !dbg !18877
  %i.iy = add nuw nsw i64 %i.ix, 7, !dbg !18878
  %i.iz = lshr i64 %i.iy, 3, !dbg !18878
  %i.ja = add nuw i64 %i.ik, %i.iz, !dbg !18879   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ja, i8 noundef 0), !dbg !18880, !noalias !18624
  %i.jb = load i64, ptr %i.l, align 8, !dbg !18881, !alias.scope !18625, !noundef !1032 ; 4 uses
  %i.jc = icmp ugt i64 %i.ik, %i.jb, !dbg !18882
  br i1 %i.jc, label %bb.am, label %bb.al, !dbg !18882, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.cd, align 8, !dbg !18883, !alias.scope !18625, !nonnull !1032, !noundef !1032
  %i.je = sub nuw i64 %i.jb, %i.ik, !dbg !18884
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ik, !dbg !18885
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.iv, ptr noalias noundef nonnull %i.jf, i64 noundef %i.je), !dbg !18886
  %i.jg = load i64, ptr %i.l, align 8, !dbg !18887, !alias.scope !18625, !noundef !1032 ; 2 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg, !dbg !18888
  br i1 %i.jh, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !18888

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ik, i64 noundef %i.jb, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !18889, !noalias !18624
  unreachable, !dbg !18889

bb.an:                                            ; preds = %bb.al
  store i64 %i.ja, ptr %i.l, align 8, !dbg !18890, !alias.scope !18625
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !18891

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.ji = phi i64 [ %i.ik, %bb.aj ], [ %i.jg, %bb.al ], [ %i.ja, %bb.an ]
  %exitcond.not = icmp eq i64 %i.il, %2, !dbg !18892
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !18626

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !18818
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jj = icmp eq i64 %i.gm, 0, !dbg !18817       ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.gi, 1, !dbg !18814 ; 3 uses
  %i.jl = sub i64 %i.jk, %.sroa.0.2129, !dbg !18893 ; 5 uses
  %i.jm = call i64 @llvm.smax.i64(i64 %i.jl, i64 %.sroa.012.0128), !dbg !18894
  %.sroa.0.0.i85 = select i1 %i.jj, i64 %i.jl, i64 %i.jm, !dbg !18817 ; 2 uses
  %i.jn = call i64 @llvm.smin.i64(i64 %i.jl, i64 %.sroa.087.0127), !dbg !18895
  %.sroa.0.0.i84 = select i1 %i.jj, i64 %i.jl, i64 %i.jn, !dbg !18817 ; 3 uses
  %i.jo = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !18896
  %i.jp = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !18897
  %i.jq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jp, i1 false), !dbg !18898
  %i.jr = trunc nuw nsw i64 %i.jq to i8, !dbg !18898
  %i.js = sub nuw nsw i8 64, %i.jr, !dbg !18899
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gl, !dbg !18818
  store i8 %i.js, ptr %i.jt, align 1, !dbg !18818
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !18900
  store i64 %i.jl, ptr %i.ju, align 8, !dbg !18900
  %i.jv = icmp eq i64 %i.cp, 0, !dbg !18716
  br i1 %i.jv, label %bb.ad, label %bb.p, !dbg !18716
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18901 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !19307

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !19308
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !19309
  %3 = udiv i16 256, %.rhs.trunc, !dbg !19309
  %.zext = zext nneg i16 %3 to i64, !dbg !19309   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !19311
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19312 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !19313, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !19314
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !19315
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19316 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !19316, !alias.scope !19199, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !19317
  call void @llvm.assume(i1 %i.n), !dbg !19318
  %.not.i = icmp eq i64 %i.j, 0, !dbg !19319
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !19319

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19320
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19320, !alias.scope !19199, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !19321
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !19322
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !19323, !alias.scope !19199
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !19324

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !19323
  %i.s = add i64 %i.r, %i.j, !dbg !19323
  store i64 %i.s, ptr %i.l, align 8, !dbg !19323, !alias.scope !19199
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19325 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !19326, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !19327
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !19328
  %i.v = load i64, ptr %i.l, align 8, !dbg !19329, !alias.scope !19212, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !19330
  call void @llvm.assume(i1 %i.w), !dbg !19331
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !19332
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !19332

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19333
  %i.y = load ptr, ptr %i.x, align 8, !dbg !19333, !alias.scope !19212, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !19334
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !19335
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !19336, !alias.scope !19212
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !19337

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !19336
  %i.ab = add i64 %i.aa, %i.t, !dbg !19336
  store i64 %i.ab, ptr %i.l, align 8, !dbg !19336, !alias.scope !19212
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !19338 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !19338, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19339 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !19340, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !19341
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !19342
  %i.af = load i64, ptr %i.l, align 8, !dbg !19343, !alias.scope !19225, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !19344
  call void @llvm.assume(i1 %i.ag), !dbg !19345
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !19346
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !19346

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19347
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !19347, !alias.scope !19225, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !19348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !19349
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !19350, !alias.scope !19225
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !19351

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !19350
  %i.al = add i64 %i.ak, %i.ad, !dbg !19350
  store i64 %i.al, ptr %i.l, align 8, !dbg !19350, !alias.scope !19225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !19353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !19355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19356
  store i32 0, ptr %i.f, align 4, !dbg !19357
  call void @llvm.experimental.noalias.scope.decl(metadata !19226), !dbg !19358
  call void @llvm.experimental.noalias.scope.decl(metadata !19227), !dbg !19359
  call void @llvm.experimental.noalias.scope.decl(metadata !19228), !dbg !19360
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19361 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !19362 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !19362
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !19363
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB7_9primitive5basic12encode_deltaxxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !19363

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !19362 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !19364, !alias.scope !19229, !nonnull !1032, !align !1099, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19364
  %i.at = load i64, ptr %i.as, align 8, !dbg !19364, !alias.scope !19229, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !19365
  call void @llvm.assume(i1 %i.au), !dbg !19366
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq, !dbg !19367
  %i.aw = load i64, ptr %i.av, align 8, !dbg !19368, !alias.scope !19230, !noalias !19229, !noundef !1032
  %i.ax = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.aw, 1, !dbg !19369
  %i.ay = load i64, ptr %i.ac, align 8, !dbg !19370, !alias.scope !19231, !noundef !1032
  %i.az = add i64 %i.ay, -1, !dbg !19370
  store i64 %i.az, ptr %i.ac, align 8, !dbg !19370, !alias.scope !19231
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB7_9primitive5basic12encode_deltaxxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !19371

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB7_9primitive5basic12encode_deltaxxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.ba = phi { i64, i64 } [ %i.ax, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0, !dbg !19372
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !19373
  %i.bd = extractvalue { i64, i64 } %i.ba, 1, !dbg !19373
  %.sroa.0.0 = select i1 %i.bc, i64 %i.bd, i64 0, !dbg !19373 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19374
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !19374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !19375
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !19376
  %i.bf = load i64, ptr %i.be, align 8, !dbg !19376, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19377
  %i.bg = icmp ult i64 %i.bf, 11
  br i1 %i.bg, label %bb.n, label %bb.m, !dbg !19378, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB7_9primitive5basic12encode_deltaxxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bf, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !19379
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB7_9primitive5basic12encode_deltaxxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf), !dbg !19380
  %i.bh = load i64, ptr %i.l, align 8, !dbg !19381, !alias.scope !19245, !noundef !1032 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !19382
  call void @llvm.assume(i1 %i.bi), !dbg !19383
  %.not.i72 = icmp eq i64 %i.bf, 0, !dbg !19384
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !19384

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19385
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !19385, !alias.scope !19245, !nonnull !1032, !noundef !1032
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !19386
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.e, i64 %i.bf, i1 false), !dbg !19387
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !19388, !alias.scope !19245
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !19389

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bm = phi i64 [ %.pre.i73, %bb.o ], [ %i.bh, %bb.n ], !dbg !19388
  %i.bn = add i64 %i.bm, %i.bf, !dbg !19388
  store i64 %i.bn, ptr %i.l, align 8, !dbg !19388, !alias.scope !19245
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !19390, !noundef !1032 ; 2 uses
  %i.bo = icmp eq i64 %.val63, 0, !dbg !19391
  br i1 %i.bo, label %._crit_edge138, label %.preheader.lr.ph, !dbg !19391

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bp, align 8, !alias.scope !19246, !noalias !19247
  %.promoted = load i64, ptr %i.bq, align 8, !alias.scope !19246, !noalias !19247
  %i.cd = load i64, ptr %i.br, align 8            ; 2 uses
  %i.ce = load i64, ptr %i.bs, align 8
  %i.cf = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.cg = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ch = load i64, ptr %i.bu, align 8            ; 4 uses
  %i.ci = load ptr, ptr %0, align 8, !nonnull !1032, !align !1099
  %i.cj = load i64, ptr %i.bw, align 8
  %.promoted309 = load i64, ptr %i.bv, align 8
  br label %.preheader, !dbg !19391

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !19392

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19393
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB1w_9primitive5basic12encode_deltaxxE0EEEBa_:bb.a
  %i.hf = add i64 %i.he, %.val.i75, !dbg !19505
  %i.hg = icmp ugt i64 %i.hf, -4, !dbg !19505
  br i1 %i.hg, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph.preheader.new, !dbg !19505

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !19505
  %invariant.op305 = add i64 2, %.val.i75, !dbg !19505
  %invariant.op307 = add i64 3, %.val.i75, !dbg !19505
  br label %scalar.ph, !dbg !19505

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hr, %scalar.ph ] ; 5 uses
  %i.hh = add i64 %.sroa.0.012.i, %.val.i75, !dbg !19507 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hh, !dbg !19508
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hh, !dbg !19509
  %.val10.i = load i64, ptr %i.hi, align 8, !dbg !19510, !noalias !19269, !noundef !1032
  %i.hk = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !19511
  store i64 %i.hk, ptr %i.hj, align 8, !dbg !19512, !alias.scope !19270, !noalias !19269
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !19508
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !19509
  %.val10.i.1 = load i64, ptr %i.hl, align 8, !dbg !19510, !noalias !19269, !noundef !1032
  %i.hn = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !19511
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !19512, !alias.scope !19270, !noalias !19269
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !19508
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !19509
  %.val10.i.2 = load i64, ptr %i.ho, align 8, !dbg !19510, !noalias !19269, !noundef !1032
  %i.hq = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !19511
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !19512, !alias.scope !19270, !noalias !19269
  %i.hr = add nuw i64 %.sroa.0.012.i, 4, !dbg !19506 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !19508
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !19509
  %.val10.i.3 = load i64, ptr %i.hs, align 8, !dbg !19510, !noalias !19269, !noundef !1032
  %i.hu = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !19511
  store i64 %i.hu, ptr %i.ht, align 8, !dbg !19512, !alias.scope !19270, !noalias !19269
  %exitcond.not.i.3 = icmp eq i64 %i.hr, %i.go, !dbg !19504
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !19505, !llvm.loop !19128

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19514
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !19514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !19515
  %i.hv = load i64, ptr %i.cb, align 8, !dbg !19516, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19517
  %i.hw = icmp ult i64 %i.hv, 11
  br i1 %i.hw, label %bb.af, label %bb.ae, !dbg !19518, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hv, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !19519
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSxENCINvNtNtB4H_9primitive5basic12encode_deltaxxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hv), !dbg !19520
  %i.hx = load i64, ptr %i.l, align 8, !dbg !19521, !alias.scope !19283, !noundef !1032 ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, -1, !dbg !19522
  call void @llvm.assume(i1 %i.hy), !dbg !19523
  %.not.i77 = icmp eq i64 %i.hv, 0, !dbg !19524
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !19524

bb.ag:                                            ; preds = %bb.af
  %i.hz = load ptr, ptr %i.cc, align 8, !dbg !19525, !alias.scope !19283, !nonnull !1032, !noundef !1032
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx, !dbg !19526
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull readonly align 1 %i.b, i64 %i.hv, i1 false), !dbg !19527
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !19528, !alias.scope !19283
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !19529

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ib = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hx, %bb.af ], !dbg !19528
  %i.ic = add i64 %i.ib, %i.hv, !dbg !19528
  store i64 %i.ic, ptr %i.l, align 8, !dbg !19528, !alias.scope !19283
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !19530
  %i.id = load i64, ptr %i.l, align 8, !dbg !19531, !alias.scope !19287, !noundef !1032 ; 2 uses
  %i.ie = icmp sgt i64 %i.id, -1, !dbg !19532
  call void @llvm.assume(i1 %i.ie), !dbg !19533
  %i.if = load ptr, ptr %i.cc, align 8, !dbg !19534, !alias.scope !19287, !nonnull !1032, !noundef !1032
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.id, !dbg !19535
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !19536
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !19537, !alias.scope !19287
  %i.ih = add i64 %.pre.i81, %2, !dbg !19537      ; 2 uses
  store i64 %i.ih, ptr %i.l, align 8, !dbg !19537, !alias.scope !19287
  br label %.lr.ph, !dbg !19538

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ii = phi i64 [ %i.jg, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ih, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ij, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ij = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !19539 ; 3 uses
  %i.ik = icmp eq i64 %.sroa.016.0133, 0, !dbg !19538
  br i1 %i.ik, label %._crit_edge, label %bb.ah, !dbg !19538

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19540
  %i.il = icmp eq i64 %.val64, 0, !dbg !19391
  br i1 %i.il, label %._crit_edge138, label %.preheader, !dbg !19391

bb.ah:                                            ; preds = %.lr.ph
  %i.im = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !19541
  %i.in = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !19542 ; 2 uses
  %i.io = mul nuw nsw i64 %i.ij, %.zext, !dbg !19543 ; 2 uses
  %i.ip = icmp samesign ult i64 %i.io, 257, !dbg !19544
  br i1 %i.ip, label %bb.aj, label %bb.ai, !dbg !19544, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.in, i64 noundef %i.io, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !19545
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !19546
  %i.ir = load i8, ptr %i.iq, align 1, !dbg !19546, !noundef !1032 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.in, !dbg !19547
  %i.it = zext i8 %i.ir to i64, !dbg !19548       ; 2 uses
  %.not.i83 = icmp eq i8 %i.ir, 0, !dbg !19549
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !19549

bb.ak:                                            ; preds = %bb.aj
  %i.iu = icmp sgt i64 %i.ii, -1, !dbg !19550
  call void @llvm.assume(i1 %i.iu), !dbg !19551
  %i.iv = mul nuw nsw i64 %i.it, %.zext, !dbg !19552
  %i.iw = add nuw nsw i64 %i.iv, 7, !dbg !19553
  %i.ix = lshr i64 %i.iw, 3, !dbg !19553
  %i.iy = add nuw i64 %i.ii, %i.ix, !dbg !19554   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iy, i8 noundef 0), !dbg !19555, !noalias !19301
  %i.iz = load i64, ptr %i.l, align 8, !dbg !19556, !alias.scope !19302, !noundef !1032 ; 4 uses
  %i.ja = icmp ugt i64 %i.ii, %i.iz, !dbg !19557
  br i1 %i.ja, label %bb.am, label %bb.al, !dbg !19557, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jb = load ptr, ptr %i.cc, align 8, !dbg !19558, !alias.scope !19302, !nonnull !1032, !noundef !1032
  %i.jc = sub nuw i64 %i.iz, %i.ii, !dbg !19559
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ii, !dbg !19560
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.it, ptr noalias noundef nonnull %i.jd, i64 noundef %i.jc), !dbg !19561
  %i.je = load i64, ptr %i.l, align 8, !dbg !19562, !alias.scope !19302, !noundef !1032 ; 2 uses
  %i.jf = icmp ugt i64 %i.iy, %i.je, !dbg !19563
  br i1 %i.jf, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !19563

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.iz, i64 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !19564, !noalias !19301
  unreachable, !dbg !19564

bb.an:                                            ; preds = %bb.al
  store i64 %i.iy, ptr %i.l, align 8, !dbg !19565, !alias.scope !19302
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !19566

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jg = phi i64 [ %i.ii, %bb.aj ], [ %i.je, %bb.al ], [ %i.iy, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ij, %2, !dbg !19567
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !19303

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !19493
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jh = icmp eq i64 %i.gk, 0, !dbg !19492       ; 2 uses
  %i.ji = extractvalue { i64, i64 } %i.gg, 1, !dbg !19489 ; 3 uses
  %i.jj = sub i64 %i.ji, %.sroa.0.2129, !dbg !19568 ; 5 uses
  %i.jk = call i64 @llvm.smax.i64(i64 %i.jj, i64 %.sroa.012.0128), !dbg !19569
  %.sroa.0.0.i85 = select i1 %i.jh, i64 %i.jj, i64 %i.jk, !dbg !19492 ; 2 uses
  %i.jl = call i64 @llvm.smin.i64(i64 %i.jj, i64 %.sroa.087.0127), !dbg !19570
  %.sroa.0.0.i84 = select i1 %i.jh, i64 %i.jj, i64 %i.jl, !dbg !19492 ; 3 uses
  %i.jm = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !19571
  %i.jn = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !19572
  %i.jo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jn, i1 false), !dbg !19573
  %i.jp = trunc nuw nsw i64 %i.jo to i8, !dbg !19573
  %i.jq = sub nuw nsw i8 64, %i.jp, !dbg !19574
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gj, !dbg !19493
  store i8 %i.jq, ptr %i.jr, align 1, !dbg !19493
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !19575
  store i64 %i.jj, ptr %i.js, align 8, !dbg !19575
  %i.jt = icmp eq i64 %i.co, 0, !dbg !19392
  br i1 %i.jt, label %bb.ad, label %bb.p, !dbg !19392
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19576 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  switch i64 %2, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !19982

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !19983
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %2 to i16, !dbg !19984
  %3 = udiv i16 256, %.rhs.trunc, !dbg !19984
  %.zext = zext nneg i16 %3 to i64, !dbg !19984   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19985
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !19986
  %i.j = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !19987 ; 6 uses
  %i.k = icmp ult i64 %i.j, 11
  br i1 %i.k, label %bb.d, label %bb.c, !dbg !19988, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !19989
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j), !dbg !19990
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19991 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !19991, !alias.scope !19874, !noundef !1032 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !19992
  call void @llvm.assume(i1 %i.n), !dbg !19993
  %.not.i = icmp eq i64 %i.j, 0, !dbg !19994
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !19994

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19995
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19995, !alias.scope !19874, !nonnull !1032, !noundef !1032
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !19996
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.j, i1 false), !dbg !19997
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !19998, !alias.scope !19874
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !19999

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ], !dbg !19998
  %i.s = add i64 %i.r, %i.j, !dbg !19998
  store i64 %i.s, ptr %i.l, align 8, !dbg !19998, !alias.scope !19874
  %i.t = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %2, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20000 ; 6 uses
  %i.u = icmp ult i64 %i.t, 11
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !20001, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20002
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.t), !dbg !20003
  %i.v = load i64, ptr %i.l, align 8, !dbg !20004, !alias.scope !19887, !noundef !1032 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !20005
  call void @llvm.assume(i1 %i.w), !dbg !20006
  %.not.i66 = icmp eq i64 %i.t, 0, !dbg !20007
  br i1 %.not.i66, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, label %bb.h, !dbg !20007

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20008
  %i.y = load ptr, ptr %i.x, align 8, !dbg !20008, !alias.scope !19887, !nonnull !1032, !noundef !1032
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !20009
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.i, i64 %i.t, i1 false), !dbg !20010
  %.pre.i67 = load i64, ptr %i.l, align 8, !dbg !20011, !alias.scope !19887
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68, !dbg !20012

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68: ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i67, %bb.h ], [ %i.v, %bb.g ], !dbg !20011
  %i.ab = add i64 %i.aa, %i.t, !dbg !20011
  store i64 %i.ab, ptr %i.l, align 8, !dbg !20011, !alias.scope !19887
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20013 ; 4 uses
  %.val62 = load i64, ptr %i.ac, align 8, !dbg !20013, !noundef !1032
  %i.ad = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %.val62, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20014 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !20015, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20016
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit68
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ad), !dbg !20017
  %i.af = load i64, ptr %i.l, align 8, !dbg !20018, !alias.scope !19900, !noundef !1032 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !20019
  call void @llvm.assume(i1 %i.ag), !dbg !20020
  %.not.i69 = icmp eq i64 %i.ad, 0, !dbg !20021
  br i1 %.not.i69, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, label %bb.k, !dbg !20021

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20022
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !20022, !alias.scope !19900, !nonnull !1032, !noundef !1032
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !20023
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.i, i64 %i.ad, i1 false), !dbg !20024
  %.pre.i70 = load i64, ptr %i.l, align 8, !dbg !20025, !alias.scope !19900
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, !dbg !20026

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i70, %bb.k ], [ %i.af, %bb.j ], !dbg !20025
  %i.al = add i64 %i.ak, %i.ad, !dbg !20025
  store i64 %i.al, ptr %i.l, align 8, !dbg !20025, !alias.scope !19900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20027
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !20028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20029
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !20030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20031
  store i32 0, ptr %i.f, align 4, !dbg !20032
  call void @llvm.experimental.noalias.scope.decl(metadata !19901), !dbg !20033
  call void @llvm.experimental.noalias.scope.decl(metadata !19902), !dbg !20034
  call void @llvm.experimental.noalias.scope.decl(metadata !19903), !dbg !20035
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20036 ; 2 uses
  %i.an = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.am) #42, !dbg !20037 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0, !dbg !20037
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !20038
  br i1 %i.ap, label %bb.l, label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB7_9primitive5basic12encode_deltayxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !20038

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71
  %i.aq = extractvalue { i64, i64 } %i.an, 1, !dbg !20037 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !dbg !20039, !alias.scope !19904, !nonnull !1032, !align !1099, !noundef !1032
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20039
  %i.at = load i64, ptr %i.as, align 8, !dbg !20039, !alias.scope !19904, !noundef !1032
  %i.au = icmp ult i64 %i.aq, %i.at, !dbg !20040
  call void @llvm.assume(i1 %i.au), !dbg !20041
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq, !dbg !20042
  %i.aw = load i64, ptr %i.av, align 8, !dbg !20043, !alias.scope !19905, !noalias !19904, !noundef !1032
  %i.ax = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.aw, 1, !dbg !20044
  %i.ay = load i64, ptr %i.ac, align 8, !dbg !20045, !alias.scope !19906, !noundef !1032
  %i.az = add i64 %i.ay, -1, !dbg !20045
  store i64 %i.az, ptr %i.ac, align 8, !dbg !20045, !alias.scope !19906
  br label %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB7_9primitive5basic12encode_deltayxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit, !dbg !20046

_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB7_9primitive5basic12encode_deltayxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71, %bb.l
  %i.ba = phi { i64, i64 } [ %i.ax, %bb.l ], [ { i64 0, i64 undef }, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit71 ] ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0, !dbg !20047
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !20048
  %i.bd = extractvalue { i64, i64 } %i.ba, 1, !dbg !20048
  %.sroa.0.0 = select i1 %i.bc, i64 %i.bd, i64 0, !dbg !20048 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20049
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !20049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !20050
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !20051
  %i.bf = load i64, ptr %i.be, align 8, !dbg !20051, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20052
  %i.bg = icmp ult i64 %i.bf, 11
  br i1 %i.bg, label %bb.n, label %bb.m, !dbg !20053, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB7_9primitive5basic12encode_deltayxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bf, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !20054
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utilsINtB5_14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB7_9primitive5basic12encode_deltayxE0EENtNtNtB1r_6traits8iterator8Iterator4nextBb_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf), !dbg !20055
  %i.bh = load i64, ptr %i.l, align 8, !dbg !20056, !alias.scope !19920, !noundef !1032 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !20057
  call void @llvm.assume(i1 %i.bi), !dbg !20058
  %.not.i72 = icmp eq i64 %i.bf, 0, !dbg !20059
  br i1 %.not.i72, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, label %bb.o, !dbg !20059

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20060
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !20060, !alias.scope !19920, !nonnull !1032, !noundef !1032
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !20061
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.e, i64 %i.bf, i1 false), !dbg !20062
  %.pre.i73 = load i64, ptr %i.l, align 8, !dbg !20063, !alias.scope !19920
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74, !dbg !20064

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74: ; preds = %bb.n, %bb.o
  %i.bm = phi i64 [ %.pre.i73, %bb.o ], [ %i.bh, %bb.n ], !dbg !20063
  %i.bn = add i64 %i.bm, %i.bf, !dbg !20063
  store i64 %i.bn, ptr %i.l, align 8, !dbg !20063, !alias.scope !19920
  %.val63 = load i64, ptr %i.ac, align 8, !dbg !20065, !noundef !1032 ; 2 uses
  %i.bo = icmp eq i64 %.val63, 0, !dbg !20066
  br i1 %i.bo, label %._crit_edge138, label %.preheader.lr.ph, !dbg !20066

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted139 = load i64, ptr %i.bp, align 8, !alias.scope !19921, !noalias !19922
  %.promoted = load i64, ptr %i.bq, align 8, !alias.scope !19921, !noalias !19922
  %i.cd = load i64, ptr %i.br, align 8            ; 2 uses
  %i.ce = load i64, ptr %i.bs, align 8
  %i.cf = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.cg = load ptr, ptr %i.am, align 8, !nonnull !1032 ; 2 uses
  %i.ch = load i64, ptr %i.bu, align 8            ; 4 uses
  %i.ci = load ptr, ptr %0, align 8, !nonnull !1032, !align !1099
  %i.cj = load i64, ptr %i.bw, align 8
  %.promoted309 = load i64, ptr %i.bv, align 8
  br label %.preheader, !dbg !20066

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted304312 = phi i64 [ %.promoted309, %.preheader.lr.ph ], [ %.promoted304310, %._crit_edge ] ; 2 uses
  %.val64182 = phi i64 [ %.val63, %.preheader.lr.ph ], [ %.val64, %._crit_edge ] ; 3 uses
  %.promoted130147 = phi i64 [ %.promoted, %.preheader.lr.ph ], [ %.promoted130144, %._crit_edge ] ; 2 uses
  %.promoted143 = phi i64 [ %.promoted139, %.preheader.lr.ph ], [ %.promoted140, %._crit_edge ] ; 2 uses
  %.sroa.0.1137 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.sroa.0.2.lcssa, %._crit_edge ]
  br label %bb.p, !dbg !20067

._crit_edge138:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20068
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtBa_5arrow5write5utils14ExactSizedIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB1w_9primitive5basic12encode_deltayxE0EEEBa_:bb.a
scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i75, !dbg !20180
  %invariant.op305 = add i64 2, %.val.i75, !dbg !20180
  %invariant.op307 = add i64 3, %.val.i75, !dbg !20180
  br label %scalar.ph, !dbg !20180

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.hr, %scalar.ph ] ; 5 uses
  %i.hh = add i64 %.sroa.0.012.i, %.val.i75, !dbg !20182 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.hh, !dbg !20183
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.hh, !dbg !20184
  %.val10.i = load i64, ptr %i.hi, align 8, !dbg !20185, !noalias !19944, !noundef !1032
  %i.hk = sub i64 %.val10.i, %.sroa.087.0.lcssa, !dbg !20186
  store i64 %i.hk, ptr %i.hj, align 8, !dbg !20187, !alias.scope !19945, !noalias !19944
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20183
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20184
  %.val10.i.1 = load i64, ptr %i.hl, align 8, !dbg !20185, !noalias !19944, !noundef !1032
  %i.hn = sub i64 %.val10.i.1, %.sroa.087.0.lcssa, !dbg !20186
  store i64 %i.hn, ptr %i.hm, align 8, !dbg !20187, !alias.scope !19945, !noalias !19944
  %.reass306 = add i64 %.sroa.0.012.i, %invariant.op305 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass306, !dbg !20183
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass306, !dbg !20184
  %.val10.i.2 = load i64, ptr %i.ho, align 8, !dbg !20185, !noalias !19944, !noundef !1032
  %i.hq = sub i64 %.val10.i.2, %.sroa.087.0.lcssa, !dbg !20186
  store i64 %i.hq, ptr %i.hp, align 8, !dbg !20187, !alias.scope !19945, !noalias !19944
  %i.hr = add nuw i64 %.sroa.0.012.i, 4, !dbg !20181 ; 2 uses
  %.reass308 = add i64 %.sroa.0.012.i, %invariant.op307 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass308, !dbg !20183
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass308, !dbg !20184
  %.val10.i.3 = load i64, ptr %i.hs, align 8, !dbg !20185, !noalias !19944, !noundef !1032
  %i.hu = sub i64 %.val10.i.3, %.sroa.087.0.lcssa, !dbg !20186
  store i64 %i.hu, ptr %i.ht, align 8, !dbg !20187, !alias.scope !19945, !noalias !19944
  %exitcond.not.i.3 = icmp eq i64 %i.hr, %i.go, !dbg !20179
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit, label %scalar.ph, !dbg !20180, !llvm.loop !19803

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20189
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.087.0.lcssa), !dbg !20189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !20190
  %i.hv = load i64, ptr %i.cb, align 8, !dbg !20191, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20192
  %i.hw = icmp ult i64 %i.hv, 11
  br i1 %i.hw, label %bb.af, label %bb.ae, !dbg !20193, !prof !1072

bb.ae:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hv, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20194
  unreachable

bb.af:                                            ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtB3l_5arrow5write5utils14ExactSizedIterxINtNtB8_3map3MapINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSyENCINvNtNtB4H_9primitive5basic12encode_deltayxE0EEE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hv), !dbg !20195
  %i.hx = load i64, ptr %i.l, align 8, !dbg !20196, !alias.scope !19958, !noundef !1032 ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, -1, !dbg !20197
  call void @llvm.assume(i1 %i.hy), !dbg !20198
  %.not.i77 = icmp eq i64 %i.hv, 0, !dbg !20199
  br i1 %.not.i77, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, label %bb.ag, !dbg !20199

bb.ag:                                            ; preds = %bb.af
  %i.hz = load ptr, ptr %i.cc, align 8, !dbg !20200, !alias.scope !19958, !nonnull !1032, !noundef !1032
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx, !dbg !20201
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull readonly align 1 %i.b, i64 %i.hv, i1 false), !dbg !20202
  %.pre.i78 = load i64, ptr %i.l, align 8, !dbg !20203, !alias.scope !19958
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, !dbg !20204

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.af, %bb.ag
  %i.ib = phi i64 [ %.pre.i78, %bb.ag ], [ %i.hx, %bb.af ], !dbg !20203
  %i.ic = add i64 %i.ib, %i.hv, !dbg !20203
  store i64 %i.ic, ptr %i.l, align 8, !dbg !20203, !alias.scope !19958
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2), !dbg !20205
  %i.id = load i64, ptr %i.l, align 8, !dbg !20206, !alias.scope !19962, !noundef !1032 ; 2 uses
  %i.ie = icmp sgt i64 %i.id, -1, !dbg !20207
  call void @llvm.assume(i1 %i.ie), !dbg !20208
  %i.if = load ptr, ptr %i.cc, align 8, !dbg !20209, !alias.scope !19962, !nonnull !1032, !noundef !1032
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.id, !dbg !20210
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull readonly align 4 %i.f, i64 %2, i1 false), !dbg !20211
  %.pre.i81 = load i64, ptr %i.l, align 8, !dbg !20212, !alias.scope !19962
  %i.ih = add i64 %.pre.i81, %2, !dbg !20212      ; 2 uses
  store i64 %i.ih, ptr %i.l, align 8, !dbg !20212, !alias.scope !19962
  br label %.lr.ph, !dbg !20213

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.ii = phi i64 [ %i.jg, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.ih, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 7 uses
  %.sroa.027.0134 = phi i64 [ %i.ij, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 3 uses
  %.sroa.016.0133 = phi i64 [ %i.im, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit79 ] ; 2 uses
  %i.ij = add nuw nsw i64 %.sroa.027.0134, 1, !dbg !20214 ; 3 uses
  %i.ik = icmp eq i64 %.sroa.016.0133, 0, !dbg !20213
  br i1 %i.ik, label %._crit_edge, label %bb.ah, !dbg !20213

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20215
  %i.il = icmp eq i64 %.val64, 0, !dbg !20066
  br i1 %i.il, label %._crit_edge138, label %.preheader, !dbg !20066

bb.ah:                                            ; preds = %.lr.ph
  %i.im = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0133, i64 %.zext), !dbg !20216
  %i.in = mul nuw nsw i64 %.sroa.027.0134, %.zext, !dbg !20217 ; 2 uses
  %i.io = mul nuw nsw i64 %i.ij, %.zext, !dbg !20218 ; 2 uses
  %i.ip = icmp samesign ult i64 %i.io, 257, !dbg !20219
  br i1 %i.ip, label %bb.aj, label %bb.ai, !dbg !20219, !prof !1184

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.in, i64 noundef %i.io, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20220
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0134, !dbg !20221
  %i.ir = load i8, ptr %i.iq, align 1, !dbg !20221, !noundef !1032 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.in, !dbg !20222
  %i.it = zext i8 %i.ir to i64, !dbg !20223       ; 2 uses
  %.not.i83 = icmp eq i8 %i.ir, 0, !dbg !20224
  br i1 %.not.i83, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.ak, !dbg !20224

bb.ak:                                            ; preds = %bb.aj
  %i.iu = icmp sgt i64 %i.ii, -1, !dbg !20225
  call void @llvm.assume(i1 %i.iu), !dbg !20226
  %i.iv = mul nuw nsw i64 %i.it, %.zext, !dbg !20227
  %i.iw = add nuw nsw i64 %i.iv, 7, !dbg !20228
  %i.ix = lshr i64 %i.iw, 3, !dbg !20228
  %i.iy = add nuw i64 %i.ii, %i.ix, !dbg !20229   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.iy, i8 noundef 0), !dbg !20230, !noalias !19976
  %i.iz = load i64, ptr %i.l, align 8, !dbg !20231, !alias.scope !19977, !noundef !1032 ; 4 uses
  %i.ja = icmp ugt i64 %i.ii, %i.iz, !dbg !20232
  br i1 %i.ja, label %bb.am, label %bb.al, !dbg !20232, !prof !1109

bb.al:                                            ; preds = %bb.ak
  %i.jb = load ptr, ptr %i.cc, align 8, !dbg !20233, !alias.scope !19977, !nonnull !1032, !noundef !1032
  %i.jc = sub nuw i64 %i.iz, %i.ii, !dbg !20234
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ii, !dbg !20235
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.is, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.it, ptr noalias noundef nonnull %i.jd, i64 noundef %i.jc), !dbg !20236
  %i.je = load i64, ptr %i.l, align 8, !dbg !20237, !alias.scope !19977, !noundef !1032 ; 2 uses
  %i.jf = icmp ugt i64 %i.iy, %i.je, !dbg !20238
  br i1 %i.jf, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.an, !dbg !20238

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.iz, i64 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20239, !noalias !19976
  unreachable, !dbg !20239

bb.an:                                            ; preds = %bb.al
  store i64 %i.iy, ptr %i.l, align 8, !dbg !20240, !alias.scope !19977
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20241

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.aj, %bb.al, %bb.an
  %i.jg = phi i64 [ %i.ii, %bb.aj ], [ %i.je, %bb.al ], [ %i.iy, %bb.an ]
  %exitcond.not = icmp eq i64 %i.ij, %2, !dbg !20242
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !19978

bb.ao:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20168
  unreachable

bb.ap:                                            ; preds = %bb.ac
  %i.jh = icmp eq i64 %i.gk, 0, !dbg !20167       ; 2 uses
  %i.ji = extractvalue { i64, i64 } %i.gg, 1, !dbg !20164 ; 3 uses
  %i.jj = sub i64 %i.ji, %.sroa.0.2129, !dbg !20243 ; 5 uses
  %i.jk = call i64 @llvm.smax.i64(i64 %i.jj, i64 %.sroa.012.0128), !dbg !20244
  %.sroa.0.0.i85 = select i1 %i.jh, i64 %i.jj, i64 %i.jk, !dbg !20167 ; 2 uses
  %i.jl = call i64 @llvm.smin.i64(i64 %i.jj, i64 %.sroa.087.0127), !dbg !20245
  %.sroa.0.0.i84 = select i1 %i.jh, i64 %i.jj, i64 %i.jl, !dbg !20167 ; 3 uses
  %i.jm = add nuw nsw i64 %.sroa.4.0126, 1, !dbg !20246
  %i.jn = sub i64 %.sroa.0.0.i85, %.sroa.0.0.i84, !dbg !20247
  %i.jo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jn, i1 false), !dbg !20248
  %i.jp = trunc nuw nsw i64 %i.jo to i8, !dbg !20248
  %i.jq = sub nuw nsw i8 64, %i.jp, !dbg !20249
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gj, !dbg !20168
  store i8 %i.jq, ptr %i.jr, align 1, !dbg !20168
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0126, !dbg !20250
  store i64 %i.jj, ptr %i.js, align 8, !dbg !20250
  %i.jt = icmp eq i64 %i.co, 0, !dbg !20067
  br i1 %i.jt, label %bb.ad, label %bb.p, !dbg !20067
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20251 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !20585

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !20586
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !20587
  %4 = udiv i16 256, %.rhs.trunc, !dbg !20587
  %.zext = zext nneg i16 %4 to i64, !dbg !20587   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !20589
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20590 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !20591, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !20592
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !20593
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !20594 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !20594, !alias.scope !20488, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !20595
  call void @llvm.assume(i1 %i.p), !dbg !20596
  %.not.i = icmp eq i64 %i.l, 0, !dbg !20597
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !20597

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20598
  %i.r = load ptr, ptr %i.q, align 8, !dbg !20598, !alias.scope !20488, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !20599
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !20600
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !20601, !alias.scope !20488
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !20602

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !20601
  %i.u = add i64 %i.t, %i.l, !dbg !20601
  store i64 %i.u, ptr %i.n, align 8, !dbg !20601, !alias.scope !20488
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20603 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !20604, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !20605
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !20606
  %i.x = load i64, ptr %i.n, align 8, !dbg !20607, !alias.scope !20501, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !20608
  call void @llvm.assume(i1 %i.y), !dbg !20609
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !20610
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !20610

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20611
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !20611, !alias.scope !20501, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !20612
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !20613
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !20614, !alias.scope !20501
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !20615

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !20614
  %i.ad = add i64 %i.ac, %i.v, !dbg !20614
  store i64 %i.ad, ptr %i.n, align 8, !dbg !20614, !alias.scope !20501
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20616
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !20617 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !20618, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !20619
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !20620
  %i.ah = load i64, ptr %i.n, align 8, !dbg !20621, !alias.scope !20514, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !20622
  call void @llvm.assume(i1 %i.ai), !dbg !20623
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !20624
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !20624

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20625
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !20625, !alias.scope !20514, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !20626
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !20627
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !20628, !alias.scope !20514
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !20629

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !20628
  %i.an = add i64 %i.am, %i.af, !dbg !20628
  store i64 %i.an, ptr %i.n, align 8, !dbg !20628, !alias.scope !20514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20630
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !20631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !20633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20634
  store i32 0, ptr %i.f, align 4, !dbg !20635
  call void @llvm.experimental.noalias.scope.decl(metadata !20515), !dbg !20636
  %.not = icmp eq ptr %0, %1, !dbg !20637
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !20638

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !20639 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !20640, !alias.scope !20516
  %.val.i = load i8, ptr %0, align 1, !dbg !20641, !noalias !20515, !noundef !1032
  %i.ap = sext i8 %.val.i to i64, !dbg !20642
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !20643

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20644
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !20644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !20645
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !20646
  %i.as = load i64, ptr %i.ar, align 8, !dbg !20646, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20647
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !20648, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !20649
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !20650
  %i.au = load i64, ptr %i.n, align 8, !dbg !20651, !alias.scope !20529, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !20652
  call void @llvm.assume(i1 %i.av), !dbg !20653
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !20654
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !20654

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20655
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !20655, !alias.scope !20529, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !20656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !20657
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !20658, !alias.scope !20529
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !20659

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !20658
  %i.ba = add i64 %i.az, %i.as, !dbg !20658
  store i64 %i.ba, ptr %i.n, align 8, !dbg !20658, !alias.scope !20529
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20660 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !20661
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !20661

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !20661

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !20662

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20667
  ret void, !dbg !20668

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !20669 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20532), !dbg !20670
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !20671
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !20662

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 1, !dbg !20672 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !20673, !alias.scope !20533, !noalias !20534
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !20674 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !20675
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !20676
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !20676

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20677
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !20678
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !20679 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteraENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaalEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !20680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20681
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !20682
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !20683
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteraENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaalEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !20688
  %invariant.op248 = add i64 2, %.val.i73, !dbg !20688
  %invariant.op250 = add i64 3, %.val.i73, !dbg !20688
  br label %scalar.ph, !dbg !20688

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !20690 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !20691
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !20692
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !20693, !noalias !20546, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !20694
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !20695, !alias.scope !20547, !noalias !20546
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !20691
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !20692
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !20693, !noalias !20546, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !20694
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !20695, !alias.scope !20547, !noalias !20546
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !20691
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !20692
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !20693, !noalias !20546, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !20694
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !20695, !alias.scope !20547, !noalias !20546
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !20689 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !20691
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !20692
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !20693, !noalias !20546, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !20694
  store i64 %i.db, ptr %i.da, align 8, !dbg !20695, !alias.scope !20547, !noalias !20546
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !20687
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !20688, !llvm.loop !20413

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20697
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !20697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !20698
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !20699, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20700
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !20701, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !20702
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_aENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaalEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !20703
  %i.de = load i64, ptr %i.n, align 8, !dbg !20704, !alias.scope !20560, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !20705
  call void @llvm.assume(i1 %i.df), !dbg !20706
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !20707
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !20707

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !20708, !alias.scope !20560, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !20709
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !20710
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !20711, !alias.scope !20560
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !20712

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !20711
  %i.dj = add i64 %i.di, %i.dc, !dbg !20711
  store i64 %i.dj, ptr %i.n, align 8, !dbg !20711, !alias.scope !20560
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !20713
  %i.dk = load i64, ptr %i.n, align 8, !dbg !20714, !alias.scope !20564, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !20715
  call void @llvm.assume(i1 %i.dl), !dbg !20716
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !20717, !alias.scope !20564, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !20718
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !20719
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !20720, !alias.scope !20564
  %i.do = add i64 %.pre.i79, %3, !dbg !20720      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !20720, !alias.scope !20564
  br label %.lr.ph, !dbg !20721

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !20722 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !20721
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !20721

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20723
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !20661
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !20661

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !20724
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !20725 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !20726 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !20727
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !20727, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !20728
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !20729
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !20729, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !20730
  %i.ea = zext i8 %i.dy to i64, !dbg !20731       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !20732
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !20732

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !20733
  call void @llvm.assume(i1 %i.eb), !dbg !20734
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !20735
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !20736
  %i.ee = lshr i64 %i.ed, 3, !dbg !20736
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !20737   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !20738, !noalias !20578
  %i.eg = load i64, ptr %i.n, align 8, !dbg !20739, !alias.scope !20579, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !20740
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !20740, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !20741, !alias.scope !20579, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !20742
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !20743
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !20744
  %i.el = load i64, ptr %i.n, align 8, !dbg !20745, !alias.scope !20579, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !20746
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !20746

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !20747, !noalias !20578
  unreachable, !dbg !20747

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !20748, !alias.scope !20579
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !20749

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !20750
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !20580

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !20676
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !20675       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bk, align 1, !dbg !20751, !noalias !20581, !noundef !1032
  %i.ep = sext i8 %.val.i.i.i to i64, !dbg !20752 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !20753 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !20754
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !20675 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !20755
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !20675 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !20756
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !20757
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !20758
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !20758
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !20759
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !20676
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !20676
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !20760
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !20760
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !20761
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !20761
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20762 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !21096

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21097
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21098
  %4 = udiv i16 256, %.rhs.trunc, !dbg !21098
  %.zext = zext nneg i16 %4 to i64, !dbg !21098   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21099
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21100
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21101 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !21102, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21103
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !21104
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21105 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !21105, !alias.scope !20999, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !21106
  call void @llvm.assume(i1 %i.p), !dbg !21107
  %.not.i = icmp eq i64 %i.l, 0, !dbg !21108
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21108

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21109
  %i.r = load ptr, ptr %i.q, align 8, !dbg !21109, !alias.scope !20999, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !21110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !21111
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !21112, !alias.scope !20999
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21113

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !21112
  %i.u = add i64 %i.t, %i.l, !dbg !21112
  store i64 %i.u, ptr %i.n, align 8, !dbg !21112, !alias.scope !20999
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21114 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !21115, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21116
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !21117
  %i.x = load i64, ptr %i.n, align 8, !dbg !21118, !alias.scope !21012, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !21119
  call void @llvm.assume(i1 %i.y), !dbg !21120
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !21121
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21121

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21122
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !21122, !alias.scope !21012, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !21123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !21124
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !21125, !alias.scope !21012
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21126

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !21125
  %i.ad = add i64 %i.ac, %i.v, !dbg !21125
  store i64 %i.ad, ptr %i.n, align 8, !dbg !21125, !alias.scope !21012
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21127
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21128 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !21129, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21130
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !21131
  %i.ah = load i64, ptr %i.n, align 8, !dbg !21132, !alias.scope !21025, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !21133
  call void @llvm.assume(i1 %i.ai), !dbg !21134
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !21135
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21135

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21136
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !21136, !alias.scope !21025, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !21137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !21138
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !21139, !alias.scope !21025
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21140

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !21139
  %i.an = add i64 %i.am, %i.af, !dbg !21139
  store i64 %i.an, ptr %i.n, align 8, !dbg !21139, !alias.scope !21025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !21142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !21144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21145
  store i32 0, ptr %i.f, align 4, !dbg !21146
  call void @llvm.experimental.noalias.scope.decl(metadata !21026), !dbg !21147
  %.not = icmp eq ptr %0, %1, !dbg !21148
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !21149

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !21150 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !21151, !alias.scope !21027
  %.val.i = load i8, ptr %0, align 1, !dbg !21152, !noalias !21026, !noundef !1032
  %i.ap = zext i8 %.val.i to i64, !dbg !21153
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !21154

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21155
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !21155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !21156
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !21157
  %i.as = load i64, ptr %i.ar, align 8, !dbg !21157, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21158
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !21159, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !21160
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !21161
  %i.au = load i64, ptr %i.n, align 8, !dbg !21162, !alias.scope !21040, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !21163
  call void @llvm.assume(i1 %i.av), !dbg !21164
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !21165
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !21165

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21166
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !21166, !alias.scope !21040, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !21167
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !21168
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !21169, !alias.scope !21040
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !21170

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !21169
  %i.ba = add i64 %i.az, %i.as, !dbg !21169
  store i64 %i.ba, ptr %i.n, align 8, !dbg !21169, !alias.scope !21040
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21171 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !21172
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !21172

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !21172

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !21173

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21178
  ret void, !dbg !21179

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !21180 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21043), !dbg !21181
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !21182
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !21173

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 1, !dbg !21183 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !21184, !alias.scope !21044, !noalias !21045
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !21185 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !21186
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !21187
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !21187

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21188
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !21189
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !21190 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterhENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltahlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21191 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21192
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21193
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !21194
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterhENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltahlEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !21199
  %invariant.op248 = add i64 2, %.val.i73, !dbg !21199
  %invariant.op250 = add i64 3, %.val.i73, !dbg !21199
  br label %scalar.ph, !dbg !21199

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !21201 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !21202
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !21203
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !21204, !noalias !21057, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !21205
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !21206, !alias.scope !21058, !noalias !21057
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !21202
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !21203
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !21204, !noalias !21057, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !21205
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !21206, !alias.scope !21058, !noalias !21057
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !21202
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !21203
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !21204, !noalias !21057, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !21205
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !21206, !alias.scope !21058, !noalias !21057
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !21200 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !21202
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !21203
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !21204, !noalias !21057, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !21205
  store i64 %i.db, ptr %i.da, align 8, !dbg !21206, !alias.scope !21058, !noalias !21057
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !21198
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !21199, !llvm.loop !20924

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21208
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21209
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !21210, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21211
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !21212, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21213
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_hENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltahlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !21214
  %i.de = load i64, ptr %i.n, align 8, !dbg !21215, !alias.scope !21071, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !21216
  call void @llvm.assume(i1 %i.df), !dbg !21217
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !21218
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21218

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !21219, !alias.scope !21071, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !21220
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !21221
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !21222, !alias.scope !21071
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21223

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !21222
  %i.dj = add i64 %i.di, %i.dc, !dbg !21222
  store i64 %i.dj, ptr %i.n, align 8, !dbg !21222, !alias.scope !21071
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21224
  %i.dk = load i64, ptr %i.n, align 8, !dbg !21225, !alias.scope !21075, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !21226
  call void @llvm.assume(i1 %i.dl), !dbg !21227
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !21228, !alias.scope !21075, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !21229
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21230
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !21231, !alias.scope !21075
  %i.do = add i64 %.pre.i79, %3, !dbg !21231      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !21231, !alias.scope !21075
  br label %.lr.ph, !dbg !21232

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !21233 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !21232
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !21232

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21234
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !21172
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !21172

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21235
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21236 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !21237 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !21238
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !21238, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21239
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21240
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !21240, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !21241
  %i.ea = zext i8 %i.dy to i64, !dbg !21242       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !21243
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21243

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !21244
  call void @llvm.assume(i1 %i.eb), !dbg !21245
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !21246
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !21247
  %i.ee = lshr i64 %i.ed, 3, !dbg !21247
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !21248   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !21249, !noalias !21089
  %i.eg = load i64, ptr %i.n, align 8, !dbg !21250, !alias.scope !21090, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !21251
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !21251, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !21252, !alias.scope !21090, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !21253
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !21254
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !21255
  %i.el = load i64, ptr %i.n, align 8, !dbg !21256, !alias.scope !21090, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !21257
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21257

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21258, !noalias !21089
  unreachable, !dbg !21258

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !21259, !alias.scope !21090
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21260

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !21261
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21091

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21187
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !21186       ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bk, align 1, !dbg !21262, !noalias !21092, !noundef !1032
  %i.ep = zext i8 %.val.i.i.i to i64, !dbg !21263 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !21264 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !21265
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !21186 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !21266
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !21186 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21267
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21268
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !21269
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !21269
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !21270
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !21187
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !21187
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21271
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !21271
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !21272
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !21272
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21273 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !21607

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !21608
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !21609
  %4 = udiv i16 256, %.rhs.trunc, !dbg !21609
  %.zext = zext nneg i16 %4 to i64, !dbg !21609   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !21611
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21612 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !21613, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !21614
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !21615
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21616 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !21616, !alias.scope !21510, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !21617
  call void @llvm.assume(i1 %i.p), !dbg !21618
  %.not.i = icmp eq i64 %i.l, 0, !dbg !21619
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !21619

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21620
  %i.r = load ptr, ptr %i.q, align 8, !dbg !21620, !alias.scope !21510, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !21621
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !21622
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !21623, !alias.scope !21510
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !21624

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !21623
  %i.u = add i64 %i.t, %i.l, !dbg !21623
  store i64 %i.u, ptr %i.n, align 8, !dbg !21623, !alias.scope !21510
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21625 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !21626, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !21627
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !21628
  %i.x = load i64, ptr %i.n, align 8, !dbg !21629, !alias.scope !21523, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !21630
  call void @llvm.assume(i1 %i.y), !dbg !21631
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !21632
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !21632

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21633
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !21633, !alias.scope !21523, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !21634
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !21635
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !21636, !alias.scope !21523
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !21637

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !21636
  %i.ad = add i64 %i.ac, %i.v, !dbg !21636
  store i64 %i.ad, ptr %i.n, align 8, !dbg !21636, !alias.scope !21523
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21638
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !21639 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !21640, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !21641
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !21642
  %i.ah = load i64, ptr %i.n, align 8, !dbg !21643, !alias.scope !21536, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !21644
  call void @llvm.assume(i1 %i.ai), !dbg !21645
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !21646
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !21646

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21647
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !21647, !alias.scope !21536, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !21648
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !21649
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !21650, !alias.scope !21536
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !21651

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !21650
  %i.an = add i64 %i.am, %i.af, !dbg !21650
  store i64 %i.an, ptr %i.n, align 8, !dbg !21650, !alias.scope !21536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21652
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !21653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !21655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21656
  store i32 0, ptr %i.f, align 4, !dbg !21657
  call void @llvm.experimental.noalias.scope.decl(metadata !21537), !dbg !21658
  %.not = icmp eq ptr %0, %1, !dbg !21659
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !21660

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !21661 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !21662, !alias.scope !21538
  %.val.i = load i32, ptr %0, align 4, !dbg !21663, !noalias !21537, !noundef !1032
  %i.ap = sext i32 %.val.i to i64, !dbg !21664
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !21665

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21666
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !21666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !21667
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !21668
  %i.as = load i64, ptr %i.ar, align 8, !dbg !21668, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21669
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !21670, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !21671
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !21672
  %i.au = load i64, ptr %i.n, align 8, !dbg !21673, !alias.scope !21551, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !21674
  call void @llvm.assume(i1 %i.av), !dbg !21675
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !21676
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !21676

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21677
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !21677, !alias.scope !21551, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !21678
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !21679
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !21680, !alias.scope !21551
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !21681

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !21680
  %i.ba = add i64 %i.az, %i.as, !dbg !21680
  store i64 %i.ba, ptr %i.n, align 8, !dbg !21680, !alias.scope !21551
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21682 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !21683
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !21683

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !21683

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !21684

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21689
  ret void, !dbg !21690

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !21691 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21554), !dbg !21692
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !21693
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !21684

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4, !dbg !21694 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !21695, !alias.scope !21555, !noalias !21556
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !21696 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !21697
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !21698
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !21698

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21699
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !21700
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !21701 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterlENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltallEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !21702 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21703
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !21704
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !21705
end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterlENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltallEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !21710
  %invariant.op248 = add i64 2, %.val.i73, !dbg !21710
  %invariant.op250 = add i64 3, %.val.i73, !dbg !21710
  br label %scalar.ph, !dbg !21710

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !21712 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !21713
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !21714
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !21715, !noalias !21568, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !21716
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !21717, !alias.scope !21569, !noalias !21568
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !21713
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !21714
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !21715, !noalias !21568, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !21716
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !21717, !alias.scope !21569, !noalias !21568
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !21713
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !21714
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !21715, !noalias !21568, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !21716
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !21717, !alias.scope !21569, !noalias !21568
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !21711 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !21713
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !21714
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !21715, !noalias !21568, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !21716
  store i64 %i.db, ptr %i.da, align 8, !dbg !21717, !alias.scope !21569, !noalias !21568
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !21709
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !21710, !llvm.loop !21435

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21719
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !21719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !21720
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !21721, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21722
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !21723, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !21724
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_lENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltallEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !21725
  %i.de = load i64, ptr %i.n, align 8, !dbg !21726, !alias.scope !21582, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !21727
  call void @llvm.assume(i1 %i.df), !dbg !21728
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !21729
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !21729

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !21730, !alias.scope !21582, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !21731
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !21732
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !21733, !alias.scope !21582
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !21734

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !21733
  %i.dj = add i64 %i.di, %i.dc, !dbg !21733
  store i64 %i.dj, ptr %i.n, align 8, !dbg !21733, !alias.scope !21582
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !21735
  %i.dk = load i64, ptr %i.n, align 8, !dbg !21736, !alias.scope !21586, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !21737
  call void @llvm.assume(i1 %i.dl), !dbg !21738
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !21739, !alias.scope !21586, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !21740
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !21741
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !21742, !alias.scope !21586
  %i.do = add i64 %.pre.i79, %3, !dbg !21742      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !21742, !alias.scope !21586
  br label %.lr.ph, !dbg !21743

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !21744 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !21743
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !21743

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21745
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !21683
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !21683

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !21746
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !21747 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !21748 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !21749
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !21749, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !21750
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !21751
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !21751, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !21752
  %i.ea = zext i8 %i.dy to i64, !dbg !21753       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !21754
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !21754

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !21755
  call void @llvm.assume(i1 %i.eb), !dbg !21756
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !21757
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !21758
  %i.ee = lshr i64 %i.ed, 3, !dbg !21758
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !21759   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !21760, !noalias !21600
  %i.eg = load i64, ptr %i.n, align 8, !dbg !21761, !alias.scope !21601, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !21762
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !21762, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !21763, !alias.scope !21601, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !21764
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !21765
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !21766
  %i.el = load i64, ptr %i.n, align 8, !dbg !21767, !alias.scope !21601, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !21768
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !21768

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !21769, !noalias !21600
  unreachable, !dbg !21769

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !21770, !alias.scope !21601
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !21771

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !21772
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !21602

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !21698
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !21697       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bk, align 4, !dbg !21773, !noalias !21603, !noundef !1032
  %i.ep = sext i32 %.val.i.i.i to i64, !dbg !21774 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !21775 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !21776
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !21697 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !21777
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !21697 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !21778
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !21779
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !21780
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !21780
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !21781
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !21698
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !21698
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !21782
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !21782
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !21783
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !21783
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21784 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !22118

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22119
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22120
  %4 = udiv i16 256, %.rhs.trunc, !dbg !22120
  %.zext = zext nneg i16 %4 to i64, !dbg !22120   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22122
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22123 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !22124, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22125
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !22126
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22127 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !22127, !alias.scope !22021, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !22128
  call void @llvm.assume(i1 %i.p), !dbg !22129
  %.not.i = icmp eq i64 %i.l, 0, !dbg !22130
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22130

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22131
  %i.r = load ptr, ptr %i.q, align 8, !dbg !22131, !alias.scope !22021, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !22132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !22133
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !22134, !alias.scope !22021
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22135

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !22134
  %i.u = add i64 %i.t, %i.l, !dbg !22134
  store i64 %i.u, ptr %i.n, align 8, !dbg !22134, !alias.scope !22021
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22136 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !22137, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22138
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !22139
  %i.x = load i64, ptr %i.n, align 8, !dbg !22140, !alias.scope !22034, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !22141
  call void @llvm.assume(i1 %i.y), !dbg !22142
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !22143
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22143

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22144
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22144, !alias.scope !22034, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !22145
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !22146
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !22147, !alias.scope !22034
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22148

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !22147
  %i.ad = add i64 %i.ac, %i.v, !dbg !22147
  store i64 %i.ad, ptr %i.n, align 8, !dbg !22147, !alias.scope !22034
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22149
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22150 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !22151, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22152
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !22153
  %i.ah = load i64, ptr %i.n, align 8, !dbg !22154, !alias.scope !22047, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !22155
  call void @llvm.assume(i1 %i.ai), !dbg !22156
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !22157
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22157

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22158
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !22158, !alias.scope !22047, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !22159
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !22160
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !22161, !alias.scope !22047
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22162

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !22161
  %i.an = add i64 %i.am, %i.af, !dbg !22161
  store i64 %i.an, ptr %i.n, align 8, !dbg !22161, !alias.scope !22047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !22164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !22166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22167
  store i32 0, ptr %i.f, align 4, !dbg !22168
  call void @llvm.experimental.noalias.scope.decl(metadata !22048), !dbg !22169
  %.not = icmp eq ptr %0, %1, !dbg !22170
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !22171

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !22172 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !22173, !alias.scope !22049
  %.val.i = load i32, ptr %0, align 4, !dbg !22174, !noalias !22048, !noundef !1032
  %i.ap = sext i32 %.val.i to i64, !dbg !22175
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !22176

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22177
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !22177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !22178
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22179
  %i.as = load i64, ptr %i.ar, align 8, !dbg !22179, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22180
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !22181, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !22182
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !22183
  %i.au = load i64, ptr %i.n, align 8, !dbg !22184, !alias.scope !22062, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !22185
  call void @llvm.assume(i1 %i.av), !dbg !22186
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !22187
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !22187

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22188
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !22188, !alias.scope !22062, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !22189
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !22190
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !22191, !alias.scope !22062
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !22192

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !22191
  %i.ba = add i64 %i.az, %i.as, !dbg !22191
  store i64 %i.ba, ptr %i.n, align 8, !dbg !22191, !alias.scope !22062
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22193 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !22194
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !22194

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !22194

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !22195

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22200
  ret void, !dbg !22201

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !22202 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22065), !dbg !22203
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !22204
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !22195

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4, !dbg !22205 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !22206, !alias.scope !22066, !noalias !22067
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !22207 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !22208
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !22209
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !22209

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22210
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !22211
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !22212 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltamlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22214
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22215
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !22216
end_hunk_13
begin_hunk_14_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltamlEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !22221
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22221
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22221
  br label %scalar.ph, !dbg !22221

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22223 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !22224
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !22225
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !22226, !noalias !22079, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22227
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !22228, !alias.scope !22080, !noalias !22079
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22224
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22225
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !22226, !noalias !22079, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22227
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !22228, !alias.scope !22080, !noalias !22079
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22224
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22225
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !22226, !noalias !22079, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22227
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !22228, !alias.scope !22080, !noalias !22079
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !22222 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22224
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22225
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !22226, !noalias !22079, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22227
  store i64 %i.db, ptr %i.da, align 8, !dbg !22228, !alias.scope !22080, !noalias !22079
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !22220
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22221, !llvm.loop !21946

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22230
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22231
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !22232, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22233
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !22234, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22235
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_mENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltamlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !22236
  %i.de = load i64, ptr %i.n, align 8, !dbg !22237, !alias.scope !22093, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !22238
  call void @llvm.assume(i1 %i.df), !dbg !22239
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !22240
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22240

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !22241, !alias.scope !22093, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !22242
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !22243
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !22244, !alias.scope !22093
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22245

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !22244
  %i.dj = add i64 %i.di, %i.dc, !dbg !22244
  store i64 %i.dj, ptr %i.n, align 8, !dbg !22244, !alias.scope !22093
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22246
  %i.dk = load i64, ptr %i.n, align 8, !dbg !22247, !alias.scope !22097, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !22248
  call void @llvm.assume(i1 %i.dl), !dbg !22249
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !22250, !alias.scope !22097, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !22251
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22252
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !22253, !alias.scope !22097
  %i.do = add i64 %.pre.i79, %3, !dbg !22253      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !22253, !alias.scope !22097
  br label %.lr.ph, !dbg !22254

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !22255 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !22254
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !22254

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22256
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !22194
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !22194

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22257
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22258 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !22259 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !22260
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !22260, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22261
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22262
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !22262, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !22263
  %i.ea = zext i8 %i.dy to i64, !dbg !22264       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !22265
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22265

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !22266
  call void @llvm.assume(i1 %i.eb), !dbg !22267
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !22268
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !22269
  %i.ee = lshr i64 %i.ed, 3, !dbg !22269
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !22270   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !22271, !noalias !22111
  %i.eg = load i64, ptr %i.n, align 8, !dbg !22272, !alias.scope !22112, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !22273
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !22273, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !22274, !alias.scope !22112, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !22275
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !22276
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !22277
  %i.el = load i64, ptr %i.n, align 8, !dbg !22278, !alias.scope !22112, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !22279
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22279

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22280, !noalias !22111
  unreachable, !dbg !22280

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !22281, !alias.scope !22112
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22282

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !22283
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22113

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22209
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !22208       ; 2 uses
  %.val.i.i.i = load i32, ptr %i.bk, align 4, !dbg !22284, !noalias !22114, !noundef !1032
  %i.ep = sext i32 %.val.i.i.i to i64, !dbg !22285 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !22286 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !22287
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !22208 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !22288
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !22208 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22289
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22290
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !22291
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !22291
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !22292
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !22209
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !22209
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22293
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !22293
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !22294
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !22294
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22295 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !22629

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !22630
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !22631
  %4 = udiv i16 256, %.rhs.trunc, !dbg !22631
  %.zext = zext nneg i16 %4 to i64, !dbg !22631   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !22633
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22634 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !22635, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !22636
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !22637
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22638 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !22638, !alias.scope !22532, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !22639
  call void @llvm.assume(i1 %i.p), !dbg !22640
  %.not.i = icmp eq i64 %i.l, 0, !dbg !22641
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !22641

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22642
  %i.r = load ptr, ptr %i.q, align 8, !dbg !22642, !alias.scope !22532, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !22643
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !22644
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !22645, !alias.scope !22532
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !22646

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !22645
  %i.u = add i64 %i.t, %i.l, !dbg !22645
  store i64 %i.u, ptr %i.n, align 8, !dbg !22645, !alias.scope !22532
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22647 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !22648, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !22649
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !22650
  %i.x = load i64, ptr %i.n, align 8, !dbg !22651, !alias.scope !22545, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !22652
  call void @llvm.assume(i1 %i.y), !dbg !22653
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !22654
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !22654

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22655
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22655, !alias.scope !22545, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !22656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !22657
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !22658, !alias.scope !22545
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !22659

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !22658
  %i.ad = add i64 %i.ac, %i.v, !dbg !22658
  store i64 %i.ad, ptr %i.n, align 8, !dbg !22658, !alias.scope !22545
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22660
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !22661 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !22662, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !22663
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !22664
  %i.ah = load i64, ptr %i.n, align 8, !dbg !22665, !alias.scope !22558, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !22666
  call void @llvm.assume(i1 %i.ai), !dbg !22667
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !22668
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !22668

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22669
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !22669, !alias.scope !22558, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !22670
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !22671
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !22672, !alias.scope !22558
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !22673

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !22672
  %i.an = add i64 %i.am, %i.af, !dbg !22672
  store i64 %i.an, ptr %i.n, align 8, !dbg !22672, !alias.scope !22558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !22675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !22677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22678
  store i32 0, ptr %i.f, align 4, !dbg !22679
  call void @llvm.experimental.noalias.scope.decl(metadata !22559), !dbg !22680
  %.not = icmp eq ptr %0, %1, !dbg !22681
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !22682

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !22683 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !22684, !alias.scope !22560
  %.val.i = load i16, ptr %0, align 2, !dbg !22685, !noalias !22559, !noundef !1032
  %i.ap = sext i16 %.val.i to i64, !dbg !22686
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !22687

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22688
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !22688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !22689
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22690
  %i.as = load i64, ptr %i.ar, align 8, !dbg !22690, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22691
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !22692, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !22693
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !22694
  %i.au = load i64, ptr %i.n, align 8, !dbg !22695, !alias.scope !22573, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !22696
  call void @llvm.assume(i1 %i.av), !dbg !22697
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !22698
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !22698

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22699
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !22699, !alias.scope !22573, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !22700
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !22701
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !22702, !alias.scope !22573
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !22703

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !22702
  %i.ba = add i64 %i.az, %i.as, !dbg !22702
  store i64 %i.ba, ptr %i.n, align 8, !dbg !22702, !alias.scope !22573
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22704 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !22705
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !22705

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !22705

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !22706

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22711
  ret void, !dbg !22712

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !22713 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22576), !dbg !22714
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !22715
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !22706

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2, !dbg !22716 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !22717, !alias.scope !22577, !noalias !22578
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !22718 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !22719
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !22720
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !22720

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22721
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !22722
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !22723 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItersENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaslEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !22724 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22725
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !22726
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !22727
end_hunk_14
begin_hunk_15_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItersENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaslEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !22732
  %invariant.op248 = add i64 2, %.val.i73, !dbg !22732
  %invariant.op250 = add i64 3, %.val.i73, !dbg !22732
  br label %scalar.ph, !dbg !22732

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !22734 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !22735
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !22736
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !22737, !noalias !22590, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !22738
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !22739, !alias.scope !22591, !noalias !22590
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !22735
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !22736
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !22737, !noalias !22590, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !22738
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !22739, !alias.scope !22591, !noalias !22590
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !22735
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !22736
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !22737, !noalias !22590, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !22738
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !22739, !alias.scope !22591, !noalias !22590
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !22733 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !22735
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !22736
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !22737, !noalias !22590, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !22738
  store i64 %i.db, ptr %i.da, align 8, !dbg !22739, !alias.scope !22591, !noalias !22590
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !22731
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !22732, !llvm.loop !22457

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22741
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !22741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !22742
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !22743, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22744
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !22745, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !22746
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_sENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaslEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !22747
  %i.de = load i64, ptr %i.n, align 8, !dbg !22748, !alias.scope !22604, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !22749
  call void @llvm.assume(i1 %i.df), !dbg !22750
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !22751
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !22751

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !22752, !alias.scope !22604, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !22753
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !22754
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !22755, !alias.scope !22604
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !22756

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !22755
  %i.dj = add i64 %i.di, %i.dc, !dbg !22755
  store i64 %i.dj, ptr %i.n, align 8, !dbg !22755, !alias.scope !22604
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !22757
  %i.dk = load i64, ptr %i.n, align 8, !dbg !22758, !alias.scope !22608, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !22759
  call void @llvm.assume(i1 %i.dl), !dbg !22760
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !22761, !alias.scope !22608, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !22762
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !22763
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !22764, !alias.scope !22608
  %i.do = add i64 %.pre.i79, %3, !dbg !22764      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !22764, !alias.scope !22608
  br label %.lr.ph, !dbg !22765

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !22766 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !22765
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !22765

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22767
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !22705
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !22705

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !22768
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !22769 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !22770 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !22771
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !22771, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !22772
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !22773
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !22773, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !22774
  %i.ea = zext i8 %i.dy to i64, !dbg !22775       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !22776
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !22776

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !22777
  call void @llvm.assume(i1 %i.eb), !dbg !22778
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !22779
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !22780
  %i.ee = lshr i64 %i.ed, 3, !dbg !22780
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !22781   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !22782, !noalias !22622
  %i.eg = load i64, ptr %i.n, align 8, !dbg !22783, !alias.scope !22623, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !22784
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !22784, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !22785, !alias.scope !22623, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !22786
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !22787
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !22788
  %i.el = load i64, ptr %i.n, align 8, !dbg !22789, !alias.scope !22623, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !22790
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !22790

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !22791, !noalias !22622
  unreachable, !dbg !22791

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !22792, !alias.scope !22623
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !22793

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !22794
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !22624

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !22720
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !22719       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bk, align 2, !dbg !22795, !noalias !22625, !noundef !1032
  %i.ep = sext i16 %.val.i.i.i to i64, !dbg !22796 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !22797 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !22798
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !22719 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !22799
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !22719 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !22800
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !22801
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !22802
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !22802
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !22803
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !22720
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !22720
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !22804
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !22804
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !22805
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !22805
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22806 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !23140

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !23141
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !23142
  %4 = udiv i16 256, %.rhs.trunc, !dbg !23142
  %.zext = zext nneg i16 %4 to i64, !dbg !23142   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !23144
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23145 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !23146, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !23147
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !23148
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23149 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !23149, !alias.scope !23043, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !23150
  call void @llvm.assume(i1 %i.p), !dbg !23151
  %.not.i = icmp eq i64 %i.l, 0, !dbg !23152
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !23152

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23153
  %i.r = load ptr, ptr %i.q, align 8, !dbg !23153, !alias.scope !23043, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !23154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !23155
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !23156, !alias.scope !23043
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23157

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !23156
  %i.u = add i64 %i.t, %i.l, !dbg !23156
  store i64 %i.u, ptr %i.n, align 8, !dbg !23156, !alias.scope !23043
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23158 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !23159, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !23160
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !23161
  %i.x = load i64, ptr %i.n, align 8, !dbg !23162, !alias.scope !23056, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !23163
  call void @llvm.assume(i1 %i.y), !dbg !23164
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !23165
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !23165

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23166
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !23166, !alias.scope !23056, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !23167
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !23168
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !23169, !alias.scope !23056
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !23170

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !23169
  %i.ad = add i64 %i.ac, %i.v, !dbg !23169
  store i64 %i.ad, ptr %i.n, align 8, !dbg !23169, !alias.scope !23056
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23171
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23172 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !23173, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !23174
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !23175
  %i.ah = load i64, ptr %i.n, align 8, !dbg !23176, !alias.scope !23069, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !23177
  call void @llvm.assume(i1 %i.ai), !dbg !23178
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !23179
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !23179

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23180
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !23180, !alias.scope !23069, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !23181
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !23182
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !23183, !alias.scope !23069
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !23184

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !23183
  %i.an = add i64 %i.am, %i.af, !dbg !23183
  store i64 %i.an, ptr %i.n, align 8, !dbg !23183, !alias.scope !23069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !23186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !23188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23189
  store i32 0, ptr %i.f, align 4, !dbg !23190
  call void @llvm.experimental.noalias.scope.decl(metadata !23070), !dbg !23191
  %.not = icmp eq ptr %0, %1, !dbg !23192
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !23193

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !23194 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !23195, !alias.scope !23071
  %.val.i = load i16, ptr %0, align 2, !dbg !23196, !noalias !23070, !noundef !1032
  %i.ap = zext i16 %.val.i to i64, !dbg !23197
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !23198

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23199
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !23199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !23200
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !23201
  %i.as = load i64, ptr %i.ar, align 8, !dbg !23201, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23202
  %i.at = icmp ult i64 %i.as, 11
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !23203, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.as, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !23204
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.as), !dbg !23205
  %i.au = load i64, ptr %i.n, align 8, !dbg !23206, !alias.scope !23084, !noundef !1032 ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1, !dbg !23207
  call void @llvm.assume(i1 %i.av), !dbg !23208
  %.not.i68 = icmp eq i64 %i.as, 0, !dbg !23209
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !23209

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23210
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !23210, !alias.scope !23084, !nonnull !1032, !noundef !1032
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !23211
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.e, i64 %i.as, i1 false), !dbg !23212
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !23213, !alias.scope !23084
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !23214

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.az = phi i64 [ %.pre.i69, %bb.o ], [ %i.au, %bb.n ], !dbg !23213
  %i.ba = add i64 %i.az, %i.as, !dbg !23213
  store i64 %i.ba, ptr %i.n, align 8, !dbg !23213, !alias.scope !23084
  %i.bb = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23215 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !23216
  br i1 %i.bc, label %._crit_edge136, label %.preheader.lr.ph, !dbg !23216

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !23216

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bt, %._crit_edge ]
  %i.bj = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !23217

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23222
  ret void, !dbg !23223

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bl, %bb.ab ], [ 256, %.preheader ]
  %i.bk = phi ptr [ %i.bn, %bb.ab ], [ %i.bj, %.preheader ] ; 4 uses
  %i.bl = add nsw i64 %.sroa.7.0121, -1, !dbg !23224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23087), !dbg !23225
  %i.bm = icmp eq ptr %i.bk, %1, !dbg !23226
  br i1 %i.bm, label %.split.us, label %bb.p, !dbg !23217

bb.p:                                             ; preds = %.preheader.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2, !dbg !23227 ; 3 uses
  store ptr %i.bn, ptr %i.j, align 8, !dbg !23228, !alias.scope !23088, !noalias !23089
  %i.bo = udiv i64 %.sroa.4.0122, %.zext, !dbg !23229 ; 3 uses
  %i.bp = urem i64 %.sroa.4.0122, %.zext, !dbg !23230
  %i.bq = icmp samesign ult i64 %i.bo, 4, !dbg !23231
  br i1 %i.bq, label %bb.ab, label %bb.aa, !dbg !23231

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bn, %bb.ab ], [ %i.bk, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %i.ep, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.br = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23232
  %i.bs = sub i64 %.sroa.023.0134, %i.br, !dbg !23233
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 256), !dbg !23234 ; 2 uses
  %i.bt = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItertENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltatlEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23235 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23236
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !23237
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd), !dbg !23238
end_hunk_15
begin_hunk_16_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItertENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltatlEs_0EEBa_:bb.a
  %invariant.op = add i64 1, %.val.i73, !dbg !23243
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23243
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23243
  br label %scalar.ph, !dbg !23243

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cy, %scalar.ph ] ; 5 uses
  %i.co = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23245 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.co, !dbg !23246
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.co, !dbg !23247
  %.val10.i = load i64, ptr %i.cp, align 8, !dbg !23248, !noalias !23101, !noundef !1032
  %i.cr = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23249
  store i64 %i.cr, ptr %i.cq, align 8, !dbg !23250, !alias.scope !23102, !noalias !23101
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23246
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23247
  %.val10.i.1 = load i64, ptr %i.cs, align 8, !dbg !23248, !noalias !23101, !noundef !1032
  %i.cu = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23249
  store i64 %i.cu, ptr %i.ct, align 8, !dbg !23250, !alias.scope !23102, !noalias !23101
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23246
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23247
  %.val10.i.2 = load i64, ptr %i.cv, align 8, !dbg !23248, !noalias !23101, !noundef !1032
  %i.cx = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23249
  store i64 %i.cx, ptr %i.cw, align 8, !dbg !23250, !alias.scope !23102, !noalias !23101
  %i.cy = add nuw i64 %.sroa.0.012.i, 4, !dbg !23244 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23246
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23247
  %.val10.i.3 = load i64, ptr %i.cz, align 8, !dbg !23248, !noalias !23101, !noundef !1032
  %i.db = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23249
  store i64 %i.db, ptr %i.da, align 8, !dbg !23250, !alias.scope !23102, !noalias !23101
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bv, !dbg !23242
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23243, !llvm.loop !22968

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23252
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23253
  %i.dc = load i64, ptr %i.bh, align 8, !dbg !23254, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23255
  %i.dd = icmp ult i64 %i.dc, 11
  br i1 %i.dd, label %bb.r, label %bb.q, !dbg !23256, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dc, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23257
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapIBY_tENCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltatlEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dc), !dbg !23258
  %i.de = load i64, ptr %i.n, align 8, !dbg !23259, !alias.scope !23115, !noundef !1032 ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1, !dbg !23260
  call void @llvm.assume(i1 %i.df), !dbg !23261
  %.not.i75 = icmp eq i64 %i.dc, 0, !dbg !23262
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23262

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bi, align 8, !dbg !23263, !alias.scope !23115, !nonnull !1032, !noundef !1032
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de, !dbg !23264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.b, i64 %i.dc, i1 false), !dbg !23265
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !23266, !alias.scope !23115
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23267

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.di = phi i64 [ %.pre.i76, %bb.s ], [ %i.de, %bb.r ], !dbg !23266
  %i.dj = add i64 %i.di, %i.dc, !dbg !23266
  store i64 %i.dj, ptr %i.n, align 8, !dbg !23266, !alias.scope !23115
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23268
  %i.dk = load i64, ptr %i.n, align 8, !dbg !23269, !alias.scope !23119, !noundef !1032 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1, !dbg !23270
  call void @llvm.assume(i1 %i.dl), !dbg !23271
  %i.dm = load ptr, ptr %i.bi, align 8, !dbg !23272, !alias.scope !23119, !nonnull !1032, !noundef !1032
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk, !dbg !23273
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23274
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !23275, !alias.scope !23119
  %i.do = add i64 %.pre.i79, %3, !dbg !23275      ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !dbg !23275, !alias.scope !23119
  br label %.lr.ph, !dbg !23276

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.dp = phi i64 [ %i.en, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.do, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dq, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.dt, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !23277 ; 3 uses
  %i.dr = icmp eq i64 %.sroa.016.0131, 0, !dbg !23276
  br i1 %i.dr, label %._crit_edge, label %bb.t, !dbg !23276

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23278
  %i.ds = icmp eq i64 %i.bt, 0, !dbg !23216
  br i1 %i.ds, label %._crit_edge136, label %.preheader, !dbg !23216

bb.t:                                             ; preds = %.lr.ph
  %i.dt = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23279
  %i.du = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23280 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.dq, %.zext, !dbg !23281 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dv, 257, !dbg !23282
  br i1 %i.dw, label %bb.v, label %bb.u, !dbg !23282, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.du, i64 noundef %i.dv, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23283
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23284
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !23284, !noundef !1032 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du, !dbg !23285
  %i.ea = zext i8 %i.dy to i64, !dbg !23286       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dy, 0, !dbg !23287
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23287

bb.w:                                             ; preds = %bb.v
  %i.eb = icmp sgt i64 %i.dp, -1, !dbg !23288
  call void @llvm.assume(i1 %i.eb), !dbg !23289
  %i.ec = mul nuw nsw i64 %i.ea, %.zext, !dbg !23290
  %i.ed = add nuw nsw i64 %i.ec, 7, !dbg !23291
  %i.ee = lshr i64 %i.ed, 3, !dbg !23291
  %i.ef = add nuw i64 %i.dp, %i.ee, !dbg !23292   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i8 noundef 0), !dbg !23293, !noalias !23133
  %i.eg = load i64, ptr %i.n, align 8, !dbg !23294, !alias.scope !23134, !noundef !1032 ; 4 uses
  %i.eh = icmp ugt i64 %i.dp, %i.eg, !dbg !23295
  br i1 %i.eh, label %bb.y, label %bb.x, !dbg !23295, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %i.bi, align 8, !dbg !23296, !alias.scope !23134, !nonnull !1032, !noundef !1032
  %i.ej = sub nuw i64 %i.eg, %i.dp, !dbg !23297
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dp, !dbg !23298
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.ea, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !dbg !23299
  %i.el = load i64, ptr %i.n, align 8, !dbg !23300, !alias.scope !23134, !noundef !1032 ; 2 uses
  %i.em = icmp ugt i64 %i.ef, %i.el, !dbg !23301
  br i1 %i.em, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23301

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.eg, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23302, !noalias !23133
  unreachable, !dbg !23302

bb.z:                                             ; preds = %bb.x
  store i64 %i.ef, ptr %i.n, align 8, !dbg !23303, !alias.scope !23134
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23304

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.en = phi i64 [ %i.dp, %bb.v ], [ %i.el, %bb.x ], [ %i.ef, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dq, %3, !dbg !23305
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23135

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !23231
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.eo = icmp eq i64 %i.bp, 0, !dbg !23230       ; 2 uses
  %.val.i.i.i = load i16, ptr %i.bk, align 2, !dbg !23306, !noalias !23136, !noundef !1032
  %i.ep = zext i16 %.val.i.i.i to i64, !dbg !23307 ; 3 uses
  %i.eq = sub nsw i64 %i.ep, %.sroa.0.2125, !dbg !23308 ; 5 uses
  %i.er = call i64 @llvm.smax.i64(i64 %i.eq, i64 %.sroa.012.0124), !dbg !23309
  %.sroa.0.0.i83 = select i1 %i.eo, i64 %i.eq, i64 %i.er, !dbg !23230 ; 2 uses
  %i.es = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.sroa.084.0123), !dbg !23310
  %.sroa.0.0.i82 = select i1 %i.eo, i64 %i.eq, i64 %i.es, !dbg !23230 ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23311
  %i.eu = sub nsw i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23312
  %i.ev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 false), !dbg !23313
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !23313
  %i.ex = sub nuw nsw i8 64, %i.ew, !dbg !23314
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bo, !dbg !23231
  store i8 %i.ex, ptr %i.ey, align 1, !dbg !23231
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23315
  store i64 %i.eq, ptr %i.ez, align 8, !dbg !23315
  %i.fa = icmp eq i64 %i.bl, 0, !dbg !23316
  br i1 %i.fa, label %.split.us, label %.preheader.split, !dbg !23316
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23317 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !23645

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !23646
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !23647
  %4 = udiv i16 256, %.rhs.trunc, !dbg !23647
  %.zext = zext nneg i16 %4 to i64, !dbg !23647   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !23649
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23650 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !23651, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !23652
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !23653
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23654 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !23654, !alias.scope !23548, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !23655
  call void @llvm.assume(i1 %i.p), !dbg !23656
  %.not.i = icmp eq i64 %i.l, 0, !dbg !23657
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !23657

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23658
  %i.r = load ptr, ptr %i.q, align 8, !dbg !23658, !alias.scope !23548, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !23659
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !23660
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !23661, !alias.scope !23548
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !23662

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !23661
  %i.u = add i64 %i.t, %i.l, !dbg !23661
  store i64 %i.u, ptr %i.n, align 8, !dbg !23661, !alias.scope !23548
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23663 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !23664, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !23665
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !23666
  %i.x = load i64, ptr %i.n, align 8, !dbg !23667, !alias.scope !23561, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !23668
  call void @llvm.assume(i1 %i.y), !dbg !23669
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !23670
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !23670

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23671
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !23671, !alias.scope !23561, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !23672
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !23673
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !23674, !alias.scope !23561
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !23675

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !23674
  %i.ad = add i64 %i.ac, %i.v, !dbg !23674
  store i64 %i.ad, ptr %i.n, align 8, !dbg !23674, !alias.scope !23561
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23676
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !23677 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !23678, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !23679
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !23680
  %i.ah = load i64, ptr %i.n, align 8, !dbg !23681, !alias.scope !23574, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !23682
  call void @llvm.assume(i1 %i.ai), !dbg !23683
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !23684
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !23684

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23685
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !23685, !alias.scope !23574, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !23686
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !23687
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !23688, !alias.scope !23574
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !23689

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !23688
  %i.an = add i64 %i.am, %i.af, !dbg !23688
  store i64 %i.an, ptr %i.n, align 8, !dbg !23688, !alias.scope !23574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23690
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !23691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !23693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23694
  store i32 0, ptr %i.f, align 4, !dbg !23695
  call void @llvm.experimental.noalias.scope.decl(metadata !23575), !dbg !23696
  %.not = icmp eq ptr %0, %1, !dbg !23697
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !23698

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23699 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !23700, !alias.scope !23576
  %.val.i = load i64, ptr %0, align 8, !dbg !23701, !noalias !23575, !noundef !1032
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !23702

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %.val.i, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23703
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !23703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !23704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !23705
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !23705, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23706
  %i.as = icmp ult i64 %i.ar, 11
  br i1 %i.as, label %bb.n, label %bb.m, !dbg !23707, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !23708
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar), !dbg !23709
  %i.at = load i64, ptr %i.n, align 8, !dbg !23710, !alias.scope !23589, !noundef !1032 ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1, !dbg !23711
  call void @llvm.assume(i1 %i.au), !dbg !23712
  %.not.i68 = icmp eq i64 %i.ar, 0, !dbg !23713
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !23713

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23714
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !23714, !alias.scope !23589, !nonnull !1032, !noundef !1032
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at, !dbg !23715
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.e, i64 %i.ar, i1 false), !dbg !23716
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !23717, !alias.scope !23589
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !23718

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.ay = phi i64 [ %.pre.i69, %bb.o ], [ %i.at, %bb.n ], !dbg !23717
  %i.az = add i64 %i.ay, %i.ar, !dbg !23717
  store i64 %i.az, ptr %i.n, align 8, !dbg !23717, !alias.scope !23589
  %i.ba = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23719 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0, !dbg !23720
  br i1 %i.bb, label %._crit_edge136, label %.preheader.lr.ph, !dbg !23720

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !23720

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.ba, %.preheader.lr.ph ], [ %i.bs, %._crit_edge ]
  %i.bi = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !23721

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23726
  ret void, !dbg !23727

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.er, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bk, %bb.ab ], [ 256, %.preheader ]
  %i.bj = phi ptr [ %i.bm, %bb.ab ], [ %i.bi, %.preheader ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0121, -1, !dbg !23728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23592), !dbg !23729
  %i.bl = icmp eq ptr %i.bj, %1, !dbg !23730
  br i1 %i.bl, label %.split.us, label %bb.p, !dbg !23721

bb.p:                                             ; preds = %.preheader.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !23731 ; 3 uses
  store ptr %i.bm, ptr %i.j, align 8, !dbg !23732, !alias.scope !23593, !noalias !23594
  %i.bn = udiv i64 %.sroa.4.0122, %.zext, !dbg !23733 ; 3 uses
  %i.bo = urem i64 %.sroa.4.0122, %.zext, !dbg !23734
  %i.bp = icmp samesign ult i64 %i.bn, 4, !dbg !23735
  br i1 %i.bp, label %bb.ab, label %bb.aa, !dbg !23735

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bm, %bb.ab ], [ %i.bj, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bq = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23736
  %i.br = sub i64 %.sroa.023.0134, %i.bq, !dbg !23737
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 256), !dbg !23738 ; 2 uses
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltaxxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !23739 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23740
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !23741
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bc), !dbg !23742
  call void @llvm.experimental.noalias.scope.decl(metadata !23601), !dbg !23743
end_hunk_16
begin_hunk_17_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterxENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltaxxEs_0EEBa_:bb.a
scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i73, !dbg !23747
  %invariant.op248 = add i64 2, %.val.i73, !dbg !23747
  %invariant.op250 = add i64 3, %.val.i73, !dbg !23747
  br label %scalar.ph, !dbg !23747

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i = phi i64 [ %.sroa.0.012.i.unr, %scalar.ph.preheader.new ], [ %i.cx, %scalar.ph ] ; 5 uses
  %i.cn = add i64 %.sroa.0.012.i, %.val.i73, !dbg !23749 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cn, !dbg !23750
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %i.cn, !dbg !23751
  %.val10.i = load i64, ptr %i.co, align 8, !dbg !23752, !noalias !23606, !noundef !1032
  %i.cq = sub i64 %.val10.i, %.us-phi126.ph, !dbg !23753
  store i64 %i.cq, ptr %i.cp, align 8, !dbg !23754, !alias.scope !23607, !noalias !23606
  %.reass = add i64 %.sroa.0.012.i, %invariant.op ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass, !dbg !23750
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass, !dbg !23751
  %.val10.i.1 = load i64, ptr %i.cr, align 8, !dbg !23752, !noalias !23606, !noundef !1032
  %i.ct = sub i64 %.val10.i.1, %.us-phi126.ph, !dbg !23753
  store i64 %i.ct, ptr %i.cs, align 8, !dbg !23754, !alias.scope !23607, !noalias !23606
  %.reass249 = add i64 %.sroa.0.012.i, %invariant.op248 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass249, !dbg !23750
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass249, !dbg !23751
  %.val10.i.2 = load i64, ptr %i.cu, align 8, !dbg !23752, !noalias !23606, !noundef !1032
  %i.cw = sub i64 %.val10.i.2, %.us-phi126.ph, !dbg !23753
  store i64 %i.cw, ptr %i.cv, align 8, !dbg !23754, !alias.scope !23607, !noalias !23606
  %i.cx = add nuw i64 %.sroa.0.012.i, 4, !dbg !23748 ; 2 uses
  %.reass251 = add i64 %.sroa.0.012.i, %invariant.op250 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.reass251, !dbg !23750
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i, i64 %.reass251, !dbg !23751
  %.val10.i.3 = load i64, ptr %i.cy, align 8, !dbg !23752, !noalias !23606, !noundef !1032
  %i.da = sub i64 %.val10.i.3, %.us-phi126.ph, !dbg !23753
  store i64 %i.da, ptr %i.cz, align 8, !dbg !23754, !alias.scope !23607, !noalias !23606
  %exitcond.not.i.3 = icmp eq i64 %i.cx, %i.bu, !dbg !23746
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit, label %scalar.ph, !dbg !23747, !llvm.loop !23475

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23756
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.us-phi126.ph), !dbg !23756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 8 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !23757
  %i.db = load i64, ptr %i.bg, align 8, !dbg !23758, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23759
  %i.dc = icmp ult i64 %i.db, 11
  br i1 %i.dc, label %bb.r, label %bb.q, !dbg !23760, !prof !1072

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.db, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #44, !dbg !23761
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterxEINtB10_7IterMutyEEINtB6_7ZipImplBX_B1p_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRxQyENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtB8_3map3MapBX_NCINvNtNtNtNtB3l_5arrow5write9primitive5basic12encode_deltaxxEs_0EE0E0EB3l_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.db), !dbg !23762
  %i.dd = load i64, ptr %i.n, align 8, !dbg !23763, !alias.scope !23620, !noundef !1032 ; 3 uses
  %i.de = icmp sgt i64 %i.dd, -1, !dbg !23764
  call void @llvm.assume(i1 %i.de), !dbg !23765
  %.not.i75 = icmp eq i64 %i.db, 0, !dbg !23766
  br i1 %.not.i75, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, label %bb.s, !dbg !23766

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.bh, align 8, !dbg !23767, !alias.scope !23620, !nonnull !1032, !noundef !1032
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd, !dbg !23768
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull readonly align 1 %i.b, i64 %i.db, i1 false), !dbg !23769
  %.pre.i76 = load i64, ptr %i.n, align 8, !dbg !23770, !alias.scope !23620
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, !dbg !23771

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77: ; preds = %bb.r, %bb.s
  %i.dh = phi i64 [ %.pre.i76, %bb.s ], [ %i.dd, %bb.r ], !dbg !23770
  %i.di = add i64 %i.dh, %i.db, !dbg !23770
  store i64 %i.di, ptr %i.n, align 8, !dbg !23770, !alias.scope !23620
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3), !dbg !23772
  %i.dj = load i64, ptr %i.n, align 8, !dbg !23773, !alias.scope !23624, !noundef !1032 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, -1, !dbg !23774
  call void @llvm.assume(i1 %i.dk), !dbg !23775
  %i.dl = load ptr, ptr %i.bh, align 8, !dbg !23776, !alias.scope !23624, !nonnull !1032, !noundef !1032
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj, !dbg !23777
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull readonly align 4 %i.f, i64 %3, i1 false), !dbg !23778
  %.pre.i79 = load i64, ptr %i.n, align 8, !dbg !23779, !alias.scope !23624
  %i.dn = add i64 %.pre.i79, %3, !dbg !23779      ; 2 uses
  store i64 %i.dn, ptr %i.n, align 8, !dbg !23779, !alias.scope !23624
  br label %.lr.ph, !dbg !23780

.lr.ph:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit
  %i.do = phi i64 [ %i.em, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %i.dn, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 7 uses
  %.sroa.027.0132 = phi i64 [ %i.dp, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 3 uses
  %.sroa.016.0131 = phi i64 [ %i.ds, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit ], [ %.sroa.0.0.i72, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit77 ] ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.027.0132, 1, !dbg !23781 ; 3 uses
  %i.dq = icmp eq i64 %.sroa.016.0131, 0, !dbg !23780
  br i1 %i.dq, label %._crit_edge, label %bb.t, !dbg !23780

._crit_edge:                                      ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23782
  %i.dr = icmp eq i64 %i.bs, 0, !dbg !23720
  br i1 %i.dr, label %._crit_edge136, label %.preheader, !dbg !23720

bb.t:                                             ; preds = %.lr.ph
  %i.ds = call i64 @llvm.usub.sat.i64(i64 %.sroa.016.0131, i64 %.zext), !dbg !23783
  %i.dt = mul nuw nsw i64 %.sroa.027.0132, %.zext, !dbg !23784 ; 2 uses
  %i.du = mul nuw nsw i64 %i.dp, %.zext, !dbg !23785 ; 2 uses
  %i.dv = icmp samesign ult i64 %i.du, 257, !dbg !23786
  br i1 %i.dv, label %bb.v, label %bb.u, !dbg !23786, !prof !1184

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dt, i64 noundef %i.du, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #44, !dbg !23787
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.027.0132, !dbg !23788
  %i.dx = load i8, ptr %i.dw, align 1, !dbg !23788, !noundef !1032 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dt, !dbg !23789
  %i.dz = zext i8 %i.dx to i64, !dbg !23790       ; 2 uses
  %.not.i81 = icmp eq i8 %i.dx, 0, !dbg !23791
  br i1 %.not.i81, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.w, !dbg !23791

bb.w:                                             ; preds = %bb.v
  %i.ea = icmp sgt i64 %i.do, -1, !dbg !23792
  call void @llvm.assume(i1 %i.ea), !dbg !23793
  %i.eb = mul nuw nsw i64 %i.dz, %.zext, !dbg !23794
  %i.ec = add nuw nsw i64 %i.eb, 7, !dbg !23795
  %i.ed = lshr i64 %i.ec, 3, !dbg !23795
  %i.ee = add nuw i64 %i.do, %i.ed, !dbg !23796   ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ee, i8 noundef 0), !dbg !23797, !noalias !23638
  %i.ef = load i64, ptr %i.n, align 8, !dbg !23798, !alias.scope !23639, !noundef !1032 ; 4 uses
  %i.eg = icmp ugt i64 %i.do, %i.ef, !dbg !23799
  br i1 %i.eg, label %bb.y, label %bb.x, !dbg !23799, !prof !1109

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %i.bh, align 8, !dbg !23800, !alias.scope !23639, !nonnull !1032, !noundef !1032
  %i.ei = sub nuw i64 %i.ef, %i.do, !dbg !23801
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.do, !dbg !23802
  call void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef range(i64 0, 1152921504606846976) %.zext, i64 noundef %i.dz, ptr noalias noundef nonnull %i.ej, i64 noundef %i.ei), !dbg !23803
  %i.ek = load i64, ptr %i.n, align 8, !dbg !23804, !alias.scope !23639, !noundef !1032 ; 2 uses
  %i.el = icmp ugt i64 %i.ee, %i.ek, !dbg !23805
  br i1 %i.el, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, label %bb.z, !dbg !23805

bb.y:                                             ; preds = %bb.w
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.do, i64 noundef %i.ef, i64 noundef %i.ef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #43, !dbg !23806, !noalias !23638
  unreachable, !dbg !23806

bb.z:                                             ; preds = %bb.x
  store i64 %i.ee, ptr %i.n, align 8, !dbg !23807, !alias.scope !23639
  br label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit, !dbg !23808

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder15write_miniblock.exit: ; preds = %bb.v, %bb.x, %bb.z
  %i.em = phi i64 [ %i.do, %bb.v ], [ %i.ek, %bb.x ], [ %i.ee, %bb.z ]
  %exitcond.not = icmp eq i64 %i.dp, %3, !dbg !23809
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !23640

bb.aa:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !dbg !23735
  unreachable

bb.ab:                                            ; preds = %bb.p
  %i.en = icmp eq i64 %i.bo, 0, !dbg !23734       ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bj, align 8, !dbg !23810, !noalias !23641, !noundef !1032 ; 3 uses
  %i.eo = sub i64 %.val.i.i.i, %.sroa.0.2125, !dbg !23811 ; 5 uses
  %i.ep = call i64 @llvm.smax.i64(i64 %i.eo, i64 %.sroa.012.0124), !dbg !23812
  %.sroa.0.0.i83 = select i1 %i.en, i64 %i.eo, i64 %i.ep, !dbg !23734 ; 2 uses
  %i.eq = call i64 @llvm.smin.i64(i64 %i.eo, i64 %.sroa.084.0123), !dbg !23813
  %.sroa.0.0.i82 = select i1 %i.en, i64 %i.eo, i64 %i.eq, !dbg !23734 ; 3 uses
  %i.er = add nuw nsw i64 %.sroa.4.0122, 1, !dbg !23814
  %i.es = sub i64 %.sroa.0.0.i83, %.sroa.0.0.i82, !dbg !23815
  %i.et = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.es, i1 false), !dbg !23816
  %i.eu = trunc nuw nsw i64 %i.et to i8, !dbg !23816
  %i.ev = sub nuw nsw i8 64, %i.eu, !dbg !23817
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bn, !dbg !23735
  store i8 %i.ev, ptr %i.ew, align 1, !dbg !23735
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0122, !dbg !23818
  store i64 %i.eo, ptr %i.ex, align 8, !dbg !23818
  %i.ey = icmp eq i64 %i.bk, 0, !dbg !23819
  br i1 %i.ey, label %.split.us, label %.preheader.split, !dbg !23819
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7encoder6encodeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IteryENCINvNtNtNtNtBa_5arrow5write9primitive5basic12encode_deltayxEs_0EEBa_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23820 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [2048 x i8], align 8              ; 6 uses
  %i.h = alloca [2048 x i8], align 8              ; 6 uses
  %i.i = alloca [10 x i8], align 1                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.k, align 8
  switch i64 %3, label %_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit [
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 4, label %bb.b
  ], !dbg !24148

_RNvXsJ_NtNtCscgRAwXFJnXP_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #44, !dbg !24149
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.rhs.trunc = trunc nuw nsw i64 %3 to i16, !dbg !24150
  %4 = udiv i16 256, %.rhs.trunc, !dbg !24150
  %.zext = zext nneg i16 %4 to i64, !dbg !24150   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !24151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, i8 0, i64 10, i1 false), !dbg !24152
  %i.l = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef 256, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24153 ; 6 uses
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !24154, !prof !1072

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44, !dbg !24155
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l), !dbg !24156
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24157 ; 21 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !24157, !alias.scope !24051, !noundef !1032 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !24158
  call void @llvm.assume(i1 %i.p), !dbg !24159
  %.not.i = icmp eq i64 %i.l, 0, !dbg !24160
  br i1 %.not.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !24160

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24161
  %i.r = load ptr, ptr %i.q, align 8, !dbg !24161, !alias.scope !24051, !nonnull !1032, !noundef !1032
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o, !dbg !24162
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false), !dbg !24163
  %.pre.i = load i64, ptr %i.n, align 8, !dbg !24164, !alias.scope !24051
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !24165

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.o, %bb.d ], !dbg !24164
  %i.u = add i64 %i.t, %i.l, !dbg !24164
  store i64 %i.u, ptr %i.n, align 8, !dbg !24164, !alias.scope !24051
  %i.v = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %3, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24166 ; 6 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.g, label %bb.f, !dbg !24167, !prof !1072

bb.f:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.v, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #44, !dbg !24168
  unreachable

bb.g:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v), !dbg !24169
  %i.x = load i64, ptr %i.n, align 8, !dbg !24170, !alias.scope !24064, !noundef !1032 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !24171
  call void @llvm.assume(i1 %i.y), !dbg !24172
  %.not.i62 = icmp eq i64 %i.v, 0, !dbg !24173
  br i1 %.not.i62, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.h, !dbg !24173

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24174
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !24174, !alias.scope !24064, !nonnull !1032, !noundef !1032
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !24175
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !dbg !24176
  %.pre.i63 = load i64, ptr %i.n, align 8, !dbg !24177, !alias.scope !24064
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64, !dbg !24178

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre.i63, %bb.h ], [ %i.x, %bb.g ], !dbg !24177
  %i.ad = add i64 %i.ac, %i.v, !dbg !24177
  store i64 %i.ad, ptr %i.n, align 8, !dbg !24177, !alias.scope !24064
  %i.ae = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24179
  %i.af = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.ae, ptr noalias noundef nonnull %i.i, i64 noundef 10), !dbg !24180 ; 6 uses
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !24181, !prof !1072

bb.i:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44, !dbg !24182
  unreachable

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit64
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af), !dbg !24183
  %i.ah = load i64, ptr %i.n, align 8, !dbg !24184, !alias.scope !24077, !noundef !1032 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !24185
  call void @llvm.assume(i1 %i.ai), !dbg !24186
  %.not.i65 = icmp eq i64 %i.af, 0, !dbg !24187
  br i1 %.not.i65, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, label %bb.k, !dbg !24187

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24188
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !24188, !alias.scope !24077, !nonnull !1032, !noundef !1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !24189
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.i, i64 %i.af, i1 false), !dbg !24190
  %.pre.i66 = load i64, ptr %i.n, align 8, !dbg !24191, !alias.scope !24077
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, !dbg !24192

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67: ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %.pre.i66, %bb.k ], [ %i.ah, %bb.j ], !dbg !24191
  %i.an = add i64 %i.am, %i.af, !dbg !24191
  store i64 %i.an, ptr %i.n, align 8, !dbg !24191, !alias.scope !24077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !24193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !dbg !24194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !24195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.g, i8 0, i64 2048, i1 false), !dbg !24196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !24197
  store i32 0, ptr %i.f, align 4, !dbg !24198
  call void @llvm.experimental.noalias.scope.decl(metadata !24078), !dbg !24199
  %.not = icmp eq ptr %0, %1, !dbg !24200
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, label %bb.l, !dbg !24201

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24202 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !dbg !24203, !alias.scope !24079
  %.val.i = load i64, ptr %0, align 8, !dbg !24204, !noalias !24078, !noundef !1032
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit, !dbg !24205

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67, %bb.l
  %.sroa.0.0 = phi i64 [ %.val.i, %bb.l ], [ 0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ] ; 2 uses
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %0, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !24206
  call void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0), !dbg !24206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !24207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.d, i64 10, i1 false), !dbg !24207
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !24208
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !24208, !noundef !1032 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !24209
  %i.as = icmp ult i64 %i.ar, 11
  br i1 %i.as, label %bb.n, label %bb.m, !dbg !24210, !prof !1072

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !dbg !24211
  unreachable

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_.exit
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar), !dbg !24212
  %i.at = load i64, ptr %i.n, align 8, !dbg !24213, !alias.scope !24092, !noundef !1032 ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1, !dbg !24214
  call void @llvm.assume(i1 %i.au), !dbg !24215
  %.not.i68 = icmp eq i64 %i.ar, 0, !dbg !24216
  br i1 %.not.i68, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, label %bb.o, !dbg !24216

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24217
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !24217, !alias.scope !24092, !nonnull !1032, !noundef !1032
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at, !dbg !24218
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.e, i64 %i.ar, i1 false), !dbg !24219
  %.pre.i69 = load i64, ptr %i.n, align 8, !dbg !24220, !alias.scope !24092
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70, !dbg !24221

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70: ; preds = %bb.n, %bb.o
  %i.ay = phi i64 [ %.pre.i69, %bb.o ], [ %i.at, %bb.n ], !dbg !24220
  %i.az = add i64 %i.ay, %i.ar, !dbg !24220
  store i64 %i.az, ptr %i.n, align 8, !dbg !24220, !alias.scope !24092
  %i.ba = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24222 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0, !dbg !24223
  br i1 %i.bb, label %._crit_edge136, label %.preheader.lr.ph, !dbg !24223

.preheader.lr.ph:                                 ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 2048
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %.preheader, !dbg !24223

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.1135 = phi i64 [ %.sroa.0.0, %.preheader.lr.ph ], [ %.us-phi127.ph, %._crit_edge ]
  %.sroa.023.0134 = phi i64 [ %i.ba, %.preheader.lr.ph ], [ %i.bs, %._crit_edge ]
  %i.bi = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %.us-phi.ph, %._crit_edge ]
  br label %.preheader.split, !dbg !24224

._crit_edge136:                                   ; preds = %._crit_edge, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !24226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !24227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !24228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !24229
  ret void, !dbg !24230

.preheader.split:                                 ; preds = %.preheader, %bb.ab
  %.sroa.0.2125 = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.1135, %.preheader ] ; 2 uses
  %.sroa.012.0124 = phi i64 [ %.sroa.0.0.i83, %bb.ab ], [ -9223372036854775808, %.preheader ]
  %.sroa.084.0123 = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.sroa.4.0122 = phi i64 [ %i.er, %bb.ab ], [ 0, %.preheader ] ; 4 uses
  %.sroa.7.0121 = phi i64 [ %i.bk, %bb.ab ], [ 256, %.preheader ]
  %i.bj = phi ptr [ %i.bm, %bb.ab ], [ %i.bi, %.preheader ] ; 4 uses
  %i.bk = add nsw i64 %.sroa.7.0121, -1, !dbg !24231 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24095), !dbg !24232
  %i.bl = icmp eq ptr %i.bj, %1, !dbg !24233
  br i1 %i.bl, label %.split.us, label %bb.p, !dbg !24224

bb.p:                                             ; preds = %.preheader.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !24234 ; 3 uses
  store ptr %i.bm, ptr %i.j, align 8, !dbg !24235, !alias.scope !24096, !noalias !24097
  %i.bn = udiv i64 %.sroa.4.0122, %.zext, !dbg !24236 ; 3 uses
  %i.bo = urem i64 %.sroa.4.0122, %.zext, !dbg !24237
  %i.bp = icmp samesign ult i64 %i.bn, 4, !dbg !24238
  br i1 %i.bp, label %bb.ab, label %bb.aa, !dbg !24238

.split.us:                                        ; preds = %.preheader.split, %bb.ab
  %.us-phi.ph = phi ptr [ %i.bm, %bb.ab ], [ %i.bj, %.preheader.split ]
  %.us-phi126.ph = phi i64 [ %.sroa.0.0.i82, %bb.ab ], [ %.sroa.084.0123, %.preheader.split ] ; 7 uses
  %.us-phi127.ph = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.sroa.0.2125, %.preheader.split ]
  %i.bq = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24239
  %i.br = sub i64 %.sroa.023.0134, %i.bq, !dbg !24240
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 256), !dbg !24241 ; 2 uses
  %i.bs = call noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_deltayxEs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1B_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !24242 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24243
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i72, !dbg !24244
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutyEEINtB5_7ZipImplBW_B1o_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bc), !dbg !24245
  call void @llvm.experimental.noalias.scope.decl(metadata !24104), !dbg !24246
end_hunk_17
