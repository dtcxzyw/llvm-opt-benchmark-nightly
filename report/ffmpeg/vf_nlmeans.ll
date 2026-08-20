inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@init:bb.a
  %i.x = fmul nsz double %i.q, %i.w
  %i.y = tail call nsz double @llvm.exp.f64(double %i.x)
  %i.z = fptrunc nsz double %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !33

bb.c:                                             ; preds = %._crit_edge
  %i.ab = or disjoint i32 %i.s, 1                 ; 2 uses
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15, i32 noundef %i.ab) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = or disjoint i32 %i.ad, 1                ; 2 uses
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.16, i32 noundef %i.af) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not60 = icmp eq i32 %i.ah, 0
  br i1 %.not60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %i.ai, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.an = phi i32 [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  %i.ao = and i32 %i.aj, 1
  %.not62 = icmp eq i32 %i.ao, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = or disjoint i32 %i.aj, 1                ; 2 uses
  store i32 %i.ap, ptr %i.ag, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.17, i32 noundef %i.ap) #8
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.an, %bb.j ], [ %.pre, %bb.k ] ; 3 uses
  %i.ar = and i32 %i.aq, 1
  %.not63 = icmp eq i32 %i.ar, 0
  br i1 %.not63, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = or disjoint i32 %i.aq, 1                ; 2 uses
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.18, i32 noundef %i.as) #8
  %.pre67 = load i32, ptr %i.ak, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = phi i32 [ %.pre67, %bb.m ], [ %i.aq, %bb.l ] ; 3 uses
  %i.au = load i32, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  %i.av = sdiv i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !38
  %i.ax = load i32, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.ay = sdiv i32 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !39
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.bb = sdiv i32 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !40
  %i.bd = sdiv i32 %i.at, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.19, i32 noundef %i.au, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.ba, i32 noundef %i.at, i32 noundef %i.at) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr @compute_safe_ssd_integral_image_c, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @compute_weights_line_c, ptr %i.bg, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.057 = phi i32 [ 0, %bb.n ], [ -12, %bb.a ]
  ret i32 %.057
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.thread_data, align 8        ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l) #8 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #8 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !60
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %nlmeans_plane.exit, %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  %i.ad = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %i.m) #8
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph, %nlmeans_plane.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nlmeans_plane.exit ] ; 6 uses
  %.not38 = icmp eq i64 %indvars.iv, 0            ; 4 uses
  %.in = select i1 %.not38, ptr %i.s, ptr %i.r
  %i.ae = load i32, ptr %.in, align 4, !tbaa !61  ; 8 uses
  %.in39 = select i1 %.not38, ptr %i.u, ptr %i.t
  %i.af = load i32, ptr %.in39, align 4, !tbaa !61 ; 10 uses
  %.in40.v = select i1 %.not38, i64 44, i64 52
  %.in40 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in40.v
  %i.ag = load i32, ptr %.in40, align 4, !tbaa !61 ; 2 uses
  %.in41.v = select i1 %.not38, i64 60, i64 68
  %.in41 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in41.v
  %i.ah = load i32, ptr %.in41, align 4, !tbaa !61 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62 ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !61 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 16 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !9   ; 6 uses
  %i.av = add nsw i32 %i.ah, %i.ag                ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %i.ay = sext i32 %i.av to i64                   ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64
  %i.bb = mul nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !66
  %i.bi = mul nsw i32 %i.bh, %i.af
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !66
  %i.bo = mul nsw i32 %i.bn, %i.af
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.bq, i1 false)
  %.not80.i = icmp slt i32 %i.ah, 0
  br i1 %.not80.i, label %._crit_edge82.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.br = sub nsw i32 0, %i.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.bt = shl i32 %i.av, 1                        ; 3 uses
  %i.bu = add i32 %i.bt, %i.ae                    ; 4 uses
  %i.bv = add nsw i32 %i.af, -1                   ; 8 uses
  %i.bw = icmp slt i32 %i.bu, 1                   ; 2 uses
  %i.bx = add nsw i32 %i.ae, -1                   ; 8 uses
  %i.by = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bz = sext i32 %i.bu to i64
  %i.ca = add i32 %i.bt, %i.af
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.br to i64                   ; 2 uses
  %i.cd = add nuw i32 %i.ah, 1                    ; 2 uses
  %i.ce = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ag, i64 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv89.i = phi i64 [ %i.cc, %.preheader.lr.ph.i ], [ %indvars.iv.next90.i, %._crit_edge.i ] ; 7 uses
  %i.cf = mul nsw i64 %indvars.iv89.i, %i.at
  %i.cg = getelementptr inbounds i8, ptr %i.ap, i64 %i.cf
  %i.ch = trunc i64 %indvars.iv89.i to i32        ; 2 uses
  %i.ci = sub i32 0, %i.ch
  %i.cj = call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = sub i32 %i.af, %i.ch
  %i.cl = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ck)
  %i.cm = add nsw i64 %indvars.iv89.i, %i.ay      ; 2 uses
  %i.cn = trunc nsw i64 %i.cm to i32              ; 6 uses
  %i.co = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.cn) ; 6 uses
  %i.cp = icmp slt i64 %indvars.iv89.i, 0
  %.pn119.i.i = select i1 %i.cp, i32 %i.cn, i32 %i.av ; 2 uses
  %i.cq = add nsw i32 %.pn119.i.i, %i.af          ; 3 uses
  %i.cr = sub nsw i32 %i.cq, %i.co                ; 2 uses
  %i.cs = icmp slt i32 %i.co, 1
  %i.ct = zext nneg i32 %i.co to i64
  %i.cu = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %i.cv = sext i32 %i.co to i64                   ; 4 uses
  %i.cw = sext i32 %i.cq to i64                   ; 3 uses
  %i.cx = icmp ne i32 %i.cq, %i.co
  %i.cy = sub nsw i32 %i.co, %i.av
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.at
  %i.db = getelementptr inbounds i8, ptr %i.ap, i64 %i.da
  %i.dc = sub nsw i64 %i.cv, %i.cm
  %i.dd = mul nsw i64 %i.dc, %i.at
  %i.de = getelementptr inbounds i8, ptr %i.ap, i64 %i.dd
  %i.df = icmp sle i32 %i.bt, %.pn119.i.i
  %brmerge.i = select i1 %i.cs, i1 true, i1 %i.bw
  %brmerge87.i = or i1 %i.bw, %i.df
  br label %bb.e

