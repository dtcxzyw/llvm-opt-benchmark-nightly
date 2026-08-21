inline.NumInlined: 132
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@vorbis_encode_init:bb.a
  store float %i.dc, ptr %i.cs, align 4, !tbaa !55
  %indvars.iv.next87.i.us.us.i = add nuw nsw i64 %indvars.iv86.i.us.us.i, 1 ; 2 uses
  %exitcond90.not.i.us.us.i = icmp eq i64 %indvars.iv.next87.i.us.us.i, %i.cq
  br i1 %exitcond90.not.i.us.us.i, label %._crit_edge.split.us80.i.split.us.us.i, label %bb.m, !llvm.loop !70

._crit_edge.split.us80.i.split.us.us.i:           ; preds = %bb.m
  %i.dd = fmul nsz float %i.dc, 5.000000e-01
  store float %i.dd, ptr %i.cs, align 4, !tbaa !55
  %indvars.iv.next92.i.us.i = add nuw nsw i64 %indvars.iv91.i.us.i, 1 ; 2 uses
  %exitcond95.not.i.us.i = icmp eq i64 %indvars.iv.next92.i.us.i, %wide.trip.count114.i.i
  br i1 %exitcond95.not.i.us.i, label %.loopexit.i, label %.preheader.us.i.us.i, !llvm.loop !71

.preheader.lr.ph.split.us.split.us.i.i:           ; preds = %.preheader.lr.ph.split.us.i.i
  br i1 %.not69.us.i.i, label %.preheader.us.us.us.i.i, label %.preheader.us.us.i.i

.preheader.us.us.us.i.i:                          ; preds = %.preheader.lr.ph.split.us.split.us.i.i, %._crit_edge.split.us.us.us.split.us.us.i.i
  %indvars.iv111.i.i = phi i64 [ %indvars.iv.next112.i.i, %._crit_edge.split.us.us.us.split.us.us.i.i ], [ 0, %.preheader.lr.ph.split.us.split.us.i.i ] ; 4 uses
  %i.de = mul nuw nsw i64 %indvars.iv111.i.i, %i.cq
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv111.i.i ; 3 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv111.i.i to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.de
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.us.us.us.i.i
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i, %bb.n ], [ 0, %.preheader.us.us.us.i.i ] ; 2 uses
  %.05873.us.us.us.us.us.i.i = phi i32 [ %i.du, %bb.n ], [ 1, %.preheader.us.us.us.i.i ] ; 2 uses
  %i.di = sdiv i32 %i.dg, %.05873.us.us.us.us.us.i.i
  %i.dj = srem i32 %i.di, %.0.i.i.i
  %i.dk = load float, ptr %i.z, align 4, !tbaa !68
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !46
  %i.do = sitofp nsz i32 %i.dn to float
  %i.dp = load float, ptr %i.aa, align 8, !tbaa !69
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %i.dp, float %i.dk) ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv106.i.i
  store float %i.dq, ptr %i.dr, align 4, !tbaa !55
  %i.ds = load float, ptr %i.df, align 4, !tbaa !55
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.ds) ; 2 uses
  store float %i.dt, ptr %i.df, align 4, !tbaa !55
  %i.du = mul nsw i32 %.05873.us.us.us.us.us.i.i, %.0.i.i.i
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1 ; 2 uses
  %exitcond110.not.i.i = icmp eq i64 %indvars.iv.next107.i.i, %i.cq
  br i1 %exitcond110.not.i.i, label %._crit_edge.split.us.us.us.split.us.us.i.i, label %bb.n, !llvm.loop !70

._crit_edge.split.us.us.us.split.us.us.i.i:       ; preds = %bb.n
  %i.dv = fmul nsz float %i.dt, 5.000000e-01
  store float %i.dv, ptr %i.df, align 4, !tbaa !55
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %exitcond115.not.i.i = icmp eq i64 %indvars.iv.next112.i.i, %wide.trip.count114.i.i
  br i1 %exitcond115.not.i.i, label %.loopexit.i, label %.preheader.us.us.us.i.i, !llvm.loop !71

