Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE4growEm:bb.a
bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit
  tail call void @free(ptr noundef %i.cg) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex6ParserINS2_5RegexINS2_16UTF16RegexTraitsEEEPKDsE17ParseStackElementELb0EE13destroy_rangeEPSA_SC_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !27
  %i.cj = trunc i64 %.sroa.speculated to i32
  store i32 %i.cj, ptr %i.a, align 4, !tbaa !30
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !22
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  store ptr %i.u, ptr %i.s, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !22, !alias.scope !136, !noalias !133
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !22, !alias.scope !133, !noalias !136
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51, !alias.scope !136, !noalias !133
  store ptr %i.y, ptr %i.w, align 8, !tbaa !51, !alias.scope !133, !noalias !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !136, !noalias !133
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !138

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !22, !alias.scope !142, !noalias !139
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !22, !alias.scope !139, !noalias !142
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51, !alias.scope !142, !noalias !139
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !51, !alias.scope !139, !noalias !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !142, !noalias !139
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !138

_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #18
  br label %_ZNSt12_Vector_baseISt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIS_IPN6hermes5regex4NodeESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !106
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE19tryConsumeGroupNameERN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.fc, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread ] ; 5 uses
  %.01482 = phi i1 [ true, %.lr.ph ], [ false, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread ]
  %i.j = load i16, ptr %i.i, align 2, !tbaa !31   ; 6 uses
  %cond = icmp eq i16 %i.j, 62                    ; 2 uses
  br i1 %cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.f, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.b
  %i.n = zext i16 %i.j to i32                     ; 8 uses
  br i1 %.01482, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  switch i16 %i.j, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i38 [
    i16 95, label %_ZN6hermes16isUnicodeIDStartEj.exit39.thread
    i16 36, label %_ZN6hermes16isUnicodeIDStartEj.exit39.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i38:    ; preds = %bb.f
  %i.o = or i32 %i.n, 32
  %i.p = add nsw i32 %i.o, -97
  %i.q = icmp ult i32 %i.p, 26
  br i1 %i.q, label %_ZN6hermes16isUnicodeIDStartEj.exit39.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit39

_ZN6hermes16isUnicodeIDStartEj.exit39:            ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i38
  %i.r = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %i.n) #15
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  br i1 %i.r, label %_ZN6hermes16isUnicodeIDStartEj.exit39.thread, label %bb.h

_ZN6hermes16isUnicodeIDStartEj.exit39.thread:     ; preds = %bb.f, %bb.f, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i38, %_ZN6hermes16isUnicodeIDStartEj.exit39
  %i.t = phi ptr [ %i.s, %_ZN6hermes16isUnicodeIDStartEj.exit39 ], [ %i.i, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i38 ], [ %i.i, %bb.f ], [ %i.i, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %i.a, align 8, !tbaa !15
  %i.v = load i32, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i.i = icmp ult i32 %i.v, %i.w
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.g, !prof !54

bb.g:                                             ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit39.thread
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.g, %_ZN6hermes16isUnicodeIDStartEj.exit39.thread
  %i.x = phi i32 [ %.pre.i.i, %bb.g ], [ %i.v, %_ZN6hermes16isUnicodeIDStartEj.exit39.thread ]
  %i.y = load ptr, ptr %1, align 8, !tbaa !27
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  store i16 %i.j, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !29
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

bb.h:                                             ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit39
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !16  ; 5 uses
  %scevgep.i = getelementptr i8, ptr %i.s, i64 2  ; 5 uses
  %i.ae = icmp eq ptr %i.s, %i.ad
  br i1 %i.ae, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.s, align 2, !tbaa !31
  %.not15.i.i = icmp eq i16 %i.af, 92
  br i1 %.not15.i.i, label %bb.j, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i

bb.j:                                             ; preds = %bb.i
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !15
  %.not.i10.i = icmp eq ptr %scevgep.i, %i.ad
  br i1 %.not.i10.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i: ; preds = %bb.j
  %i.ag = load i16, ptr %scevgep.i, align 2, !tbaa !31
  %i.ah = icmp eq i16 %i.ag, 117
  br i1 %i.ah, label %bb.k, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i

bb.k:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i
  %i.ai = tail call i64 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeUnicodeEscapeSequenceEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext true) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ai to i32 ; 4 uses
  %i.aj = and i64 %i.ai, 4294967296
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i_crit_edge, label %bb.l

