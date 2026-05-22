inline.NumInlined: 1075
inline.NumDeleted: 411
begin_hunk_0_@_ZN6google8protobuf13json_internal9JsonLexer11SkipToTokenEv:bb.a
  %i.o = sub i64 %i.k, %i.n
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i.i = phi i64 [ %i.t, %bb.c ], [ %.sroa.010.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.6.0.copyload.i.i.i, %bb.b ]
  %.0.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.u = icmp ugt i64 %.0.i.i.i, %.sroa.010.0.i.i.i
  br i1 %i.u, label %bb.e, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i.i, i64 noundef %.sroa.010.0.i.i.i) #21
  unreachable

_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit: ; preds = %bb.d
  %.pn13.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i, i64 %.0.i.i.i
  %i.v = load i8, ptr %.pn13.i.i.i, align 1, !tbaa !14
  switch i8 %i.v, label %bb.i [
    i8 10, label %bb.f
    i8 13, label %bb.h
    i8 9, label %bb.h
    i8 32, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit
  tail call void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream7AdvanceEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 noundef 1)
  %i.w = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !52
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.y = load <2 x i64>, ptr %i.i, align 8, !tbaa !41
  %i.z = add <2 x i64> %i.y, splat (i64 1)
  store <2 x i64> %i.z, ptr %i.i, align 8, !tbaa !41
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.h:                                             ; preds = %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit, %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit, %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream7AdvanceEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 noundef 1)
  %i.aa = load i64, ptr %0, align 8, !tbaa !29, !alias.scope !55
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %.thread21, label %.loopexit

.thread21:                                        ; preds = %bb.h
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !55
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !58, !noalias !55
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !61, !noalias !55
  %i.af = add i64 %i.ae, 1
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !62
  br label %.loopexit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %.thread21, %bb.g
  %storemerge = phi i64 [ %i.af, %.thread21 ], [ 0, %bb.g ]
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !61
  tail call void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.ag = load i64, ptr %0, align 8, !tbaa !29
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.f, %bb.h, %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal9JsonLexer4KindEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSC_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !29
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit, !prof !66

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(12) %0) #18
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef signext i8 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8, !tbaa !43, !range !44, !noundef !45
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = sub i64 %i.b, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.010.0.i.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.010.0.copyload.i.i, %bb.a ] ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.6.0.copyload.i.i, %bb.a ]
  %.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.q = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.q, label %bb.d, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #21
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit: ; preds = %bb.c
  %.pn13.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 %.0.i.i
  %i.r = load i8, ptr %.pn13.i.i, align 1, !tbaa !14
  ret i8 %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal9JsonLexer4KindEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %1, align 8, !tbaa !29
  %i.b = load i64, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESD_.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESD_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(12) %0) #18
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESD_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal9JsonLexer9SkipValueEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 20 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::StatusOr.20", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN6google8protobuf13json_internal9JsonLexer8PeekKindEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.a = load i64, ptr %6, align 8, !tbaa !29     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i64, ptr %0, align 8, !tbaa !29
  br label %bb.c

.loopexit:                                        ; preds = %bb.k, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51, %_ZN4absl12lts_202505126StatusD2Ev.exit80
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.critedge281, %.noexc35.a, %_ZN4absl12lts_202505126StatusD2Ev.exit87
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke251, %.invoke, %bb.bi, %bb.h, %_ZN4absl12lts_202505126StatusD2Ev.exit255, %bb.bg, %_ZN4absl12lts_202505126StatusD2Ev.exit253, %bb.f, %bb.d
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.c
  %i.g = load i64, ptr %6, align 8, !tbaa !29
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !31

bb.d:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %6) #21
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !67
  switch i32 %i.j, label %bb.bx [
    i32 0, label %bb.f
    i32 1, label %bb.bg
    i32 2, label %bb.bm
    i32 3, label %bb.bt
    i32 4, label %.invoke251
    i32 5, label %bb.bv
    i32 6, label %bb.bw
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit84 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !69

_ZN4absl12lts_202505126StatusD2Ev.exit84:         ; preds = %bb.f
  %i.k = load i64, ptr %0, align 8, !tbaa !29
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit84
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70, !noalias !71 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 34, ptr nonnull @.str.38)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.g
  %i.q = add nsw i32 %i.n, -1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !70, !noalias !71
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit253

