Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_enum_util?download=true
inline.NumInlined: 367
inline.NumDeleted: 217
begin_hunk_0_@_ZN6google8protobuf8internal14LookUpEnumNameEPKNS1_9EnumEntryEPKimi:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = xor i64 %i.d, -1
  %i.n = add nsw i64 %.05.i.i, %i.m
  %spec.select = select i1 %i.k, ptr %i.l, ptr %.0114.i.i
  %spec.select24 = select i1 %i.k, i64 %i.n, i64 %i.d
  br label %.thread

.thread:                                          ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i", %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.o = phi ptr [ %.0114.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %i.p = phi i64 [ %i.d, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select24, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryEPKimiE3$_0EclIS9_S8_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit", !llvm.loop !17

"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit": ; preds = %.thread, %bb.a
  %.011.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.o, %.thread ] ; 3 uses
  %.not = icmp eq ptr %.011.lcssa.i.i, %i.a
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit"
  %i.r = load i32, ptr %.011.lcssa.i.i, align 4, !tbaa !3
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !14
  %i.w = icmp eq i32 %i.v, %3
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.y = sub i64 %i.x, %i.b
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit", %bb.b, %bb.c
  %.0 = phi i32 [ %i.aa, %bb.c ], [ -1, %bb.b ], [ -1, %"_ZSt11lower_boundIPKiiZN6google8protobuf8internal14LookUpEnumNameEPKNS4_9EnumEntryES1_miE3$_0ET_S9_S9_RKT0_T1_.exit" ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal21InitializeEnumStringsEPKNS1_9EnumEntryEPKimPNS1_21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit, %bb.a
  ret i1 true

.lr.ph:                                           ; preds = %bb.a, %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit
  %.09 = phi i64 [ %i.s, %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.09 ; 7 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !7 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !18
  %i.h = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.i = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.a, align 8, !tbaa !7
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !20
  %i.l = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.l, ptr %i.g, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !22
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit

_ZN6google8protobuf8internal21ExplicitlyConstructedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE9ConstructIJRKSt17basic_string_viewIcS6_EEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZN6google8protobuf8internal13DestroyStringEPKv, ptr noundef nonnull %i.b)
  %i.s = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = lshr i32 %i.a, 16
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = sext i32 %0 to i64
  %sext.i = shl i64 %i.b, 48
  %i.f = ashr exact i64 %sext.i, 48
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = sub nuw nsw i64 %i.g, %i.d               ; 3 uses
  %.mask.i = and i32 %i.j, 65535
  %i.l = zext nneg i32 %.mask.i to i64
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.k, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = trunc nuw nsw i64 %i.k to i32
  %i.s = and i32 %i.r, 31
  %i.t = lshr i32 %i.q, %i.s
  %i.u = trunc i32 %i.t to i1
  br label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit

bb.d:                                             ; preds = %bb.b
  %i.v = lshr i32 %i.j, 16
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i32 %i.j, 5
  %i.y = and i32 %i.x, 2047
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i64 [ 0, %bb.d ], [ %i.ai, %bb.f ]  ; 3 uses
  %i.ac = icmp ult i64 %.0.i, %i.w                ; 3 uses
  br i1 %i.ac, label %bb.f, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.0.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %i.ae, %0
  %i.af = shl nuw nsw i64 %.0.i, 1
  %i.ag = icmp sgt i32 %i.ae, %0
  %i.ah = select i1 %i.ag, i64 1, i64 2
  %i.ai = add nuw nsw i64 %i.ah, %i.af
  br i1 %.not.i, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.e, !llvm.loop !26

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit: ; preds = %bb.e, %bb.f, %bb.a, %bb.c
  %.4.i = phi i1 [ true, %bb.a ], [ %i.u, %bb.c ], [ %i.ac, %bb.f ], [ %i.ac, %bb.e ]
  ret i1 %.4.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::EytzingerLayoutSorter", align 8 ; 9 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not296 = icmp eq i64 %2, 0
  br i1 %.not296, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %.lr.ph310

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.b = ptrtoint ptr %.sroa.17.2 to i64          ; 5 uses
  %i.c = trunc nuw i8 %.sroa.8.1 to i1
  %i.d = zext i16 %.sroa.0.1 to i32
  %i.e = select i1 %i.c, i32 %i.d, i32 0
  %i.f = shl i32 %.1, 16
  %i.g = or disjoint i32 %i.f, %i.e               ; 5 uses
  %i.h = icmp eq ptr %.sroa.0142.2, %.sroa.16.2
  br i1 %i.h, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.aa

.lr.ph310:                                        ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.0309 = phi ptr [ %i.df, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0162.0308 = phi ptr [ %.sroa.0162.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 15 uses
  %.sroa.13.0307 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.27.0306 = phi ptr [ %.sroa.27.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 13 uses
  %.sroa.16.0305 = phi ptr [ %.sroa.16.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.0142.0304 = phi ptr [ %.sroa.0142.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 18 uses
  %.sroa.20.0303 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 10 uses
  %.0203302 = phi i32 [ %.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 9 uses
  %.sroa.0.0301 = phi i16 [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ undef, %bb.a ] ; 8 uses
  %.sroa.8.0300 = phi i8 [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ]
  %.sroa.0186.0299 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 21 uses
  %.sroa.27.0204298 = phi ptr [ %.sroa.27.2206, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 16 uses
  %.sroa.17.0297 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 13 uses
  %i.i = load i32, ptr %.0309, align 4, !tbaa !3  ; 8 uses
  %i.j = trunc nuw i8 %.sroa.8.0300 to i1
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph310
  %i.k = add i32 %i.i, 32768
  %.not46 = icmp ult i32 %i.k, 65536
  br i1 %.not46, label %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %.sroa.13.0307, %.sroa.20.0303
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %.sroa.13.0307, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.13.0307, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.13.0307 to i64
  %i.n = ptrtoint ptr %.sroa.0162.0308 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951)
  %i.u = select i1 %i.s, i64 2305843009213693951, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #15
          to label %.noexc60 unwind label %.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i32 %i.i, ptr %i.x, align 4, !tbaa !3
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %.sroa.0162.0308, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc60
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0162.0308, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0308, i64 noundef %i.o) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit: ; preds = %bb.b
  %.sink.i = trunc nsw i32 %i.i to i16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %.lr.ph310
  %i.ab = sext i16 %.sroa.0.0301 to i32
  %i.ac = add nsw i32 %.0203302, %i.ab            ; 3 uses
  %i.ad = icmp eq i32 %i.i, %i.ac
  %i.ae = icmp ult i32 %.0203302, 65535
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = add nuw nsw i32 %.0203302, 1
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = sub i32 %i.i, %i.ac                     ; 6 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.17.0297 to i64      ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.0186.0299 to i64    ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 7 uses
  %i.am = shl i64 %i.ak, 3
  %i.an = icmp ugt i64 %i.am, %i.ah
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.ag, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.ag, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0186.0299, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = ptrtoint ptr %.sroa.16.0305 to i64
  %i.aw = ptrtoint ptr %.sroa.0142.0304 to i64    ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 4 uses
  %i.az = add nsw i64 %i.al, 1
  %i.ba = add nsw i64 %i.az, %i.ay
  %i.bb = add nuw nsw i64 %i.ah, 32
  %i.bc = lshr i64 %i.bb, 5                       ; 5 uses
  %.not47 = icmp ule i64 %i.bc, %i.ba
  %i.bd = icmp ult i32 %i.ag, 65504
  %or.cond53 = and i1 %i.bd, %.not47
  br i1 %or.cond53, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.be = icmp ugt i64 %i.bc, %i.al
  br i1 %i.be, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bf = sub nuw nsw i64 %i.bc, %i.al            ; 5 uses
  %i.bg = ptrtoint ptr %.sroa.27.0204298 to i64   ; 2 uses
  %i.bh = sub i64 %i.bg, %i.ai
  %i.bi = ashr exact i64 %i.bh, 2                 ; 2 uses
  %i.bj = xor i64 %i.al, 2305843009213693951
  %i.bk = icmp ule i64 %i.bi, %i.bj
  tail call void @llvm.assume(i1 %i.bk)
  %.not28.i = icmp ult i64 %i.bi, %i.bf
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %.sroa.17.0297, align 4, !tbaa !3
  %i.bl = getelementptr i8, ptr %.sroa.17.0297, i64 4 ; 3 uses
  %i.bm = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.p
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bm, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.bf)
  %i.bp = add nuw nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #15
          to label %.noexc98 unwind label %.loopexit225 ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ak ; 3 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !3
  %i.bt = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc98
  %i.bv = getelementptr i8, ptr %i.bs, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !3
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc98
  %i.bw = icmp sgt i64 %i.ak, 0
  br i1 %i.bw, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %.sroa.0186.0299, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0186.0299, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bx = sub i64 %i.bg, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0299, i64 noundef %i.bx) #16
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bf
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.s:                                             ; preds = %bb.n
  %i.ca = icmp ult i64 %i.bc, %i.al
  br i1 %i.ca, label %bb.t, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0186.0299, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.0297, %i.cb
  %spec.select = select i1 %.not.i.i, ptr %.sroa.17.0297, ptr %i.cb
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.t, %bb.s, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.p
  %.sroa.17.3 = phi ptr [ %.sroa.17.0297, %bb.s ], [ %spec.select, %bb.t ], [ %i.bl, %bb.p ], [ %i.bo, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.by, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ]
  %.sroa.27.3207 = phi ptr [ %.sroa.27.0204298, %bb.s ], [ %.sroa.27.0204298, %bb.t ], [ %.sroa.27.0204298, %bb.p ], [ %.sroa.27.0204298, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bz, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ]
  %.sroa.0186.3 = phi ptr [ %.sroa.0186.0299, %bb.s ], [ %.sroa.0186.0299, %bb.t ], [ %.sroa.0186.0299, %bb.p ], [ %.sroa.0186.0299, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.br, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.not223294 = icmp eq ptr %.sroa.0142.0304, %.sroa.16.0305
  br i1 %.not223294, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %spec.select222 = phi ptr [ %.sroa.16.0305, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.0142.0304, %.lr.ph ]
  %i.cc = and i32 %i.ag, 31
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = lshr i32 %i.ag, 5
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0186.3, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = or i32 %i.ch, %i.cd
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit225:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

.loopexit.split-lp226:                            ; preds = %bb.x
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %.lr.ph
  %.sroa.0129.0295 = phi ptr [ %i.cs, %.lr.ph ], [ %.sroa.0142.0304, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.0129.0295, align 4, !tbaa !3
  %i.ck = sub i32 %i.cj, %i.ac                    ; 2 uses
  %i.cl = and i32 %i.ck, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = lshr i32 %i.ck, 5
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0186.3, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = or i32 %i.cm, %i.cq
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0129.0295, i64 4 ; 2 uses
  %.not223 = icmp eq ptr %i.cs, %.sroa.16.0305
  br i1 %.not223, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

bb.u:                                             ; preds = %bb.m
  %.not.i63 = icmp eq ptr %.sroa.16.0305, %.sroa.27.0306
  br i1 %.not.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.i, ptr %.sroa.16.0305, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.16.0305, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %bb.u
  %i.cu = icmp eq i64 %i.ax, 9223372036854775804
  br i1 %i.cu, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc70 unwind label %.loopexit.split-lp226

.noexc70:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64: ; preds = %bb.w
  %.sroa.speculated.i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i65, %i.ay ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.ay
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 2305843009213693951)
  %i.cy = select i1 %i.cw, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i66 = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i66)
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #15
          to label %.noexc71 unwind label %.loopexit225 ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.ax ; 2 uses
  store i32 %i.i, ptr %i.db, align 4, !tbaa !3
  %i.dc = icmp sgt i64 %i.ax, 0
  br i1 %i.dc, label %bb.y, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67

bb.y:                                             ; preds = %.noexc71
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %.sroa.0142.0304, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67: ; preds = %bb.y, %.noexc71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.not.i17.i.i68 = icmp eq ptr %.sroa.0142.0304, null
  br i1 %.not.i17.i.i68, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67
  %4 = ptrtoint ptr %.sroa.27.0306 to i64
  %5 = sub i64 %4, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.0304, i64 noundef %5) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69: ; preds = %bb.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cy
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.j, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit
  %.sroa.17.2 = phi ptr [ %.sroa.17.0297, %bb.j ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17.0297, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.17.0297, %bb.d ], [ %.sroa.17.0297, %bb.l ], [ %.sroa.17.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.17.0297, %bb.v ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.27.2206 = phi ptr [ %.sroa.27.0204298, %bb.j ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0204298, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.27.0204298, %bb.d ], [ %.sroa.27.0204298, %bb.l ], [ %.sroa.27.3207, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0204298, %bb.v ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.0299, %bb.j ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0186.0299, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0186.0299, %bb.d ], [ %.sroa.0186.0299, %bb.l ], [ %.sroa.0186.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0186.0299, %bb.v ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.8.1 = phi i8 [ 1, %bb.j ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ 1, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ 0, %bb.d ], [ 1, %bb.l ], [ 1, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ 1, %bb.v ], [ 1, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.0.1 = phi i16 [ %.sroa.0.0301, %bb.j ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sink.i, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0.0301, %bb.d ], [ %.sroa.0.0301, %bb.l ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0.0301, %bb.v ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.1 = phi i32 [ %i.af, %bb.j ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ 1, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.0203302, %bb.d ], [ %.0203302, %bb.l ], [ %.0203302, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.0203302, %bb.v ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.0303, %bb.j ], [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.0303, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.20.0303, %bb.d ], [ %.sroa.20.0303, %bb.l ], [ %.sroa.20.0303, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.20.0303, %bb.v ], [ %.sroa.20.0303, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.0142.2 = phi ptr [ %.sroa.0142.0304, %bb.j ], [ %.sroa.0142.0304, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0142.0304, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0142.0304, %bb.d ], [ %.sroa.0142.0304, %bb.l ], [ %.sroa.0142.0304, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0142.0304, %bb.v ], [ %i.da, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 10 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.0305, %bb.j ], [ %.sroa.16.0305, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.16.0305, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.16.0305, %bb.d ], [ %.sroa.16.0305, %bb.l ], [ %spec.select222, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.ct, %bb.v ], [ %i.dd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 5 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.0306, %bb.j ], [ %.sroa.27.0306, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0306, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.27.0306, %bb.d ], [ %.sroa.27.0306, %bb.l ], [ %.sroa.27.0306, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0306, %bb.v ], [ %i.de, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0307, %bb.j ], [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.0307, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %i.l, %bb.d ], [ %.sroa.13.0307, %bb.l ], [ %.sroa.13.0307, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.13.0307, %bb.v ], [ %.sroa.13.0307, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 5 uses
  %.sroa.0162.1 = phi ptr [ %.sroa.0162.0308, %bb.j ], [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0162.0308, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0162.0308, %bb.d ], [ %.sroa.0162.0308, %bb.l ], [ %.sroa.0162.0308, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0162.0308, %bb.v ], [ %.sroa.0162.0308, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0309, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph310

bb.aa:                                            ; preds = %._crit_edge
  %i.dg = icmp eq ptr %.sroa.0162.1, %.sroa.13.1
  br i1 %i.dg, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = ptrtoint ptr %.sroa.13.1 to i64         ; 2 uses
  %i.di = ptrtoint ptr %.sroa.0162.1 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = ptrtoint ptr %.sroa.16.2 to i64         ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.0142.2 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2
  %i.dp = add nsw i64 %i.dk, %i.do                ; 5 uses
  %.not224 = icmp eq i64 %i.dp, 0
  br i1 %.not224, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = icmp ugt i64 %i.dp, 2305843009213693951
  br i1 %i.dq, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
          to label %.noexc106 unwind label %.thread

.noexc106:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ac
  %i.dr = shl nuw nsw i64 %i.dp, 2
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #15
          to label %.noexc107 unwind label %.thread ; 4 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.ds, align 4, !tbaa !3
  %i.dt = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.noexc77, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc107
  %i.dv = getelementptr i8, ptr %i.ds, i64 4
  %.idx.i.i.i.i.i31.i104 = shl nuw nsw i64 %i.dt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %.idx.i.i.i.i.i31.i104, i1 false), !tbaa !3
  br label %.noexc77

.noexc77:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc107
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dp
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %.noexc77, %bb.ab
  %.sroa.0108.2 = phi ptr [ %i.ds, %.noexc77 ], [ null, %bb.ab ] ; 4 uses
  %.sroa.18.1 = phi ptr [ %i.dw, %.noexc77 ], [ null, %bb.ab ] ; 6 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.0108.2, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i ], [ %.sroa.0162.1, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i ], [ %.sroa.0142.2, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %i.dx = load i32, ptr %.sroa.010.018.i.i, align 4, !tbaa !3 ; 2 uses
  %i.dy = load i32, ptr %.sroa.014.019.i.i, align 4, !tbaa !3 ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dy               ; 2 uses
  %.sink.i.i = tail call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dy)
  %.sroa.010.1.idx.i.i = select i1 %i.dz, i64 4, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.dz, i64 0, i64 4
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store i32 %.sink.i.i, ptr %.020.i.i, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 4 ; 4 uses
  %i.eb = icmp ne ptr %.sroa.014.1.i.i, %.sroa.13.1
  %i.ec = icmp ne ptr %.sroa.010.1.i.i, %.sroa.16.2
  %or.cond.i.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !27

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ed = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ee = sub i64 %i.dh, %i.ed                    ; 4 uses
  %i.ef = icmp sgt i64 %i.ee, 4
  br i1 %i.ef, label %bb.ae, label %bb.af, !prof !25

bb.ae:                                            ; preds = %.critedge.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull align 4 %.sroa.014.1.i.i, i64 %i.ee, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i

bb.af:                                            ; preds = %.critedge.i.i
  %i.eg = icmp eq i64 %i.ee, 4
  br i1 %i.eg, label %bb.ag, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.eh = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !3
  store i32 %i.eh, ptr %i.ea, align 4, !tbaa !3
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ei = getelementptr inbounds i8, ptr %i.ea, i64 %i.ee ; 2 uses
  %i.ej = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ek = sub i64 %i.dl, %i.ej                    ; 3 uses
  %i.el = icmp sgt i64 %i.ek, 4
  br i1 %i.el, label %bb.ah, label %bb.ai, !prof !25

bb.ah:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr nonnull align 4 %.sroa.010.1.i.i, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

bb.ai:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i.i
  %i.em = icmp eq i64 %i.ek, 4
  br i1 %i.em, label %bb.aj, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.en = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !3
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

.thread:                                          ; preds = %bb.ad, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.aj, %bb.ai, %bb.ah, %bb.aa, %._crit_edge
  %.0203.lcssa383 = phi i32 [ %i.g, %bb.aa ], [ %i.g, %._crit_edge ], [ %i.g, %bb.ah ], [ %i.g, %bb.ai ], [ %i.g, %bb.aj ], [ 0, %bb.a ]
  %.sroa.0186.0.lcssa381 = phi ptr [ %.sroa.0186.2, %bb.aa ], [ %.sroa.0186.2, %._crit_edge ], [ %.sroa.0186.2, %bb.ah ], [ %.sroa.0186.2, %bb.ai ], [ %.sroa.0186.2, %bb.aj ], [ null, %bb.a ] ; 7 uses
  %.sroa.27.0204.lcssa379 = phi ptr [ %.sroa.27.2206, %bb.aa ], [ %.sroa.27.2206, %._crit_edge ], [ %.sroa.27.2206, %bb.ah ], [ %.sroa.27.2206, %bb.ai ], [ %.sroa.27.2206, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.17.0.lcssa378 = phi i64 [ %i.b, %bb.aa ], [ %i.b, %._crit_edge ], [ %i.b, %bb.ah ], [ %i.b, %bb.ai ], [ %i.b, %bb.aj ], [ 0, %bb.a ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.20.1, %bb.ah ], [ %.sroa.20.1, %bb.ai ], [ %.sroa.20.1, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.0142.3 = phi ptr [ null, %bb.aa ], [ %.sroa.0142.2, %._crit_edge ], [ %.sroa.0142.2, %bb.ah ], [ %.sroa.0142.2, %bb.ai ], [ %.sroa.0142.2, %bb.aj ], [ null, %bb.a ] ; 5 uses
  %.sroa.27.3 = phi ptr [ null, %bb.aa ], [ %.sroa.27.2, %._crit_edge ], [ %.sroa.27.2, %bb.ah ], [ %.sroa.27.2, %bb.ai ], [ %.sroa.27.2, %bb.aj ], [ null, %bb.a ] ; 3 uses
  %.sroa.0108.0 = phi ptr [ %.sroa.0142.2, %bb.aa ], [ %.sroa.0162.1, %._crit_edge ], [ %.sroa.0108.2, %bb.ah ], [ %.sroa.0108.2, %bb.ai ], [ %.sroa.0108.2, %bb.aj ], [ null, %bb.a ] ; 6 uses
  %.sroa.18.0 = phi ptr [ %.sroa.16.2, %bb.aa ], [ %.sroa.13.1, %._crit_edge ], [ %.sroa.18.1, %bb.ah ], [ %.sroa.18.1, %bb.ai ], [ %.sroa.18.1, %bb.aj ], [ null, %bb.a ]
  %.sroa.29.0 = phi ptr [ %.sroa.27.2, %bb.aa ], [ %.sroa.20.1, %._crit_edge ], [ %.sroa.18.1, %bb.ah ], [ %.sroa.18.1, %bb.ai ], [ %.sroa.18.1, %bb.aj ], [ null, %bb.a ] ; 2 uses
  %.sroa.0162.2 = phi ptr [ %.sroa.0162.1, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.0162.1, %bb.ah ], [ %.sroa.0162.1, %bb.ai ], [ %.sroa.0162.1, %bb.aj ], [ null, %bb.a ] ; 5 uses
  %i.ep = ptrtoint ptr %.sroa.0186.0.lcssa381 to i64 ; 2 uses
  %i.eq = sub i64 %.sroa.17.0.lcssa378, %i.ep     ; 5 uses
  %i.er = ashr exact i64 %i.eq, 2                 ; 2 uses
  %i.es = add nsw i64 %i.er, 2
  %i.et = ptrtoint ptr %.sroa.18.0 to i64
  %i.eu = ptrtoint ptr %.sroa.0108.0 to i64       ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 2                 ; 4 uses
  %i.ex = add nsw i64 %i.es, %i.ew                ; 5 uses
  %i.ey = icmp ugt i64 %i.ex, 2305843009213693951
  br i1 %i.ey, label %bb.ak, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %.noexc78 unwind label %bb.ap

.noexc78:                                         ; preds = %bb.ak
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ez = shl nuw nsw i64 %i.ex, 2
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #15
          to label %.noexc79 unwind label %bb.ap  ; 6 uses

.noexc79:                                         ; preds = %bb.al
  store ptr %i.fa, ptr %0, align 8, !tbaa !28
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ex ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !31
  store i32 0, ptr %i.fa, align 4, !tbaa !3
  %i.fd = getelementptr i8, ptr %i.fa, i64 4      ; 3 uses
  %i.fe = add nsw i64 %i.ex, -1                   ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc79
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fe, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc79
  %i.fh = phi ptr [ %i.fb, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fb, %.noexc79 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
end_hunk_0
