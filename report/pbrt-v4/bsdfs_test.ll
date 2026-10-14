Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN29Hair_WhiteFurnaceSampled_Test8TestBodyEv:bb.a
  %i.bv = fmul float %spec.select.1.i, f0x3FE9EB96
  %i.bw = fsub float f0x3F5B5E7F, %i.bv
  %i.bx = call noundef float @atanhf(float noundef %i.bw) #31, !noalias !320
  %i.by = fmul float %i.bx, f0x430AE38E
  %i.bz = fsub float 5.380000e+02, %i.by          ; 4 uses
  store float %i.bz, ptr %i.c, align 4, !tbaa !28, !alias.scope !320
  %i.ca = fcmp olt float %i.bz, 3.600000e+02
  %i.cb = fcmp ogt float %i.bz, 8.300000e+02
  %or.cond.i.1.i = or i1 %i.ca, %i.cb
  br i1 %or.cond.i.1.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %i.cc = fadd float %i.bz, -5.380000e+02
  %i.cd = fmul float %i.cc, 7.200000e-03
  %i.ce = call noundef float @coshf(float noundef %i.cd) #31, !noalias !320 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = fdiv float f0x3B811979, %i.cf
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i:       ; preds = %bb.g, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %.0.i.1.i = phi float [ %i.cg, %bb.g ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i ]
  store float %.0.i.1.i, ptr %i.d, align 4, !tbaa !28, !alias.scope !320
  %i.ch = fadd float %.sroa.speculated.i49, 5.000000e-01 ; 3 uses
  %i.ci = fcmp ogt float %i.ch, 1.000000e+00
  %i.cj = fadd float %i.ch, -1.000000e+00
  %spec.select.2.i = select i1 %i.ci, float %i.cj, float %i.ch
  %i.ck = fmul float %spec.select.2.i, f0x3FE9EB96
  %i.cl = fsub float f0x3F5B5E7F, %i.ck
  %i.cm = call noundef float @atanhf(float noundef %i.cl) #31, !noalias !320
  %i.cn = fmul float %i.cm, f0x430AE38E
  %i.co = fsub float 5.380000e+02, %i.cn          ; 4 uses
  store float %i.co, ptr %i.e, align 4, !tbaa !28, !alias.scope !320
  %i.cp = fcmp olt float %i.co, 3.600000e+02
  %i.cq = fcmp ogt float %i.co, 8.300000e+02
  %or.cond.i.2.i = or i1 %i.cp, %i.cq
  br i1 %or.cond.i.2.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %i.cr = fadd float %i.co, -5.380000e+02
  %i.cs = fmul float %i.cr, 7.200000e-03
  %i.ct = call noundef float @coshf(float noundef %i.cs) #31, !noalias !320 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = fdiv float f0x3B811979, %i.cu
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i:       ; preds = %bb.h, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %.0.i.2.i = phi float [ %i.cv, %bb.h ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i ]
  store float %.0.i.2.i, ptr %i.f, align 4, !tbaa !28, !alias.scope !320
  %i.cw = fadd float %.sroa.speculated.i49, 7.500000e-01 ; 3 uses
  %i.cx = fcmp ogt float %i.cw, 1.000000e+00
  %i.cy = fadd float %i.cw, -1.000000e+00
  %spec.select.3.i = select i1 %i.cx, float %i.cy, float %i.cw
  %i.cz = fmul float %spec.select.3.i, f0x3FE9EB96
  %i.da = fsub float f0x3F5B5E7F, %i.cz
  %i.db = call noundef float @atanhf(float noundef %i.da) #31, !noalias !320
  %i.dc = fmul float %i.db, f0x430AE38E
  %i.dd = fsub float 5.380000e+02, %i.dc          ; 4 uses
  store float %i.dd, ptr %i.a, align 4, !tbaa !28, !alias.scope !320
  %i.de = fcmp olt float %i.dd, 3.600000e+02
  %i.df = fcmp ogt float %i.dd, 8.300000e+02
  %or.cond.i.3.i = or i1 %i.de, %i.df
  br i1 %or.cond.i.3.i, label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i
  %i.dg = fadd float %i.dd, -5.380000e+02
  %i.dh = fmul float %i.dg, 7.200000e-03
  %i.di = call noundef float @coshf(float noundef %i.dh) #31, !noalias !320 ; 2 uses
  %i.dj = fmul float %i.di, %i.di
  %i.dk = fdiv float f0x3B811979, %i.dj
  br label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit

_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit: ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, %bb.i
  %.0.i.3.i = phi float [ %i.dk, %bb.i ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i ]
  store float %.0.i.3.i, ptr %i.g, align 4, !tbaa !28, !alias.scope !320
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit59, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %.lr.ph.i51
  %.023.i52 = phi i64 [ %i.dl, %.lr.ph.i51 ], [ %indvars.iv, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ] ; 3 uses
  %.01922.i53 = phi i64 [ %i.dm, %.lr.ph.i51 ], [ 0, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %.02021.i54 = phi float [ %i.dn, %.lr.ph.i51 ], [ 1.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %i.dl = udiv i64 %.023.i52, %i.o                ; 2 uses
  %reass.add.i55 = sub i64 %.01922.i53, %i.dl
  %reass.mul.i56 = mul i64 %reass.add.i55, %i.o
  %i.dm = add i64 %reass.mul.i56, %.023.i52       ; 3 uses
  %i.dn = fmul float %i.ag, %.02021.i54           ; 2 uses
  %i.do = icmp samesign uge i64 %.023.i52, %i.o
  %i.dp = icmp ult i64 %i.dm, %i.q
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph.i51, label %._crit_edge.loopexit.i57, !llvm.loop !3

._crit_edge.loopexit.i57:                         ; preds = %.lr.ph.i51
  %i.dr = uitofp i64 %i.dm to float
  %i.ds = fmul float %i.dn, %i.dr
  br label %_ZN4pbrt14RadicalInverseEim.exit59

_ZN4pbrt14RadicalInverseEim.exit59:               ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %._crit_edge.loopexit.i57
  %i.dt = phi float [ 0.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ], [ %i.ds, %._crit_edge.loopexit.i57 ] ; 2 uses
  %i.du = fcmp ogt float %i.dt, f0x3F7FFFFF
  %.sroa.speculated.i58 = select i1 %i.du, float f0x3F7FFFFF, float %i.dt
  %i.dv = fpext float %.sroa.speculated.i58 to double
  %i.dw = fmul double %i.dv, 2.000000e+00
  %i.dx = fadd double %i.dw, -1.000000e+00        ; 3 uses
  %i.dy = fcmp olt double %i.dx, f0xBFEFFFFDE7210BE9
  %i.dz = fcmp ogt double %i.dx, f0x3FEFFFFDE7210BE9
  %..i = select i1 %i.dz, double f0x3FEFFFFDE7210BE9, double %i.dx
  %.0.i = select i1 %i.dy, double f0xBFEFFFFDE7210BE9, double %..i
  %i.ea = fptrunc double %.0.i to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %3, float noundef %i.ea, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %.0131, float noundef %.037130, float noundef 0.000000e+00)
  %i.eb = udiv i64 -1, %i.s
  %i.ec = sub nuw i64 %i.eb, %i.s
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit89, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit59, %.lr.ph.i61
  %.023.i62 = phi i64 [ %i.ed, %.lr.ph.i61 ], [ %indvars.iv, %_ZN4pbrt14RadicalInverseEim.exit59 ] ; 3 uses
  %.01922.i63 = phi i64 [ %i.ee, %.lr.ph.i61 ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %.02021.i64 = phi float [ %i.ef, %.lr.ph.i61 ], [ 1.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %i.ed = udiv i64 %.023.i62, %i.s                ; 2 uses
  %reass.add.i65 = sub i64 %.01922.i63, %i.ed
  %reass.mul.i66 = mul i64 %reass.add.i65, %i.s
  %i.ee = add i64 %reass.mul.i66, %.023.i62       ; 3 uses
  %i.ef = fmul float %i.ah, %.02021.i64           ; 2 uses
  %i.eg = icmp samesign uge i64 %.023.i62, %i.s
  %i.eh = icmp ult i64 %i.ee, %i.ec
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph.i61, label %.lr.ph.i71.preheader, !llvm.loop !3

.lr.ph.i71.preheader:                             ; preds = %.lr.ph.i61
  %i.ej = uitofp i64 %i.ee to float
  %i.ek = fmul float %i.ef, %i.ej                 ; 2 uses
  %i.el = fcmp ogt float %i.ek, f0x3F7FFFFF
  %.sroa.speculated.i68 = select i1 %i.el, float f0x3F7FFFFF, float %i.ek
  %i.em = udiv i64 -1, %i.u
  %i.en = sub nuw i64 %i.em, %i.u
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.023.i72 = phi i64 [ %i.eo, %.lr.ph.i71 ], [ %indvars.iv, %.lr.ph.i71.preheader ] ; 3 uses
  %.01922.i73 = phi i64 [ %i.ep, %.lr.ph.i71 ], [ 0, %.lr.ph.i71.preheader ]
  %.02021.i74 = phi float [ %i.eq, %.lr.ph.i71 ], [ 1.000000e+00, %.lr.ph.i71.preheader ]
  %i.eo = udiv i64 %.023.i72, %i.u                ; 2 uses
  %reass.add.i75 = sub i64 %.01922.i73, %i.eo
  %reass.mul.i76 = mul i64 %reass.add.i75, %i.u
  %i.ep = add i64 %reass.mul.i76, %.023.i72       ; 3 uses
  %i.eq = fmul float %i.ai, %.02021.i74           ; 2 uses
  %i.er = icmp samesign uge i64 %.023.i72, %i.u
  %i.es = icmp ult i64 %i.ep, %i.en
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  br i1 %i.et, label %.lr.ph.i71, label %.lr.ph.i81.preheader, !llvm.loop !3

.lr.ph.i81.preheader:                             ; preds = %.lr.ph.i71
  %i.eu = uitofp i64 %i.ep to float
  %i.ev = fmul float %i.eq, %i.eu                 ; 2 uses
  %i.ew = fcmp ogt float %i.ev, f0x3F7FFFFF
  %.sroa.speculated.i78 = select i1 %i.ew, float f0x3F7FFFFF, float %i.ev
  %i.ex = udiv i64 -1, %i.x
  %i.ey = sub nuw i64 %i.ex, %i.x
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %.023.i82 = phi i64 [ %i.ez, %.lr.ph.i81 ], [ %indvars.iv, %.lr.ph.i81.preheader ] ; 3 uses
  %.01922.i83 = phi i64 [ %i.fa, %.lr.ph.i81 ], [ 0, %.lr.ph.i81.preheader ]
  %.02021.i84 = phi float [ %i.fb, %.lr.ph.i81 ], [ 1.000000e+00, %.lr.ph.i81.preheader ]
  %i.ez = udiv i64 %.023.i82, %i.x                ; 2 uses
  %reass.add.i85 = sub i64 %.01922.i83, %i.ez
  %reass.mul.i86 = mul i64 %reass.add.i85, %i.x
  %i.fa = add i64 %reass.mul.i86, %.023.i82       ; 3 uses
  %i.fb = fmul float %i.z, %.02021.i84            ; 2 uses
  %i.fc = icmp samesign uge i64 %.023.i82, %i.x
  %i.fd = icmp ult i64 %i.fa, %i.ey
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.lr.ph.i81, label %._crit_edge.loopexit.i87, !llvm.loop !3

._crit_edge.loopexit.i87:                         ; preds = %.lr.ph.i81
  %i.ff = uitofp i64 %i.fa to float
  %i.fg = fmul float %i.fb, %i.ff
  br label %_ZN4pbrt14RadicalInverseEim.exit89

_ZN4pbrt14RadicalInverseEim.exit89:               ; preds = %_ZN4pbrt14RadicalInverseEim.exit59, %._crit_edge.loopexit.i87
  %.sroa.speculated.i78157 = phi float [ %.sroa.speculated.i78, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %.sroa.speculated.i68153156 = phi float [ %.sroa.speculated.i68, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %i.fh = phi float [ %i.fg, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ] ; 2 uses
  %i.fi = fcmp ogt float %i.fh, f0x3F7FFFFF
  %.sroa.speculated.i88 = select i1 %i.fi, float f0x3F7FFFFF, float %i.fh
  %.sroa.0110.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i78157, i64 0
  %.sroa.0110.4.vec.insert = insertelement <2 x float> %.sroa.0110.0.vec.insert, float %.sroa.speculated.i88, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %4, ptr noundef nonnull align 4 dereferenceable(76) %3, <2 x float> <float f0x3F0CC442, float f0x3D0995D9>, float f0x3F55A6B1, float noundef %.sroa.speculated.i68153156, <2 x float> %.sroa.0110.4.vec.insert, i32 noundef 0, i32 noundef 3)
  %i.fj = load i8, ptr %i.aa, align 4, !tbaa !41, !range !42, !noundef !43
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8
  %i.fl = call noundef float @llvm.fabs.f32(float %.sroa.22.0.copyload)
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %4, align 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !77
  %10 = load <4 x float>, ptr %i.ab, align 4
  %i.fm = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %.sroa.0.0.copyload.i
  %i.fp = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fdiv <2 x float> %i.fo, %i.fp
  %i.fr = fmul <2 x float> %i.fn, %.sroa.6.0.copyload.i
  %i.fs = fdiv <2 x float> %i.fr, %i.fp
  store <2 x float> %i.fq, ptr %5, align 8
  store <2 x float> %i.fs, ptr %i.ac, align 8
  %i.ft = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.fu = fadd float %.038129, %i.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4pbrt14RadicalInverseEim.exit89
  %.139 = phi float [ %i.fu, %bb.j ], [ %.038129, %_ZN4pbrt14RadicalInverseEim.exit89 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !318

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.fv = load ptr, ptr %7, align 8, !tbaa !125
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, double noundef %i.ao)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.v ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.fy = load ptr, ptr %9, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 745, ptr noundef %i.fy)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  %i.fz = load ptr, ptr %9, align 8, !tbaa !88    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ae
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.gb = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.gd = load ptr, ptr %7, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ge = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.t

.noexc.i.i:                                       ; preds = %bb.q
  br i1 %i.ge, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.noexc.i.i
  %i.gf = load ptr, ptr %7, align 8, !tbaa !125   ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !68
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #31, !inline_history !0
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #34
  unreachable

bb.u:                                             ; preds = %bb.l
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %bb.m
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.x:                                             ; preds = %bb.n
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.y ], [ %i.gp, %bb.x ] ; 2 uses
  %i.gr = load ptr, ptr %9, align 8, !tbaa !88    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ae
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.z
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.gn, %bb.v ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.gm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ac:                                            ; preds = %bb.s, %bb.r, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pr = load ptr, ptr %i.ad, align 8, !tbaa !122
  %.not.i.i.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i108, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i109 unwind label %bb.ag

.noexc.i.i109:                                    ; preds = %bb.ad
  br i1 %i.gv, label %bb.ae, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ae:                                            ; preds = %.noexc.i.i109
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 4 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !88 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.af
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !77
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.d, %bb.ac, %.noexc.i.i109, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.hf = fpext float %.037130 to double
  %i.hg = fadd double %i.hf, 2.000000e-01         ; 2 uses
  %i.hh = fptrunc double %i.hg to float
  %i.hi = fcmp olt double %i.hg, f0x3FEFFFFFF0000000
  br i1 %i.hi, label %.preheader, label %bb.c, !llvm.loop !319
}

declare void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 4, ptr noundef nonnull align 4 dereferenceable(76), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZNK4pbrt27TrowbridgeReitzDistribution1GENS_7Vector3IfEES2_:bb.a
  %i.u = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.v = fcmp olt float %i.u, -1.000000e+00
  %i.w = extractelement <2 x i1> %i.q, i64 1
  %..i.i21.i = select i1 %i.w, float 1.000000e+00, float %i.u
  %.0.i.i22.i = select i1 %i.v, float -1.000000e+00, float %..i.i21.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.c, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.x = phi float [ %i.t, %bb.c ], [ %i.j, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.y = phi float [ %.0.i.i22.i, %bb.c ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !164
  %i.ab = fmul float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = fadd float %i.x, %i.ac
  %i.ae = fmul float %i.d, %i.ad
  %i.af = fadd float %i.ae, 1.000000e+00
  %i.ag = tail call noundef float @sqrtf(float noundef %i.af) #31
  %i.ah = fadd float %i.ag, -1.000000e+00
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = fadd float %i.ai, 1.000000e+00
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit: ; preds = %bb.a, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i
  %.0.i = phi float [ %i.aj, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.ak = fmul float %4, %4                       ; 2 uses
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %.sroa.speculated.i.i.i15 = select i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.an = fdiv float %.sroa.speculated.i.i.i15, %i.ak ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit25, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit
  %i.aq = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i15) #31 ; 2 uses
  %i.ar = fcmp oeq float %i.aq, 0.000000e+00
  br i1 %i.ar, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i24, label %bb.e

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i24:  ; preds = %bb.d
  %i.as = load float, ptr %0, align 4, !tbaa !163 ; 2 uses
  %i.at = fmul float %i.as, %i.as
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i22

bb.e:                                             ; preds = %bb.d
  %i.au = load float, ptr %0, align 4, !tbaa !163
  %i.av = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x float> %3, %i.aw              ; 3 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = fcmp olt float %i.ay, -1.000000e+00
  %i.ba = fcmp ogt <2 x float> %i.ax, splat (float 1.000000e+00) ; 2 uses
  %i.bb = extractelement <2 x i1> %i.ba, i64 0
  %..i.i.i17 = select i1 %i.bb, float 1.000000e+00, float %i.ay
  %.0.i.i.i18 = select i1 %i.az, float -1.000000e+00, float %..i.i.i17
  %i.bc = fmul float %.0.i.i.i18, %i.au           ; 2 uses
  %i.bd = fmul float %i.bc, %i.bc
  %i.be = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bf = fcmp olt float %i.be, -1.000000e+00
  %i.bg = extractelement <2 x i1> %i.ba, i64 1
  %..i.i21.i20 = select i1 %i.bg, float 1.000000e+00, float %i.be
  %.0.i.i22.i21 = select i1 %i.bf, float -1.000000e+00, float %..i.i21.i20
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i22

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i22:         ; preds = %bb.e, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i24
  %i.bh = phi float [ %i.bd, %bb.e ], [ %i.at, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i24 ]
  %i.bi = phi float [ %.0.i.i22.i21, %bb.e ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i24 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !164
  %i.bl = fmul float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl
  %i.bn = fadd float %i.bh, %i.bm
  %i.bo = fmul float %i.an, %i.bn
  %i.bp = fadd float %i.bo, 1.000000e+00
  %i.bq = tail call noundef float @sqrtf(float noundef %i.bp) #31
  %i.br = fadd float %i.bq, -1.000000e+00
  %i.bs = fmul float %i.br, 5.000000e-01
  %i.bt = fadd float %.0.i, %i.bs
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit25

_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit25: ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i22
  %.0.i23 = phi float [ %i.bt, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i22 ], [ %.0.i, %_ZNK4pbrt27TrowbridgeReitzDistribution6LambdaENS_7Vector3IfEE.exit ]
  %i.bu = fdiv float 1.000000e+00, %.0.i23
  ret float %i.bu
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %0, <2 x float> %1) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fcmp ogt float %0, 1.000000e+00
  %..i = select i1 %i.b, float 1.000000e+00, float %0
  %.0.i = select i1 %i.a, float 0.000000e+00, float %..i ; 6 uses
  %i.c = fmul float %.0.i, %.0.i
  %i.d = fsub float 1.000000e+00, %i.c            ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %1, %1
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 7 uses
  %i.f = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.g = fsub float %i.e, %i.f                    ; 4 uses
  %i.h = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.i = fadd float %i.h, %i.h                    ; 4 uses
  %i.j = fmul float %i.g, %i.g
  %i.k = fmul float %i.i, %i.i
  %i.l = fadd float %i.j, %i.k
  %i.m = fdiv float 1.000000e+00, %i.l            ; 2 uses
  %i.n = fmul float %i.g, %i.d
  %i.o = fmul float %i.i, 0.000000e+00
  %i.p = fadd float %i.o, %i.n
  %i.q = fmul float %i.p, %i.m
  %i.r = fmul float %i.g, 0.000000e+00
  %i.s = fmul float %i.i, %i.d
  %i.t = fsub float %i.r, %i.s
  %i.u = fmul float %i.t, %i.m
  %i.v = fsub float 1.000000e+00, %i.q            ; 4 uses
  %i.w = fsub float 0.000000e+00, %i.u            ; 4 uses
  %i.x = fmul float %i.v, %i.v
  %i.y = fmul float %i.w, %i.w
  %i.z = fadd float %i.x, %i.y                    ; 2 uses
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.ab = fadd float %i.aa, %sqrt.i.i
  %i.ac = fmul float %i.ab, 5.000000e-01
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ac) ; 3 uses
  %i.ad = fmul float %i.w, 5.000000e-01
  %i.ae = fdiv float %i.ad, %sqrt.i               ; 2 uses
  %i.af = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.af, label %_ZN4pstd4sqrtIfEENS_7complexIT_EERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = fcmp ult float %i.v, 0.000000e+00
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.vec.insert14.i = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %.sroa.0.4.vec.insert18.i = insertelement <2 x float> %.sroa.0.0.vec.insert14.i, float %i.ae, i64 1
  br label %_ZN4pstd4sqrtIfEENS_7complexIT_EERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ai = tail call noundef float @llvm.copysign.f32(float %sqrt.i, float %i.w)
  %.sroa.0.0.vec.insert16.i = insertelement <2 x float> poison, float %i.ah, i64 0
  %.sroa.0.4.vec.insert20.i = insertelement <2 x float> %.sroa.0.0.vec.insert16.i, float %i.ai, i64 1
  br label %_ZN4pstd4sqrtIfEENS_7complexIT_EERKS3_.exit

_ZN4pstd4sqrtIfEENS_7complexIT_EERKS3_.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert18.i, %bb.c ], [ %.sroa.0.4.vec.insert20.i, %bb.d ], [ zeroinitializer, %bb.a ] ; 3 uses
  %.sroa.0.0.vec.extract.i28 = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i29 = extractelement <2 x float> %.sroa.0.0.i, i64 1 ; 4 uses
  %i.aj = fmul float %.sroa.0.0.vec.extract.i, %.0.i
  %i.ak = fmul float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %i.al = fsub float %i.aj, %i.ak                 ; 2 uses
  %i.am = fmul float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %i.an = fmul float %.sroa.0.4.vec.extract.i, %.0.i
  %i.ao = fadd float %i.am, %i.an                 ; 2 uses
  %i.ap = fsub float %i.al, %.sroa.0.0.vec.extract.i28 ; 2 uses
  %i.aq = fsub float %i.ao, %.sroa.0.4.vec.extract.i29 ; 2 uses
  %i.ar = fadd float %i.al, %.sroa.0.0.vec.extract.i28 ; 3 uses
  %i.as = fadd float %i.ao, %.sroa.0.4.vec.extract.i29 ; 3 uses
  %i.at = fmul float %i.ar, %i.ap
  %i.au = fmul float %i.as, %i.aq
  %i.av = fadd float %i.at, %i.au
  %i.aw = fmul float %i.ar, %i.aq
  %i.ax = fmul float %i.as, %i.ap
  %i.ay = fsub float %i.aw, %i.ax
  %foldExtExtBinop85 = fmul <2 x float> %1, %.sroa.0.0.i
  %i.az = extractelement <2 x float> %foldExtExtBinop85, i64 0
  %i.ba = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i29
  %i.bb = fsub float %i.az, %i.ba                 ; 2 uses
  %i.bc = fmul float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract.i29
  %i.bd = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.0.vec.extract.i28
  %i.be = fadd float %i.bc, %i.bd                 ; 2 uses
  %i.bf = fsub float %.0.i, %i.bb                 ; 2 uses
  %i.bg = fsub float 0.000000e+00, %i.be          ; 2 uses
  %i.bh = fadd float %.0.i, %i.bb                 ; 3 uses
  %i.bi = fadd float %i.be, 0.000000e+00          ; 3 uses
  %i.bj = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1 ; 2 uses
  %i.bl = fmul <2 x float> %i.bk, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = fadd <2 x float> %i.bl, %i.bo
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.br = fdiv <4 x float> splat (float 1.000000e+00), %i.bq
  %i.bs = fmul float %i.bh, %i.bf
  %i.bt = fmul float %i.bi, %i.bg
  %i.bu = fadd float %i.bs, %i.bt
  %i.bv = fmul float %i.bh, %i.bg
  %i.bw = fmul float %i.bi, %i.bf
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.ay, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bu, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 3
  %i.cc = fmul <4 x float> %i.cb, %i.br           ; 2 uses
  %i.cd = fmul <4 x float> %i.cc, %i.cc           ; 4 uses
  %shift = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop87 = fadd <4 x float> %i.cd, %shift
  %shift89 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop90 = fadd <4 x float> %i.cd, %shift89
  %shift92 = shufflevector <4 x float> %foldExtExtBinop90, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop93 = fadd <4 x float> %foldExtExtBinop87, %shift92
  %i.ce = extractelement <4 x float> %foldExtExtBinop93, i64 0
  %i.cf = fmul float %i.ce, 5.000000e-01
  ret float %i.cf
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEENUlRNS_16StatsAccumulatorEE_8__invokeES6_(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEE7numTrue) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEE5total) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  tail call void @_ZN4pbrt16StatsAccumulator15ReportRareCheckEPKcfll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.80, float noundef f0x3727C5AC, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i64 0, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = fmul float %2, %2                        ; 2 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.c, float %i.b, float 0.000000e+00 ; 2 uses
  %i.d = fdiv float %.sroa.speculated.i.i.i.i, %i.a ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp oeq float %i.e, +inf
  br i1 %i.f, label %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i, label %bb.c

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i:  ; preds = %bb.b
  %i.i = load float, ptr %0, align 4, !tbaa !163  ; 2 uses
  %i.j = fmul float %i.i, %i.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load float, ptr %0, align 4, !tbaa !163
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %1, %i.m                ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.p = fcmp olt float %i.o, -1.000000e+00
  %i.q = fcmp ogt <2 x float> %i.n, splat (float 1.000000e+00) ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %..i.i.i.i = select i1 %i.r, float 1.000000e+00, float %i.o
  %.0.i.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i.i
  %i.s = fmul float %.0.i.i.i.i, %i.k             ; 2 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.v = fcmp olt float %i.u, -1.000000e+00
  %i.w = extractelement <2 x i1> %i.q, i64 1
  %..i.i21.i.i = select i1 %i.w, float 1.000000e+00, float %i.u
  %.0.i.i22.i.i = select i1 %i.v, float -1.000000e+00, float %..i.i21.i.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i:         ; preds = %bb.c, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i
  %i.x = phi float [ %i.t, %bb.c ], [ %i.j, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i ]
  %i.y = phi float [ %.0.i.i22.i.i, %bb.c ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !164
  %i.ab = fmul float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = fadd float %i.x, %i.ac
  %i.ae = fmul float %i.d, %i.ad
  %i.af = fadd float %i.ae, 1.000000e+00
  %i.ag = tail call noundef float @sqrtf(float noundef %i.af) #31
  %i.ah = fadd float %i.ag, -1.000000e+00
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = fadd float %i.ai, 1.000000e+00
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit: ; preds = %bb.a, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i
  %.0.i.i = phi float [ %i.aj, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i ], [ 1.000000e+00, %bb.a ]
  %i.ak = fmul float %4, %4                       ; 4 uses
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.an = fdiv float %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit
  %i.aq = fmul float %i.ak, %i.ak                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e-16
  br i1 %i.ar, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i, label %bb.f

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i:    ; preds = %bb.e
  %i.au = load float, ptr %0, align 4, !tbaa !163 ; 2 uses
  %i.av = fdiv float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ax = load float, ptr %0, align 4, !tbaa !163 ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %3, %i.az              ; 3 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt float %i.bb, -1.000000e+00
  %i.bd = fcmp ogt <2 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %..i.i.i = select i1 %i.be, float 1.000000e+00, float %i.bb
  %.0.i.i.i = select i1 %i.bc, float -1.000000e+00, float %..i.i.i
  %i.bf = fdiv float %.0.i.i.i, %i.ax             ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %i.bh = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bi = fcmp olt float %i.bh, -1.000000e+00
  %i.bj = extractelement <2 x i1> %i.bd, i64 1
  %..i.i29.i = select i1 %i.bj, float 1.000000e+00, float %i.bh
  %.0.i.i30.i = select i1 %i.bi, float -1.000000e+00, float %..i.i29.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.f, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.bk = phi float [ %i.bg, %bb.f ], [ %i.aw, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bl = phi float [ %i.ax, %bb.f ], [ %i.au, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bm = phi float [ %.0.i.i30.i, %bb.f ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !164 ; 2 uses
  %i.bp = fdiv float %i.bm, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = fadd float %i.bk, %i.bq
  %i.bs = fmul float %i.an, %i.br
  %i.bt = fmul float %i.bl, f0x40490FDB
  %i.bu = fmul float %i.bt, %i.bo
  %i.bv = fmul float %i.aq, %i.bu
  %i.bw = fadd float %i.bs, 1.000000e+00          ; 2 uses
  %i.bx = fmul float %i.bw, %i.bw
  %i.by = fmul float %i.bv, %i.bx
  %i.bz = fdiv float 1.000000e+00, %i.by
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit: ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit, %bb.d, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i
  %.1.i = phi float [ 0.000000e+00, %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit ], [ %i.bz, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i ], [ 0.000000e+00, %bb.d ]
  %i.ca = fdiv float 1.000000e+00, %.0.i.i
  %i.cb = tail call noundef float @llvm.fabs.f32(float %2)
  %i.cc = fdiv float %i.ca, %i.cb
  %i.cd = fmul float %i.cc, %.1.i
  %i.ce = fmul <2 x float> %1, %3                 ; 2 uses
  %shift = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ce, %shift
  %i.cf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cg = fmul float %2, %4
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cj = fmul float %i.ci, %i.cd
  ret float %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !391  ; 4 uses
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %..i.i = select i1 %i.c, float 1.000000e+00, float %i.a ; 5 uses
  %i.d = fmul float %..i.i, %..i.i
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = fmul float %i.b, %i.b
  %i.g = fdiv float %i.e, %i.f                    ; 2 uses
  %i.h = fcmp ult float %i.g, 1.000000e+00
  br i1 %i.h, label %_ZN4pbrt12FrDielectricEff.exit, label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %bb.a
  %i.i = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.j, float %i.i, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.k = fmul float %..i.i, %i.b                  ; 2 uses
  %i.l = fsub float %i.k, %sqrt.i.i
  %i.m = fadd float %i.k, %sqrt.i.i
  %i.n = fdiv float %i.l, %i.m                    ; 2 uses
  %i.o = fmul float %i.b, %sqrt.i.i               ; 2 uses
  %i.p = fsub float %..i.i, %i.o
end_hunk_1
