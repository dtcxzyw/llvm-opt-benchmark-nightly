Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/LayoutResults?download=true
inline.NumInlined: 50
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK8facebook4yoga13LayoutResultseqES1_:bb.a
  %or.cond.i.i23.3 = fcmp ord float %i.dk, %i.dm
  br i1 %or.cond.i.i23.3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = fcmp uno float %i.dk, 0.000000e+00
  %i.do = fcmp uno float %i.dm, 0.000000e+00
  %spec.select.i.i24.3 = and i1 %i.dn, %i.do
  br label %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27

bb.ak:                                            ; preds = %bb.ai
  %i.dp = fsub float %i.dk, %i.dm
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = fcmp olt float %i.dq, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27

_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27: ; preds = %bb.aj, %bb.ak
  %.0.i.i26.lcssa = phi i1 [ %spec.select.i.i24.3, %bb.aj ], [ %i.dr, %bb.ak ]
  br i1 %.0.i.i26.lcssa, label %bb.al, label %._crit_edge

bb.al:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17 ; 3 uses
  %i.dv = load float, ptr %i.ds, align 8, !tbaa !17 ; 3 uses
  %or.cond.i.i29 = fcmp ord float %i.du, %i.dv
  br i1 %or.cond.i.i29, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dw = fsub float %i.du, %i.dv
  %i.dx = tail call noundef float @llvm.fabs.f32(float %i.dw)
  %i.dy = fcmp olt float %i.dx, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31

bb.an:                                            ; preds = %bb.al
  %i.dz = fcmp uno float %i.du, 0.000000e+00
  %i.ea = fcmp uno float %i.dv, 0.000000e+00
  %spec.select.i.i30 = and i1 %i.dz, %i.ea
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31

_ZN8facebook4yoga13inexactEqualsEff.exit.i31:     ; preds = %bb.an, %bb.am
  %.0.i.i32 = phi i1 [ %i.dy, %bb.am ], [ %spec.select.i.i30, %bb.an ]
  br i1 %.0.i.i32, label %bb.ao, label %._crit_edge

bb.ao:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit.i31
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !17 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !17 ; 3 uses
  %or.cond.i.i29.1 = fcmp ord float %i.ec, %i.ee
  br i1 %or.cond.i.i29.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = fcmp uno float %i.ec, 0.000000e+00
  %i.eg = fcmp uno float %i.ee, 0.000000e+00
  %spec.select.i.i30.1 = and i1 %i.ef, %i.eg
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1

bb.aq:                                            ; preds = %bb.ao
  %i.eh = fsub float %i.ec, %i.ee
  %i.ei = tail call noundef float @llvm.fabs.f32(float %i.eh)
  %i.ej = fcmp olt float %i.ei, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1

_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1:   ; preds = %bb.aq, %bb.ap
  %.0.i.i32.1 = phi i1 [ %i.ej, %bb.aq ], [ %spec.select.i.i30.1, %bb.ap ]
  br i1 %.0.i.i32.1, label %bb.ar, label %._crit_edge

bb.ar:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.el = load float, ptr %i.ek, align 4, !tbaa !17 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.en = load float, ptr %i.em, align 8, !tbaa !17 ; 3 uses
  %or.cond.i.i29.2 = fcmp ord float %i.el, %i.en
  br i1 %or.cond.i.i29.2, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = fcmp uno float %i.el, 0.000000e+00
  %i.ep = fcmp uno float %i.en, 0.000000e+00
  %spec.select.i.i30.2 = and i1 %i.eo, %i.ep
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2

bb.at:                                            ; preds = %bb.ar
  %i.eq = fsub float %i.el, %i.en
  %i.er = tail call noundef float @llvm.fabs.f32(float %i.eq)
  %i.es = fcmp olt float %i.er, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2

_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2:   ; preds = %bb.at, %bb.as
  %.0.i.i32.2 = phi i1 [ %i.es, %bb.at ], [ %spec.select.i.i30.2, %bb.as ]
  br i1 %.0.i.i32.2, label %bb.au, label %._crit_edge

bb.au:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.eu = load float, ptr %i.et, align 4, !tbaa !17 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !17 ; 3 uses
  %or.cond.i.i29.3 = fcmp ord float %i.eu, %i.ew
  br i1 %or.cond.i.i29.3, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = fcmp uno float %i.eu, 0.000000e+00
  %i.ey = fcmp uno float %i.ew, 0.000000e+00
  %spec.select.i.i30.3 = and i1 %i.ex, %i.ey
  br label %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33

