inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L5warp_IffEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a
  %i.cr = extractelement <2 x float> %i.ci, i64 0
  %i.cs = extractelement <2 x float> %i.ci, i64 1
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIfEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %.sroa.035.0.vec.extract, float noundef %.sroa.024.0.vec.extract, float noundef %.sroa.035.4.vec.extract, float noundef %.sroa.024.4.vec.extract, float noundef %i.cr, float noundef %i.cs, ptr noundef %i.cl, i32 noundef %i.cn, i1 noundef zeroext %i.cq, ptr noundef %i.f)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %i.cu = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cw = sext i32 %i.ct to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.g, !llvm.loop !873

bb.g:                                             ; preds = %._crit_edge
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !77
  %i.db = load ptr, ptr %3, align 8, !tbaa !228
  %i.dc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.lr.ph
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %bb.i, label %bb.j, !prof !25

bb.i:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc, %bb.i
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !874
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  store float %i.da, ptr %i.df, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dg = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !875

bb.k:                                             ; preds = %bb.i, %.lr.ph
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.h, %bb.k, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.g ], [ %i.dj, %bb.k ], [ %i.cy, %bb.h ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix33") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !77 ; 4 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !77
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !77 ; 3 uses
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !77
  %i.k = fcmp une float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.l = phi float [ %.pre, %._crit_edge ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = insertelement <4 x float> poison, float %i.l, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.b, i64 2 ; 2 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !77 ; 4 uses
  %i.u = load <2 x float>, ptr %i.m, align 4, !tbaa !77 ; 3 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !77 ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 1, i32 poison, i32 3, i32 2> ; 2 uses
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.y = extractelement <2 x float> %i.u, i64 0
  %i.z = fneg float %i.v
  %i.aa = load <2 x float>, ptr %i.p, align 4, !tbaa !77 ; 3 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.s, <4 x float> %i.ab, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.ad = fneg <4 x float> %i.ac                  ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !77 ; 4 uses
  %i.ag = load float, ptr %i.q, align 4, !tbaa !77 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.w, <4 x float> %i.ah, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.aj = fmul <4 x float> %i.ai, %i.ae
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> %i.ai, <4 x i32> <i32 1, i32 4, i32 5, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.am = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 2, i32 6, i32 4, i32 4>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.am, <4 x float> %i.aj) ; 4 uses
  %i.ao = extractelement <2 x float> %i.aa, i64 0
  %i.ap = fneg float %i.ao
  %i.aq = shufflevector <2 x float> %i.t, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ar = insertelement <4 x float> %i.aq, float %i.z, i64 2
  %i.as = shufflevector <4 x float> %i.ad, <4 x float> %i.x, <4 x i32> <i32 2, i32 0, i32 4, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = fmul <4 x float> %i.ar, %i.at
  %i.av = shufflevector <2 x float> %i.u, <2 x float> %i.t, <4 x i32> <i32 poison, i32 0, i32 0, i32 2>
  %i.aw = shufflevector <4 x float> %i.ah, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <2 x float> %i.aa, <2 x float> %i.af, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.ay = insertelement <4 x float> %i.ax, float %i.b, i64 1
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.au) ; 3 uses
  %i.ba = fneg float %i.ag
  %i.bb = fmul float %i.y, %i.ba
  %i.bc = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.v, float %i.bb) ; 2 uses
  %i.be = extractelement <4 x float> %i.an, i64 3
  %i.bf = fmul float %i.ag, %i.be
  %i.bg = extractelement <4 x float> %i.an, i64 0
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bg, float %i.bf)
  %i.bi = extractelement <4 x float> %i.az, i64 2
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.b, float %i.bi, float %i.bh) ; 5 uses
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  %i.bl = fneg float %i.bj
  %i.bm = select i1 %i.bk, float %i.bj, float %i.bl ; 2 uses
  %i.bn = fcmp ult float %i.bm, 1.000000e+00
  br i1 %i.bn, label %.preheader, label %.critedge59

.preheader:                                       ; preds = %bb.d
  %i.bo = fmul float %i.bm, f0x7E800000           ; 2 uses
  %i.bp = shufflevector <4 x float> %i.an, <4 x float> %i.az, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bp)
  %i.br = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = fcmp ogt <8 x float> %i.bs, %i.bq
  %i.bu = tail call float @llvm.fabs.f32(float %i.bd)
  %i.bv = fcmp ogt float %i.bo, %i.bu
  %i.bw = freeze <8 x i1> %i.bt
  %i.bx = bitcast <8 x i1> %i.bw to i8
  %i.by = icmp eq i8 %i.bx, -1
  %op.rdx = select i1 %i.by, i1 %i.bv, i1 false
  br i1 %op.rdx, label %.critedge59, label %bb.f

.critedge59:                                      ; preds = %.preheader, %bb.d
  %.sroa.50.0 = fdiv float %i.bd, %i.bj
  %i.bz = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fdiv <4 x float> %i.an, %i.ca
  %i.cc = fdiv <4 x float> %i.az, %i.ca
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = load <4 x float>, ptr %i.cd, align 4, !tbaa !77 ; 3 uses
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ce = load float, ptr %i.d, align 4, !tbaa !77 ; 3 uses
  %4 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %5 = insertelement <2 x float> %4, float %i.ce, i64 1
  %6 = fneg <2 x float> %5                        ; 2 uses
  %7 = load float, ptr %1, align 4, !tbaa !77     ; 3 uses
  %8 = extractelement <2 x float> %6, i64 0
  %i.cf = fmul float %i.ce, %8
  %i.cg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  %9 = insertelement <2 x float> %3, float -0.000000e+00, i64 1
  %i.ch = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cf, i64 0
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %9, <2 x float> %i.ch) ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ck = extractelement <2 x float> %i.ci, i64 0 ; 4 uses
  %i.cl = fcmp ogt float %i.ck, 0.000000e+00
  %i.cm = fneg float %i.ck
  %i.cn = select i1 %i.cl, float %i.ck, float %i.cm ; 2 uses
  %i.co = fcmp ult float %i.cn, 1.000000e+00
  br i1 %i.co, label %.preheader67, label %.critedge63