._crit_edge82.i:                                  ; preds = %._crit_edge.i, %bb.d
  %i.dg = load i32, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = icmp sgt i32 %i.af, 0
  %i.dj = icmp sgt i32 %i.ae, 0
  %or.cond.i.i = and i1 %i.dj, %i.di
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %nlmeans_plane.exit

.preheader.preheader.i.i:                         ; preds = %._crit_edge82.i
  %i.dk = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 5 uses
  %i.dl = load ptr, ptr %i.be, align 8, !tbaa !65 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %i.dm = shl nsw i64 %i.dh, 2
  %i.dn = add nsw i32 %i.af, -1
  %i.do = zext i32 %i.dn to i64                   ; 3 uses
  %i.dp = mul i64 %i.dm, %i.do
  %i.dq = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.dr = add i64 %i.dp, %i.dq                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dl, i64 %i.dr ; 3 uses
  %scevgep51 = getelementptr i8, ptr %i.dk, i64 %i.dr ; 3 uses
  %i.ds = mul nsw i64 %i.am, %i.do
  %i.dt = getelementptr i8, ptr %i.aj, i64 %i.ds
  %scevgep52 = getelementptr i8, ptr %i.dt, i64 %wide.trip.count.i.i ; 3 uses
  %i.du = mul nsw i64 %i.at, %i.do
  %i.dv = getelementptr i8, ptr %i.ap, i64 %i.du
  %scevgep53 = getelementptr i8, ptr %i.dv, i64 %wide.trip.count.i.i ; 3 uses
  %i.dw = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.dx = insertelement <4 x i32> %i.dw, i32 %i.as, i64 1
  %i.dy = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.ae, 8
  %bound0 = icmp ult ptr %i.dl, %scevgep51
  %bound1 = icmp ult ptr %i.dk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.dg, 0
  %bound055 = icmp ult ptr %i.dl, %scevgep52
  %bound156 = icmp ult ptr %i.aj, %scevgep
  %found.conflict57 = and i1 %bound055, %bound156
  %i.eb = or <4 x i32> %i.dy, %i.ea
  %bound060 = icmp ult ptr %i.dl, %scevgep53
  %bound161 = icmp ult ptr %i.ap, %scevgep
  %found.conflict62 = and i1 %bound060, %bound161
  %bound066 = icmp ult ptr %i.dk, %scevgep52
  %bound167 = icmp ult ptr %i.aj, %scevgep51
  %found.conflict68 = and i1 %bound066, %bound167
  %bound072 = icmp ult ptr %i.dk, %scevgep53
  %bound173 = icmp ult ptr %i.ap, %scevgep51
  %found.conflict74 = and i1 %bound072, %bound173
  %i.ec = icmp slt <4 x i32> %i.eb, zeroinitializer
  %bound078 = icmp ult ptr %i.aj, %scevgep53
  %bound179 = icmp ult ptr %i.ap, %scevgep52
  %found.conflict80 = and i1 %bound078, %bound179
  %i.ed = or i32 %i.as, %i.al
  %i.ee = icmp slt i32 %i.ed, 0
  %i.ef = bitcast <4 x i1> %i.ec to i4
  %i.eg = icmp ne i4 %i.ef, 0
  %op.rdx = or i1 %i.eg, %stride.check
  %op.rdx87 = or i1 %i.ee, %found.conflict
  %op.rdx88 = or i1 %found.conflict57, %found.conflict62
  %op.rdx89 = or i1 %found.conflict68, %found.conflict74
  %op.rdx90 = or i1 %op.rdx, %op.rdx87
  %op.rdx91 = or i1 %op.rdx88, %op.rdx89
  %op.rdx92 = or i1 %op.rdx90, %op.rdx91
  %op.rdx93 = or i1 %op.rdx92, %found.conflict80
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.02535.i.i = phi i32 [ %i.fb, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.02634.i.i = phi ptr [ %i.ex, %._crit_edge.i.i ], [ %i.aj, %.preheader.preheader.i.i ] ; 3 uses
  %.02733.i.i = phi ptr [ %i.ey, %._crit_edge.i.i ], [ %i.ap, %.preheader.preheader.i.i ] ; 3 uses
  %.02832.i.i = phi ptr [ %i.ez, %._crit_edge.i.i ], [ %i.dl, %.preheader.preheader.i.i ] ; 3 uses
  %.02931.i.i = phi ptr [ %i.fa, %._crit_edge.i.i ], [ %i.dk, %.preheader.preheader.i.i ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx93
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.02832.i.i, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.eh, align 4, !tbaa !31, !alias.scope !68, !noalias !71
  %i.ei = fadd nsz <4 x float> %wide.load, splat (float 1.000000e+00)
  store <4 x float> %i.ei, ptr %i.eh, align 4, !tbaa !31, !alias.scope !68, !noalias !71
  %i.ej = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 %index
  %wide.load84 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !75, !alias.scope !76
  %i.ek = uitofp <4 x i8> %wide.load84 to <4 x float>
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.02931.i.i, i64 %index ; 2 uses
  %wide.load85 = load <4 x float>, ptr %i.el, align 4, !tbaa !31, !alias.scope !77, !noalias !78
  %i.em = fadd nsz <4 x float> %wide.load85, %i.ek ; 2 uses
  store <4 x float> %i.em, ptr %i.el, align 4, !tbaa !31, !alias.scope !77, !noalias !78
  %wide.load86 = load <4 x float>, ptr %i.eh, align 4, !tbaa !31, !alias.scope !68, !noalias !71
  %i.en = fdiv nsz <4 x float> %i.em, %wide.load86
  %i.eo = fadd nsz <4 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = fptosi <4 x float> %i.eo to <4 x i32>   ; 3 uses
  %i.eq = icmp ult <4 x i32> %i.ep, splat (i32 256)
  %i.er = icmp sgt <4 x i32> %i.ep, splat (i32 -1)
  %i.es = sext <4 x i1> %i.er to <4 x i8>
  %i.et = trunc nuw <4 x i32> %i.ep to <4 x i8>
  %i.eu = select <4 x i1> %i.eq, <4 x i8> %i.et, <4 x i8> %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 %index
  store <4 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !75, !alias.scope !79, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %i.ex = getelementptr inbounds i8, ptr %.02634.i.i, i64 %i.am
  %i.ey = getelementptr inbounds i8, ptr %.02733.i.i, i64 %i.at
  %i.ez = getelementptr inbounds [4 x i8], ptr %.02832.i.i, i64 %i.dh
  %i.fa = getelementptr inbounds [4 x i8], ptr %.02931.i.i, i64 %i.dh
  %i.fb = add nuw nsw i32 %.02535.i.i, 1          ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.fb, %i.af
  br i1 %exitcond38.not.i.i, label %nlmeans_plane.exit, label %.preheader.i.i, !llvm.loop !83

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.02832.i.i, i64 %indvars.iv.i.i ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !31
  %i.fe = fadd nsz float %i.fd, 1.000000e+00
  store float %i.fe, ptr %i.fc, align 4, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 %indvars.iv.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !75
  %i.fh = uitofp i8 %i.fg to float
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.02931.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !31
  %i.fk = fadd nsz float %i.fj, %i.fh             ; 2 uses
  store float %i.fk, ptr %i.fi, align 4, !tbaa !31
  %i.fl = load float, ptr %i.fc, align 4, !tbaa !31
  %i.fm = fdiv nsz float %i.fk, %i.fl
  %i.fn = fadd nsz float %i.fm, 5.000000e-01
  %i.fo = fptosi float %i.fn to i32               ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.fo, 256
  %isnotneg.i.i.i = icmp sgt i32 %i.fo, -1
  %i.fp = sext i1 %isnotneg.i.i.i to i8
  %i.fq = trunc nuw i32 %i.fo to i8
  %.0.i.i.i = select i1 %.not.i.i.i, i8 %i.fq, i8 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 %indvars.iv.i.i
  store i8 %.0.i.i.i, ptr %i.fr, align 1, !tbaa !75
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !84

._crit_edge.i:                                    ; preds = %bb.m
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %lftr.wideiv92.i = trunc i64 %indvars.iv.next90.i to i32
  %exitcond93.not.i = icmp eq i32 %i.cd, %lftr.wideiv92.i
  br i1 %exitcond93.not.i, label %._crit_edge82.i, label %.preheader.i, !llvm.loop !85

bb.e:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cc, %.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 6 uses
  %i.fs = or i64 %indvars.iv.i, %indvars.iv89.i
  %i.ft = and i64 %i.fs, 4294967295
  %or.cond.not.i = icmp eq i64 %i.ft, 0
  br i1 %or.cond.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fu = trunc i64 %indvars.iv.i to i32          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.fv = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.i
  store ptr %i.fv, ptr %2, align 8, !tbaa !86
  store i64 %i.at, ptr %i.w, align 8, !tbaa !88
  %i.fw = sub i32 0, %i.fu
  %i.fx = call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  store i32 %i.fx, ptr %i.x, align 8, !tbaa !89
  store i32 %i.cj, ptr %i.y, align 4, !tbaa !90
  %i.fy = sub i32 %i.ae, %i.fu
  %i.fz = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.fy)
  store i32 %i.fz, ptr %i.z, align 8, !tbaa !91
  store i32 %i.cl, ptr %i.aa, align 4, !tbaa !92
  %i.ga = load i64, ptr %i.az, align 8, !tbaa !64 ; 11 uses
  %i.gb = mul nsw i64 %i.ga, %indvars.iv89.i
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.gb
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  store ptr %i.gd, ptr %i.ab, align 8, !tbaa !93
  store <2 x i32> %i.ce, ptr %i.ac, align 8
  %i.ge = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 9 uses
  %i.gf = add i32 %i.av, %i.fu                    ; 7 uses
  %i.gg = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.gf) ; 7 uses
  %i.gh = icmp slt i64 %indvars.iv.i, 0
  %..i.i = select i1 %i.gh, i32 %i.gf, i32 %i.av
  %i.gi = add nsw i32 %..i.i, %i.ae
  %i.gj = sub i32 %i.gi, %i.gg
  %i.gk = and i32 %i.gj, -16                      ; 3 uses
  br i1 %brmerge.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %._crit_edge.i.i.i
  %indvars.iv72.i.i.i = phi i64 [ %indvars.iv.next73.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.f ] ; 5 uses
  %i.gl = mul nsw i64 %indvars.iv72.i.i.i, %i.ga
  %i.gm = getelementptr [4 x i8], ptr %i.ge, i64 %i.gl ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !61
  %i.gp = add nsw i64 %indvars.iv72.i.i.i, -1
  %i.gq = mul nsw i64 %i.gp, %i.ga
  %i.gr = getelementptr [4 x i8], ptr %i.ge, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !61
  %i.gu = sub i32 %i.go, %i.gt
  %i.gv = sub nsw i64 %indvars.iv72.i.i.i, %i.ay  ; 2 uses
  %i.gw = icmp slt i64 %i.gv, 0
  %i.gx = trunc nsw i64 %i.gv to i32
  %..i59.i.i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 %i.bv)
  %i.gy = trunc nsw i64 %indvars.iv72.i.i.i to i32
  %i.gz = sub i32 %i.gy, %i.cn                    ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %..i57.i.i.i = call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.bv)
  %.0.i58.i.i.i = select i1 %i.ha, i32 0, i32 %..i57.i.i.i
  %i.hb = sext i32 %..i59.i.i.i to i64
  %i.hc = select i1 %i.gw, i64 0, i64 %i.hb
  %i.hd = mul nsw i64 %i.hc, %i.at
  %i.he = getelementptr i8, ptr %i.ap, i64 %i.hd
  %i.hf = sext i32 %.0.i58.i.i.i to i64
  %i.hg = mul nsw i64 %i.hf, %i.at
  %i.hh = getelementptr i8, ptr %i.ap, i64 %i.hg
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %i.ct
  br i1 %exitcond168.not.i.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !94

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 5 uses
  %.05366.i.i.i = phi i32 [ %i.gu, %.lr.ph.i.i.i ], [ %i.hz, %bb.g ]
  %i.hi = sub nsw i64 %indvars.iv.i.i.i, %i.ay    ; 2 uses
  %i.hj = icmp slt i64 %i.hi, 0
  %i.hk = trunc nsw i64 %i.hi to i32
  %..i55.i.i.i = call i32 @llvm.smin.i32(i32 %i.hk, i32 %i.bx)
  %i.hl = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.hm = sub i32 %i.hl, %i.gf                    ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 0
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.bx)
  %.0.i.i.i.i = select i1 %i.hn, i32 0, i32 %..i.i.i.i
  %i.ho = sext i32 %..i55.i.i.i to i64
  %i.hp = select i1 %i.hj, i64 0, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.he, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !75
  %i.hs = sext i32 %.0.i.i.i.i to i64
  %i.ht = getelementptr i8, ptr %i.hh, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !75
  %i.hv = zext i8 %i.hr to i32
  %i.hw = zext i8 %i.hu to i32
  %i.hx = sub nsw i32 %i.hv, %i.hw                ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %i.hx
  %i.hz = add i32 %i.hy, %.05366.i.i.i            ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.gr, i64 %indvars.iv.i.i.i
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !61
  %i.ic = add i32 %i.hz, %i.ib
  %i.id = getelementptr [4 x i8], ptr %i.gm, i64 %indvars.iv.i.i.i
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !61
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.by
  br i1 %exitcond.not.i77.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !95

