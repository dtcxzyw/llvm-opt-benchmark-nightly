inline.NumInlined: 1176
inline.NumDeleted: 734
begin_hunk_0_@_ZN6hermes3hbc20BCProviderFromBufferD2Ev:bb.a
  tail call void %i.al(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #20, !inline_history !85
  br label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvh8OptionalISt6threadED2Ev.exit, %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !24
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #21, !inline_history !288
  br label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit

_ZN6hermes3hbc14BCProviderBaseD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv(ptr noundef nonnull align 8 dereferenceable(376)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv(ptr dead_on_unwind noalias writable sret(%"struct.std::array") align 1 %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase11startWarmupEh(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !289
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !289
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSEOS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.112", align 16 ; 9 uses
  %3 = alloca %"class.std::function.109", align 16 ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !111

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !24
  store i8 %i.l, ptr %i.c, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !65
  store i64 %i.s, ptr %i.q, align 8, !tbaa !65
  %i.t = load i64, ptr %i.g, align 8, !tbaa !24
  store i64 %i.t, ptr %i.d, align 8, !tbaa !24
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !24
  store ptr %i.f, ptr %i.a, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !65
  %i.y = load i64, ptr %i.g, align 8, !tbaa !24
  store i64 %i.y, ptr %i.d, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !19
  store i64 %i.u, ptr %i.g, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !65
  store i8 0, ptr %i.z, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !226
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !101
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !198
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !101
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 16, !tbaa !101
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #20, !inline_history !291 ; 0 uses
  br label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit

_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit:      ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = load i32, ptr %i.ap, align 8
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !101
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !198
  %.not.i.i.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.j, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ar, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !101
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 16, !tbaa !101
  store <2 x ptr> %i.at, ptr %i.ax, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #20, !inline_history !292 ; 0 uses
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !101
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !198
  %.not.i.i.not.i.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.bb, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !101
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 16, !tbaa !101
  store <2 x ptr> %i.bd, ptr %i.bh, align 8, !tbaa !101
  %.not.i.i9 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !293 ; 0 uses
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(269) %0, ptr noundef nonnull align 8 dereferenceable(269) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.g, ptr %i.a, align 8, !tbaa !41
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !19
  %i.j = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.j, ptr %i.d, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !24
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !226
  store i32 %i.s, ptr %i.q, align 8, !tbaa !226
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 2) #20, !inline_history !227 ; 0 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !101
  br label %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i

_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i:   ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load i32, ptr %i.ab, align 8
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 2) #20, !inline_history !228 ; 0 uses
  %i.aj = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !101
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !101
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.f, %_ZN6hermes2vm16GCTripwireConfigC2ERKS1_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.not.i7.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i7.i, label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 2) #20, !inline_history !229 ; 0 uses
  %i.aq = load <2 x ptr>, ptr %i.al, align 8, !tbaa !101
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !101
  br label %_ZN6hermes2vm8GCConfigC2ERKS1_.exit

_ZN6hermes2vm8GCConfigC2ERKS1_.exit:              ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ar, ptr noundef nonnull align 8 dereferenceable(45) %i.as, i64 45, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !98 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !101
  store <2 x ptr> %i.ax, ptr %i.at, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm8GCConfigC2ERKS1_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !4
  br label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6hermes2vm12CrashManagerEEC2ERKS3_.exit: ; preds = %_ZN6hermes2vm8GCConfigC2ERKS1_.exit, %bb.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bd, ptr noundef nonnull align 8 dereferenceable(5) %i.be, i64 5, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(200) ptr @_ZN6hermes2vm8GCConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.112", align 16 ; 9 uses
  %3 = alloca %"class.std::function.109", align 16 ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !226
  store i32 %i.e, ptr %i.c, align 8, !tbaa !226
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2) #20, !inline_history !294 ; 0 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !101
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.k, %bb.b ]
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !101
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !101  ; 2 uses
  store <2 x ptr> %i.o, ptr %i.m, align 16, !tbaa !101
  store <2 x ptr> %i.l, ptr %i.n, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #20, !inline_history !295 ; 0 uses
  br label %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit

_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit:     ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2ERKS5_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = load i32, ptr %i.s, align 8
  store i32 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 2) #20, !inline_history !296 ; 0 uses
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !101
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i: ; preds = %bb.d, %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit
  %i.aa = phi <2 x ptr> [ splat (ptr null), %_ZN6hermes2vm16GCTripwireConfigaSERKS1_.exit ], [ %i.z, %bb.d ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.u, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !101
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ad, ptr %i.ab, align 16, !tbaa !101
  store <2 x ptr> %i.aa, ptr %i.ac, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #20, !inline_history !297 ; 0 uses
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2ERKS6_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.not.i.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ak = call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 2) #20, !inline_history !298 ; 0 uses
  %i.al = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !101
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i: ; preds = %bb.f, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit
  %i.am = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSERKS6_.exit ], [ %i.al, %bb.f ]
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.ag, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !101
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 16, !tbaa !101
  store <2 x ptr> %i.am, ptr %i.ao, align 8, !tbaa !101
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSERKS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !299 ; 0 uses
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSERKS6_.exit

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSERKS6_.exit: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2ERKS6_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvh13llvm_shutdownEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE16handleOccurrenceEjNS_9StringRefES5_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !175
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = call noundef zeroext i1 @_ZN4llvh2cl6parserIdE5parseERNS0_6OptionENS_9StringRefES5_Rd(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load double, ptr %i.a, align 8, !tbaa !175
  store double %i.e, ptr %i.d, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !237
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl3optIdLb0ENS0_6parserIdEEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #20
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl3optIdLb0ENS0_6parserIdEEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = tail call noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #20
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIdLb0ENS0_6parserIdEEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIdLb0ENS0_6parserIdEEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvh::cl::OptionValue", align 8 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !165 ; 2 uses
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !300, !range !97, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp une double %i.e, %.pre
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, ptr noundef nonnull align 8 dereferenceable(9) %i.j, i64 9, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIdEE, i64 16), ptr %3, align 8, !tbaa !8
  call void @_ZNK4llvh2cl6parserIdE15printOptionDiffERKNS0_6OptionEdNS0_11OptionValueIdEEm(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(145) %0, double noundef %.pre, ptr noundef nonnull dead_on_return %3, i64 noundef %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !300, !range !97, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE14setDefaultImplIdvEEvv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load double, ptr %i.e, align 8, !tbaa !175
  store double %i.f, ptr %i.d, align 8, !tbaa !165
  br label %_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE14setDefaultImplIdvEEvv.exit

_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE14setDefaultImplIdvEEvv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIdLb0ENS0_6parserIdEEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIdE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !300, !range !97, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !300, !range !97, !noundef !46
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load double, ptr %i.h, align 8
  %i.j = load double, ptr %i.d, align 8
  %i.k = fcmp une double %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvh2cl6parserIdE5parseERNS0_6OptionENS_9StringRefES5_Rd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #5

declare void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvh2cl6parserIdE15printOptionDiffERKNS0_6OptionEdNS0_11OptionValueIdEEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), double noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cl16RandomSeedParserD0Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIlEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh2cl6parserIlED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #20, !inline_history !13
  br label %_ZN4llvh2cl6parserIlED2Ev.exit

_ZN4llvh2cl6parserIlED2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cl16MemorySizeParserD0Ev(ptr noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN2cl10MemorySizeEEE, i64 16), ptr %0, align 8, !tbaa !8
end_hunk_0
