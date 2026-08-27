Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TranslateFromWasm?download=true
inline.NumInlined: 8637
inline.NumDeleted: 3056
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN12_GLOBAL__N_116WasmBinaryParser12parseSectionILNS_15WasmSectionTypeE7EEEN4llvm13LogicalResultEv:_ZN4llvmplERKNS_5TwineES2_.exit38
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE7EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEEC1IZN12_GLOBAL__N_116WasmBinaryParserC1ERNS_9SourceMgrEPNS3_11MLIRContextEEUlS5_E_SE_EET_NS6_8CalledAsIT0_EEENUlPKS6_S5_E_8__invokeESK_S5_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i32, ptr %i.a, align 8, !tbaa !414
  %i.b = icmp eq i32 %.val3, 2
  br i1 %i.b, label %bb.b, label %_ZZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEEC1IZN12_GLOBAL__N_116WasmBinaryParserC1ERNS_9SourceMgrEPNS3_11MLIRContextEEUlS5_E_SE_EET_NS6_8CalledAsIT0_EEENKUlPKS6_S5_E_clESK_S5_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !433
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 1216
  store i8 0, ptr %i.c, align 8, !tbaa !59
  br label %_ZZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEEC1IZN12_GLOBAL__N_116WasmBinaryParserC1ERNS_9SourceMgrEPNS3_11MLIRContextEEUlS5_E_SE_EET_NS6_8CalledAsIT0_EEENKUlPKS6_S5_E_clESK_S5_.exit

_ZZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEEC1IZN12_GLOBAL__N_116WasmBinaryParserC1ERNS_9SourceMgrEPNS3_11MLIRContextEEUlS5_E_SE_EET_NS6_8CalledAsIT0_EEENKUlPKS6_S5_E_clESK_S5_.exit: ; preds = %bb.a, %bb.b
  ret i8 0
}

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #19
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !435  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !436  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !437 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #19, !inline_history !439
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #21, !inline_history !439
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !437
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !440

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !435
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !441
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !442  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !443  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #21
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !444

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !442
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !445
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #19
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = load i32, ptr %i.a, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIjEEN4llvm9FailureOrIT_EEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !116  ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %.sroa.speculated4.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  %i.f = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.speculated4.i.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %.lr.ph, label %._crit_edge, !prof !448

bb.b:                                             ; preds = %bb.d
  %5 = add i32 %.028.i25, 7
  %i.i = icmp eq ptr %i.r, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !prof !449, !llvm.loop !450

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i25 = phi i32 [ %5, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i24 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i23 = phi ptr [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = load i8, ptr %.031.i23, align 1, !tbaa !73 ; 2 uses
  %i.k = and i8 %i.j, 127                         ; 3 uses
  %i.l = zext nneg i8 %i.k to i64
  %i.m = icmp ugt i32 %.028.i25, 62
  br i1 %i.m, label %bb.c, label %bb.d, !prof !384

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i25, 63
  %.not.i = icmp samesign ugt i8 %i.k, 1
  %i.n = icmp ne i8 %i.k, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.n
  br i1 %or.cond43.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.o = icmp ult i32 %.028.i25, 64
  %6 = zext nneg i32 %.028.i25 to i64
  %i.p = shl i64 %i.l, %6
  %i.q = select i1 %i.o, i64 %i.p, i64 0, !prof !122
  %.130.i = add i64 %i.q, %.029.i24               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.031.i23, i64 1 ; 3 uses
  %i.s = icmp slt i8 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.i, !llvm.loop !450

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.0.ph = phi ptr [ @.str.22, %bb.a ], [ @.str.23, %bb.c ], [ @.str.22, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !118
  %i.w = add i32 %i.v, %i.b
  %i.x = tail call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef %i.w) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !70
  %i.aa = load i8, ptr %.0.ph, align 1, !tbaa !73
  %.not.i5 = icmp eq i8 %i.aa, 0
  br i1 %.not.i5, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr %.0.ph, ptr %3, align 8, !tbaa !73
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %._crit_edge, %bb.e
  %storemerge.i = phi i8 [ 3, %bb.e ], [ 1, %._crit_edge ]
  store i8 %storemerge.i, ptr %i.y, align 8, !tbaa !74
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(34) %3) #19
  %i.ab = load ptr, ptr %2, align 8, !tbaa !75
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm5TwineC2EPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !83, !range !84, !noundef !85
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !83
  br i1 %i.ae, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.af) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ag = icmp ugt i64 %.130.i, 4294967295
  br i1 %i.ag, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i7 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !118
  %i.ak = add i32 %i.aj, %i.b
  %i.al = tail call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %.sroa.0.0.copyload.i7, i32 noundef 0, i32 noundef %i.ak) #19
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %i.al) #19
  %i.am = load ptr, ptr %4, align 8, !tbaa !75
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.21, ptr %i.ao, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !124
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %.not.i.i.i.i.i = icmp ult i32 %i.aq, %i.as
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l, !prof !122

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.at = zext i32 %i.aq to i64
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !17
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ap, align 8, !tbaa !17
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.pr = load ptr, ptr %4, align 8, !tbaa !75
  %.not.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread: ; preds = %bb.j, %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !83, !range !84, !noundef !85
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8, !tbaa !83
  br i1 %i.ba, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bb) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9

