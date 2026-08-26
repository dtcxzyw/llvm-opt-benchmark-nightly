Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_data_converter_config_init_default:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_data_converter_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_data_converter_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ma_data_converter_config_init_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !alias.scope !1432
  br label %ma_data_converter_config_init_default.exit

ma_data_converter_config_init_default.exit:       ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8, !tbaa !1430, !alias.scope !1432
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.c, align 8, !tbaa !161, !alias.scope !1432
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !1431, !alias.scope !1432
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.e, align 8, !tbaa !163, !alias.scope !1432
  store i32 %1, ptr %0, align 8, !tbaa !1435
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.f, align 4, !tbaa !1436
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.g, align 8, !tbaa !1437
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.h, align 4, !tbaa !1438
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %i.i, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %6, ptr %i.j, align 4, !tbaa !158
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_converter_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !59
  %i.b = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef %0, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %2, align 8, !tbaa !180
  store i64 %i.c, ptr %1, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_data_converter_get_heap_layout(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) initializes((0, 24)) %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.ma_channel_converter_heap_layout, align 8 ; 5 uses
  %3 = alloca %struct.ma_channel_converter_config, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %struct.ma_resampler_config, align 8 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1437 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1438 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1431, !noalias !1439
  %.not.i.i.i = icmp eq i32 %i.j, 0               ; 2 uses
  br i1 %.not.i.i.i, label %ma_data_converter_config_is_resampler_required.exit.i.i, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !152, !noalias !1439
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !158, !noalias !1439
  %.not14.i.i = icmp eq i32 %i.l, %i.n
  br i1 %.not14.i.i, label %bb.e, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.thread.i.i: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !161, !noalias !1439
  %.not10.i.i = icmp eq i32 %i.p, 0
  br i1 %.not10.i.i, label %bb.e, label %ma_channel_converter_config_init_from_data_converter_config.exit

