Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN8LightGBM4Tree9ShrinkageEd.omp_outlined:bb.a
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.ab = sext i32 %.promoted30 to i64
  %i.ac = sext i32 %i.r to i64
  %scevgep81 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.split.us.us, %.preheader.lr.ph.split.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.split.us.us ], [ %i.ab, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ad = phi i32 [ %i.cv, %.split.us.us ], [ %i.j, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us.us, %.preheader.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.loopexit.us.us ], [ %indvars.iv44, %.preheader.us ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv46 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !118
  %i.ah = load double, ptr %3, align 8, !tbaa !118
  %i.ai = fmul double %i.ag, %i.ah                ; 2 uses
  %i.aj = call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp ole double %i.aj, f0x38AA95A5C0000000
  %i.al = select i1 %i.ak, double 0.000000e+00, double %i.ai
  store double %i.al, ptr %i.af, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv46 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !118
  %i.ao = load double, ptr %3, align 8, !tbaa !118
  %i.ap = fmul double %i.an, %i.ao                ; 2 uses
  %i.aq = call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ole double %i.aq, f0x38AA95A5C0000000
  %i.as = select i1 %i.ar, double 0.000000e+00, double %i.ap
  store double %i.as, ptr %i.am, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv46 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !118
  %i.av = load double, ptr %3, align 8, !tbaa !118
  %i.aw = fmul double %i.au, %i.av                ; 2 uses
  %i.ax = call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, f0x38AA95A5C0000000
  %i.az = select i1 %i.ay, double 0.000000e+00, double %i.aw
  store double %i.az, ptr %i.at, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv46 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196 ; 3 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 7 uses
  %.not34 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not34, label %.loopexit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.c
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 5 uses
  %min.iters.check86 = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check86, label %.lr.ph.us.us.preheader99, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.us.us.preheader
  %bound082 = icmp ult ptr %i.bd, %scevgep81
  %bound183 = icmp ult ptr %3, %i.bc
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %.lr.ph.us.us.preheader99, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck79
  %n.vec88 = and i64 %i.bh, -4                    ; 3 uses
  %i.bi = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1396
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index90 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.bj, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %wide.load92 = load <2 x double>, ptr %i.bk, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %i.bl = fmul <2 x double> %wide.load91, %broadcast.splat94 ; 2 uses
  %i.bm = fmul <2 x double> %wide.load92, %broadcast.splat94 ; 2 uses
  %i.bn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bl)
  %i.bo = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bm)
  %i.bp = fcmp ole <2 x double> %i.bn, splat (double f0x38AA95A5C0000000)
  %i.bq = fcmp ole <2 x double> %i.bo, splat (double f0x38AA95A5C0000000)
  %i.br = select <2 x i1> %i.bp, <2 x double> zeroinitializer, <2 x double> %i.bl
  %i.bs = select <2 x i1> %i.bq, <2 x double> zeroinitializer, <2 x double> %i.bm
  store <2 x double> %i.br, ptr %i.bj, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  store <2 x double> %i.bs, ptr %i.bk, align 8, !tbaa !118, !alias.scope !1397, !noalias !1396
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bt, label %middle.block96, label %vector.body89, !llvm.loop !1388

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.bh, %n.vec88
  br i1 %cmp.n97, label %.loopexit.us.us, label %.lr.ph.us.us.preheader99