_ZN4mlir18InFlightDiagnosticD2Ev.exit9:           ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %i.r to i64
  %i.bd = ptrtoint ptr %i.g to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.b, %i.bf
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !116
  %i.bh = or disjoint i64 %.130.i, 4294967296
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit9, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.4.0 = phi i64 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit9 ], [ %i.bh, %bb.p ], [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  ret i64 %.sroa.4.0
}

declare void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN4mlir10emitRemarkENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = load i32, ptr %i.a, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #10 comdat {
bb.a:
  tail call void @abort() #22
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZN12_GLOBAL__N_110ParserHead15parseResultTypeEPN4mlir11MLIRContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.192", align 8 ; 11 uses
  %3 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %i.a = tail call fastcc range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIjEEN4llvm9FailureOrIT_EEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not20 = icmp samesign ult i64 %i.a, 4294967296
  br i1 %.not20, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm3ELSt4byte2EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE:bb.a
  %i.app = xor i64 %i.apl, -1
  %i.apq = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i14.i.i, %i.app
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i.i = select i1 %i.apn, ptr %i.apo, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i15.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i20.i.i = select i1 %i.apn, i64 %i.apq, i64 %i.apl ; 2 uses
  %i.apr = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i20.i.i, 0
  br i1 %i.apr, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i21.i.i, !llvm.loop !3359

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i21.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i9.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i22.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i9.i.i ], [ %i.apk, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i = phi ptr [ %i.aph, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i.i9.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i ] ; 3 uses
  %i.aps = getelementptr inbounds nuw [16 x i8], ptr %i.aph, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i22.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i24.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i, %i.aps
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i24.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i, label %bb.gx

bb.gx:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i21.i.i
  %i.apt = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i, align 8, !tbaa !336, !noalias !3378
  %i.apu = icmp eq ptr %i.apt, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i
  br i1 %i.apu, label %bb.gy, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i

bb.gy:                                            ; preds = %bb.gx
  %i.apv = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i, i64 8
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !3360, !noalias !3378
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i

_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i: ; preds = %bb.gy, %bb.gx, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i21.i.i, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIfEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i
  %i.apx = phi ptr [ null, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIfEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i ], [ %i.apw, %bb.gy ], [ null, %bb.gx ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i.i21.i.i ]
  %i.apy = tail call ptr @_ZN4mlir7wasmssa7ConstOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload.i.i.i.i.i7.i.i, ptr %i.apa, ptr %i.apx) #19, !noalias !3378
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !3377
  %i.apz = getelementptr inbounds i8, ptr %i.apy, i64 -16
  %i.aqa = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.apz, i64 noundef 0) #19, !noalias !3378
  %i.aqb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.aqb, ptr %14, align 8, !tbaa !15, !noalias !3377
  %i.aqc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.aqd, align 4, !tbaa !18, !noalias !3377
  store ptr %i.aqa, ptr %i.aqb, align 8, !noalias !3377
  store i32 1, ptr %i.aqc, align 8, !tbaa !17, !noalias !3377
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aqe, ptr %0, align 8, !tbaa !15, !alias.scope !3377
  %i.aqf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aqf, align 8, !tbaa !17, !alias.scope !3377
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.aqg, align 4, !tbaa !18, !alias.scope !3377
  %i.aqh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %14) ; 0 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.aqi, align 8, !tbaa !315, !alias.scope !3377
  %i.aqj = load ptr, ptr %14, align 8, !tbaa !15, !noalias !3377 ; 2 uses
  %i.aqk = icmp eq ptr %i.aqj, %i.aqb
  br i1 %i.aqk, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i26.i.i, label %bb.gz

bb.gz:                                            ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i
  call void @free(ptr noundef %i.aqj) #19
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i26.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i26.i.i: ; preds = %bb.gz, %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !3377
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

bb.ha:                                            ; preds = %bb.gs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  %i.aql = load ptr, ptr %i.aoq, align 8, !tbaa !468, !noalias !3388, !nonnull !85, !align !489
  %i.aqm = tail call fastcc { i64, i8 } @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIlEEN4llvm9FailureOrIT_EEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aql), !noalias !3389 ; 2 uses
  %i.aqn = extractvalue { i64, i8 } %i.aqm, 1
  %i.aqo = trunc nuw i8 %i.aqn to i1
  br i1 %i.aqo, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.aqp, align 8, !tbaa !315, !alias.scope !3388
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

bb.hc:                                            ; preds = %bb.ha
  %i.aqq = extractvalue { i64, i8 } %i.aqm, 0
  %.sroa.02.0.copyload.i.i.i5.i.i28.i.i = load ptr, ptr %1, align 8, !noalias !3388
  %i.aqr = tail call ptr @_ZN4mlir7Builder10getI64TypeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #19, !noalias !3389
  %i.aqs = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.aqr, i64 noundef %i.aqq) #19, !noalias !3389 ; 3 uses
  %.not.i.i.i.i.i.i6.i.i.i.i = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i.i.i.i6.i.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !3354, !noalias !3389 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %i.aqv = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !3388
  %i.aqw = icmp eq i8 %i.aqv, 0
  br i1 %i.aqw, label %bb.he, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i, !prof !3357

