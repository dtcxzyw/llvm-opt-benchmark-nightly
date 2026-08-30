Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.15?download=true
inline.NumInlined: 14462
inline.NumDeleted: 3805
loop-unroll.NumCompletelyUnrolled: 212
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCs1LHh8CLbVkQ_11polars_core:bb.a
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !317332
  br label %bb.t, !dbg !317334

bb.k:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !317335 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !317336
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !dbg !317336
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !317336
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !317336, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !317337, !noalias !317345
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !317348
  store i64 1, ptr %i.au, align 8, !dbg !317348, !noalias !317345
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !317348
  store ptr %.sroa.413.0.copyload, ptr %i.av, align 8, !dbg !317348, !noalias !317345
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !317348
  store i64 %i.ao, ptr %i.aw, align 8, !dbg !317348, !noalias !317345
  store i64 0, ptr %i.b, align 8, !dbg !317348, !noalias !317345
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !317348
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !317348, !noalias !317345
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !317348
  store ptr @176, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !317348, !noalias !317345
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !317350, !noalias !317357
  %i.ax = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 48, i64 noundef range(i64 4, 17) 8) #56, !dbg !317360, !noalias !317357 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null, !dbg !317361
  br i1 %i.ay, label %bb.l, label %_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs1LHh8CLbVkQ_11polars_core.exit, !dbg !317362, !prof !2203

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #55
          to label %.noexc.i unwind label %bb.m, !dbg !317363, !noalias !317345

.noexc.i:                                         ; preds = %bb.l
  unreachable, !dbg !317363

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #52
          to label %common.resume unwind label %bb.n, !dbg !317364, !noalias !317345

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !317365, !noalias !317345
  unreachable, !dbg !317365

_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !317366, !noalias !317345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !317367, !noalias !317345
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.ax), !dbg !317368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317369), !dbg !317372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317375), !dbg !317372
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !317377 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !317377, !alias.scope !317369, !noalias !317375, !noundef !13 ; 3 uses
  %i.bd = load i64, ptr %i.at, align 8, !dbg !317379, !range !1008, !alias.scope !317369, !noalias !317375, !noundef !13
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !317382
  br i1 %i.be, label %bb.o, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !317382

bb.o:                                             ; preds = %_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.p, !dbg !317383, !noalias !317375

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !317384, !alias.scope !317385, !noalias !317369, !nonnull !13, !noundef !13 ; 3 uses
  %i.bg = load i64, ptr %.val.i, align 8, !dbg !317388, !range !2893, !noalias !317392, !noundef !13
  %i.bh = icmp eq i64 %i.bg, 3, !dbg !317395
  br i1 %i.bh, label %common.resume, label %bb.q, !dbg !317395

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !317396
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !317400, !noalias !317392
  %i.bk = icmp eq i64 %i.bj, 1, !dbg !317402
  br i1 %i.bk, label %bb.r, label %common.resume, !dbg !317402, !prof !2203

bb.r:                                             ; preds = %bb.q
  fence acquire, !dbg !317403
  invoke fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCs1LHh8CLbVkQ_11polars_core(ptr %.val.i)
          to label %common.resume unwind label %bb.s, !dbg !317405, !noalias !317375

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !317406, !noalias !317375
  unreachable, !dbg !317406

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs1LHh8CLbVkQ_11polars_core.exit, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !317407
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !317407, !alias.scope !317369, !noalias !317375, !nonnull !13, !noundef !13
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bc, !dbg !317412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !317414
  %i.bp = add i64 %i.bc, 1, !dbg !317416
  store i64 %i.bp, ptr %i.bb, align 8, !dbg !317416, !alias.scope !317369, !noalias !317375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !317417
  br label %bb.t, !dbg !317334

bb.t:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !317334
  %.pre = load i64, ptr %i.l, align 8, !dbg !317260
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs1LHh8CLbVkQ_11polars_core.exit, !dbg !317418

