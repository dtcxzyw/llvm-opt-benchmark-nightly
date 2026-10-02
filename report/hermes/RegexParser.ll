Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE18consumeDisjunctionEv:bb.a
  %i.jw = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !93 ; 3 uses
  %i.jy = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.jx, %i.jz
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.kg, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.jx, %.lr.ph.i.i ] ; 3 uses
  %i.ka = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !58
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kf) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.bn, %.lr.ph.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kg, %i.jz
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.kh = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i.i ], [ %i.jx, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i.i
  %i.ki = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !62
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #18
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit.i.i

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit.i.i: ; preds = %bb.bo, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i.i
  %.not.i.i90 = icmp eq ptr %i.js, %i.jv
  br i1 %.not.i.i90, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit.i: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit.i.i, %bb.bi, %bb.bj, %._crit_edge
  %i.kn = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.f
  br i1 %i.ko, label %_ZN4llvh11SmallVectorIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELj4EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit.i
  call void @free(ptr noundef %i.kn) #15
  br label %_ZN4llvh11SmallVectorIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELj4EED2Ev.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE23openNamedCapturingGroupERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.23", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25, !noalias !287 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 138 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !91, !noalias !287 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !noalias !287
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37, !noalias !287 ; 2 uses
  %i.h = icmp eq i16 %i.c, -1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %i.i, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.o = add nuw i16 %i.c, 1
  store i16 %i.o, ptr %i.b, align 2, !tbaa !91
  %i.p = zext i16 %i.c to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 5, ptr %i.s, align 4, !tbaa !41
  %i.t = call noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE19tryConsumeGroupNameERN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(26) %2)
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.f:                                             ; preds = %bb.e
  store i32 12, ptr %i.u, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.g:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !25
  %i.ab = call noundef zeroext i1 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20addNamedCaptureGroupEON4llvh11SmallVectorIDsLj5EEEj(ptr noundef nonnull align 8 dereferenceable(336) %i.aa, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %i.p)
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.i:                                             ; preds = %bb.h
  store i32 13, ptr %i.ac, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.j:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit, label %bb.k, !prof !60

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.pre.i = load i32, ptr %i.aj, align 8, !tbaa !40
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit: ; preds = %bb.j, %bb.k
  %i.an = phi i32 [ %.pre.i, %bb.k ], [ %i.ak, %bb.j ]
  %i.ao = load ptr, ptr %1, align 8, !tbaa !39
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.ao, i64 %i.ap ; 9 uses
  store i32 2, ptr %i.aq, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.g, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %i.p, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 0, ptr %.sroa.910.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i8 1, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 34
  store i16 %i.c, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.g, ptr %.sroa.19.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !40
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.aj, align 8, !tbaa !40
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit
  %i.au = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2
  call void @free(ptr noundef %i.au) #15
  br label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit:           ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE16closeAlternationERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.16", align 8    ; 10 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !39
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 2 uses
  %5 = load ptr, ptr %i.i, align 8, !tbaa !93     ; 2 uses
  store ptr %5, ptr %2, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %6 = getelementptr inbounds i8, ptr %i.e, i64 -24
  %7 = load ptr, ptr %6, align 8, !tbaa !61       ; 7 uses
  store ptr %7, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !39
  %i.p = load i32, ptr %i.a, align 8, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55, !noalias !290 ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !56, !noalias !290 ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %.not.i654 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i654, label %._crit_edge56, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not.i6 = icmp eq i64 %i.ac, 0
  br i1 %.not.i6, label %._crit_edge56, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.i55 = phi i64 [ %i.ab, %.lr.ph ], [ %i.ac, %bb.d ]
  %i.ac = add i64 %.0.i55, -1                     ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37, !noalias !290
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %._crit_edge, label %bb.d, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.e
  br label %._crit_edge56, !llvm.loop !0

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge, %bb.c
  %.lcssa.i = phi i64 [ %i.ac, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.d ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.lcssa.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !290
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.y, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

.lr.ph.i:                                         ; preds = %._crit_edge56
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i, %.lr.ph.i
  %i.ao = phi ptr [ null, %.lr.ph.i ], [ %i.bj, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 5 uses
  %i.ap = phi ptr [ null, %.lr.ph.i ], [ %i.bk, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %i.aq = phi ptr [ null, %.lr.ph.i ], [ %i.bl, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.bn, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.bm, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.am, align 8, !tbaa !55
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.i, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #17 ; 5 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  %i.bf = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !37
  %i.bg = icmp sgt i64 %i.av, 0
  br i1 %i.bg, label %bb.j, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.ao, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.av) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.bd, ptr %3, align 8, !tbaa !56
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bi, ptr %i.an, align 8, !tbaa !58
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.g
  %i.bj = phi ptr [ %i.ao, %bb.g ], [ %i.bd, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.bk = phi ptr [ %i.ap, %bb.g ], [ %i.bi, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.bl = phi ptr [ %i.as, %bb.g ], [ %i.bh, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.bn = add nsw i64 %.07.i, -1
  %i.bo = icmp sgt i64 %.07.i, 1
  br i1 %i.bo, label %bb.f, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, !llvm.loop !1

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !35, !noalias !290
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, %._crit_edge56
  %i.bp = phi ptr [ %i.bk, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge56 ]
  %i.bq = phi ptr [ %i.bl, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge56 ]
  %i.br = phi ptr [ %i.bj, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge56 ]
  %i.bs = phi ptr [ %.pre, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ %i.w, %._crit_edge56 ]
  %.not.i.i.i = icmp eq ptr %i.ah, %i.bs
  br i1 %.not.i.i.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit
  %i.bt = load ptr, ptr %i.u, align 8, !tbaa !35, !noalias !290 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ai, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv
  store ptr %i.bw, ptr %i.v, align 8, !tbaa !55, !noalias !290
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !40
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.a, align 8, !tbaa !40
  %i.bz = load ptr, ptr %1, align 8, !tbaa !39
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [80 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !93 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.cd, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ] ; 3 uses
  %i.cg = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !58
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %i.cf
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.cc, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit
  %i.cn = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.cd, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !62
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.m
  %.not.i.i = icmp eq ptr %7, %i.m
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  store ptr %i.br, ptr %7, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bq, ptr %i.ct, align 8, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bp, ptr %i.cu, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

bb.o:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  call void @_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre20 = load ptr, ptr %2, align 8, !tbaa !93
  %.pre21 = load ptr, ptr %i.j, align 8, !tbaa !61
  %.pre22 = load ptr, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n, %bb.o
  %i.cw = phi ptr [ %i.m, %bb.n ], [ %.pre22, %bb.o ]
  %8 = phi ptr [ %i.cv, %bb.n ], [ %.pre21, %bb.o ]
  %9 = phi ptr [ %5, %bb.n ], [ %.pre20, %bb.o ]
  %i.cx = load ptr, ptr %0, align 8, !tbaa !25
  store ptr %9, ptr %4, align 8, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %8, ptr %i.cy, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.da = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.db = load ptr, ptr %4, align 8, !tbaa !93    ; 3 uses
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.db, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.dd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.dj, %i.dc
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit
  %i.dk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i ], [ %i.db, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !62
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, %bb.q
  %i.dp = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.dv = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %.not4.i.i.i9 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not4.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.05.i.i.i11 = phi ptr [ %i.ed, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13 ], [ %i.dv, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %i.dx = load ptr, ptr %.05.i.i.i11, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i12, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i10
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !58
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13: ; preds = %bb.s, %.lr.ph.i.i.i10
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 24 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ed, %i.dw
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, label %.lr.ph.i.i.i10, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.pr.i16 = load ptr, ptr %2, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.ee = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15 ], [ %i.dv, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10closeGroupERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::ParseStackElement", align 8 ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = load ptr, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %2, ptr noundef nonnull align 8 dereferenceable(74) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !94
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  store ptr %i.n, ptr %i.l, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.q = load i16, ptr %i.p, align 8              ; 3 uses
  store i16 %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.c, align 8, !tbaa !40
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !40
  %i.t = load ptr, ptr %1, align 8, !tbaa !39
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  %i.aa = lshr i16 %i.q, 8                        ; 2 uses
  %i.ab = trunc nuw i16 %i.aa to i8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %bb.a
  %i.aj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.c
  %i.ap = load i32, ptr %2, align 8, !tbaa !59
  switch i32 %i.ap, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit [
    i32 4, label %bb.n
    i32 2, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55, !noalias !295 ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !295 ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %.not.i65 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i65, label %._crit_edge67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %._crit_edge67, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.i66 = phi i64 [ %i.ba, %.lr.ph ], [ %i.bb, %bb.e ]
  %i.bb = add i64 %.0.i66, -1                     ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37, !noalias !295
  %i.be = icmp eq ptr %i.bd, %i.as
  br i1 %i.be, label %._crit_edge, label %bb.e, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f
  br label %._crit_edge67, !llvm.loop !0

._crit_edge67:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %.lcssa.i = phi i64 [ %i.bb, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.e ]
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.lcssa.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !295
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.ax, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

.lr.ph.i:                                         ; preds = %._crit_edge67
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i, %.lr.ph.i
  %i.bn = phi ptr [ null, %.lr.ph.i ], [ %i.ci, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 5 uses
  %i.bo = phi ptr [ null, %.lr.ph.i ], [ %i.cj, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %i.bp = phi ptr [ null, %.lr.ph.i ], [ %i.ck, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.cm, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.cl, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i.i.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !55
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 6 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #17 ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bu ; 2 uses
  %i.ce = load ptr, ptr %.056.i, align 8, !tbaa !37
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !37
  %i.cf = icmp sgt i64 %i.bu, 0
  br i1 %i.cf, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr align 8 %i.bn, i64 %i.bu, i1 false)
end_hunk_0
