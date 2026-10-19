Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/block-hmp-cmds?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
begin_hunk_0_@print_block_info:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.88, i64 noundef %i.cf, i64 noundef %i.cq, i64 noundef %i.cs, i64 noundef %i.cu, i64 noundef %i.cw, i64 noundef %i.cy, i64 noundef %i.da, i64 noundef %i.dc, i64 noundef %i.de, i64 noundef %i.dg, i64 noundef %i.di, i64 noundef %i.dk, i64 noundef %i.dm, ptr noundef %i.do) #9 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.y
  br i1 %3, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.dq = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.89) #9 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ds = load ptr, ptr %i.dr, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0 = phi ptr [ %i.ds, %bb.aa ], [ %i.du, %bb.ab ] ; 2 uses
  tail call void @bdrv_node_info_dump(ptr noundef %.0, i32 noundef 0, i1 noundef zeroext false) #9
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 120
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not110 = icmp eq ptr %i.du, null
  br i1 %.not110, label %.loopexit, label %bb.ab

.loopexit:                                        ; preds = %bb.ab, %.split, %bb.z, %bb.q
  ret void
}

declare ptr @qmp_query_named_block_nodes(i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @qapi_free_BlockDeviceInfoList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_info_blockstats(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @qmp_query_blockstats(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #9 ; 4 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.028 = phi ptr [ %i.aq, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not26 = icmp eq ptr %.028, %i.a
  %i.e = select i1 %.not26, ptr @.str.42, ptr @.str.39
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %i.i) #9 ; 0 uses
  %i.k = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #9 ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s, i64 noundef %i.u) #9 ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %i.ag) #9 ; 0 uses
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42, i64 noundef %i.am, i64 noundef %i.ao) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.aq = load ptr, ptr %.028, align 8            ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @qapi_free_BlockStatsList(ptr noundef %i.a) #9
  ret void
}

declare ptr @qmp_query_blockstats(i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @qapi_free_BlockStatsList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_info_block_jobs(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @qmp_query_block_jobs(ptr noundef nonnull @error_abort) #9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.51) #9 ; 0 uses
  br label %bb.g

.preheader:                                       ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.aa, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.p = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @JobType_lookup, i32 noundef %i.e) #9
  %i.q = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %i.p, ptr noundef %i.s, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.y) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %.020, align 8            ; 2 uses
  %.not19 = icmp eq ptr %i.aa, null
  br i1 %.not19, label %bb.f, label %.preheader, !llvm.loop !15

bb.f:                                             ; preds = %bb.e
  tail call void @qapi_free_BlockJobInfoList(ptr noundef null) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

declare ptr @qmp_query_block_jobs(ptr noundef) local_unnamed_addr #2

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qapi_free_BlockJobInfoList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_info_snapshots(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.BdrvNextIterator, align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %union.anon.1, align 8              ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store ptr %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8
  call void @bdrv_graph_rdlock_main_loop() #9
  %i.e = call ptr @bdrv_all_find_vmstate_bs(ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call zeroext i1 @hmp_handle_error(ptr noundef %0, ptr noundef %i.f) #9 ; 0 uses
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @bdrv_snapshot_list(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9 ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %i.h) #9 ; 0 uses
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @bdrv_first(ptr noundef nonnull %2) #9 ; 2 uses
  %.not151165 = icmp eq ptr %i.k, null
  br i1 %.not151165, label %.critedge203, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.0131167 = phi ptr [ %i.ac, %bb.i ], [ %i.k, %bb.e ] ; 3 uses
  %.0133166 = phi i1 [ %.2, %bb.i ], [ true, %bb.e ] ; 2 uses
  %i.l = call i32 @bdrv_can_snapshot(ptr noundef nonnull %.0131167) #9
  %.not160 = icmp eq i32 %i.l, 0
  br i1 %.not160, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.b, align 8
  %i.m = call i32 @bdrv_snapshot_list(ptr noundef nonnull %.0131167, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.loopexit163

bb.g:                                             ; preds = %bb.f
  %i.o = call noalias dereferenceable_or_null(40) ptr @g_malloc0(i64 noundef 40) #12 ; 6 uses
  %i.p = call ptr @bdrv_get_device_name(ptr noundef nonnull %.0131167) #9
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %i.u, align 8
  store ptr %i.o, ptr %i.t, align 8
  store ptr %i.s, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.v = call noalias dereferenceable_or_null(432) ptr @g_malloc0(i64 noundef 432) #12 ; 4 uses
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw [416 x i8], ptr %i.w, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.v, ptr noundef nonnull align 8 dereferenceable(416) %i.x, i64 416, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 416 ; 2 uses
  store ptr null, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 424
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.v, ptr %i.z, align 8
  store ptr %i.y, ptr %i.r, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit163, label %bb.h, !llvm.loop !16

.loopexit163:                                     ; preds = %bb.h, %bb.f
  %.1 = phi i1 [ %.0133166, %bb.f ], [ false, %bb.h ]
  %i.ab = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %i.ab) #9
  br label %bb.i

bb.i:                                             ; preds = %.loopexit163, %.lr.ph
  %.2 = phi i1 [ %.1, %.loopexit163 ], [ %.0133166, %.lr.ph ] ; 2 uses
  %i.ac = call ptr @bdrv_next(ptr noundef nonnull %2) #9 ; 2 uses
  %.not151 = icmp eq ptr %i.ac, null
  br i1 %.not151, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.i
  br i1 %.2, label %.critedge203, label %bb.j

.critedge203:                                     ; preds = %bb.e, %._crit_edge
  %i.ad = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.55) #9 ; 0 uses
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ae = zext nneg i32 %i.h to i64
  %i.af = call noalias ptr @g_malloc0_n(i64 noundef %i.ae, i64 noundef 4) #13 ; 3 uses
  %.not204 = icmp eq i32 %i.h, 0
  br i1 %.not204, label %._crit_edge181.thread, label %.lr.ph180.preheader

._crit_edge181.thread:                            ; preds = %bb.j
  %i.ag = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.56) #9 ; 0 uses
  br label %bb.t

