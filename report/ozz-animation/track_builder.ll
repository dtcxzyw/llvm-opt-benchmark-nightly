Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/track_builder?download=true
inline.NumInlined: 834
inline.NumDeleted: 501
begin_hunk_0_@_ZNK3ozz9animation7offline12TrackBuilder5BuildINS1_18RawQuaternionTrackENS0_15QuaternionTrackEEESt10unique_ptrIT0_NS_7DeleterIS7_EEERKT_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !152
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.b = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv(), !noalias !153 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17, !noalias !153
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !153
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i64 noundef 8), !noalias !153, !inline_history !147 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !153
  tail call void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f), !noalias !153
  store ptr %i.f, ptr %0, align 8, !tbaa !69, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = load ptr, ptr %2, align 8, !tbaa !73
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = shl nsw i64 %i.m, 1
  %i.o = add nsw i64 %i.n, 2
  invoke void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.o)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !154    ; 6 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !154  ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
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
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit

bb.i:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !158
  %i.ai = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
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
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit19.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
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
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
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
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit

_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit23.i, %._crit_edge.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backERKS6_.exit.i, %bb.d
  %.val = load ptr, ptr %6, align 8               ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.val23 = load ptr, ptr %i.bw, align 8          ; 2 uses
  %.not.i27 = icmp eq ptr %.val23, %.val
  %.pre32 = ptrtoint ptr %.val23 to i64
  %.pre33 = ptrtoint ptr %.val to i64
  %.pre35 = sub i64 %.pre32, %.pre33              ; 2 uses
  %.pre37 = sdiv exact i64 %.pre35, 24            ; 3 uses
  br i1 %.not.i27, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !25 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.by, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ca = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.cb = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !25 ; 3 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.cf = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cb)
  %i.cg = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cf) ; 2 uses
  %i.ci = fcmp oeq float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i
  %i.cj = call noundef float @sqrtf(float noundef %i.ch) #15
  %i.ck = fdiv float 1.000000e+00, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.by, %i.cm
  %i.co = fmul <2 x float> %i.cd, %i.cm
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i
  %.sroa.04.0.peel.i = phi <2 x float> [ %i.cn, %bb.t ], [ zeroinitializer, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i ] ; 2 uses
  %.sroa.6.0.peel.i = phi <2 x float> [ %i.co, %bb.t ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.preheader.i ] ; 3 uses
  %7 = shufflevector <2 x float> %.sroa.04.0.peel.i, <2 x float> %.sroa.6.0.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = extractelement <2 x float> %.sroa.6.0.peel.i, i64 1
  %9 = fcmp olt float %8, 0.000000e+00
  %10 = shufflevector <2 x float> %.sroa.04.0.peel.i, <2 x float> %.sroa.6.0.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = fneg <4 x float> %10
  %storemerge = select i1 %9, <4 x float> %11, <4 x float> %7
  store <4 x float> %storemerge, ptr %i.bx, align 4, !tbaa !25
  %exitcond.peel.not.i = icmp eq i64 %.pre35, 24
  br i1 %exitcond.peel.not.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i: ; preds = %bb.u, %bb.x
  %.017.i = phi i64 [ %i.dz, %bb.x ], [ 1, %bb.u ] ; 2 uses
  %i.cp = getelementptr [24 x i8], ptr %.val, i64 %.017.i ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !25 ; 4 uses
  %foldExtExtBinop63 = fmul <2 x float> %i.cr, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop63, i64 1
  %i.ct = extractelement <2 x float> %i.cr, i64 0 ; 2 uses
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !tbaa !25 ; 3 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.cy = call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cu)
  %i.cz = extractelement <2 x float> %i.cw, i64 1 ; 2 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy) ; 2 uses
  %i.db = fcmp oeq float %i.da, 0.000000e+00
  br i1 %i.db, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i
  %i.dc = call noundef float @sqrtf(float noundef %i.da) #15
  %i.dd = fdiv float 1.000000e+00, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul <2 x float> %i.cr, %i.df
  %i.dh = fmul <2 x float> %i.cw, %i.df
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i: ; preds = %bb.v, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i
  %.sroa.04.0.i = phi <2 x float> [ %i.dg, %bb.v ], [ zeroinitializer, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i ] ; 4 uses
  %.sroa.6.0.i = phi <2 x float> [ %i.dh, %bb.v ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i ] ; 4 uses
  %12 = shufflevector <2 x float> %.sroa.04.0.i, <2 x float> %.sroa.6.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %i.cq, align 4, !tbaa !25
  %i.di = extractelement <2 x float> %.sroa.04.0.i, i64 0
  %i.dj = extractelement <2 x float> %.sroa.04.0.i, i64 1
  %i.dk = extractelement <2 x float> %.sroa.6.0.i, i64 0
  %i.dl = extractelement <2 x float> %.sroa.6.0.i, i64 1
  %i.dm = getelementptr i8, ptr %i.cp, i64 -16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !159
  %i.do = getelementptr i8, ptr %i.cp, i64 -12
  %i.dp = load float, ptr %i.do, align 4, !tbaa !160
  %i.dq = fmul float %i.dj, %i.dp
  %i.dr = call float @llvm.fmuladd.f32(float %i.di, float %i.dn, float %i.dq)
  %i.ds = getelementptr i8, ptr %i.cp, i64 -8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !161
  %i.du = call float @llvm.fmuladd.f32(float %i.dk, float %i.dt, float %i.dr)
  %i.dv = getelementptr i8, ptr %i.cp, i64 -4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !162
  %i.dx = call float @llvm.fmuladd.f32(float %i.dl, float %i.dw, float %i.du)
  %i.dy = fcmp olt float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i
  %13 = shufflevector <2 x float> %.sroa.04.0.i, <2 x float> %.sroa.6.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x float> %13
  store <4 x float> %14, ptr %i.cq, align 4, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit43.i
  %i.dz = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dz, %.pre37
  br i1 %exitcond.not.i, label %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE2atEm.exit.i, !llvm.loop !149

