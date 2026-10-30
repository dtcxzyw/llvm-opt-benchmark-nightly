Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/feasiblesqpmethod?download=true
inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNK6casadi17Feasiblesqpmethod24anderson_acc_step_updateEPvx:bb.a
  %wide.load641 = load <2 x double>, ptr %i.lw, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  %i.lx = fadd <2 x double> %wide.load638, %wide.load640
  %i.ly = fadd <2 x double> %wide.load639, %wide.load641
  store <2 x double> %i.lx, ptr %next.gep636, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  store <2 x double> %i.ly, ptr %i.lw, align 8, !tbaa !155, !alias.scope !501, !noalias !500
  %index.next642 = add nuw i64 %index635, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next642, %n.vec633
  br i1 %i.lz, label %middle.block643, label %vector.body634, !llvm.loop !441

middle.block643:                                  ; preds = %vector.body634
  %cmp.n644 = icmp eq i64 %i.li, %n.vec633
  br i1 %cmp.n644, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107.preheader683

.lr.ph.i107.preheader683:                         ; preds = %vector.memcheck628, %.lr.ph.i107.preheader, %middle.block643
  %.014.i108.ph = phi i64 [ 0, %vector.memcheck628 ], [ 0, %.lr.ph.i107.preheader ], [ %n.vec633, %middle.block643 ] ; 3 uses
  %.0813.i109.ph = phi ptr [ %i.lk, %vector.memcheck628 ], [ %i.lk, %.lr.ph.i107.preheader ], [ %i.ls, %middle.block643 ] ; 2 uses
  %.0912.i110.ph = phi ptr [ %i.lj, %vector.memcheck628 ], [ %i.lj, %.lr.ph.i107.preheader ], [ %i.lt, %middle.block643 ] ; 2 uses
  %xtraiter750 = and i64 %i.li, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph.i107.prol.loopexit, label %.lr.ph.i107.prol