.preheader.us.us.i.i:                             ; preds = %.preheader.lr.ph.split.us.split.us.i.i, %._crit_edge.split.us.us.us.split.i.i
  %indvars.iv101.i.i = phi i64 [ %indvars.iv.next102.i.i, %._crit_edge.split.us.us.us.split.i.i ], [ 0, %.preheader.lr.ph.split.us.split.us.i.i ] ; 4 uses
  %i.dw = mul nuw nsw i64 %indvars.iv101.i.i, %i.cq
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv101.i.i ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv101.i.i to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dw
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.us.us.i.i
  %indvars.iv96.i.i = phi i64 [ %indvars.iv.next97.i.i, %bb.o ], [ 0, %.preheader.us.us.i.i ] ; 2 uses
  %.05873.us.us.us.i.i = phi i32 [ %i.en, %bb.o ], [ 1, %.preheader.us.us.i.i ] ; 2 uses
  %.06071.us.us.us.i.i = phi float [ %i.ej, %bb.o ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %i.ea = sdiv i32 %i.dy, %.05873.us.us.us.i.i
  %i.eb = srem i32 %i.ea, %.0.i.i.i
  %i.ec = load float, ptr %i.z, align 4, !tbaa !68
  %i.ed = fadd nsz float %.06071.us.us.us.i.i, %i.ec
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !46
  %i.eh = sitofp nsz i32 %i.eg to float
  %i.ei = load float, ptr %i.aa, align 8, !tbaa !69
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.ei, float %i.ed) ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv96.i.i
  store float %i.ej, ptr %i.ek, align 4, !tbaa !55
  %i.el = load float, ptr %i.dx, align 4, !tbaa !55
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.el) ; 2 uses
  store float %i.em, ptr %i.dx, align 4, !tbaa !55
  %i.en = mul nsw i32 %.05873.us.us.us.i.i, %.0.i.i.i
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond100.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, %i.cq
  br i1 %exitcond100.not.i.i, label %._crit_edge.split.us.us.us.split.i.i, label %bb.o, !llvm.loop !70

._crit_edge.split.us.us.us.split.i.i:             ; preds = %bb.o
  %i.eo = fmul nsz float %i.em, 5.000000e-01
  store float %i.eo, ptr %i.dx, align 4, !tbaa !55
  %indvars.iv.next102.i.i = add nuw nsw i64 %indvars.iv101.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next102.i.i, %wide.trip.count114.i.i
  br i1 %exitcond105.not.i.i, label %.loopexit.i, label %.preheader.us.us.i.i, !llvm.loop !71

.preheader.us.i.i:                                ; preds = %.preheader.us.i.preheader.i, %._crit_edge.split.us80.i.split.i
  %indvars.iv91.i.i = phi i64 [ %indvars.iv.next92.i.i, %._crit_edge.split.us80.i.split.i ], [ 0, %.preheader.us.i.preheader.i ] ; 3 uses
  %i.ep = mul nuw nsw i64 %indvars.iv91.i.i, %i.cq
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv91.i.i ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.us.i.i
  %indvars.iv86.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next87.i.i, %bb.p ] ; 2 uses
  %.06071.us78.i.i = phi float [ 0.000000e+00, %.preheader.us.i.i ], [ %i.ey, %bb.p ]
  %i.er = add nuw nsw i64 %indvars.iv86.i.i, %i.ep ; 2 uses
  %i.es = load float, ptr %i.z, align 4, !tbaa !68
  %i.et = fadd nsz float %.06071.us78.i.i, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.er
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !46
  %i.ew = sitofp nsz i32 %i.ev to float
  %i.ex = load float, ptr %i.aa, align 8, !tbaa !69
  %i.ey = tail call nsz float @llvm.fmuladd.f32(float %i.ew, float %i.ex, float %i.et) ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.er
  store float %i.ey, ptr %i.ez, align 4, !tbaa !55
  %i.fa = load float, ptr %i.eq, align 4, !tbaa !55
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fa) ; 2 uses
  store float %i.fb, ptr %i.eq, align 4, !tbaa !55
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, %i.cq
  br i1 %exitcond90.not.i.i, label %._crit_edge.split.us80.i.split.i, label %bb.p, !llvm.loop !70

._crit_edge.split.us80.i.split.i:                 ; preds = %bb.p
  %i.fc = fmul nsz float %i.fb, 5.000000e-01
  store float %i.fc, ptr %i.eq, align 4, !tbaa !55
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %exitcond95.not.i.i = icmp eq i64 %indvars.iv.next92.i.i, %wide.trip.count114.i.i
  br i1 %exitcond95.not.i.i, label %.loopexit.i, label %.preheader.us.i.i, !llvm.loop !71

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !55
  %i.ff = fmul nsz float %i.fe, 5.000000e-01
  store float %i.ff, ptr %i.fd, align 4, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !71