compute_unsafe_ssd_integral_image.exit.i.i:       ; preds = %._crit_edge.i.i.i, %bb.f
  %i.ie = icmp sgt i32 %i.gg, 0
  %or.cond.i = select i1 %i.cu, i1 %i.ie, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i121.i.i, label %compute_unsafe_ssd_integral_image.exit135.i.i

.lr.ph.preheader.i121.i.i:                        ; preds = %compute_unsafe_ssd_integral_image.exit.i.i
  %i.if = zext nneg i32 %i.gg to i64
  br label %.lr.ph.i122.i.i

.lr.ph.i122.i.i:                                  ; preds = %._crit_edge.i133.i.i, %.lr.ph.preheader.i121.i.i
  %indvars.iv72.i123.i.i = phi i64 [ %i.cv, %.lr.ph.preheader.i121.i.i ], [ %indvars.iv.next73.i134.i.i, %._crit_edge.i133.i.i ] ; 5 uses
  %i.ig = mul nsw i64 %indvars.iv72.i123.i.i, %i.ga
  %i.ih = getelementptr [4 x i8], ptr %i.ge, i64 %i.ig ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !61
  %i.ik = add nsw i64 %indvars.iv72.i123.i.i, -1
  %i.il = mul nsw i64 %i.ik, %i.ga
  %i.im = getelementptr [4 x i8], ptr %i.ge, i64 %i.il ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !61
  %i.ip = sub i32 %i.ij, %i.io
  %3 = sub nsw i64 %indvars.iv72.i123.i.i, %i.ay  ; 2 uses
  %4 = icmp slt i64 %3, 0
  %i.iq = trunc nsw i64 %3 to i32
  %..i59.i124.i.i = call i32 @llvm.smin.i32(i32 %i.iq, i32 %i.bv)
  %5 = trunc nsw i64 %indvars.iv72.i123.i.i to i32
  %i.ir = sub i32 %5, %i.cn                       ; 2 uses
  %i.is = icmp slt i32 %i.ir, 0
  %..i57.i125.i.i = call i32 @llvm.smin.i32(i32 %i.ir, i32 %i.bv)
  %.0.i58.i126.i.i = select i1 %i.is, i32 0, i32 %..i57.i125.i.i
  %i.it = sext i32 %..i59.i124.i.i to i64
  %6 = select i1 %4, i64 0, i64 %i.it
  %i.iu = mul nsw i64 %6, %i.at
  %i.iv = getelementptr i8, ptr %i.ap, i64 %i.iu
  %i.iw = sext i32 %.0.i58.i126.i.i to i64
  %i.ix = mul nsw i64 %i.iw, %i.at
  %i.iy = getelementptr i8, ptr %i.ap, i64 %i.ix
  br label %bb.h