.lr.ph.i107.prol:                                 ; preds = %.lr.ph.i107.preheader683, %.lr.ph.i107.prol
  %.014.i108.prol = phi i64 [ %i.mf, %.lr.ph.i107.prol ], [ %.014.i108.ph, %.lr.ph.i107.preheader683 ]
  %.0813.i109.prol = phi ptr [ %i.mc, %.lr.ph.i107.prol ], [ %.0813.i109.ph, %.lr.ph.i107.preheader683 ] ; 3 uses
  %.0912.i110.prol = phi ptr [ %i.ma, %.lr.ph.i107.prol ], [ %.0912.i110.ph, %.lr.ph.i107.preheader683 ] ; 2 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph.i107.prol ], [ 0, %.lr.ph.i107.preheader683 ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.0912.i110.prol, i64 8 ; 2 uses
  %i.mb = load double, ptr %.0912.i110.prol, align 8, !tbaa !155
  %i.mc = getelementptr inbounds nuw i8, ptr %.0813.i109.prol, i64 8 ; 2 uses
  %i.md = load double, ptr %.0813.i109.prol, align 8, !tbaa !155
  %i.me = fadd double %i.mb, %i.md
  store double %i.me, ptr %.0813.i109.prol, align 8, !tbaa !155
  %i.mf = add nuw nsw i64 %.014.i108.prol, 1      ; 2 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph.i107.prol.loopexit, label %.lr.ph.i107.prol, !llvm.loop !442

.lr.ph.i107.prol.loopexit:                        ; preds = %.lr.ph.i107.prol, %.lr.ph.i107.preheader683
  %.014.i108.unr = phi i64 [ %.014.i108.ph, %.lr.ph.i107.preheader683 ], [ %i.mf, %.lr.ph.i107.prol ]
  %.0813.i109.unr = phi ptr [ %.0813.i109.ph, %.lr.ph.i107.preheader683 ], [ %i.mc, %.lr.ph.i107.prol ]
  %.0912.i110.unr = phi ptr [ %.0912.i110.ph, %.lr.ph.i107.preheader683 ], [ %i.ma, %.lr.ph.i107.prol ]
  %i.mg = sub nsw i64 %.014.i108.ph, %i.li
  %i.mh = icmp ugt i64 %i.mg, -4
  br i1 %i.mh, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.prol.loopexit, %.lr.ph.i107
  %.014.i108 = phi i64 [ %i.nc, %.lr.ph.i107 ], [ %.014.i108.unr, %.lr.ph.i107.prol.loopexit ]
  %.0813.i109 = phi ptr [ %i.mz, %.lr.ph.i107 ], [ %.0813.i109.unr, %.lr.ph.i107.prol.loopexit ] ; 6 uses
  %.0912.i110 = phi ptr [ %i.mx, %.lr.ph.i107 ], [ %.0912.i110.unr, %.lr.ph.i107.prol.loopexit ] ; 5 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 8
  %i.mj = load double, ptr %.0912.i110, align 8, !tbaa !155
  %i.mk = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 8 ; 2 uses
  %i.ml = load double, ptr %.0813.i109, align 8, !tbaa !155
  %i.mm = fadd double %i.mj, %i.ml
  store double %i.mm, ptr %.0813.i109, align 8, !tbaa !155
  %i.mn = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 16
  %i.mo = load double, ptr %i.mi, align 8, !tbaa !155
  %i.mp = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 16 ; 2 uses
  %i.mq = load double, ptr %i.mk, align 8, !tbaa !155
  %i.mr = fadd double %i.mo, %i.mq
  store double %i.mr, ptr %i.mk, align 8, !tbaa !155
  %i.ms = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 24
  %i.mt = load double, ptr %i.mn, align 8, !tbaa !155
  %i.mu = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 24 ; 2 uses
  %i.mv = load double, ptr %i.mp, align 8, !tbaa !155
  %i.mw = fadd double %i.mt, %i.mv
  store double %i.mw, ptr %i.mp, align 8, !tbaa !155
  %i.mx = getelementptr inbounds nuw i8, ptr %.0912.i110, i64 32
  %i.my = load double, ptr %i.ms, align 8, !tbaa !155
  %i.mz = getelementptr inbounds nuw i8, ptr %.0813.i109, i64 32
  %i.na = load double, ptr %i.mu, align 8, !tbaa !155
  %i.nb = fadd double %i.my, %i.na
  store double %i.nb, ptr %i.mu, align 8, !tbaa !155
  %i.nc = add nuw nsw i64 %.014.i108, 4           ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %i.nc, %i.li
  br i1 %exitcond.not.i111.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112, label %.lr.ph.i107, !llvm.loop !443

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112: ; preds = %.lr.ph.i107.prol.loopexit, %.lr.ph.i107, %middle.block643, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit104
  %i.nd = load ptr, ptr %i.lf, align 8, !tbaa !259
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !155
  %i.nf = fneg double %i.ne                       ; 6 uses
  %i.ng = load ptr, ptr %i.i, align 8, !tbaa !252 ; 7 uses
  %i.nh = icmp ne ptr %i.ng, null
  %or.cond.i113 = and i1 %i.lm, %i.nh
  %or.cond15.i114 = and i1 %i.ln, %or.cond.i113
  br i1 %or.cond15.i114, label %.lr.ph.i115.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120

.lr.ph.i115.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit112
  %min.iters.check654 = icmp ult i64 %i.li, 6
  br i1 %min.iters.check654, label %.lr.ph.i115.preheader682, label %vector.memcheck655

vector.memcheck655:                               ; preds = %.lr.ph.i115.preheader
  %i.ni = shl i64 %i.li, 3                        ; 2 uses
  %i.nj = getelementptr i8, ptr %i.lk, i64 %i.ni
  %i.nk = getelementptr i8, ptr %i.ng, i64 %i.ni
  %bound0656 = icmp ult ptr %i.lk, %i.nk
  %bound1657 = icmp ult ptr %i.ng, %i.nj
  %found.conflict658 = and i1 %bound0656, %bound1657
  br i1 %found.conflict658, label %.lr.ph.i115.preheader682, label %vector.ph659

vector.ph659:                                     ; preds = %vector.memcheck655
  %n.vec660 = and i64 %i.li, 9223372036854775804  ; 4 uses
  %i.nl = shl i64 %n.vec660, 3                    ; 2 uses
  %i.nm = getelementptr i8, ptr %i.lk, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.ng, i64 %i.nl
  %broadcast.splatinsert661 = insertelement <2 x double> poison, double %i.nf, i64 0
  %broadcast.splat662 = shufflevector <2 x double> %broadcast.splatinsert661, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph659
  %index664 = phi i64 [ 0, %vector.ph659 ], [ %index.next671, %vector.body663 ] ; 2 uses
  %i.no = shl i64 %index664, 3                    ; 2 uses
  %next.gep665 = getelementptr i8, ptr %i.lk, i64 %i.no ; 3 uses
  %next.gep666 = getelementptr i8, ptr %i.ng, i64 %i.no ; 2 uses
  %i.np = getelementptr i8, ptr %next.gep666, i64 16
  %wide.load667 = load <2 x double>, ptr %next.gep666, align 8, !tbaa !155, !alias.scope !502
  %wide.load668 = load <2 x double>, ptr %i.np, align 8, !tbaa !155, !alias.scope !502
  %i.nq = getelementptr i8, ptr %next.gep665, i64 16 ; 2 uses
  %wide.load669 = load <2 x double>, ptr %next.gep665, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %wide.load670 = load <2 x double>, ptr %i.nq, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat662, <2 x double> %wide.load667, <2 x double> %wide.load669)
  %i.ns = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat662, <2 x double> %wide.load668, <2 x double> %wide.load670)
  store <2 x double> %i.nr, ptr %next.gep665, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  store <2 x double> %i.ns, ptr %i.nq, align 8, !tbaa !155, !alias.scope !503, !noalias !502
  %index.next671 = add nuw i64 %index664, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next671, %n.vec660
  br i1 %i.nt, label %middle.block672, label %vector.body663, !llvm.loop !447

middle.block672:                                  ; preds = %vector.body663
  %cmp.n673 = icmp eq i64 %i.li, %n.vec660
  br i1 %cmp.n673, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120, label %.lr.ph.i115.preheader682

