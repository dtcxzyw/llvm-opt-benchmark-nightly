begin_hunk_0
inline.NumInlined: 375
inline.NumDeleted: 105
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011619WebSafeBase64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !7
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = lshr i64 %1, 1                           ; 9 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp ugt i64 %1, 31
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %cond.i.i.i.i.i.i, label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.d = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.c
  %i.e = phi ptr [ %.pre, %bb.c ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.c, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !14
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.am = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !62

_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.an = and i64 %1, 2
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011616HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN4absl12lts_2024011612_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
end_hunk_4
begin_hunk_5_@llvm.lifetime.end.p0
; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(address) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !7
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.c)
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.noexc2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.e = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %.noexc2 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.c, i1 false)
  store i64 %i.c, ptr %i.b, align 8, !tbaa !7
  %3 = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.c
  store i8 0, ptr %i.f, align 1, !tbaa !14
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN4absl12lts_2024011616strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.03.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !63

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2024011616BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i.3 = icmp eq ptr %i.ap, %i.g
  br i1 %.not.i.3, label %_ZN4absl12lts_2024011612_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i, !llvm.loop !65

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2024011612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.15, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 %1, ptr %6, align 8, !tbaa !66
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !67
  call void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %3, align 8, !tbaa !13     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_9
begin_hunk_10_@llvm.umin.i64

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #13
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v4i64
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !16}
!66 = !{!12, !12, i64 0}
!67 = !{!10, !10, i64 0}
end_hunk_11
