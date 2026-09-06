Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/track_builder?download=true
inline.NumInlined: 834
inline.NumDeleted: 501
begin_hunk_0_@_ZNK3ozz9animation7offline12TrackBuilder5BuildINS1_18RawQuaternionTrackENS0_15QuaternionTrackEEESt10unique_ptrIT0_NS_7DeleterIS7_EEERKT_:bb.a

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 1, ptr %3, align 4, !tbaa !157
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !65
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ab, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !67
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !72
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ab, ptr noundef nonnull align 4 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i unwind label %.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit

bb.i:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !158
  %i.ai = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i32 1, ptr %4, align 4, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !158
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !65
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !72 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  %.not.i18.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.an, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !67
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !72
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.an, ptr noundef nonnull align 4 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i unwind label %.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !72
  %.pre26.i = load ptr, ptr %2, align 8, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i, %bb.i
  %i.as = phi ptr [ %.pre26.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.at = phi ptr [ %.pre.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i ], [ %i.q, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.n

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i, %bb.m
  %.lcssa.i = phi ptr [ %i.at, %bb.m ], [ %i.bg, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.lcssa.i, i64 -20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !158
  %i.ay = fcmp une float %i.ax, 1.000000e+00
  br i1 %i.ay, label %bb.q, label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i, %.lr.ph.i
  %i.az = phi ptr [ %i.as, %.lr.ph.i ], [ %i.bh, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i ]
  %.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.024.i ; 2 uses
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !72 ; 3 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !74
  %.not.i20.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i20.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bb, ptr noundef nonnull align 4 dereferenceable(24) %i.ba, i64 24, i1 false), !tbaa.struct !67
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %i.au, align 8, !tbaa !72
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bb, ptr noundef nonnull align 4 dereferenceable(24) %i.ba)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i unwind label %.loopexit

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i: ; preds = %bb.p, %bb.o
  %i.bf = add nuw i64 %.024.i, 1                  ; 2 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !72  ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 24
  %i.bm = icmp ult i64 %i.bf, %i.bl
  br i1 %i.bm, label %bb.n, label %._crit_edge.i, !llvm.loop !148

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 1, ptr %5, align 4, !tbaa !157
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float 1.000000e+00, ptr %i.bn, align 4, !tbaa !158
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds i8, ptr %.lcssa.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !65
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74
  %.not.i22.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i22.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !67
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !72
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.br, ptr noundef nonnull align 4 dereferenceable(24) %5)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i unwind label %.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit

_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i, %._crit_edge.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.by = load ptr, ptr %6, align 8, !tbaa !73    ; 5 uses
  %.not.i26 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i26, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.ca = load <2 x float>, ptr %i.bz, align 4, !tbaa !25 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ca, %i.ca
  %i.cb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cc = extractelement <2 x float> %i.ca, i64 0 ; 2 uses
  %i.cd = call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cb)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !25 ; 3 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cd)
  %i.ci = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.cj = call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ch) ; 2 uses
  %i.ck = fcmp oeq float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i
  %sqrt.peel.i = call float @llvm.sqrt.f32(float %i.cj)
  %i.cl = fdiv float 1.000000e+00, %sqrt.peel.i
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.ca, %i.cn
  %i.cp = fmul <2 x float> %i.cf, %i.cn
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i
  %.sroa.047.0.peel.i = phi <2 x float> [ %i.co, %bb.t ], [ zeroinitializer, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i ] ; 2 uses
  %.sroa.6.0.peel.i = phi <2 x float> [ %i.cp, %bb.t ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i ] ; 3 uses
  store <2 x float> %.sroa.047.0.peel.i, ptr %i.bz, align 4
  store <2 x float> %.sroa.6.0.peel.i, ptr %i.ce, align 4
  %i.cq = extractelement <2 x float> %.sroa.6.0.peel.i, i64 1
  %i.cr = fcmp olt float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = fneg <2 x float> %.sroa.047.0.peel.i
  %i.ct = fneg <2 x float> %.sroa.6.0.peel.i
  store <2 x float> %i.cs, ptr %i.bz, align 4
  store <2 x float> %i.ct, ptr %i.ce, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cu = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.by to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %7 = sdiv exact i64 %i.cx, 24                   ; 2 uses
  %i.cy = icmp ugt i64 %7, 1
  br i1 %i.cy, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i: ; preds = %bb.w, %bb.aa
  %i.cz = phi ptr [ %i.et, %bb.aa ], [ %i.by, %bb.w ]
  %.059.i = phi i64 [ %i.eu, %bb.aa ], [ 1, %bb.w ] ; 3 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %.059.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load <2 x float>, ptr %i.db, align 4, !tbaa !25 ; 4 uses
  %foldExtExtBinop91 = fmul <2 x float> %i.dc, %i.dc
  %i.dd = extractelement <2 x float> %foldExtExtBinop91, i64 1
  %i.de = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dd)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !25 ; 3 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.df)
  %i.dk = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj) ; 2 uses
  %i.dm = fcmp oeq float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i
  %sqrt.i = call float @llvm.sqrt.f32(float %i.dl)
  %i.dn = fdiv float 1.000000e+00, %sqrt.i
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.dc, %i.dp
  %i.dr = fmul <2 x float> %i.dh, %i.dp
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i
  %.sroa.047.0.i = phi <2 x float> [ %i.dq, %bb.x ], [ zeroinitializer, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i ] ; 4 uses
  %.sroa.6.0.i = phi <2 x float> [ %i.dr, %bb.x ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i ] ; 4 uses
  store <2 x float> %.sroa.047.0.i, ptr %i.db, align 4
  store <2 x float> %.sroa.6.0.i, ptr %i.dg, align 4
  %i.ds = add i64 %.059.i, -1                     ; 3 uses
  %i.dt = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.du = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24                ; 3 uses
  %.not.i.i42.i = icmp ult i64 %i.ds, %i.dy
  br i1 %.not.i.i42.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.ds, i64 noundef %i.dy) #16
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %.loopexit.i
  unreachable

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i: ; preds = %bb.y
  %i.dz = extractelement <2 x float> %.sroa.6.0.i, i64 1
  %i.ea = extractelement <2 x float> %.sroa.6.0.i, i64 0
  %i.eb = extractelement <2 x float> %.sroa.047.0.i, i64 1
  %i.ec = extractelement <2 x float> %.sroa.047.0.i, i64 0
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ds ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !159
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !160
  %i.ei = fmul float %i.eb, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %i.ec, float %i.ef, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.el = load float, ptr %i.ek, align 4, !tbaa !161
  %i.em = call float @llvm.fmuladd.f32(float %i.ea, float %i.el, float %i.ej)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.eo = load float, ptr %i.en, align 4, !tbaa !162
  %i.ep = call float @llvm.fmuladd.f32(float %i.dz, float %i.eo, float %i.em)
  %i.eq = fcmp olt float %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i
  %i.er = fneg <2 x float> %.sroa.047.0.i
  %i.es = fneg <2 x float> %.sroa.6.0.i
  store <2 x float> %i.er, ptr %i.db, align 4
  store <2 x float> %i.es, ptr %i.dg, align 4
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !72
  %.pre39 = load ptr, ptr %6, align 8, !tbaa !73  ; 2 uses
  %.pre41 = ptrtoint ptr %.pre to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  %.pre46 = sdiv exact i64 %.pre44, 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i
  %.pre-phi47 = phi i64 [ %.pre46, %bb.z ], [ %i.dy, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i ] ; 2 uses
  %i.et = phi ptr [ %.pre39, %bb.z ], [ %i.du, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i ]
  %i.eu = add nuw i64 %.059.i, 1                  ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.pre-phi47
  br i1 %i.ev, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit, !llvm.loop !149