.split9:                                          ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs1LHh8CLbVkQ_11polars_core.exit
  %i.bq = trunc i64 %i.y to i32, !dbg !317419
  %i.br = trunc nuw i64 %i.ah to i32, !dbg !317420
  %.val = load i32, ptr %2, align 1, !dbg !317421
  %i.bs = trunc nuw i64 %3 to i32, !dbg !317423
  store i32 %i.bs, ptr %0, align 4, !dbg !317426, !alias.scope !317427
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !317426
  store i32 %.val, ptr %i.bt, align 4, !dbg !317426, !alias.scope !317427
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !317426
  store i32 %i.br, ptr %i.bu, align 4, !dbg !317426, !alias.scope !317427
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !317426
  store i32 %i.bq, ptr %i.bv, align 4, !dbg !317426, !alias.scope !317427
  br label %bb.u, !dbg !317421

.split:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #55, !dbg !317430
  unreachable

bb.u:                                             ; preds = %bb.v, %.split9
  ret void, !dbg !317432

bb.v:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !317433
  %i.bw = trunc nuw nsw i64 %3 to i32, !dbg !317438
  store i32 0, ptr %.sroa.4, align 4, !dbg !317439
  %.sroa.4.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4, !dbg !317439
  store i32 0, ptr %.sroa.4.4..sroa_idx19, align 4, !dbg !317439
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8, !dbg !317439
  store i32 0, ptr %.sroa.4.8..sroa_idx, align 4, !dbg !317439
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr nonnull align 1 %2, i64 %3, i1 false), !dbg !317440
  store i32 %i.bw, ptr %0, align 4, !dbg !317446
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !317446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !dbg !317446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !317447
  br label %bb.u, !dbg !317448
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE10into_innerCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 104)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !317449 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !317450
  %i.b = load atomic i64, ptr %i.a monotonic, align 8, !dbg !317463 ; 2 uses
  %i.c = icmp ne i64 %i.b, -1, !dbg !317465
  %. = zext i1 %i.c to i64, !dbg !317469
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !317470
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !317472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !317470
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !317476
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !317472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !317476
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !317477
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !317472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !317477
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !317478
  %i.k = load i64, ptr %i.j, align 8, !dbg !317478, !noundef !13
  store i64 %., ptr %0, align 8, !dbg !317472
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !317472
  store i64 %i.b, ptr %i.l, align 8, !dbg !317472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !317472
  store i64 %i.k, ptr %i.m, align 8, !dbg !317472
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !317479
  ret void, !dbg !317480
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !317481 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !317482 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !317493 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !317495
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !317495

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !317497
  %i.f = load ptr, ptr %i.e, align 8, !dbg !317497, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !317504
  %i.h = load i64, ptr %i.g, align 8, !dbg !317504, !noundef !13
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !317505
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !317514 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !317514, !noundef !13
  %.not = icmp eq ptr %i.k, null, !dbg !317514
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !317517
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !317518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317519), !dbg !317522
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !317532
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !317539
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !317519 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !317519
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !317519
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !317519
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !317519
  br label %bb.c, !dbg !317542

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %8, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %7, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i2140.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %6, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %3, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !317543 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317544), !dbg !317545
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !317546
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !317547

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !317548
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %bb.e, !dbg !317560

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !317561
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !317564, !noalias !317570, !noundef !13
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, !dbg !317575

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !317576
  %i.y = icmp eq i64 %i.r, 0, !dbg !317577
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !317577

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !317580
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !317580

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !317581 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !317583
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !317584, !noalias !317588
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !317591
  br label %._crit_edge.i.i.i.i, !dbg !317596

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], !dbg !317597
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], !dbg !317598 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !317598
  %i.ah = lshr i64 %i.af, 1, !dbg !317599
  %i.ai = add i64 %i.ae, -1, !dbg !317597
  %i.aj = and i8 %i.ag, 1, !dbg !317600
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !317601

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !317602
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !317603, !noalias !317605 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !317606
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit
    i8 0, label %bb.j
  ], !dbg !317607

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !317606
  br label %1, !dbg !317610

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !317618
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.i, !dbg !317623

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !317624 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !317626, !noalias !317629, !noundef !13
  br label %1, !dbg !317632