.lr.ph.us.us.preheader99:                         ; preds = %vector.memcheck79, %.lr.ph.us.us.preheader, %middle.block96
  %.028.us.us.ph = phi i64 [ 0, %vector.memcheck79 ], [ 0, %.lr.ph.us.us.preheader ], [ %n.vec88, %middle.block96 ] ; 4 uses
  %.neg = or disjoint i64 %.028.us.us.ph, 1
  %i.bu = and i64 %i.bg, 8
  %lcmp.mod.not = icmp eq i64 %i.bu, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader99
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us.ph ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !118
  %i.bx = load double, ptr %3, align 8, !tbaa !118
  %i.by = fmul double %i.bw, %i.bx                ; 2 uses
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ole double %i.bz, f0x38AA95A5C0000000
  %i.cb = select i1 %i.ca, double 0.000000e+00, double %i.by
  store double %i.cb, ptr %i.bv, align 8, !tbaa !118
  %i.cc = or disjoint i64 %.028.us.us.ph, 1
  br label %.lr.ph.us.us.prol.loopexit

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader99
  %.028.us.us.unr = phi i64 [ %.028.us.us.ph, %.lr.ph.us.us.preheader99 ], [ %i.cc, %.lr.ph.us.us.prol ]
  %i.cd = icmp eq i64 %i.bh, %.neg
  br i1 %i.cd, label %.loopexit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.028.us.us = phi i64 [ %i.ct, %.lr.ph.us.us ], [ %.028.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !118
  %i.cg = load double, ptr %3, align 8, !tbaa !118
  %i.ch = fmul double %i.cf, %i.cg                ; 2 uses
  %i.ci = call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ole double %i.ci, f0x38AA95A5C0000000
  %i.ck = select i1 %i.cj, double 0.000000e+00, double %i.ch
  store double %i.ck, ptr %i.ce, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.028.us.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !118
  %i.co = load double, ptr %3, align 8, !tbaa !118
  %i.cp = fmul double %i.cn, %i.co                ; 2 uses
  %i.cq = call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ole double %i.cq, f0x38AA95A5C0000000
  %i.cs = select i1 %i.cr, double 0.000000e+00, double %i.cp
  store double %i.cs, ptr %i.cm, align 8, !tbaa !118
  %i.ct = add nuw i64 %.028.us.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %i.bh
  br i1 %exitcond.not.1, label %.loopexit.us.us, label %.lr.ph.us.us, !llvm.loop !1389

.loopexit.us.us:                                  ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block96, %bb.c
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1
  %.not27.us.us.not = icmp slt i64 %indvars.iv46, %i.ae
  br i1 %.not27.us.us.not, label %bb.c, label %.split.us.us

.split.us.us:                                     ; preds = %.loopexit.us.us
  %indvars.iv.next45 = add i64 %indvars.iv44, %i.ac ; 2 uses
  %indvars50 = trunc i64 %indvars.iv.next45 to i32 ; 2 uses
  %i.cu = add nsw i32 %i.r, %i.ad
  %i.cv = call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.g) ; 3 uses
  %.not.us = icmp slt i32 %i.cv, %indvars50
  br i1 %.not.us, label %._crit_edge, label %.preheader.us

