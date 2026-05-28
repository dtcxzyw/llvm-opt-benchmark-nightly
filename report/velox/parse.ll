inline.NumInlined: 1142
inline.NumDeleted: 385
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #34 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !26
  store i8 %i.t, ptr %i.s, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !26
  store i8 %i.x, ptr %i.w, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !27
  store i64 %.0, ptr %i.h, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 16) i32 @_ZN3re2L5UnHexEi(i32 noundef %0) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = add i32 %0, -48                          ; 2 uses
  %or.cond = icmp ult i32 %i.b, 10
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %0, -65
  %or.cond3 = icmp ult i32 %i.c, 6
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %0, -55
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = add i32 %0, -97
  %or.cond5 = icmp ult i32 %i.e, 6
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %0, -87
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 1479, i32 noundef 2) #35
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 14, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.g ], [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #26

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZN3re2L18IsValidCaptureNameESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv"() unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.re2::CharClassBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  call void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.a = load i32, ptr @_ZN3re218num_unicode_groupsE, align 4, !tbaa !3 ; 2 uses
  %1 = icmp sgt i32 %i.a, 0
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit
  %i.b = invoke noundef ptr @_ZN3re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.k unwind label %bb.m

bb.c:                                             ; preds = %bb.a, %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit
  %.08.idx4 = phi i64 [ 0, %bb.a ], [ %.08.add, %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit ] ; 2 uses
  %.08.ptr = getelementptr inbounds nuw i8, ptr @constinit, i64 %.08.idx4
  %i.c = load ptr, ptr %.08.ptr, align 8, !tbaa !17 ; 2 uses
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33 ; 3 uses
  br i1 %1, label %.lr.ph.preheader.i, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %2
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %2 ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr @_ZN3re214unicode_groupsE, i64 %indvars.iv.i.us ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173
  %char0.a = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %char0.a, 0
  br i1 %i.h, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %2

2:                                                ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %.lr.ph.i.us, !llvm.loop !177

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr @_ZN3re214unicode_groupsE, i64 %indvars.iv.i ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 2 uses
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #33
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.j, ptr nonnull readonly %i.c, i64 %i.d)
  %i.m = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.m, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit, label %.lr.ph.i, !llvm.loop !177

_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %2, %.lr.ph.i.us, %bb.c
  %3 = phi ptr [ null, %bb.c ], [ null, %2 ], [ %i.f, %.lr.ph.i.us ], [ null, %bb.d ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !182
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph85.i, label %.preheader.i

.lr.ph85.i:                                       ; preds = %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

.preheader.i:                                     ; preds = %.noexc, %_ZN3re2L11LookupGroupESt17basic_string_viewIcSt11char_traitsIcEEPKNS_6UGroupEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !184
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph87.i, label %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit

.lr.ph87.i:                                       ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.h

bb.e:                                             ; preds = %.noexc, %.lr.ph85.i
  %indvars.iv99.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next100.i, %.noexc ] ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !181
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv99.i ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !190  ; 3 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !192 ; 3 uses
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp ult i16 %i.x, 11
  %i.ad = icmp ugt i16 %i.aa, 9
  %or.cond3.i14 = and i1 %i.ac, %i.ad
  br i1 %or.cond3.i14, label %bb.f, label %.invoke13

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp samesign ult i16 %i.x, 10
  br i1 %i.ae, label %bb.g, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15

bb.g:                                             ; preds = %bb.f
  %i.af = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.y, i32 noundef 9)
          to label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15 unwind label %.loopexit.split-lp, !inline_history !245 ; 0 uses

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15: ; preds = %bb.g, %bb.f
  %i.ag = icmp ugt i16 %i.aa, 10
  br i1 %i.ag, label %.invoke13, label %.noexc

.invoke13:                                        ; preds = %bb.e, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15
  %i.ah = phi i32 [ 11, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15 ], [ %i.y, %bb.e ]
  %i.ai = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ah, i32 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !245 ; 0 uses

.noexc:                                           ; preds = %.invoke13, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i15
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !182
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next100.i, %i.ak
  br i1 %i.al, label %bb.e, label %.preheader.i, !llvm.loop !193

bb.h:                                             ; preds = %.noexc10, %.lr.ph87.i
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph87.i ], [ %indvars.iv.next103.i, %.noexc10 ] ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !183
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv102.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !185 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !187 ; 3 uses
  %i.ar = icmp slt i32 %i.ao, 11
  %i.as = icmp sgt i32 %i.aq, 9
  %or.cond3.i = and i1 %i.ar, %i.as
  br i1 %or.cond3.i, label %bb.i, label %.invoke

bb.i:                                             ; preds = %bb.h
  %i.at = icmp slt i32 %i.ao, 10
  br i1 %i.at, label %bb.j, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.au = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ao, i32 noundef 9)
          to label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i unwind label %.loopexit, !inline_history !245 ; 0 uses

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i: ; preds = %bb.j, %bb.i
  %i.av = icmp samesign ugt i32 %i.aq, 10
  br i1 %i.av, label %.invoke, label %.noexc10

.invoke:                                          ; preds = %bb.h, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %i.aw = phi i32 [ 11, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i ], [ %i.ao, %bb.h ]
  %i.ax = invoke noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aw, i32 noundef %i.aq)
          to label %.noexc10 unwind label %.loopexit, !inline_history !245 ; 0 uses

.noexc10:                                         ; preds = %.invoke, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %i.ay = load i32, ptr %i.r, align 8, !tbaa !184
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next103.i, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit, !llvm.loop !194

_ZN3re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE.exit: ; preds = %.noexc10, %.preheader.i
  %.08.add = add nuw nsw i64 %.08.idx4, 8         ; 2 uses
  %.not = icmp eq i64 %.08.add, 80
  br i1 %.not, label %bb.b, label %bb.c

.loopexit:                                        ; preds = %.invoke, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %.invoke13, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef %i.bd)
          to label %_ZN3re216CharClassBuilderD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #32
  unreachable

_ZN3re216CharClassBuilderD2Ev.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  ret ptr %i.b

bb.m:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #26

declare noundef zeroext i1 @_ZNK3re29CharClass8ContainsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN3re2L12ParseIntegerEPSt17basic_string_viewIcSt11char_traitsIcEEPi(ptr noundef nonnull captures(none) %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !171    ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26    ; 2 uses
  %i.f = add i8 %i.e, -48
  %i.g = icmp ult i8 %i.f, 10
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %i.a, 1
  %i.i = icmp eq i8 %i.e, 48
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = add i8 %i.k, -48
  %i.m = icmp ult i8 %i.l, 10
  br i1 %i.m, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.n = phi ptr [ %i.x, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.01315 = phi i32 [ %i.w, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.o = phi i64 [ %i.y, %bb.f ], [ %i.a, %.lr.ph.preheader ]
  %i.p = load i8, ptr %i.n, align 1, !tbaa !26    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = add i8 %i.p, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.t = icmp sgt i32 %.01315, 99999999
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = mul nsw i32 %.01315, 10
  %i.v = add i32 %i.u, -48
  %i.w = add i32 %i.v, %i.q                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !172
  %i.y = add i64 %i.o, -1                         ; 3 uses
  store i64 %i.y, ptr %0, align 8, !tbaa !171
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.critedge, label %.lr.ph, !llvm.loop !210

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %.013.lcssa.ph = phi i32 [ %.01315, %.lr.ph ], [ %i.w, %bb.f ]
  store i32 %.013.lcssa.ph, ptr %1, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge, %bb.d, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.critedge ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3re26Regexp6WalkerIiE12WalkInternalEPS0_ib(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