._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i_crit_edge: ; preds = %bb.k
  %.pre89.a = load ptr, ptr %i.a, align 8, !tbaa !15
  %.pre90 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i

bb.l:                                             ; preds = %bb.k
  switch i32 %.sroa.0.0.extract.trunc.i, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i [
    i32 95, label %_ZN6hermes16isUnicodeIDStartEj.exit.thread
    i32 36, label %_ZN6hermes16isUnicodeIDStartEj.exit.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i:      ; preds = %bb.l
  %i.ak = or i32 %.sroa.0.0.extract.trunc.i, 32
  %i.al = add i32 %i.ak, -97
  %i.am = icmp ult i32 %i.al, 26
  br i1 %i.am, label %_ZN6hermes16isUnicodeIDStartEj.exit.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit

_ZN6hermes16isUnicodeIDStartEj.exit:              ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i
  %i.an = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %.sroa.0.0.extract.trunc.i) #15
  br i1 %i.an, label %_ZN6hermes16isUnicodeIDStartEj.exit.thread, label %.thread

_ZN6hermes16isUnicodeIDStartEj.exit.thread:       ; preds = %bb.l, %bb.l, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i, %_ZN6hermes16isUnicodeIDStartEj.exit
  tail call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21writeCodePointToUTF16EjRN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.sroa.0.0.extract.trunc.i, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i: ; preds = %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i_crit_edge, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i, %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre90, %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i_crit_edge ], [ %i.ad, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre89.a, %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i_crit_edge ], [ %scevgep.i, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ %scevgep.i, %bb.j ], [ %i.s, %bb.i ] ; 9 uses
  %.not.i.i33 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i33, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !31
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = and i32 %i.ar, 64512
  %i.at = icmp eq i32 %i.as, 55296
  br i1 %i.at, label %bb.n, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.av = or disjoint i32 %i.ar, 65536
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i: ; preds = %bb.n, %bb.m, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i
  %i.aw = phi ptr [ %i.au, %bb.n ], [ %i.ap, %bb.m ], [ %i.ap, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i ] ; 3 uses
  %.sroa.2.0.i.i = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ], [ 0, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i ] ; 3 uses
  %.sroa.014.0.extract.trunc.i = trunc i32 %.sroa.2.0.i.i to i16
  %.not.i6.i = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i6.i, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !31 ; 2 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = and i32 %i.ay, 64512
  %i.ba = icmp eq i32 %i.az, 56320
  br i1 %i.ba, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i, label %.thread.sink.split

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !15
  %i.bc = and i32 %.sroa.2.0.i.i, 65536
  %.not.i34 = icmp eq i32 %i.bc, 0
  br i1 %.not.i34, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i
  %i.bd = shl nuw nsw i32 %.sroa.2.0.i.i, 10
  %i.be = and i32 %i.bd, 67107840
  %i.bf = add nsw i32 %i.be, -56613888
  %i.bg = add nsw i32 %i.bf, %i.ay                ; 3 uses
  switch i32 %i.bg, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i60 [
    i32 95, label %_ZN6hermes16isUnicodeIDStartEj.exit61.thread
    i32 36, label %_ZN6hermes16isUnicodeIDStartEj.exit61.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i60:    ; preds = %bb.p
  %i.bh = or i32 %i.bg, 32
  %i.bi = add nsw i32 %i.bh, -97
  %i.bj = icmp ult i32 %i.bi, 26
  br i1 %i.bj, label %_ZN6hermes16isUnicodeIDStartEj.exit61.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit61

_ZN6hermes16isUnicodeIDStartEj.exit61:            ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i60
  %i.bk = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %i.bg) #15
  br i1 %i.bk, label %_ZN6hermes16isUnicodeIDStartEj.exit61.thread, label %.thread.sink.split