bb.he:                                            ; preds = %bb.hd
  %i.aqx = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #19, !noalias !3389
  %.not.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i.i = icmp eq i32 %i.aqx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aqy = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.75, i64 49), i64 15) #19, !noalias !3389
  store ptr %i.aqy, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !noalias !3388
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #19, !noalias !3389
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i: ; preds = %bb.hf, %bb.he, %bb.hd
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !3358, !noalias !3388 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqu, align 8, !tbaa !15, !noalias !3389 ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !17, !noalias !3389 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i9.i.i.i.i = icmp eq i32 %i.arb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i9.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i
  %i.arc = zext i32 %i.arb to i64                 ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i.i = phi i64 [ %i.arc, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i.i = phi ptr [ %i.aqz, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i ] ; 2 uses
  %i.ard = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i.i, 1 ; 3 uses
  %i.are = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i.i, i64 %i.ard ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i.i.i.i = load ptr, ptr %i.are, align 8, !tbaa !3358, !noalias !3389
  %i.arf = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %i.arh = xor i64 %i.ard, -1
  %i.ari = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i.i, %i.arh
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i.i = select i1 %i.arf, ptr %i.arg, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i.i = select i1 %i.arf, i64 %i.ari, i64 %i.ard ; 2 uses
  %i.arj = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i.i, 0
  br i1 %i.arj, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i, !llvm.loop !3359

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i20.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i ], [ %i.arc, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i.i = phi ptr [ %i.aqz, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i7.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i.i ] ; 3 uses
  %i.ark = getelementptr inbounds nuw [16 x i8], ptr %i.aqz, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i20.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i22.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i.i, %i.ark
  br i1 %.not.i.i.i.i.i.i.i.i.i.i22.i.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i
  %i.arl = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i.i, align 8, !tbaa !336, !noalias !3389
  %i.arm = icmp eq ptr %i.arl, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i
  br i1 %i.arm, label %bb.hh, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.arn = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i.i, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !3360, !noalias !3389
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i

_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i: ; preds = %bb.hh, %bb.hg, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i, %bb.hc
  %i.arp = phi ptr [ null, %bb.hc ], [ %i.aro, %bb.hh ], [ null, %bb.hg ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i19.i.i.i.i ]
  %i.arq = tail call ptr @_ZN4mlir7wasmssa7ConstOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload.i.i.i5.i.i28.i.i, ptr %i.aqs, ptr %i.arp) #19, !noalias !3389
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !3388
  %i.arr = getelementptr inbounds i8, ptr %i.arq, i64 -16
  %i.ars = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.arr, i64 noundef 0) #19, !noalias !3389
  %i.art = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.art, ptr %12, align 8, !tbaa !15, !noalias !3388
  %i.aru = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.arv = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.arv, align 4, !tbaa !18, !noalias !3388
  store ptr %i.ars, ptr %i.art, align 8, !noalias !3388
  store i32 1, ptr %i.aru, align 8, !tbaa !17, !noalias !3388
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.arw, ptr %0, align 8, !tbaa !15, !alias.scope !3388
  %i.arx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.arx, align 8, !tbaa !17, !alias.scope !3388
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ary, align 4, !tbaa !18, !alias.scope !3388
  %i.arz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %12) ; 0 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.asa, align 8, !tbaa !315, !alias.scope !3388
  %i.asb = load ptr, ptr %12, align 8, !tbaa !15, !noalias !3388 ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %i.art
  br i1 %i.asc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i24.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i
  call void @free(ptr noundef %i.asb) #19
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i24.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i24.i.i.i.i: ; preds = %bb.hi, %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i23.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !3388
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

bb.hj:                                            ; preds = %bb.gr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3390)
  br i1 %.not.i5.i6.i7.i8, label %bb.if, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3399)
  %i.asd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !468, !noalias !3402, !nonnull !85, !align !489 ; 7 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 28 ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !116, !noalias !3403 ; 4 uses
  %i.ash = zext i32 %i.asg to i64                 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !97, !noalias !3403 ; 3 uses
  %.sroa.speculated4.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.asj, i64 %i.ash)
  %i.ask = load ptr, ptr %i.ase, align 8, !tbaa !99, !noalias !3403 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 %.sroa.speculated4.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.asj
  %.not177 = icmp ugt i64 %i.asj, %i.ash
  br i1 %.not177, label %.lr.ph, label %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge, !prof !448

bb.hl:                                            ; preds = %bb.hn
  %i.asn = icmp eq ptr %i.asy, %i.asm
  br i1 %i.asn, label %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge, label %.lr.ph, !prof !449, !llvm.loop !3404