bb.i:                                             ; preds = %bb.h
  %.pr128 = load i64, ptr %0, align 8, !tbaa !29
  %i.r = icmp eq i64 %.pr128, 1
  br i1 %i.r, label %_ZN4absl12lts_202505126StatusD2Ev.exit253, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit253:        ; preds = %.thread, %bb.i
  %i.s = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.33)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !69

.noexc17:                                         ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit253
  br i1 %i.s, label %.noexc18, label %.preheader

.preheader:                                       ; preds = %.noexc17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i.i.i68 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.k

.noexc18:                                         ; preds = %.noexc17
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !70
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !70
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !74
  br label %.critedge

bb.j:                                             ; preds = %.noexc22
  br i1 %i.dc, label %bb.k, label %.invoke

bb.k:                                             ; preds = %.preheader, %bb.j
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer11SkipToTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.l unwind label %.loopexit, !inline_history !69

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %0, align 8, !tbaa !29
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %_ZN4absl12lts_202505126StatusD2Ev.exit80, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit80:         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN4absl12lts_202505126StatusC1ENS0_10StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2, i64 0, ptr nonnull @.str.39)
          to label %.noexc77 unwind label %.loopexit

.noexc77:                                         ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit80
  %i.am = load i64, ptr %2, align 8, !tbaa !29    ; 2 uses
  store i64 %i.am, ptr %3, align 8, !tbaa !29
  store i64 55, ptr %2, align 8, !tbaa !29
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.m, label %.noexc21, !prof !66

bb.m:                                             ; preds = %.noexc77
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit.i unwind label %.body.i

.body.i:                                          ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %3) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.body

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit.i: ; preds = %bb.m
  %.pre.i = load i64, ptr %2, align 8, !tbaa !29  ; 2 uses
  %i.ap = trunc i64 %.pre.i to i1
  br i1 %i.ap, label %.noexc21, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit.i
  %i.aq = inttoptr i64 %.pre.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %.noexc21 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #20
  unreachable

.noexc21:                                         ; preds = %bb.n, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit.i, %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.at = load i64, ptr %i.t, align 8, !tbaa !32  ; 4 uses
  %.sroa.010.0.copyload.i.i.i67 = load i64, ptr %i.u, align 8, !tbaa !41 ; 2 uses
  %.sroa.6.0.copyload.i.i.i69 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i68, align 8, !tbaa !42 ; 2 uses
  %i.au = load i8, ptr %i.v, align 8, !tbaa !43, !range !44, !noundef !45
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc21
  %i.aw = load i64, ptr %i.w, align 8, !tbaa !46
  %i.ax = sub i64 %i.at, %i.aw
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !47  ; 2 uses
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc21
  %.sroa.010.0.i.i.i70 = phi i64 [ %i.bc, %bb.p ], [ %.sroa.010.0.copyload.i.i.i67, %.noexc21 ] ; 2 uses
  %.sroa.6.0.i.i.i71 = phi ptr [ %i.ay, %bb.p ], [ %.sroa.6.0.copyload.i.i.i69, %.noexc21 ]
  %.0.i.i.i72 = phi i64 [ %i.ax, %bb.p ], [ %i.at, %.noexc21 ] ; 3 uses
  %i.bd = icmp ugt i64 %.0.i.i.i72, %.sroa.010.0.i.i.i70
  br i1 %i.bd, label %.invoke252, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pn13.i.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i71, i64 %.0.i.i.i72
  %i.be = load i8, ptr %.pn13.i.i.i73, align 1, !tbaa !14
  %i.bf = icmp eq i8 %i.be, 34
  br i1 %i.bf, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %i.w, align 8, !tbaa !46
  %i.bh = sub i64 %i.at, %i.bg
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !47  ; 2 uses
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.010.0.i.i.i = phi i64 [ %i.bm, %bb.t ], [ %.sroa.010.0.copyload.i.i.i67, %bb.s ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.bi, %bb.t ], [ %.sroa.6.0.copyload.i.i.i69, %bb.s ]
  %.0.i.i.i = phi i64 [ %i.bh, %bb.t ], [ %i.at, %bb.s ] ; 3 uses
  %i.bn = icmp ugt i64 %.0.i.i.i, %.sroa.010.0.i.i.i
  br i1 %i.bn, label %.invoke252, label %bb.v

.invoke252:                                       ; preds = %bb.u, %bb.q
  %i.bo = phi i64 [ %.0.i.i.i72, %bb.q ], [ %.0.i.i.i, %bb.u ]
  %i.bp = phi i64 [ %.sroa.010.0.i.i.i70, %bb.q ], [ %.sroa.010.0.i.i.i, %bb.u ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %i.bo, i64 noundef %i.bp) #21
          to label %.cont unwind label %.loopexit.split-lp137

