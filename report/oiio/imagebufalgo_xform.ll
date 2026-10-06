Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_xform?download=true
inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L5warp_IffEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a
  %indvars.iv = phi i64 [ %i.cv, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !104
  %i.da = load ptr, ptr %3, align 8, !tbaa !199
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.lr.ph
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.i, label %bb.j, !prof !66

bb.i:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc, %bb.i
  %i.dd = load ptr, ptr %i.ab, align 8, !tbaa !359
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv
  store float %i.cz, ptr %i.de, align 4, !tbaa !104
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.df = load i32, ptr %i.aa, align 4, !tbaa !105
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %.lr.ph, label %._crit_edge, !llvm.loop !898

bb.k:                                             ; preds = %bb.i, %.lr.ph
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.h, %bb.k, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.g ], [ %i.di, %bb.k ], [ %i.cx, %bb.h ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix33") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !104 ; 4 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !104
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !104 ; 3 uses
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !104
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
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !104 ; 4 uses
  %i.u = load <2 x float>, ptr %i.m, align 4, !tbaa !104 ; 3 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !104 ; 2 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 1, i32 poison, i32 3, i32 2> ; 2 uses
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.y = extractelement <2 x float> %i.u, i64 0
  %i.z = fneg float %i.v
  %i.aa = load <2 x float>, ptr %i.p, align 4, !tbaa !104 ; 3 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.s, <4 x float> %i.ab, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.ad = fneg <4 x float> %i.ac                  ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !104 ; 4 uses
  %i.ag = load float, ptr %i.q, align 4, !tbaa !104 ; 2 uses
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
  %i.bz = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fdiv <4 x float> %i.an, %i.ca
  %i.cc = fdiv <4 x float> %i.az, %i.ca
  %.sroa.50.0 = fdiv float %i.bd, %i.bj
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load <4 x float>, ptr %i.cd, align 4, !tbaa !104 ; 3 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.cg = load float, ptr %i.d, align 4, !tbaa !104 ; 3 uses
  %i.ch = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fneg <2 x float> %i.ci                  ; 2 uses
  %i.ck = load float, ptr %1, align 4, !tbaa !104 ; 3 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 0
  %i.cm = fmul float %i.cg, %i.cl
  %i.cn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  %i.co = insertelement <2 x float> %i.cf, float -0.000000e+00, i64 1
  %i.cp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cm, i64 0
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cp) ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cs = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.ct = fcmp ogt float %i.cs, 0.000000e+00
  %i.cu = fneg float %i.cs
  %i.cv = select i1 %i.ct, float %i.cs, float %i.cu ; 2 uses
  %i.cw = fcmp ult float %i.cv, 1.000000e+00
  br i1 %i.cw, label %.preheader67, label %.critedge63

.preheader67:                                     ; preds = %bb.e
  %i.cx = fmul float %i.cv, f0x7E800000
  %i.cy = insertelement <4 x float> poison, float %i.cg, i64 2
  %i.cz = insertelement <4 x float> %i.cy, float %i.ck, i64 3
  %i.da = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.db)
  %i.dd = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %2 = fcmp ule <4 x float> %i.de, %i.dc
  %i.df = bitcast <4 x i1> %2 to i4
  %i.dg = icmp eq i4 %i.df, 0
  br i1 %i.dg, label %.critedge63, label %bb.f

.critedge63:                                      ; preds = %.preheader67, %bb.e
  %i.dh = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.di = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 2
  %i.dj = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dl = fdiv <4 x float> %i.dk, %i.cr           ; 3 uses
  %i.dm = load float, ptr %i.h, align 4, !tbaa !104
  %i.dn = fneg float %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dp = load float, ptr %i.do, align 4, !tbaa !104
  %.sroa.22.0 = fdiv float %i.ck, %i.cs           ; 2 uses
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dr = insertelement <2 x float> %i.dq, float %.sroa.22.0, i64 1
  %i.ds = fneg <2 x float> %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.du, %i.ds
  %i.dw = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dy, <2 x float> %i.dv)
  %i.ea = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.22.0, i64 0
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.f

bb.f:                                             ; preds = %.preheader67, %.preheader, %.critedge63, %.critedge59
  %.sink = phi float [ 1.000000e+00, %.critedge63 ], [ 1.000000e+00, %.preheader ], [ %.sroa.50.0, %.critedge59 ], [ 1.000000e+00, %.preheader67 ]
  %i.ed = phi <4 x float> [ %i.dl, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cb, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  %i.ee = phi <4 x float> [ %i.ec, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cc, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  store <4 x float> %i.ed, ptr %0, align 4, !tbaa !104
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !104
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.eg, align 4, !tbaa !104
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
  %i.m = load float, ptr %i.l, align 8, !tbaa !361 ; 2 uses
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !104
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
  %.079 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.cy, %._crit_edge ] ; 4 uses
  %i.bu = load i8, ptr %i.bj, align 8, !tbaa !193, !range !84, !noundef !85
  %i.bv = icmp eq i8 %i.bu, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !194 ; 2 uses
  br i1 %i.bv, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !196
  %i.bx = icmp eq i32 %.pre, %i.bw
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !195 ; 3 uses
  %i.by = load i32, ptr %i.bn, align 4
  %i.bz = icmp eq i32 %.pre163, %i.by
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !197
  %i.cb = load i32, ptr %i.bp, align 8, !tbaa !198
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cd = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ce = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %i.cd, i64 1
end_hunk_0
