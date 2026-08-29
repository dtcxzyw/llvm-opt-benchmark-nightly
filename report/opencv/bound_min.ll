Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bound_min?download=true
inline.NumInlined: 484
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv3mcc9CBoundMin9calculateEv:bb.a
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.dd ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.du = load <2 x float>, ptr %i.dj, align 4, !tbaa !21 ; 7 uses
  %i.dv = insertelement <2 x float> %i.du, float %i.df, i64 1
  %i.dw = fsub <2 x float> %i.dr, %i.dv
  store <2 x float> %i.dw, ptr %i.dt, align 4
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.dh ; 2 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dy = load <2 x float>, ptr %i.dm, align 4, !tbaa !21 ; 5 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.ea = fsub <2 x float> %i.du, %i.dz
  %i.eb = extractelement <2 x float> %i.dy, i64 0
  store <2 x float> %i.ea, ptr %i.dx, align 4
  %i.ec = insertelement <2 x float> %i.du, float %i.dq, i64 0
  %i.ed = fsub <2 x float> %i.dy, %i.ec
  %i.ee = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.dk ; 2 uses
  store <2 x float> %i.ed, ptr %i.ef, align 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eg = fsub float %i.dq, %i.ds
  %i.eh = fsub float %i.df, %i.ee
  %i.ei = shufflevector <2 x float> %i.dr, <2 x float> %i.du, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %i.ee, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.df, i64 3 ; 2 uses
  %i.el = fneg <4 x float> %i.ek
  %i.em = shufflevector <2 x float> %i.dr, <2 x float> %i.du, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float %i.eb, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.dq, i64 3 ; 2 uses
  %i.ep = fmul <4 x float> %i.eo, %i.el
  %i.eq = shufflevector <2 x float> %i.dr, <2 x float> %i.du, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.ek, <4 x i32> <i32 7, i32 1, i32 2, i32 6>
  %i.es = shufflevector <2 x float> %i.du, <2 x float> %i.dy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 7, i32 4>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.et, <4 x float> %i.ep) ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  store float %i.ev, ptr %.sroa.571.0..sroa_idx, align 4, !tbaa !21
  %i.ew = extractelement <4 x float> %i.eu, i64 1
  store float %i.ew, ptr %.sroa.565.0..sroa_idx, align 4, !tbaa !21
  %i.ex = extractelement <4 x float> %i.eu, i64 2
  store float %i.ex, ptr %.sroa.559.0..sroa_idx, align 4, !tbaa !21
  %.sroa.0.0.vec.insert.i187 = insertelement <2 x float> poison, float %i.eg, i64 0
  %.sroa.0.4.vec.insert.i188 = insertelement <2 x float> %.sroa.0.0.vec.insert.i187, float %i.eh, i64 1
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.dn ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i188, ptr %i.ey, align 4
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ez = extractelement <4 x float> %i.eu, i64 3
  store float %i.ez, ptr %.sroa.553.0..sroa_idx, align 4, !tbaa !21
  %i.fa = add nuw i64 %.0146628, 1                ; 2 uses
  %exitcond667.not = icmp eq i64 %i.fa, %i.k
  br i1 %exitcond667.not, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %.lr.ph629, !llvm.loop !38

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283: ; preds = %._crit_edge634
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #16
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread ; 8 uses

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread: ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

_ZNSt6vectorIiSaIiEED2Ev.exit263.thread:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread602

