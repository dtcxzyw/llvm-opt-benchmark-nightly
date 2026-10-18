Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cameras?download=true
inline.NumInlined: 4489
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK4pbrt15RealisticCamera14BoundExitPupilEff:bb.a
  br i1 %i.bg, label %.lr.ph.i28, label %._crit_edge.loopexit.i34, !llvm.loop !421

._crit_edge.loopexit.i34:                         ; preds = %.lr.ph.i28
  %i.bh = uitofp i64 %i.bc to float
  %i.bi = fmul float %i.bd, %i.bh
  br label %_ZN4pbrt14RadicalInverseEim.exit36

_ZN4pbrt14RadicalInverseEim.exit36:               ; preds = %bb.c, %._crit_edge.loopexit.i34
  %.sroa.speculated.i115 = phi float [ %.sroa.speculated.i, %._crit_edge.loopexit.i34 ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bj = phi float [ %i.bi, %._crit_edge.loopexit.i34 ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bk = fcmp ogt float %i.bj, f0x3F7FFFFF
  %.sroa.speculated.i35 = select i1 %i.bk, float f0x3F7FFFFF, float %i.bj ; 2 uses
  %i.bl = fsub float 1.000000e+00, %.sroa.speculated.i115
  %i.bm = fsub float 1.000000e+00, %.sroa.speculated.i35
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %.sroa.speculated.i115, i64 1
  %i.bp = fmul <2 x float> %i.q, %i.bo
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.br = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %.sroa.speculated.i35, i64 1
  %i.bt = fmul <2 x float> %i.q, %i.bs
  %i.bu = fadd <2 x float> %i.bt, %i.bq           ; 10 uses
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !140
  %i.bx = getelementptr [16 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !144
  %i.ca = extractelement <2 x float> %i.bu, i64 0
  %i.cb = fcmp ult <2 x float> %i.bu, %.sroa.075.0103
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = fcmp ugt <2 x float> %i.bu, %.sroa.12.0104
  %i.ce = extractelement <2 x i1> %i.cd, i64 0
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.ce
  %i.cf = fcmp ult <2 x float> %i.bu, %.sroa.075.0103
  %i.cg = extractelement <2 x i1> %i.cf, i64 1
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.cg
  br i1 %or.cond, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread: ; preds = %_ZN4pbrt14RadicalInverseEim.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br label %bb.d

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit: ; preds = %_ZN4pbrt14RadicalInverseEim.exit36
  %i.ch = fcmp ugt <2 x float> %i.bu, %.sroa.12.0104
  %i.ci = extractelement <2 x i1> %i.ch, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br i1 %i.ci, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread, %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit
  %i.cj = fsub float %i.ca, %i.ar
  %i.ck = insertelement <2 x float> %i.bu, float %i.cj, i64 0
  store <2 x float> %.sroa.062.4.vec.insert, ptr %4, align 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.ck, ptr %i.ac, align 4
  %i.cl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  store <2 x float> %i.cl, ptr %.sroa.23.0..sroa_idx.i, align 4
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.cm = call noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null)
  %i.cn = fcmp une float %i.cm, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %i.cn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.co = fcmp olt <2 x float> %i.bu, %.sroa.075.0103
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.bu, <2 x float> %.sroa.075.0103
  %i.cq = fcmp olt <2 x float> %.sroa.12.0104, %i.bu
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.bu, <2 x float> %.sroa.12.0104
  br label %bb.f

.critedge:                                        ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.d
  %.sroa.075.1 = phi <2 x float> [ %.sroa.075.0103, %.critedge ], [ %i.cp, %bb.e ], [ %.sroa.075.0103, %bb.d ] ; 5 uses
  %.sroa.12.1 = phi <2 x float> [ %.sroa.12.0104, %.critedge ], [ %i.cr, %bb.e ], [ %.sroa.12.0104, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1048576
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !422

bb.g:                                             ; preds = %bb.b
  %i.cs = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !28
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !31, !alias.scope !425
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !34, !alias.scope !425
  store i8 0, ptr %i.cu, align 8, !tbaa !25, !alias.scope !425
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !35, !alias.scope !425 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cu
  br i1 %i.cy, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.cz = load i64, ptr %i.cu, align 8, !tbaa !25, !alias.scope !425
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #31
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cw, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.h
  %i.db = load ptr, ptr %3, align 8, !tbaa !35
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 886, ptr noundef %i.db)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.dc = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cu
  br i1 %i.dd, label %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.de = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #31
  br label %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit

bb.k:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cu
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.k
  %i.dj = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume.i

_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.q ; 2 uses
  %foldExtExtBinop123 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %foldExtExtBinop125 = fadd <2 x float> %foldExtExtBinop123, %foldExtExtBinop123
  %i.dl = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.dm = tail call noundef float @sqrtf(float noundef %i.dl) #29
  %i.dn = fmul float %i.dm, 2.000000e+00
  %i.do = fmul float %i.dn, f0x3A800000
  %i.dp = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = fsub <2 x float> %.sroa.075.1, %i.dq
  %i.ds = fadd <2 x float> %.sroa.12.1, %i.dq
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, %bb.l
  %.sroa.075.2 = phi <2 x float> [ %.sroa.075.1, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit ], [ %.sroa.075.1, %bb.g ], [ %i.dr, %bb.l ]
  %.sroa.12.2 = phi <2 x float> [ %.sroa.12.1, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit ], [ %.sroa.12.1, %bb.g ], [ %i.ds, %bb.l ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.075.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.12.2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4pbrt15RealisticCamera15SampleExitPupilENS_6Point2IfEES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.67") align 4 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1128) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fmul <2 x float> %2, %2                  ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = tail call noundef float @sqrtf(float noundef %i.b) #29 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %i.f = and i64 %i.e, 144115188075855871
  %i.g = inttoptr i64 %i.f to ptr
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.0.i.i.i = load float, ptr %.0.in.i.i.i, align 8, !tbaa !135
  %i.h = fmul float %.0.i.i.i, 5.000000e-01
  %i.i = fdiv float %i.c, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148  ; 2 uses
  %i.l = uitofp i64 %i.k to float
  %i.m = fmul float %i.i, %i.l
  %i.n = fptosi float %i.m to i32
  %i.o = trunc i64 %i.k to i32
  %i.p = add i32 %i.o, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.n)
  %i.q = sext i32 %.sroa.speculated to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.u = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.v = fcmp ogt <2 x float> %.sroa.0.0.copyload, %i.u ; 2 uses
  %i.w = extractelement <2 x i1> %i.v, i64 0
  %i.x = extractelement <2 x i1> %i.v, i64 1
  %i.y = select i1 %i.w, i1 true, i1 %i.x
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = fsub <2 x float> %i.u, %.sroa.0.0.copyload ; 2 uses
  %shift37 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop38 = fmul <2 x float> %i.z, %shift37
  %i.aa = extractelement <2 x float> %foldExtExtBinop38, i64 0
  %i.ab = fdiv float 1.000000e+00, %i.aa
  %i.ac = fcmp une float %i.c, 0.000000e+00
  %i.ad = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x float> %2, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !142
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !140
  %i.ak = getelementptr [16 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -12
  %i.am = load float, ptr %i.al, align 4, !tbaa !144
  %i.an = fsub <2 x float> splat (float 1.000000e+00), %3
  %i.ao = fmul <2 x float> %i.an, %.sroa.0.0.copyload
  %i.ap = fmul <2 x float> %3, %i.u
  %i.aq = fadd <2 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = insertelement <2 x i1> poison, i1 %i.ac, i64 0
  %i.as = shufflevector <2 x i1> %i.ar, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x float> %i.af, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.at, %i.au           ; 2 uses
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = fsub <2 x float> %i.av, %i.ay
  %i.ba = fadd <2 x float> %i.av, %i.ay
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bb, ptr %0, align 4
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.am, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ab, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bc, align 4, !tbaa !427
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.26") align 8 captures(none) initializes((0, 28), (32, 57)) %0, ptr noundef nonnull align 8 dereferenceable(1128) %1, ptr nofree noundef readonly byval(%"struct.pbrt::CameraSample") align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Ray", align 8         ; 8 uses
  %5 = alloca %"class.pbrt::Ray", align 8         ; 11 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %i.c = and i64 %i.b, 144115188075855871
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.g, align 8 ; 2 uses
  %.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %.sroa.0.0.copyload.i.i7.i.i.i = load i64, ptr %i.d, align 8
  %i.j = load <2 x float>, ptr %2, align 8, !tbaa !14
  %i.k = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i7.i.i.i, i64 0
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = lshr <2 x i64> %i.l, <i64 0, i64 32>
  %i.n = trunc <2 x i64> %i.m to <2 x i32>
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  %i.p = fdiv <2 x float> %i.j, %i.o              ; 2 uses
  %i.q = load <2 x float>, ptr %i.e, align 8, !tbaa !14
  %i.r = load <2 x float>, ptr %i.f, align 8, !tbaa !14
  %i.s = fsub <2 x float> splat (float 1.000000e+00), %i.p
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = fmul <2 x float> %i.p, %i.r
  %i.v = fadd <2 x float> %i.t, %i.u              ; 7 uses
  %i.w = fmul <2 x float> %i.v, %i.v              ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.w, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = tail call noundef float @sqrtf(float noundef %i.x) #29, !noalias !430 ; 3 uses
  %.0.i.i.i.i = load float, ptr %.0.in.i.i.i.i, align 8, !tbaa !135, !noalias !430
  %i.z = fmul float %.0.i.i.i.i, 5.000000e-01
  %i.aa = fdiv float %i.y, %i.z
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !148, !noalias !430 ; 2 uses
  %i.ac = uitofp i64 %i.ab to float
  %i.ad = fmul float %i.aa, %i.ac
  %i.ae = fptosi float %i.ad to i32
  %i.af = trunc i64 %i.ab to i32
  %i.ag = add i32 %i.af, -1
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ae)
  %i.ah = sext i32 %.sroa.speculated.i to i64
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !151, !noalias !430
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.aj, align 4, !noalias !430 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ak = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !430 ; 4 uses
  %i.al = fcmp ogt <2 x float> %.sroa.0.0.copyload.i, %i.ak
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %.sroa.0.4.vec.extract.i53 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.an = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.ao = fcmp ogt float %.sroa.0.4.vec.extract.i53, %i.an
  %i.ap = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.aq = extractelement <2 x float> %i.v, i64 0
  %i.ar = fneg float %i.aq                        ; 2 uses
  %i.as = insertelement <2 x float> %i.v, float %i.ar, i64 0
  %i.at = fcmp une float %i.y, 0.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !142, !noalias !430
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !140, !noalias !430
  %i.ay = getelementptr [16 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !144, !noalias !430 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bb = fsub <2 x float> splat (float 1.000000e+00), %.sroa.035.0.copyload
  %i.bc = fmul <2 x float> %i.bb, %.sroa.0.0.copyload.i
  %i.bd = fmul <2 x float> %.sroa.035.0.copyload, %i.ak
  %i.be = fadd <2 x float> %i.bc, %i.bd           ; 2 uses
  %i.bf = insertelement <2 x float> %i.v, float %i.ar, i64 0
  %i.bg = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv <2 x float> %i.bf, %i.bh
  %i.bj = insertelement <2 x i1> poison, i1 %i.at, i64 0
  %i.bk = shufflevector <2 x i1> %i.bj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bi, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bm = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bl, %i.bm           ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = fsub <2 x float> %i.bn, %i.bq
  %i.bs = fadd <2 x float> %i.bn, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bu = fadd <2 x float> %i.bt, %i.v
  %i.bv = fsub <2 x float> %i.bt, %i.v
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3> ; 3 uses
  store <2 x float> %i.as, ptr %4, align 8
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %i.bw, ptr %i.bx, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.by = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.by, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.bz, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 24, i1 false)
  %i.ca = call noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %5) ; 2 uses
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %foldExtExtBinop93 = fsub <2 x float> %i.ak, %.sroa.0.0.copyload.i
  %i.cd = extractelement <2 x float> %foldExtExtBinop93, i64 0
  %i.ce = fsub float %i.an, %.sroa.0.4.vec.extract.i53
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = fdiv float 1.000000e+00, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !112 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !113
  %i.cn = fsub float 1.000000e+00, %i.ci
  %i.co = fmul float %i.cn, %i.ck
  %i.cp = fmul float %i.ci, %i.cm
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.cq, ptr %i.cr, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !54
  store i64 %i.ct, ptr %i.cc, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZNK4pbrt17AnimatedTransformclERKNS_3RayEPf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Ray") align 8 %6, ptr noundef nonnull align 8 dereferenceable(896) %1, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 28, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
end_hunk_0
