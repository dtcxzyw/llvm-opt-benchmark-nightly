inline.NumInlined: 1048
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6casadi9LinsolLdl5solveEPvPKdPdxb:bb.a
  %.unr = phi double [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.cc, %.prol.loopexit.unr-lcssa ]
  %.03643.i.i.unr = phi i64 [ %i.bo, %.lr.ph.i.i ], [ %i.cd, %.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.br, %.neg
  br i1 %i.ce, label %.loopexit40.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %i.cf = phi double [ %i.cw, %.lr.ph.i.i.new ], [ %.unr, %.prol.loopexit ]
  %.03643.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.new ], [ %.03643.i.i.unr, %.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.03643.i.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !93
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.03643.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !95
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !93
  %i.cm = fneg double %i.ch
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.cf) ; 2 uses
  store double %i.cn, ptr %i.bt, align 8, !tbaa !93
  %i.co = add nsw i64 %.03643.i.i, 1              ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !93
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.co
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !95
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !93
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %i.cn) ; 2 uses
  store double %i.cw, ptr %i.bt, align 8, !tbaa !93
  %i.cx = add nsw i64 %.03643.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cx, %i.br
  br i1 %exitcond.not.i.i.1, label %.loopexit40.i.i, label %.lr.ph.i.i.new, !llvm.loop !146

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i
  %.139.i = phi i64 [ %i.dv, %.lr.ph40.i ], [ %.139.i.unr, %.lr.ph40.i.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.139.i
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !93
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i8, i64 %.139.i ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !93
  %i.dc = fdiv double %i.db, %i.cz
  store double %i.dc, ptr %i.da, align 8, !tbaa !93
  %i.dd = add nuw nsw i64 %.139.i, 1              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !93
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i8, i64 %i.dd ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !93
  %i.di = fdiv double %i.dh, %i.df
  store double %i.di, ptr %i.dg, align 8, !tbaa !93
  %i.dj = add nuw nsw i64 %.139.i, 2              ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i8, i64 %i.dj ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !93
  %i.do = fdiv double %i.dn, %i.dl
  store double %i.do, ptr %i.dm, align 8, !tbaa !93
  %i.dp = add nuw nsw i64 %.139.i, 3              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !93
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i8, i64 %i.dp ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !93
  %i.du = fdiv double %i.dt, %i.dr
  store double %i.du, ptr %i.ds, align 8, !tbaa !93
  %i.dv = add nuw nsw i64 %.139.i, 4              ; 2 uses
  %exitcond48.not.i.3 = icmp eq i64 %i.dv, %i.o
  br i1 %exitcond48.not.i.3, label %.lr.ph52.i.i.preheader, label %.lr.ph40.i, !llvm.loop !147

.lr.ph52.i.i.preheader:                           ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %middle.block
  br label %.lr.ph52.i.i

.loopexit.i.i:                                    ; preds = %.prol.loopexit25, %.lr.ph48.i.i.new, %.lr.ph52.i.i
  %i.dw = icmp samesign ugt i64 %.1.in50.i.i, 1
  br i1 %i.dw, label %.lr.ph52.i.i, label %.lr.ph43.i.preheader, !llvm.loop !148

.lr.ph43.i.preheader:                             ; preds = %.loopexit.i.i
  br i1 %i.w, label %.lr.ph43.i.epil.preheader, label %.lr.ph43.i

.lr.ph52.i.i:                                     ; preds = %.lr.ph52.i.i.preheader, %.loopexit.i.i
  %i.dx = phi i64 [ %i.dz, %.loopexit.i.i ], [ %.pre55.i.i, %.lr.ph52.i.i.preheader ] ; 6 uses
  %.1.in50.i.i = phi i64 [ %.151.i.i, %.loopexit.i.i ], [ %i.o, %.lr.ph52.i.i.preheader ] ; 2 uses
  %.151.i.i = add nsw i64 %.1.in50.i.i, -1        ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.151.i.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !95 ; 5 uses
  %.not38.not46.i.i = icmp sgt i64 %i.dx, %i.dz
  br i1 %.not38.not46.i.i, label %.lr.ph48.i.i, label %.loopexit.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph52.i.i
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.151.i.i ; 3 uses
  %i.eb = sub i64 %i.dx, %i.dz
  %.neg35 = add i64 %i.dz, 1
  %xtraiter26 = and i64 %i.eb, 1
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.prol.loopexit25, label %.prol.loopexit25.unr-lcssa

.prol.loopexit25.unr-lcssa:                       ; preds = %.lr.ph48.i.i
  %.137.i.i.prol = add nsw i64 %i.dx, -1          ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.137.i.i.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !93
  %i.ee = load double, ptr %i.ea, align 8, !tbaa !93
  %i.ef = getelementptr [8 x i8], ptr %i.s, i64 %i.dx
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !95
  %i.eh = getelementptr inbounds [8 x i8], ptr %spec.select.i8, i64 %i.eg ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !93
  %i.ej = fneg double %i.ed
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ee, double %i.ei)
  store double %i.ek, ptr %i.eh, align 8, !tbaa !93
  br label %.prol.loopexit25