._crit_edge.i133.i.i:                             ; preds = %bb.h
  %indvars.iv.next73.i134.i.i = add nsw i64 %indvars.iv72.i123.i.i, 1 ; 2 uses
  %i.iz = icmp slt i64 %indvars.iv.next73.i134.i.i, %i.cw
  br i1 %i.iz, label %.lr.ph.i122.i.i, label %compute_unsafe_ssd_integral_image.exit135.i.i, !llvm.loop !94

bb.h:                                             ; preds = %bb.h, %.lr.ph.i122.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i122.i.i ], [ %indvars.iv.next.i132.i.i, %bb.h ] ; 5 uses
  %.05366.i128.i.i = phi i32 [ %i.ip, %.lr.ph.i122.i.i ], [ %i.jr, %bb.h ]
  %i.ja = sub nsw i64 %indvars.iv.i127.i.i, %i.ay ; 2 uses
  %i.jb = icmp slt i64 %i.ja, 0
  %i.jc = trunc nsw i64 %i.ja to i32
  %..i55.i129.i.i = call i32 @llvm.smin.i32(i32 %i.jc, i32 %i.bx)
  %i.jd = trunc nsw i64 %indvars.iv.i127.i.i to i32
  %i.je = sub i32 %i.jd, %i.gf                    ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  %..i.i130.i.i = call i32 @llvm.smin.i32(i32 %i.je, i32 %i.bx)
  %.0.i.i131.i.i = select i1 %i.jf, i32 0, i32 %..i.i130.i.i
  %i.jg = sext i32 %..i55.i129.i.i to i64
  %i.jh = select i1 %i.jb, i64 0, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.iv, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !75
  %i.jk = sext i32 %.0.i.i131.i.i to i64
  %i.jl = getelementptr i8, ptr %i.iy, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !75
  %i.jn = zext i8 %i.jj to i32
  %i.jo = zext i8 %i.jm to i32
  %i.jp = sub nsw i32 %i.jn, %i.jo                ; 2 uses
  %i.jq = mul nsw i32 %i.jp, %i.jp
  %i.jr = add i32 %i.jq, %.05366.i128.i.i         ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.im, i64 %indvars.iv.i127.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !61
  %i.ju = add i32 %i.jr, %i.jt
  %i.jv = getelementptr [4 x i8], ptr %i.ih, i64 %indvars.iv.i127.i.i
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !61
  %indvars.iv.next.i132.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %exitcond170.not.i.i = icmp eq i64 %indvars.iv.next.i132.i.i, %i.if
  br i1 %exitcond170.not.i.i, label %._crit_edge.i133.i.i, label %bb.h, !llvm.loop !95

