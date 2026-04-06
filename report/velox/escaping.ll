begin_hunk_0
inline.NumInlined: 377
inline.NumDeleted: 105
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011619WebSafeBase64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !7
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = lshr i64 %1, 1                           ; 10 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp ugt i64 %1, 31
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %3 = icmp ult i64 %1, 60
  br i1 %3, label %bb.b, label %4

4:                                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %5 = add nuw i64 %i.c, 1                        ; 2 uses
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %bb.b, !prof !62

7:                                                ; preds = %4
  invoke void @_ZSt17__throw_bad_allocv() #15
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %7
  unreachable

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %4
  %8 = phi i64 [ %5, %4 ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.0.i11 = phi i64 [ %i.c, %4 ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %9 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #17
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread unwind label %bb.d ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %bb.b
  store ptr %9, ptr %0, align 8, !tbaa !13
  store i64 %.0.i11, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %cond.i.i.i.i.i.i, label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.d = phi ptr [ %9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.c, i1 false)
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.c, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !14
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.am = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !63

_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.an = and i64 %1, 2
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b, %7
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
end_hunk_4
begin_hunk_5_@llvm.lifetime.end.p0
; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(address) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !7
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %3 = tail call i64 @llvm.umax.i64(i64 %i.c, i64 30) ; 2 uses
  %spec.select = or disjoint i64 %3, 1
  %4 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #17
          to label %.noexc2 unwind label %bb.e    ; 2 uses

.noexc2:                                          ; preds = %bb.d
  store ptr %4, ptr %0, align 8, !tbaa !13
  store i64 %3, ptr %i.a, align 8, !tbaa !14
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.noexc2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.e = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %4, %.noexc2 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.c, i1 false)
  store i64 %i.c, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !14
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.03.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !64

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i.3 = icmp eq ptr %i.ap, %i.g
  br i1 %.not.i.3, label %_ZN4absl12lts_2024011612_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i, !llvm.loop !66

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2024011612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.15, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 %1, ptr %6, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68
  call void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %3, align 8, !tbaa !13     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_9
begin_hunk_10_@llvm.umin.i64

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #13
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v4i64
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !16}
!67 = !{!12, !12, i64 0}
!68 = !{!10, !10, i64 0}
end_hunk_11