.lr.ph633.preheader:                              ; preds = %._crit_edge634, %.lr.ph637
  %.0143636 = phi i64 [ 0, %.lr.ph637 ], [ %i.gc, %._crit_edge634 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %.0143636 ; 3 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !39 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !41 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !42 ; 2 uses
  br i1 %min.iters.check771, label %.lr.ph633.preheader838, label %vector.ph772

vector.ph772:                                     ; preds = %.lr.ph633.preheader
  %broadcast.splatinsert774 = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat775 = shufflevector <4 x float> %broadcast.splatinsert774, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert776 = insertelement <4 x float> poison, float %i.fh, i64 0
  %broadcast.splat777 = shufflevector <4 x float> %broadcast.splatinsert776, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert778 = insertelement <4 x float> poison, float %i.fj, i64 0
  %broadcast.splat779 = shufflevector <4 x float> %broadcast.splatinsert778, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body780

vector.body780:                                   ; preds = %vector.body780, %vector.ph772
  %index781 = phi i64 [ 0, %vector.ph772 ], [ %index.next789, %vector.body780 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph772 ], [ %i.fx, %vector.body780 ]
  %vec.phi782 = phi <4 x i32> [ zeroinitializer, %vector.ph772 ], [ %i.fy, %vector.body780 ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index781
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index781
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %wide.vec783 = load <8 x float>, ptr %i.fk, align 4, !tbaa !21 ; 2 uses
  %strided.vec784 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec785 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec786 = load <8 x float>, ptr %i.fm, align 4, !tbaa !21 ; 2 uses
  %strided.vec787 = shufflevector <8 x float> %wide.vec786, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec788 = shufflevector <8 x float> %wide.vec786, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fn = fmul <4 x float> %broadcast.splat777, %strided.vec785
  %i.fo = fmul <4 x float> %broadcast.splat777, %strided.vec788
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec784, <4 x float> %broadcast.splat775, <4 x float> %i.fn)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec787, <4 x float> %broadcast.splat775, <4 x float> %i.fo)
  %i.fr = fadd <4 x float> %broadcast.splat779, %i.fp
  %i.fs = fadd <4 x float> %broadcast.splat779, %i.fq
  %i.ft = fcmp ole <4 x float> %i.fr, zeroinitializer
  %i.fu = fcmp ole <4 x float> %i.fs, zeroinitializer
  %i.fv = zext <4 x i1> %i.ft to <4 x i32>
  %i.fw = zext <4 x i1> %i.fu to <4 x i32>
  %i.fx = add <4 x i32> %vec.phi, %i.fv           ; 2 uses
  %i.fy = add <4 x i32> %vec.phi782, %i.fw        ; 2 uses
  %index.next789 = add nuw i64 %index781, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next789, %n.vec773
  br i1 %i.fz, label %middle.block790, label %vector.body780, !llvm.loop !43

middle.block790:                                  ; preds = %vector.body780
  %bin.rdx = add <4 x i32> %i.fy, %i.fx
  %i.ga = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n791, label %._crit_edge634, label %.lr.ph633.preheader838

.lr.ph633.preheader838:                           ; preds = %.lr.ph633.preheader, %middle.block790
  %.0141631.ph = phi i64 [ 0, %.lr.ph633.preheader ], [ %n.vec773, %middle.block790 ]
  %.0142630.ph = phi i32 [ 0, %.lr.ph633.preheader ], [ %i.ga, %middle.block790 ]
  br label %.lr.ph633

._crit_edge634:                                   ; preds = %.lr.ph633, %middle.block790
  %.lcssa750 = phi i32 [ %i.ga, %middle.block790 ], [ %i.gm, %.lr.ph633 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.0143636
  store i32 %.lcssa750, ptr %i.gb, align 4, !tbaa !34
  %i.gc = add nuw i64 %.0143636, 1                ; 2 uses
  %exitcond671.not = icmp eq i64 %i.gc, %i.l
  br i1 %exitcond671.not, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283, label %.lr.ph633.preheader, !llvm.loop !44

.lr.ph633:                                        ; preds = %.lr.ph633.preheader838, %.lr.ph633
  %.0141631 = phi i64 [ %i.gn, %.lr.ph633 ], [ %.0141631.ph, %.lr.ph633.preheader838 ] ; 2 uses
  %.0142630 = phi i32 [ %i.gm, %.lr.ph633 ], [ %.0142630.ph, %.lr.ph633.preheader838 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0141631 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !35
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !37
  %i.gh = fmul float %i.fh, %i.gg
  %i.gi = call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.ff, float %i.gh)
  %i.gj = fadd float %i.fj, %i.gi
  %i.gk = fcmp ole float %i.gj, 0.000000e+00
  %i.gl = zext i1 %i.gk to i32
  %i.gm = add nuw nsw i32 %.0142630, %i.gl        ; 2 uses
  %i.gn = add nuw i64 %.0141631, 1                ; 2 uses
  %exitcond669.not = icmp eq i64 %i.gn, %i.k
  br i1 %exitcond669.not, label %._crit_edge634, label %.lr.ph633, !llvm.loop !45

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302: ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fb, i8 0, i64 %i.cx, i1 false), !tbaa !21
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #16
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread732 ; 18 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302
  store i32 0, ptr %i.go, align 4, !tbaa !34
  %i.gp = getelementptr i8, ptr %i.go, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gp, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !34
  %min.iters.check794 = icmp ult i64 %i.l, 8
  br i1 %min.iters.check794, label %scalar.ph793.preheader, label %vector.ph795

