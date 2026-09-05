Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-cluster?download=true
inline.NumInlined: 195
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@expand_zero_clusters_in_l1:bb.a
  %i.br = icmp eq i32 %.0.i.us, 1                 ; 4 uses
  br i1 %i.br, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.aa, align 8
  %.not166.us = icmp eq ptr %i.bs, null
  br i1 %.not166.us, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.m, align 4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = call i64 @qcow2_alloc_clusters(ptr noundef nonnull %0, i64 noundef %i.bu) #13 ; 7 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %.split266.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = and i64 %i.bv, 9151314442816848383
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.t, label %.split269.us

bb.t:                                             ; preds = %bb.s
  %i.bz = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 1
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = load i32, ptr %i.d, align 8
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 %i.bv, %i.cc
  %i.ce = add i64 %i.bz, -1
  %i.cf = call i32 @qcow2_update_cluster_refcount(ptr noundef nonnull %0, i64 noundef %i.cd, i64 noundef %i.ce, i1 noundef zeroext false, i32 noundef 4) #13 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.split271.us, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p
  %.0.us = phi i64 [ %i.bv, %bb.u ], [ %i.bv, %bb.t ], [ %i.bq, %bb.p ] ; 9 uses
  %.val.us = load i32, ptr %i.m, align 4          ; 2 uses
  %i.ch = add i32 %.val.us, -1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = and i64 %.0.us, %i.ci
  %.not167.us = icmp eq i64 %i.cj, 0
  br i1 %.not167.us, label %bb.w, label %.split275.us

bb.w:                                             ; preds = %bb.v
  %i.ck = sext i32 %.val.us to i64
  %i.cl = call i32 @qcow2_pre_write_overlap_check(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %.0.us, i64 noundef %i.ck, i1 noundef zeroext true) #13 ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %.split282.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load ptr, ptr %i.ab, align 8
  %i.co = load i32, ptr %i.m, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = call i32 @bdrv_pwrite_zeroes(ptr noundef %i.cn, i64 noundef %.0.us, i64 noundef %i.cp, i32 noundef 0) #13 ; 3 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.split287.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load i64, ptr %i.b, align 8
  %i.ct = icmp eq i64 %i.cs, 1
  %i.cu = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ct, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val173.us = load i64, ptr %i.h, align 8
  %i.cv = trunc i64 %.val173.us to i32
  %i.cw = lshr i32 %i.cv, 4
  %i.cx = and i32 %i.cw, 1
  %i.cy = shl nuw i32 %.0140254.us, %i.cx
  %i.cz = call noundef i64 @llvm.bswap.i64(i64 %.0.us)
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.da
  store i64 %i.cz, ptr %i.db, align 8
  br label %qcow2_get_cluster_type.exit.thread.us

bb.aa:                                            ; preds = %bb.y
  %i.dc = or disjoint i64 %.0.us, -9223372036854775808
  %.val174.us = load i64, ptr %i.h, align 8
  %i.dd = trunc i64 %.val174.us to i32
  %i.de = lshr i32 %i.dd, 4
  %i.df = and i32 %i.de, 1
  %i.dg = shl nuw i32 %.0140254.us, %i.df
  %i.dh = call noundef i64 @llvm.bswap.i64(i64 %i.dc)
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.di
  store i64 %i.dh, ptr %i.dj, align 8
  br label %qcow2_get_cluster_type.exit.thread.us

bb.ab:                                            ; preds = %bb.q
  store i64 0, ptr %i.be, align 8
  br label %qcow2_get_cluster_type.exit.thread.us

qcow2_get_cluster_type.exit.thread.us:            ; preds = %bb.ab, %bb.aa, %bb.z, %qcow2_get_cluster_type.exit.us, %bb.n, %.lr.ph.us
  %.1.us = phi i8 [ 1, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.z ], [ %.0137255.us, %qcow2_get_cluster_type.exit.us ], [ %.0137255.us, %.lr.ph.us ], [ %.0137255.us, %bb.n ] ; 2 uses
  %i.dk = add nuw nsw i32 %.0140254.us, 1         ; 2 uses
  %i.dl = load i32, ptr %i.j, align 8
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !36

