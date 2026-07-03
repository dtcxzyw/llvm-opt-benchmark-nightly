inline.NumInlined: 327
inline.NumDeleted: 149
begin_hunk_0_@_ZN5arrow6Status8FromArgsIJRA79_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !163    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !26
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !163    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !148
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !148
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !27

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22, !inline_history !166
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow14BoundaryFinderD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #15 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder9FindFirstESt17basic_string_viewIcSt11char_traitsIcEES5_Pl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.01116.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 %.01116.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  switch i8 %i.b, label %bb.b [
    i8 13, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 10, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %4
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = icmp eq i64 %.01116.i.i, -1
  br i1 %i.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %i.e = icmp ult i64 %.01116.i.i, %4
  br i1 %i.e, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7:    ; preds = %bb.c, %bb.d
  %.0710.i.i = phi i64 [ %i.h, %bb.d ], [ %.01116.i.i, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 %.0710.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  switch i8 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.h = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i9 = icmp eq i64 %i.h, %4
  br i1 %exitcond.not.i.i9, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !167

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.i = icmp eq i64 %.0710.i.i, -1
  br i1 %i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.d, %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %storemerge = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread ], [ %.0710.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %6, align 8, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !169
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #17 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.b ], [ %2, %bb.a ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %.1.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  switch i8 %i.b, label %bb.b [
    i8 13, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit
    i8 10, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !172

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = icmp ult i64 %.1.i.i, %2
  br i1 %i.c, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit, %bb.c
  %.0710.i.i = phi i64 [ %i.f, %bb.c ], [ %.1.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.0710.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  switch i8 %i.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.f = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %2
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !167

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %i.g = icmp eq i64 %.0710.i.i, -1
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %storemerge = phi i64 [ -1, %bb.a ], [ %2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread ], [ %.0710.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %4, align 8, !tbaa !29
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !173
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder7FindNthESt17basic_string_viewIcSt11char_traitsIcEES5_lPlS6_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, i64 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.01116.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 %.01116.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  switch i8 %i.b, label %bb.b [
    i8 13, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 10, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %4
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not38 = icmp eq i64 %.01116.i.i, -1
  br i1 %.not38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %smax = tail call i64 @llvm.smax.i64(i64 %6, i64 1) ; 2 uses
  %i.d = add nsw i64 %smax, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29
  %.040 = phi i64 [ %.01116.i.i26, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29 ], [ %.01116.i.i, %.lr.ph.preheader ] ; 3 uses
  %.01539 = phi i64 [ %i.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 %.040
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = icmp eq i8 %i.f, 13
  %i.h = add nuw i64 %.040, 1                     ; 4 uses
  %i.i = icmp ult i64 %i.h, %4
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %.lr.ph._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = icmp eq i8 %i.k, 10
  %i.m = add nuw i64 %.040, 2
  %spec.select = select i1 %i.l, i64 %i.m, i64 %i.h
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %bb.c, %.lr.ph
  %.1 = phi i64 [ %spec.select, %bb.c ], [ %i.h, %.lr.ph ] ; 6 uses
  %i.n = add nuw nsw i64 %.01539, 1               ; 4 uses
  %exitcond.not = icmp eq i64 %.01539, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge
  %i.o = icmp ult i64 %.1, %4
  br i1 %i.o, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25, label %._crit_edge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25:   ; preds = %bb.d, %bb.e
  %.01116.i.i26 = phi i64 [ %i.r, %bb.e ], [ %.1, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 %.01116.i.i26
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  switch i8 %i.q, label %bb.e [
    i8 13, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29
    i8 10, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit29
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25
  %i.r = add i64 %.01116.i.i26, 1                 ; 2 uses
  %exitcond.not.i.i28 = icmp eq i64 %i.r, %4
  br i1 %exitcond.not.i.i28, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!9 = distinct !{!9, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!10 = distinct !{!10, !11, !"_ZSt11make_sharedIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!11 = distinct !{!11, !"_ZSt11make_sharedIN5arrow12_GLOBAL__N_121NewlineBoundaryFinderEJEESt10shared_ptrIT_EDpOT0_"}
!12 = !{!13, !4, i64 8}
!13 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!14 = !{!10}
!15 = !{!13, !4, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !22, i64 8}
!20 = !{!"p1 _ZTSN5arrow14BoundaryFinderE", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!24 = !{!22, !23, i64 0}
!25 = distinct !{null, null, null}
!26 = !{!5, !5, i64 0}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!21, !21, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !22, i64 8}
!33 = !{!"p1 _ZTSN5arrow6BufferE", !21, i64 0}
!34 = !{!35, !37, i64 16}
!35 = !{!"_ZTSN5arrow6BufferE", !36, i64 8, !36, i64 9, !37, i64 16, !30, i64 24, !30, i64 32, !38, i64 40, !39, i64 48, !40, i64 64}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"p1 omnipotent char", !21, i64 0}
!38 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!39 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !32, i64 0}
!40 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !41, i64 0}
!41 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !22, i64 8}
!42 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !21, i64 0}
!43 = !{!35, !30, i64 24}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN5arrow6StatusE", !46, i64 0}
!46 = !{!"p1 _ZTSN5arrow6Status5StateE", !21, i64 0}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!49 = distinct !{!49, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!50 = !{!51, !48}
!51 = distinct !{!51, !52, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!52 = distinct !{!52, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!53 = !{!33, !33, i64 0}
!54 = distinct !{ptr @_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!55 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!56 = distinct !{null, null, null, null}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!59 = distinct !{!59, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!60 = !{!61, !58}
!61 = distinct !{!61, !62, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!62 = distinct !{!62, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!65 = distinct !{!65, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!66 = !{!67, !64}
!67 = distinct !{!67, !68, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!68 = distinct !{!68, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!69 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!72 = distinct !{!72, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!76 = !{!74, !71}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!79 = distinct !{!79, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!80 = !{!81, !78}
!81 = distinct !{!81, !82, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!82 = distinct !{!82, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN5arrow6Status2OKEv: argument 0"}
!85 = distinct !{!85, !"_ZN5arrow6Status2OKEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!88 = distinct !{!88, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!89 = !{!90, !87}
!90 = distinct !{!90, !91, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN5arrow6Status2OKEv: argument 0"}
!94 = distinct !{!94, !"_ZN5arrow6Status2OKEv"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!97 = distinct !{!97, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!98 = !{!99, !96}
!99 = distinct !{!99, !100, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!100 = distinct !{!100, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN5arrow6Status2OKEv: argument 0"}
!103 = distinct !{!103, !"_ZN5arrow6Status2OKEv"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!106 = distinct !{!106, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!107 = !{!108, !105}
!108 = distinct !{!108, !109, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!109 = distinct !{!109, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!112 = distinct !{!112, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!113 = !{!114, !111}
!114 = distinct !{!114, !115, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!115 = distinct !{!115, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN5arrow6Status2OKEv: argument 0"}
!118 = distinct !{!118, !"_ZN5arrow6Status2OKEv"}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5arrow6Status2OKEv: argument 0"}
!122 = distinct !{!122, !"_ZN5arrow6Status2OKEv"}
!123 = distinct !{null}
!124 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!125 = distinct !{null, null}
!126 = !{!127, !37, i64 8}
!127 = !{!"_ZTSSt9type_info", !37, i64 8}
!128 = !{!41, !42, i64 0}
!129 = !{!42, !42, i64 0}
!130 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!131 = !{!132, !133, i64 0}
!132 = !{!"_ZTSSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0, !22, i64 8}
!133 = !{!"p1 _ZTSN5arrow6DeviceE", !21, i64 0}
!134 = !{!135, !36, i64 24}
!135 = !{!"_ZTSN5arrow6DeviceE", !136, i64 8, !36, i64 24}
!136 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !137, i64 0}
!137 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !138, i64 0}
!138 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0, !139, i64 8}
!139 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!140 = !{i8 0, i8 2}
!141 = !{}
!142 = !{!35, !36, i64 9}
!143 = distinct !{null}
!144 = !{!35, !38, i64 40}
!145 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!146 = !{!35, !36, i64 8}
!147 = !{!35, !30, i64 32}
!148 = distinct !{null, null}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!151 = distinct !{!151, !"_ZN5arrow8internal12JoinToStringIJRA79_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!152 = !{!153, !161, i64 8}
!153 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !154, i64 0, !161, i64 8}
!154 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !155, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !156, i64 0}
!156 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !157, i64 0}
!157 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !158, i64 0}
!158 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !159, i64 0}
!159 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !160, i64 0}
!160 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!161 = !{!"p1 _ZTSSo", !21, i64 0}
!162 = !{i64 8}
!163 = !{!164, !37, i64 0}
!164 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !165, i64 0, !30, i64 8, !5, i64 16}
!165 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!166 = distinct !{null, null}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZN5arrow6Status2OKEv: argument 0"}
!171 = distinct !{!171, !"_ZN5arrow6Status2OKEv"}
!172 = distinct !{!172, !168}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5arrow6Status2OKEv: argument 0"}
!175 = distinct !{!175, !"_ZN5arrow6Status2OKEv"}
!176 = distinct !{!176, !168}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5arrow6Status2OKEv: argument 0"}
!179 = distinct !{!179, !"_ZN5arrow6Status2OKEv"}
end_hunk_0