bb.aw:                                            ; preds = %bb.au
  %i.ez = fsub float %i.eu, %i.ew
  %i.fa = tail call noundef float @llvm.fabs.f32(float %i.ez)
  %i.fb = fcmp olt float %i.fa, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33

_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33: ; preds = %bb.av, %bb.aw
  %.0.i.i32.lcssa = phi i1 [ %spec.select.i.i30.3, %bb.av ], [ %i.fb, %bb.aw ]
  br i1 %.0.i.i32.lcssa, label %bb.ax, label %._crit_edge

bb.ax:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.fd = load i8, ptr %i.fc, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = xor i8 %i.ff, %i.fd
  %i.fh = and i8 %i.fg, 7
  %or.cond75 = icmp eq i8 %i.fh, 0
  br i1 %or.cond75, label %bb.ay, label %._crit_edge

bb.ay:                                            ; preds = %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !25
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !25
  %i.fm = icmp eq i8 %i.fj, %i.fl
  br i1 %i.fm, label %bb.az, label %._crit_edge

bb.az:                                            ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !26
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ba, label %._crit_edge

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !27
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.bb, label %._crit_edge

bb.bb:                                            ; preds = %bb.ba
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %i.fy, i64 24, i1 false), !tbaa.struct !29
  %i.fz = tail call noundef zeroext i1 @_ZNK8facebook4yoga17CachedMeasurementeqES1_(ptr noundef nonnull align 4 dereferenceable(24) %i.fx, ptr noundef nonnull byval(%"struct.facebook::yoga::CachedMeasurement") align 8 %2)
  br i1 %i.fz, label %bb.bc, label %._crit_edge

bb.bc:                                            ; preds = %bb.bb
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.04.0.copyload = load float, ptr %i.ga, align 4, !tbaa !17 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload = load float, ptr %i.gb, align 4, !tbaa !17 ; 2 uses
  %i.gc = fcmp oeq float %.sroa.04.0.copyload, %.sroa.0.0.copyload
  %i.gd = fcmp uno float %.sroa.04.0.copyload, 0.000000e+00
  %i.ge = fcmp uno float %.sroa.0.0.copyload, 0.000000e+00
  %spec.select.i = and i1 %i.gd, %i.ge
  %i.gf = or i1 %i.gc, %spec.select.i
  br i1 %i.gf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bc
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %bb.bd