.lr.ph:                                           ; preds = %bb.hk, %bb.hl
  %.044.i.i.i.i.i.i.i.i.i174 = phi i32 [ %153, %bb.hl ], [ 0, %bb.hk ] ; 5 uses
  %.045.i.i.i.i.i.i.i.i.i173 = phi i64 [ %.146.i.i.i.i.i.i.i.i.i, %bb.hl ], [ 0, %bb.hk ] ; 2 uses
  %.050.i.i.i.i.i.i.i.i.i172 = phi ptr [ %i.asy, %bb.hl ], [ %i.asl, %bb.hk ] ; 2 uses
  %i.aso = load i8, ptr %.050.i.i.i.i.i.i.i.i.i172, align 1, !tbaa !73, !noalias !3403 ; 4 uses
  %i.asp = and i8 %i.aso, 127
  %i.asq = zext nneg i8 %i.asp to i64             ; 2 uses
  %i.asr = icmp ugt i32 %.044.i.i.i.i.i.i.i.i.i174, 62
  br i1 %i.asr, label %bb.hm, label %bb.hn, !prof !384

bb.hm:                                            ; preds = %.lr.ph
  %i.ass = icmp eq i32 %.044.i.i.i.i.i.i.i.i.i174, 63
  br i1 %i.ass, label %switch.early.test.i.i.i.i.i.i.i.i.i, label %.critedge66.i.i.i.i.i.i.i.i.i

switch.early.test.i.i.i.i.i.i.i.i.i:              ; preds = %bb.hm
  switch i8 %i.aso, label %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge [
    i8 -1, label %bb.hn
    i8 -128, label %bb.hn
    i8 127, label %bb.hn
    i8 0, label %bb.hn
  ]

.critedge66.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.hm
  %i.ast = icmp slt i64 %.045.i.i.i.i.i.i.i.i.i173, 0
  %i.asu = select i1 %i.ast, i64 127, i64 0
  %.not58.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.asu, %i.asq
  br i1 %.not58.i.i.i.i.i.i.i.i.i, label %bb.hn, label %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge

bb.hn:                                            ; preds = %.critedge66.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %switch.early.test.i.i.i.i.i.i.i.i.i, %.lr.ph
  %i.asv = icmp ult i32 %.044.i.i.i.i.i.i.i.i.i174, 64
  %152 = zext nneg i32 %.044.i.i.i.i.i.i.i.i.i174 to i64
  %i.asw = shl i64 %i.asq, %152
  %i.asx = select i1 %i.asv, i64 %i.asw, i64 0, !prof !122
  %.146.i.i.i.i.i.i.i.i.i = or i64 %i.asx, %.045.i.i.i.i.i.i.i.i.i173 ; 2 uses
  %153 = add i32 %.044.i.i.i.i.i.i.i.i.i174, 7    ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %.050.i.i.i.i.i.i.i.i.i172, i64 1 ; 3 uses
  %i.asz = icmp slt i8 %i.aso, 0
  br i1 %i.asz, label %bb.hl, label %bb.hs, !llvm.loop !3404

.critedge66.i.i.i.i.i.i.i.i.i._crit_edge:         ; preds = %bb.hl, %switch.early.test.i.i.i.i.i.i.i.i.i, %.critedge66.i.i.i.i.i.i.i.i.i, %bb.hk
  %.0.ph.i.i.i.i.i.i.i.i = phi ptr [ @.str.79, %bb.hk ], [ @.str.79, %bb.hl ], [ @.str.80, %.critedge66.i.i.i.i.i.i.i.i.i ], [ @.str.80, %switch.early.test.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !3402
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ase, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ata, align 8, !noalias !3403
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ase, i64 24
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !118, !noalias !3403
  %i.atd = add i32 %i.atc, %i.asg
  %i.ate = tail call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef %i.atd) #19, !noalias !3403
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !3402
  %i.atf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.atg = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.atg, align 1, !tbaa !70, !noalias !3402
  %i.ath = load i8, ptr %.0.ph.i.i.i.i.i.i.i.i, align 1, !tbaa !73, !noalias !3402
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ath, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm5TwineC2EPKc.exit.i.i.i.i.i.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge
  store ptr %.0.ph.i.i.i.i.i.i.i.i, ptr %9, align 8, !tbaa !73, !noalias !3402
  br label %_ZN4llvm5TwineC2EPKc.exit.i.i.i.i.i.i.i.i

