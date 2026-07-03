inline.NumInlined: 55
inline.NumDeleted: 38
begin_hunk_0_@_ZN6google8protobuf11MessageLite7NewImplINS0_8internal19ImplicitWeakMessageEEEPvPKvS5_PNS0_5ArenaE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6google8protobuf8internal19ImplicitWeakMessage12GetClassDataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret ptr @_ZN6google8protobuf8internal19ImplicitWeakMessage11class_data_E
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19ImplicitWeakMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #11
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19ImplicitWeakMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6google8protobuf8internal19ImplicitWeakMessageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #11
  br label %_ZN6google8protobuf8internal19ImplicitWeakMessageD2Ev.exit

_ZN6google8protobuf8internal19ImplicitWeakMessageD2Ev.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19ImplicitWeakMessage5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !17
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21
  store i8 0, ptr %i.d, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal19ImplicitWeakMessage12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.thread, %bb.b
  %i.j = phi ptr [ %i.d, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = phi i64 [ 0, %.thread ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = load atomic i32, ptr %i.j monotonic, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %i.o = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %i.f, %bb.b ]
  store atomic i32 %i.n, ptr %i.o monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal19ImplicitWeakMessage18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !31
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext, 32                 ; 2 uses
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.f to i32
  %i.n = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.d, i32 noundef %i.m, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.d:                                             ; preds = %bb.b
  %i.o = and i64 %i.f, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.d, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.k
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream14AppendUntilEndIZNS2_12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS5_lE_EES5_S5_RKT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp sgt i64 %i.e, %i.h
  br i1 %i.i, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %i.g, 16
  br i1 %i.j, label %.lr.ph, label %._crit_edge

thread-pre-split:                                 ; preds = %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.pr = load i32, ptr %i.f, align 4, !tbaa !38   ; 2 uses
  %i.l = icmp sgt i32 %.pr, 16
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %.01526 = phi ptr [ %i.k, %thread-pre-split ], [ %1, %.preheader ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.01526 to i64
  %i.q = sub i64 %i.o, %i.p
  %sext = shl i64 %i.q, 32
  %i.r = ashr exact i64 %sext, 32                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.b, label %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit: ; preds = %.lr.ph
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.01526, i64 noundef %i.r) ; 0 uses
  %i.y = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit, label %thread-pre-split

._crit_edge.loopexit:                             ; preds = %thread-pre-split
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  %.pre29 = sext i32 %.pr to i64
  %.pre30 = ptrtoint ptr %i.k to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi31 = phi i64 [ %.pre30, %._crit_edge.loopexit ], [ %i.c, %.preheader ]
  %.pre-phi = phi i64 [ %.pre29, %._crit_edge.loopexit ], [ %i.h, %.preheader ]
  %i.z = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  %.015.lcssa = phi ptr [ %i.k, %._crit_edge.loopexit ], [ %1, %.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.pre-phi ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre-phi31              ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.ac
  br i1 %i.ah, label %bb.c, label %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit20

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit20: ; preds = %._crit_edge
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef %.015.lcssa, i64 noundef %i.ac) ; 0 uses
  br label %bb.d

.loopexit:                                        ; preds = %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit
  %3 = load ptr, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.a, %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit20
  %.2 = phi ptr [ %i.aa, %_ZZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlS4_lE_clES4_l.exit20 ], [ null, %bb.a ], [ %3, %.loopexit ]
  ret ptr %.2
}

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

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
!7 = !{!8, !12, i64 16}
!8 = !{!"_ZTSN6google8protobuf8internal19ImplicitWeakMessageE", !9, i64 0, !12, i64 16, !14, i64 24}
!9 = !{!"_ZTSN6google8protobuf11MessageLiteE", !10, i64 8}
!10 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !4, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"_ZTSZN6google8protobuf8internal18EpsCopyInputStream12AppendStringEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS4_lE_", !12, i64 0}
!17 = !{!18, !11, i64 8}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !11, i64 8, !5, i64 16}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!18, !20, i64 0}
!22 = !{!10, !11, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = distinct !{null}
!27 = !{!19, !20, i64 0}
!28 = !{!5, !5, i64 0}
!29 = !{!14, !4, i64 0}
!30 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!31 = !{!32, !20, i64 0}
!32 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !20, i64 0, !20, i64 8, !5, i64 16, !33, i64 48, !34, i64 56, !34, i64 57, !34, i64 58, !34, i64 59}
!33 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !13, i64 0}
!34 = !{!"bool", !5, i64 0}
!35 = !{!36, !20, i64 8}
!36 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !20, i64 0, !20, i64 8, !20, i64 16, !4, i64 24, !4, i64 28, !37, i64 32, !5, i64 40, !11, i64 72, !4, i64 80, !4, i64 84}
!37 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !13, i64 0}
!38 = !{!36, !4, i64 28}
end_hunk_0
