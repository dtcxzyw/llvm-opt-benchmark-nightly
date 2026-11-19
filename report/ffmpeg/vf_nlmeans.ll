Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_nlmeans?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@init:bb.a
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !68 ; 3 uses
  %i.bb = sdiv i32 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !33
  %i.bd = sdiv i32 %i.at, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.19, i32 noundef %i.au, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.ba, i32 noundef %i.at, i32 noundef %i.at) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr @compute_safe_ssd_integral_image_c, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @compute_weights_line_c, ptr %i.bg, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.057 = phi i32 [ 0, %bb.n ], [ -12, %bb.a ]
  ret i32 %.057
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
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
  store ptr %1, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l) #8 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #8 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
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
  %i.ae = load i32, ptr %.in, align 4, !tbaa !49  ; 8 uses
  %.in39 = select i1 %.not38, ptr %i.u, ptr %i.t
  %i.af = load i32, ptr %.in39, align 4, !tbaa !49 ; 10 uses
  %.in40.v = select i1 %.not38, i64 44, i64 52
  %.in40 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in40.v
  %i.ag = load i32, ptr %.in40, align 4, !tbaa !49 ; 2 uses
  %.in41.v = select i1 %.not38, i64 60, i64 68
  %.in41 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in41.v
  %i.ah = load i32, ptr %.in41, align 4, !tbaa !49 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !49 ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 16 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !19  ; 6 uses
  %i.av = add nsw i32 %i.ah, %i.ag                ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = sext i32 %i.av to i64                   ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bb = mul nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bi = mul nsw i32 %i.bh, %i.af
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !53
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
  %i.dg = load i32, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = icmp sgt i32 %i.af, 0
  %i.dj = icmp sgt i32 %i.ae, 0
  %or.cond.i.i = and i1 %i.dj, %i.di
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %nlmeans_plane.exit