.prol.loopexit25:                                 ; preds = %.prol.loopexit25.unr-lcssa, %.lr.ph48.i.i
  %.137.in47.i.i.unr = phi i64 [ %i.dx, %.lr.ph48.i.i ], [ %.137.i.i.prol, %.prol.loopexit25.unr-lcssa ]
  %i.el = icmp eq i64 %i.dx, %.neg35
  br i1 %i.el, label %.loopexit.i.i, label %.lr.ph48.i.i.new

.lr.ph48.i.i.new:                                 ; preds = %.prol.loopexit25, %.lr.ph48.i.i.new
  %.137.in47.i.i = phi i64 [ %.137.i.i.1, %.lr.ph48.i.i.new ], [ %.137.in47.i.i.unr, %.prol.loopexit25 ] ; 3 uses
  %.137.i.i = add nsw i64 %.137.in47.i.i, -1      ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.137.i.i
  %i.en = load double, ptr %i.em, align 8, !tbaa !93
  %i.eo = load double, ptr %i.ea, align 8, !tbaa !93
  %i.ep = getelementptr [8 x i8], ptr %i.s, i64 %.137.in47.i.i
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !95
  %i.er = getelementptr inbounds [8 x i8], ptr %spec.select.i8, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !93
  %i.et = fneg double %i.en
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.eo, double %i.es)
  store double %i.eu, ptr %i.er, align 8, !tbaa !93
  %.137.i.i.1 = add nsw i64 %.137.in47.i.i, -2    ; 3 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.137.i.i.1
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !93
  %i.ex = load double, ptr %i.ea, align 8, !tbaa !93
  %i.ey = getelementptr [8 x i8], ptr %i.s, i64 %.137.i.i
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !95
  %i.fa = getelementptr inbounds [8 x i8], ptr %spec.select.i8, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !93
  %i.fc = fneg double %i.ew
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ex, double %i.fb)
  store double %i.fd, ptr %i.fa, align 8, !tbaa !93
  %.not38.not.i.i.1 = icmp sgt i64 %.137.i.i.1, %i.dz
  br i1 %.not38.not.i.i.1, label %.lr.ph48.i.i.new, label %.loopexit.i.i, !llvm.loop !149

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.lr.ph43.i
  %.242.i = phi i64 [ %i.gb, %.lr.ph43.i ], [ 0, %.lr.ph43.i.preheader ] ; 6 uses
  %niter34 = phi i64 [ %niter34.next.3, %.lr.ph43.i ], [ 0, %.lr.ph43.i.preheader ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.242.i
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !93
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.242.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !95
  %i.fi = getelementptr inbounds [8 x i8], ptr %.046.i, i64 %i.fh
  store double %i.ff, ptr %i.fi, align 8, !tbaa !93
  %i.fj = or disjoint i64 %.242.i, 1              ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !93
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fj
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !95
  %i.fo = getelementptr inbounds [8 x i8], ptr %.046.i, i64 %i.fn
  store double %i.fl, ptr %i.fo, align 8, !tbaa !93
  %i.fp = or disjoint i64 %.242.i, 2              ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !93
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fp
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !95
  %i.fu = getelementptr inbounds [8 x i8], ptr %.046.i, i64 %i.ft
  store double %i.fr, ptr %i.fu, align 8, !tbaa !93
  %i.fv = or disjoint i64 %.242.i, 3              ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !93
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fv
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !95
  %i.ga = getelementptr inbounds [8 x i8], ptr %.046.i, i64 %i.fz
  store double %i.fx, ptr %i.ga, align 8, !tbaa !93
  %i.gb = add nuw nsw i64 %.242.i, 4              ; 2 uses
  %niter34.next.3 = add nuw nsw i64 %niter34, 4   ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %._crit_edge44.i.loopexit.unr-lcssa, label %.lr.ph43.i, !llvm.loop !150

._crit_edge44.i.loopexit.unr-lcssa:               ; preds = %.lr.ph43.i
  br i1 %lcmp.mod31.not, label %._crit_edge44.i.loopexit, label %.lr.ph43.i.epil.preheader

.lr.ph43.i.epil.preheader:                        ; preds = %._crit_edge44.i.loopexit.unr-lcssa, %.lr.ph43.i.preheader
  %.242.i.epil.init = phi i64 [ 0, %.lr.ph43.i.preheader ], [ %i.gb, %._crit_edge44.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph43.i.epil

.lr.ph43.i.epil:                                  ; preds = %.lr.ph43.i.epil, %.lr.ph43.i.epil.preheader
  %.242.i.epil = phi i64 [ %i.gh, %.lr.ph43.i.epil ], [ %.242.i.epil.init, %.lr.ph43.i.epil.preheader ] ; 3 uses
  %epil.iter30 = phi i64 [ %epil.iter30.next, %.lr.ph43.i.epil ], [ 0, %.lr.ph43.i.epil.preheader ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.242.i.epil
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !93
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.242.i.epil
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !95
  %i.gg = getelementptr inbounds [8 x i8], ptr %.046.i, i64 %i.gf
  store double %i.gd, ptr %i.gg, align 8, !tbaa !93
  %i.gh = add nuw nsw i64 %.242.i.epil, 1
  %epil.iter30.next = add i64 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i64 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %._crit_edge44.i.loopexit, label %.lr.ph43.i.epil, !llvm.loop !151

._crit_edge44.i.loopexit:                         ; preds = %.lr.ph43.i.epil, %._crit_edge44.i.loopexit.unr-lcssa
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.046.i, i64 %i.o
  %i.gj = add nuw nsw i64 %.03445.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.gj, %4
  br i1 %exitcond50.not.i, label %_ZN6casadi16casadi_ldl_solveIdEEvPT_xPKxPKS1_S6_S4_S2_.exit, label %.preheader.i, !llvm.loop !152

_ZN6casadi16casadi_ldl_solveIdEEvPT_xPKxPKS1_S6_S4_S2_.exit: ; preds = %._crit_edge44.i.loopexit, %bb.a, %.preheader.lr.ph.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6casadi9LinsolLdl4neigEPvPKd(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi11 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x double>, ptr %i.f, align 8, !tbaa !93
  %wide.load12 = load <2 x double>, ptr %i.g, align 8, !tbaa !93
  %i.h = fcmp olt <2 x double> %wide.load, zeroinitializer
  %i.i = fcmp olt <2 x double> %wide.load12, zeroinitializer
  %i.j = zext <2 x i1> %i.h to <2 x i64>
  %i.k = zext <2 x i1> %i.i to <2 x i64>
  %i.l = add <2 x i64> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i64> %vec.phi11, %i.k           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.089.ph = phi i64 [ 0, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %middle.block ], [ %.1, %scalar.ph ]
  ret i64 %.08.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010 = phi i64 [ %i.t, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ] ; 2 uses
  %.089 = phi i64 [ %.1, %scalar.ph ], [ %.089.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.010
  %i.q = load double, ptr %i.p, align 8, !tbaa !93
  %i.r = fcmp olt double %i.q, 0.000000e+00
  %i.s = zext i1 %i.r to i64
  %.1 = add nuw nsw i64 %.089, %i.s               ; 2 uses
  %i.t = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !154
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6casadi9LinsolLdl4rankEPvPKd(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi11 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x double>, ptr %i.f, align 8, !tbaa !93
  %wide.load12 = load <2 x double>, ptr %i.g, align 8, !tbaa !93
  %i.h = fcmp une <2 x double> %wide.load, zeroinitializer
  %i.i = fcmp une <2 x double> %wide.load12, zeroinitializer
  %i.j = zext <2 x i1> %i.h to <2 x i64>
  %i.k = zext <2 x i1> %i.i to <2 x i64>
  %i.l = add <2 x i64> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i64> %vec.phi11, %i.k           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.089.ph = phi i64 [ 0, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %middle.block ], [ %.1, %scalar.ph ]
  ret i64 %.08.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010 = phi i64 [ %i.t, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ] ; 2 uses
  %.089 = phi i64 [ %.1, %scalar.ph ], [ %.089.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.010
  %i.q = load double, ptr %i.p, align 8, !tbaa !93
  %i.r = fcmp une double %i.q, 0.000000e+00
  %i.s = zext i1 %i.r to i64
  %.1 = add nuw nsw i64 %.089, %i.s               ; 2 uses
  %i.t = add nuw nsw i64 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !156
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi9LinsolLdl8generateERNS_13CodeGeneratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_xb(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i1 zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  call void @_ZN6casadi13CodeGenerator8sparsityB5cxx11ERKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  invoke void @_ZN6casadi13CodeGenerator8sparsityB5cxx11ERKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN6casadi13CodeGenerator8constantB5cxx11ERKSt6vectorIxSaIxEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.11)
          to label %.noexc.i unwind label %bb.u   ; 0 uses

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 54, ptr %i.a, align 8, !tbaa !30
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %9, align 8, !tbaa !15
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.g, ptr noundef nonnull align 1 dereferenceable(54) @.str.12, i64 54, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6casadi13CodeGenerator7commentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %9, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !tbaa !31
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
end_hunk_0