._crit_edge.us:                                   ; preds = %qcow2_get_cluster_type.exit.thread.us
  %i.dn = trunc nuw i8 %.1.us to i1               ; 2 uses
  br i1 %i.g, label %bb.af, label %bb.ac

._crit_edge.us.thread:                            ; preds = %.preheader.us
  br i1 %i.g, label %.thread421, label %.thread

bb.ac:                                            ; preds = %._crit_edge.us
  br i1 %i.dn, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.do = call i32 @qcow2_pre_write_overlap_check(ptr noundef nonnull %0, i32 noundef 132, i64 noundef %i.ar, i64 noundef %i.y, i1 noundef zeroext false) #13 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %.thread183, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load ptr, ptr %i.x, align 8
  %i.dr = load ptr, ptr %i.a, align 8
  %i.ds = call i32 @bdrv_pwrite(ptr noundef %i.dq, i64 noundef %i.ar, i64 noundef %i.y, ptr noundef %i.dr, i32 noundef 0) #13 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.thread183, label %.thread

bb.af:                                            ; preds = %._crit_edge.us
  br i1 %i.dn, label %bb.ag, label %.thread421

bb.ag:                                            ; preds = %bb.af
  %i.du = load ptr, ptr %i.z, align 8
  %i.dv = load ptr, ptr %i.a, align 8
  call void @qcow2_cache_entry_mark_dirty(ptr noundef %i.du, ptr noundef %i.dv) #13
  %i.dw = load ptr, ptr %i.z, align 8
  call void @qcow2_cache_depends_on_flush(ptr noundef %i.dw) #13
  br label %.thread421

.thread421:                                       ; preds = %._crit_edge.us.thread, %bb.ag, %bb.af
  %i.dx = load ptr, ptr %i.z, align 8
  call void @qcow2_cache_put(ptr noundef %i.dx, ptr noundef nonnull %i.a) #13
  br label %.thread

.thread:                                          ; preds = %._crit_edge.us.thread, %.thread421, %bb.ae, %bb.ac
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next393, %i.ac
  br i1 %i.dy, label %.preheader193.us, label %._crit_edge258.us, !llvm.loop !37

bb.ah:                                            ; preds = %.lr.ph261.split.us
  %i.dz = load i64, ptr %3, align 8
  %i.ea = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ea, ptr %3, align 8
  br i1 %.not165, label %bb.ai, label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %._crit_edge258.us
  %.sink = phi i64 [ %i.ee, %._crit_edge258.us ], [ %i.ea, %bb.ah ]
  call void %5(ptr noundef %0, i64 noundef %.sink, i64 noundef %4, ptr noundef %6) #13
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah, %._crit_edge258.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count398
  br i1 %exitcond399.not, label %.loopexit, label %.lr.ph261.split.us, !llvm.loop !38

.preheader.us:                                    ; preds = %bb.j
  %i.eb = load i32, ptr %i.j, align 8
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.us, label %._crit_edge.us.thread

._crit_edge258.us:                                ; preds = %.thread
  %i.ed = load i64, ptr %3, align 8
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  store i64 %i.ee, ptr %3, align 8
  br i1 %.not165, label %bb.ai, label %.sink.split

.lr.ph261.split:                                  ; preds = %.lr.ph261
  %wide.trip.count390 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %.not165, label %.lr.ph261.split.split.us, label %.lr.ph261.split.split.split