._crit_edge.loopexit:                             ; preds = %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit
  %i.gi = zext i1 %.3.shrunk.i to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit.i31, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.1, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.2, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.1, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.2, %_ZN8facebook4yoga13inexactEqualsEff.exit.i, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.1, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.2, %.split, %_ZN8facebook4yoga13inexactEqualsEff.exit.i14.peel, %.split74, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit, %_ZN8facebook4yoga13inexactEqualsILm2EfEEbRKSt5arrayIT0_XT_EES6_.exit, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit21, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %._crit_edge.loopexit, %bb.bc
  %.010.lcssa = phi i8 [ 0, %bb.bc ], [ %i.gi, %._crit_edge.loopexit ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %.split ], [ 0, %bb.ax ], [ 0, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33 ], [ 0, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27 ], [ 0, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit21 ], [ 0, %_ZN8facebook4yoga13inexactEqualsILm2EfEEbRKSt5arrayIT0_XT_EES6_.exit ], [ 0, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit ], [ 0, %.split74 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i14.peel ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.2 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.1 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.2 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.1 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.2 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.1 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1 ], [ 0, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31 ]
  %.lcssa = phi i1 [ false, %bb.bc ], [ %.3.shrunk.i, %._crit_edge.loopexit ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %.split ], [ false, %bb.ax ], [ false, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit33 ], [ false, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit27 ], [ false, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit21 ], [ false, %_ZN8facebook4yoga13inexactEqualsILm2EfEEbRKSt5arrayIT0_XT_EES6_.exit ], [ false, %_ZN8facebook4yoga13inexactEqualsILm4EfEEbRKSt5arrayIT0_XT_EES6_.exit ], [ false, %.split74 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i14.peel ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.2 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i.1 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.2 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i19.1 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.2 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i25.1 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.2 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31.1 ], [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit.i31 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !17 ; 2 uses
  %i.gl = fcmp uno float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.bg, label %bb.bh

bb.bd:                                            ; preds = %.lr.ph, %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %indvars.iv ; 5 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %indvars.iv ; 5 uses
  %.sroa.035.0.copyload = load float, ptr %i.gn, align 4, !tbaa !17 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.sroa.536.0.copyload = load float, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %.sroa.637.0.copyload = load float, ptr %.sroa.637.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load <2 x i32>, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !28
  %i.gq = load <2 x i32>, ptr %i.go, align 4
  %i.gr = icmp eq <2 x i32> %i.gq, %i.gp
  %3 = freeze <2 x i1> %i.gr
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, -1                          ; 3 uses
  %i.gs = load float, ptr %i.gm, align 4, !tbaa !12 ; 2 uses
  %i.gt = fcmp uno float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gu = fcmp ord float %.sroa.035.0.copyload, 0.000000e+00 ; 2 uses
  %brmerge.not.i = and i1 %i.gu, %5
  %not..i = xor i1 %i.gu, true
  %narrow.i = and i1 %5, %not..i
  br i1 %brmerge.not.i, label %._crit_edge.i, label %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit

bb.bf:                                            ; preds = %bb.bd
  br i1 %5, label %._crit_edge.i, label %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit

._crit_edge.i:                                    ; preds = %bb.bf, %bb.be
  %i.gv = fcmp oeq float %i.gs, %.sroa.035.0.copyload
  br label %_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit

_ZNK8facebook4yoga17CachedMeasurementeqES1_.exit: ; preds = %bb.be, %bb.bf, %._crit_edge.i
  %.0.shrunk.i = phi i1 [ %narrow.i, %bb.be ], [ false, %bb.bf ], [ %i.gv, %._crit_edge.i ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !13 ; 2 uses
  %i.gy = fcmp uno float %i.gx, 0.000000e+00
  %i.gz = fcmp uno float %.sroa.2.0.copyload, 0.000000e+00
  %or.cond.i = select i1 %i.gy, i1 %i.gz, i1 false
  %i.ha = fcmp oeq float %i.gx, %.sroa.2.0.copyload
  %.0.shrunk.mux.i = select i1 %.0.shrunk.i, i1 %i.ha, i1 false
  %.1.shrunk.i = select i1 %or.cond.i, i1 %.0.shrunk.i, i1 %.0.shrunk.mux.i ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !14 ; 2 uses
  %i.hd = fcmp uno float %i.hc, 0.000000e+00
  %i.he = fcmp uno float %.sroa.536.0.copyload, 0.000000e+00
  %or.cond9.i = select i1 %i.hd, i1 %i.he, i1 false
  %i.hf = fcmp oeq float %i.hc, %.sroa.536.0.copyload
  %.1.shrunk.mux.i = select i1 %.1.shrunk.i, i1 %i.hf, i1 false
  %.2.shrunk.i = select i1 %or.cond9.i, i1 %.1.shrunk.i, i1 %.1.shrunk.mux.i ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !15 ; 2 uses
  %i.hi = fcmp uno float %i.hh, 0.000000e+00
  %i.hj = fcmp uno float %.sroa.637.0.copyload, 0.000000e+00
  %or.cond12.i = select i1 %i.hi, i1 %i.hj, i1 false
  %i.hk = fcmp oeq float %i.hh, %.sroa.637.0.copyload
  %.2.shrunk.mux.i = select i1 %.2.shrunk.i, i1 %i.hk, i1 false
  %.3.shrunk.i = select i1 %or.cond12.i, i1 %.2.shrunk.i, i1 %.2.shrunk.mux.i ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hl = icmp samesign ult i64 %indvars.iv, 7
  %i.hm = select i1 %i.hl, i1 %.3.shrunk.i, i1 false
  br i1 %i.hm, label %bb.bd, label %._crit_edge.loopexit, !llvm.loop !16

bb.bg:                                            ; preds = %._crit_edge
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !17 ; 2 uses
  %i.hp = fcmp ord float %i.ho, 0.000000e+00      ; 2 uses
  %brmerge.not = select i1 %i.hp, i1 %.lcssa, i1 false
  %.010.mux = select i1 %i.hp, i8 0, i8 %.010.lcssa
  br i1 %brmerge.not, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %._crit_edge
  br i1 %.lcssa, label %._crit_edge50, label %bb.bj

._crit_edge50:                                    ; preds = %bb.bh
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.pre52 = load float, ptr %.phi.trans.insert51, align 8, !tbaa !17
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge50, %bb.bg
  %i.hq = phi float [ %.pre52, %._crit_edge50 ], [ %i.ho, %bb.bg ]
  %i.hr = fcmp oeq float %i.gk, %i.hq
  %i.hs = zext i1 %i.hr to i8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.1 = phi i8 [ %.010.mux, %bb.bg ], [ 0, %bb.bh ], [ %i.hs, %bb.bi ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !17 ; 2 uses
  %i.hv = fcmp uno float %i.hu, 0.000000e+00
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.hx = load float, ptr %i.hw, align 4          ; 2 uses
  %i.hy = fcmp uno float %i.hx, 0.000000e+00
  %or.cond = select i1 %i.hv, i1 %i.hy, i1 false
  br i1 %or.cond, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hz = trunc nuw i8 %.1 to i1
  br i1 %i.hz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ia = fcmp oeq float %i.hu, %i.hx
  %i.ib = zext i1 %i.ia to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
  %.2 = phi i8 [ %.1, %bb.bj ], [ 0, %bb.bk ], [ %i.ib, %bb.bl ]
  %i.ic = trunc nuw i8 %.2 to i1
  ret i1 %i.ic
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK8facebook4yoga17CachedMeasurementeqES1_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef byval(%"struct.facebook::yoga::CachedMeasurement") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 4
  %i.d = load <2 x i32>, ptr %i.b, align 8
  %i.e = icmp eq <2 x i32> %i.c, %i.d
  %2 = freeze <2 x i1> %i.e
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1                          ; 3 uses
  %i.f = load float, ptr %0, align 4, !tbaa !12   ; 2 uses
  %i.g = fcmp uno float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %1, align 8, !tbaa !12   ; 2 uses
  %i.i = fcmp ord float %i.h, 0.000000e+00        ; 2 uses
  %brmerge.not = and i1 %i.i, %4
  %not. = xor i1 %i.i, true
  %narrow = and i1 %4, %not.
  br i1 %brmerge.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.pre = load float, ptr %1, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.j = phi float [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %i.k = fcmp oeq float %i.f, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0.shrunk = phi i1 [ %narrow, %bb.b ], [ false, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !13 ; 2 uses
  %i.n = fcmp uno float %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %i.q = fcmp uno float %i.p, 0.000000e+00
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  %i.r = fcmp oeq float %i.m, %i.p
  %.0.shrunk.mux = select i1 %.0.shrunk, i1 %i.r, i1 false
  %.1.shrunk = select i1 %or.cond, i1 %.0.shrunk, i1 %.0.shrunk.mux ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !14 ; 2 uses
  %i.u = fcmp uno float %i.t, 0.000000e+00
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 8            ; 2 uses
  %i.x = fcmp uno float %i.w, 0.000000e+00
  %or.cond9 = select i1 %i.u, i1 %i.x, i1 false
  %i.y = fcmp oeq float %i.t, %i.w
  %.1.shrunk.mux = select i1 %.1.shrunk, i1 %i.y, i1 false
  %.2.shrunk = select i1 %or.cond9, i1 %.1.shrunk, i1 %.1.shrunk.mux ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.ab = fcmp uno float %i.aa, 0.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load float, ptr %i.ac, align 4          ; 2 uses
  %i.ae = fcmp uno float %i.ad, 0.000000e+00
  %or.cond12 = select i1 %i.ab, i1 %i.ae, i1 false
  %i.af = fcmp oeq float %i.aa, %i.ad
  %.2.shrunk.mux = select i1 %.2.shrunk, i1 %i.af, i1 false
  %.3.shrunk = select i1 %or.cond12, i1 %.2.shrunk, i1 %.2.shrunk.mux
  ret i1 %.3.shrunk
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"_ZTSN8facebook4yoga10SizingModeE", !5, i64 0}
!11 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 20}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 4}
!14 = !{!11, !9, i64 16}
!15 = !{!11, !9, i64 20}
!16 = distinct !{!16, !30}
!17 = !{!9, !9, i64 0}
!18 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !9, i64 0}
!19 = !{!"_ZTSN8facebook4yoga9DirectionE", !5, i64 0}
!20 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !5, i64 0}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSSt5arrayIfLm2EE", !5, i64 0}
!23 = !{!"_ZTSSt5arrayIfLm4EE", !5, i64 0}
!24 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !6, i64 0, !18, i64 4, !18, i64 8, !6, i64 12, !6, i64 16, !19, i64 20, !6, i64 24, !20, i64 28, !11, i64 220, !19, i64 244, !21, i64 244, !22, i64 248, !22, i64 256, !22, i64 264, !23, i64 272, !23, i64 288, !23, i64 304, !23, i64 320}
!25 = !{!24, !19, i64 20}
!26 = !{!24, !6, i64 16}
!27 = !{!24, !6, i64 24}
!28 = !{!10, !10, i64 0}
!29 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !17, i64 20, i64 4, !17}
!30 = !{!"llvm.loop.mustprogress"}
end_hunk_0
