Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc?download=true
inline.NumInlined: 533
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@vnc_display_get_address:bb.a
  %or.cond = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef 3863, ptr noundef nonnull @__func__.vnc_display_get_address, ptr noundef nonnull @.str.867, ptr noundef nonnull %.083104) #25
  br label %.thread111

bb.w:                                             ; preds = %bb.u
  %i.bd = trunc nuw nsw i64 %i.ay to i32
  %i.be = add nuw nsw i32 %i.av, %i.bd
  %i.bf = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.865, i32 noundef %i.be) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bf, ptr %i.bg, align 8
  %.not94 = icmp eq i32 %4, 0
  br i1 %.not94, label %.thread107, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  store i8 1, ptr %i.bh, align 2
  %i.bi = add i32 %4, %i.av
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i16 %i.bj, ptr %i.bk, align 4
  br label %.thread107

.thread111:                                       ; preds = %bb.g, %bb.p, %bb.e, %bb.t, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.thread115

.thread107:                                       ; preds = %bb.w, %bb.x, %.tail.thread, %bb.r, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  store i8 %i.d, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  store i8 %i.b, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.e, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.c, ptr %i.bo, align 8
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = trunc i64 %i.bp to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store ptr %i.f, ptr %9, align 8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.thread115, label %bb.y

.thread115:                                       ; preds = %.thread111, %bb.b, %.thread107
  %.2118 = phi i32 [ %i.bq, %.thread107 ], [ -1, %bb.b ], [ -1, %.thread111 ]
  call void @qapi_free_SocketAddress(ptr noundef %i.f) #25
  br label %bb.y

bb.y:                                             ; preds = %.thread119, %.thread107, %.thread115
  %.2117 = phi i32 [ %i.bq, %.thread107 ], [ %.2118, %.thread115 ], [ 0, %.thread119 ]
  ret i32 %.2117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #14

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @parse_uint_full(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #3

declare i32 @qemu_input_get_leds_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_refresh(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_console_listener_set_refresh(ptr noundef nonnull %0, i64 noundef 3000) #25
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @qemu_console_hw_update(ptr noundef %i.e) #25
  %i.f = load atomic ptr, ptr @qemu_mutex_trylock_func monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = tail call i32 %i.f(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.51, i32 noundef 46) #25, !inline_history !59
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @qemu_console_listener_set_refresh(ptr noundef nonnull %0, i64 noundef 30) #25
  br label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 587072 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @pixman_image_get_width(ptr noundef %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 587088 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @pixman_image_get_width(ptr noundef %i.m) #25
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.n) ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = tail call i32 @pixman_image_get_height(ptr noundef %i.p) #25
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = tail call i32 @pixman_image_get_height(ptr noundef %i.r) #25
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 587161 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !13, !noundef !14
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %vnc_update_stats.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #25 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = tail call i32 @pixman_image_get_width(ptr noundef %i.z) #25
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = tail call i32 @pixman_image_get_width(ptr noundef %i.ab) #25
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ac) ; 3 uses
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = tail call i32 @pixman_image_get_height(ptr noundef %i.ae) #25
  %i.ag = load ptr, ptr %i.l, align 8
  %i.ah = tail call i32 @pixman_image_get_height(ptr noundef %i.ag) #25
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ah) ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0                   ; 2 uses
  %i.ak = icmp sgt i32 %i.ad, 0                   ; 2 uses
  %or.cond.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %.preheader116.i.preheader.i, label %._crit_edge119.split.i.i

.preheader116.i.preheader.i:                      ; preds = %bb.f
  %i.al = zext nneg i32 %i.ad to i64
  %i.am = zext nneg i32 %i.ai to i64
  br label %.preheader116.i.i

