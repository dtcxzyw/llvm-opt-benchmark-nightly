Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiagnosticHandler?download=true
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #17, !inline_history !23 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #17
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17DiagnosticHandler23isAnalysisRemarkEnabledENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZL25PassRemarksAnalysisOptLoc, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr %1, i64 %2, ptr noundef null, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17DiagnosticHandler24isMissedOptRemarkEnabledENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZL23PassRemarksMissedOptLoc, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr %1, i64 %2, ptr noundef null, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17DiagnosticHandler24isPassedOptRemarkEnabledENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZL23PassRemarksPassedOptLoc, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr %1, i64 %2, ptr noundef null, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17DiagnosticHandler18isAnyRemarkEnabledEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZL23PassRemarksPassedOptLoc, align 8, !tbaa !33
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr @_ZL23PassRemarksMissedOptLoc, align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZL25PassRemarksAnalysisOptLoc, align 8, !tbaa !33
  %i.f = icmp ne ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DiagnosticHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DiagnosticHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17DiagnosticHandler17handleDiagnosticsERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  tail call void %i.b(ptr noundef nonnull %1, ptr noundef %i.d) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE16handleOccurrenceEjNS_9StringRefESD_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.a, ptr %14, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !43
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = call noundef zeroext i1 @_ZN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 2 uses
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.e, align 8, !tbaa !46  ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4llvm2cl11opt_storageIN12_GLOBAL__N_114PassRemarksOptELb1ELb1EE8setValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19, !noalias !52 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !12, !noalias !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !14, !noalias !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvm5RegexESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !15, !noalias !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %14, align 8, !tbaa !58, !noalias !57
  call void @_ZN4llvm5RegexC1ENS_9StringRefENS0_10RegexFlagsE(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr %i.l, i64 %i.f, i32 noundef 0) #17, !noalias !57
  store ptr %i.k, ptr %.val, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 8 uses
  store ptr %i.h, ptr %i.m, align 8, !tbaa !8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !14
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17, !inline_history !60
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17, !inline_history !60
  br label %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !20

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17
  br label %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !43
  store i8 0, ptr %i.ad, align 8, !tbaa !18
  %i.af = load ptr, ptr %.val, align 8, !tbaa !33
  %i.ag = call noundef zeroext i1 @_ZNK4llvm5Regex7isValidERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !61
  store ptr @.str.13, ptr %10, align 8, !tbaa !18
  store i8 3, ptr %i.ah, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 4, ptr %i.aj, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !61
  store ptr %14, ptr %11, align 8, !tbaa !18
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.am, align 1, !tbaa !61
  store ptr @.str.14, ptr %12, align 8, !tbaa !18
  store i8 3, ptr %i.al, align 8, !tbaa !64
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 4, ptr %i.an, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !61
  store ptr %6, ptr %13, align 8, !tbaa !18
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %7, i1 noundef zeroext false) #20
  unreachable

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN4llvm5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ap = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN4llvm2cl11opt_storageIN12_GLOBAL__N_114PassRemarksOptELb1ELb1EE8setValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_b.exit

_ZN4llvm2cl11opt_storageIN12_GLOBAL__N_114PassRemarksOptELb1ELb1EE8setValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_b.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.at = trunc i32 %1 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.at, ptr %i.au, align 4, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %.not.i.i.not = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not, label %bb.l, label %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit

_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit: ; preds = %_ZN4llvm2cl11opt_storageIN12_GLOBAL__N_114PassRemarksOptELb1ELb1EE8setValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_b.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !76
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %14) #17, !inline_history !78
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm2cl11opt_storageIN12_GLOBAL__N_114PassRemarksOptELb1ELb1EE8setValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_b.exit, %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit, %bb.a
  %i.ba = load ptr, ptr %14, align 8, !tbaa !58   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE27getValueExpectedFlagDefaultEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvm2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #17, !inline_history !79 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #17, !inline_history !80
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  tail call void @free(ptr noundef %i.k) #17, !inline_history !80
  br label %_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZNK4llvm2cl3optIN12_GLOBAL__N_114PassRemarksOptELb1ENS0_6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = tail call noundef i64 @_ZNK4llvm2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  ret i64 %i.b
end_hunk_0