.preheader67:                                     ; preds = %bb.e
  %i.cp = fmul float %i.cn, f0x7E800000
  %10 = insertelement <4 x float> poison, float %i.ce, i64 2
  %11 = insertelement <4 x float> %10, float %7, i64 3
  %12 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %12, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %13)
  %i.cr = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = fcmp ogt <4 x float> %i.cs, %i.cq
  %i.cu = freeze <4 x i1> %i.ct
  %i.cv = bitcast <4 x i1> %i.cu to i4
  %i.cw = icmp eq i4 %i.cv, -1
  br i1 %i.cw, label %.critedge63, label %bb.f

.critedge63:                                      ; preds = %.preheader67, %bb.e
  %14 = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.cx = insertelement <4 x float> %14, float 0.000000e+00, i64 2
  %15 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %16 = shufflevector <4 x float> %i.cx, <4 x float> %15, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cy = fdiv <4 x float> %16, %i.cj             ; 3 uses
  %i.cz = load float, ptr %i.h, align 4, !tbaa !77
  %i.da = fneg float %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %.sroa.22.0 = fdiv float %7, %i.ck              ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.de = insertelement <2 x float> %i.dd, float %.sroa.22.0, i64 1
  %i.df = fneg <2 x float> %i.de
  %i.dg = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.dh, %i.df
  %i.dj = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dl, <2 x float> %i.di)
  %i.dn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.22.0, i64 0
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.f

bb.f:                                             ; preds = %.preheader67, %.preheader, %.critedge63, %.critedge59
  %.sink = phi float [ 1.000000e+00, %.critedge63 ], [ 1.000000e+00, %.preheader ], [ %.sroa.50.0, %.critedge59 ], [ 1.000000e+00, %.preheader67 ]
  %i.dq = phi <4 x float> [ %i.cy, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cb, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  %i.dr = phi <4 x float> [ %i.dp, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cc, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  store <4 x float> %i.dq, ptr %0, align 4, !tbaa !77
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.dr, ptr %i.ds, align 4, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.dt, align 4, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIfEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 16 uses
  %i.a = insertelement <2 x float> poison, float %3, i64 0
  %i.b = insertelement <2 x float> %i.a, float %4, i64 1
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b) ; 2 uses
  %i.d = insertelement <2 x float> poison, float %5, i64 0
  %i.e = insertelement <2 x float> %i.d, float %6, i64 1
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %i.g = fcmp olt <2 x float> %i.c, %i.f
  %i.h = select <2 x i1> %i.g, <2 x float> %i.f, <2 x float> %i.c ; 2 uses
  %i.i = fcmp ogt <2 x float> %i.h, splat (float 1.000000e+00)
  %i.j = select <2 x i1> %i.i, <2 x float> %i.h, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.k = fdiv <2 x float> splat (float 1.000000e+00), %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !876 ; 2 uses
  %i.n = fmul nnan <2 x float> %i.j, splat (float 5.000000e-01) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fmul float %i.o, %i.m                    ; 2 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul float %i.q, %i.m                    ; 2 uses
  %i.s = fsub float %1, %i.p
  %i.t = tail call float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fadd float %1, %i.p
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %2, %i.r
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fadd float %2, %i.r
  %i.ac = tail call float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.u)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.af)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.x)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ah)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aa)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.aj)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.al)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fcmp olt float %1, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %1, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to float
  %i.aw = fcmp olt float %2, %i.av
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fcmp ult float %2, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ad, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.aa, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.x, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.be = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bi, i8 0, i64 %.pre-phi167, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bq = icmp sgt i32 %i.be, 0                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.be to i64        ; 5 uses
  %i.bs = insertelement <2 x float> poison, float %1, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %2, i64 1
  %min.iters.check = icmp ult i32 %i.be, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.cy, %._crit_edge ] ; 4 uses
  %i.bu = load i8, ptr %i.bj, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bv = icmp eq i8 %i.bu, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bv, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !225
  %i.bx = icmp eq i32 %.pre, %i.bw
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !224 ; 3 uses
  %i.by = load i32, ptr %i.bn, align 4
  %i.bz = icmp eq i32 %.pre163, %i.by
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !226
  %i.cb = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cd = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ce = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %i.cd, i64 1
  %i.cg = sitofp <2 x i32> %i.cf to <2 x float>
  %i.ch = fadd nnan <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = fsub <2 x float> %i.ch, %i.bt
  %i.cj = fmul <2 x float> %i.k, %i.ci            ; 2 uses
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = extractelement <2 x float> %i.cj, i64 0
  %i.co = extractelement <2 x float> %i.cj, i64 1
  %i.cp = invoke noundef float %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.cn, float noundef %i.co)
          to label %.preheader136 unwind label %bb.m ; 3 uses

.preheader136:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
end_hunk_0