compute_unsafe_ssd_integral_image.exit135.i.i:    ; preds = %._crit_edge.i133.i.i, %compute_unsafe_ssd_integral_image.exit.i.i
  %i.jw = icmp ne i32 %i.gk, 0
  %or.cond.i76.i = select i1 %i.jw, i1 %i.cx, i1 false
  br i1 %or.cond.i76.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %compute_unsafe_ssd_integral_image.exit135.i.i
  %i.jx = load ptr, ptr %i.bs, align 8, !tbaa !42
  %i.jy = mul nsw i64 %i.ga, %i.cv
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.jy
  %i.ka = sext i32 %i.gg to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = sub nsw i32 %i.gg, %i.av
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds i8, ptr %i.db, i64 %i.kd
  %i.kf = sub nsw i32 %i.gg, %i.gf
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds i8, ptr %i.de, i64 %i.kg
  call void %i.jx(ptr noundef %i.kb, i64 noundef %i.ga, ptr noundef %i.ke, i64 noundef range(i64 -2147483648, 2147483648) %i.at, ptr noundef %i.kh, i64 noundef range(i64 -2147483648, 2147483648) %i.at, i32 noundef %i.gk, i32 noundef %i.cr) #8, !inline_history !96
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %compute_unsafe_ssd_integral_image.exit135.i.i
  br i1 %i.cu, label %.lr.ph69.i136.i.i, label %compute_unsafe_ssd_integral_image.exit151.i.i