.cont:                                            ; preds = %.invoke252
  unreachable

bb.v:                                             ; preds = %bb.u
  %.pn13.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i, i64 %.0.i.i.i
  %i.bq = load i8, ptr %.pn13.i.i.i, align 1, !tbaa !14
  %i.br = icmp eq i8 %i.bq, 39
  br i1 %i.br, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !77
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer9ParseUtf8Ev(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.x unwind label %bb.ag, !inline_history !69

bb.x:                                             ; preds = %bb.w
  %i.bs = load i64, ptr %4, align 8, !tbaa !29
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEE6AssignIS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.aa)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_.exit unwind label %bb.ah

bb.z:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEE12AssignStatusINS0_6StatusEEEvOT_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_.exit unwind label %bb.ah

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_.exit: ; preds = %bb.y, %bb.z
  %i.bu = load i64, ptr %4, align 8, !tbaa !29    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i58, label %bb.ad

_ZN4absl12lts_202505126StatusD2Ev.exit.i58:       ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_.exit
  %i.bw = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i59, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i60, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i58
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bw)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i60 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i60: ; preds = %bb.aa, %_ZN4absl12lts_202505126StatusD2Ev.exit.i58
  %i.bz = load i8, ptr %i.ac, align 8, !tbaa !83
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.ac, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63

bb.ac:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i60
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ad
  br i1 %i.cc, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i61: ; preds = %bb.ac
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #19
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63

bb.ad:                                            ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_.exit
  %i.cf = trunc i64 %i.bu to i1
  br i1 %i.cf, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = inttoptr i64 %i.bu to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cg)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #20
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63: ; preds = %bb.ac, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i61, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !77
  br label %bb.ar

.loopexit136:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit54.a, %bb.ax, %_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp137:                            ; preds = %.invoke252, %bb.av, %bb.aq
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ag:                                            ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z, %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #18, !inline_history !69
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn41.i = phi { ptr, i32 } [ %i.ck, %bb.ah ], [ %i.cj, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !77
  br label %bb.bf

bb.aj:                                            ; preds = %bb.v
  %i.cl = load i8, ptr %i.z, align 8, !tbaa !85, !range !44, !noalias !77, !noundef !45
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !77
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer13ParseBareWordEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.9") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.al unwind label %bb.an, !inline_history !69

bb.al:                                            ; preds = %bb.ak
  %i.cn = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.am unwind label %bb.ao, !inline_history !69 ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #18, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !77
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #18, !inline_history !69
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.cp, %bb.ao ], [ %i.co, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !77
  br label %bb.bf

bb.aq:                                            ; preds = %bb.aj
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 12, ptr nonnull @.str.19)
          to label %.critedge54.i unwind label %.loopexit.split-lp137

bb.ar:                                            ; preds = %bb.am, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit63
  %i.cq = load i64, ptr %3, align 8, !tbaa !29    ; 4 uses
  store i64 %i.cq, ptr %0, align 8, !tbaa !29
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = inttoptr i64 %i.cq to ptr
  %i.ct = atomicrmw add ptr %i.cs, i32 1 monotonic, align 4 ; 0 uses
  %.pr130 = load i64, ptr %0, align 8, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.cu = phi i64 [ %i.cq, %bb.ar ], [ %.pr130, %bb.as ]
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %_ZN4absl12lts_202505126StatusD2Ev.exit54.a, label %.critedge54.i

_ZN4absl12lts_202505126StatusD2Ev.exit54.a:       ; preds = %bb.at
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.35)
          to label %bb.au unwind label %.loopexit136, !inline_history !69

bb.au:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit54.a
  %i.cw = load i64, ptr %0, align 8, !tbaa !29
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %_ZN4absl12lts_202505126StatusD2Ev.exit254, label %.critedge54.i

_ZN4absl12lts_202505126StatusD2Ev.exit254:        ; preds = %bb.au
  %i.cy = load i64, ptr %3, align 8, !tbaa !29
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit, label %bb.av, !prof !31

bb.av:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit254
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
          to label %.noexc53 unwind label %.loopexit.split-lp137

.noexc53:                                         ; preds = %bb.av
  unreachable

_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit254
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer9SkipValueEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.aw unwind label %.loopexit136, !inline_history !86

bb.aw:                                            ; preds = %_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit
  %i.da = load i64, ptr %0, align 8, !tbaa !29
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ax, label %.critedge54.i