.lr.ph.i115.preheader682:                         ; preds = %vector.memcheck655, %.lr.ph.i115.preheader, %middle.block672
  %.014.i116.ph = phi i64 [ 0, %vector.memcheck655 ], [ 0, %.lr.ph.i115.preheader ], [ %n.vec660, %middle.block672 ] ; 3 uses
  %.0813.i117.ph = phi ptr [ %i.lk, %vector.memcheck655 ], [ %i.lk, %.lr.ph.i115.preheader ], [ %i.nm, %middle.block672 ] ; 2 uses
  %.0912.i118.ph = phi ptr [ %i.ng, %vector.memcheck655 ], [ %i.ng, %.lr.ph.i115.preheader ], [ %i.nn, %middle.block672 ] ; 2 uses
  %xtraiter753 = and i64 %i.li, 3                 ; 2 uses
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  br i1 %lcmp.mod754.not, label %.lr.ph.i115.prol.loopexit, label %.lr.ph.i115.prol

.lr.ph.i115.prol:                                 ; preds = %.lr.ph.i115.preheader682, %.lr.ph.i115.prol
  %.014.i116.prol = phi i64 [ %i.nz, %.lr.ph.i115.prol ], [ %.014.i116.ph, %.lr.ph.i115.preheader682 ]
  %.0813.i117.prol = phi ptr [ %i.nw, %.lr.ph.i115.prol ], [ %.0813.i117.ph, %.lr.ph.i115.preheader682 ] ; 3 uses
  %.0912.i118.prol = phi ptr [ %i.nu, %.lr.ph.i115.prol ], [ %.0912.i118.ph, %.lr.ph.i115.preheader682 ] ; 2 uses
  %prol.iter755 = phi i64 [ %prol.iter755.next, %.lr.ph.i115.prol ], [ 0, %.lr.ph.i115.preheader682 ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.0912.i118.prol, i64 8 ; 2 uses
  %i.nv = load double, ptr %.0912.i118.prol, align 8, !tbaa !155
  %i.nw = getelementptr inbounds nuw i8, ptr %.0813.i117.prol, i64 8 ; 2 uses
  %i.nx = load double, ptr %.0813.i117.prol, align 8, !tbaa !155
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.nv, double %i.nx)
  store double %i.ny, ptr %.0813.i117.prol, align 8, !tbaa !155
  %i.nz = add nuw nsw i64 %.014.i116.prol, 1      ; 2 uses
  %prol.iter755.next = add i64 %prol.iter755, 1   ; 2 uses
  %prol.iter755.cmp.not = icmp eq i64 %prol.iter755.next, %xtraiter753
  br i1 %prol.iter755.cmp.not, label %.lr.ph.i115.prol.loopexit, label %.lr.ph.i115.prol, !llvm.loop !448

.lr.ph.i115.prol.loopexit:                        ; preds = %.lr.ph.i115.prol, %.lr.ph.i115.preheader682
  %.014.i116.unr = phi i64 [ %.014.i116.ph, %.lr.ph.i115.preheader682 ], [ %i.nz, %.lr.ph.i115.prol ]
  %.0813.i117.unr = phi ptr [ %.0813.i117.ph, %.lr.ph.i115.preheader682 ], [ %i.nw, %.lr.ph.i115.prol ]
  %.0912.i118.unr = phi ptr [ %.0912.i118.ph, %.lr.ph.i115.preheader682 ], [ %i.nu, %.lr.ph.i115.prol ]
  %i.oa = sub nsw i64 %.014.i116.ph, %i.li
  %i.ob = icmp ugt i64 %i.oa, -4
  br i1 %i.ob, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.lr.ph.i115.prol.loopexit, %.lr.ph.i115
  %.014.i116 = phi i64 [ %i.ow, %.lr.ph.i115 ], [ %.014.i116.unr, %.lr.ph.i115.prol.loopexit ]
  %.0813.i117 = phi ptr [ %i.ot, %.lr.ph.i115 ], [ %.0813.i117.unr, %.lr.ph.i115.prol.loopexit ] ; 6 uses
  %.0912.i118 = phi ptr [ %i.or, %.lr.ph.i115 ], [ %.0912.i118.unr, %.lr.ph.i115.prol.loopexit ] ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0912.i118, i64 8
  %i.od = load double, ptr %.0912.i118, align 8, !tbaa !155
  %i.oe = getelementptr inbounds nuw i8, ptr %.0813.i117, i64 8 ; 2 uses
  %i.of = load double, ptr %.0813.i117, align 8, !tbaa !155
  %i.og = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.od, double %i.of)
  store double %i.og, ptr %.0813.i117, align 8, !tbaa !155
  %i.oh = getelementptr inbounds nuw i8, ptr %.0912.i118, i64 16
  %i.oi = load double, ptr %i.oc, align 8, !tbaa !155
  %i.oj = getelementptr inbounds nuw i8, ptr %.0813.i117, i64 16 ; 2 uses
  %i.ok = load double, ptr %i.oe, align 8, !tbaa !155
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.oi, double %i.ok)
  store double %i.ol, ptr %i.oe, align 8, !tbaa !155
  %i.om = getelementptr inbounds nuw i8, ptr %.0912.i118, i64 24
  %i.on = load double, ptr %i.oh, align 8, !tbaa !155
  %i.oo = getelementptr inbounds nuw i8, ptr %.0813.i117, i64 24 ; 2 uses
  %i.op = load double, ptr %i.oj, align 8, !tbaa !155
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.on, double %i.op)
  store double %i.oq, ptr %i.oj, align 8, !tbaa !155
  %i.or = getelementptr inbounds nuw i8, ptr %.0912.i118, i64 32
  %i.os = load double, ptr %i.om, align 8, !tbaa !155
  %i.ot = getelementptr inbounds nuw i8, ptr %.0813.i117, i64 32
  %i.ou = load double, ptr %i.oo, align 8, !tbaa !155
  %i.ov = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.os, double %i.ou)
  store double %i.ov, ptr %i.oo, align 8, !tbaa !155
  %i.ow = add nuw nsw i64 %.014.i116, 4           ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %i.ow, %i.li
  br i1 %exitcond.not.i119.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit120, label %.lr.ph.i115, !llvm.loop !449

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.140)
  %i.ox = add nsw i64 %2, 1
  %i.oy = load i64, ptr %i.a, align 8, !tbaa !166
  %3 = tail call i64 @llvm.smin.i64(i64 %i.ox, i64 %i.oy)
  %i.oz = sitofp i64 %3 to double
  %i.pa = fptosi double %i.oz to i64              ; 9 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !246 ; 6 uses
  %i.pd = ptrtoaddr ptr %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !158 ; 16 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !252 ; 14 uses
  %i.pi = ptrtoaddr ptr %i.ph to i64              ; 2 uses
  %.not.i121.not = icmp eq ptr %i.ph, null
  br i1 %.not.i121.not, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit131, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not15.i122 = icmp eq ptr %i.pc, null
  %i.pj = icmp sgt i64 %i.pf, 0                   ; 2 uses
  br i1 %.not15.i122, label %.preheader.i129, label %.preheader16.i123