.lr.ph69.i136.i.i:                                ; preds = %bb.j
  %i.ki = add nsw i32 %i.gk, %i.gg                ; 2 uses
  %i.kj = sext i32 %i.ki to i64                   ; 3 uses
  %i.kk = icmp sgt i32 %i.bu, %i.ki
  br i1 %i.kk, label %.lr.ph.i138.i.i, label %compute_unsafe_ssd_integral_image.exit151.i.i

.lr.ph.i138.i.i:                                  ; preds = %.lr.ph69.i136.i.i, %._crit_edge.i149.i.i
  %indvars.iv72.i139.i.i = phi i64 [ %indvars.iv.next73.i150.i.i, %._crit_edge.i149.i.i ], [ %i.cv, %.lr.ph69.i136.i.i ] ; 5 uses
  %i.kl = mul nsw i64 %indvars.iv72.i139.i.i, %i.ga
  %i.km = getelementptr [4 x i8], ptr %i.ge, i64 %i.kl ; 2 uses
  %i.kn = getelementptr [4 x i8], ptr %i.km, i64 %i.kj
  %i.ko = getelementptr i8, ptr %i.kn, i64 -4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !61
  %i.kq = add nsw i64 %indvars.iv72.i139.i.i, -1
  %i.kr = mul nsw i64 %i.kq, %i.ga
  %i.ks = getelementptr [4 x i8], ptr %i.ge, i64 %i.kr ; 2 uses
  %i.kt = getelementptr [4 x i8], ptr %i.ks, i64 %i.kj
  %i.ku = getelementptr i8, ptr %i.kt, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !61
  %i.kw = sub i32 %i.kp, %i.kv
  %7 = sub nsw i64 %indvars.iv72.i139.i.i, %i.ay  ; 2 uses
  %8 = icmp slt i64 %7, 0
  %i.kx = trunc nsw i64 %7 to i32
  %..i59.i140.i.i = call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.bv)
  %9 = trunc nsw i64 %indvars.iv72.i139.i.i to i32
  %i.ky = sub i32 %9, %i.cn                       ; 2 uses
  %i.kz = icmp slt i32 %i.ky, 0
  %..i57.i141.i.i = call i32 @llvm.smin.i32(i32 %i.ky, i32 %i.bv)
  %.0.i58.i142.i.i = select i1 %i.kz, i32 0, i32 %..i57.i141.i.i
  %i.la = sext i32 %..i59.i140.i.i to i64
  %10 = select i1 %8, i64 0, i64 %i.la
  %i.lb = mul nsw i64 %10, %i.at
  %i.lc = getelementptr i8, ptr %i.ap, i64 %i.lb
  %i.ld = sext i32 %.0.i58.i142.i.i to i64
  %i.le = mul nsw i64 %i.ld, %i.at
  %i.lf = getelementptr i8, ptr %i.ap, i64 %i.le
  br label %bb.k

._crit_edge.i149.i.i:                             ; preds = %bb.k
  %indvars.iv.next73.i150.i.i = add nsw i64 %indvars.iv72.i139.i.i, 1 ; 2 uses
  %i.lg = icmp slt i64 %indvars.iv.next73.i150.i.i, %i.cw
  br i1 %i.lg, label %.lr.ph.i138.i.i, label %compute_unsafe_ssd_integral_image.exit151.i.i, !llvm.loop !94