bb.ax:                                            ; preds = %bb.aw
  %i.dc = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.36)
          to label %.critedge49.i unwind label %.loopexit136, !inline_history !69 ; 2 uses

.critedge49.i:                                    ; preds = %bb.ax
  %i.dd = load i64, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i46, label %bb.bb

_ZN4absl12lts_202505126StatusD2Ev.exit.i46:       ; preds = %.critedge49.i
  %i.df = load ptr, ptr %i.af, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i47, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i48, label %bb.ay

bb.ay:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i46
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.df)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i48 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i48: ; preds = %bb.ay, %_ZN4absl12lts_202505126StatusD2Ev.exit.i46
  %i.di = load i8, ptr %i.ag, align 8, !tbaa !83
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ba, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51

bb.ba:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i48
  %i.dk = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ah
  br i1 %i.dl, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i49: ; preds = %bb.ba
  %i.dm = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #19
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51

bb.bb:                                            ; preds = %.critedge49.i
  %i.do = trunc i64 %i.dd to i1
  br i1 %i.do, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dp = inttoptr i64 %i.dd to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dp)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #20
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51: ; preds = %bb.ba, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i49, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !77
  %11 = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.33)
          to label %.noexc22 unwind label %.loopexit, !inline_history !69

.noexc22:                                         ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit51
  br i1 %11, label %bb.be, label %bb.j, !llvm.loop !87

bb.be:                                            ; preds = %.noexc22
  %i.ds = load i32, ptr %i.m, align 4, !tbaa !70
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.m, align 4, !tbaa !70
  %i.du = load i8, ptr %i.z, align 8, !tbaa !85, !range !44, !noalias !77, !noundef !45
  %i.dv = trunc nuw i8 %i.du to i1
  %.not.i = xor i1 %i.dv, true
  %or.cond.i = and i1 %i.dc, %.not.i
  br i1 %or.cond.i, label %.invoke, label %.noexc24

bb.bf:                                            ; preds = %.loopexit136, %.loopexit.split-lp137, %bb.ap, %bb.ai
  %.pn43.i = phi { ptr, i32 } [ %.pn41.i, %bb.ai ], [ %.pn.i, %bb.ap ], [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #18, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !77
  br label %.body

.noexc24:                                         ; preds = %bb.be
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !88
  br label %.critedge

.critedge54.i:                                    ; preds = %bb.aw, %bb.au, %bb.at, %bb.aq
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #18, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !77
  br label %.critedge

bb.bg:                                            ; preds = %bb.e
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.40)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit93 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !91

_ZN4absl12lts_202505126StatusD2Ev.exit93:         ; preds = %bb.bg
  %i.dw = load i64, ptr %0, align 8, !tbaa !29
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit93
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 6 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !70, !noalias !92 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.bi, label %.thread133

bb.bi:                                            ; preds = %bb.bh
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 34, ptr nonnull @.str.38)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp

.thread133:                                       ; preds = %bb.bh
  %i.ec = add nsw i32 %i.dz, -1
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !70, !noalias !92
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit255

bb.bj:                                            ; preds = %bb.bi
  %.pr132 = load i64, ptr %0, align 8, !tbaa !29
  %i.ed = icmp eq i64 %.pr132, 1
  br i1 %i.ed, label %_ZN4absl12lts_202505126StatusD2Ev.exit255, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit255:        ; preds = %.thread133, %bb.bj
  %i.ee = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.41)
          to label %.noexc31.a unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !91

.noexc31.a:                                       ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit255
  br i1 %i.ee, label %.noexc32, label %.critedge281

.noexc32:                                         ; preds = %.noexc31.a
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !70
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !70
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !95
  br label %.critedge

.preheader141:                                    ; preds = %.noexc36
  br i1 %i.ek, label %.critedge281, label %.invoke

.invoke:                                          ; preds = %.preheader141, %bb.j, %bb.be, %bb.bl
  %i.eh = phi ptr [ @.str.37, %bb.be ], [ @.str.34, %bb.j ], [ @.str.42, %bb.bl ], [ @.str.34, %.preheader141 ]
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 12, ptr nonnull %i.eh)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp

.critedge281:                                     ; preds = %.noexc31.a, %.preheader141
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer9SkipValueEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit, !inline_history !98

bb.bk:                                            ; preds = %.critedge281
  %i.ei = load i64, ptr %0, align 8, !tbaa !29
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %_ZN4absl12lts_202505126StatusD2Ev.exit87, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit87:         ; preds = %bb.bk
  %i.ek = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.36)
          to label %.noexc35.a unwind label %.loopexit.split-lp.loopexit, !inline_history !91 ; 2 uses