vector.ph795:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309
  %n.vec796 = and i64 %i.l, 1152921504606846968   ; 3 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next799, %vector.body797 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph795 ], [ %vec.ind.next, %vector.body797 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index798 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %vec.ind, ptr %i.gq, align 4, !tbaa !34
  store <4 x i32> %step.add, ptr %i.gr, align 4, !tbaa !34
  %index.next799 = add nuw i64 %index798, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gs = icmp eq i64 %index.next799, %n.vec796
  br i1 %i.gs, label %middle.block800, label %vector.body797, !llvm.loop !46

middle.block800:                                  ; preds = %vector.body797
  %cmp.n801 = icmp eq i64 %i.l, %n.vec796
  br i1 %cmp.n801, label %.lr.ph59.i.preheader, label %scalar.ph793.preheader

scalar.ph793.preheader:                           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309, %middle.block800
  %.04853.i.ph = phi i64 [ 0, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309 ], [ %n.vec796, %middle.block800 ]
  br label %scalar.ph793

.lr.ph59.i.preheader:                             ; preds = %scalar.ph793, %middle.block800
  %i.gt = add nsw i64 %i.l, -2
  br label %.lr.ph59.i

scalar.ph793:                                     ; preds = %scalar.ph793.preheader, %scalar.ph793
  %.04853.i = phi i64 [ %i.gw, %scalar.ph793 ], [ %.04853.i.ph, %scalar.ph793.preheader ] ; 3 uses
  %i.gu = trunc i64 %.04853.i to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.04853.i
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !34
  %i.gw = add nuw i64 %.04853.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gw, %i.l
  br i1 %exitcond.not.i, label %.lr.ph59.i.preheader, label %scalar.ph793, !llvm.loop !47

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %._crit_edge.thread.i
  %.04758.i = phi i64 [ %5, %._crit_edge.thread.i ], [ 0, %.lr.ph59.i.preheader ] ; 8 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.04758.i ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !34       ; 4 uses
  %5 = add nuw i64 %.04758.i, 1                   ; 5 uses
  %6 = xor i64 %.04758.i, -1                      ; 2 uses
  %i.gx = add i64 %i.l, %6                        ; 2 uses
  %min.iters.check804 = icmp ult i64 %i.gx, 8
  br i1 %min.iters.check804, label %.lr.ph57.i.preheader, label %vector.ph805

vector.ph805:                                     ; preds = %.lr.ph59.i
  %i.gy = and i64 %6, 3                           ; 2 uses
  %n.vec806 = sub nuw i64 %i.gx, %i.gy            ; 2 uses
  %i.gz = add i64 %5, %n.vec806
  %broadcast.splatinsert807 = insertelement <2 x i32> poison, i32 %4, i64 0
  %broadcast.splat808 = shufflevector <2 x i32> %broadcast.splatinsert807, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %5
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph805
  %index810 = phi i64 [ 0, %vector.ph805 ], [ %index.next819, %vector.body809 ] ; 2 uses
  %vec.ind811 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph805 ], [ %vec.ind.next820, %vector.body809 ] ; 3 uses
  %vec.phi812 = phi <2 x i32> [ %broadcast.splat808, %vector.ph805 ], [ %i.hh, %vector.body809 ] ; 2 uses
  %vec.phi813 = phi <2 x i32> [ %broadcast.splat808, %vector.ph805 ], [ %i.hi, %vector.body809 ] ; 2 uses
  %vec.phi814 = phi <2 x i64> [ poison, %vector.ph805 ], [ %i.hf, %vector.body809 ]
  %vec.phi815 = phi <2 x i64> [ poison, %vector.ph805 ], [ %i.hg, %vector.body809 ]
  %step.add816 = add nuw <2 x i64> %vec.ind811, splat (i64 2)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index810 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %wide.load817 = load <2 x i32>, ptr %i.hb, align 4, !tbaa !34 ; 2 uses
  %wide.load818 = load <2 x i32>, ptr %i.hc, align 4, !tbaa !34 ; 2 uses
  %i.hd = icmp slt <2 x i32> %wide.load817, %vec.phi812
  %i.he = icmp slt <2 x i32> %wide.load818, %vec.phi813
  %i.hf = select <2 x i1> %i.hd, <2 x i64> %vec.ind811, <2 x i64> %vec.phi814 ; 2 uses
  %i.hg = select <2 x i1> %i.he, <2 x i64> %step.add816, <2 x i64> %vec.phi815 ; 2 uses
  %i.hh = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load817, <2 x i32> %vec.phi812) ; 3 uses
  %i.hi = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load818, <2 x i32> %vec.phi813) ; 3 uses
  %index.next819 = add nuw i64 %index810, 4       ; 2 uses
  %vec.ind.next820 = add nuw <2 x i64> %vec.ind811, splat (i64 4)
  %i.hj = icmp eq i64 %index.next819, %n.vec806
  br i1 %i.hj, label %middle.block821, label %vector.body809, !llvm.loop !48