bb.k:                                             ; preds = %bb.k, %.lr.ph.i138.i.i
  %indvars.iv.i143.i.i = phi i64 [ %i.kj, %.lr.ph.i138.i.i ], [ %indvars.iv.next.i148.i.i, %bb.k ] ; 5 uses
  %.05366.i144.i.i = phi i32 [ %i.kw, %.lr.ph.i138.i.i ], [ %i.ly, %bb.k ]
  %i.lh = sub nsw i64 %indvars.iv.i143.i.i, %i.ay ; 2 uses
  %i.li = icmp slt i64 %i.lh, 0
  %i.lj = trunc nsw i64 %i.lh to i32
  %..i55.i145.i.i = call i32 @llvm.smin.i32(i32 %i.lj, i32 %i.bx)
  %i.lk = trunc nsw i64 %indvars.iv.i143.i.i to i32
  %i.ll = sub i32 %i.lk, %i.gf                    ; 2 uses
  %i.lm = icmp slt i32 %i.ll, 0
  %..i.i146.i.i = call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.bx)
  %.0.i.i147.i.i = select i1 %i.lm, i32 0, i32 %..i.i146.i.i
  %i.ln = sext i32 %..i55.i145.i.i to i64
  %i.lo = select i1 %i.li, i64 0, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lc, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !75
  %i.lr = sext i32 %.0.i.i147.i.i to i64
  %i.ls = getelementptr i8, ptr %i.lf, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !75
  %i.lu = zext i8 %i.lq to i32
  %i.lv = zext i8 %i.lt to i32
  %i.lw = sub nsw i32 %i.lu, %i.lv                ; 2 uses
  %i.lx = mul nsw i32 %i.lw, %i.lw
  %i.ly = add i32 %i.lx, %.05366.i144.i.i         ; 2 uses
  %i.lz = getelementptr [4 x i8], ptr %i.ks, i64 %indvars.iv.i143.i.i
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !61
  %i.mb = add i32 %i.ly, %i.ma
  %i.mc = getelementptr [4 x i8], ptr %i.km, i64 %indvars.iv.i143.i.i
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !61
  %indvars.iv.next.i148.i.i = add nsw i64 %indvars.iv.i143.i.i, 1 ; 2 uses
  %exitcond171.not.i.i = icmp eq i64 %indvars.iv.next.i148.i.i, %i.bz
  br i1 %exitcond171.not.i.i, label %._crit_edge.i149.i.i, label %bb.k, !llvm.loop !95

compute_unsafe_ssd_integral_image.exit151.i.i:    ; preds = %._crit_edge.i149.i.i, %.lr.ph69.i136.i.i, %bb.j
  br i1 %brmerge87.i, label %compute_ssd_integral_image.exit.i, label %.lr.ph.i154.i.i

.lr.ph.i154.i.i:                                  ; preds = %compute_unsafe_ssd_integral_image.exit151.i.i, %._crit_edge.i165.i.i
  %indvars.iv72.i155.i.i = phi i64 [ %indvars.iv.next73.i166.i.i, %._crit_edge.i165.i.i ], [ %i.cw, %compute_unsafe_ssd_integral_image.exit151.i.i ] ; 5 uses
  %i.md = mul nsw i64 %indvars.iv72.i155.i.i, %i.ga
  %i.me = getelementptr [4 x i8], ptr %i.ge, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !61
  %i.mh = add nsw i64 %indvars.iv72.i155.i.i, -1
  %i.mi = mul nsw i64 %i.mh, %i.ga
  %i.mj = getelementptr [4 x i8], ptr %i.ge, i64 %i.mi ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !61
  %i.mm = sub i32 %i.mg, %i.ml
  %i.mn = sub nsw i64 %indvars.iv72.i155.i.i, %i.ay ; 2 uses
  %i.mo = icmp slt i64 %i.mn, 0
  %i.mp = trunc nsw i64 %i.mn to i32
  %..i59.i156.i.i = call i32 @llvm.smin.i32(i32 %i.mp, i32 %i.bv)
  %i.mq = trunc nsw i64 %indvars.iv72.i155.i.i to i32
  %i.mr = sub i32 %i.mq, %i.cn                    ; 2 uses
  %i.ms = icmp slt i32 %i.mr, 0
  %..i57.i157.i.i = call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.bv)
  %.0.i58.i158.i.i = select i1 %i.ms, i32 0, i32 %..i57.i157.i.i
  %i.mt = sext i32 %..i59.i156.i.i to i64
  %i.mu = select i1 %i.mo, i64 0, i64 %i.mt
  %i.mv = mul nsw i64 %i.mu, %i.at
  %i.mw = getelementptr i8, ptr %i.ap, i64 %i.mv
  %i.mx = sext i32 %.0.i58.i158.i.i to i64
  %i.my = mul nsw i64 %i.mx, %i.at
  %i.mz = getelementptr i8, ptr %i.ap, i64 %i.my
  br label %bb.l