.preheader16.i123:                                ; preds = %bb.e
  br i1 %i.pj, label %.lr.ph.i124.preheader, label %.loopexit

.lr.ph.i124.preheader:                            ; preds = %.preheader16.i123
  %min.iters.check = icmp ult i64 %i.pf, 8
  %i.pk = sub i64 %i.pd, %i.pi
  %diff.check = icmp ugt i64 %i.pk, -32
  %or.cond681 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond681, label %.lr.ph.i124.preheader699, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i124.preheader
  %n.vec = and i64 %i.pf, 9223372036854775804     ; 4 uses
  %i.pl = shl i64 %n.vec, 3                       ; 2 uses
  %i.pm = getelementptr i8, ptr %i.ph, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pc, i64 %i.pl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.po = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ph, i64 %i.po ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.pc, i64 %i.po ; 2 uses
  %i.pp = getelementptr i8, ptr %next.gep293, i64 16
  %wide.load = load <2 x double>, ptr %next.gep293, align 8, !tbaa !155
  %wide.load294 = load <2 x double>, ptr %i.pp, align 8, !tbaa !155
  %i.pq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !155
  store <2 x double> %wide.load294, ptr %i.pq, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %middle.block, label %vector.body, !llvm.loop !450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i124.preheader699

.lr.ph.i124.preheader699:                         ; preds = %.lr.ph.i124.preheader, %middle.block
  %.020.i125.ph = phi i64 [ 0, %.lr.ph.i124.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i126.ph = phi ptr [ %i.ph, %.lr.ph.i124.preheader ], [ %i.pm, %middle.block ] ; 2 uses
  %.01218.i127.ph = phi ptr [ %i.pc, %.lr.ph.i124.preheader ], [ %i.pn, %middle.block ] ; 2 uses
  %i.ps = sub nsw i64 %i.pf, %.020.i125.ph
  %xtraiter = and i64 %i.ps, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i124.prol.loopexit, label %.lr.ph.i124.prol

.lr.ph.i124.prol:                                 ; preds = %.lr.ph.i124.preheader699, %.lr.ph.i124.prol
  %.020.i125.prol = phi i64 [ %i.pw, %.lr.ph.i124.prol ], [ %.020.i125.ph, %.lr.ph.i124.preheader699 ]
  %.01019.i126.prol = phi ptr [ %i.pv, %.lr.ph.i124.prol ], [ %.01019.i126.ph, %.lr.ph.i124.preheader699 ] ; 2 uses
  %.01218.i127.prol = phi ptr [ %i.pt, %.lr.ph.i124.prol ], [ %.01218.i127.ph, %.lr.ph.i124.preheader699 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i124.prol ], [ 0, %.lr.ph.i124.preheader699 ]
  %i.pt = getelementptr inbounds nuw i8, ptr %.01218.i127.prol, i64 8 ; 2 uses
  %i.pu = load double, ptr %.01218.i127.prol, align 8, !tbaa !155
  %i.pv = getelementptr inbounds nuw i8, ptr %.01019.i126.prol, i64 8 ; 2 uses
  store double %i.pu, ptr %.01019.i126.prol, align 8, !tbaa !155
  %i.pw = add nuw nsw i64 %.020.i125.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i124.prol.loopexit, label %.lr.ph.i124.prol, !llvm.loop !451

.lr.ph.i124.prol.loopexit:                        ; preds = %.lr.ph.i124.prol, %.lr.ph.i124.preheader699
  %.020.i125.unr = phi i64 [ %.020.i125.ph, %.lr.ph.i124.preheader699 ], [ %i.pw, %.lr.ph.i124.prol ]
  %.01019.i126.unr = phi ptr [ %.01019.i126.ph, %.lr.ph.i124.preheader699 ], [ %i.pv, %.lr.ph.i124.prol ]
  %.01218.i127.unr = phi ptr [ %.01218.i127.ph, %.lr.ph.i124.preheader699 ], [ %i.pt, %.lr.ph.i124.prol ]
  %i.px = sub nsw i64 %.020.i125.ph, %i.pf
  %i.py = icmp ugt i64 %i.px, -8
  br i1 %i.py, label %.loopexit, label %.lr.ph.i124

.preheader.i129:                                  ; preds = %bb.e
  br i1 %i.pj, label %.lr.ph23.preheader.i130, label %.loopexit

.lr.ph23.preheader.i130:                          ; preds = %.preheader.i129
  %i.pz = shl nuw i64 %i.pf, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ph, i8 0, i64 %i.pz, i1 false), !tbaa !155
  br label %.loopexit