middle.block821:                                  ; preds = %vector.body809
  %rdx.minmax = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.hh, <2 x i32> %i.hi)
  %i.hk = call i32 @llvm.vector.reduce.smin.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert822 = insertelement <2 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat823 = shufflevector <2 x i32> %broadcast.splatinsert822, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hl = icmp eq <2 x i32> %i.hh, %broadcast.splat823
  %i.hm = icmp eq <2 x i32> %i.hi, %broadcast.splat823
  %i.hn = select <2 x i1> %i.hm, <2 x i64> %i.hg, <2 x i64> splat (i64 -1) ; 2 uses
  %i.ho = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.hf, <2 x i64> %i.hn)
  %rdx.minmax824 = select <2 x i1> %i.hl, <2 x i64> %i.ho, <2 x i64> %i.hn
  %i.hp = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax824)
  %i.hq = add i64 %5, %i.hp
  %i.hr = icmp eq i32 %i.hk, %4
  %i.hs = select i1 %i.hr, i64 %.04758.i, i64 %i.hq ; 2 uses
  %cmp.n825 = icmp eq i64 %i.gy, 0
  br i1 %cmp.n825, label %._crit_edge.i, label %.lr.ph57.i.preheader

.lr.ph57.i.preheader:                             ; preds = %.lr.ph59.i, %middle.block821
  %.056.i.ph = phi i64 [ %5, %.lr.ph59.i ], [ %i.gz, %middle.block821 ]
  %.04455.i.ph = phi i32 [ %4, %.lr.ph59.i ], [ %i.hk, %middle.block821 ]
  %.04554.i.ph = phi i64 [ %.04758.i, %.lr.ph59.i ], [ %i.hs, %middle.block821 ]
  br label %.lr.ph57.i

._crit_edge.i:                                    ; preds = %.lr.ph57.i, %middle.block821
  %.146.i.lcssa = phi i64 [ %i.hs, %middle.block821 ], [ %.146.i, %.lr.ph57.i ] ; 3 uses
  %i.ht = icmp eq i64 %.146.i.lcssa, %.04758.i
  br i1 %i.ht, label %._crit_edge.thread.i, label %bb.f

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader, %.lr.ph57.i
  %.056.i = phi i64 [ %i.hw, %.lr.ph57.i ], [ %.056.i.ph, %.lr.ph57.i.preheader ] ; 3 uses
  %.04455.i = phi i32 [ %.1.i, %.lr.ph57.i ], [ %.04455.i.ph, %.lr.ph57.i.preheader ] ; 2 uses
  %.04554.i = phi i64 [ %.146.i, %.lr.ph57.i ], [ %.04554.i.ph, %.lr.ph57.i.preheader ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.056.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !34 ; 2 uses
  %.not610 = icmp slt i32 %i.hv, %.04455.i
  %.146.i = select i1 %.not610, i64 %.056.i, i64 %.04554.i ; 2 uses
  %.1.i = call i32 @llvm.smin.i32(i32 %i.hv, i32 %.04455.i)
  %i.hw = add nuw i64 %.056.i, 1                  ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.hw, %i.l
  br i1 %exitcond60.not.i, label %._crit_edge.i, label %.lr.ph57.i, !llvm.loop !49

bb.f:                                             ; preds = %._crit_edge.i
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.146.i.lcssa ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !34
  store i32 %i.hy, ptr %3, align 4, !tbaa !34
  store i32 %4, ptr %i.hx, align 4, !tbaa !34
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.04758.i ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.146.i.lcssa ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !34
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !34
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !34
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !34
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.f, %._crit_edge.i
  %exitcond672 = icmp eq i64 %.04758.i, %i.gt
  br i1 %exitcond672, label %.lr.ph640, label %.lr.ph59.i, !llvm.loop !50

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317: ; preds = %.lr.ph640
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #16
          to label %.lr.ph644 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit257.thread ; 22 uses

.lr.ph644:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317
  %i.ie = add i64 %i.cx, -12
  %i.if = getelementptr i8, ptr %i.id, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.if, i8 0, i64 %i.ie, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 4 dereferenceable(12) %i.fb, i64 12, i1 false), !tbaa.struct !51
  %i.ig = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  br label %.backedge