1:                                                ; preds = %bb.i, %bb.g
  %.ph31.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.i ]
  %.ph32.i = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.i ]
  %.pre.i.i.i21.ph.i = phi i64 [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i23.i, %bb.i ]
  %.ph33.i = phi i64 [ %i.am, %bb.g ], [ %i.r, %bb.i ]
  %.ph34.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %bb.i ]
  %.ph35.i = phi ptr [ %i.t, %bb.g ], [ %i.ar, %bb.i ]
  %.ph36.i = phi ptr [ %i.x, %bb.g ], [ null, %bb.i ]
  %.sroa.3.0.i.pn.i.ph.ph.i = phi i32 [ %i.ap, %bb.g ], [ %.val.i.i.i, %bb.i ]
  %2 = zext i32 %.sroa.3.0.i.pn.i.ph.ph.i to i64, !dbg !317635
  br label %bb.j, !dbg !317635

bb.j:                                             ; preds = %1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %3 = phi ptr [ %.ph36.i, %1 ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %.ph35.i, %1 ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %.ph34.i, %1 ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi i64 [ %.ph33.i, %1 ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i2140.i = phi i64 [ %.pre.i.i.i21.ph.i, %1 ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %7 = phi i64 [ %.ph32.i, %1 ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %8 = phi ptr [ %.ph31.i, %1 ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %9 = phi i64 [ %2, %1 ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], !dbg !317635
  %i.as = add i64 %9, %.sroa.0.0.i, !dbg !317645
  br label %bb.c, !dbg !317542

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !317649
  br label %bb.k, !dbg !317659

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.c, %bb.a ], !dbg !317660
  ret i64 %.sroa.0.0, !dbg !317661
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE15total_bytes_lenCs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !317662 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !317663 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !317674 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !317676
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !317676

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !317678
  %i.f = load ptr, ptr %i.e, align 8, !dbg !317678, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !317685
  %i.h = load i64, ptr %i.g, align 8, !dbg !317685, !noundef !13
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !317686
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !317695 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !317695, !noundef !13
  %.not = icmp eq ptr %i.k, null, !dbg !317695
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !317698
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !317699
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317700), !dbg !317703
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !317710
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !317717
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !317700 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !317700
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !317700
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !317700
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !317700
  br label %bb.c, !dbg !317720

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %8, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %7, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i2140.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %6, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %3, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !317721 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317722), !dbg !317723
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !317724
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !317725

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !317726
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, label %bb.e, !dbg !317734

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !317735
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !317737, !noalias !317743, !noundef !13
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i, !dbg !317748

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !317749
  %i.y = icmp eq i64 %i.r, 0, !dbg !317750
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !317750

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !317753
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !317753

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !317754 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !317756
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !317757, !noalias !317761
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !317764
  br label %._crit_edge.i.i.i.i, !dbg !317769

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], !dbg !317770
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i ], !dbg !317771 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !317771
  %i.ah = lshr i64 %i.af, 1, !dbg !317772
  %i.ai = add i64 %i.ae, -1, !dbg !317770
  %i.aj = and i8 %i.ag, 1, !dbg !317773
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !317774

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !317775
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !317776, !noalias !317778 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !317779
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit
    i8 0, label %bb.j
  ], !dbg !317780

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !317779
  br label %1, !dbg !317783

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !317790
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.i, !dbg !317795

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !317796 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !317798, !noalias !317801, !noundef !13
  br label %1, !dbg !317804

1:                                                ; preds = %bb.i, %bb.g
  %.ph31.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.i ]
  %.ph32.i = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.i ]
  %.pre.i.i.i21.ph.i = phi i64 [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i23.i, %bb.i ]
  %.ph33.i = phi i64 [ %i.am, %bb.g ], [ %i.r, %bb.i ]
  %.ph34.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %bb.i ]
  %.ph35.i = phi ptr [ %i.t, %bb.g ], [ %i.ar, %bb.i ]
  %.ph36.i = phi ptr [ %i.x, %bb.g ], [ null, %bb.i ]
  %.sroa.3.0.i.pn.i.ph.ph.i = phi i32 [ %i.ap, %bb.g ], [ %.val.i.i.i, %bb.i ]
  %2 = zext i32 %.sroa.3.0.i.pn.i.ph.ph.i to i64, !dbg !317807
  br label %bb.j, !dbg !317807

