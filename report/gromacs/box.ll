inline.NumInlined: 162
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL13low_set_ddboxiiPKN3gmx11BasicVectorIiEEPA3_KfbNS_8ArrayRefIKNS0_IfEEEEPKNS_7MpiCommEP11gmx_ddbox_t:bb.a
  %i.bo = sdiv exact i64 %i.au, 12
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !143
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.d, label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %.sroa.1581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = shufflevector <2 x double> %i.bm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x double> %i.bt, <4 x double> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bu, ptr %8, align 16, !tbaa !144
  %.sroa.10.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bv = shufflevector <4 x double> %i.bn, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.bv, ptr %.sroa.10.0.scevgep.sroa_idx.i, align 16, !tbaa !144
  %i.bw = sitofp i32 %i.bp to double
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store double %i.bw, ptr %i.bx, align 16, !tbaa !144
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIdEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %8, ptr nonnull %i.by)
  %i.bz = load <2 x double>, ptr %8, align 16, !tbaa !144
  %i.ca = load <4 x double>, ptr %.sroa.1581.0..sroa_idx.i, align 16, !tbaa !144
  %i.cb = load double, ptr %i.bx, align 16, !tbaa !144
  %i.cc = call double @llvm.rint.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pre = load i32, ptr %i.c, align 4, !tbaa !128
  br label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit

_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.ce = phi i32 [ %1, %._crit_edge.i ], [ %.pre, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %.043.i = phi i32 [ %i.bp, %._crit_edge.i ], [ %i.cd, %bb.d ], [ %i.bp, %bb.c ]
  %i.cf = phi <2 x double> [ %i.bm, %._crit_edge.i ], [ %i.bz, %bb.d ], [ %i.bm, %bb.c ]
  %i.cg = phi <4 x double> [ %i.bn, %._crit_edge.i ], [ %i.ca, %bb.d ], [ %i.bn, %bb.c ] ; 3 uses
  %i.ch = sitofp i32 %.043.i to double
  %i.ci = fdiv double 1.000000e+00, %i.ch         ; 3 uses
  %i.cj = extractelement <4 x double> %i.cg, i64 0
  %i.ck = fmul double %i.cj, %i.ci                ; 3 uses
  %i.cl = extractelement <4 x double> %i.cg, i64 3
  %i.cm = fmul double %i.cl, %i.ci
  %i.cn = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <2 x double> %i.cf, %i.co          ; 3 uses
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float>
  %i.cr = shufflevector <4 x double> %i.cg, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.cs = fmul <2 x double> %i.cr, %i.co
  %i.ct = fneg <2 x double> %i.cp
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cp, <2 x double> %i.cs) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = call double @sqrt(double noundef %i.cv) #13
  store <2 x float> %i.cq, ptr %i.a, align 8, !tbaa !129
  %i.cx = extractelement <2 x double> %i.cu, i64 1
  %i.cy = call double @sqrt(double noundef %i.cx) #13
  %i.cz = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1
  %i.db = fptrunc <2 x double> %i.da to <2 x float>
  store <2 x float> %i.db, ptr %i.b, align 8, !tbaa !129
  %i.dc = fptrunc double %i.ck to float
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.dc, ptr %i.dd, align 8, !tbaa !129
  %i.de = fneg double %i.ck
  %i.df = call double @llvm.fmuladd.f64(double %i.de, double %i.ck, double %i.cm)
  %i.dg = call double @sqrt(double noundef %i.df) #13
  %i.dh = fptrunc double %i.dg to float
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.dh, ptr %i.di, align 8, !tbaa !129
  %i.dj = icmp slt i32 %i.ce, 3
  br i1 %i.dj, label %.lr.ph12, label %.loopexit

.lr.ph12:                                         ; preds = %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.dm = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  %i.do = sext i32 %i.ce to i64                   ; 5 uses
  br i1 %i.dn, label %.lr.ph12.split.us.preheader, label %.lr.ph12.split

.lr.ph12.split.us.preheader:                      ; preds = %.lr.ph12
  %i.dp = add i32 %i.ce, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 4, %i.dq                    ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.dr, 6
  br i1 %min.iters.check70, label %.lr.ph12.split.us.preheader85, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph12.split.us.preheader
  %i.ds = add i32 %i.ce, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 3, %i.dt                    ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = sub i32 -2, %i.ce
  %i.dx = icmp ult i32 %i.dw, %i.dv
  %i.dy = icmp ugt i64 %i.du, 4294967295
  %i.dz = or i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph12.split.us.preheader85, label %vector.ph71