.loopexit.i:                                      ; preds = %.preheader.i.i, %._crit_edge.split.us80.i.split.i, %._crit_edge.split.us80.i.split.us.us.i, %._crit_edge.split.us.us.us.split.i.i, %._crit_edge.split.us.us.us.split.us.us.i.i, %.preheader70.i.i, %bb.i
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %i.fg = load i32, ptr %i.m, align 8, !tbaa !47
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next353.i, %i.fh
  br i1 %i.fi, label %.lr.ph313.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader303.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 688 ; 4 uses
  store i32 1, ptr %i.fj, align 8, !tbaa !73
  %i.fk = tail call noalias ptr @av_mallocz(i64 noundef 56) #12 ; 12 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 696 ; 2 uses
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !74
  %.not253.i = icmp eq ptr %i.fk, null
  br i1 %.not253.i, label %create_vorbis_context.exit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  store i32 8, ptr %i.fk, align 8, !tbaa !75
  %i.fm = tail call noalias ptr @av_malloc(i64 noundef 32) #12 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !79
  %.not254.i = icmp eq ptr %i.fm, null
  br i1 %.not254.i, label %create_vorbis_context.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 3 uses
  %i.fp = load i32, ptr %i.fk, align 8, !tbaa !75 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph316.i, label %bb.t

.lr.ph316.i:                                      ; preds = %bb.r
  %i.fr = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr nonnull align 16 @create_vorbis_context.a, i64 %i.fs, i1 false), !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph316.i
  %indvars.iv355.i = phi i64 [ 0, %.lr.ph316.i ], [ %indvars.iv.next356.i, %bb.s ] ; 2 uses
  %i.ft = phi i32 [ 0, %.lr.ph316.i ], [ %.278.i, %bb.s ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @create_vorbis_context.a, i64 %indvars.iv355.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !46
  %.278.i = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fv) ; 2 uses
  %indvars.iv.next356.i = add nuw nsw i64 %indvars.iv355.i, 1 ; 2 uses
  %exitcond359.not.i = icmp eq i64 %indvars.iv.next356.i, %i.fr
  br i1 %exitcond359.not.i, label %._crit_edge317.i, label %bb.s, !llvm.loop !80

._crit_edge317.i:                                 ; preds = %bb.s
  %i.fw = add nuw nsw i32 %.278.i, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge317.i, %bb.r
  %i.fx = phi i32 [ %i.fw, %._crit_edge317.i ], [ 1, %bb.r ] ; 2 uses
  store i32 %i.fx, ptr %i.fo, align 8, !tbaa !81
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = tail call noalias ptr @av_calloc(i64 noundef %i.fy, i64 noundef 24) #12 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 3 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !82
  %.not255.i = icmp eq ptr %i.fz, null
  br i1 %.not255.i, label %create_vorbis_context.exit.thread, label %.preheader297.i

.preheader297.i:                                  ; preds = %bb.t
  %i.gb = load i32, ptr %i.fo, align 8, !tbaa !81
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.preheader297.i, %._crit_edge320.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge320.i ], [ 0, %.preheader297.i ] ; 4 uses
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !82
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvar.i ; 3 uses
  %i.gf = getelementptr inbounds nuw [28 x i8], ptr @floor_classes, i64 %indvar.i ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !83
  %i.gi = load <2 x i32>, ptr %i.gf, align 4, !tbaa !46
  store <2 x i32> %i.gi, ptr %i.ge, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !85
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !86
  %i.gm = shl nuw i32 1, %i.gh                    ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = tail call ptr @av_malloc_array(i64 noundef %i.gn, i64 noundef 4) #12 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !88
  %.not273.not.i = icmp eq ptr %i.go, null
  br i1 %.not273.not.i, label %create_vorbis_context.exit.thread, label %._crit_edge320.i

._crit_edge320.i:                                 ; preds = %.lr.ph322.i
  %1 = mul nuw nsw i64 %indvar.i, 28
  %2 = getelementptr i8, ptr @floor_classes, i64 %1
  %scevgep.i = getelementptr i8, ptr %2, i64 12
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 1)
  %i.gq = zext nneg i32 %smax.i to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.go, ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i64 %i.gr, i1 false), !tbaa !46
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %i.gs = load i32, ptr %i.fo, align 8, !tbaa !81
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvar.next.i, %i.gt
  br i1 %i.gu, label %.lr.ph322.i, label %._crit_edge323.i, !llvm.loop !89