.lr.ph.i124:                                      ; preds = %.lr.ph.i124.prol.loopexit, %.lr.ph.i124
  %.020.i125 = phi i64 [ %i.qy, %.lr.ph.i124 ], [ %.020.i125.unr, %.lr.ph.i124.prol.loopexit ]
  %.01019.i126 = phi ptr [ %i.qx, %.lr.ph.i124 ], [ %.01019.i126.unr, %.lr.ph.i124.prol.loopexit ] ; 9 uses
  %.01218.i127 = phi ptr [ %i.qv, %.lr.ph.i124 ], [ %.01218.i127.unr, %.lr.ph.i124.prol.loopexit ] ; 9 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 8
  %i.qb = load double, ptr %.01218.i127, align 8, !tbaa !155
  %i.qc = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 8
  store double %i.qb, ptr %.01019.i126, align 8, !tbaa !155
  %i.qd = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 16
  %i.qe = load double, ptr %i.qa, align 8, !tbaa !155
  %i.qf = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 16
  store double %i.qe, ptr %i.qc, align 8, !tbaa !155
  %i.qg = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 24
  %i.qh = load double, ptr %i.qd, align 8, !tbaa !155
  %i.qi = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 24
  store double %i.qh, ptr %i.qf, align 8, !tbaa !155
  %i.qj = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 32
  %i.qk = load double, ptr %i.qg, align 8, !tbaa !155
  %i.ql = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 32
  store double %i.qk, ptr %i.qi, align 8, !tbaa !155
  %i.qm = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 40
  %i.qn = load double, ptr %i.qj, align 8, !tbaa !155
  %i.qo = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 40
  store double %i.qn, ptr %i.ql, align 8, !tbaa !155
  %i.qp = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 48
  %i.qq = load double, ptr %i.qm, align 8, !tbaa !155
  %i.qr = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 48
  store double %i.qq, ptr %i.qo, align 8, !tbaa !155
  %i.qs = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 56
  %i.qt = load double, ptr %i.qp, align 8, !tbaa !155
  %i.qu = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 56
  store double %i.qt, ptr %i.qr, align 8, !tbaa !155
  %i.qv = getelementptr inbounds nuw i8, ptr %.01218.i127, i64 64
  %i.qw = load double, ptr %i.qs, align 8, !tbaa !155
  %i.qx = getelementptr inbounds nuw i8, ptr %.01019.i126, i64 64
  store double %i.qw, ptr %i.qu, align 8, !tbaa !155
  %i.qy = add nuw nsw i64 %.020.i125, 8           ; 2 uses
  %exitcond.not.i128.7 = icmp eq i64 %i.qy, %i.pf
  br i1 %exitcond.not.i128.7, label %.loopexit, label %.lr.ph.i124, !llvm.loop !452

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit131:    ; preds = %bb.d
  %i.qz = add i64 %i.pa, -1
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit150

.loopexit:                                        ; preds = %.lr.ph.i124.prol.loopexit, %.lr.ph.i124, %middle.block, %.preheader16.i123, %.preheader.i129, %.lr.ph23.preheader.i130
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !257 ; 8 uses
  %i.rc = ptrtoaddr ptr %i.rb to i64
  %i.rd = add i64 %i.pa, -1                       ; 7 uses
  %i.re = mul i64 %i.rd, %i.pf                    ; 8 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.pf ; 5 uses
  %.not15.i133 = icmp eq ptr %i.rb, null
  %i.rg = icmp sgt i64 %i.re, 0                   ; 2 uses
  br i1 %.not15.i133, label %.preheader.i140, label %.preheader16.i134

