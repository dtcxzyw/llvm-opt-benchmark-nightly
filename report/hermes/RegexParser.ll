Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE23openNamedCapturingGroupERN4llvh11SmallVectorINS7_17ParseStackElementELj4EEE:bb.a
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %i.i, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17ParseStackElementD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.o = add nuw i16 %i.c, 1
  store i16 %i.o, ptr %i.b, align 2, !tbaa !57
  %i.p = zext i16 %i.c to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 5, ptr %i.s, align 4, !tbaa !30
  %i.t = call noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE19tryConsumeGroupNameERN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(26) %2)
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.f:                                             ; preds = %bb.e
  store i32 12, ptr %i.u, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.g:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = call noundef zeroext i1 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20addNamedCaptureGroupEON4llvh11SmallVectorIDsLj5EEEj(ptr noundef nonnull align 8 dereferenceable(336) %i.aa, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %i.p)
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.i:                                             ; preds = %bb.h
  store i32 13, ptr %i.ac, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

bb.j:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %.not.i = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit, label %bb.k, !prof !54

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.pre.i = load i32, ptr %i.aj, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit: ; preds = %bb.j, %bb.k
  %i.an = phi i32 [ %.pre.i, %bb.k ], [ %i.ak, %bb.j ]
  %i.ao = load ptr, ptr %1, align 8, !tbaa !27
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
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.aj, align 8, !tbaa !29
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit2: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE9push_backEOSA_.exit
  %i.au = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
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
  %2 = alloca %"class.std::vector.16", align 16   ; 10 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.std::vector.16", align 16   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !27
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !112 ; 3 uses
  %i.l = extractelement <2 x ptr> %i.k, i64 1     ; 6 uses
  store <2 x ptr> %i.k, ptr %2, align 16, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 3 uses
  store ptr %i.o, ptr %i.m, align 16, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.p = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !27
  %i.r = load i32, ptr %i.a, align 8, !tbaa !29
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46, !noalias !113 ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !48, !noalias !113 ; 4 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %.not.i670 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i670, label %._crit_edge72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not.i6 = icmp eq i64 %i.ae, 0
  br i1 %.not.i6, label %._crit_edge72, label %bb.e, !llvm.loop !49

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.i71 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ae, %bb.d ]
  %i.ae = add i64 %.0.i71, -1                     ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25, !noalias !113
  %i.ah = icmp eq ptr %i.ag, %i.v
  br i1 %i.ah, label %._crit_edge, label %bb.d, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.e
  br label %._crit_edge72, !llvm.loop !49