.lr.ph640:                                        ; preds = %._crit_edge.thread.i, %.lr.ph640
  %.0140639 = phi i64 [ %i.is, %.lr.ph640 ], [ 0, %._crit_edge.thread.i ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.0140639
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !34
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.ij
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %.0140639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) %i.ik, i64 12, i1 false), !tbaa.struct !51
  %i.im = or disjoint i64 %.0140639, 1            ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !34
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ir, ptr noundef nonnull align 4 dereferenceable(12) %i.iq, i64 12, i1 false), !tbaa.struct !51
  %i.is = add nuw i64 %.0140639, 2                ; 2 uses
  %exitcond674.not.1 = icmp eq i64 %i.is, %i.l
  br i1 %exitcond674.not.1, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317, label %.lr.ph640, !llvm.loop !52

._crit_edge645:                                   ; preds = %bb.m
  %i.it = icmp slt i32 %.1138, 4
  br i1 %i.it, label %bb.ab, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit257.thread:          ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph644
  %.0136643 = phi i64 [ 0, %.lr.ph644 ], [ %.0136643.be, %.backedge.backedge ] ; 5 uses
  %.0137642 = phi i32 [ 0, %.lr.ph644 ], [ %.0137642.be, %.backedge.backedge ] ; 7 uses
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %.0136643 ; 2 uses
  %.sroa.0416.0.copyload = load <2 x float>, ptr %i.iv, align 4 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !21 ; 3 uses
  %i.iw = icmp sgt i32 %.0137642, 0
  br i1 %i.iw, label %.lr.ph.i201, label %.loopexit

.lr.ph.i201:                                      ; preds = %.backedge
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.0416.0.copyload, i64 0
  %i.ix = fpext float %.sroa.09.0.vec.extract.i to double ; 3 uses
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.0416.0.copyload, i64 1
  %i.iy = fpext float %.sroa.09.4.vec.extract.i to double ; 3 uses
  %i.iz = fmul double %i.iy, %i.iy
  %i.ja = call double @llvm.fmuladd.f64(double %i.ix, double %i.ix, double %i.iz)
  %sqrt.i15.i = call noundef double @llvm.sqrt.f64(double %i.ja)
  %wide.trip.count = zext nneg i32 %.0137642 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i201
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph.i201 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %indvars.iv ; 3 uses
  %i.jc = load <2 x float>, ptr %i.jb, align 4, !tbaa !21
  %i.jd = fpext <2 x float> %i.jc to <2 x double> ; 3 uses
  %i.je = insertelement <2 x double> %i.jd, double %i.iy, i64 0
  %i.jf = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = fmul <2 x double> %i.je, %i.jf
  %i.jh = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = insertelement <2 x double> %i.jh, double %i.ix, i64 0
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.ji, <2 x double> %i.jg) ; 2 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 1
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.jk)
  %i.jl = fmul double %sqrt.i15.i, %sqrt.i.i
  %i.jm = extractelement <2 x double> %i.jj, i64 0
  %i.jn = fdiv double %i.jm, %i.jl
  %i.jo = call double @acos(double noundef %i.jn) #14
  %i.jp = fcmp olt double %i.jo, 5.000000e-01
  br i1 %i.jp, label %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond676.not, label %.loopexit, label %bb.g, !llvm.loop !53

.loopexit:                                        ; preds = %bb.h, %.backedge
  %i.jq = sext i32 %.0137642 to i64
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %i.jq ; 2 uses
  store <2 x float> %.sroa.0416.0.copyload, ptr %i.jr, align 4
  %.sroa.9.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx420, align 4, !tbaa !21
  %i.js = add nsw i32 %.0137642, 1
  br label %bb.k