_ZN4llvm5TwineC2EPKc.exit.i.i.i.i.i.i.i.i:        ; preds = %bb.ho, %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge
  %storemerge.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.ho ], [ 1, %.critedge66.i.i.i.i.i.i.i.i.i._crit_edge ]
  store i8 %storemerge.i.i.i.i.i.i.i.i.i, ptr %i.atf, align 8, !tbaa !74, !noalias !3402
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr %i.ate, ptr noundef nonnull align 8 dereferenceable(34) %9) #19, !noalias !3403
  %i.ati = load ptr, ptr %8, align 8, !tbaa !75, !noalias !3402
  %.not.i6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ati, null
  br i1 %.not.i6.i.i.i.i.i.i.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %_ZN4llvm5TwineC2EPKc.exit.i.i.i.i.i.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #19, !noalias !3403
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %_ZN4llvm5TwineC2EPKc.exit.i.i.i.i.i.i.i.i
  %i.atj = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.atk = load i8, ptr %i.atj, align 8, !tbaa !83, !range !84, !noalias !3402, !noundef !85
  %i.atl = trunc nuw i8 %i.atk to i1
  store i8 0, ptr %i.atj, align 8, !tbaa !83, !noalias !3402
  br i1 %i.atl, label %bb.hr, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hq
  %i.atm = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.atm) #19, !noalias !3403
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i.i.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !3402
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !3402
  br label %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.thread.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hn
  %i.atn = icmp ugt i32 %153, 63
  %.not61.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.aso, 64
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.atn, i1 true, i1 %.not61.i.i.i.i.i.i.i.i.i
  %154 = zext nneg i32 %153 to i64
  %i.ato = shl nsw i64 -1, %154
  %i.atp = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i64 0, i64 %i.ato
  %.3.i.i.i.i.i.i.i.i.i = or i64 %.146.i.i.i.i.i.i.i.i.i, %i.atp ; 2 uses
  %i.atq = add i64 %.3.i.i.i.i.i.i.i.i.i, -2147483648
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i64 %i.atq, -4294967296
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ht, label %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !3402
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ase, i64 16
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i.i.i = load ptr, ptr %i.atr, align 8, !noalias !3403
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ase, i64 24
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !118, !noalias !3403
  %i.atu = add i32 %i.att, %i.asg
  %i.atv = tail call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %.sroa.0.0.copyload.i7.i.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef %i.atu) #19, !noalias !3403
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr %i.atv) #19, !noalias !3403
  %i.atw = load ptr, ptr %10, align 8, !tbaa !75, !noalias !3402
  %.not.i.i.i.i.i.i.i26.i.i.i = icmp eq ptr %i.atw, null
  br i1 %.not.i.i.i.i.i.i.i26.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.atx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !3402
  store i32 3, ptr %7, align 8, !tbaa !119, !noalias !3402
  %i.aty = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.21, ptr %i.aty, align 8, !tbaa !123, !noalias !3402
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !124, !noalias !3402
  %i.atz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.aua = load i32, ptr %i.atz, align 8, !tbaa !17, !noalias !3402 ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !18, !noalias !3402
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.aua, %i.auc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hw, label %bb.hv, !prof !122

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.atx, ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !3403
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.i.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.hu
  %i.aud = zext i32 %i.aua to i64
  %i.aue = load ptr, ptr %i.atx, align 8, !tbaa !15, !noalias !3402
  %i.auf = getelementptr inbounds nuw [24 x i8], ptr %i.aue, i64 %i.aud
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.auf, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !noalias !3403
  %i.aug = load i32, ptr %i.atz, align 8, !tbaa !17, !noalias !3402
  %i.auh = add i32 %i.aug, 1
  store i32 %i.auh, ptr %i.atz, align 8, !tbaa !17, !noalias !3402
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.i.i.i.i.i.i.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !3402
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !75, !noalias !3402
  %.not.i8.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.i.i.i.i.i.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #19, !noalias !3403
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.hx, %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.i.i.i.i.i.i.i.i, %bb.ht
  %i.aui = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.auj = load i8, ptr %i.aui, align 8, !tbaa !83, !range !84, !noalias !3402, !noundef !85
  %i.auk = trunc nuw i8 %i.auj to i1
  store i8 0, ptr %i.aui, align 8, !tbaa !83, !noalias !3402
  br i1 %i.auk, label %bb.hy, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9.i.i.i.i.i.i.i.i

bb.hy:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aul) #19, !noalias !3403
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9.i.i.i.i.i.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit9.i.i.i.i.i.i.i.i: ; preds = %bb.hy, %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !3402
  br label %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.thread.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i: ; preds = %bb.hs
  %i.aum = ptrtoint ptr %i.asy to i64
  %i.aun = ptrtoint ptr %i.asl to i64
  %i.auo = sub i64 %i.aum, %i.aun
  %i.aup = trunc i64 %i.auo to i32
  %i.auq = add i32 %i.asg, %i.aup
  store i32 %i.auq, ptr %i.asf, align 4, !tbaa !116, !noalias !3403
  %.sroa.02.0.copyload.i.i.i.i6.i.i.i = load ptr, ptr %1, align 8, !noalias !3402
  %i.aur = tail call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #19, !noalias !3403
  %i.aus = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.aur, i64 noundef %.3.i.i.i.i.i.i.i.i.i) #19, !noalias !3403 ; 3 uses
  %.not.i.i.i7.i.i.i.i.i.i.i = icmp eq ptr %i.aus, null
  br i1 %.not.i.i.i7.i.i.i.i.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i, label %bb.hz

_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit9.i.i.i.i.i.i.i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i.i.i.i.i
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.aut, align 8, !tbaa !315, !alias.scope !3402
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

bb.hz:                                            ; preds = %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i
  %i.auu = load ptr, ptr %i.aus, align 8, !tbaa !3354, !noalias !3403 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 8
  %i.auw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !3402
  %i.aux = icmp eq i8 %i.auw, 0
  br i1 %i.aux, label %bb.ia, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i, !prof !3357