vector.ph71:                                      ; preds = %vector.scevcheck
  %n.vec72 = and i64 %i.dr, -2                    ; 3 uses
  %i.ea = add nsw i64 %n.vec72, %i.do
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next76, %vector.body73 ] ; 2 uses
  %i.eb = add i64 %index74, %i.do                 ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eb
  %wide.load = load <2 x float>, ptr %i.ec, align 4, !tbaa !129 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.eb
  %wide.load75 = load <2 x float>, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %wide.load75, <2 x float> splat (float f0xBFDDB3D7), <2 x float> %wide.load) ; 2 uses
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %wide.load75, <2 x float> splat (float f0x3FDDB3D7), <2 x float> %wide.load)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.eb
  store <2 x float> %i.ee, ptr %i.eg, align 4, !tbaa !129
  %i.eh = fsub <2 x float> %i.ef, %i.ee
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eb
  store <2 x float> %i.eh, ptr %i.ei, align 4, !tbaa !129
  %index.next76 = add nuw i64 %index74, 2         ; 2 uses
  %i.ej = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.ej, label %middle.block77, label %vector.body73, !llvm.loop !148

middle.block77:                                   ; preds = %vector.body73
  %cmp.n = icmp eq i64 %i.dr, %n.vec72
  br i1 %cmp.n, label %.loopexit, label %.lr.ph12.split.us.preheader85

.lr.ph12.split.us.preheader85:                    ; preds = %vector.scevcheck, %.lr.ph12.split.us.preheader, %middle.block77
  %indvars.iv30.ph = phi i64 [ %i.do, %vector.scevcheck ], [ %i.do, %.lr.ph12.split.us.preheader ], [ %i.ea, %middle.block77 ]
  br label %.lr.ph12.split.us

.lr.ph12.split.us:                                ; preds = %.lr.ph12.split.us.preheader85, %.lr.ph12.split.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph12.split.us ], [ %indvars.iv30.ph, %.lr.ph12.split.us.preheader85 ] ; 5 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv30
  %i.el = load float, ptr %i.ek, align 4, !tbaa !129 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv30
  %i.en = load float, ptr %i.em, align 4, !tbaa !129 ; 2 uses
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float f0xBFDDB3D7, float %i.el) ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.en, float f0x3FDDB3D7, float %i.el)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv30
  store float %i.eo, ptr %i.eq, align 4, !tbaa !129
  %i.er = fsub float %i.ep, %i.eo
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv30
  store float %i.er, ptr %i.es, align 4, !tbaa !129
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.et = and i64 %indvars.iv.next31, 4294967295
  %exitcond34.not = icmp eq i64 %i.et, 3
  br i1 %exitcond34.not, label %.loopexit, label %.lr.ph12.split.us, !llvm.loop !149