._crit_edge72:                                    ; preds = %bb.d, %._crit_edge, %bb.c
  %.lcssa.i = phi i64 [ %i.ae, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.d ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.lcssa.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !113
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = sub i64 %i.aa, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

.lr.ph.i:                                         ; preds = %._crit_edge72
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i, %.lr.ph.i
  %i.aq = phi ptr [ null, %.lr.ph.i ], [ %i.bj, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 5 uses
  %i.ar = phi ptr [ null, %.lr.ph.i ], [ %i.bk, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %i.as = phi ptr [ null, %.lr.ph.i ], [ %.pn, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ %i.am, %.lr.ph.i ], [ %i.bm, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bl, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %.056.i, align 8, !tbaa !25
  store ptr %i.at, ptr %i.as, align 8, !tbaa !25
  %5 = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %5, ptr %i.ao, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.i, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #17 ; 5 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  %i.bg = load ptr, ptr %.056.i, align 8, !tbaa !25
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !25
  %i.bh = icmp sgt i64 %i.aw, 0
  br i1 %i.bh, label %bb.j, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.aq, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.be, ptr %3, align 8, !tbaa !48
  store ptr %6, ptr %i.ao, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !51
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.g
  %i.bj = phi ptr [ %i.aq, %bb.g ], [ %i.be, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.bk = phi ptr [ %i.ar, %bb.g ], [ %i.bi, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.pn = phi ptr [ %5, %bb.g ], [ %6, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.bm = add nsw i64 %.07.i, -1
  %i.bn = icmp sgt i64 %.07.i, 1
  br i1 %i.bn, label %bb.f, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, !llvm.loop !52

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !22, !noalias !113
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, %._crit_edge72
  %i.bo = phi ptr [ %i.bk, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge72 ]
  %i.bp = phi ptr [ %.pn, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge72 ]
  %i.bq = phi ptr [ %i.bj, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ null, %._crit_edge72 ]
  %i.br = phi ptr [ %.pre, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ %i.y, %._crit_edge72 ]
  %.not.i.i.i = icmp eq ptr %i.aj, %i.br
  br i1 %.not.i.i.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !22, !noalias !113 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.ak, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  store ptr %i.bv, ptr %i.x, align 8, !tbaa !46, !noalias !113
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !29
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !29
  %i.by = load ptr, ptr %1, align 8, !tbaa !27
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.by, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.cc, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ] ; 3 uses
  %i.cf = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !51
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.ce
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !107

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit
  %i.cm = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.cc, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !56
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.m
  %.not.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bp, ptr %i.cs, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.bo, ptr %i.ct, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cv = insertelement <2 x ptr> %i.k, ptr %i.cu, i64 1
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

bb.o:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  call void @_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cw = load <2 x ptr>, ptr %2, align 16, !tbaa !112
  %.pre37 = load ptr, ptr %i.m, align 16, !tbaa !56
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n, %bb.o
  %i.cx = phi ptr [ %i.o, %bb.n ], [ %.pre37, %bb.o ]
  %i.cy = phi <2 x ptr> [ %i.cv, %bb.n ], [ %i.cw, %bb.o ]
  %i.cz = load ptr, ptr %0, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x ptr> %i.cy, ptr %4, align 16, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cx, ptr %i.db, align 16, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.dc = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %i.dd = load ptr, ptr %4, align 16, !tbaa !106  ; 3 uses
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dl, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.dd, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %i.df = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.dl, %i.de
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !107

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !106
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit
  %i.dm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i ], [ %i.dd, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i
  %i.dn = load ptr, ptr %i.db, align 16, !tbaa !56
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #18
  br label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i, %bb.q
  %i.dr = load ptr, ptr %3, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !51
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.dx = load ptr, ptr %2, align 16, !tbaa !106  ; 3 uses
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %.not4.i.i.i9 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not4.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.05.i.i.i11 = phi ptr [ %i.ef, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13 ], [ %i.dx, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %i.dz = load ptr, ptr %.05.i.i.i11, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i12, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i10
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !51
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13: ; preds = %bb.s, %.lr.ph.i.i.i10
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 24 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ef, %i.dy
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, label %.lr.ph.i.i.i10, !llvm.loop !107

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i13
  %.pr.i16 = load ptr, ptr %2, align 16, !tbaa !106
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.eg = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i15 ], [ %i.dx, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EED2Ev.exit19, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i17
  %i.eh = load ptr, ptr %i.m, align 16, !tbaa !56
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #18
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %2, ptr noundef nonnull align 8 dereferenceable(74) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !112
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  store ptr %i.n, ptr %i.l, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.q = load i16, ptr %i.p, align 8              ; 3 uses
  store i16 %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.c, align 8, !tbaa !29
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !29
  %i.t = load ptr, ptr %1, align 8, !tbaa !27
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !106  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  %i.aa = lshr i16 %i.q, 8                        ; 2 uses
  %i.ab = trunc nuw i16 %i.aa to i8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #18
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !107

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i, %bb.a
  %i.aj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #18
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i.i, %bb.c
  %i.ap = load i32, ptr %2, align 8, !tbaa !53
  switch i32 %i.ap, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit [
    i32 4, label %bb.n
    i32 2, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46, !noalias !116 ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !48, !noalias !116 ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %.not.i86 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i86, label %._crit_edge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %._crit_edge88, label %bb.f, !llvm.loop !49

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0.i87 = phi i64 [ %i.ba, %.lr.ph ], [ %i.bb, %bb.e ]
  %i.bb = add i64 %.0.i87, -1                     ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25, !noalias !116
  %i.be = icmp eq ptr %i.bd, %i.as
  br i1 %i.be, label %._crit_edge, label %bb.e, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.f
  br label %._crit_edge88, !llvm.loop !49

._crit_edge88:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %.lcssa.i = phi i64 [ %i.bb, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.e ]
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.lcssa.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !116
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.ax, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

.lr.ph.i:                                         ; preds = %._crit_edge88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i, %.lr.ph.i
  %i.bn = phi ptr [ null, %.lr.ph.i ], [ %i.cg, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 5 uses
  %i.bo = phi ptr [ null, %.lr.ph.i ], [ %i.ch, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %i.bp = phi ptr [ null, %.lr.ph.i ], [ %.pn46, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.07.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.cj, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 2 uses
  %.056.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.ci, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i ] ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i.i.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %.056.i, align 8, !tbaa !25
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !25
  %5 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %5, ptr %i.bl, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #17 ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  %i.cd = load ptr, ptr %.056.i, align 8, !tbaa !25
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !25
  %i.ce = icmp sgt i64 %i.bt, 0
  br i1 %i.ce, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bn, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bt) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.cb, ptr %3, align 8, !tbaa !48
  store ptr %6, ptr %i.bl, align 8, !tbaa !46
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz ; 2 uses
  store ptr %i.cf, ptr %i.bm, align 8, !tbaa !51
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.h
  %i.cg = phi ptr [ %i.bn, %bb.h ], [ %i.cb, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.ch = phi ptr [ %i.bo, %bb.h ], [ %i.cf, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %.pn46 = phi ptr [ %5, %bb.h ], [ %6, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.cj = add nsw i64 %.07.i, -1
  %i.ck = icmp sgt i64 %.07.i, 1
  br i1 %i.ck, label %bb.g, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, !llvm.loop !52

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !22, !noalias !116
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit, %._crit_edge88
  %i.cl = phi ptr [ %.pre, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit.loopexit ], [ %i.av, %._crit_edge88 ]
  %.not.i.i.i = icmp eq ptr %i.bg, %i.cl
  br i1 %.not.i.i.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !22, !noalias !116 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.bh, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store ptr %i.cp, ptr %i.au, align 8, !tbaa !46, !noalias !116
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !3
  %i.cs = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_23MarkedSubexpressionNodeEJSt6vectorIPNS0_4NodeESaIS8_EERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = load ptr, ptr %3, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !51
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE8pop_backEv.exit
  %i.cz = trunc i16 %i.q to i1
  %i.da = trunc i16 %i.aa to i1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = lshr i8 %i.dc, 3
  %i.de = xor i8 %i.dd, -1
  %i.df = and i8 %i.ab, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !119
  %i.di = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 138
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 144 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 152 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46, !noalias !120 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !48, !noalias !120 ; 4 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %.not.i1090 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i1090, label %._crit_edge96, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.n
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %.not.i10 = icmp eq i64 %i.dv, 0
  br i1 %.not.i10, label %._crit_edge96, label %bb.p, !llvm.loop !49

bb.p:                                             ; preds = %.lr.ph93, %bb.o
  %.0.i991 = phi i64 [ %i.du, %.lr.ph93 ], [ %i.dv, %bb.o ]
  %i.dv = add i64 %.0.i991, -1                    ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !25, !noalias !120
  %i.dy = icmp eq ptr %i.dx, %i.dm
  br i1 %i.dy, label %._crit_edge94, label %bb.o, !llvm.loop !49

._crit_edge94:                                    ; preds = %bb.p
  br label %._crit_edge96, !llvm.loop !49

._crit_edge96:                                    ; preds = %bb.o, %._crit_edge94, %bb.n
  %.lcssa.i11 = phi i64 [ %i.dv, %._crit_edge94 ], [ -1, %bb.n ], [ -1, %bb.o ]
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %.lcssa.i11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = sub i64 %i.dr, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 0
  br i1 %i.ee, label %.lr.ph.i21, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34

.lr.ph.i21:                                       ; preds = %._crit_edge96, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge96 ] ; 5 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge96 ] ; 2 uses
  %i.ef = phi ptr [ %i.ez, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge96 ] ; 3 uses
  %i.eg = phi ptr [ %.sroa.8.0, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ null, %._crit_edge96 ] ; 3 uses
  %.07.i24 = phi i64 [ %i.fb, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ %i.ed, %._crit_edge96 ] ; 2 uses
  %.056.i25 = phi ptr [ %i.fa, %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27 ], [ %i.ea, %._crit_edge96 ] ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.eg, %i.ef
  br i1 %.not.i.i.i.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i21
  %i.eh = load ptr, ptr %.056.i25, align 8, !tbaa !25
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !25
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27

bb.r:                                             ; preds = %.lr.ph.i21
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 5 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.s, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28: ; preds = %bb.r
  %i.em = ashr exact i64 %i.ek, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i.i.i29, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 1152921504606846975)
  %i.eq = select i1 %i.eo, i64 1152921504606846975, i64 %i.ep ; 3 uses
  %.not.i.i.i.i.i.i30 = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i30)
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #17 ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 2 uses
  %i.eu = load ptr, ptr %.056.i25, align 8, !tbaa !25
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !25
  %i.ev = icmp sgt i64 %i.ek, 0
  br i1 %i.ev, label %bb.t, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31

bb.t:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr align 8 %.sroa.0.0, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31: ; preds = %bb.t, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i28
  %.not.i17.i.i.i.i.i32 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i17.i.i.i.i.i32, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31
  %i.ew = ptrtoint ptr %.sroa.12.0 to i64
  %i.ex = sub i64 %i.ew, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ex) #18
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33: ; preds = %bb.u, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i31
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eq ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27

_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33, %bb.q
  %.sroa.0.1 = phi ptr [ %i.es, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %.sroa.0.0, %bb.q ] ; 2 uses
  %.pn = phi ptr [ %i.et, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %i.eg, %bb.q ]
  %.sroa.12.1 = phi ptr [ %i.ey, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %.sroa.12.0, %bb.q ] ; 2 uses
  %i.ez = phi ptr [ %i.ey, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i33 ], [ %i.ef, %bb.q ]
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.056.i25, i64 8
  %i.fb = add nsw i64 %.07.i24, -1
  %i.fc = icmp sgt i64 %.07.i24, 1
  br i1 %i.fc, label %.lr.ph.i21, label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit, !llvm.loop !52

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIPN6hermes5regex4NodeESaIS4_EEEaSEOS4_.exit.i27
  %.pre55 = load ptr, ptr %i.do, align 8, !tbaa !22, !noalias !120
  br label %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34

_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit, %._crit_edge96
  %i.fd = phi ptr [ %i.dp, %._crit_edge96 ], [ %.pre55, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.0.2 = phi ptr [ null, %._crit_edge96 ], [ %.sroa.0.1, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.8.1 = phi ptr [ null, %._crit_edge96 ], [ %.sroa.8.0, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.sroa.12.2 = phi ptr [ null, %._crit_edge96 ], [ %.sroa.12.1, %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34.loopexit ]
  %.not.i.i.i12 = icmp eq ptr %i.ea, %i.fd
  br i1 %.not.i.i.i12, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34
  %i.fe = load ptr, ptr %i.dn, align 8, !tbaa !22, !noalias !120 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.eb, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 %i.fg
  store ptr %i.fh, ptr %i.do, align 8, !tbaa !46, !noalias !120
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14: ; preds = %_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN6hermes5regex4NodeESt20back_insert_iteratorISt6vectorIS6_SaIS6_EEEEET0_T_SE_SD_.exit34, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i13
  %i.fi = load ptr, ptr %0, align 8, !tbaa !7
  store ptr %.sroa.0.2, ptr %4, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.8.1, ptr %i.fj, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sroa.12.2, ptr %i.fk, align 8, !tbaa !51
  %i.fl = trunc i32 %i.dh to i16
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE14pushLookaroundESt6vectorIPNS0_4NodeESaIS6_EEttbb(ptr noundef nonnull align 8 dereferenceable(336) %i.fi, ptr noundef nonnull %4, i16 noundef zeroext %i.fl, i16 noundef zeroext %i.dk, i1 noundef zeroext %i.cz, i1 noundef zeroext %i.da)
  %i.fm = load ptr, ptr %4, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit18, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE.exit14
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !51
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
end_hunk_0