.preheader16.i134:                                ; preds = %.loopexit
  br i1 %i.rg, label %.lr.ph.i135.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit142

.lr.ph.i135.preheader:                            ; preds = %.preheader16.i134
  %min.iters.check300 = icmp ult i64 %i.re, 14
  br i1 %min.iters.check300, label %.lr.ph.i135.preheader698, label %vector.memcheck301

vector.memcheck301:                               ; preds = %.lr.ph.i135.preheader
  %i.rh = shl i64 %i.pf, 3
  %i.ri = add i64 %i.rh, %i.pi
  %i.rj = sub i64 %i.rc, %i.ri
  %diff.check302 = icmp ugt i64 %i.rj, -32
  br i1 %diff.check302, label %.lr.ph.i135.preheader698, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck301
  %n.vec304 = and i64 %i.re, 9223372036854775804  ; 4 uses
  %i.rk = shl i64 %n.vec304, 3                    ; 2 uses
  %i.rl = getelementptr i8, ptr %i.rf, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rb, i64 %i.rk
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.rn = shl i64 %index306, 3                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.rf, i64 %i.rn ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.rb, i64 %i.rn ; 2 uses
  %i.ro = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <2 x double>, ptr %next.gep308, align 8, !tbaa !155
  %wide.load310 = load <2 x double>, ptr %i.ro, align 8, !tbaa !155
  %i.rp = getelementptr i8, ptr %next.gep307, i64 16
  store <2 x double> %wide.load309, ptr %next.gep307, align 8, !tbaa !155
  store <2 x double> %wide.load310, ptr %i.rp, align 8, !tbaa !155
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.rq, label %middle.block312, label %vector.body305, !llvm.loop !453

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.re, %n.vec304
  br i1 %cmp.n313, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit142, label %.lr.ph.i135.preheader698

.lr.ph.i135.preheader698:                         ; preds = %vector.memcheck301, %.lr.ph.i135.preheader, %middle.block312
  %.020.i136.ph = phi i64 [ 0, %vector.memcheck301 ], [ 0, %.lr.ph.i135.preheader ], [ %n.vec304, %middle.block312 ] ; 4 uses
  %.01019.i137.ph = phi ptr [ %i.rf, %vector.memcheck301 ], [ %i.rf, %.lr.ph.i135.preheader ], [ %i.rl, %middle.block312 ] ; 2 uses
  %.01218.i138.ph = phi ptr [ %i.rb, %vector.memcheck301 ], [ %i.rb, %.lr.ph.i135.preheader ], [ %i.rm, %middle.block312 ] ; 2 uses
  %i.rr = sub nsw i64 %i.re, %.020.i136.ph
  %xtraiter700 = and i64 %i.rr, 7                 ; 2 uses
  %lcmp.mod701.not = icmp eq i64 %xtraiter700, 0
  br i1 %lcmp.mod701.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader698, %.lr.ph.i135.prol
  %.020.i136.prol = phi i64 [ %i.rv, %.lr.ph.i135.prol ], [ %.020.i136.ph, %.lr.ph.i135.preheader698 ]
  %.01019.i137.prol = phi ptr [ %i.ru, %.lr.ph.i135.prol ], [ %.01019.i137.ph, %.lr.ph.i135.preheader698 ] ; 2 uses
  %.01218.i138.prol = phi ptr [ %i.rs, %.lr.ph.i135.prol ], [ %.01218.i138.ph, %.lr.ph.i135.preheader698 ] ; 2 uses
  %prol.iter702 = phi i64 [ %prol.iter702.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader698 ]
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_feasiblesqpmethod.cpp:bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !25
  store i8 120, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !25
  store i8 112, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 1, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.g, align 1, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadiL9NL_INPUTSB5cxx11E, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.h, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.k = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, align 8, !tbaa !34 ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i5.i.i, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #30
  br label %.body.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL9NL_INPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %__cxx_global_var_init.exit

.body.i:                                          ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %.body.i
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL9NL_INPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !25
  store i8 102, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ak, align 1, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !25
  store i8 103, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.ao, align 1, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i8 0, i64 24, i1 false)
  %i.ap = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9 unwind label %bb.e ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9: ; preds = %__cxx_global_var_init.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ap)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9, %__cxx_global_var_init.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, align 8, !tbaa !34 ; 3 uses
  %.not.i.i5.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i5.i.i1, label %.body.i2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 16), align 8, !tbaa !37
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #30
  br label %.body.i2

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i9
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadiL10NL_OUTPUTSB5cxx11E, i64 8), align 8, !tbaa !35
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.g
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  %i.bd = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ai
  br i1 %i.be, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11
  %i.bf = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %__cxx_global_var_init.2.exit