.preheader.preheader.i.i:                         ; preds = %._crit_edge82.i
  %i.dk = load ptr, ptr %i.bl, align 8, !tbaa !54 ; 6 uses
  %i.dl = load ptr, ptr %i.be, align 8, !tbaa !52 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %3 = shl nsw i64 %i.dh, 2
  %i.dm = add nsw i32 %i.af, -1
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = mul i64 %3, %i.dn
  %4 = shl nuw nsw i64 %wide.trip.count.i.i, 2    ; 3 uses
  %5 = add i64 %i.do, %4                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dk, i64 %5  ; 2 uses
  %i.dp = mul nsw i64 %i.at, %i.dn
  %i.dq = getelementptr i8, ptr %i.ap, i64 %i.dp
  %scevgep75 = getelementptr i8, ptr %i.dq, i64 %wide.trip.count.i.i ; 3 uses
  %6 = mul nsw i64 %i.am, %i.dn
  %7 = getelementptr i8, ptr %i.aj, i64 %6
  %scevgep78 = getelementptr i8, ptr %7, i64 %wide.trip.count.i.i ; 3 uses
  %scevgep79 = getelementptr i8, ptr %i.dl, i64 %5 ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.dk, i64 %4
  %scevgep77 = getelementptr i8, ptr %i.dl, i64 %4
  %min.iters.check = icmp ult i32 %i.ae, 4
  %bound0 = icmp ult ptr %i.dl, %scevgep76
  %bound1 = icmp ult ptr %i.dk, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %i.dl, %scevgep78
  %bound078 = icmp ult ptr %i.aj, %scevgep79
  %found.conflict84 = and i1 %bound082, %bound078
  %8 = or i32 %i.al, %i.dg
  %stride.check81 = icmp slt i32 %8, 0
  %i.dr = or i1 %found.conflict84, %stride.check81
  %conflict.rdx = or i1 %found.conflict, %i.dr
  %bound082.a = icmp ult ptr %i.dl, %scevgep75
  %bound183 = icmp ult ptr %i.ap, %scevgep79
  %found.conflict84.a = and i1 %bound082.a, %bound183
  %stride.check85 = icmp slt i32 %i.as, 0
  %i.ds = or i1 %found.conflict84.a, %stride.check85
  %conflict.rdx86 = or i1 %conflict.rdx, %i.ds
  %bound087 = icmp ult ptr %i.dk, %scevgep78
  %bound188 = icmp ult ptr %i.aj, %scevgep
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx86, %found.conflict89
  %bound091 = icmp ult ptr %i.dk, %scevgep75
  %bound192 = icmp ult ptr %i.ap, %scevgep
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx90, %found.conflict93
  %bound095 = icmp ult ptr %i.aj, %scevgep75
  %bound196 = icmp ult ptr %i.ap, %scevgep78
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.02536.i.i = phi i32 [ %i.el, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.02635.i.i = phi ptr [ %i.eh, %._crit_edge.i.i ], [ %i.aj, %.preheader.preheader.i.i ] ; 3 uses
  %.02734.i.i = phi ptr [ %i.ei, %._crit_edge.i.i ], [ %i.ap, %.preheader.preheader.i.i ] ; 3 uses
  %.02833.i.i = phi ptr [ %i.ej, %._crit_edge.i.i ], [ %i.dl, %.preheader.preheader.i.i ] ; 3 uses
  %.02932.i.i = phi ptr [ %i.ek, %._crit_edge.i.i ], [ %i.dk, %.preheader.preheader.i.i ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx98
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.02833.i.i, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !29, !alias.scope !91, !noalias !92
  %i.du = fadd nsz <4 x float> %wide.load, splat (float 1.000000e+00)
  store <4 x float> %i.du, ptr %i.dt, align 4, !tbaa !29, !alias.scope !91, !noalias !92
  %i.dv = getelementptr inbounds nuw i8, ptr %.02734.i.i, i64 %index
  %wide.load99 = load <4 x i8>, ptr %i.dv, align 1, !tbaa !55, !alias.scope !93
  %i.dw = uitofp <4 x i8> %wide.load99 to <4 x float>
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.02932.i.i, i64 %index ; 2 uses
  %wide.load100 = load <4 x float>, ptr %i.dx, align 4, !tbaa !29, !alias.scope !94, !noalias !95
  %i.dy = fadd nsz <4 x float> %wide.load100, %i.dw ; 2 uses
  store <4 x float> %i.dy, ptr %i.dx, align 4, !tbaa !29, !alias.scope !94, !noalias !95
  %wide.load101 = load <4 x float>, ptr %i.dt, align 4, !tbaa !29, !alias.scope !91, !noalias !92
  %i.dz = fdiv nsz <4 x float> %i.dy, %wide.load101
  %i.ea = fadd nsz <4 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>
  %i.ec = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eb, <4 x i32> zeroinitializer)
  %i.ed = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ec, <4 x i32> splat (i32 255))
  %i.ee = trunc nuw <4 x i32> %i.ed to <4 x i8>
  %i.ef = getelementptr inbounds nuw i8, ptr %.02635.i.i, i64 %index
  store <4 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !55, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %i.eh = getelementptr inbounds i8, ptr %.02635.i.i, i64 %i.am
  %i.ei = getelementptr inbounds i8, ptr %.02734.i.i, i64 %i.at
  %i.ej = getelementptr inbounds [4 x i8], ptr %.02833.i.i, i64 %i.dh
  %i.ek = getelementptr inbounds [4 x i8], ptr %.02932.i.i, i64 %i.dh
  %i.el = add nuw nsw i32 %.02536.i.i, 1          ; 2 uses
  %exitcond39.not.i.i = icmp eq i32 %i.el, %i.af
  br i1 %exitcond39.not.i.i, label %nlmeans_plane.exit, label %.preheader.i.i, !llvm.loop !77

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.02833.i.i, i64 %indvars.iv.i.i ; 3 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !29
  %i.eo = fadd nsz float %i.en, 1.000000e+00
  store float %i.eo, ptr %i.em, align 4, !tbaa !29
  %i.ep = getelementptr inbounds nuw i8, ptr %.02734.i.i, i64 %indvars.iv.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !55
  %i.er = uitofp i8 %i.eq to float
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.02932.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !29
  %i.eu = fadd nsz float %i.et, %i.er             ; 2 uses
  store float %i.eu, ptr %i.es, align 4, !tbaa !29
  %i.ev = load float, ptr %i.em, align 4, !tbaa !29
  %i.ew = fdiv nsz float %i.eu, %i.ev
  %i.ex = fadd nsz float %i.ew, 5.000000e-01
  %i.ey = fptosi float %i.ex to i32
  %i.ez = call i32 @llvm.smax.i32(i32 %i.ey, i32 0)
  %.0.i30.i.i = call i32 @llvm.umin.i32(i32 %i.ez, i32 255)
  %.0.i.i.i = trunc nuw i32 %.0.i30.i.i to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.02635.i.i, i64 %indvars.iv.i.i
  store i8 %.0.i.i.i, ptr %i.fa, align 1, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !78

._crit_edge.i:                                    ; preds = %bb.m
  %indvars.iv.next90.i = add nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %lftr.wideiv92.i = trunc i64 %indvars.iv.next90.i to i32
  %exitcond93.not.i = icmp eq i32 %i.cd, %lftr.wideiv92.i
  br i1 %exitcond93.not.i, label %._crit_edge82.i, label %.preheader.i, !llvm.loop !79