_ZN6hermes16isUnicodeIDStartEj.exit61.thread:     ; preds = %bb.p, %bb.p, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i60, %_ZN6hermes16isUnicodeIDStartEj.exit61
  %i.bl = load i32, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.bm = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i9.i = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i9.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36, label %bb.q, !prof !54

bb.q:                                             ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit61.thread
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i.i35 = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36: ; preds = %bb.q, %_ZN6hermes16isUnicodeIDStartEj.exit61.thread
  %i.bn = phi i32 [ %.pre.i.i35, %bb.q ], [ %i.bl, %_ZN6hermes16isUnicodeIDStartEj.exit61.thread ]
  %i.bo = load ptr, ptr %1, align 8, !tbaa !27
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  store i16 %.sroa.014.0.extract.trunc.i, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.f, align 8, !tbaa !29
  %i.bs = add i32 %i.br, 1                        ; 3 uses
  store i32 %i.bs, ptr %i.f, align 8, !tbaa !29
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i10.i37 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i10.i37, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i, label %bb.r, !prof !54

bb.r:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i11.i = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i: ; preds = %bb.r, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36
  %i.bu = phi i32 [ %.pre.i11.i, %bb.r ], [ %i.bs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i36 ]
  %i.bv = load ptr, ptr %1, align 8, !tbaa !27
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bw
  store i16 %i.ax, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.f, align 8, !tbaa !29
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

bb.s:                                             ; preds = %bb.e
  switch i16 %i.j, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i56 [
    i16 95, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread
    i16 36, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i56:  ; preds = %bb.s
  %i.ca = or i32 %i.n, 32
  %i.cb = add nsw i32 %i.ca, -97
  %i.cc = icmp ult i32 %i.cb, 26
  br i1 %i.cc, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit.i57

_ZN6hermes16isUnicodeIDStartEj.exit.i57:          ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i56
  %i.cd = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %i.n) #15
  br i1 %i.cd, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit.i57
  %i.ce = tail call noundef zeroext i1 @_ZN6hermes22isUnicodeCombiningMarkEj(i32 noundef %i.n) #15
  br i1 %i.ce, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call noundef zeroext i1 @_ZN6hermes14isUnicodeDigitEj(i32 noundef %i.n) #15
  br i1 %i.cf, label %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread, label %_ZN6hermes19isUnicodeIDContinueEj.exit59

_ZN6hermes19isUnicodeIDContinueEj.exit59.thread:  ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit.i57, %bb.u, %bb.t, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i56, %bb.s, %bb.s
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %bb.v

_ZN6hermes19isUnicodeIDContinueEj.exit59:         ; preds = %bb.u
  %i.ch = tail call noundef zeroext i1 @_ZN6hermes29isUnicodeConnectorPunctuationEj(i32 noundef %i.n) #15
  %i.ci = and i32 %i.n, 65534
  %i.cj = icmp eq i32 %i.ci, 8204
  %spec.select.i58 = or i1 %i.cj, %i.ch
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !15  ; 6 uses
  br i1 %spec.select.i58, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread, %_ZN6hermes19isUnicodeIDContinueEj.exit59
  %i.cl = phi ptr [ %i.cg, %_ZN6hermes19isUnicodeIDContinueEj.exit59.thread ], [ %i.ck, %_ZN6hermes19isUnicodeIDContinueEj.exit59 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !15
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.co = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i.i29 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i29, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i31, label %bb.w, !prof !54

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i.i30 = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i31

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i31: ; preds = %bb.w, %bb.v
  %i.cp = phi i32 [ %.pre.i.i30, %bb.w ], [ %i.cn, %bb.v ]
  %i.cq = load ptr, ptr %1, align 8, !tbaa !27
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cr
  store i16 %i.j, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.f, align 8, !tbaa !29
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

bb.x:                                             ; preds = %_ZN6hermes19isUnicodeIDContinueEj.exit59
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !16  ; 5 uses
  %scevgep.i21 = getelementptr i8, ptr %i.ck, i64 2 ; 5 uses
  %i.cw = icmp eq ptr %i.ck, %i.cv
  br i1 %i.cw, label %.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = load i16, ptr %i.ck, align 2, !tbaa !31
  %.not15.i.i22 = icmp eq i16 %i.cx, 92
  br i1 %.not15.i.i22, label %bb.z, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23

bb.z:                                             ; preds = %bb.y
  store ptr %scevgep.i21, ptr %i.a, align 8, !tbaa !15
  %.not.i10.i25 = icmp eq ptr %scevgep.i21, %i.cv
  br i1 %.not.i10.i25, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26: ; preds = %bb.z
  %i.cy = load i16, ptr %scevgep.i21, align 2, !tbaa !31
  %i.cz = icmp eq i16 %i.cy, 117
  br i1 %i.cz, label %bb.aa, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23

bb.aa:                                            ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26
  %i.da = tail call i64 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeUnicodeEscapeSequenceEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext true) ; 2 uses
  %.sroa.0.0.extract.trunc.i27 = trunc i64 %i.da to i32 ; 8 uses
  %i.db = and i64 %i.da, 4294967296
  %.not.i28 = icmp eq i64 %i.db, 0
  br i1 %.not.i28, label %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23_crit_edge, label %bb.ab

