inline.NumInlined: 533
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@vnc_display_get_address:bb.a
bb.n:                                             ; preds = %bb.m
  %strcmpload = load i8, ptr %0, align 1
  switch i8 %strcmpload, label %.tail.thread [
    i8 0, label %bb.o
    i8 111, label %sub_1
  ]

sub_1:                                            ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.not122 = icmp eq i8 %i.ah, 110
  br i1 %.not122, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %.tail.thread

bb.o:                                             ; preds = %bb.n, %.tail
  %i.al = icmp eq i32 %3, -1
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef 3843, ptr noundef nonnull @__func__.vnc_display_get_address, ptr noundef nonnull @.str.864) #25
  br label %.thread111

bb.q:                                             ; preds = %bb.o
  %i.am = add nuw i32 %3, 5700
  %i.an = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.865, i32 noundef %i.am) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.an, ptr %i.ao, align 8
  %.not95 = icmp eq i32 %4, 0
  br i1 %.not95, label %.thread107, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  store i8 1, ptr %i.ap, align 2
  %i.aq = trunc i32 %4 to i16
  %i.ar = add i16 %i.aq, 5700
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i16 %i.ar, ptr %i.as, align 4
  br label %.thread107

.tail.thread:                                     ; preds = %.tail, %sub_1, %bb.n
  %i.at = tail call noalias ptr @g_strdup(ptr noundef nonnull %.083104) #25
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.at, ptr %i.au, align 8
  br label %.thread107

bb.s:                                             ; preds = %bb.m
  %i.av = select i1 %2, i32 0, i32 5900           ; 3 uses
  %i.aw = call i32 @parse_uint_full(ptr noundef nonnull %.083104, i32 noundef 10, ptr noundef nonnull %i.a) #25
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef 3858, ptr noundef nonnull @__func__.vnc_display_get_address, ptr noundef nonnull @.str.866, ptr noundef nonnull %.083104) #25
  br label %.thread111

bb.u:                                             ; preds = %bb.s
  %i.ay = load i64, ptr %i.a, align 8             ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 65535
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 65535
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
  br label %bb.bd

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
  br label %bb.bd

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
  %i.v = load i8, ptr %i.u, align 1, !range !7, !noundef !8
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
  %2 = zext nneg i32 %i.ad to i64
  %3 = zext nneg i32 %i.ai to i64
  br label %.preheader116.i.i

.preheader116.i.i:                                ; preds = %._crit_edge.i.i.a, %.preheader116.i.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.preheader116.i.preheader.i ], [ %indvars.iv.next141.i, %._crit_edge.i.i.a ] ; 2 uses
  %4 = lshr exact i64 %indvars.iv140.i, 6
  %i.al = getelementptr [14720 x i8], ptr %i.a, i64 %4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader116.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader116.i.i ] ; 2 uses
  %5 = lshr exact i64 %indvars.iv.i, 6
  %i.am = getelementptr [184 x i8], ptr %i.al, i64 %5
  %i.an = getelementptr i8, ptr %i.am, i64 86832
  store i8 0, ptr %i.an, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %6 = icmp samesign ult i64 %indvars.iv.next.i, %2
  br i1 %6, label %bb.g, label %._crit_edge.i.i.a, !llvm.loop !60

._crit_edge.i.i.a:                                ; preds = %bb.g
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 64 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next141.i, %3
  br i1 %7, label %.preheader116.i.i, label %._crit_edge119.split.i.i, !llvm.loop !61

._crit_edge119.split.i.i:                         ; preds = %._crit_edge.i.i.a, %bb.f
  %i.ao = load i64, ptr %1, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = add i64 %i.aq, -500000                  ; 3 uses
  %.lobit.i.i = ashr i64 %i.ar, 63
  %.sroa.031.0.i.i = add i64 %.lobit.i.i, %i.ao   ; 2 uses
  %i.as = load i64, ptr %i.y, align 8             ; 2 uses
  %i.at = icmp eq i64 %i.as, %.sroa.031.0.i.i
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge119.split.i.i
  %i.au = icmp slt i64 %i.ar, 0
  %i.av = add i64 %i.aq, 500000
  %.sroa.17.0.i.i = select i1 %i.au, i64 %i.av, i64 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp sgt i64 %i.ax, %.sroa.17.0.i.i
  br i1 %i.ay, label %vnc_update_stats.exit.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge119.split.i.i
  %i.az = icmp sgt i64 %i.as, %.sroa.031.0.i.i
  br i1 %i.az, label %vnc_update_stats.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.aj, label %.preheader.lr.ph.i.i, label %vnc_update_stats.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 86592
  br i1 %i.ak, label %.preheader.us.i.i, label %vnc_update_stats.exit.i