_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit: ; preds = %bb.x, %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit, %bb.u
  %.pre-phi38 = phi i64 [ %.pre37, %_ZN3ozz9animation7offline12_GLOBAL__N_117PatchBeginEndKeysINS1_18RawQuaternionTrackEEEvRKT_PNS5_9KeyframesE.exit ], [ 1, %bb.u ], [ %.pre37, %bb.x ]
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !34 ; 2 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !69    ; 6 uses
  invoke void @_ZN3ozz9animation8internal5TrackINS_4math10QuaternionEE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i64 noundef %.pre-phi38, i64 noundef %i.ec)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr align 1 %i.ef, i8 0, i64 %i.eh, i1 false)
  %i.ei = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.ej = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %.not30 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.y
  %i.em = phi ptr [ %i.ej, %bb.y ], [ %i.fj, %.lr.ph ]
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %bb.aa, label %bb.z

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.s, %bb.l, %bb.h, %bb.c, %_ZN3ozz9animation7offline12_GLOBAL__N_15FixupISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEEvPT_.exit
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZNSt10unique_ptrIN3ozz9animation15QuaternionTrackENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  resume { ptr, i32 } %lpad.loopexit.split-lp65

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.en = phi ptr [ %i.fj, %.lr.ph ], [ %i.ej, %.lr.ph.preheader ]
  %.029 = phi i64 [ %i.fh, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.029 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !158
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.029
  store float %i.eq, ptr %i.es, align 4, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !166
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !65
  %i.ew = load i32, ptr %i.eo, align 4, !tbaa !157
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %i.ez = trunc i64 %.029 to i8
  %i.fa = and i8 %i.ez, 7
  %i.fb = shl nuw i8 %i.ey, %i.fa
  %i.fc = lshr i64 %.029, 3
  %i.fd = load ptr, ptr %i.ee, align 8, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !41
  %i.fg = or i8 %i.fb, %i.ff
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !41
  %i.fh = add nuw i64 %.029, 1                    ; 2 uses
  %i.fi = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.fj = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 24
  %i.fo = icmp ult i64 %i.fh, %i.fn
  br i1 %i.fo, label %.lr.ph, label %._crit_edge, !llvm.loop !150

bb.z:                                             ; preds = %._crit_edge
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !168
  %i.fr = load ptr, ptr %i.ea, align 8, !tbaa !42
  %i.fs = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fq, ptr noundef nonnull dereferenceable(1) %i.fr) #15 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !73
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.ft = phi ptr [ %.pre, %bb.z ], [ %i.em, %._crit_edge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ac unwind label %bb.ad     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull %i.ft)
          to label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #16
  unreachable

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit: ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEED2Ev.exit, %bb.b
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
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
  tail call void @__clang_call_terminate(ptr %i.u) #16
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
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #16
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyISt13move_iteratorIPS4_EEESA_mT_SC_.exit, %bb.h
  store ptr %i.s, ptr %0, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %1
end_hunk_0