bb.e:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %ma_data_converter_config_is_resampler_required.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1436, !noalias !1439 ; 3 uses
  switch i32 %i.r, label %bb.f [
    i32 2, label %ma_channel_converter_config_init_from_data_converter_config.exit
    i32 5, label %ma_channel_converter_config_init_from_data_converter_config.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %0, align 8, !tbaa !1435, !noalias !1439
  %switch.selectcmp12.i.i = icmp eq i32 %i.s, 2
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 2, i32 5
  br label %ma_channel_converter_config_init_from_data_converter_config.exit

ma_channel_converter_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %bb.e, %bb.e, %bb.f
  %.0.i.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i ], [ %i.r, %bb.e ], [ %switch.select13.i.i, %bb.f ], [ %i.r, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.i.i, ptr %3, align 8, !tbaa !8, !alias.scope !1439
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !8, !alias.scope !1439
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1439
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !1439
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !520, !noalias !1439
  store <2 x ptr> %i.v, ptr %.sroa.78.0..sroa_idx.i, align 8, !tbaa !520, !alias.scope !1439
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1442, !noalias !1439
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1353, !alias.scope !1439
  %i.z = load <2 x i32>, ptr %i.u, align 4, !tbaa !8, !noalias !1439
  store <2 x i32> %i.z, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.aa = call fastcc i32 @ma_channel_converter_get_heap_layout(ptr noundef nonnull readonly %3, ptr noundef %2) ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  %i.ab = load i64, ptr %2, align 8, !tbaa !1328  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  store i64 %i.ab, ptr %1, align 8, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !790
  br i1 %.not.i.i.i, label %ma_data_converter_config_is_resampler_required.exit, label %bb.h

ma_data_converter_config_is_resampler_required.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !152
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !158
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.m, label %ma_data_converter_config_is_resampler_required.exit.i.i41

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  br label %ma_data_converter_config_is_resampler_required.exit.thread.i.i31

ma_data_converter_config_is_resampler_required.exit.i.i41: ; preds = %ma_data_converter_config_is_resampler_required.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  br label %ma_data_converter_config_is_resampler_required.exit.thread.i.i31

ma_data_converter_config_is_resampler_required.exit.thread.i.i31: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i41, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !161, !noalias !1443
  %.not10.i.i32 = icmp eq i32 %i.ai, 0
  br i1 %.not10.i.i32, label %bb.i, label %ma_resampler_config_init_from_data_converter_config.exit

bb.i:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1436, !noalias !1443 ; 3 uses
  switch i32 %i.ak, label %bb.j [
    i32 2, label %ma_resampler_config_init_from_data_converter_config.exit
    i32 5, label %ma_resampler_config_init_from_data_converter_config.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %0, align 8, !tbaa !1435, !noalias !1443
  %switch.selectcmp12.i.i39 = icmp eq i32 %i.al, 2
  %switch.select13.i.i40 = select i1 %switch.selectcmp12.i.i39, i32 2, i32 5
  br label %ma_resampler_config_init_from_data_converter_config.exit

ma_resampler_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i31, %bb.i, %bb.i, %bb.j
  %.0.i.i33 = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i31 ], [ %i.ak, %bb.i ], [ %switch.select13.i.i40, %bb.j ], [ %i.ak, %bb.i ]
  %..i = call i32 @llvm.umin.i32(i32 %i.d, i32 %i.g)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !161, !noalias !1443 ; 2 uses
  %.sroa.9.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.9.0..sroa_idx.i34, align 4, !alias.scope !1443
  store i32 %.0.i.i33, ptr %4, align 8, !tbaa !8, !alias.scope !1443
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.i35, align 4, !tbaa !8, !alias.scope !1443
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = load <2 x i32>, ptr %i.am, align 8, !tbaa !8, !noalias !1443
  store <2 x i32> %5, ptr %.sroa.5.0..sroa_idx.i36, align 8, !tbaa !8, !alias.scope !1443
  %.sroa.9.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.ao, ptr %.sroa.9.0..sroa_idx.i37, align 8, !tbaa !8, !alias.scope !1443
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.10.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %.sroa.10.0..sroa_idx.i38, align 4, !alias.scope !1443
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !8, !noalias !1443
  store i32 %i.aq, ptr %.sroa.913.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1443
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1446, !noalias !1443 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1306, !alias.scope !1443
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1447, !noalias !1443 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !1307, !alias.scope !1443
  store i64 0, ptr %i.a, align 8, !tbaa !59
  switch i32 %i.ao, label %.thread53 [
    i32 0, label %.thread.i
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  %i.ax = icmp eq ptr %i.as, null
  br i1 %i.ax, label %.thread53, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %ma_resampler_config_init_from_data_converter_config.exit
  %.018.ph29.i = phi ptr [ %i.av, %bb.k ], [ null, %ma_resampler_config_init_from_data_converter_config.exit ]
  %.1.ph28.i = phi ptr [ %i.as, %bb.k ], [ @g_ma_linear_resampler_vtable, %ma_resampler_config_init_from_data_converter_config.exit ]
  %i.ay = load ptr, ptr %.1.ph28.i, align 8, !tbaa !1308 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread53, label %ma_resampler_get_heap_size.exit

ma_resampler_get_heap_size.exit:                  ; preds = %.thread.i
  %i.ba = call i32 %i.ay(ptr noundef %.018.ph29.i, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #55, !inline_history !1310 ; 2 uses
  %.not28 = icmp eq i32 %i.ba, 0
  br i1 %.not28, label %bb.l, label %.thread53

.thread53:                                        ; preds = %ma_resampler_get_heap_size.exit, %bb.k, %ma_resampler_config_init_from_data_converter_config.exit, %.thread.i
  %.124.ph = phi i32 [ %i.ba, %ma_resampler_get_heap_size.exit ], [ -29, %.thread.i ], [ -2, %ma_resampler_config_init_from_data_converter_config.exit ], [ -29, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.n

bb.l:                                             ; preds = %ma_resampler_get_heap_size.exit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !59
  %i.bc = load i64, ptr %1, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %ma_data_converter_config_is_resampler_required.exit
  %i.be = phi i64 [ %i.bd, %bb.l ], [ %i.ab, %ma_data_converter_config_is_resampler_required.exit ]
  %i.bf = add i64 %i.be, 7
  %i.bg = and i64 %i.bf, -8
  store i64 %i.bg, ptr %1, align 8, !tbaa !180
  br label %bb.n

.critedge:                                        ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.n

bb.n:                                             ; preds = %.thread53, %.critedge, %bb.b, %bb.c, %bb.a, %bb.m
  %.2 = phi i32 [ %i.aa, %.critedge ], [ -2, %bb.a ], [ 0, %bb.m ], [ %.124.ph, %.thread53 ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_converter_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 6 uses
  %4 = alloca %struct.ma_channel_converter_config, align 8 ; 11 uses
  %5 = alloca %struct.ma_resampler_config, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.aq, label %ma_zero_memory_default.exit91

ma_zero_memory_default.exit91:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(312) %2, i8 0, i64 312, i1 false)
  %i.b = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef %0, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %ma_zero_memory_default.exit91
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr %1, ptr %i.c, align 8, !tbaa !178
  %i.d = load i64, ptr %3, align 8, !tbaa !180    ; 2 uses
  %i.e = icmp ne ptr %1, null
  %i.f = icmp ne i64 %i.d, 0
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.c, label %ma_zero_memory_default.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.d, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !1435   ; 3 uses
  store i32 %i.g, ptr %2, align 8, !tbaa !1448
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1436 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !1449
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1437 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !1450
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1438 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !1451
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !152  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !1452
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !158  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.u, ptr %i.v, align 4, !tbaa !1453
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1430
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.x, ptr %i.y, align 8, !tbaa !1454
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1431
  %.not.i = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not.i, label %ma_data_converter_config_is_resampler_required.exit.i, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.i: ; preds = %ma_zero_memory_default.exit
  %i.ab = icmp ne i32 %i.r, %i.u
  %i.ac = zext i1 %i.ab to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.r, %i.u
  br i1 %.not14.i, label %bb.d, label %ma_data_converter_config_is_resampler_required.exit.thread.i

ma_data_converter_config_is_resampler_required.exit.thread.i: ; preds = %ma_zero_memory_default.exit, %ma_data_converter_config_is_resampler_required.exit.i
  %i.ad = phi i32 [ %i.ac, %ma_data_converter_config_is_resampler_required.exit.i ], [ 1, %ma_zero_memory_default.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !161
  %.not10.i = icmp eq i32 %i.af, 0
  br i1 %.not10.i, label %bb.d, label %ma_data_converter_config_get_mid_format.exit

bb.d:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %ma_data_converter_config_is_resampler_required.exit.i
  %i.ag = phi i32 [ %i.ad, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ac, %ma_data_converter_config_is_resampler_required.exit.i ] ; 3 uses
  switch i32 %i.i, label %bb.e [
    i32 2, label %ma_data_converter_config_get_mid_format.exit
    i32 5, label %ma_data_converter_config_get_mid_format.exit
  ]

bb.e:                                             ; preds = %bb.d
  %switch.selectcmp12.i = icmp eq i32 %i.g, 2
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 2, i32 5
  br label %ma_data_converter_config_get_mid_format.exit

ma_data_converter_config_get_mid_format.exit:     ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i, %bb.d, %bb.d, %bb.e
  %i.ah = phi i32 [ %i.ad, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %.0.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i ], [ %i.i, %bb.d ], [ %switch.select13.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %.not14.i.i = icmp eq i32 %i.r, %i.u
  %or.cond = select i1 %.not.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond, label %bb.f, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i

ma_data_converter_config_is_resampler_required.exit.thread.i.i: ; preds = %ma_data_converter_config_get_mid_format.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !161, !noalias !1455
  %.not10.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not10.i.i, label %bb.f, label %ma_channel_converter_config_init_from_data_converter_config.exit

bb.f:                                             ; preds = %ma_data_converter_config_get_mid_format.exit, %ma_data_converter_config_is_resampler_required.exit.thread.i.i
  switch i32 %i.i, label %bb.g [
    i32 2, label %ma_channel_converter_config_init_from_data_converter_config.exit
    i32 5, label %ma_channel_converter_config_init_from_data_converter_config.exit
  ]

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp12.i.i = icmp eq i32 %i.g, 2
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 2, i32 5
  br label %ma_channel_converter_config_init_from_data_converter_config.exit

ma_channel_converter_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i, %bb.f, %bb.f, %bb.g
  %.0.i.i = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i ], [ %i.i, %bb.f ], [ %switch.select13.i.i, %bb.g ], [ %i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0.i.i, ptr %4, align 8, !tbaa !8, !alias.scope !1455
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !8, !alias.scope !1455
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1455
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !1455
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !520, !noalias !1455
  store <2 x ptr> %i.am, ptr %.sroa.78.0..sroa_idx.i, align 8, !tbaa !520, !alias.scope !1455
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1442, !noalias !1455
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1353, !alias.scope !1455
  %i.aq = load <2 x i32>, ptr %i.al, align 4, !tbaa !8, !noalias !1455
  store <2 x i32> %i.aq, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1455
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !800
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = call i32 @ma_channel_converter_init_preallocated(ptr noundef nonnull %4, ptr noundef %i.at, ptr noundef nonnull %i.au) ; 2 uses
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %bb.h, label %.critedge

bb.h:                                             ; preds = %ma_channel_converter_config_init_from_data_converter_config.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1458
  %.not80 = icmp eq i32 %i.ax, 1
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 298
  store i8 1, ptr %i.ay, align 2, !tbaa !1459
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %.not81 = icmp eq i32 %i.ah, 0
  br i1 %.not81, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.az = load i32, ptr %i.k, align 8, !tbaa !1437, !noalias !1460
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !1438, !noalias !1460
  %i.bb = load i32, ptr %i.z, align 8, !tbaa !1431, !noalias !1460
  %.not.i.i.i92 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i92, label %ma_data_converter_config_is_resampler_required.exit.i.i103, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.i.i103: ; preds = %bb.k
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !152, !noalias !1460
  %i.bd = load i32, ptr %i.t, align 4, !tbaa !158, !noalias !1460
  %.not14.i.i104 = icmp eq i32 %i.bc, %i.bd
  br i1 %.not14.i.i104, label %bb.l, label %ma_data_converter_config_is_resampler_required.exit.thread.i.i93

ma_data_converter_config_is_resampler_required.exit.thread.i.i93: ; preds = %ma_data_converter_config_is_resampler_required.exit.i.i103, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !161, !noalias !1460
  %.not10.i.i94 = icmp eq i32 %i.bf, 0
  br i1 %.not10.i.i94, label %bb.l, label %ma_resampler_config_init_from_data_converter_config.exit

bb.l:                                             ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %ma_data_converter_config_is_resampler_required.exit.i.i103
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !1436, !noalias !1460 ; 3 uses
  switch i32 %i.bg, label %bb.m [
    i32 2, label %ma_resampler_config_init_from_data_converter_config.exit
    i32 5, label %ma_resampler_config_init_from_data_converter_config.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %0, align 8, !tbaa !1435, !noalias !1460
  %switch.selectcmp12.i.i101 = icmp eq i32 %i.bh, 2
  %switch.select13.i.i102 = select i1 %switch.selectcmp12.i.i101, i32 2, i32 5
  br label %ma_resampler_config_init_from_data_converter_config.exit

ma_resampler_config_init_from_data_converter_config.exit: ; preds = %ma_data_converter_config_is_resampler_required.exit.thread.i.i93, %bb.l, %bb.l, %bb.m
  %.0.i.i95 = phi i32 [ 5, %ma_data_converter_config_is_resampler_required.exit.thread.i.i93 ], [ %i.bg, %bb.l ], [ %switch.select13.i.i102, %bb.m ], [ %i.bg, %bb.l ] ; 2 uses
  %..i = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ba) ; 2 uses
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !152, !noalias !1460 ; 2 uses
  %i.bj = load i32, ptr %i.t, align 4, !tbaa !158, !noalias !1460 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !161, !noalias !1460 ; 2 uses
  %.sroa.9.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.9.0..sroa_idx.i96, align 4, !alias.scope !1460
  store i32 %.0.i.i95, ptr %5, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %..i, ptr %.sroa.5.0..sroa_idx.i97, align 4, !tbaa !8, !alias.scope !1460
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bi, ptr %.sroa.6.0..sroa_idx.i.a, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.7.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx.i98, align 4, !tbaa !8, !alias.scope !1460
  %.sroa.9.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.bl, ptr %.sroa.9.0..sroa_idx.i99, align 8, !tbaa !8, !alias.scope !1460
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %.sroa.10.0..sroa_idx.i100, align 4, !alias.scope !1460
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8, !noalias !1460
  store i32 %i.bn, ptr %.sroa.913.0..sroa_idx.i, align 8, !tbaa !8, !alias.scope !1460
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1446, !noalias !1460 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !1306, !alias.scope !1460
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1447, !noalias !1460 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !1307, !alias.scope !1460
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !790
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bx, i8 0, i64 192, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !172
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %.0.i.i95, ptr %i.bz, align 8, !tbaa !1463
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %..i, ptr %i.ca, align 4, !tbaa !1464
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.bi, ptr %i.cb, align 8, !tbaa !1314
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.bj, ptr %i.cc, align 4, !tbaa !1315
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  switch i32 %i.bl, label %.thread [
    i32 0, label %.thread.i
    i32 1, label %bb.n
  ]

.thread.i:                                        ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr @g_ma_linear_resampler_vtable, ptr %i.cd, align 8, !tbaa !33
  store ptr %i.bx, ptr %i.ce, align 8, !tbaa !33
  br label %bb.o

bb.n:                                             ; preds = %ma_resampler_config_init_from_data_converter_config.exit
  store ptr %i.bp, ptr %i.cd, align 8, !tbaa !33
  store ptr %i.bs, ptr %i.ce, align 8, !tbaa !33
  %i.cf = icmp eq ptr %i.bp, null
  br i1 %i.cf, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cg = phi ptr [ %i.bx, %.thread.i ], [ %i.bs, %bb.n ]
  %i.ch = phi ptr [ @g_ma_linear_resampler_vtable, %.thread.i ], [ %i.bp, %bb.n ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1309 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread, label %ma_resampler_init_preallocated.exit

ma_resampler_init_preallocated.exit:              ; preds = %bb.o
  %i.cl = call i32 %i.cj(ptr noundef %i.cg, ptr noundef nonnull %5, ptr noundef %i.bw, ptr noundef nonnull %i.bx) #55, !inline_history !1311 ; 2 uses
  %.not82 = icmp eq i32 %i.cl, 0
  br i1 %.not82, label %bb.p, label %.thread

.thread:                                          ; preds = %ma_resampler_init_preallocated.exit, %bb.n, %ma_resampler_config_init_from_data_converter_config.exit, %bb.o
  %.175.ph = phi i32 [ %i.cl, %ma_resampler_init_preallocated.exit ], [ -29, %bb.o ], [ -2, %ma_resampler_config_init_from_data_converter_config.exit ], [ -29, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.aq

bb.p:                                             ; preds = %ma_resampler_init_preallocated.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 299
  store i8 1, ptr %i.cm, align 1, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 298
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !1459 ; 2 uses
  %.not113 = icmp eq i8 %i.co, 0                  ; 2 uses
  br i1 %.not113, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !164
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %2, align 8, !tbaa !1448
  %i.ct = load i32, ptr %i.j, align 4, !tbaa !1449
  %i.cu = icmp eq i32 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 0, ptr %i.cv, align 8, !tbaa !1465
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 297 ; 2 uses
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.cw, align 1, !tbaa !1466
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.cw, align 1, !tbaa !1466
  br label %bb.z

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr %2, align 8, !tbaa !1448
  %.not83 = icmp eq i32 %i.cx, %.0.i
  br i1 %.not83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 1, ptr %i.cy, align 8, !tbaa !1465
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !1449
  %.not84 = icmp eq i32 %i.cz, %.0.i
  br i1 %.not84, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 297
  store i8 1, ptr %i.da, align 1, !tbaa !1466
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !1465
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 297
  %i.df = load i8, ptr %i.de, align 1, !tbaa !1466
  %i.dg = or i8 %i.df, %i.co
  %brmerge.not = icmp eq i8 %i.dg, 0
  br i1 %brmerge.not, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !164
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 300
  store i8 1, ptr %i.dk, align 4, !tbaa !1467
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !1467
  %.not85 = icmp eq i8 %i.dm, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.dn, align 4, !tbaa !1468
  br label %bb.aq

bb.af:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.m, align 8, !tbaa !1450
  %i.dp = load i32, ptr %i.p, align 4, !tbaa !1451
  %i.dq = icmp ult i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 299
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !164
  %.not89 = icmp eq i8 %i.ds, 0                   ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  br i1 %i.dq, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %.not89, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 4, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.aj:                                            ; preds = %bb.af
  br i1 %.not113, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 3, ptr %i.dt, align 4, !tbaa !1468
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store i32 1, ptr %i.dt, align 4, !tbaa !1468
end_hunk_0