._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23_crit_edge: ; preds = %bb.aa
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  %.pre88 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.sroa.0.0.extract.trunc.i27, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i [
    i32 95, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread
    i32 36, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i:    ; preds = %bb.ab
  %i.dc = or i32 %.sroa.0.0.extract.trunc.i27, 32
  %i.dd = add i32 %i.dc, -97
  %i.de = icmp ult i32 %i.dd, 26
  br i1 %i.de, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit.i

_ZN6hermes16isUnicodeIDStartEj.exit.i:            ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i
  %i.df = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %.sroa.0.0.extract.trunc.i27) #15
  br i1 %i.df, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit.i
  %i.dg = tail call noundef zeroext i1 @_ZN6hermes22isUnicodeCombiningMarkEj(i32 noundef %.sroa.0.0.extract.trunc.i27) #15
  br i1 %i.dg, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = tail call noundef zeroext i1 @_ZN6hermes14isUnicodeDigitEj(i32 noundef %.sroa.0.0.extract.trunc.i27) #15
  br i1 %i.dh, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, label %_ZN6hermes19isUnicodeIDContinueEj.exit

_ZN6hermes19isUnicodeIDContinueEj.exit:           ; preds = %bb.ad
  %i.di = tail call noundef zeroext i1 @_ZN6hermes29isUnicodeConnectorPunctuationEj(i32 noundef %.sroa.0.0.extract.trunc.i27) #15
  %i.dj = and i32 %.sroa.0.0.extract.trunc.i27, -2
  %i.dk = icmp eq i32 %i.dj, 8204
  %spec.select.i = or i1 %i.dk, %i.di
  br i1 %spec.select.i, label %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, label %.thread