bb.j:                                             ; preds = %1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %3 = phi ptr [ %.ph36.i, %1 ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %.ph35.i, %1 ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %.ph34.i, %1 ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi i64 [ %.ph33.i, %1 ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i2140.i = phi i64 [ %.pre.i.i.i21.ph.i, %1 ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %7 = phi i64 [ %.ph32.i, %1 ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %8 = phi ptr [ %.ph31.i, %1 ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %9 = phi i64 [ %2, %1 ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], !dbg !317807
  %i.as = add i64 %9, %.sroa.0.0.i, !dbg !317814
  br label %bb.c, !dbg !317720

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !317817
  br label %bb.k, !dbg !317826

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.c, %bb.a ], !dbg !317827
  ret i64 %.sroa.0.0, !dbg !317828
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7mutableINtB5_16MutableListArrayxINtNtNtB9_7binview7mutable22MutableBinaryViewArrayShEE13init_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !317829 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !317830
  %i.e = load i64, ptr %i.d, align 8, !dbg !317830, !noundef !13 ; 3 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !317835
  tail call void @llvm.assume(i1 %i.f), !dbg !317837
  %i.g = add nsw i64 %i.e, -1, !dbg !317838       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !317839
  %i.h = load i64, ptr %0, align 8, !dbg !317841, !range !1008, !noundef !13
  %i.i = add nsw i64 %i.h, -1, !dbg !317850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317851), !dbg !317854
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 range(i64 -1, -9223372036854775808) %i.i, i64 7), !dbg !317855
  %i.k = lshr i64 %i.j, 3, !dbg !317858           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !317859, !noalias !317851
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !317859, !noalias !317851
  %i.l = load i64, ptr %i.a, align 8, !dbg !317859, !range !295, !noalias !317851, !noundef !13
  %i.m = trunc nuw i64 %i.l to i1, !dbg !317864
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !317865
  %i.o = load i64, ptr %i.n, align 8, !dbg !317865, !range !348, !noalias !317851, !noundef !13 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !317865 ; 2 uses
  br i1 %i.m, label %bb.b, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit, !dbg !317864, !prof !2203

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8, !dbg !317866, !noalias !317851
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #55, !dbg !317867, !noalias !317851
  unreachable, !dbg !317867

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit: ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !dbg !317868, !noalias !317851, !nonnull !13, !noundef !13
  %i.s = icmp samesign ule i64 %i.k, %i.o, !dbg !317869
  tail call void @llvm.assume(i1 %i.s), !dbg !317871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !317873, !noalias !317851
  store i64 %i.o, ptr %i.c, align 8, !dbg !317874, !alias.scope !317851
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !317874 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !317874, !alias.scope !317851
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !317874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !317874, !alias.scope !317851
  %i.t = icmp eq i64 %i.g, 0, !dbg !317875
  br i1 %i.t, label %.thread, label %bb.d, !dbg !317875

bb.c:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !317879
  %i.u = add nsw i64 %i.e, -2, !dbg !317884       ; 3 uses
  %i.v = icmp ult i64 %i.u, %.pre, !dbg !317885
  br i1 %i.v, label %bb.e, label %.thread, !dbg !317885, !prof !316236

bb.d:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.g)
          to label %bb.c unwind label %bb.l, !dbg !317886

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ai, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !317887
  br label %bb.k, !dbg !317888

.thread:                                          ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit, %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #55
          to label %bb.i unwind label %bb.l, !dbg !317889

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !317890, !nonnull !13, !noundef !13
  %i.x = lshr i64 %i.u, 3, !dbg !317905
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x, !dbg !317906 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !dbg !317911, !noundef !13
  %i.aa = trunc i64 %i.u to i8, !dbg !317913
  %i.ab = and i8 %i.aa, 7, !dbg !317913
  %i.ac = shl nuw i8 1, %i.ab, !dbg !317913
  %i.ad = xor i8 %i.ac, -1, !dbg !317916
  %i.ae = and i8 %i.z, %i.ad, !dbg !317917
  store i8 %i.ae, ptr %i.y, align 1, !dbg !317920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !317921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !317922
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !317887 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !317923, !range !348, !alias.scope !317925, !noundef !13
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808, !dbg !317923
  br i1 %i.ah, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !317923

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs1LHh8CLbVkQ_11polars_core.exit.i unwind label %bb.g, !dbg !317928

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i unwind label %bb.h, !dbg !317931

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !317928
  unreachable, !dbg !317928

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.j, !dbg !317933

bb.i:                                             ; preds = %.thread
  unreachable

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i, !dbg !317887

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs1LHh8CLbVkQ_11polars_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !317887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !317935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !317888
  ret void, !dbg !317936

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i, %bb.l
  %.pn7 = phi { ptr, i32 } [ %i.al, %bb.l ], [ %eh.lpad-body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i ]
  resume { ptr, i32 } %.pn7, !dbg !317937

bb.l:                                             ; preds = %.thread, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(32) %i.c) #52
          to label %bb.k unwind label %bb.m, !dbg !317888

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !317937
  unreachable, !dbg !317937
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7mutableINtB5_16MutableListArrayxINtNtNtB9_7binview7mutable22MutableBinaryViewArrayeEE13init_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !317938 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !317939
  %i.e = load i64, ptr %i.d, align 8, !dbg !317939, !noundef !13 ; 3 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !317944
  tail call void @llvm.assume(i1 %i.f), !dbg !317946
  %i.g = add nsw i64 %i.e, -1, !dbg !317947       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !317948
  %i.h = load i64, ptr %0, align 8, !dbg !317950, !range !1008, !noundef !13
  %i.i = add nsw i64 %i.h, -1, !dbg !317959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317960), !dbg !317963
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 range(i64 -1, -9223372036854775808) %i.i, i64 7), !dbg !317964
  %i.k = lshr i64 %i.j, 3, !dbg !317967           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !317968, !noalias !317960
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !317968, !noalias !317960
  %i.l = load i64, ptr %i.a, align 8, !dbg !317968, !range !295, !noalias !317960, !noundef !13
  %i.m = trunc nuw i64 %i.l to i1, !dbg !317973
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !317974
  %i.o = load i64, ptr %i.n, align 8, !dbg !317974, !range !348, !noalias !317960, !noundef !13 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !317974 ; 2 uses
  br i1 %i.m, label %bb.b, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit, !dbg !317973, !prof !2203

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8, !dbg !317975, !noalias !317960
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #55, !dbg !317976, !noalias !317960
  unreachable, !dbg !317976

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit: ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !dbg !317977, !noalias !317960, !nonnull !13, !noundef !13
  %i.s = icmp samesign ule i64 %i.k, %i.o, !dbg !317978
  tail call void @llvm.assume(i1 %i.s), !dbg !317980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !317982, !noalias !317960
  store i64 %i.o, ptr %i.c, align 8, !dbg !317983, !alias.scope !317960
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !317983 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !317983, !alias.scope !317960
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !317983
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !317983, !alias.scope !317960
  %i.t = icmp eq i64 %i.g, 0, !dbg !317984
  br i1 %i.t, label %.thread, label %bb.d, !dbg !317984