bb.ia:                                            ; preds = %bb.hz
  %i.auy = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #19, !noalias !3403
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i = icmp eq i32 %i.auy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.auz = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.75, i64 49), i64 15) #19, !noalias !3403
  store ptr %i.auz, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !noalias !3402
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id) #19, !noalias !3403
  br label %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i

_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i: ; preds = %bb.ib, %bb.ia, %bb.hz
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !3358, !noalias !3402 ; 2 uses
  %i.ava = load ptr, ptr %i.auv, align 8, !tbaa !15, !noalias !3403 ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auu, i64 16
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !17, !noalias !3403 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i.i.i = icmp eq i32 %i.avc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i9.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i
  %i.avd = zext i32 %i.avc to i64                 ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i = phi i64 [ %i.avd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i = phi ptr [ %i.ava, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i ] ; 2 uses
  %i.ave = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i, 1 ; 3 uses
  %i.avf = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i, i64 %i.ave ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i.i.i = load ptr, ptr %i.avf, align 8, !tbaa !3358, !noalias !3403
  %i.avg = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avf, i64 16
  %i.avi = xor i64 %i.ave, -1
  %i.avj = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i12.i.i.i, %i.avi
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i = select i1 %i.avg, ptr %i.avh, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i13.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i = select i1 %i.avg, i64 %i.avj, i64 %i.ave ; 2 uses
  %i.avk = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i18.i.i.i, 0
  br i1 %i.avk, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i, !llvm.loop !3359

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i20.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i ], [ %i.avd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i = phi ptr [ %i.ava, %_ZN4mlir6detail9InterfaceINS_9TypedAttrENS_9AttributeENS0_24TypedAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i7.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i17.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i11.i.i.i ] ; 3 uses
  %i.avl = getelementptr inbounds nuw [16 x i8], ptr %i.ava, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i20.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i22.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i, %i.avl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i22.i.i.i, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i
  %i.avm = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i, align 8, !tbaa !336, !noalias !3403
  %i.avn = icmp eq ptr %i.avm, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i
  br i1 %i.avn, label %bb.id, label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i

bb.id:                                            ; preds = %bb.ic
  %i.avo = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i.i, i64 8
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !3360, !noalias !3403
  br label %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i

_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i: ; preds = %bb.id, %bb.ic, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i
  %i.avq = phi ptr [ null, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.i.i.i.i.i.i.i ], [ %i.avp, %bb.id ], [ null, %bb.ic ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i19.i.i.i ]
  %i.avr = tail call ptr @_ZN4mlir7wasmssa7ConstOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload.i.i.i.i6.i.i.i, ptr %i.aus, ptr %i.avq) #19, !noalias !3403
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !3402
  %i.avs = getelementptr inbounds i8, ptr %i.avr, i64 -16
  %i.avt = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.avs, i64 noundef 0) #19, !noalias !3403
  %i.avu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.avu, ptr %11, align 8, !tbaa !15, !noalias !3402
  %i.avv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.avw = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.avw, align 4, !tbaa !18, !noalias !3402
  store ptr %i.avt, ptr %i.avu, align 8, !noalias !3402
  store i32 1, ptr %i.avv, align 8, !tbaa !17, !noalias !3402
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.avx, ptr %0, align 8, !tbaa !15, !alias.scope !3402
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.avy, align 8, !tbaa !17, !alias.scope !3402
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.avz, align 4, !tbaa !18, !alias.scope !3402
  %i.awa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %11) ; 0 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.awb, align 8, !tbaa !315, !alias.scope !3402
  %i.awc = load ptr, ptr %11, align 8, !tbaa !15, !noalias !3402 ; 2 uses
  %i.awd = icmp eq ptr %i.awc, %i.avu
  br i1 %i.awd, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i24.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i
  call void @free(ptr noundef %i.awc) #19
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i24.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i24.i.i.i: ; preds = %bb.ie, %_ZN4llvm9FailureOrINS_11SmallVectorIN4mlir5ValueELj6EEEEC2EOS4_.exit.i.i.i.i23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !3402
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

bb.if:                                            ; preds = %bb.hj
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !noalias !3405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !3412
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !3412
  %i.awe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.awf = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.awf, align 1, !tbaa !70, !noalias !3412
  store ptr @.str.60, ptr %6, align 8, !tbaa !73, !noalias !3412
  store i8 3, ptr %i.awe, align 8, !tbaa !74, !noalias !3412
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %6) #19, !noalias !3413
  %i.awg = load ptr, ptr %5, align 8, !tbaa !75, !noalias !3412
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.awg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.thread.i.i.i.i.i.i, label %bb.ig

_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.thread.i.i.i.i.i.i: ; preds = %bb.if
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.awh, align 8, !tbaa !315, !alias.scope !3414
  br label %bb.ik

