inline.NumInlined: 327
inline.NumDeleted: 149
begin_hunk_0_@_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(25) %i.be)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !143
  %i.bn = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r
end_hunk_0
begin_hunk_1_@_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell:bb.a
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !144
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !144
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN5arrow6BufferC2EPKhl:bb.a
  %3 = alloca %"class.std::shared_ptr.6", align 16 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
end_hunk_3
begin_hunk_4_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !143
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !24  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j
end_hunk_4
begin_hunk_5_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !144
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !144
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
end_hunk_5
begin_hunk_6_@_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !147
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !147
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_ZN5arrow6BufferD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !144
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !144
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_7
begin_hunk_8_@_ZN5arrow6Status8FromArgsIJRA79_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !148
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !148
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151, !noalias !148, !nonnull !141, !align !161
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(79) %2) #22, !noalias !148
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(79) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !148 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_8
begin_hunk_9_@_ZN5arrow6Status8FromArgsIJRA79_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !148
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !148
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !162    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_9
begin_hunk_10_@_ZN5arrow6Status8FromArgsIJRA79_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !162    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
end_hunk_10
begin_hunk_11_@_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !147
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !147
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderEEEvRS0_PT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22, !inline_history !165
  ret void
}

end_hunk_12
begin_hunk_13_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder9FindFirstESt17basic_string_viewIcSt11char_traitsIcEES5_Pl:bb.a
bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %4
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = icmp eq i64 %.01116.i.i, -1
end_hunk_13
begin_hunk_14_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder9FindFirstESt17basic_string_viewIcSt11char_traitsIcEES5_Pl:bb.a
bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.h = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i9 = icmp eq i64 %i.h, %4
  br i1 %exitcond.not.i.i9, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !168

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.i = icmp eq i64 %.0710.i.i, -1
end_hunk_14
begin_hunk_15_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder9FindFirstESt17basic_string_viewIcSt11char_traitsIcEES5_Pl:bb.a
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %storemerge = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread ], [ %.0710.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %6, align 8, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !169
  ret void
}

end_hunk_15
begin_hunk_16_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !172

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = icmp ult i64 %.1.i.i, %2
end_hunk_16
begin_hunk_17_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a
bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.f = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %2
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !168

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.g = icmp eq i64 %.0710.i.i, -1
end_hunk_17
begin_hunk_18_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %storemerge = phi i64 [ -1, %bb.a ], [ %2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread ], [ %.0710.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %4, align 8, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !173
  ret void
}

end_hunk_18
begin_hunk_19_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder7FindNthESt17basic_string_viewIcSt11char_traitsIcEES5_lPlS6_:bb.a
bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %4
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not38 = icmp eq i64 %.01116.i.i, -1
end_hunk_19
begin_hunk_20_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder7FindNthESt17basic_string_viewIcSt11char_traitsIcEES5_lPlS6_:bb.a
bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25
  %i.r = add i64 %.01116.i.i26, 1                 ; 2 uses
  %exitcond.not.i.i28 = icmp eq i64 %i.r, %4
  br i1 %exitcond.not.i.i28, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25, !llvm.loop !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25
  %.not = icmp eq i64 %.01116.i.i26, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !176

._crit_edge:                                      ; preds = %bb.b, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29, %.lr.ph._crit_edge, %bb.e, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.116 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %i.n, %bb.e ], [ 0, %bb.a ], [ %smax, %.lr.ph._crit_edge ], [ %i.n, %bb.d ], [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29 ], [ 0, %bb.b ]
  %.114 = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %.1, %bb.e ], [ -1, %bb.a ], [ %.1, %bb.d ], [ %.1, %.lr.ph._crit_edge ], [ %.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29 ], [ -1, %bb.b ]
  store i64 %.114, ptr %7, align 8, !tbaa !29
  store i64 %.116, ptr %8, align 8, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !177
  ret void
}

end_hunk_20
begin_hunk_21_@llvm.smax.i64
!140 = !{i8 0, i8 2}
!141 = !{}
!142 = !{!35, !36, i64 9}
!143 = !{!35, !38, i64 40}
!144 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!145 = !{!35, !36, i64 8}
!146 = !{!35, !30, i64 32}
!147 = distinct !{null, null}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!150 = distinct !{!150, !"_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!151 = !{!152, !160, i64 8}
!152 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !153, i64 0, !160, i64 8}
!153 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !154, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !155, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !156, i64 0}
!156 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !157, i64 0}
!157 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !158, i64 0}
!158 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !159, i64 0}
!159 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!160 = !{!"p1 _ZTSSo", !21, i64 0}
!161 = !{i64 8}
!162 = !{!163, !37, i64 0}
!163 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !164, i64 0, !30, i64 8, !5, i64 16}
!164 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!165 = distinct !{null, null}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = distinct !{!168, !167}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN5arrow6Status2OKEv: argument 0"}
!171 = distinct !{!171, !"_ZN5arrow6Status2OKEv"}
!172 = distinct !{!172, !167}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5arrow6Status2OKEv: argument 0"}
!175 = distinct !{!175, !"_ZN5arrow6Status2OKEv"}
!176 = distinct !{!176, !167}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5arrow6Status2OKEv: argument 0"}
!179 = distinct !{!179, !"_ZN5arrow6Status2OKEv"}
end_hunk_21