bb.c:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !317988
  %i.u = add nsw i64 %i.e, -2, !dbg !317993       ; 3 uses
  %i.v = icmp ult i64 %i.u, %.pre, !dbg !317994
  br i1 %i.v, label %bb.e, label %.thread, !dbg !317994, !prof !316236

bb.d:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.g)
          to label %bb.c unwind label %bb.l, !dbg !317995

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i: ; preds = %bb.g, %bb.j
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_12series_trait11SeriesTrait6filter:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !343325
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343325
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.437.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394), !dbg !343326
  br label %bb.z, !dbg !343330

bb.d:                                             ; preds = %bb.b, %bb.y
  %.sroa.0.0 = phi i64 [ %.sroa.04.0, %bb.y ], [ 0, %bb.b ], !dbg !343307
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !343332 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !343339
  %i.y = load i8, ptr %i.x, align 1, !dbg !343339, !range !2169, !noundef !13
  %i.z = icmp eq i8 %i.y, -40, !dbg !343349
  br i1 %i.z, label %bb.aa, label %bb.ab, !dbg !343349

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call fastcc noundef i8 @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11BooleanTypeE3getB6_(ptr noundef nonnull align 8 %2, i64 noundef 0) #58, !dbg !343350
  %i.ab = and i8 %i.aa, 1, !dbg !343351
  %or.cond.not = icmp eq i8 %i.ab, 0, !dbg !343351
  br i1 %or.cond.not, label %bb.g, label %bb.h, !dbg !343351