bb.e:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cc, %.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 6 uses
  %i.fb = or i64 %indvars.iv.i, %indvars.iv89.i
  %or.cond.not.i = icmp eq i64 %i.fb, 0
  br i1 %or.cond.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fc = trunc i64 %indvars.iv.i to i32          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.fd = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.i
  store ptr %i.fd, ptr %2, align 8, !tbaa !57
  store i64 %i.at, ptr %i.w, align 8, !tbaa !58
  %i.fe = sub i32 0, %i.fc
  %i.ff = call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  store i32 %i.ff, ptr %i.x, align 8, !tbaa !59
  store i32 %i.cj, ptr %i.y, align 4, !tbaa !60
  %i.fg = sub i32 %i.ae, %i.fc
  %i.fh = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.fg)
  store i32 %i.fh, ptr %i.z, align 8, !tbaa !61
  store i32 %i.cl, ptr %i.aa, align 4, !tbaa !62
  %i.fi = load i64, ptr %i.az, align 8, !tbaa !51 ; 11 uses
  %i.fj = mul nsw i64 %i.fi, %indvars.iv89.i
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.fj
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %indvars.iv.i
  store ptr %i.fl, ptr %i.ab, align 8, !tbaa !63
  store <2 x i32> %i.ce, ptr %i.ac, align 8
  %i.fm = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 9 uses
  %i.fn = add i32 %i.av, %i.fc                    ; 7 uses
  %i.fo = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.fn) ; 7 uses
  %i.fp = icmp slt i64 %indvars.iv.i, 0
  %..i.i = select i1 %i.fp, i32 %i.fn, i32 %i.av
  %i.fq = add nsw i32 %..i.i, %i.ae
  %i.fr = sub i32 %i.fq, %i.fo
  %i.fs = and i32 %i.fr, -16                      ; 3 uses
  br i1 %brmerge.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %._crit_edge.i.i.i
  %indvars.iv72.i.i.i = phi i64 [ %indvars.iv.next73.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.f ] ; 5 uses
  %i.ft = mul nsw i64 %indvars.iv72.i.i.i, %i.fi
  %i.fu = getelementptr [4 x i8], ptr %i.fm, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !49
  %i.fx = add nsw i64 %indvars.iv72.i.i.i, -1
  %i.fy = mul nsw i64 %i.fx, %i.fi
  %i.fz = getelementptr [4 x i8], ptr %i.fm, i64 %i.fy ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !49
  %i.gc = sub i32 %i.fw, %i.gb
  %i.gd = sub nsw i64 %indvars.iv72.i.i.i, %i.ay  ; 2 uses
  %i.ge = icmp slt i64 %i.gd, 0
  %i.gf = trunc nsw i64 %i.gd to i32
  %..i59.i.i.i = call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.bv)
  %i.gg = trunc nuw nsw i64 %indvars.iv72.i.i.i to i32
  %i.gh = sub i32 %i.gg, %i.cn                    ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  %..i57.i.i.i = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.bv)
  %.0.i58.i.i.i = select i1 %i.gi, i32 0, i32 %..i57.i.i.i
  %i.gj = sext i32 %..i59.i.i.i to i64
  %i.gk = select i1 %i.ge, i64 0, i64 %i.gj
  %i.gl = mul nsw i64 %i.gk, %i.at
  %i.gm = getelementptr i8, ptr %i.ap, i64 %i.gl
  %i.gn = sext i32 %.0.i58.i.i.i to i64
  %i.go = mul nsw i64 %i.gn, %i.at
  %i.gp = getelementptr i8, ptr %i.ap, i64 %i.go
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %i.ct
  br i1 %exitcond168.not.i.i, label %compute_unsafe_ssd_integral_image.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 5 uses
  %.05366.i.i.i = phi i32 [ %i.gc, %.lr.ph.i.i.i ], [ %i.hh, %bb.g ]
  %i.gq = sub nsw i64 %indvars.iv.i.i.i, %i.ay    ; 2 uses
  %i.gr = icmp slt i64 %i.gq, 0
  %i.gs = trunc nsw i64 %i.gq to i32
  %..i55.i.i.i = call i32 @llvm.smin.i32(i32 %i.gs, i32 %i.bx)
  %i.gt = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.gu = sub i32 %i.gt, %i.fn                    ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %i.bx)
  %.0.i.i.i.i = select i1 %i.gv, i32 0, i32 %..i.i.i.i
  %i.gw = sext i32 %..i55.i.i.i to i64
  %i.gx = select i1 %i.gr, i64 0, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gm, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !55
  %i.ha = sext i32 %.0.i.i.i.i to i64
  %i.hb = getelementptr i8, ptr %i.gp, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !55
  %i.hd = zext i8 %i.gz to i32
  %i.he = zext i8 %i.hc to i32
  %i.hf = sub nsw i32 %i.hd, %i.he                ; 2 uses
  %i.hg = mul nsw i32 %i.hf, %i.hf
  %i.hh = add i32 %i.hg, %.05366.i.i.i            ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !49
  %i.hk = add i32 %i.hh, %i.hj
  %i.hl = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !49
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.by
  br i1 %exitcond.not.i77.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !81

compute_unsafe_ssd_integral_image.exit.i.i:       ; preds = %._crit_edge.i.i.i, %bb.f
  %i.hm = icmp sgt i32 %i.fo, 0
  %or.cond.i = select i1 %i.cu, i1 %i.hm, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i121.i.i, label %compute_unsafe_ssd_integral_image.exit135.i.i

.lr.ph.preheader.i121.i.i:                        ; preds = %compute_unsafe_ssd_integral_image.exit.i.i
  %i.hn = zext nneg i32 %i.fo to i64
end_hunk_0