.lr.ph12.split:                                   ; preds = %.lr.ph12, %bb.f
  %i.eu = phi ptr [ %i.fe, %bb.f ], [ %i.dm, %.lr.ph12 ] ; 2 uses
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %bb.f ], [ %i.do, %.lr.ph12 ] ; 5 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv26
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !129 ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv26
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !129 ; 2 uses
  %i.ez = call float @llvm.fmuladd.f32(float %i.ey, float f0xBFDDB3D7, float %i.ew) ; 3 uses
  %i.fa = call float @llvm.fmuladd.f32(float %i.ey, float f0x3FDDB3D7, float %i.ew) ; 2 uses
  %.not = icmp eq ptr %i.eu, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.split
  %i.fb = fpext float %i.ez to double
  %i.fc = fpext float %i.fa to double
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.eu, ptr noundef nonnull @.str, double noundef %i.fb, double noundef %i.fc) #13 ; 0 uses
  %.pre35 = load ptr, ptr @debug, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph12.split
  %i.fe = phi ptr [ %.pre35, %bb.e ], [ null, %.lr.ph12.split ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv26
  store float %i.ez, ptr %i.ff, align 4, !tbaa !129
  %i.fg = fsub float %i.fa, %i.ez
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv26
  store float %i.fg, ptr %i.fh, align 4, !tbaa !129
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next27, 4294967295
  %exitcond29.not = icmp eq i64 %i.fi, 3
  br i1 %exitcond29.not, label %.loopexit, label %.lr.ph12.split, !llvm.loop !150

.loopexit:                                        ; preds = %bb.f, %.lr.ph12.split.us, %middle.block77, %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit, %._crit_edge
  %i.fj = load i32, ptr %6, align 4, !tbaa !125   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 164 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.not164.i = icmp eq ptr %2, null
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.fr = sext i32 %i.fj to i64
  %wide.trip.count.i = zext i32 %i.fj to i64      ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 172
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.fw = add nsw i64 %wide.trip.count.i, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.af, %.loopexit
  %indvar.i = phi i64 [ 0, %.loopexit ], [ %indvar.next.i, %bb.af ] ; 21 uses
  %indvars.iv.i = phi i64 [ 1, %.loopexit ], [ %indvars.iv.next.i, %bb.af ] ; 5 uses
  %i.fx = xor i64 %indvar.i, -1
  %i.fy = add nsw i64 %i.fx, %wide.trip.count.i   ; 2 uses
  %i.fz = sub i64 %i.fw, %indvar.i
  %9 = mul nuw nsw i64 %indvar.i, 48
  %10 = getelementptr i8, ptr %6, i64 %9
  %scevgep.i38 = getelementptr i8, ptr %10, i64 68
  %i.ga = shl nuw nsw i64 %indvar.i, 2
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvar.i ; 7 uses
  store i32 0, ptr %i.gb, align 4, !tbaa !122
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 8 uses
  %i.gc = icmp slt i64 %indvar.next.i, %i.fr
  br i1 %i.gc, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvar.i
  br i1 %.not164.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvar.i ; 5 uses
  %xtraiter89 = and i64 %i.fy, 3                  ; 3 uses
  %i.ge = icmp ult i64 %i.fz, 3
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph.i.split.us.new

.lr.ph.i.split.us.new:                            ; preds = %.lr.ph.i.split.us
  %unroll_iter = and i64 %i.fy, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %.lr.ph.i.split.us.new
  %i.gf = phi i32 [ 0, %.lr.ph.i.split.us.new ], [ %i.gu, %bb.p ]
  %indvars.iv180.i.us = phi i64 [ %indvars.iv.i, %.lr.ph.i.split.us.new ], [ %indvars.iv.next181.i.us.3, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.split.us.new ], [ %niter.next.3, %bb.p ]
  %gep = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv180.i.us
  %i.gg = load float, ptr %gep, align 4, !tbaa !129
  %i.gh = fcmp une float %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gi = phi i32 [ %i.gf, %bb.h ], [ 1, %bb.i ]
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv180.i.us
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gk = load float, ptr %gep.1, align 4, !tbaa !129
  %i.gl = fcmp une float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gm = phi i32 [ %i.gi, %bb.j ], [ 1, %bb.k ]
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv180.i.us
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.go = load float, ptr %gep.2, align 4, !tbaa !129
  %i.gp = fcmp une float %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gq = phi i32 [ %i.gm, %bb.l ], [ 1, %bb.m ]
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv180.i.us
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gr, i64 36
  %i.gs = load float, ptr %gep.3, align 4, !tbaa !129
  %i.gt = fcmp une float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gu = phi i32 [ %i.gq, %bb.n ], [ 1, %bb.o ]  ; 3 uses
  %indvars.iv.next181.i.us.3 = add nuw nsw i64 %indvars.iv180.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i39.loopexit.unr-lcssa, label %bb.h, !llvm.loop !152

._crit_edge.i39.loopexit.unr-lcssa:               ; preds = %bb.p
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %._crit_edge.i39, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i39.loopexit.unr-lcssa, %.lr.ph.i.split.us
  %.epil.init = phi i32 [ 0, %.lr.ph.i.split.us ], [ %i.gu, %._crit_edge.i39.loopexit.unr-lcssa ]
  %indvars.iv180.i.us.epil.init = phi i64 [ %indvars.iv.i, %.lr.ph.i.split.us ], [ %indvars.iv.next181.i.us.3, %._crit_edge.i39.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.epil.preheader
  %i.gv = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.gy, %bb.s ]
  %indvars.iv180.i.us.epil = phi i64 [ %indvars.iv180.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next181.i.us.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %gep.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv180.i.us.epil
  %i.gw = load float, ptr %gep.epil, align 4, !tbaa !129
  %i.gx = fcmp une float %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gy = phi i32 [ %i.gv, %bb.q ], [ 1, %bb.r ]  ; 2 uses
  %indvars.iv.next181.i.us.epil = add nuw nsw i64 %indvars.iv180.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %._crit_edge.i39, label %bb.q, !llvm.loop !153

._crit_edge.i39:                                  ; preds = %bb.y, %._crit_edge.i39.loopexit.unr-lcssa, %bb.s
  %.us-phi = phi i32 [ %i.gy, %bb.s ], [ %i.gu, %._crit_edge.i39.loopexit.unr-lcssa ], [ %i.hz, %bb.y ]
  %i.gz = icmp eq i32 %.us-phi, 0
  br i1 %i.gz, label %._crit_edge.thread.i, label %bb.z

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.y
  %i.ha = phi i32 [ %i.hz, %bb.y ], [ 0, %.lr.ph.i ]
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.y ], [ %indvars.iv.i, %.lr.ph.i ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv180.i ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvar.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !129
  %i.he = fcmp une float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.t, label %bb.y

bb.t:                                             ; preds = %.lr.ph.i.split
  store i32 1, ptr %i.gb, align 4, !tbaa !122
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv180.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !122
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.hi = load i32, ptr %i.gd, align 4, !tbaa !122
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.hk = trunc nuw nsw i64 %indvars.iv180.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(59) @.str.1, i8 noundef zeroext 2)
  %i.hl = load i32, ptr %2, align 4, !tbaa !122
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !122
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !122
  %i.hq = add nuw nsw i32 %i.hk, 1
  %i.hr = load float, ptr %i.hb, align 4, !tbaa !129
  %i.hs = fpext float %i.hr to double
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !129
  %i.hv = fpext <2 x float> %i.hu to <2 x double> ; 2 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 0
  %i.hx = extractelement <2 x double> %i.hv, i64 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 140, ptr noundef nonnull @.str.2, i32 noundef %i.hl, i32 noundef %i.hn, i32 noundef %i.hp, i32 noundef %i.hq, double noundef %i.hs, double noundef %i.hw, double noundef %i.hx) #14
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %i.hy