._crit_edge.i165.i.i:                             ; preds = %bb.l
  %indvars.iv.next73.i166.i.i = add nsw i64 %indvars.iv72.i155.i.i, 1 ; 2 uses
  %i.na = icmp slt i64 %indvars.iv.next73.i166.i.i, %i.cb
  br i1 %i.na, label %.lr.ph.i154.i.i, label %compute_ssd_integral_image.exit.i, !llvm.loop !94

bb.l:                                             ; preds = %bb.l, %.lr.ph.i154.i.i
  %indvars.iv.i159.i.i = phi i64 [ 0, %.lr.ph.i154.i.i ], [ %indvars.iv.next.i164.i.i, %bb.l ] ; 5 uses
  %.05366.i160.i.i = phi i32 [ %i.mm, %.lr.ph.i154.i.i ], [ %i.ns, %bb.l ]
  %i.nb = sub nsw i64 %indvars.iv.i159.i.i, %i.ay ; 2 uses
  %i.nc = icmp slt i64 %i.nb, 0
  %i.nd = trunc nsw i64 %i.nb to i32
  %..i55.i161.i.i = call i32 @llvm.smin.i32(i32 %i.nd, i32 %i.bx)
  %i.ne = trunc nsw i64 %indvars.iv.i159.i.i to i32
  %i.nf = sub i32 %i.ne, %i.gf                    ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 0
  %..i.i162.i.i = call i32 @llvm.smin.i32(i32 %i.nf, i32 %i.bx)
  %.0.i.i163.i.i = select i1 %i.ng, i32 0, i32 %..i.i162.i.i
  %i.nh = sext i32 %..i55.i161.i.i to i64
  %i.ni = select i1 %i.nc, i64 0, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.mw, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !75
  %i.nl = sext i32 %.0.i.i163.i.i to i64
  %i.nm = getelementptr i8, ptr %i.mz, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !75
  %i.no = zext i8 %i.nk to i32
  %i.np = zext i8 %i.nn to i32
  %i.nq = sub nsw i32 %i.no, %i.np                ; 2 uses
  %i.nr = mul nsw i32 %i.nq, %i.nq
  %i.ns = add i32 %i.nr, %.05366.i160.i.i         ; 2 uses
  %i.nt = getelementptr [4 x i8], ptr %i.mj, i64 %indvars.iv.i159.i.i
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !61
  %i.nv = add i32 %i.ns, %i.nu
  %i.nw = getelementptr [4 x i8], ptr %i.me, i64 %indvars.iv.i159.i.i
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !61
  %indvars.iv.next.i164.i.i = add nuw nsw i64 %indvars.iv.i159.i.i, 1 ; 2 uses
  %exitcond172.not.i.i = icmp eq i64 %indvars.iv.next.i164.i.i, %i.by
  br i1 %exitcond172.not.i.i, label %._crit_edge.i165.i.i, label %bb.l, !llvm.loop !95

compute_ssd_integral_image.exit.i:                ; preds = %._crit_edge.i165.i.i, %compute_unsafe_ssd_integral_image.exit151.i.i
  %i.nx = load i32, ptr %i.aa, align 4, !tbaa !92
  %i.ny = load i32, ptr %i.y, align 4, !tbaa !90
  %i.nz = sub nsw i32 %i.nx, %i.ny
  %i.oa = call i32 @ff_filter_get_nb_threads(ptr noundef %i.c) #9
  %..i = call i32 @llvm.smin.i32(i32 %i.nz, i32 %i.oa)
  %i.ob = call i32 @ff_filter_execute(ptr noundef %i.c, ptr noundef nonnull @nlmeans_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %..i) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.m

bb.m:                                             ; preds = %compute_ssd_integral_image.exit.i, %bb.e
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.cd, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !97

nlmeans_plane.exit:                               ; preds = %._crit_edge.i.i, %._crit_edge82.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oc = load i32, ptr %i.o, align 8, !tbaa !60
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next, %i.od
  br i1 %i.oe, label %bb.d, label %._crit_edge, !llvm.loop !98

bb.n:                                             ; preds = %._crit_edge, %bb.b
  %.036 = phi i32 [ %i.ad, %._crit_edge ], [ -12, %bb.b ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !99
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %. = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.o)
  %i.q = add nsw i32 %i.p, %.
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !58
  %i.t = sub nsw i32 0, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !100
  %i.w = zext nneg i8 %i.v to i32
  %i.x = ashr i32 %i.t, %i.w
  %i.y = sub nsw i32 0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.y, ptr %i.z, align 4, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !103
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = ashr i32 %i.ac, %i.af
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !104
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !99
  %i.ak = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.aj) #8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !58
  %i.ao = shl nsw i32 %i.q, 1                     ; 2 uses
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.at = add nsw i32 %i.as, %i.ao                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  store i32 %i.at, ptr %i.au, align 4, !tbaa !106
  %i.av = and i32 %i.ap, -4
end_hunk_0