_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit: ; preds = %bb.aa, %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit, %bb.w
  %.pre-phi54 = phi i64 [ %7, %bb.w ], [ 0, %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit ], [ %.pre-phi47, %bb.aa ]
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !34 ; 2 uses
  %i.ez = load ptr, ptr %0, align 8, !tbaa !69    ; 6 uses
  invoke void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, i64 noundef %.pre-phi54, i64 noundef %i.ey)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr align 1 %i.fb, i8 0, i64 %i.fd, i1 false)
  %i.fe = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.ff = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not34 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.ab
  %i.fi = phi ptr [ %i.ff, %bb.ab ], [ %i.gg, %.lr.ph ]
  %.not = icmp eq i64 %i.ey, 0
  br i1 %.not, label %bb.ae, label %bb.ad

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.c, %bb.h, %bb.l, %bb.s, %.loopexit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ac:                                            ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.fk = phi ptr [ %i.gg, %.lr.ph ], [ %i.ff, %.lr.ph.preheader ]
  %.033 = phi i64 [ %i.ge, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %.033 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !158
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !40
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.033
  store float %i.fn, ptr %i.fp, align 4, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fr = load ptr, ptr %i.fh, align 8, !tbaa !166
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %.033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fs, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, i64 16, i1 false), !tbaa.struct !65
  %i.ft = load i32, ptr %i.fl, align 4, !tbaa !157
  %i.fu = icmp eq i32 %i.ft, 0
  %i.fv = zext i1 %i.fu to i8
  %i.fw = trunc i64 %.033 to i8
  %i.fx = and i8 %i.fw, 7
  %i.fy = shl nuw i8 %i.fv, %i.fx
  %i.fz = lshr i64 %.033, 3
  %i.ga = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !41
  %i.gd = or i8 %i.fy, %i.gc
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !41
  %i.ge = add nuw i64 %.033, 1                    ; 2 uses
  %i.gf = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.gg = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 24
  %i.gl = icmp ult i64 %i.ge, %i.gk
  br i1 %i.gl, label %.lr.ph, label %._crit_edge, !llvm.loop !150

bb.ad:                                            ; preds = %._crit_edge
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !168
  %i.go = load ptr, ptr %i.ew, align 8, !tbaa !42
  %i.gp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gn, ptr noundef nonnull dereferenceable(1) %i.go) #14 ; 0 uses
  %.pre40 = load ptr, ptr %6, align 8, !tbaa !73
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.gq = phi ptr [ %.pre40, %bb.ad ], [ %i.fi, %._crit_edge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ag unwind label %bb.ah     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull %i.gq)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit: ; preds = %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZNSt10unique_ptrIN3ozz9animation15QuaternionTrackENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn

bb.aj:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackIfE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = mul nuw nsw i64 %1, 12
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.o, i64 noundef 4)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %.not13.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not13.i.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i, i64 12, i1 false), !tbaa.struct !28
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 12
  %.not.i11.i = icmp eq ptr %i.v, %i.k
  br i1 %.not.i11.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit
  %i.y = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.x)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