bb.ig:                                            ; preds = %bb.if
  %i.awi = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !3412
  store i32 2, ptr %4, align 8, !tbaa !119, !noalias !3412
  %i.awj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 64, ptr %i.awj, align 8, !tbaa !73, !noalias !3412
  %i.awk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.awl = load i32, ptr %i.awk, align 8, !tbaa !17, !noalias !3412 ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !18, !noalias !3412
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.awl, %i.awn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ii, label %bb.ih, !prof !122

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.awi, ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !3413
  br label %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.ig
  %i.awo = zext i32 %i.awl to i64
  %i.awp = load ptr, ptr %i.awi, align 8, !tbaa !15, !noalias !3412
  %i.awq = getelementptr inbounds nuw [24 x i8], ptr %i.awp, i64 %i.awo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.awq, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !noalias !3413
  %i.awr = load i32, ptr %i.awk, align 8, !tbaa !17, !noalias !3412
  %i.aws = add i32 %i.awr, 1
  store i32 %i.aws, ptr %i.awk, align 8, !tbaa !17, !noalias !3412
  br label %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.i.i.i.i.i.i

_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.i.i.i.i.i.i: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !3412
  %.pr.i.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !75, !noalias !3412
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.awt, align 8, !tbaa !315, !alias.scope !3417
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.i.i.i.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19, !noalias !3413
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.i.i.i.i.i.i, %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.thread.i.i.i.i.i.i
  %i.awu = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.awv = load i8, ptr %i.awu, align 8, !tbaa !83, !range !84, !noalias !3412, !noundef !85
  %i.aww = trunc nuw i8 %i.awv to i1
  store i8 0, ptr %i.awu, align 8, !tbaa !83, !noalias !3412
  br i1 %i.aww, label %bb.il, label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte64EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.awx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.awx) #19, !noalias !3413
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte64EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i

_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte64EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !3412
  br label %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit

_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm4ELSt4byte5EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit: ; preds = %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte64EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i24.i.i.i, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIiEEN4llvm9FailureOrIT_EEv.exit.thread.i.i.i.i.i.i.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i24.i.i.i.i, %bb.hb, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i26.i.i, %_ZN12_GLOBAL__N_110ParserHead12parseLiteralIfEEN4llvm9FailureOrIT_EEv.exit.thread.i.i.i.i.i.i.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i.i, %bb.gj, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte69EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte70EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte71EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte72EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte73EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte74EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte75EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte76EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte77EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte78EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte79EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte80EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte81EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte82EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte83EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte84EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte85EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte86EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte87EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte88EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte89EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte90EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte91EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte92EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte93EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte94EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i, %_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm8ELSt4byte95EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE.exit.i.i.i.i
  ret void
}