._crit_edge323.i:                                 ; preds = %._crit_edge320.i, %.preheader297.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store i32 2, ptr %i.gv, align 8, !tbaa !90
  %i.gw = load i32, ptr %i.l, align 4, !tbaa !46
  %i.gx = add nsw i32 %i.gw, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fk, i64 36 ; 2 uses
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !91
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fk, i64 40 ; 3 uses
  store i32 2, ptr %i.gz, align 8, !tbaa !92
  %i.ha = load i32, ptr %i.fk, align 8, !tbaa !75 ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph326.i, label %._crit_edge327.i

.lr.ph326.i:                                      ; preds = %._crit_edge323.i
  %i.hc = load ptr, ptr %i.ga, align 8, !tbaa !82
  %i.hd = load ptr, ptr %i.fn, align 8, !tbaa !79
  %wide.trip.count367.i = zext nneg i32 %i.ha to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph326.i
  %indvars.iv364.i = phi i64 [ 0, %.lr.ph326.i ], [ %indvars.iv.next365.i, %bb.u ] ; 2 uses
  %i.he = phi i32 [ 2, %.lr.ph326.i ], [ %i.hk, %bb.u ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv364.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !46
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [24 x i8], ptr %i.hc, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !93
  %i.hk = add nsw i32 %i.hj, %i.he                ; 3 uses
  store i32 %i.hk, ptr %i.gz, align 8, !tbaa !92
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count367.i
  br i1 %exitcond368.not.i, label %._crit_edge327.loopexit.i, label %bb.u, !llvm.loop !94

._crit_edge327.loopexit.i:                        ; preds = %bb.u
  %i.hl = sext i32 %i.hk to i64
  br label %._crit_edge327.i

._crit_edge327.i:                                 ; preds = %._crit_edge327.loopexit.i, %._crit_edge323.i
  %i.hm = phi i64 [ %i.hl, %._crit_edge327.loopexit.i ], [ 2, %._crit_edge323.i ]
  %i.hn = tail call ptr @av_malloc_array(i64 noundef %i.hm, i64 noundef 8) #12 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !95
  %.not256.i = icmp eq ptr %i.hn, null
  br i1 %.not256.i, label %create_vorbis_context.exit.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge327.i
  store i16 0, ptr %i.hn, align 2, !tbaa !96
  %i.hp = load i32, ptr %i.gy, align 4, !tbaa !91
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !96
  %i.ht = load i32, ptr %i.gz, align 8, !tbaa !92 ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 2
  br i1 %i.hu, label %.lr.ph331.preheader.i, label %._crit_edge332.i

.lr.ph331.preheader.i:                            ; preds = %bb.v
  %wide.trip.count372.i = zext nneg i32 %i.ht to i64
  br label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %.lr.ph331.i, %.lr.ph331.preheader.i
  %indvars.iv369.i = phi i64 [ 2, %.lr.ph331.preheader.i ], [ %indvars.iv.next370.i, %.lr.ph331.i ] ; 3 uses
  %i.hv = getelementptr [4 x i8], ptr @create_vorbis_context.a.3, i64 %indvars.iv369.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 -8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !46
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv369.i
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !96
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %wide.trip.count372.i
  br i1 %exitcond373.not.i, label %._crit_edge332.i, label %.lr.ph331.i, !llvm.loop !98

._crit_edge332.i:                                 ; preds = %.lr.ph331.i, %bb.v
  %i.ia = tail call i32 @ff_vorbis_ready_floor1_list(ptr noundef %0, ptr noundef nonnull %i.hn, i32 noundef %i.ht) #12
  %.not257.i = icmp eq i32 %i.ia, 0
  br i1 %.not257.i, label %bb.w, label %create_vorbis_context.exit.thread

bb.w:                                             ; preds = %._crit_edge332.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 704 ; 4 uses
  store i32 1, ptr %i.ib, align 8, !tbaa !99
  %i.ic = tail call noalias ptr @av_mallocz(i64 noundef 40) #12 ; 7 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !100
  %.not258.i = icmp eq ptr %i.ic, null
  br i1 %.not258.i, label %create_vorbis_context.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <4 x i32> <i32 2, i32 0, i32 1600, i32 32>, ptr %i.ic, align 8, !tbaa !46
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i32 10, ptr %i.ie, align 8, !tbaa !101
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 20
  store i32 15, ptr %i.if, align 4, !tbaa !103
  %i.ig = tail call noalias ptr @av_malloc(i64 noundef 80) #12 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !104
  %.not259.i = icmp eq ptr %i.ig, null
  br i1 %.not259.i, label %create_vorbis_context.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.ig, ptr noundef nonnull align 16 dereferenceable(80) @create_vorbis_context.a.4, i64 80, i1 false)
  %i.ii = tail call fastcc i32 @ready_residue(ptr noundef %i.ic, ptr noundef nonnull %i.e) ; 2 uses
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %create_vorbis_context.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 720 ; 4 uses
  store i32 1, ptr %i.ik, align 8, !tbaa !105
  %i.il = tail call noalias ptr @av_mallocz(i64 noundef 56) #12 ; 13 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 728 ; 2 uses
  store ptr %i.il, ptr %i.im, align 8, !tbaa !106
  %.not260.i = icmp eq ptr %i.il, null
  br i1 %.not260.i, label %create_vorbis_context.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.il, align 8, !tbaa !107
  %i.in = load i32, ptr %i.e, align 8, !tbaa !30
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.io, 2
  %i.iq = tail call noalias ptr @av_malloc(i64 noundef %i.ip) #12 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !109
  %.not261.i = icmp eq ptr %i.iq, null
  br i1 %.not261.i, label %create_vorbis_context.exit.thread, label %.preheader295.i

