inline.NumInlined: 699
inline.NumDeleted: 274
begin_hunk_0_@_ZN16OpenColorIO_v2_521XmlReaderElementStack5clearEv:bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_521XmlReaderElementStackD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_521XmlReaderElementStackD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !101
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !101
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !94
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.m = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.a, align 8, !tbaa !94
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_521XmlReaderElementStack8pop_backEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !94
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !56
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29, !inline_history !102
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29, !inline_history !102
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE8pop_backEv.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE8pop_backEv.exit, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEESaIS3_EE8pop_backEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !101
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack5frontEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !90, !noundef !90 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !101
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.1", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !101
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !101
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !101
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !56
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29, !inline_history !66
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29, !inline_history !66
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_520XmlReaderSOPValueEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ai, align 8, !tbaa !19
  store i8 0, ptr %i.ah, align 8, !tbaa !21
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltD2Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_520XmlReaderSOPValueEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_520XmlReaderSOPValueEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !103
  br label %_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltD2Ev.exit

_ZN16OpenColorIO_v2_520XmlReaderSOPValueEltD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #29, !inline_history !103
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.14, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt3endEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector.15", align 8    ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.20", align 16 ; 9 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams", align 16 ; 6 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams", align 16 ; 6 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams", align 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @_ZN16OpenColorIO_v2_54TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %1, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit unwind label %bb.b

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !104    ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp eq i64 %i.m, 24
  br i1 %.not, label %bb.r, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #29
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNSt6vectorIdSaIdEED2Ev.exit51

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.u = load i64, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.t, i64 noundef %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.15, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %2, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.16, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.unreachable unwind label %bb.m

.unreachable:                                     ; preds = %bb.h
  unreachable

.noexc.i:                                         ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 27, ptr %i.a, align 8, !tbaa !20
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !16
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ah, ptr noundef nonnull align 1 dereferenceable(27) @.str.17, i64 27, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = load ptr, ptr %5, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable72 unwind label %bb.q

.unreachable72:                                   ; preds = %.noexc
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.j:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.m:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !21
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.ao, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.an, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aw = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.o
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit51 unwind label %bb.au

bb.p:                                             ; preds = %.noexc.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.q:                                             ; preds = %.noexc
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ag
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.q
  %i.bf = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.p
  %.pn25 = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.as

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57, !nonnull !90, !noundef !90
  %i.bj = call ptr @__dynamic_cast(ptr nonnull %i.bi, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_523XmlReaderSOPNodeBaseEltE, i64 0) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(99) %i.bj)
          to label %bb.s unwind label %bb.y       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !62 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !101
  store <2 x ptr> %i.br, ptr %6, align 16, !tbaa !101
  %.not.i.i.i46 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i46, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16 ; 3 uses
  %i.bz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(6) @_ZN16OpenColorIO_v2_5L9TAG_SLOPEE) #34
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cb = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !112
  %i.ce = load <2 x double>, ptr %i.f, align 8, !tbaa !112
  store <2 x double> %i.ce, ptr %7, align 16, !tbaa !112
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.cd, ptr %i.cf, align 16, !tbaa !112
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData14setSlopeParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  store i8 1, ptr %i.cg, align 8, !tbaa !114
  br label %bb.ai

bb.y:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aq

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(7) @_ZN16OpenColorIO_v2_5L10TAG_OFFSETE) #34
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !112
  %i.co = load <2 x double>, ptr %i.f, align 8, !tbaa !112
  store <2 x double> %i.co, ptr %8, align 16, !tbaa !112
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.cn, ptr %i.cp, align 16, !tbaa !112
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData15setOffsetParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 97
  store i8 1, ptr %i.cq, align 1, !tbaa !118
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.aq

bb.ae:                                            ; preds = %bb.aa
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(6) @_ZN16OpenColorIO_v2_5L9TAG_POWERE) #34
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !112
  %i.cx = load <2 x double>, ptr %i.f, align 8, !tbaa !112
  store <2 x double> %i.cx, ptr %9, align 16, !tbaa !112
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.cw, ptr %i.cy, align 16, !tbaa !112
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData14setPowerParamsERKNS0_13ChannelParamsE(ptr noundef nonnull align 8 dereferenceable(256) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 98
  store i8 1, ptr %i.cz, align 2, !tbaa !119
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ac, %bb.ag, %bb.ae, %bb.x
  %i.db = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 8 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dc, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !56
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29, !inline_history !120
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29, !inline_history !120
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i47 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.df, %bb.am ], [ %i.dp, %bb.an ]
  %i.dq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dq, label %bb.ao, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i.i48 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIdSaIdEED2Ev.exit49, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dr = ptrtoint ptr %i.j to i64
  %i.ds = sub i64 %i.dr, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.ds) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

_ZNSt6vectorIdSaIdEED2Ev.exit49:                  ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap
  ret void