_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit: ; preds = %bb.g
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !42
  %i.jv = call noundef float @llvm.fabs.f32(float %i.ju)
  %i.jw = call noundef float @llvm.fabs.f32(float %.sroa.9.0.copyload)
  %i.jx = fcmp olt float %i.jv, %i.jw
  br i1 %i.jx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.0136643
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !34
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !34
  %i.kc = add i32 %i.jz, 1
  %i.kd = sub i32 %i.kc, %i.kb
  %i.ke = icmp ult i32 %i.kd, 3
  br i1 %i.ke, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store <2 x float> %.sroa.0416.0.copyload, ptr %i.jb, align 4
  store float %.sroa.9.0.copyload, ptr %i.jt, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit, %bb.i, %bb.j, %.loopexit
  %.1138 = phi i32 [ %.0137642, %bb.j ], [ %.0137642, %bb.i ], [ %.0137642, %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit ], [ %i.js, %.loopexit ] ; 3 uses
  %i.kf = icmp eq i32 %.1138, 4
  br i1 %i.kf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.0136643
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !34
  %i.ki = load i32, ptr %i.ig, align 4, !tbaa !34
  %i.kj = add i32 %i.kh, -3
  %i.kk = sub i32 %i.kj, %i.ki
  %i.kl = icmp ult i32 %i.kk, -5
  %i.km = add nuw i64 %.0136643, 1                ; 2 uses
  %exitcond678.not708 = icmp eq i64 %i.km, %i.l
  %or.cond = select i1 %i.kl, i1 true, i1 %exitcond678.not708
  br i1 %or.cond, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %bb.m
  %.0136643.be = phi i64 [ %i.kn, %bb.m ], [ %i.km, %bb.l ]
  %.0137642.be = phi i32 [ %.1138, %bb.m ], [ 4, %bb.l ]
  br label %.backedge, !llvm.loop !54

bb.m:                                             ; preds = %bb.k
  %i.kn = add nuw i64 %.0136643, 1                ; 2 uses
  %exitcond678.not = icmp eq i64 %i.kn, %i.l
  br i1 %exitcond678.not, label %._crit_edge645, label %.backedge.backedge

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.l, %._crit_edge645
  %i.ko = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
          to label %.noexc224 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit255 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !41
  %i.ks = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !42 ; 2 uses
  %i.ku = fdiv float %i.kr, %i.kt
  %i.kv = fpext float %i.ku to double
  %i.kw = load float, ptr %i.id, align 4, !tbaa !39
  %i.kx = fdiv float %i.kw, %i.kt
  %i.ky = fpext float %i.kx to double
  %i.kz = call double @atan2(double noundef %i.kv, double noundef %i.ky) #14
  %i.la = fptrunc double %i.kz to float           ; 4 uses
  store float %i.la, ptr %i.ko, align 4, !tbaa !21
  %i.lb = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !41
  %i.le = getelementptr inbounds nuw i8, ptr %i.id, i64 20
  %i.lf = load float, ptr %i.le, align 4, !tbaa !42 ; 2 uses
  %i.lg = fdiv float %i.ld, %i.lf
  %i.lh = fpext float %i.lg to double
  %i.li = load float, ptr %i.lb, align 4, !tbaa !39
  %i.lj = fdiv float %i.li, %i.lf
  %i.lk = fpext float %i.lj to double
  %i.ll = call double @atan2(double noundef %i.lh, double noundef %i.lk) #14
  %i.lm = fptrunc double %i.ll to float           ; 4 uses
  store float %i.lm, ptr %i.kp, align 4, !tbaa !21
  %i.ln = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.id, i64 28
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !41
  %i.lq = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !42 ; 2 uses
  %i.ls = fdiv float %i.lp, %i.lr
  %i.lt = fpext float %i.ls to double
  %i.lu = load float, ptr %i.ln, align 4, !tbaa !39
  %i.lv = fdiv float %i.lu, %i.lr
  %i.lw = fpext float %i.lv to double
  %i.lx = call double @atan2(double noundef %i.lt, double noundef %i.lw) #14
  %i.ly = fptrunc double %i.lx to float           ; 4 uses
end_hunk_0