bb.f:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %i.t, %i.q, !dbg !343352
  br i1 %i.ac, label %bb.y, label %.split25, !dbg !343352, !prof !2616

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !343353 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !343356
  %i.af = load i8, ptr %i.ae, align 1, !dbg !343356, !range !2169, !noundef !13
  %i.ag = icmp eq i8 %i.af, -40, !dbg !343360
  br i1 %i.ag, label %bb.r, label %bb.s, !dbg !343360

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041), !dbg !343361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343362), !dbg !343365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !343366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !343366, !noalias !343368
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !343370 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !343373
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !343373, !range !2169, !alias.scope !343362, !noalias !343377, !noundef !13
  %i.ak = icmp eq i8 %i.aj, -40, !dbg !343378
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !343378

bb.i:                                             ; preds = %bb.h
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #54, !dbg !343379, !noalias !343377
  br label %bb.k, !dbg !343379

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !343380, !noalias !343377
  br label %bb.k, !dbg !343382

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !343383, !noalias !343368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !343384, !noalias !343368
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit unwind label %bb.l, !dbg !343384, !noalias !343377

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !343385
  %i.an = load i8, ptr %i.am, align 1, !dbg !343385, !range !2169, !alias.scope !343392, !noalias !343368, !noundef !13
  %i.ao = icmp eq i8 %i.an, -40, !dbg !343401
  br i1 %i.ao, label %bb.m, label %common.resume, !dbg !343401, !prof !2203

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.n, !dbg !343402, !noalias !343377

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !343403, !noalias !343377
  unreachable, !dbg !343403

common.resume:                                    ; preds = %bb.ae, %bb.v, %bb.p, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.v ], [ %i.al, %bb.l ], [ %i.au, %bb.p ], [ %i.al, %bb.m ], [ %i.bn, %bb.ae ]
  resume { ptr, i32 } %common.resume.op, !dbg !343307

_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.k
  %.sroa.041.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.041, i64 24, !dbg !343403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.041.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !343403, !noalias !343362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.041, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !343403, !noalias !343362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !343404, !noalias !343368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !343404, !noalias !343368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !343405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !343406, !noalias !343409
  store i64 1, ptr %i.c, align 8, !dbg !343406, !noalias !343409
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !343406
  store i64 1, ptr %i.aq, align 8, !dbg !343406, !noalias !343409
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !343406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.041, i64 48, i1 false), !dbg !343406
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !343406
  store i64 %i.q, ptr %.sroa.542.0..sroa_idx, align 8, !dbg !343406
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !343412, !noalias !343419, !inline_history !330340
  %i.as = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 72, i64 noundef range(i64 4, 17) 8) #56, !dbg !343422, !noalias !343419, !inline_history !330340 ; 3 uses
  %i.at = icmp eq ptr %i.as, null, !dbg !343423
  br i1 %i.at, label %bb.o, label %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit, !dbg !343424, !prof !2203

bb.o:                                             ; preds = %_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55
          to label %.noexc.i unwind label %bb.p, !dbg !343425, !noalias !343409, !inline_history !330340

.noexc.i:                                         ; preds = %bb.o
  unreachable, !dbg !343425

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4null11NullChunkedEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #52
          to label %common.resume unwind label %bb.q, !dbg !343426, !noalias !343409, !inline_history !330340

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !343427, !noalias !343409, !inline_history !330340
  unreachable, !dbg !343427

_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit: ; preds = %_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !343428, !noalias !343409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !343429, !noalias !343409
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.041), !dbg !343430
  br label %bb.x, !dbg !343431

bb.r:                                             ; preds = %bb.g
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #54, !dbg !343432
  br label %bb.t, !dbg !343432

bb.s:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !343433
  br label %bb.t, !dbg !343436

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !343437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !343437, !noalias !343440
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB4_11NullChunked3new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i64 noundef 0), !dbg !343443
  store i64 1, ptr %i.b, align 8, !dbg !343437, !noalias !343440
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !343437
  store i64 1, ptr %i.ax, align 8, !dbg !343437, !noalias !343440
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !343444, !noalias !343451, !inline_history !330340
  %i.ay = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 72, i64 noundef range(i64 4, 17) 8) #56, !dbg !343454, !noalias !343451, !inline_history !330340 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null, !dbg !343455
  br i1 %i.az, label %bb.u, label %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit33, !dbg !343456, !prof !2203

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55
          to label %.noexc.i32 unwind label %bb.v, !dbg !343457, !noalias !343440, !inline_history !330340

.noexc.i32:                                       ; preds = %bb.u
  unreachable, !dbg !343457