.preheader.us.i.i:                                ; preds = %.preheader.lr.ph.i.i, %._crit_edge123.us.i.i
  %.0100125.us.i.i = phi i32 [ %.2.us.i.i, %._crit_edge123.us.i.i ], [ 0, %.preheader.lr.ph.i.i ]
  %.1102124.us.i.i = phi i32 [ %i.de, %._crit_edge123.us.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 4 uses
  %i.bb = ashr exact i32 %.1102124.us.i.i, 6
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [14720 x i8], ptr %i.ba, i64 %i.bc
  %i.be = sub i32 %i.ai, %.1102124.us.i.i         ; 2 uses
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 64)
  %i.bg = icmp slt i32 %i.be, 1
  %i.bh = sext i32 %.1102124.us.i.i to i64
  %wide.trip.count.i.us.i.i = zext nneg i32 %i.bf to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.u, %.preheader.us.i.i
  %.1122.us.i.i = phi i32 [ %.0100125.us.i.i, %.preheader.us.i.i ], [ %.2.us.i.i, %bb.u ] ; 3 uses
  %.1104120.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %i.dc, %bb.u ] ; 3 uses
  %i.bi = ashr exact i32 %.1104120.us.i.i, 6
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [184 x i8], ptr %i.bd, i64 %i.bj ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bm = load i64, ptr %i.bl, align 8
  %.not.us.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.us.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bo = load i64, ptr %i.bn, align 8
  %.not113.us.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not113.us.i.i, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = add i32 %i.bq, 9
  %i.bs = srem i32 %i.br, 10
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.us.i.i = load i64, ptr %i.bu, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.7.0.copyload.us.i.i = load i64, ptr %.sroa.7.0..sroa_idx.us.i.i, align 8 ; 2 uses
  %i.bv = sub i64 %i.ao, %.sroa.0.0.copyload.us.i.i
  %i.bw = sub i64 %i.aq, %.sroa.7.0.copyload.us.i.i ; 4 uses
  %.lobit114.us.i.i = ashr i64 %i.bw, 63
  %.sroa.031.1.us.i.i = add i64 %.lobit114.us.i.i, %i.bv ; 2 uses
  %i.bx = icmp eq i64 %.sroa.031.1.us.i.i, 2
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = icmp sgt i64 %.sroa.031.1.us.i.i, 2
  br i1 %i.by, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp slt i64 %i.bw, 0
  %i.ca = add nsw i64 %i.bw, 1000000
  %.sroa.17.1.us.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.bw
  %i.cb = icmp sgt i64 %.sroa.17.1.us.i.i, 0
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = sext i32 %i.bq to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.cc ; 2 uses
  %.sroa.07.0.copyload.us.i.i = load i64, ptr %i.cd, align 8
  %.sroa.5.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.5.0.copyload.us.i.i = load i64, ptr %.sroa.5.0..sroa_idx.us.i.i, align 8
  %i.ce = sub i64 %.sroa.0.0.copyload.us.i.i, %.sroa.07.0.copyload.us.i.i
  %i.cf = sub i64 %.sroa.7.0.copyload.us.i.i, %.sroa.5.0.copyload.us.i.i ; 4 uses
  %i.cg = icmp slt i64 %i.cf, 0
  %i.ch = add nsw i64 %i.cf, 1000000
  %.lobit115.us.i.i = ashr i64 %i.cf, 63
  %.sroa.031.2.us.i.i = add i64 %i.ce, %.lobit115.us.i.i
  %.sroa.17.2.us.i.i = select i1 %i.cg, i64 %i.ch, i64 %i.cf
  %i.ci = sitofp i64 %.sroa.031.2.us.i.i to double
  %i.cj = sitofp i64 %.sroa.17.2.us.i.i to double
  %i.ck = fdiv double %i.cj, 1.000000e+06
  %i.cl = fadd double %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 168
  %i.cn = fdiv double %i.cl, 1.000000e+01
  %i.co = fdiv double 1.000000e+00, %i.cn
  store double %i.co, ptr %i.cm, align 8
  br label %bb.u

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 168
  store double 0.000000e+00, ptr %i.cp, align 8
  br i1 %i.bg, label %vnc_refresh_lossy_rect.exit.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %bb.q
  %.03541.i.us.i.i = load ptr, ptr %i.a, align 8  ; 2 uses
  %.not42.i.us.i.i = icmp eq ptr %.03541.i.us.i.i, null
  br i1 %.not42.i.us.i.i, label %vnc_refresh_lossy_rect.exit.us.i.i, label %.lr.ph45.split.us.preheader.i.us.i.i

.lr.ph45.split.us.preheader.i.us.i.i:             ; preds = %.preheader.i.us.i.i
  %i.cq = ashr exact i32 %.1104120.us.i.i, 4
  %i.cr = sext i32 %i.cq to i64
  br label %.lr.ph45.split.us.i.us.i.i