_ZN6hermes19isUnicodeIDContinueEj.exit.thread:    ; preds = %bb.ab, %bb.ab, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i, %bb.ac, %bb.ad, %_ZN6hermes16isUnicodeIDStartEj.exit.i, %_ZN6hermes19isUnicodeIDContinueEj.exit
  tail call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21writeCodePointToUTF16EjRN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.sroa.0.0.extract.trunc.i27, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23: ; preds = %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23_crit_edge, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26, %bb.z, %bb.y
  %i.dl = phi ptr [ %.pre88, %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23_crit_edge ], [ %i.cv, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26 ], [ %i.cv, %bb.z ], [ %i.cv, %bb.y ] ; 2 uses
  %i.dm = phi ptr [ %.pre, %._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23_crit_edge ], [ %scevgep.i21, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26 ], [ %scevgep.i21, %bb.z ], [ %i.ck, %bb.y ] ; 9 uses
  %.not.i.i40 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i40, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !31
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = and i32 %i.do, 64512
  %i.dq = icmp eq i32 %i.dp, 55296
  br i1 %i.dq, label %bb.af, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.ds = or disjoint i32 %i.do, 65536
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41: ; preds = %bb.af, %bb.ae, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23
  %i.dt = phi ptr [ %i.dr, %bb.af ], [ %i.dm, %bb.ae ], [ %i.dm, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23 ] ; 3 uses
  %.sroa.2.0.i.i42 = phi i32 [ %i.ds, %bb.af ], [ 0, %bb.ae ], [ 0, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEPKc.exit.thread.i23 ] ; 3 uses
  %.sroa.014.0.extract.trunc.i43 = trunc i32 %.sroa.2.0.i.i42 to i16
  %.not.i6.i44 = icmp eq ptr %i.dt, %i.dl
  br i1 %.not.i6.i44, label %.thread.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !31 ; 2 uses
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = and i32 %i.dv, 64512
  %i.dx = icmp eq i32 %i.dw, 56320
  br i1 %i.dx, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i47, label %.thread.sink.split

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i47: ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store ptr %i.dy, ptr %i.a, align 8, !tbaa !15
  %i.dz = and i32 %.sroa.2.0.i.i42, 65536
  %.not.i48 = icmp eq i32 %i.dz, 0
  br i1 %.not.i48, label %.thread.sink.split, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i47
  %i.ea = shl nuw nsw i32 %.sroa.2.0.i.i42, 10
  %i.eb = and i32 %i.ea, 67107840
  %i.ec = add nsw i32 %i.eb, -56613888
  %i.ed = add nsw i32 %i.ec, %i.dv                ; 7 uses
  switch i32 %i.ed, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i62 [
    i32 95, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread
    i32 36, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i62:  ; preds = %bb.ah
  %i.ee = or i32 %i.ed, 32
  %i.ef = add nsw i32 %i.ee, -97
  %i.eg = icmp ult i32 %i.ef, 26
  br i1 %i.eg, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread, label %_ZN6hermes16isUnicodeIDStartEj.exit.i63

_ZN6hermes16isUnicodeIDStartEj.exit.i63:          ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i62
  %i.eh = tail call noundef zeroext i1 @_ZN6hermes19isUnicodeOnlyLetterEj(i32 noundef %i.ed) #15
  br i1 %i.eh, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN6hermes16isUnicodeIDStartEj.exit.i63
  %i.ei = tail call noundef zeroext i1 @_ZN6hermes22isUnicodeCombiningMarkEj(i32 noundef %i.ed) #15
  br i1 %i.ei, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = tail call noundef zeroext i1 @_ZN6hermes14isUnicodeDigitEj(i32 noundef %i.ed) #15
  br i1 %i.ej, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread, label %_ZN6hermes19isUnicodeIDContinueEj.exit65

_ZN6hermes19isUnicodeIDContinueEj.exit65:         ; preds = %bb.aj
  %i.ek = tail call noundef zeroext i1 @_ZN6hermes29isUnicodeConnectorPunctuationEj(i32 noundef %i.ed) #15
  %i.el = and i32 %i.ed, -2
  %i.em = icmp eq i32 %i.el, 8204
  %spec.select.i64 = or i1 %i.em, %i.ek
  br i1 %spec.select.i64, label %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread, label %.thread.sink.split

_ZN6hermes19isUnicodeIDContinueEj.exit65.thread:  ; preds = %bb.ah, %bb.ah, %_ZN6hermes22isASCIIIdentifierStartEj.exit.i.i62, %bb.ai, %bb.aj, %_ZN6hermes16isUnicodeIDStartEj.exit.i63, %_ZN6hermes19isUnicodeIDContinueEj.exit65
  %i.en = load i32, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.eo = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i9.i49 = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i9.i49, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51, label %bb.ak, !prof !54

bb.ak:                                            ; preds = %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i.i50 = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51: ; preds = %bb.ak, %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread
  %i.ep = phi i32 [ %.pre.i.i50, %bb.ak ], [ %i.en, %_ZN6hermes19isUnicodeIDContinueEj.exit65.thread ]
  %i.eq = load ptr, ptr %1, align 8, !tbaa !27
  %i.er = zext i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.er
  store i16 %.sroa.014.0.extract.trunc.i43, ptr %i.es, align 1
  %i.et = load i32, ptr %i.f, align 8, !tbaa !29
  %i.eu = add i32 %i.et, 1                        ; 3 uses
  store i32 %i.eu, ptr %i.f, align 8, !tbaa !29
  %i.ev = load i32, ptr %i.g, align 4, !tbaa !30
  %.not.i10.i52 = icmp ult i32 %i.eu, %i.ev
  br i1 %.not.i10.i52, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i54, label %bb.al, !prof !54

bb.al:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #15
  %.pre.i11.i53 = load i32, ptr %i.f, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i54

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i54: ; preds = %bb.al, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51
  %i.ew = phi i32 [ %.pre.i11.i53, %bb.al ], [ %i.eu, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i51 ]
  %i.ex = load ptr, ptr %1, align 8, !tbaa !27
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.ey
  store i16 %i.du, ptr %i.ez, align 1
  %i.fa = load i32, ptr %i.f, align 8, !tbaa !29
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.f, align 8, !tbaa !29
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i54, %_ZN6hermes19isUnicodeIDContinueEj.exit.thread, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i31, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit12.i, %_ZN6hermes16isUnicodeIDStartEj.exit.thread, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %.thread, label %bb.b, !llvm.loop !144

.thread.sink.split:                               ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41, %bb.ag, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i47, %_ZN6hermes19isUnicodeIDContinueEj.exit65, %bb.x, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i, %bb.o, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i, %_ZN6hermes16isUnicodeIDStartEj.exit61, %bb.h, %bb.d
  %.sink = phi ptr [ %i.m, %bb.d ], [ %i.s, %bb.h ], [ %i.ap, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i ], [ %i.ap, %_ZN6hermes16isUnicodeIDStartEj.exit61 ], [ %i.ap, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i ], [ %i.ap, %bb.o ], [ %i.dm, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.i41 ], [ %i.dm, %_ZN6hermes19isUnicodeIDContinueEj.exit65 ], [ %i.dm, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit8.i47 ], [ %i.dm, %bb.ag ], [ %i.ck, %bb.x ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread, %_ZN6hermes16isUnicodeIDStartEj.exit, %_ZN6hermes19isUnicodeIDContinueEj.exit, %.thread.sink.split, %bb.a, %bb.c
  %.5 = phi i1 [ %cond, %.thread.sink.split ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN6hermes19isUnicodeIDContinueEj.exit ], [ false, %_ZN6hermes16isUnicodeIDStartEj.exit ], [ false, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeRegExpIdentifierERN4llvh11SmallVectorIDsLj5EEEPFbjE.exit.thread ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20addNamedCaptureGroupEON4llvh11SmallVectorIDsLj5EEEj(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(26) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::ArrayRef", align 8    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -32
  %.not.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.c, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 5, ptr %i.i, align 4, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallVectorIDsLj5EEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIDsEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(26) %i.c, ptr noundef nonnull align 8 dereferenceable(26) %1) ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !145
  br label %_ZN4llvh11SmallVectorIDsLj5EEC2EOS1_.exit.i

_ZN4llvh11SmallVectorIDsLj5EEC2EOS1_.exit.i:      ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.c, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !145
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %.pre3.i = load ptr, ptr %i.b, align 8, !tbaa !147, !noalias !148
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvh11SmallVectorIDsLj5EEC2EOS1_.exit.i
  %i.p = phi ptr [ %.pre3.i, %bb.d ], [ %i.n, %_ZN4llvh11SmallVectorIDsLj5EEC2EOS1_.exit.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151, !noalias !148
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !152, !noalias !148
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.y = phi ptr [ %i.x, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !27
  store ptr %i.ab, ptr %3, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.af = zext i32 %i.ae to i64
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !157
  %i.ag = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !157 ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !160, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !157
end_hunk_0
