Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangFormat?download=true
inline.NumInlined: 2818
inline.NumDeleted: 1429
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.q) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  ret ptr %0
}

declare void @_ZN5clang6format12sortIncludesERKNS0_11FormatStyleEN4llvm9StringRefENS4_8ArrayRefINS_7tooling5RangeEEES5_Pj(ptr dead_on_unwind writable sret(%"class.clang::tooling::Replacements") align 8, ptr noundef nonnull align 8 dereferenceable(1208), ptr, i64, ptr, i64, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZN5clang7tooling12Replacements3addERKNS0_11ReplacementE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN5clang7tooling11ReplacementC1EN4llvm9StringRefEjjS3_(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, i32 noundef, i32 noundef, ptr noundef byval(%"class.llvm::StringRef") align 8) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang7tooling11ReplacementD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !43
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !43
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare void @_ZN5clang7tooling20applyAllReplacementsB5cxx11EN4llvm9StringRefERKNS0_12ReplacementsE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.180") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN5clang7tooling32calculateRangesAfterReplacementsERKNS0_12ReplacementsERKSt6vectorINS0_5RangeESaIS5_EE(ptr dead_on_unwind writable sret(%"class.std::vector.163") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang6format8reformatERKNS0_11FormatStyleEN4llvm9StringRefENS4_8ArrayRefINS_7tooling5RangeEEES5_PNS0_23FormattingAttemptStatusE(ptr dead_on_unwind writable sret(%"class.clang::tooling::Replacements") align 8, ptr noundef nonnull align 8 dereferenceable(1208), ptr, i64, ptr, i64, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZNK5clang7tooling12Replacements5mergeERKS1_(ptr dead_on_unwind writable sret(%"class.clang::tooling::Replacements") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang7tooling12ReplacementsaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !163
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !474  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !170
  store i32 %i.j, ptr %i.c, align 8, !tbaa !170
  store ptr %i.h, ptr %i.a, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !474
  store <2 x ptr> %i.m, ptr %i.d, align 8, !tbaa !474
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.n, align 8, !tbaa !475
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !163
  store i64 %i.p, ptr %i.f, align 8, !tbaa !163
  store ptr null, ptr %i.g, align 8, !tbaa !162
  store ptr %i.i, ptr %i.k, align 8, !tbaa !171
  store ptr %i.i, ptr %i.l, align 8, !tbaa !172
  store i64 0, ptr %i.o, align 8, !tbaa !163
  br label %_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EEaSEOS6_.exit

_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EEaSEOS6_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6formatL23emitReplacementWarningsERKNS_7tooling12ReplacementsEN4llvm9StringRefESt10unique_ptrINS5_12MemoryBufferESt14default_deleteIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"struct.llvm::SourceMgr::SrcBuffer", align 8 ; 8 uses
  %3 = alloca %"class.llvm::SourceMgr", align 8   ; 8 uses
  %4 = alloca %"class.llvm::SMDiagnostic", align 8 ; 16 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::ArrayRef.392", align 8 ; 2 uses
  %7 = alloca %"class.llvm::ArrayRef.393", align 8 ; 2 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10WarnFormat, i64 120), align 8, !tbaa !62, !range !23, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  %.not7 = xor i1 %i.b, true
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12NoWarnFormat, i64 120), align 8, !range !23
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not7, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4llvm9SourceMgrC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #25
  %i.e = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  store ptr null, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8
  store ptr %i.e, ptr %2, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184
  %.not.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.j, align 8, !tbaa !183
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4llvm9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %bb.c
  call void @_ZN4llvm9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not910 = icmp eq ptr %i.q, %i.r
  br i1 %.not910, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm12SMDiagnosticD2Ev.exit
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN4llvm12SMDiagnosticD2Ev.exit ] ; 2 uses
  %.sroa.01.011 = phi ptr [ %i.q, %.lr.ph ], [ %i.bt, %_ZN4llvm12SMDiagnosticD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.011, i64 64
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !186
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16WarningsAsErrors, i64 120), align 8, !tbaa !62, !range !23, !noundef !24
  %i.ak = xor i8 %i.aj, 1
  %not. = zext nneg i8 %i.ak to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i8 1, ptr %i.t, align 1, !tbaa !68
  store ptr @.str.137, ptr %5, align 8, !tbaa !43
  store i8 3, ptr %i.s, align 8, !tbaa !67
  call void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SMDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %i.ai, i32 noundef %not., ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.392") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.393") align 8 %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.al = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10ShowColors, i64 120), align 8, !tbaa !62, !range !23, !noundef !24
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %8, label %12