.preheader116.i.i:                                ; preds = %._crit_edge.i.i, %.preheader116.i.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.preheader116.i.preheader.i ], [ %indvars.iv.next141.i, %._crit_edge.i.i ] ; 2 uses
  %i.an = lshr exact i64 %indvars.iv140.i, 6
  %i.ao = getelementptr [14720 x i8], ptr %i.a, i64 %i.an
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader116.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader116.i.i ] ; 2 uses
  %i.ap = lshr exact i64 %indvars.iv.i, 6
  %i.aq = getelementptr [184 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 86832
  store i8 0, ptr %i.ar, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next.i, %i.al
  br i1 %i.as, label %bb.g, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 64 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next141.i, %i.am
  br i1 %i.at, label %.preheader116.i.i, label %._crit_edge119.split.i.i, !llvm.loop !61

._crit_edge119.split.i.i:                         ; preds = %._crit_edge.i.i, %bb.f
  %i.au = load i64, ptr %1, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = add i64 %i.aw, -500000                  ; 3 uses
  %.lobit.i.i = ashr i64 %i.ax, 63
  %.sroa.031.0.i.i = add i64 %.lobit.i.i, %i.au   ; 2 uses
  %i.ay = load i64, ptr %i.y, align 8             ; 2 uses
  %i.az = icmp eq i64 %i.ay, %.sroa.031.0.i.i
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge119.split.i.i
  %i.ba = icmp slt i64 %i.ax, 0
  %i.bb = add i64 %i.aw, 500000
  %.sroa.17.0.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp sgt i64 %i.bd, %.sroa.17.0.i.i
  br i1 %i.be, label %vnc_update_stats.exit.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge119.split.i.i
  %i.bf = icmp sgt i64 %i.ay, %.sroa.031.0.i.i
  br i1 %i.bf, label %vnc_update_stats.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.aj, label %.preheader.lr.ph.i.i, label %vnc_update_stats.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 86592
  br i1 %i.ak, label %.preheader.us.i.i, label %vnc_update_stats.exit.i

.preheader.us.i.i:                                ; preds = %.preheader.lr.ph.i.i, %._crit_edge123.us.i.i
  %.0100125.us.i.i = phi i32 [ %.2.us.i.i, %._crit_edge123.us.i.i ], [ 0, %.preheader.lr.ph.i.i ]
  %.1102124.us.i.i = phi i32 [ %i.di, %._crit_edge123.us.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 4 uses
  %i.bh = ashr exact i32 %.1102124.us.i.i, 6
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [14720 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = sub nuw nsw i32 %i.ai, %.1102124.us.i.i
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 64)
  %i.bm = sext i32 %.1102124.us.i.i to i64
  %wide.trip.count.i.us.i.i = zext nneg i32 %i.bl to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.t, %.preheader.us.i.i
  %.1122.us.i.i = phi i32 [ %.0100125.us.i.i, %.preheader.us.i.i ], [ %.2.us.i.i, %bb.t ] ; 3 uses
  %.1104120.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %i.dg, %bb.t ] ; 3 uses
  %i.bn = ashr exact i32 %.1104120.us.i.i, 6
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [184 x i8], ptr %i.bj, i64 %i.bo ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.br = load i64, ptr %i.bq, align 8
  %.not.us.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.us.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.bt = load i64, ptr %i.bs, align 8
  %.not113.us.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not113.us.i.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = add i32 %i.bv, 9
  %i.bx = srem i32 %i.bw, 10
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.us.i.i = load i64, ptr %i.bz, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.7.0.copyload.us.i.i = load i64, ptr %.sroa.7.0..sroa_idx.us.i.i, align 8 ; 2 uses
  %i.ca = sub i64 %i.au, %.sroa.0.0.copyload.us.i.i
  %i.cb = sub i64 %i.aw, %.sroa.7.0.copyload.us.i.i ; 4 uses
  %.lobit114.us.i.i = ashr i64 %i.cb, 63
  %.sroa.031.1.us.i.i = add i64 %.lobit114.us.i.i, %i.ca ; 2 uses
  %i.cc = icmp eq i64 %.sroa.031.1.us.i.i, 2
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp sgt i64 %.sroa.031.1.us.i.i, 2
  br i1 %i.cd, label %.preheader.i.us.i.i, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ce = icmp slt i64 %i.cb, 0
  %i.cf = add nsw i64 %i.cb, 1000000
  %.sroa.17.1.us.i.i = select i1 %i.ce, i64 %i.cf, i64 %i.cb
  %i.cg = icmp sgt i64 %.sroa.17.1.us.i.i, 0
  br i1 %i.cg, label %.preheader.i.us.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = sext i32 %i.bv to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.ch ; 2 uses
  %.sroa.07.0.copyload.us.i.i = load i64, ptr %i.ci, align 8
  %.sroa.5.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.5.0.copyload.us.i.i = load i64, ptr %.sroa.5.0..sroa_idx.us.i.i, align 8
  %i.cj = sub i64 %.sroa.0.0.copyload.us.i.i, %.sroa.07.0.copyload.us.i.i
  %i.ck = sub i64 %.sroa.7.0.copyload.us.i.i, %.sroa.5.0.copyload.us.i.i ; 4 uses
  %i.cl = icmp slt i64 %i.ck, 0
  %i.cm = add nsw i64 %i.ck, 1000000
  %.lobit115.us.i.i = ashr i64 %i.ck, 63
  %.sroa.031.2.us.i.i = add i64 %i.cj, %.lobit115.us.i.i
  %.sroa.17.2.us.i.i = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = sitofp i64 %.sroa.031.2.us.i.i to double
  %i.co = sitofp i64 %.sroa.17.2.us.i.i to double
  %i.cp = fdiv double %i.co, 1.000000e+06
  %i.cq = fadd double %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.cs = fdiv double %i.cq, 1.000000e+01
  %i.ct = fdiv double 1.000000e+00, %i.cs
  store double %i.ct, ptr %i.cr, align 8
  br label %bb.t

.preheader.i.us.i.i:                              ; preds = %bb.o, %bb.n
  %2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  store double 0.000000e+00, ptr %2, align 8
  %.03541.i.us.i.i = load ptr, ptr %i.a, align 8  ; 2 uses
  %.not42.i.us.i.i = icmp eq ptr %.03541.i.us.i.i, null
  br i1 %.not42.i.us.i.i, label %vnc_refresh_lossy_rect.exit.us.i.i, label %.lr.ph45.split.us.preheader.i.us.i.i

.lr.ph45.split.us.preheader.i.us.i.i:             ; preds = %.preheader.i.us.i.i
  %i.cu = ashr exact i32 %.1104120.us.i.i, 4
  %i.cv = sext i32 %i.cu to i64
  br label %.lr.ph45.split.us.i.us.i.i

.lr.ph45.split.us.i.us.i.i:                       ; preds = %bb.s, %.lr.ph45.split.us.preheader.i.us.i.i
  %.03544.us.i.us.i.i = phi ptr [ %.035.us.i.us.i.i, %bb.s ], [ %.03541.i.us.i.i, %.lr.ph45.split.us.preheader.i.us.i.i ] ; 4 uses
  %.03643.us.i.us.i.i = phi i32 [ %.1.us.i.us.i.i, %bb.s ], [ 0, %.lr.ph45.split.us.preheader.i.us.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 86584
  %i.cx = load i64, ptr %i.cw, align 8
  %.not38.us.i.us.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not38.us.i.us.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph45.split.us.i.us.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 103328
  %i.cz = getelementptr inbounds [80 x i8], ptr %i.cy, i64 %i.bi
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.bo ; 2 uses
  %i.db = load i8, ptr %i.da, align 1
  %.not39.us.i.us.i.i = icmp eq i8 %i.db, 0
  br i1 %.not39.us.i.us.i.i, label %bb.s, label %.lr.ph.us.i.us.i.i

.lr.ph.us.i.us.i.i:                               ; preds = %bb.q
  store i8 0, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 32
  %invariant.gep.i.us.i.i = getelementptr [40 x i8], ptr %i.dc, i64 %i.bm
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.us.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.us.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.r ] ; 2 uses
  %gep.i.us.i.i = getelementptr [40 x i8], ptr %invariant.gep.i.us.i.i, i64 %indvars.iv.i.us.i.i
  tail call void @bitmap_set(ptr noundef nonnull %gep.i.us.i.i, i64 noundef %i.cv, i64 noundef 4) #25
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %._crit_edge.us.i.us.i.i, label %bb.r, !llvm.loop !62

._crit_edge.us.i.us.i.i:                          ; preds = %bb.r
  %i.dd = add i32 %.03643.us.i.us.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.us.i.us.i.i, %bb.q, %.lr.ph45.split.us.i.us.i.i
  %.1.us.i.us.i.i = phi i32 [ %.03643.us.i.us.i.i, %.lr.ph45.split.us.i.us.i.i ], [ %i.dd, %._crit_edge.us.i.us.i.i ], [ %.03643.us.i.us.i.i, %bb.q ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 103312
  %.035.us.i.us.i.i = load ptr, ptr %i.de, align 8 ; 2 uses
  %.not.us.i.us.i.i = icmp eq ptr %.035.us.i.us.i.i, null
  br i1 %.not.us.i.us.i.i, label %vnc_refresh_lossy_rect.exit.us.i.i, label %.lr.ph45.split.us.i.us.i.i, !llvm.loop !63

vnc_refresh_lossy_rect.exit.us.i.i:               ; preds = %bb.s, %.preheader.i.us.i.i
  %.034.i.us.i.i = phi i32 [ 0, %.preheader.i.us.i.i ], [ %.1.us.i.us.i.i, %bb.s ]
  %i.df = add i32 %.034.i.us.i.i, %.1122.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bp, i8 noundef 0, i64 noundef 160, i1 noundef false) #25
  br label %bb.t

bb.t:                                             ; preds = %vnc_refresh_lossy_rect.exit.us.i.i, %bb.p, %bb.l
  %.2.us.i.i = phi i32 [ %i.df, %vnc_refresh_lossy_rect.exit.us.i.i ], [ %.1122.us.i.i, %bb.p ], [ %.1122.us.i.i, %bb.l ] ; 3 uses
  %i.dg = add i32 %.1104120.us.i.i, 64            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.ad
  br i1 %i.dh, label %bb.k, label %._crit_edge123.us.i.i, !llvm.loop !64

._crit_edge123.us.i.i:                            ; preds = %bb.t
  %i.di = add i32 %.1102124.us.i.i, 64            ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.ai
  br i1 %i.dj, label %.preheader.us.i.i, label %vnc_update_stats.exit.i, !llvm.loop !65

vnc_update_stats.exit.i:                          ; preds = %._crit_edge123.us.i.i, %.preheader.lr.ph.i.i, %bb.j, %bb.i, %bb.h, %bb.e
  %.0115.i = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %.preheader.lr.ph.i.i ], [ %.2.us.i.i, %._crit_edge123.us.i.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.dl = sext i32 %i.t to i64
  %i.dm = mul nsw i64 %i.dl, 320                  ; 4 uses
  %i.dn = tail call i64 @find_next_bit(ptr noundef nonnull %i.dk, i64 noundef %i.dm, i64 noundef 0) #25 ; 2 uses
  %i.do = icmp eq i64 %i.dn, %i.dm
  br i1 %i.do, label %vnc_refresh_server_surface.exit, label %bb.u

bb.u:                                             ; preds = %vnc_update_stats.exit.i
  %i.dp = load ptr, ptr %i.l, align 8
  %i.dq = tail call ptr @pixman_image_get_data(ptr noundef %i.dp) #25
  %i.dr = load ptr, ptr %i.l, align 8
  %i.ds = tail call i32 @pixman_image_get_stride(ptr noundef %i.dr) #25 ; 5 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 64) ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 587080 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %.not.i = icmp eq i32 %i.dv, 537004168
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %i.l, align 8
  %i.dx = tail call i32 @pixman_image_get_width(ptr noundef %i.dw) #25
  %i.dy = tail call ptr @qemu_pixman_linebuf_create(i32 noundef 537004168, i32 noundef %i.dx) #25
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dz = load ptr, ptr %i.i, align 8
  %i.ea = tail call i32 @pixman_image_get_format(ptr noundef %i.dz) #25
  %i.eb = lshr i32 %i.ea, 24
  %i.ec = load ptr, ptr %i.i, align 8
  %i.ed = tail call i32 @pixman_image_get_format(ptr noundef %i.ec) #25
  %i.ee = lshr i32 %i.ed, 22
  %i.ef = and i32 %i.ee, 3
  %i.eg = shl nuw nsw i32 %i.eb, %i.ef
  %i.eh = load ptr, ptr %i.i, align 8
  %i.ei = tail call ptr @pixman_image_get_data(ptr noundef %i.eh) #25
  %i.ej = load ptr, ptr %i.i, align 8
  %i.ek = tail call i32 @pixman_image_get_stride(ptr noundef %i.ej) #25
  %i.el = load ptr, ptr %i.i, align 8
  %i.em = tail call i32 @pixman_image_get_width(ptr noundef %i.el) #25
  %i.en = add nuw nsw i32 %i.eg, 7
  %i.eo = lshr i32 %i.en, 3
  %i.ep = mul i32 %i.em, %i.eo
  %i.eq = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.ep)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0118.i = phi ptr [ null, %bb.v ], [ %i.ei, %bb.w ]
  %.0114.i = phi ptr [ %i.dy, %bb.v ], [ null, %bb.w ] ; 3 uses
  %.0109.i = phi i32 [ %i.ds, %bb.v ], [ %i.ek, %bb.w ]
  %.0108.i = phi i32 [ %i.ds, %bb.v ], [ %i.eq, %bb.w ] ; 2 uses
  %i.er = add i32 %i.o, 15
  %i.es = sdiv i32 %i.er, 16                      ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 86592
  %i.eu = sext i32 %i.dt to i64                   ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge138.i, %bb.x
  %.1116.i = phi i32 [ %.0115.i, %bb.x ], [ %.2.lcssa.i, %._crit_edge138.i ] ; 2 uses
  %.0113.i = phi i64 [ %i.dn, %bb.x ], [ %i.hm, %._crit_edge138.i ] ; 2 uses
  %i.ev = udiv i64 %.0113.i, 320                  ; 3 uses
  %i.ew = trunc i64 %i.ev to i32                  ; 4 uses
  %i.ex = urem i64 %.0113.i, 320                  ; 2 uses
  %i.ey = trunc nuw nsw i64 %i.ex to i32          ; 2 uses
  %i.ez = mul i32 %i.ds, %i.ew
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.dq, i64 %i.fa
  %i.fc = mul i32 %i.dt, %i.ey
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.fd
  %i.ff = load i32, ptr %i.du, align 8
  %.not123.i = icmp eq i32 %i.ff, 537004168
  br i1 %.not123.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = load ptr, ptr %i.i, align 8
  tail call void @qemu_pixman_linebuf_fill(ptr noundef %.0114.i, ptr noundef %i.fg, i32 noundef %i.o, i32 noundef 0, i32 noundef %i.ew) #25
  %i.fh = tail call ptr @pixman_image_get_data(ptr noundef %.0114.i) #25
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fi = mul i32 %.0109.i, %i.ew
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %.0118.i, i64 %i.fj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0111.i = phi ptr [ %i.fh, %bb.z ], [ %i.fk, %bb.aa ]
  %i.fl = icmp sgt i32 %i.es, %i.ey
  br i1 %i.fl, label %.lr.ph137.i, label %.._crit_edge138_crit_edge.i