.preheader295.i:                                  ; preds = %bb.aa
  %i.is = load i32, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph335.preheader.i, label %._crit_edge336.i

.lr.ph335.preheader.i:                            ; preds = %.preheader295.i
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iq, i8 0, i64 %i.iv, i1 false), !tbaa !46
  br label %._crit_edge336.i

._crit_edge336.i:                                 ; preds = %.lr.ph335.preheader.i, %.preheader295.i
  %i.iw = load i32, ptr %i.il, align 8, !tbaa !107
  %i.ix = sext i32 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 2
  %i.iz = tail call noalias ptr @av_malloc(i64 noundef %i.iy) #12
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !110
  %i.jb = load i32, ptr %i.il, align 8, !tbaa !107
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 2
  %i.je = tail call noalias ptr @av_malloc(i64 noundef %i.jd) #12 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !111
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !110 ; 2 uses
  %.not262.i = icmp eq ptr %i.jg, null
  %.not263.i = icmp eq ptr %i.je, null
  %or.cond279.i = select i1 %.not262.i, i1 true, i1 %.not263.i
  br i1 %or.cond279.i, label %create_vorbis_context.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge336.i
  %i.jh = load i32, ptr %i.il, align 8, !tbaa !107
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph338.i, label %._crit_edge339.i

.lr.ph338.i:                                      ; preds = %.preheader.i, %.lr.ph338.i
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i, %.lr.ph338.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv377.i
  store i32 0, ptr %i.jj, align 4, !tbaa !46
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv377.i
  store i32 0, ptr %i.jk, align 4, !tbaa !46
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %i.jl = load i32, ptr %i.il, align 8, !tbaa !107
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv.next378.i, %i.jm
  br i1 %i.jn, label %.lr.ph338.i, label %._crit_edge339.i, !llvm.loop !112

._crit_edge339.i:                                 ; preds = %.lr.ph338.i, %.preheader.i
  %i.jo = load i32, ptr %i.e, align 8, !tbaa !30
  %i.jp = icmp eq i32 %i.jo, 2                    ; 2 uses
  %i.jq = zext i1 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.il, i64 32 ; 3 uses
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !113
  %i.js = select i1 %i.jp, i64 4, i64 0
  %i.jt = tail call noalias ptr @av_malloc(i64 noundef %i.js) #12
  %i.ju = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !114
  %i.jv = load i32, ptr %i.jr, align 8, !tbaa !113
  %i.jw = sext i32 %i.jv to i64
  %i.jx = shl nsw i64 %i.jw, 2
  %i.jy = tail call noalias ptr @av_malloc(i64 noundef %i.jx) #12 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !115
  %i.ka = load ptr, ptr %i.ju, align 8, !tbaa !114 ; 2 uses
  %.not264.i = icmp eq ptr %i.ka, null
  %.not265.i = icmp eq ptr %i.jy, null
end_hunk_0