8:                                                ; preds = %bb.e
  %9 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12NoShowColors, i64 120), align 8, !tbaa !62, !range !23, !noundef !24
  %10 = trunc nuw i8 %9 to i1
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %bb.e
  %13 = phi i1 [ false, %bb.e ], [ %11, %8 ]
  call void @_ZNK4llvm12SMDiagnostic5printEPKcRNS_11raw_ostreamEbbb(ptr noundef nonnull align 8 dereferenceable(360) %4, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i1 noundef zeroext %13, i1 noundef zeroext true, i1 noundef zeroext true) #25
  %14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10ErrorLimit, i64 120), align 8, !tbaa !154 ; 2 uses
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %12
  %i.ao = add i32 %.012, 1                        ; 2 uses
  %.not12 = icmp ult i32 %i.ao, %14
  br i1 %.not12, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %12
  %.2 = phi i32 [ %.012, %12 ], [ %i.ao, %bb.f ]
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !27  ; 3 uses
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.g
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = mul nuw nsw i64 %i.ar, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZN4llvm7SMFixItD2Ev.exit.i.i.i ], [ %i.as, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !43
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #26
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i13 = icmp eq ptr %i.ap, %i.at
  br i1 %.not.i.i.i13, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !476

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.g
  %i.ba = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.ba) #25
  br label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !479 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !480
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #26
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.i, %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aa
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ac
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ae
  br i1 %i.bq, label %_ZN4llvm12SMDiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.br = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #26
  br label %_ZN4llvm12SMDiagnosticD2Ev.exit

_ZN4llvm12SMDiagnosticD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.01.011) #29 ; 2 uses
  %.not9 = icmp eq ptr %i.bt, %i.r
  br i1 %.not9, label %.loopexit, label %bb.e

.critedge:                                        ; preds = %bb.f
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !27  ; 3 uses
  %i.bv = load i32, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %.not4.i.i.i14 = icmp eq i32 %i.bv, 0
  br i1 %.not4.i.i.i14, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i24, label %.lr.ph.i.preheader.i.i15

.lr.ph.i.preheader.i.i15:                         ; preds = %.critedge
  %i.bw = zext i32 %i.bv to i64
  %.idx.i.i16 = mul nuw nsw i64 %i.bw, 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i16
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i20, %.lr.ph.i.preheader.i.i15
  %.05.i.i.i18 = phi ptr [ %i.by, %_ZN4llvm7SMFixItD2Ev.exit.i.i.i20 ], [ %i.bx, %.lr.ph.i.preheader.i.i15 ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.05.i.i.i18, i64 -48 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.05.i.i.i18, i64 -32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.05.i.i.i18, i64 -16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i17
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #26
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i20

_ZN4llvm7SMFixItD2Ev.exit.i.i.i20:                ; preds = %.lr.ph.i.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19
  %.not.i.i.i21 = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i.i.i21, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i22, label %.lr.ph.i.i.i17, !llvm.loop !476

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i22: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i20
  %.pre.i.i23 = load ptr, ptr %i.u, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i24

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i24: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i22, %.critedge
  %i.cf = phi ptr [ %.pre.i.i23, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i22 ], [ %i.bu, %.critedge ] ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.w
  br i1 %i.cg, label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i25, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i24
  call void @free(ptr noundef %i.cf) #25
  br label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i25

_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i25: ; preds = %bb.j, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i24
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !479 ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i26, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i27, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i25
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !480
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i27

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i27:    ; preds = %bb.k, %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i25
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aa
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i27
  %i.co = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ac
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i30
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ae
  br i1 %i.cv, label %_ZN4llvm12SMDiagnosticD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i31
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #26
  br label %_ZN4llvm12SMDiagnosticD2Ev.exit37

_ZN4llvm12SMDiagnosticD2Ev.exit37:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm12SMDiagnosticD2Ev.exit, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm12SMDiagnosticD2Ev.exit37
  call void @_ZN4llvm9SourceMgrD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.a
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16WarningsAsErrors, i64 120), align 8, !tbaa !62, !range !23, !noundef !24
  %i.cz = trunc nuw i8 %i.cy to i1
  ret i1 %i.cz
}

end_hunk_0