bb.y:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i.split
  %i.hz = phi i32 [ %i.ha, %.lr.ph.i.split ], [ 1, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next181.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i39, label %.lr.ph.i.split, !llvm.loop !152

bb.z:                                             ; preds = %._crit_edge.i39
  %i.ia = getelementptr inbounds nuw [36 x i8], ptr %i.fm, i64 %indvar.i ; 5 uses
  %or.cond.not.i = icmp eq i64 %indvar.i, 2
  br i1 %or.cond.not.i, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = icmp eq i64 %indvar.i, 0
  %i.ic = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvar.next.i ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvar.next.i
  %i.ie = load float, ptr %i.id, align 4, !tbaa !129
  %i.if = fdiv float 1.000000e+00, %i.ie          ; 3 uses
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %indvar.next.i ; 7 uses
  %i.ih = load float, ptr %i.ic, align 4, !tbaa !129
  %i.ii = fmul float %i.if, %i.ih                 ; 3 uses
  store float %i.ii, ptr %i.ig, align 4, !tbaa !129
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !129
  %i.il = fmul float %i.if, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 4 uses
  store float %i.il, ptr %i.im, align 4, !tbaa !129
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.io = load float, ptr %i.in, align 4, !tbaa !129
  %i.ip = fmul float %i.if, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  store float %i.ip, ptr %i.iq, align 4, !tbaa !129
  br i1 %i.ib, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ir = fmul float %i.ii, %i.ii
  %i.is = fadd float %i.ir, 1.000000e+00
  %i.it = load float, ptr %i.fo, align 4, !tbaa !129
  %i.iu = fdiv float 1.000000e+00, %i.it          ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 24 ; 3 uses
  %i.iw = load float, ptr %i.fn, align 4, !tbaa !129
  %i.ix = fmul float %i.iu, %i.iw                 ; 2 uses
  store float %i.ix, ptr %i.iv, align 4, !tbaa !129
  %i.iy = load float, ptr %i.fp, align 4, !tbaa !129
  %i.iz = fmul float %i.iu, %i.iy                 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ia, i64 28 ; 2 uses
  store float %i.iz, ptr %i.ja, align 4, !tbaa !129
  %i.jb = load float, ptr %i.fo, align 4, !tbaa !129
  %i.jc = fmul float %i.iu, %i.jb                 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  store float %i.jc, ptr %i.jd, align 4, !tbaa !129
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvar.next.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !129
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvar.next.i
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !129
  %i.ji = fneg float %i.jf
  %i.jj = fdiv float %i.ji, %i.jh                 ; 3 uses
  %i.jk = load float, ptr %i.ig, align 4, !tbaa !129
  %i.jl = call float @llvm.fmuladd.f32(float %i.jj, float %i.jk, float %i.ix) ; 5 uses
  store float %i.jl, ptr %i.iv, align 4, !tbaa !129
  %i.jm = load float, ptr %i.im, align 4, !tbaa !129
  %i.jn = call float @llvm.fmuladd.f32(float %i.jj, float %i.jm, float %i.iz) ; 3 uses
  store float %i.jn, ptr %i.ja, align 4, !tbaa !129
  %i.jo = load float, ptr %i.iq, align 4, !tbaa !129
  %i.jp = call float @llvm.fmuladd.f32(float %i.jj, float %i.jo, float %i.jc) ; 3 uses
  store float %i.jp, ptr %i.jd, align 4, !tbaa !129
  %i.jq = fmul float %i.jl, %i.jl
  %i.jr = fadd float %i.is, %i.jq
  %i.js = load float, ptr %i.im, align 4, !tbaa !129
  %i.jt = load float, ptr %i.iq, align 4, !tbaa !129 ; 2 uses
  %i.ju = fneg float %i.jn
  %i.jv = fmul float %i.jt, %i.ju
  %i.jw = call float @llvm.fmuladd.f32(float %i.js, float %i.jp, float %i.jv)
  store float %i.jw, ptr %i.fk, align 4, !tbaa !129
  %i.jx = load float, ptr %i.ig, align 4, !tbaa !129 ; 2 uses
  %i.jy = fneg float %i.jp
  %i.jz = fmul float %i.jx, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jt, float %i.jl, float %i.jz)
  store float %i.ka, ptr %i.fs, align 4, !tbaa !129
  %i.kb = load float, ptr %i.im, align 4, !tbaa !129
  %i.kc = fneg float %i.jl
  %i.kd = fmul float %i.kb, %i.kc
  %i.ke = call float @llvm.fmuladd.f32(float %i.jx, float %i.jn, float %i.kd)
  store float %i.ke, ptr %i.ft, align 4, !tbaa !129
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i38, i8 0, i64 %i.ga, i1 false), !tbaa !129
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !129 ; 3 uses
  %i.kh = fmul float %i.kg, %i.kg
  %i.ki = fadd float %i.kh, 1.000000e+00
  %i.kj = load float, ptr %i.iq, align 4, !tbaa !129
  %i.kk = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.kj, i64 1
  store <2 x float> %i.kk, ptr %i.fu, align 4, !tbaa !129
  %i.kl = fneg float %i.kg
  store float %i.kl, ptr %i.fv, align 4, !tbaa !129
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0156.i = phi float [ %i.jr, %bb.ab ], [ %i.ki, %bb.ac ] ; 2 uses
  %i.km = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %.not162.i = icmp eq ptr %i.km, null
  br i1 %.not162.i, label %.loopexit.i, label %.lr.ph174.preheader.i