.._crit_edge138_crit_edge.i:                      ; preds = %bb.ab
  %.pre148.i = shl i64 %i.ev, 32
  br label %._crit_edge138.i

.lr.ph137.i:                                      ; preds = %bb.ab
  %i.fm = getelementptr inbounds i8, ptr %.0111.i, i64 %i.fd
  %sext124.i = shl i64 %i.ev, 32                  ; 2 uses
  %i.fn = ashr exact i64 %sext124.i, 32           ; 2 uses
  %i.fo = getelementptr inbounds [40 x i8], ptr %i.dk, i64 %i.fn
  %i.fp = sdiv i32 %i.ew, 64
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [14720 x i8], ptr %i.et, i64 %i.fq
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge146.i, %.lr.ph137.i
  %indvars.iv143.i = phi i64 [ %i.ex, %.lr.ph137.i ], [ %.pre.i, %._crit_edge146.i ] ; 4 uses
  %.0110135.i = phi ptr [ %i.fe, %.lr.ph137.i ], [ %i.hi, %._crit_edge146.i ] ; 3 uses
  %.1134.i = phi ptr [ %i.fm, %.lr.ph137.i ], [ %i.hh, %._crit_edge146.i ] ; 3 uses
  %.2131.i = phi i32 [ %.1116.i, %.lr.ph137.i ], [ %.3.i, %._crit_edge146.i ] ; 3 uses
  %i.fs = and i64 %indvars.iv143.i, 63
  %i.ft = shl nuw i64 1, %i.fs                    ; 3 uses
  %i.fu = lshr i64 %indvars.iv143.i, 6            ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fu ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = xor i64 %i.ft, -1
  %i.fy = and i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %i.fv, align 8
  %i.fz = and i64 %i.fw, %i.ft
  %.not125.i = icmp eq i64 %i.fz, 0
  %.pre.i = add nuw nsw i64 %indvars.iv143.i, 1   ; 2 uses
  %.pre147.i = trunc nuw i64 %.pre.i to i32       ; 2 uses
  br i1 %.not125.i, label %._crit_edge146.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = mul i32 %i.dt, %.pre147.i
  %i.gb = icmp sgt i32 %i.ga, %.0108.i
  %i.gc = trunc nuw i64 %indvars.iv143.i to i32   ; 2 uses
  %i.gd = mul i32 %i.dt, %i.gc
  %i.ge = sub i32 %.0108.i, %i.gd
  %.0.i = select i1 %i.gb, i32 %i.ge, i32 %i.dt   ; 2 uses
  %i.gf = icmp sgt i32 %.0.i, -1
  br i1 %i.gf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.873, ptr noundef nonnull @.str.1, i32 noundef 3220, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_refresh_server_surface) #26
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gg = zext nneg i32 %.0.i to i64              ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr %.0110135.i, ptr %.1134.i, i64 %i.gg)
  %i.gh = icmp eq i32 %bcmp.i, 0
  br i1 %i.gh, label %._crit_edge146.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0110135.i, ptr noundef nonnull align 1 %.1134.i, i64 noundef %i.gg, i1 noundef false) #25
  %i.gi = load i8, ptr %i.u, align 1, !range !13, !noundef !14
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %vnc_rect_updated.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = shl i32 %i.gc, 4
  %i.gl = sdiv i32 %i.gk, 64
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [184 x i8], ptr %i.fr, i64 %i.gm ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 176 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8, !range !13, !noundef !14
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %vnc_rect_updated.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 160 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [16 x i8], ptr %i.gn, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.gv = load i32, ptr %i.gr, align 8
  %i.gw = add i32 %i.gv, 1
  %i.gx = sext i32 %i.gw to i64
  %i.gy = urem i64 %i.gx, 10
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  store i32 %i.gz, ptr %i.gr, align 8
  store i8 1, ptr %i.go, align 8
  br label %vnc_rect_updated.exit.i

vnc_rect_updated.exit.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0117128.i = load ptr, ptr %i.a, align 8       ; 2 uses
  %.not126129.i = icmp eq ptr %.0117128.i, null
  br i1 %.not126129.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %vnc_rect_updated.exit.i, %.lr.ph.i
  %.0117130.i = phi ptr [ %.0117.i, %.lr.ph.i ], [ %.0117128.i, %vnc_rect_updated.exit.i ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0117130.i, i64 32
  %i.hb = getelementptr inbounds [40 x i8], ptr %i.ha, i64 %i.fn
end_hunk_0