.noexc35.a:                                       ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit87
  %i.el = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.41)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit, !inline_history !91

.noexc36:                                         ; preds = %.noexc35.a
  br i1 %i.el, label %bb.bl, label %.preheader141, !llvm.loop !99

bb.bl:                                            ; preds = %.noexc36
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.en = load i8, ptr %i.em, align 8, !tbaa !85, !range !44, !noalias !100, !noundef !45
  %i.eo = trunc nuw i8 %i.en to i1
  %.not.i27 = xor i1 %i.eo, true
  %or.cond.i28 = and i1 %i.ek, %.not.i27
  br i1 %or.cond.i28, label %.invoke, label %.noexc38

.noexc38:                                         ; preds = %bb.bl
  %i.ep = load i32, ptr %i.dy, align 4, !tbaa !70
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.dy, align 4, !tbaa !70
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !103
  br label %.critedge

bb.bm:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer9ParseUtf8Ev(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.9") align 8 %7, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.er = load i64, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.br

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bn
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !106
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ev)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i: ; preds = %bb.bo, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !83
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.bq, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit

bb.bq:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !18 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !14
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #19
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit

bb.br:                                            ; preds = %bb.bn
  store i64 %i.er, ptr %0, align 8, !tbaa !29, !alias.scope !106
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit: ; preds = %bb.bq, %bb.br, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.critedge

bb.bs:                                            ; preds = %bb.bm
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

bb.bt:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer11ParseNumberEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.20") align 8 %8, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEED2Ev.exit unwind label %bb.bu

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEED2Ev.exit: ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.fh = load i64, ptr %8, align 8, !tbaa !29, !noalias !109
  store i64 %i.fh, ptr %0, align 8, !tbaa !29, !alias.scope !109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.bv:                                            ; preds = %bb.e
  br label %.invoke251

bb.bw:                                            ; preds = %bb.e
  br label %.invoke251

.invoke251:                                       ; preds = %bb.e, %bb.bv, %bb.bw
  %i.fj = phi i64 [ 4, %bb.bw ], [ 5, %bb.bv ], [ 4, %bb.e ]
  %i.fk = phi ptr [ @.str.6, %bb.bw ], [ @.str.5, %bb.bv ], [ @.str.4, %bb.e ]
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 %i.fj, ptr nonnull %i.fk)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.7, i32 noundef 165, ptr noundef nonnull @.str.5) #22
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 11, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.ca

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.by
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ca

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #20
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.ca:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.by
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #20
  unreachable