.lr.ph45.split.us.i.us.i.i:                       ; preds = %bb.t, %.lr.ph45.split.us.preheader.i.us.i.i
  %.03544.us.i.us.i.i = phi ptr [ %.035.us.i.us.i.i, %bb.t ], [ %.03541.i.us.i.i, %.lr.ph45.split.us.preheader.i.us.i.i ] ; 4 uses
  %.03643.us.i.us.i.i = phi i32 [ %.1.us.i.us.i.i, %bb.t ], [ 0, %.lr.ph45.split.us.preheader.i.us.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 86584
  %i.ct = load i64, ptr %i.cs, align 8
  %.not38.us.i.us.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not38.us.i.us.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph45.split.us.i.us.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 103328
  %i.cv = getelementptr inbounds [80 x i8], ptr %i.cu, i64 %i.bc
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.bj ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1
  %.not39.us.i.us.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not39.us.i.us.i.i, label %bb.t, label %.lr.ph.us.i.us.i.i

.lr.ph.us.i.us.i.i:                               ; preds = %bb.r
  store i8 0, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 32
  %invariant.gep.i.us.i.i = getelementptr [40 x i8], ptr %i.cy, i64 %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.us.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.us.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.s ] ; 2 uses
  %gep.i.us.i.i = getelementptr [40 x i8], ptr %invariant.gep.i.us.i.i, i64 %indvars.iv.i.us.i.i
  tail call void @bitmap_set(ptr noundef nonnull %gep.i.us.i.i, i64 noundef %i.cr, i64 noundef 4) #25
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %._crit_edge.us.i.us.i.i, label %bb.s, !llvm.loop !62

._crit_edge.us.i.us.i.i:                          ; preds = %bb.s
  %i.cz = add i32 %.03643.us.i.us.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.us.i.us.i.i, %bb.r, %.lr.ph45.split.us.i.us.i.i
  %.1.us.i.us.i.i = phi i32 [ %.03643.us.i.us.i.i, %.lr.ph45.split.us.i.us.i.i ], [ %i.cz, %._crit_edge.us.i.us.i.i ], [ %.03643.us.i.us.i.i, %bb.r ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.03544.us.i.us.i.i, i64 103312
  %.035.us.i.us.i.i = load ptr, ptr %i.da, align 8 ; 2 uses
  %.not.us.i.us.i.i = icmp eq ptr %.035.us.i.us.i.i, null
  br i1 %.not.us.i.us.i.i, label %vnc_refresh_lossy_rect.exit.us.i.i, label %.lr.ph45.split.us.i.us.i.i, !llvm.loop !63

vnc_refresh_lossy_rect.exit.us.i.i:               ; preds = %bb.t, %.preheader.i.us.i.i, %bb.q
  %.034.i.us.i.i = phi i32 [ 0, %bb.q ], [ 0, %.preheader.i.us.i.i ], [ %.1.us.i.us.i.i, %bb.t ]
  %i.db = add i32 %.034.i.us.i.i, %.1122.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.bk, i8 noundef 0, i64 noundef 160, i1 noundef false) #25
  br label %bb.u

bb.u:                                             ; preds = %vnc_refresh_lossy_rect.exit.us.i.i, %bb.p, %bb.l
  %.2.us.i.i = phi i32 [ %i.db, %vnc_refresh_lossy_rect.exit.us.i.i ], [ %.1122.us.i.i, %bb.p ], [ %.1122.us.i.i, %bb.l ] ; 3 uses
  %i.dc = add i32 %.1104120.us.i.i, 64            ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.ad
  br i1 %i.dd, label %bb.k, label %._crit_edge123.us.i.i, !llvm.loop !64

._crit_edge123.us.i.i:                            ; preds = %bb.u
  %i.de = add i32 %.1102124.us.i.i, 64            ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.ai
  br i1 %i.df, label %.preheader.us.i.i, label %vnc_update_stats.exit.i, !llvm.loop !65

vnc_update_stats.exit.i:                          ; preds = %._crit_edge123.us.i.i, %.preheader.lr.ph.i.i, %bb.j, %bb.i, %bb.h, %bb.e
  %.0115.i = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %.preheader.lr.ph.i.i ], [ %.2.us.i.i, %._crit_edge123.us.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.dh = sext i32 %i.t to i64
  %i.di = mul nsw i64 %i.dh, 320                  ; 4 uses
  %i.dj = tail call i64 @find_next_bit(ptr noundef nonnull %i.dg, i64 noundef %i.di, i64 noundef 0) #25 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.di
  br i1 %i.dk, label %vnc_refresh_server_surface.exit, label %bb.v

bb.v:                                             ; preds = %vnc_update_stats.exit.i
  %i.dl = load ptr, ptr %i.l, align 8
  %i.dm = tail call ptr @pixman_image_get_data(ptr noundef %i.dl) #25
  %i.dn = load ptr, ptr %i.l, align 8
end_hunk_0