.body.i2:                                         ; preds = %bb.f, %bb.e
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3: ; preds = %.body.i2
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4: ; preds = %.body.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i3
  %i.bl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ai
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !30
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.1.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.1.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.2.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.bp = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN6casadiL10NL_OUTPUTSB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  call fastcc void @__cxx_global_var_init.6()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !36}
!1 = distinct !{null, null}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{null, null, null, null}
!7 = distinct !{!7, !36}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, !36}
!12 = distinct !{!12, !36}
!13 = distinct !{!13, !36}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !18, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !18, i64 16}
!29 = !{!28, !23, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!28, !26, i64 8}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 8}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!33, !32, i64 16}
!38 = !{!"_ZTSN6casadi6Nlpsol7ExposedE"}
!39 = !{!"p1 _ZTSN6casadi7OptionsE", !22, i64 0}
!40 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEE6PluginE", !22, i64 0, !23, i64 8, !23, i64 16, !19, i64 24, !38, i64 28, !39, i64 32, !22, i64 40}
!41 = !{!40, !23, i64 8}
!42 = !{!"vtable pointer", !17, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !22, i64 0}
!45 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !44, i64 8}
!46 = !{!"long long", !18, i64 0}
!47 = !{!"_ZTSN6casadi20SharedObjectInternalE", !45, i64 0, !46, i64 16}
!48 = !{!"bool", !18, i64 0}
!49 = !{!"any p2 pointer", !22, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !52, i64 0}
!54 = !{!"p2 int", !49, i64 0}
!55 = !{!"p1 int", !22, i64 0}
!56 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !55, i64 0, !55, i64 8, !55, i64 16, !54, i64 24}
!57 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !54, i64 0, !26, i64 8, !56, i64 16, !56, i64 48}
!58 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", !57, i64 0}
!59 = !{!"_ZTSSt11_Deque_baseIiSaIiEE", !58, i64 0}
!60 = !{!"_ZTSSt5dequeIiSaIiEE", !59, i64 0}
!61 = !{!"_ZTSSt5stackIiSt5dequeIiSaIiEEE", !60, i64 0}
!62 = !{!"_ZTSN6casadi13ProtoFunctionE", !47, i64 0, !28, i64 24, !48, i64 56, !48, i64 57, !48, i64 58, !48, i64 59, !48, i64 60, !53, i64 64, !61, i64 88}
!63 = !{!"p1 long", !22, i64 0}
!64 = !{!"_ZTSSt18_Bit_iterator_base", !63, i64 0, !19, i64 8}
!65 = !{!"_ZTSSt13_Bit_iterator", !64, i64 0}
!66 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !65, i64 0, !65, i64 16, !63, i64 32}
!67 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !66, i64 0}
!68 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIbSaIbEE", !68, i64 0}
!70 = !{!"p1 _ZTSN6casadi8SparsityE", !22, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN6casadi8SparsityESaIS1_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN6casadi8SparsityESaIS1_EE", !73, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!79 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !78, i64 0}
!80 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!81 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!82 = !{!"_ZTSSt18_Rb_tree_node_base", !80, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!83 = !{!"_ZTSSt15_Rb_tree_header", !82, i64 0, !26, i64 32}
!84 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !79, i64 0, !83, i64 8}
!85 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !84, i64 0}
!86 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !85, i64 0}
!87 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !49, i64 0}
!88 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!89 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !88, i64 0}
!90 = !{!"float", !18, i64 0}
!91 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !90, i64 0, !26, i64 8}
!92 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14GenericWeakRefINS8_12SharedObjectENS8_20SharedObjectInternalEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !87, i64 0, !26, i64 8, !89, i64 16, !26, i64 24, !91, i64 32, !88, i64 48}
!93 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14GenericWeakRefINS6_12SharedObjectENS6_20SharedObjectInternalEEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !92, i64 0}
!94 = !{!"_ZTSN6casadi9WeakCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FunctionEEE", !93, i64 0}
!95 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !22, i64 0}
!96 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !95, i64 0}
!97 = !{!"_ZTSN6casadi12SharedObjectE", !96, i64 0}
!98 = !{!"_ZTSN6casadi8FunctionE", !97, i64 0}
!99 = !{!"_ZTSN6casadi8ImporterE", !97, i64 0}
!100 = !{!"double", !18, i64 0}
!101 = !{!"_ZTSN6casadi16FunctionInternalE", !62, i64 0, !48, i64 168, !48, i64 169, !26, i64 176, !26, i64 184, !69, i64 192, !69, i64 232, !74, i64 272, !74, i64 296, !77, i64 320, !77, i64 344, !48, i64 368, !48, i64 369, !28, i64 376, !28, i64 408, !28, i64 440, !48, i64 472, !22, i64 480, !22, i64 488, !22, i64 496, !86, i64 504, !48, i64 552, !86, i64 560, !94, i64 608, !18, i64 664, !98, i64 712, !22, i64 720, !28, i64 728, !99, i64 760, !86, i64 768, !100, i64 816, !48, i64 824, !48, i64 825, !48, i64 826, !48, i64 827, !48, i64 828, !48, i64 829, !48, i64 830, !48, i64 831, !100, i64 832, !100, i64 840, !46, i64 848, !48, i64 856, !86, i64 864, !100, i64 912, !28, i64 920, !48, i64 952, !48, i64 953, !48, i64 954, !46, i64 960, !48, i64 968, !48, i64 969, !48, i64 970, !28, i64 976, !28, i64 1008, !86, i64 1040, !86, i64 1088, !86, i64 1136, !86, i64 1184, !98, i64 1232, !46, i64 1240, !26, i64 1248, !26, i64 1256, !26, i64 1264, !26, i64 1272, !26, i64 1280, !26, i64 1288, !26, i64 1296, !26, i64 1304}
!102 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !79, i64 0, !83, i64 8}
!103 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !102, i64 0}
!104 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14OracleFunction6RegFunESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !103, i64 0}
!105 = !{!"_ZTSN6casadi14OracleFunctionE", !101, i64 0, !98, i64 1312, !86, i64 1320, !86, i64 1368, !48, i64 1416, !19, i64 1420, !104, i64 1424, !77, i64 1472, !26, i64 1496, !26, i64 1504, !26, i64 1512, !26, i64 1520, !48, i64 1528}
!106 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEEE"}
!107 = !{!"p1 long long", !22, i64 0}
!108 = !{!"_ZTSN6casadi32casadi_nlpsol_detect_bounds_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !107, i64 48, !107, i64 56, !23, i64 64, !22, i64 72, !22, i64 80}
!109 = !{!"_ZTSN6casadi18casadi_nlpsol_probIdEE", !46, i64 0, !46, i64 8, !46, i64 16, !108, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!111 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !110, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !111, i64 0}
!113 = !{!"_ZTSSt6vectorIcSaIcEE", !112, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIxSaIxEE", !116, i64 0}
!118 = !{!"_ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !96, i64 0}
!119 = !{!"_ZTSN6casadi7WeakRefE", !118, i64 0}
!120 = !{!"_ZTSN6casadi6NlpsolE", !105, i64 0, !106, i64 1536, !109, i64 1544, !46, i64 1656, !46, i64 1664, !46, i64 1672, !98, i64 1680, !46, i64 1688, !28, i64 1696, !86, i64 1728, !113, i64 1776, !98, i64 1800, !117, i64 1808, !117, i64 1832, !48, i64 1856, !48, i64 1857, !48, i64 1858, !48, i64 1859, !48, i64 1860, !48, i64 1861, !48, i64 1862, !48, i64 1863, !48, i64 1864, !100, i64 1872, !48, i64 1880, !69, i64 1888, !69, i64 1928, !48, i64 1968, !119, i64 1976}
!121 = !{!"p1 _ZTSN6casadi18casadi_nlpsol_probIdEE", !22, i64 0}
!122 = !{!"_ZTSN6casadi29casadi_feasiblesqpmethod_probIdEE", !121, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!123 = !{!"_ZTSN6casadi8SparsityE", !97, i64 0}
!124 = !{!"_ZTSN6casadi27casadi_convexify_strategy_tE", !18, i64 0}
!125 = !{!"_ZTSN6casadi26casadi_convexify_type_in_tE", !18, i64 0}
!126 = !{!"_ZTSN6casadi23casadi_convexify_configIdEE", !124, i64 0, !125, i64 4, !107, i64 8, !107, i64 16, !100, i64 24, !19, i64 32, !19, i64 36, !107, i64 40, !107, i64 48, !46, i64 56, !46, i64 64, !19, i64 72}
!127 = !{!"p1 double", !22, i64 0}
!128 = !{!"_ZTSN6casadi13ConvexifyDataE", !117, i64 0, !117, i64 24, !123, i64 48, !123, i64 56, !123, i64 64, !126, i64 72, !46, i64 152, !46, i64 160, !107, i64 168, !127, i64 176}
!129 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIdSaIdEE", !131, i64 0}
!133 = !{!"_ZTSN6casadi17FeasiblesqpmethodE", !120, i64 0, !122, i64 1984, !98, i64 2016, !98, i64 2024, !48, i64 2032, !48, i64 2033, !48, i64 2034, !46, i64 2040, !46, i64 2048, !46, i64 2056, !46, i64 2064, !46, i64 2072, !100, i64 2080, !100, i64 2088, !48, i64 2096, !48, i64 2097, !48, i64 2098, !48, i64 2099, !123, i64 2104, !123, i64 2112, !128, i64 2120, !48, i64 2304, !100, i64 2312, !100, i64 2320, !100, i64 2328, !100, i64 2336, !100, i64 2344, !100, i64 2352, !100, i64 2360, !100, i64 2368, !100, i64 2376, !100, i64 2384, !100, i64 2392, !132, i64 2400, !100, i64 2424, !46, i64 2432, !46, i64 2440}
!134 = !{!133, !46, i64 2040}
!135 = !{!114, !107, i64 0}
!136 = !{!114, !107, i64 16}
!137 = !{!129, !127, i64 0}
!138 = !{!129, !127, i64 16}
!139 = !{!"p2 _ZTSN6casadi7OptionsE", !49, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPKN6casadi7OptionsESaIS3_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!140, !139, i64 0}
!142 = !{!140, !139, i64 16}
!143 = !{!39, !39, i64 0}
end_hunk_1