.critedge:                                        ; preds = %bb.bk, %bb.l, %.invoke251, %.invoke, %.noexc38, %.noexc32, %_ZN4absl12lts_202505126StatusD2Ev.exit93, %bb.bj, %.critedge54.i, %.noexc24, %.noexc18, %_ZN4absl12lts_202505126StatusD2Ev.exit84, %bb.i, %bb.c, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit
  %i.fn = load i64, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.fo = trunc i64 %i.fn to i1
  br i1 %i.fo, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %.critedge
  %i.fp = inttoptr i64 %i.fn to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fp)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #20
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEED2Ev.exit: ; preds = %.critedge, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bf, %.body.i, %bb.bz, %bb.bu, %bb.bs
  %.pn13 = phi { ptr, i32 } [ %i.fl, %bb.bz ], [ %.pn43.i, %bb.bf ], [ %i.fg, %bb.bs ], [ %i.fi, %bb.bu ], [ %i.ao, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit142, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEED2Ev(ptr noundef nonnull align 8 dereferenceable(12) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal9JsonLexer9ParseUtf8Ev(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %4 = alloca %"struct.google::protobuf::json_internal::JsonLocation", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %6 = alloca %"struct.google::protobuf::json_internal::LocationWith.51", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %9 = alloca %"class.google::protobuf::json_internal::MaybeOwnedString", align 8 ; 14 uses
  %10 = alloca %"struct.google::protobuf::json_internal::LocationWith", align 8 ; 19 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.google::protobuf::json_internal::MaybeOwnedString", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN6google8protobuf13json_internal9JsonLexer11SkipToTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.a = load i64, ptr %2, align 8, !tbaa !29
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.g, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.cp

bb.d:                                             ; preds = %bb.b
  %.pre = load i64, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.d = trunc i64 %.pre to i1
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusD2Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.thread:    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.co

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.j, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !43, !range !44, !noundef !45
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = sub i64 %i.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.010.0.i.i.i = phi i64 [ %i.w, %bb.h ], [ %.sroa.010.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.r, %bb.h ], [ %.sroa.6.0.copyload.i.i.i, %bb.g ]
  %.0.i.i.i = phi i64 [ %i.p, %bb.h ], [ %i.i, %bb.g ] ; 3 uses
  %i.x = icmp ugt i64 %.0.i.i.i, %.sroa.010.0.i.i.i
  br i1 %i.x, label %bb.j, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i.i, i64 noundef %.sroa.010.0.i.i.i) #21
  unreachable

_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit: ; preds = %bb.i
  %.pn13.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i, i64 %.0.i.i.i
  %i.y = load i8, ptr %.pn13.i.i.i, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 39                      ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !85, !range !44, !noundef !45
  %i.ac = trunc nuw i8 %i.ab to i1
  %.not = xor i1 %i.ac, true
  %or.cond = and i1 %i.z, %.not
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 12, ptr nonnull @.str.19)
  %i.ae = load i64, ptr %3, align 8, !tbaa !29    ; 2 uses
  store i64 %i.ae, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %3, align 8, !tbaa !29
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_ZN4absl12lts_202505126StatusD2Ev.exit65, !prof !66

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit unwind label %.body

.body:                                            ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.cp

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit: ; preds = %bb.l
  %.pre142 = load i64, ptr %3, align 8, !tbaa !29 ; 2 uses
  %i.ah = trunc i64 %.pre142 to i1
  br i1 %i.ah, label %_ZN4absl12lts_202505126StatusD2Ev.exit65, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit
  %i.ai = inttoptr i64 %.pre142 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit65 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit65:         ; preds = %bb.k, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.co

bb.o:                                             ; preds = %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream8PeekCharEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.am = select i1 %i.z, ptr @.str.20, ptr @.str.21
  call void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull %i.am)
  %i.an = load i64, ptr %5, align 8, !tbaa !29
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.s, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cp

bb.r:                                             ; preds = %bb.p
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.co

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_:bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #18
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESF_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %1, align 8, !tbaa !29
  %i.b = load i64, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #18
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd(i64, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream5AtEofEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::Status", align 8 ; 2 uses
  call void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = load i64, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !169, !range !44, !noundef !45
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 -1, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !83
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !7
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC1EOSG_EUlOT_T0_E_OSt7variantIJSA_SF_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.j, ptr %i.d, align 8, !tbaa !18
  %i.q = load i64, ptr %i.k, align 8, !tbaa !14
  store i64 %i.q, ptr %i.i, align 8, !tbaa !14
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC1EOSG_EUlOT_T0_E_OSt7variantIJSA_SF_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC1EOSG_EUlOT_T0_E_OSt7variantIJSA_SF_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %i.c, align 8, !tbaa !18
  store i64 0, ptr %i.r, align 8, !tbaa !11
  store i8 0, ptr %i.k, align 8, !tbaa !14
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 24, i1 false), !tbaa.struct !134
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC1EOSG_EUlOT_T0_E_OSt7variantIJSA_SF_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.f, align 8, !tbaa !83
  store i8 %i.u, ptr %i.e, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80   ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 76 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !119  ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !119
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEEC2EOSB_.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !tbaa.struct !122
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2EOS9_.exit

bb.i:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %1, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2EOS9_.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEEC2EOS9_.exit: ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithIdEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !29
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit, !prof !66

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #18
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISA_OT_EE5valueEiE4typeELi0EEESE_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal9JsonLexer18ParseUnicodeEscapeEPc(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::StatusOr.31", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %6 = alloca %"class.absl::lts_20250512::StatusOr.31", align 8 ; 13 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6google8protobuf13json_internal9JsonLexer20ParseU16HexCodepointEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.31") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load i64, ptr %3, align 8, !tbaa !29     ; 4 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !29
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = icmp eq i64 %i.a, 1
  br i1 %i.e, label %bb.g, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202505128StatusOrImEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bb

bb.f:                                             ; preds = %bb.d
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ay

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.g = load i64, ptr %3, align 8, !tbaa !29
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(10) %3) #21
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !170  ; 10 uses
  %i.k = zext i16 %i.j to i32
  %i.l = and i16 %i.j, -1024
  switch i16 %i.l, label %bb.at [
    i16 -10240, label %bb.j
    i16 -9216, label %bb.an
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 2, ptr nonnull @.str.15)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.m = load i64, ptr %5, align 8, !tbaa !29
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.p, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_202505128StatusOrImEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.thread unwind label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.n:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.u