.lr.ph261.split.split.us:                         ; preds = %.lr.ph261.split, %.preheader193.us295
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %.preheader193.us295 ], [ 0, %.lr.ph261.split ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv387
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = and i64 %i.eg, 72057594037927424        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !annotation !9
  %.not.us292 = icmp eq i64 %i.eh, 0
  br i1 %.not.us292, label %.preheader193.us295, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph261.split.split.us
  %.val169.us293 = load i32, ptr %i.m, align 4
  %i.ei = add i32 %.val169.us293, -1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = and i64 %i.eh, %i.ej
  %.not164.us294 = icmp eq i64 %i.ek, 0
  br i1 %.not164.us294, label %bb.ak, label %.split.us

bb.ak:                                            ; preds = %bb.aj
  %i.el = load i32, ptr %i.d, align 8
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 %i.eh, %i.em
  %i.eo = call i32 @qcow2_get_refcount(ptr noundef %0, i64 noundef %i.en, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.thread183, label %.preheader193.us295

.preheader193.us295:                              ; preds = %.lr.ph261.split.split.us, %bb.ak
  %storemerge.in = load i64, ptr %3, align 8
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %.loopexit, label %.lr.ph261.split.split.us, !llvm.loop !38

.lr.ph261.split.split.split:                      ; preds = %.lr.ph261.split, %.preheader193
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader193 ], [ 0, %.lr.ph261.split ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = and i64 %i.er, 72057594037927424        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !annotation !9
  %.not = icmp eq i64 %i.es, 0
  br i1 %.not, label %.preheader193, label %bb.al

bb.al:                                            ; preds = %.lr.ph261.split.split.split
  %.val169 = load i32, ptr %i.m, align 4
  %i.et = add i32 %.val169, -1
  %i.eu = sext i32 %i.et to i64
  %i.ev = and i64 %i.es, %i.eu
  %.not164 = icmp eq i64 %i.ev, 0
  br i1 %.not164, label %bb.am, label %.split.us

.split.us:                                        ; preds = %bb.al, %bb.aj, %bb.f
  %.us-phi = phi i64 [ %i.af, %bb.f ], [ %i.eh, %bb.aj ], [ %i.es, %bb.al ]
  %.us-phi262.in = phi i64 [ %indvars.iv395, %bb.f ], [ %indvars.iv387, %bb.aj ], [ %indvars.iv, %bb.al ]
  %.us-phi262 = trunc i64 %.us-phi262.in to i32
  call void (ptr, i1, i64, i64, ptr, ...) @qcow2_signal_corruption(ptr noundef %0, i1 noundef zeroext true, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.74, i64 noundef %.us-phi, i32 noundef %.us-phi262) #13
  br label %.thread183

bb.am:                                            ; preds = %bb.al
  %i.ew = load i32, ptr %i.d, align 8
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %i.es, %i.ex
  %i.ez = call i32 @qcow2_get_refcount(ptr noundef %0, i64 noundef %i.ey, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %.thread183, label %.preheader193

.split266.us:                                     ; preds = %bb.r
  %i.fb = trunc i64 %i.bv to i32
  br label %.thread183

.split269.us:                                     ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 2392, ptr noundef nonnull @__PRETTY_FUNCTION__.expand_zero_clusters_in_l1) #15
  unreachable

.split271.us:                                     ; preds = %bb.u
  %i.fc = load i32, ptr %i.m, align 4
  %i.fd = sext i32 %i.fc to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %i.bv, i64 noundef %i.fd, i32 noundef 4) #13
  br label %.thread183

.split275.us:                                     ; preds = %bb.v
  %i.fe = load i32, ptr %i.j, align 8
  %i.ff = mul i32 %i.fe, %i.ao
  %i.fg = add i32 %i.ff, %.0140254.us
  call void (ptr, i1, i64, i64, ptr, ...) @qcow2_signal_corruption(ptr noundef nonnull %0, i1 noundef zeroext true, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.5, i64 noundef %.0.us, i64 noundef %i.af, i32 noundef %i.fg) #13
  br i1 %i.br, label %bb.an, label %.thread183

bb.an:                                            ; preds = %.split275.us
  %i.fh = load i32, ptr %i.m, align 4
  %i.fi = sext i32 %i.fh to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %.0.us, i64 noundef %i.fi, i32 noundef 1) #13
  br label %.thread183

.split282.us:                                     ; preds = %bb.w
  br i1 %i.br, label %bb.ao, label %.thread183