bb.aq:                                            ; preds = %bb.ah, %bb.ad, %bb.z
  %.pn27 = phi { ptr, i32 } [ %i.ci, %bb.z ], [ %i.cr, %bb.ad ], [ %i.da, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.aq ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.merged = phi { ptr, i32 } [ %.pn27.pn, %bb.ar ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIdSaIdEED2Ev.exit51, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = ptrtoint ptr %i.j to i64
  %i.du = sub i64 %i.dt, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.du) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit51

_ZNSt6vectorIdSaIdEED2Ev.exit51:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.as, %bb.at
  %.merged71 = phi { ptr, i32 } [ %.merged, %bb.at ], [ %.merged, %bb.as ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.merged71

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #31
  unreachable
}

declare void @_ZN16OpenColorIO_v2_54TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.15") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.not = icmp eq i64 %2, 0
  br i1 %.not.i.not, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  %.012.i = phi i64 [ %i.d, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !21
  switch i8 %i.b, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i: ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.d = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %2
  br i1 %exitcond.not.i, label %._crit_edge, label %.preheader, !llvm.loop !121

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit: ; preds = %.preheader, %bb.a
  %.1.i = phi i64 [ 0, %bb.a ], [ %.012.i, %.preheader ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i, %2
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.023 = phi i64 [ %.1.i, %.lr.ph ], [ %.1, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %.023, %2
  br i1 %.not.i.i, label %bb.c, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  br label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %bb.c
  %.012.i.i = phi i64 [ %.023, %bb.c ], [ %i.m, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 7 uses
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.l, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !21
  switch i8 %i.k, label %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.m = add i64 %.012.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.d, !llvm.loop !121

_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i: ; preds = %bb.d
  %.not.i10 = icmp eq i64 %.012.i.i, %2
  br i1 %.not.i10, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i
  %.not.i23.i = icmp ult i64 %.012.i.i, %2
  br i1 %.not.i23.i, label %bb.f, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_520XmlReaderSOPValueElt10setRawDataEPKcmj:bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.1", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !101
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !101
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !101
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !56
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29, !inline_history !66
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29, !inline_history !66
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_522XmlReaderSaturationEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ai, align 8, !tbaa !19
  store i8 0, ptr %i.ah, align 8, !tbaa !21
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationEltD2Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_522XmlReaderSaturationEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationEltD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_522XmlReaderSaturationEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN16OpenColorIO_v2_522XmlReaderSaturationEltD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !130
  br label %_ZN16OpenColorIO_v2_522XmlReaderSaturationEltD2Ev.exit

_ZN16OpenColorIO_v2_522XmlReaderSaturationEltD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #29, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.14, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationElt3endEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector.15", align 8    ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.20", align 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @_ZN16OpenColorIO_v2_54TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %1, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit unwind label %bb.b

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !104    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp eq i64 %i.m, 8
  br i1 %.not, label %bb.r, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #29
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNSt6vectorIdSaIdEED2Ev.exit46

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.u = load i64, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.t, i64 noundef %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.15, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %2, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.16, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.unreachable unwind label %bb.m

.unreachable:                                     ; preds = %bb.h
  unreachable

.noexc.i:                                         ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 27, ptr %i.a, align 8, !tbaa !20
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !16
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ah, ptr noundef nonnull align 1 dereferenceable(27) @.str.19, i64 27, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = load ptr, ptr %5, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable59 unwind label %bb.q

.unreachable59:                                   ; preds = %.noexc
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.j:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.m:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !21
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ao, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.an, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aw = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.o
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit46 unwind label %bb.ak

bb.p:                                             ; preds = %.noexc.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.q:                                             ; preds = %.noexc
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ag
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.q
  %i.bf = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.p
  %.pn21 = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.bc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ai

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57, !nonnull !90, !noundef !90
  %i.bj = call ptr @__dynamic_cast(ptr nonnull %i.bi, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_523XmlReaderSatNodeBaseEltE, i64 0) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(96) %i.bj)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !62 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !101
  store <2 x ptr> %i.br, ptr %6, align 16, !tbaa !101
  %.not.i.i.i41 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i41, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(11) @_ZN16OpenColorIO_v2_5L14TAG_SATURATIONE) #34
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cb = load ptr, ptr %6, align 16, !tbaa !109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.cc = load double, ptr %i.f, align 8, !tbaa !112
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData13setSaturationEd(ptr noundef nonnull align 8 dereferenceable(256) %i.cb, double noundef %i.cc)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  br label %bb.ah

bb.z:                                             ; preds = %bb.w, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59CDLOpDataEEC2ERKS2_.exit
  %i.cf = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cg, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !56
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #29, !inline_history !120
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #29, !inline_history !120
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i42 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i42, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.cj, %bb.ad ], [ %i.ct, %bb.ae ]
  %i.cu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cu, label %bb.af, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i.i43 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIdSaIdEED2Ev.exit44, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = ptrtoint ptr %i.j to i64
  %i.cw = sub i64 %i.cv, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.cw) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit44

_ZNSt6vectorIdSaIdEED2Ev.exit44:                  ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag
  ret void

bb.ah:                                            ; preds = %bb.y, %bb.x
  %.pn23 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.merged = phi { ptr, i32 } [ %.pn23, %bb.ah ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIdSaIdEED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = ptrtoint ptr %i.j to i64
  %i.cy = sub i64 %i.cx, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.cy) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit46

_ZNSt6vectorIdSaIdEED2Ev.exit46:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.ai, %bb.aj
  %.merged58 = phi { ptr, i32 } [ %.merged, %bb.aj ], [ %.merged, %bb.ai ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.merged58

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #31
  unreachable
}

declare void @_ZN16OpenColorIO_v2_59CDLOpData13setSaturationEd(ptr noundef nonnull align 8 dereferenceable(256), double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522XmlReaderSaturationElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !13
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %5, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.n = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !131
  %i.o = icmp eq i64 %i.n, 4611686018427387903
  br i1 %i.o, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #32
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %.noexc10 unwind label %bb.j   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !13, !alias.scope !131
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc10
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc10
  store ptr %i.r, ptr %4, align 8, !tbaa !16, !alias.scope !131
  %i.y = load i64, ptr %i.s, align 8, !tbaa !21
end_hunk_1