.lr.ph174.preheader.i:                            ; preds = %bb.ad
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvar.i ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !129
  %i.kp = fpext float %i.ko to double
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kr = load <2 x float>, ptr %i.kq, align 4, !tbaa !129
  %i.ks = fpext <2 x float> %i.kr to <2 x double> ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvar.i to i32
  %i.ku = extractelement <2 x double> %i.ks, i64 0
  %i.kv = extractelement <2 x double> %i.ks, i64 1
  %i.kw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.3, i32 noundef %i.kt, double noundef %i.kp, double noundef %i.ku, double noundef %i.kv) #13 ; 0 uses
  br label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.lr.ph174.i, %.lr.ph174.preheader.i
  %indvars.iv190.i = phi i64 [ %indvars.iv.i, %.lr.ph174.preheader.i ], [ %indvars.iv.next191.i, %.lr.ph174.i ] ; 3 uses
  %i.kx = load ptr, ptr @debug, align 8, !tbaa !146
  %i.ky = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %indvars.iv190.i ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !129
  %i.la = fpext float %i.kz to double
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lc = load <2 x float>, ptr %i.lb, align 4, !tbaa !129
  %i.ld = fpext <2 x float> %i.lc to <2 x double> ; 2 uses
  %i.le = trunc nuw nsw i64 %indvars.iv190.i to i32
  %i.lf = extractelement <2 x double> %i.ld, i64 0
  %i.lg = extractelement <2 x double> %i.ld, i64 1
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.4, i32 noundef %i.le, double noundef %i.la, double noundef %i.lf, double noundef %i.lg) #13 ; 0 uses
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next191.i, 3
  br i1 %exitcond193.not.i, label %.loopexit.i, label %.lr.ph174.i, !llvm.loop !154