.preheader:                                       ; preds = %.preheader.preheader, %.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.split ] ; 4 uses
  %indvars.iv = phi i64 [ %i.s, %.preheader.preheader ], [ %indvars.iv.next, %.split ] ; 7 uses
  %i.cw = phi i32 [ %i.j, %.preheader.preheader ], [ %i.em, %.split ] ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.cx)
  %i.cz = mul i64 %indvar, %i.t
  %i.da = add i64 %i.cz, %i.s
  %reass.sub = sub i64 %i.cy, %i.da
  %i.db = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.dc = mul i64 %i.v, %indvar                   ; 2 uses
  %i.dd = add i64 %i.w, %i.dc                     ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.n, i64 %i.dd
  %i.de = add i64 %i.u, %i.dc                     ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.n, i64 %i.de ; 2 uses
  %i.df = mul i64 %indvar, %i.t
  %i.dg = add i64 %i.df, %i.s
  %scevgep63 = getelementptr i8, ptr %i.l, i64 %i.dd
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.de ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.cx)
  %i.dh = sub i64 %smax, %i.dg
  %i.di = shl i64 %i.dh, 3                        ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.di ; 2 uses
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.di ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %scevgep, %scevgep68
  %bound170 = icmp ult ptr %3, %scevgep64
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  %bound072 = icmp ult ptr %scevgep65, %scevgep68
  %bound173 = icmp ult ptr %3, %scevgep67
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx, %found.conflict74
  br i1 %conflict.rdx75, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, -2                      ; 3 uses
  %i.dj = add i64 %indvars.iv, %n.vec
  %i.dk = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1398
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.dk, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %indvars.iv, %index             ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dl ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !118, !alias.scope !1399, !noalias !1400
  %i.dn = fmul <2 x double> %wide.load, %broadcast.splat78 ; 2 uses
  %i.do = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dn)
  %i.dp = fcmp ole <2 x double> %i.do, splat (double f0x38AA95A5C0000000)
  %i.dq = select <2 x i1> %i.dp, <2 x double> zeroinitializer, <2 x double> %i.dn
  store <2 x double> %i.dq, ptr %i.dm, align 8, !tbaa !118, !alias.scope !1399, !noalias !1400
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.dr, align 8, !tbaa !118, !alias.scope !1401, !noalias !1398
  %i.ds = fmul <2 x double> %wide.load76, %broadcast.splat78 ; 2 uses
  %i.dt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ds)
  %i.du = fcmp ole <2 x double> %i.dt, splat (double f0x38AA95A5C0000000)
  %i.dv = select <2 x i1> %i.du, <2 x double> zeroinitializer, <2 x double> %i.ds
  store <2 x double> %i.dv, ptr %i.dr, align 8, !tbaa !118, !alias.scope !1401, !noalias !1398
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.dj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %scalar.ph ], [ %indvars.iv40.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv40 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !118
  %i.dz = load double, ptr %3, align 8, !tbaa !118
  %i.ea = fmul double %i.dy, %i.dz                ; 2 uses
  %i.eb = call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fcmp ole double %i.eb, f0x38AA95A5C0000000
  %i.ed = select i1 %i.ec, double 0.000000e+00, double %i.ea
  store double %i.ed, ptr %i.dx, align 8, !tbaa !118
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv40 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !118
  %i.eg = load double, ptr %3, align 8, !tbaa !118
  %i.eh = fmul double %i.ef, %i.eg                ; 2 uses
  %i.ei = call double @llvm.fabs.f64(double %i.eh)
  %i.ej = fcmp ole double %i.ei, f0x38AA95A5C0000000
  %i.ek = select i1 %i.ej, double 0.000000e+00, double %i.eh
  store double %i.ek, ptr %i.ee, align 8, !tbaa !118
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  %.not27.not = icmp slt i64 %indvars.iv40, %i.cx
  br i1 %.not27.not, label %scalar.ph, label %.split, !llvm.loop !1395

.split:                                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.t    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.el = add nsw i32 %i.r, %i.cw
  %i.em = call i32 @llvm.smin.i32(i32 %i.el, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.em, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.split, %.split.us.us
  %.us-phi = phi i32 [ %indvars50, %.split.us.us ], [ %indvars, %.split ]
  %.us-phi33 = phi i32 [ %i.cv, %.split.us.us ], [ %i.em, %.split ]
  store i32 %.us-phi, ptr %i.a, align 4, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %.us-phi33, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4Tree7AddBiasEd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted19 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not20 = icmp sgt i32 %.promoted19, %i.j
  br i1 %.not20, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 4 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.p = sext i32 %.promoted19 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %i.r = shl nsw i64 %i.p, 3                      ; 2 uses
  %i.s = shl nsw i64 %i.q, 3
  %i.t = add nsw i64 %i.r, 8
  %scevgep37 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bk, %.loopexit ] ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.v)
  %i.x = mul i64 %indvar, %i.q
  %i.y = add i64 %i.x, %i.p
  %reass.sub = sub i64 %i.w, %i.y
  %i.z = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.aa = mul i64 %i.s, %indvar                   ; 2 uses
  %i.ab = add i64 %i.t, %i.aa                     ; 2 uses
  %scevgep35 = getelementptr i8, ptr %i.n, i64 %i.ab
  %i.ac = add i64 %i.r, %i.aa                     ; 2 uses
  %scevgep34 = getelementptr i8, ptr %i.n, i64 %i.ac ; 2 uses
  %i.ad = mul i64 %indvar, %i.q
  %i.ae = add i64 %i.ad, %i.p
  %scevgep32 = getelementptr i8, ptr %i.l, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.ac ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.v)
  %i.af = sub i64 %smax, %i.ae
  %i.ag = shl i64 %i.af, 3                        ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.ag ; 2 uses
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.ag ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep36
  %bound1 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %scevgep, %scevgep37
  %bound139 = icmp ult ptr %3, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %scevgep34, %scevgep37
  %bound142 = icmp ult ptr %3, %scevgep36
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -2                       ; 3 uses
  %i.ah = add i64 %indvars.iv, %n.vec
  %i.ai = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1408
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.ai, i64 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add i64 %indvars.iv, %index             ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !118, !alias.scope !1409, !noalias !1410
  %i.al = fadd <2 x double> %wide.load, %broadcast.splat47 ; 2 uses
  %i.am = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.an = fcmp ole <2 x double> %i.am, splat (double f0x38AA95A5C0000000)
  %i.ao = select <2 x i1> %i.an, <2 x double> zeroinitializer, <2 x double> %i.al
  store <2 x double> %i.ao, ptr %i.ak, align 8, !tbaa !118, !alias.scope !1409, !noalias !1410
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj ; 2 uses
  %wide.load45 = load <2 x double>, ptr %i.ap, align 8, !tbaa !118, !alias.scope !1411, !noalias !1408
  %i.aq = fadd <2 x double> %wide.load45, %broadcast.splat47 ; 2 uses
  %i.ar = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aq)
  %i.as = fcmp ole <2 x double> %i.ar, splat (double f0x38AA95A5C0000000)
  %i.at = select <2 x i1> %i.as, <2 x double> zeroinitializer, <2 x double> %i.aq
  store <2 x double> %i.at, ptr %i.ap, align 8, !tbaa !118, !alias.scope !1411, !noalias !1408
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ah, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %scalar.ph ], [ %indvars.iv24.ph, %scalar.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv24 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !118
  %i.ax = load double, ptr %3, align 8, !tbaa !118
  %i.ay = fadd double %i.aw, %i.ax                ; 2 uses
  %i.az = call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp ole double %i.az, f0x38AA95A5C0000000
  %i.bb = select i1 %i.ba, double 0.000000e+00, double %i.ay
  store double %i.bb, ptr %i.av, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv24 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !118
  %i.be = load double, ptr %3, align 8, !tbaa !118
  %i.bf = fadd double %i.bd, %i.be                ; 2 uses
  %i.bg = call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ole double %i.bg, f0x38AA95A5C0000000
  %i.bi = select i1 %i.bh, double 0.000000e+00, double %i.bf
  store double %i.bi, ptr %i.bc, align 8, !tbaa !118
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %.not17.not = icmp slt i64 %indvars.iv24, %i.v
  br i1 %.not17.not, label %scalar.ph, label %.loopexit, !llvm.loop !1407

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.q    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.bj = add nsw i32 %i.o, %i.u
  %i.bk = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.bk, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.bk, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4Tree7AddBiasEd.omp_outlined.190(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.n = sext i32 %.promoted17 to i64             ; 4 uses
  %i.o = sext i32 %i.m to i64                     ; 4 uses
  %i.p = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.q = shl nsw i64 %i.o, 3
  %scevgep32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.l, i64 %i.p
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bb, %.loopexit ] ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.v)
  %i.x = mul i64 %indvar, %i.o
  %i.y = add i64 %i.x, %i.n
  %reass.sub = sub i64 %i.w, %i.y
  %i.z = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.aa = mul i64 %indvar, %i.o
  %i.ab = add i64 %i.aa, %i.n
  %i.ac = mul i64 %i.q, %indvar                   ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.v)
  %i.ad = sub i64 %smax, %i.ab
  %i.ae = shl i64 %i.ad, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.ae
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %3, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec
  %i.ag = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1417
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %wide.load33 = load <2 x double>, ptr %i.aj, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %i.ak = fadd <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.al = fadd <2 x double> %wide.load33, %broadcast.splat ; 2 uses
  %i.am = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ak)
  %i.an = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.ao = fcmp ole <2 x double> %i.am, splat (double f0x38AA95A5C0000000)
  %i.ap = fcmp ole <2 x double> %i.an, splat (double f0x38AA95A5C0000000)
  %i.aq = select <2 x i1> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.ak
  %i.ar = select <2 x i1> %i.ap, <2 x double> zeroinitializer, <2 x double> %i.al
  store <2 x double> %i.aq, ptr %i.ai, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  store <2 x double> %i.ar, ptr %i.aj, align 8, !tbaa !118, !alias.scope !1418, !noalias !1417
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv22 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !118
  %i.av = load double, ptr %3, align 8, !tbaa !118
  %i.aw = fadd double %i.au, %i.av                ; 2 uses
  %i.ax = call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, f0x38AA95A5C0000000
  %i.az = select i1 %i.ay, double 0.000000e+00, double %i.aw
  store double %i.az, ptr %i.at, align 8, !tbaa !118
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %i.v
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !1416

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.o    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ba = add nsw i32 %i.m, %i.u
  %i.bb = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.g) ; 3 uses
end_hunk_0