.lr.ph180.preheader:                              ; preds = %bb.j
  %wide.trip.count209 = zext nneg i32 %i.h to i64
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.loopexit162
  %indvars.iv206 = phi i64 [ 0, %.lr.ph180.preheader ], [ %indvars.iv.next207, %.loopexit162 ] ; 4 uses
  %.0141178 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.1142, %.loopexit162 ] ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw [416 x i8], ptr %i.ah, i64 %indvars.iv206
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = call i32 @bdrv_all_has_snapshot(ptr noundef nonnull %i.aj, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #9
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.k, label %.loopexit162

bb.k:                                             ; preds = %.lr.ph180
  %i.am = sext i32 %.0141178 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.am
  %i.ao = trunc nuw nsw i64 %indvars.iv206 to i32
  store i32 %i.ao, ptr %i.an, align 4
  %i.ap = add i32 %.0141178, 1                    ; 2 uses
  %.0138172 = load ptr, ptr %3, align 8           ; 2 uses
  %.not156173 = icmp eq ptr %.0138172, null
  br i1 %.not156173, label %.loopexit162, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.k, %.critedge
  %.0138174 = phi ptr [ %.0138, %.critedge ], [ %.0138172, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0138174, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not157168 = icmp eq ptr %i.ar, null
  br i1 %.not157168, label %.critedge, label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph176
  %i.as = getelementptr inbounds nuw i8, ptr %.0138174, i64 32
  %.pre216 = load ptr, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph171, %bb.q
  %i.at = phi ptr [ %.pre216, %.lr.ph171 ], [ %i.be, %bb.q ] ; 2 uses
  %.0135169 = phi ptr [ %i.ar, %.lr.ph171 ], [ %i.av, %bb.q ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0135169, i64 416 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = getelementptr inbounds nuw [416 x i8], ptr %i.at, i64 %indvars.iv206
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %.0135169, i64 128
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(1) %i.ay) #11
  %.not158 = icmp eq i32 %i.az, 0
  br i1 %.not158, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.not159 = icmp eq ptr %i.av, null
  %i.ba = getelementptr inbounds nuw i8, ptr %.0135169, i64 424
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  br i1 %.not159, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 424
  store ptr %i.bb, ptr %i.bc, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.bb, ptr %i.as, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bd = load ptr, ptr %i.au, align 8
  store ptr %i.bd, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @g_free(ptr noundef nonnull %.0135169) #9
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %i.be = phi ptr [ %i.at, %bb.l ], [ %.pre, %bb.p ]
  %.not157 = icmp eq ptr %i.av, null
  br i1 %.not157, label %.critedge, label %bb.l, !llvm.loop !18

.critedge:                                        ; preds = %bb.q, %.lr.ph176
  %i.bf = getelementptr inbounds nuw i8, ptr %.0138174, i64 8
  %.0138 = load ptr, ptr %i.bf, align 8           ; 2 uses
  %.not156 = icmp eq ptr %.0138, null
  br i1 %.not156, label %.loopexit162, label %.lr.ph176, !llvm.loop !19

.loopexit162:                                     ; preds = %.critedge, %bb.k, %.lr.ph180
  %.1142 = phi i32 [ %.0141178, %.lr.ph180 ], [ %i.ap, %bb.k ], [ %i.ap, %.critedge ] ; 3 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !20

._crit_edge181:                                   ; preds = %.loopexit162
  %i.bg = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.56) #9 ; 0 uses
  %i.bh = icmp sgt i32 %.1142, 0
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge181
  call void @bdrv_snapshot_dump(ptr noundef null) #9
  %i.bi = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #9 ; 0 uses
  %wide.trip.count214 = zext nneg i32 %.1142 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.s
  %indvars.iv211 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next212, %bb.s ] ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv211
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [416 x i8], ptr %i.bj, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8
  call void @pstrcpy(ptr noundef %i.bn, i32 noundef 128, ptr noundef nonnull @.str.57) #9
  %i.bo = load ptr, ptr %i.b, align 8
  call void @bdrv_snapshot_dump(ptr noundef %i.bo) #9
  %i.bp = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #9 ; 0 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit161, label %bb.s, !llvm.loop !21