.loopexit.i:                                      ; preds = %.lr.ph174.i, %bb.ad, %bb.z
  %.1.i = phi float [ 1.000000e+00, %bb.z ], [ %.0156.i, %bb.ad ], [ %.0156.i, %.lr.ph174.i ]
  %i.li = call noundef float @sqrtf(float noundef %.1.i) #13
  %i.lj = fdiv float 1.000000e+00, %i.li          ; 3 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvar.i
  store float %i.lj, ptr %i.lk, align 4, !tbaa !129
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %i.fk, i64 %indvar.i ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !129 ; 3 uses
  %i.lo = load <2 x float>, ptr %i.ll, align 4, !tbaa !129 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.lo, %i.lo
  %i.lp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.lq = extractelement <2 x float> %i.lo, i64 0 ; 2 uses
  %i.lr = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.lp)
  %i.ls = call noundef float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lr)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ls)
  %i.lt = fdiv float %i.lj, %sqrt.i.i             ; 2 uses
  %i.lu = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lo, %i.lv
  store <2 x float> %i.lw, ptr %i.ll, align 4, !tbaa !129
  %i.lx = fmul float %i.ln, %i.lt
  store float %i.lx, ptr %i.lm, align 4, !tbaa !129
  %i.ly = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %.not163.i = icmp eq ptr %i.ly, null
  br i1 %.not163.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ma = fpext float %i.lj to double
  %i.mb = trunc nuw nsw i64 %indvar.i to i32      ; 2 uses
  %i.mc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ly, ptr noundef nonnull @.str.5, i32 noundef %i.mb, double noundef %i.ma) #13 ; 0 uses
  %i.md = load ptr, ptr @debug, align 8, !tbaa !146
  %i.me = load float, ptr %i.ll, align 4, !tbaa !129
  %i.mf = fpext float %i.me to double
  %i.mg = load <2 x float>, ptr %i.lz, align 4, !tbaa !129
  %i.mh = fpext <2 x float> %i.mg to <2 x double> ; 2 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 0
  %i.mj = extractelement <2 x double> %i.mh, i64 1
  %i.mk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.md, ptr noundef nonnull @.str.6, i32 noundef %i.mb, double noundef %i.mf, double noundef %i.mi, double noundef %i.mj) #13 ; 0 uses
  br label %bb.af

._crit_edge.thread.i:                             ; preds = %._crit_edge.i39, %bb.g
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvar.i
  store float 1.000000e+00, ptr %i.ml, align 4, !tbaa !129
  %i.mm = getelementptr inbounds nuw [36 x i8], ptr %i.fm, i64 %indvar.i ; 2 uses
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.mm, align 4, !tbaa !129
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store float 1.000000e+00, ptr %i.mn, align 4, !tbaa !129
  %i.mo = getelementptr inbounds nuw [12 x i8], ptr %i.fk, i64 %indvar.i ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.mo, align 4, !tbaa !129
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store float 0.000000e+00, ptr %i.mp, align 4, !tbaa !129
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvar.i
  store float 1.000000e+00, ptr %i.mq, align 4, !tbaa !129
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread.i, %bb.ae, %.loopexit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond200.not.i = icmp eq i64 %indvar.next.i, 3
  br i1 %exitcond200.not.i, label %_ZL12set_tric_dirPKN3gmx11BasicVectorIiEEP11gmx_ddbox_tPA3_Kf.exit, label %bb.g, !llvm.loop !155

_ZL12set_tric_dirPKN3gmx11BasicVectorIiEEP11gmx_ddbox_tPA3_Kf.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z8dd_bcastPK12gmx_domdec_tiPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #3

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(59) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.b, ptr %i.a, align 8, !tbaa !159
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !160
  %i.f = load i64, ptr %i.a, align 8, !tbaa !159
  store i64 %i.f, ptr %i.c, align 8, !tbaa !162
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !162
  store i8 %i.h, ptr %i.g, align 1, !tbaa !162
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !163
  %i.k = load ptr, ptr %0, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
end_hunk_0