bb.v:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4null11NullChunkedEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #52
          to label %common.resume unwind label %bb.w, !dbg !343458, !noalias !343440, !inline_history !330340

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !343459, !noalias !343440, !inline_history !330340
  unreachable, !dbg !343459

_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit33: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !343460, !noalias !343440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !343461, !noalias !343440
  br label %bb.x, !dbg !343462

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit33, %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit
  %.sink = phi ptr [ %i.ay, %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit33 ], [ %i.as, %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343307
  store ptr %.sink, ptr %i.bc, align 8, !dbg !343307
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !343307
  store ptr @389, ptr %i.bd, align 8, !dbg !343307
  br label %bb.z, !dbg !343330

.split25:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !343463
  store i64 %i.t, ptr %i.k, align 8, !dbg !343464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !343466
  store i64 %i.q, ptr %i.j, align 8, !dbg !343467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !343470
  store ptr %i.k, ptr %i.i, align 8, !dbg !343470
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !343470
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !343470
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !343470
  store ptr %i.j, ptr %i.be, align 8, !dbg !343470
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !343470
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !343470
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @395, ptr noundef nonnull %i.i), !dbg !343473, !noalias !343478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !343481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !343481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !343481
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343481
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.447.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396), !dbg !343482
  br label %bb.z, !dbg !343330

bb.y:                                             ; preds = %bb.f
  %i.bf = tail call { i32, i32 } @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB8_12ChunkedArrayNtNtBa_9datatypes11BooleanTypeE3sum(ptr noundef nonnull align 8 %2), !dbg !343485 ; 2 uses
  %i.bg = extractvalue { i32, i32 } %i.bf, 0, !dbg !343485
  %i.bh = trunc i32 %i.bg to i1, !dbg !343486
  %i.bi = extractvalue { i32, i32 } %i.bf, 1, !dbg !343486
  %3 = zext i32 %i.bi to i64, !dbg !343486
  %.sroa.04.0 = select i1 %i.bh, i64 %3, i64 0, !dbg !343486
  br label %bb.d, !dbg !343489

bb.z:                                             ; preds = %bb.x, %.split25, %.split, %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit35
  %.sink56 = phi i64 [ 18, %bb.x ], [ 10, %.split25 ], [ 10, %.split ], [ 18, %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit35 ]
  store i64 %.sink56, ptr %0, align 8, !dbg !343307
  ret void, !dbg !343490

bb.aa:                                            ; preds = %bb.d
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #54, !dbg !343491
  br label %bb.ac, !dbg !343491

bb.ab:                                            ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !343492
  br label %bb.ac, !dbg !343494

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !343495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !343495, !noalias !343498
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB4_11NullChunked3new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %.sroa.0.0), !dbg !343501
  store i64 1, ptr %i.a, align 8, !dbg !343495, !noalias !343498
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !343495
  store i64 1, ptr %i.bk, align 8, !dbg !343495, !noalias !343498
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !343502, !noalias !343509, !inline_history !330340
  %i.bl = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 72, i64 noundef range(i64 4, 17) 8) #56, !dbg !343512, !noalias !343509, !inline_history !330340 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null, !dbg !343513
  br i1 %i.bm, label %bb.ad, label %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit35, !dbg !343514, !prof !2203

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55
          to label %.noexc.i34 unwind label %bb.ae, !dbg !343515, !noalias !343498, !inline_history !330340

.noexc.i34:                                       ; preds = %bb.ad
  unreachable, !dbg !343515

bb.ae:                                            ; preds = %bb.ad
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4null11NullChunkedEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %common.resume unwind label %bb.af, !dbg !343516, !noalias !343498, !inline_history !330340

bb.af:                                            ; preds = %bb.ae
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !343517, !noalias !343498, !inline_history !330340
  unreachable, !dbg !343517