bb.t:                                             ; preds = %._crit_edge181.thread, %._crit_edge181
  %i.bq = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.58) #9 ; 0 uses
  br label %.loopexit161

.loopexit161:                                     ; preds = %bb.s, %bb.t
  %.1139189 = load ptr, ptr %3, align 8           ; 2 uses
  %.not152190 = icmp eq ptr %.1139189, null
  br i1 %.not152190, label %.critedge2, label %.lr.ph193

.lr.ph193:                                        ; preds = %.loopexit161, %.loopexit
  %.1139191 = phi ptr [ %.1139, %.loopexit ], [ %.1139189, %.loopexit161 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1139191, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph193
  %i.bu = load ptr, ptr %.1139191, align 8
  %i.bv = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %i.bu) #9 ; 0 uses
  call void @bdrv_snapshot_dump(ptr noundef null) #9
  %i.bw = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #9 ; 0 uses
  %.1136184 = load ptr, ptr %i.br, align 8        ; 2 uses
  %.not155185 = icmp eq ptr %.1136184, null
  br i1 %.not155185, label %.loopexit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.u, %.lr.ph188
  %.1136186 = phi ptr [ %.1136, %.lr.ph188 ], [ %.1136184, %bb.u ] ; 2 uses
  call void @bdrv_snapshot_dump(ptr noundef nonnull %.1136186) #9
  %i.bx = call i32 (ptr, ptr, ...) @monitor_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #9 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1136186, i64 416
  %.1136 = load ptr, ptr %i.by, align 8           ; 2 uses
  %.not155 = icmp eq ptr %.1136, null
  br i1 %.not155, label %.loopexit, label %.lr.ph188, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph188, %bb.u, %.lr.ph193
  %i.bz = getelementptr inbounds nuw i8, ptr %.1139191, i64 8
  %.1139 = load ptr, ptr %i.bz, align 8           ; 2 uses
  %.not152 = icmp eq ptr %.1139, null
  br i1 %.not152, label %._crit_edge194, label %.lr.ph193, !llvm.loop !23

._crit_edge194:                                   ; preds = %.loopexit
  %.pre217 = load ptr, ptr %3, align 8            ; 2 uses
  %.not153199 = icmp eq ptr %.pre217, null
  br i1 %.not153199, label %.critedge2, label %.lr.ph202

.lr.ph202:                                        ; preds = %._crit_edge194, %.critedge4
  %.2140200 = phi ptr [ %i.cb, %.critedge4 ], [ %.pre217, %._crit_edge194 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2140200, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.2140200, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not154195 = icmp eq ptr %i.cd, null
  br i1 %.not154195, label %.critedge4, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph202, %.lr.ph198
  %.2137196 = phi ptr [ %i.cf, %.lr.ph198 ], [ %i.cd, %.lr.ph202 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2137196, i64 416
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  call void @g_free(ptr noundef nonnull %.2137196) #9
  %.not154 = icmp eq ptr %i.cf, null
  br i1 %.not154, label %.critedge4, label %.lr.ph198, !llvm.loop !24

.critedge4:                                       ; preds = %.lr.ph198, %.lr.ph202
  call void @g_free(ptr noundef nonnull %.2140200) #9
  %.not153 = icmp eq ptr %i.cb, null
  br i1 %.not153, label %.critedge2, label %.lr.ph202, !llvm.loop !25

.critedge2:                                       ; preds = %.critedge4, %.loopexit161, %._crit_edge194
  %i.cg = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.cg) #9
  call void @g_free(ptr noundef %i.af) #9
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %.critedge2, %.critedge203, %bb.d, %bb.b
  call void @bdrv_graph_rdunlock_main_loop() #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

declare ptr @bdrv_all_find_vmstate_bs(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_snapshot_list(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_first(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_can_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @bdrv_get_device_name(ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_next(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_all_has_snapshot(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bdrv_snapshot_dump(ptr noundef) local_unnamed_addr #2

declare void @pstrcpy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hmp_change_medium(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %7, align 8
  store ptr %6, ptr %i.a, align 8
  %i.b = icmp eq ptr %6, null
  %i.c = icmp eq ptr %6, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %7, ptr %6 ; 3 uses
  %i.d = icmp ne ptr %4, null                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @qapi_enum_parse(ptr noundef nonnull @BlockdevChangeReadOnlyMode_lookup, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %spec.select) #9
  %i.f = load ptr, ptr %spec.select, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  call void @qmp_blockdev_change_medium(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext %5, i1 noundef zeroext %i.d, i32 noundef %.0, ptr noundef nonnull %spec.select) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val = load ptr, ptr %7, align 8
  %.val17 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val17, ptr noundef %.val) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void
}

declare i32 @qapi_enum_parse(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qmp_blockdev_change_medium(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qemu_opts_to_qdict(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bds_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bdrv_set_monitor_owned(ptr noundef) local_unnamed_addr #2

declare void @qobject_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #2

declare i32 @monitor_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bdrv_node_info_dump(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
end_hunk_0