declare ptr @_ZN4mlir7wasmssa7DivSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa8PopCntOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa5CtzOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa5ClzOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4GeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4LeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4GtOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4LtOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4NeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa4EqOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6GeUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6GeSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6LeUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6LeSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6GtUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6GtSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6LtUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa6LtSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa5EqzOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa7ConstOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare ptr @_ZN4mlir9FloatAttr3getENS_4TypeEd(ptr, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIlEEN4llvm9FailureOrIT_EEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !116  ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %.sroa.speculated4.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  %i.f = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.speculated4.i.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %.lr.ph, label %switch.early.test.i._crit_edge, !prof !448

bb.b:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %i.t, %i.h
  br i1 %i.i, label %switch.early.test.i._crit_edge, label %.lr.ph, !prof !449, !llvm.loop !3404

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.044.i23 = phi i32 [ %4, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.045.i22 = phi i64 [ %.146.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.050.i21 = phi ptr [ %i.t, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = load i8, ptr %.050.i21, align 1, !tbaa !73 ; 4 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64                 ; 2 uses
  %i.m = icmp ugt i32 %.044.i23, 62
  br i1 %i.m, label %bb.c, label %bb.d, !prof !384

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i32 %.044.i23, 63
  br i1 %i.n, label %switch.early.test.i, label %.critedge66.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %i.j, label %switch.early.test.i._crit_edge [
    i8 -1, label %bb.d
    i8 -128, label %bb.d
    i8 127, label %bb.d
    i8 0, label %bb.d
  ]

.critedge66.i:                                    ; preds = %bb.c
  %i.o = icmp slt i64 %.045.i22, 0
  %i.p = select i1 %i.o, i64 127, i64 0
  %.not58.i = icmp eq i64 %i.p, %i.l
  br i1 %.not58.i, label %bb.d, label %switch.early.test.i._crit_edge

bb.d:                                             ; preds = %.critedge66.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.q = icmp ult i32 %.044.i23, 64
  %3 = zext nneg i32 %.044.i23 to i64
  %i.r = shl i64 %i.l, %3
  %i.s = select i1 %i.q, i64 %i.r, i64 0, !prof !122
  %.146.i = or i64 %i.s, %.045.i22                ; 2 uses
  %4 = add i32 %.044.i23, 7                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.050.i21, i64 1 ; 3 uses
  %i.u = icmp slt i8 %i.j, 0
  br i1 %i.u, label %bb.b, label %bb.i, !llvm.loop !3404

switch.early.test.i._crit_edge:                   ; preds = %bb.b, %.critedge66.i, %switch.early.test.i, %bb.a
  %.0.ph = phi ptr [ @.str.79, %bb.a ], [ @.str.79, %bb.b ], [ @.str.80, %switch.early.test.i ], [ @.str.80, %.critedge66.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !118
  %i.y = add i32 %i.x, %i.b
  %i.z = tail call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef %i.y) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !70
  %i.ac = load i8, ptr %.0.ph, align 1, !tbaa !73
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.e

bb.e:                                             ; preds = %switch.early.test.i._crit_edge
  store ptr %.0.ph, ptr %2, align 8, !tbaa !73
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %switch.early.test.i._crit_edge, %bb.e
  %storemerge.i = phi i8 [ 3, %bb.e ], [ 1, %switch.early.test.i._crit_edge ]
  store i8 %storemerge.i, ptr %i.aa, align 8, !tbaa !74
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(34) %2) #19
  %i.ad = load ptr, ptr %1, align 8, !tbaa !75
  %.not.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm5TwineC2EPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !83, !range !84, !noundef !85
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.ae, align 8, !tbaa !83
  br i1 %i.ag, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ah) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ai = icmp ugt i32 %4, 63
  %.not61.i = icmp samesign ult i8 %i.j, 64
  %or.cond.i = select i1 %i.ai, i1 true, i1 %.not61.i
  %5 = zext nneg i32 %4 to i64
  %i.aj = shl nsw i64 -1, %5
  %i.ak = select i1 %or.cond.i, i64 0, i64 %i.aj
  %.3.i = or i64 %.146.i, %i.ak
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = ptrtoint ptr %i.g to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.b, %i.ao
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.07.0 = phi i64 [ %.3.i, %bb.i ], [ undef, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  %.sroa.3.0 = phi i8 [ 1, %bb.i ], [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116ExpressionParser20dispatchToInstParserILm3ELSt4byte1EEEN4llvm9FailureOrINS3_11SmallVectorIN4mlir5ValueELj6EEEEES2_RNS6_9OpBuilderE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.528", align 8 ; 8 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::FailureOr.521", align 8 ; 7 uses
  %18 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %19 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %20 = alloca %"class.mlir::wasmssa::LocalRefType", align 8 ; 4 uses
  %21 = alloca %"class.llvm::SmallVector.528", align 8 ; 10 uses
  %22 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %23 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %24 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %25 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %29 = alloca %"class.llvm::FailureOr.521", align 8 ; 7 uses
  %30 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %31 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %32 = alloca %"class.mlir::wasmssa::LocalRefType", align 8 ; 4 uses
  %33 = alloca %"class.llvm::SmallVector.528", align 8 ; 10 uses
  %34 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %35 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %36 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %37 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %39 = alloca %"class.llvm::SmallVector.528", align 8 ; 8 uses
  %40 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %41 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %43 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %44 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %46 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %47 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %49 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %50 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %53 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %55 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %56 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %58 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %59 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %61 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %62 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %65 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %67 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %68 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %70 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %71 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %74 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %76 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %77 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %79 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %80 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %82 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %83 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %85 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %86 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %88 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %89 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %91 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %92 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %94 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %95 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %96 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %97 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %98 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %100 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %101 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %102 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %103 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %104 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %105 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %106 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %107 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %108 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %109 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %110 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %111 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %112 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %113 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %114 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %115 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %116 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %117 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %118 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %119 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %120 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %121 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %122 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %123 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %i.a = and i8 %2, 16
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.dy, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8               ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  %i.b = and i8 %2, 8
  %.not.i = icmp eq i8 %i.b, 0
  %i.c = and i8 %2, 4
  %.not.i6.i = icmp eq i8 %i.c, 0                 ; 2 uses
  %i.d = and i8 %2, 2
  %.not.i6.i7.i = icmp eq i8 %i.d, 0              ; 4 uses
  %i.e = and i8 %2, 1
  %.not.i6.i7.i8.i = icmp eq i8 %i.e, 0           ; 8 uses
  br i1 %.not.i, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  br i1 %.not.i6.i, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3425)
  br i1 %.not.i6.i7.i, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  br i1 %.not.i6.i7.i8.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434)
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #19, !noalias !3437
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #19, !noalias !3437
  %i.f = getelementptr inbounds nuw i8, ptr %123, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %123, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !70, !noalias !3437
  store ptr @.str.60, ptr %123, align 8, !tbaa !73, !noalias !3437
  store i8 3, ptr %i.f, align 8, !tbaa !74, !noalias !3437
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %122, ptr %.val, ptr noundef nonnull align 8 dereferenceable(34) %123) #19, !noalias !3437
  %i.h = load ptr, ptr %122, align 8, !tbaa !75, !noalias !3437
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.thread.i.i.i.i.i.i, label %bb.g

_ZNO4mlir18InFlightDiagnosticlsIiEEOS0_OT_.exit.thread.i.i.i.i.i.i: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.i, align 8, !tbaa !315, !alias.scope !3438
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %122, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #19, !noalias !3437
  store i32 2, ptr %121, align 8, !tbaa !119, !noalias !3437
  %i.k = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i64 63, ptr %i.k, align 8, !tbaa !73, !noalias !3437
  %i.l = getelementptr inbounds nuw i8, ptr %122, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17, !noalias !3437 ; 2 uses
end_hunk_1