.thread:                                          ; preds = %bb.l
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ay

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer20ParseU16HexCodepointEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.31") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.r = load i64, ptr %6, align 8, !tbaa !29     ; 4 uses
  store i64 %i.r, ptr %7, align 8, !tbaa !29
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = inttoptr i64 %i.r to ptr
  %i.u = atomicrmw add ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.v = icmp eq i64 %i.r, 1
  br i1 %i.v, label %bb.x, label %bb.t, !prof !31

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4absl12lts_202505128StatusOrImEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge94.critedge unwind label %bb.w

bb.u:                                             ; preds = %bb.o, %bb.n
  %.pn76 = phi { ptr, i32 } [ %i.q, %bb.o ], [ %i.p, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bb

bb.v:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.w:                                             ; preds = %bb.t
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.al

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.y = load i64, ptr %6, align 8, !tbaa !29
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.z, label %bb.y, !prof !31

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(10) %6) #21
          to label %.noexc96 unwind label %bb.ae

.noexc96:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !170 ; 3 uses
  %i.ac = and i16 %i.ab, -1024
  %or.cond6 = icmp eq i16 %i.ac, -9216
  br i1 %or.cond6, label %.thread123.a, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 21, ptr nonnull @.str.16)
          to label %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit unwind label %bb.af

_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit: ; preds = %bb.aa
  %i.ae = load i64, ptr %8, align 8, !tbaa !29    ; 2 uses
  store i64 %i.ae, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %8, align 8, !tbaa !29
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.ab, label %bb.ah, !prof !66

bb.ab:                                            ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit unwind label %.body

.body:                                            ; preds = %bb.ab
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  br label %bb.ag

_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit: ; preds = %bb.ab
  %.pre126 = load i64, ptr %8, align 8, !tbaa !29 ; 2 uses
  %i.ah = trunc i64 %.pre126 to i1
  br i1 %i.ah, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit
  %i.ai = inttoptr i64 %.pre126 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %bb.ah unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

bb.ae:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %bb.aa
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.af
  %.pn80 = phi { ptr, i32 } [ %i.ag, %.body ], [ %i.am, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.al

bb.ah:                                            ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit, %bb.ac, %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.an = load i64, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = inttoptr i64 %i.an to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #20
  unreachable

bb.ak:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ay

bb.al:                                            ; preds = %bb.ae, %bb.ag, %bb.w
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.x, %bb.w ], [ %.pn80, %bb.ag ], [ %i.al, %bb.ae ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.v
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn, %bb.al ], [ %i.w, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bb

bb.an:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 22, ptr nonnull @.str.17)
          to label %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit101 unwind label %bb.ar

_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit101: ; preds = %bb.an
  %i.at = load i64, ptr %9, align 8, !tbaa !29    ; 2 uses
  store i64 %i.at, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %9, align 8, !tbaa !29
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.ao, label %_ZN4absl12lts_202505126StatusD2Ev.exit105, !prof !66

bb.ao:                                            ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit101
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit104 unwind label %.body102

.body102:                                         ; preds = %bb.ao
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.as

_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit104: ; preds = %bb.ao
  %.pre = load i64, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.aw = trunc i64 %.pre to i1
  br i1 %i.aw, label %_ZN4absl12lts_202505126StatusD2Ev.exit105, label %bb.ap

bb.ap:                                            ; preds = %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit104
  %i.ax = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ax)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit105 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit105:        ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit101, %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit104, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ay