_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit35: ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !343518, !noalias !343498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !343519, !noalias !343498
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343520
  store ptr %i.bl, ptr %i.bp, align 8, !dbg !343520
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !343520
  store ptr @389, ptr %i.bq, align 8, !dbg !343520
  br label %bb.z, !dbg !343490
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_12series_trait11SeriesTrait6rename(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !343521 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !343522 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !343523
  %i.c = load i8, ptr %i.b, align 1, !dbg !343523, !range !2169, !alias.scope !343530, !noundef !13
  %i.d = icmp eq i8 %i.c, -40, !dbg !343539
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit, !dbg !343539, !prof !2203

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.c, !dbg !343540

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !343522
  resume { ptr, i32 } %i.e, !dbg !343541

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !343522
  ret void, !dbg !343542
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_12series_trait11SeriesTrait6unique(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !343543 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !343544 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !343549
  %i.e = load i8, ptr %i.d, align 1, !dbg !343549, !range !2169, !noundef !13
  %i.f = icmp eq i8 %i.e, -40, !dbg !343556
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !343556

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #54, !dbg !343557
  br label %bb.d, !dbg !343557

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !343558
  br label %bb.d, !dbg !343561

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !343562
  %i.h = load i64, ptr %i.g, align 8, !dbg !343562, !noundef !13
  %i.i = icmp ne i64 %i.h, 0, !dbg !343567
  %. = zext i1 %i.i to i64, !dbg !343568
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !343569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !343569, !noalias !343573
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB4_11NullChunked3new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.), !dbg !343576
  store i64 1, ptr %i.a, align 8, !dbg !343569, !noalias !343573
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !343569
  store i64 1, ptr %i.k, align 8, !dbg !343569, !noalias !343573
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !343577, !noalias !343584, !inline_history !330340
  %i.l = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 72, i64 noundef range(i64 4, 17) 8) #56, !dbg !343587, !noalias !343584, !inline_history !330340 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !343588
  br i1 %i.m, label %bb.e, label %_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit, !dbg !343589, !prof !2203

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55
          to label %.noexc.i unwind label %bb.f, !dbg !343590, !noalias !343573, !inline_history !330340

.noexc.i:                                         ; preds = %bb.e
  unreachable, !dbg !343590

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4null11NullChunkedEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %common.resume unwind label %bb.g, !dbg !343591, !noalias !343573, !inline_history !330340

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !343592, !noalias !343573, !inline_history !330340
  unreachable, !dbg !343592

common.resume:                                    ; preds = %bb.f
  resume { ptr, i32 } %i.n, !dbg !343593

_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_4from10IntoSeries11into_series.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !343594, !noalias !343573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !343595, !noalias !343573
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !343596
  store ptr %i.l, ptr %i.p, align 8, !dbg !343596
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !343596
  store ptr @389, ptr %i.q, align 8, !dbg !343596
  store i64 18, ptr %0, align 8, !dbg !343596
  ret void, !dbg !343597
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_12series_trait11SeriesTrait7deposit(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !343598 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !343599
  %i.g = load i64, ptr %i.f, align 8, !dbg !343599, !noundef !13 ; 2 uses
  %i.h = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %1), !dbg !343602 ; 2 uses
  %i.i = sub i64 %i.g, %i.h, !dbg !343599
  store i64 %i.i, ptr %i.e, align 8, !dbg !343599
  %i.j = icmp eq i64 %i.g, %i.h, !dbg !343603
  br i1 %i.j, label %bb.b, label %bb.l, !dbg !343603, !prof !2616

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !343606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343607), !dbg !343610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !343611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !343611, !noalias !343613
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !343615 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !343618
  %i.m = load i8, ptr %i.l, align 1, !dbg !343618, !range !2169, !alias.scope !343607, !noalias !343622, !noundef !13
  %i.n = icmp eq i8 %i.m, -40, !dbg !343623
  br i1 %i.n, label %bb.c, label %bb.d, !dbg !343623

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k) #54, !dbg !343624, !noalias !343622
  br label %bb.e, !dbg !343624

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !343625, !noalias !343622
  br label %bb.e, !dbg !343627

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !343628, !noalias !343613
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !343629
  %i.p = load i64, ptr %i.o, align 8, !dbg !343629, !alias.scope !343607, !noalias !343622, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !343630, !noalias !343613
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
          to label %_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit unwind label %bb.f, !dbg !343630, !noalias !343622

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !343631
  %i.s = load i8, ptr %i.r, align 1, !dbg !343631, !range !2169, !alias.scope !343638, !noalias !343613, !noundef !13
  %i.t = icmp eq i8 %i.s, -40, !dbg !343647
  br i1 %i.t, label %bb.g, label %common.resume, !dbg !343647, !prof !2203

end_hunk_1