bb.ao:                                            ; preds = %.split282.us
  %i.fj = load i32, ptr %i.m, align 4
  %i.fk = sext i32 %i.fj to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %.0.us, i64 noundef %i.fk, i32 noundef 1) #13
  br label %.thread183

.split287.us:                                     ; preds = %bb.x
  br i1 %i.br, label %bb.ap, label %.thread183

bb.ap:                                            ; preds = %.split287.us
  %i.fl = load i32, ptr %i.m, align 4
  %i.fm = sext i32 %i.fl to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %.0.us, i64 noundef %i.fm, i32 noundef 1) #13
  br label %.thread183

.thread183:                                       ; preds = %bb.am, %bb.ak, %bb.g, %bb.ae, %bb.ad, %bb.j, %bb.ap, %bb.ao, %bb.an, %.split287.us, %.split282.us, %.split275.us, %.split271.us, %.split266.us, %.split.us
  %.7 = phi i32 [ -5, %.split.us ], [ %i.eo, %bb.ak ], [ %i.fb, %.split266.us ], [ -5, %.split275.us ], [ %i.cf, %.split271.us ], [ %i.cq, %bb.ap ], [ %i.cl, %bb.ao ], [ -5, %bb.an ], [ %i.cq, %.split287.us ], [ %i.cl, %.split282.us ], [ %.2144.us, %bb.j ], [ %i.am, %bb.g ], [ %i.ds, %bb.ae ], [ %i.do, %bb.ad ], [ %i.ez, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.loopexit

.preheader193:                                    ; preds = %bb.am, %.lr.ph261.split.split.split
  %i.fn = load i64, ptr %3, align 8
  %i.fo = add i64 %i.fn, 1                        ; 2 uses
  store i64 %i.fo, ptr %3, align 8
  call void %5(ptr noundef %0, i64 noundef %i.fo, i64 noundef %4, ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count390
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph261.split.split.split, !llvm.loop !38

.loopexit:                                        ; preds = %.preheader193, %.preheader193.us295, %bb.ai, %bb.e, %.thread183
  %.8 = phi i32 [ %.7, %.thread183 ], [ 0, %.preheader193.us295 ], [ 0, %bb.e ], [ 0, %bb.ai ], [ 0, %.preheader193 ] ; 3 uses
  %i.fp = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not168 = icmp eq ptr %i.fp, null
  br i1 %.not168, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  br i1 %i.g, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @qemu_vfree(ptr noundef nonnull %i.fp) #13
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  call void @qcow2_cache_put(ptr noundef %i.fr, ptr noundef nonnull %i.a) #13
  br label %bb.at

bb.at:                                            ; preds = %.loopexit, %bb.as, %bb.ar, %bb.d
  %.0146 = phi i32 [ %.8, %.loopexit ], [ -12, %bb.d ], [ %.8, %bb.ar ], [ %.8, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0146
}

declare i32 @qcow2_cache_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qcow2_validate_table(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @error_report_err(ptr noundef) local_unnamed_addr #2

declare ptr @g_try_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bdrv_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qcow2_parse_compressed_l2_entry(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 4611686018427387904
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %qcow2_get_cluster_type.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 2597, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_parse_compressed_l2_entry) #15
  unreachable

qcow2_get_cluster_type.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, %1                         ; 2 uses
  store i64 %i.f, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i64 %i.j to i32
  %i.n = and i32 %i.l, %i.m
  %i.o = shl i32 %i.n, 9
  %i.p = trunc i64 %i.f to i32
  %i.q = and i32 %i.p, 511
  %reass.sub = sub i32 %i.o, %i.q
  %i.r = add i32 %reass.sub, 512
  store i32 %i.r, ptr %3, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

declare i32 @qcow2_cache_get(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

declare i32 @qcow2_cache_get_empty(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare i64 @bdrv_opt_mem_align(ptr noundef) local_unnamed_addr #2

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @qemu_iovec_subvec_niov(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qemu_co_mutex_unlock(ptr noundef) #2

declare void @qemu_iovec_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