bb.ar:                                            ; preds = %bb.an
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.body102, %bb.ar
  %.pn74 = phi { ptr, i32 } [ %i.av, %.body102 ], [ %i.ba, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bb

bb.at:                                            ; preds = %bb.i
  %i.bb = icmp ult i16 %i.j, 128
  br i1 %i.bb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bc = trunc nuw nsw i16 %i.j to i8
  store i8 %i.bc, ptr %2, align 1, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.be = icmp ult i16 %i.j, 2048
  br i1 %i.be, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bf = lshr i16 %i.j, 6
  %i.bg = trunc nuw nsw i16 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -64
  store i8 %i.bh, ptr %2, align 1, !tbaa !14
  %i.bi = trunc i16 %i.j to i8
  %i.bj = and i8 %i.bi, 63
  %i.bk = or disjoint i8 %i.bj, -128
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bm, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %bb.ay

.thread123.a:                                     ; preds = %bb.z
  %10 = shl nuw nsw i32 %i.k, 10                  ; 2 uses
  %11 = and i32 %10, 1047552
  %12 = and i16 %i.ab, 960
  %13 = zext nneg i16 %12 to i32
  %14 = add nuw nsw i32 %11, 65536                ; 2 uses
  %15 = or disjoint i32 %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %16 = lshr i32 %14, 18
  %17 = lshr i32 %14, 12
  %18 = trunc i32 %17 to i8
  %i.bn = lshr exact i32 %15, 6
  %i.bo = trunc i32 %i.bn to i8
  %19 = trunc i16 %i.ab to i8
  %20 = trunc nuw nsw i32 %16 to i8
  %21 = insertelement <4 x i8> poison, i8 %20, i64 0
  %22 = insertelement <4 x i8> %21, i8 %18, i64 1
  %23 = insertelement <4 x i8> %22, i8 %i.bo, i64 2
  %24 = insertelement <4 x i8> %23, i8 %19, i64 3
  %25 = and <4 x i8> %24, <i8 -1, i8 63, i8 63, i8 63>
  %26 = or disjoint <4 x i8> %25, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %26, ptr %2, align 1, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.bp, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %27 = lshr i16 %i.j, 12
  %28 = trunc nuw nsw i16 %27 to i8
  %29 = or disjoint i8 %28, -32
  store i8 %29, ptr %2, align 1, !tbaa !14
  %30 = lshr i16 %i.j, 6
  %i.bq = trunc i16 %30 to i8
  %31 = and i8 %i.bq, 63
  %32 = or disjoint i8 %31, -128
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !14
  %34 = trunc i16 %i.j to i8
  %35 = and i8 %34, 63
  %36 = or disjoint i8 %35, -128
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %36, ptr %37, align 1, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.br, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %bb.ay

.critedge94.critedge:                             ; preds = %bb.t
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ak, %.thread, %bb.f, %.critedge94.critedge, %_ZN4absl12lts_202505126StatusD2Ev.exit105, %bb.au, %bb.aw, %bb.ax, %.thread123.a
  %i.bs = load i64, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bt = trunc i64 %i.bs to i1
  br i1 %i.bt, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit106, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bu = inttoptr i64 %i.bs to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bu)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit106 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #20
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit106: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.bb:                                            ; preds = %bb.m, %bb.as, %bb.am, %bb.u, %bb.e
  %.pn86.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn76, %bb.u ], [ %.pn80.pn.pn.pn, %bb.am ], [ %.pn74, %bb.as ], [ %i.o, %bb.m ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn86.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrImEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !29     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !29
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !29
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS5_OT_EE5valueEiE4typeELi0EEES9_.exit, !prof !66

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS5_OT_EE5valueEiE4typeELi0EEES9_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #18
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS5_OT_EE5valueEiE4typeELi0EEES9_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal16MaybeOwnedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !83
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEED2Ev.exit

bb.d:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf13json_internal16MaybeOwnedString11StreamOwnedEEED2Ev.exit: ; preds = %bb.d, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf13json_internal16MaybeOwnedString8ToStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !83    ; 2 uses
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = load ptr, ptr %0, align 8, !tbaa !146    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !43, !range !44, !noundef !45
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46
  %i.o = sub i64 %i.f, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i = phi i64 [ %i.v, %bb.c ], [ %.sroa.010.0.copyload.i.i, %bb.b ] ; 5 uses
  %.sroa.6.0.i.i = phi ptr [ %i.q, %bb.c ], [ %.sroa.6.0.copyload.i.i, %bb.b ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %i.w = icmp eq i64 %i.h, -1
  %i.x = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i   ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #21
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %bb.e
  %i.y = sub nuw i64 %.sroa.010.0.i.i, %.0.i.i
  br label %_ZNK6google8protobuf13json_internal16MaybeOwnedString11StreamOwned6AsViewEv.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit9.i.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #21
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit9.i.i: ; preds = %bb.g
  %i.z = sub nuw i64 %.sroa.010.0.i.i, %.0.i.i
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.h)
  br label %_ZNK6google8protobuf13json_internal16MaybeOwnedString11StreamOwned6AsViewEv.exit

_ZNK6google8protobuf13json_internal16MaybeOwnedString11StreamOwned6AsViewEv.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit9.i.i
  %.pn15.i.i = phi i64 [ %i.y, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ], [ %.sroa.speculated.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit9.i.i ] ; 5 uses
  %.pn13.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 %.0.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !7
  %i.ab = icmp eq ptr %.sroa.6.0.i.i, null
end_hunk_1
