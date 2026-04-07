begin_hunk_0_@_ZN6Assimp13FileLogStreamD0Ev:bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_ZN6Assimp13FileLogStreamD2Ev.exit

_ZN6Assimp13FileLogStreamD2Ev.exit:               ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZN6Assimp9LogStream19createDefaultStreamE18aiDefaultLogStreamPKcPNS_8IOSystemE:bb.a
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.m, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.loopexit, label %bb.d

end_hunk_2
begin_hunk_3_@_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE:bb.a
  %i.ae = phi ptr [ %i.v, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.af, %i.ae
  br i1 %.not13, label %.loopexit, label %.lr.ph, !llvm.loop !7

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %bb.d
  ret void
end_hunk_3
begin_hunk_4_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.011.019 = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #21
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.e, %bb.f
end_hunk_5
begin_hunk_6_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 8
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.aj, i1 false)
end_hunk_6
begin_hunk_7_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
bb.l:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.c, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ false, %bb.b ], [ false, %bb.l ]
end_hunk_7
begin_hunk_8_@_ZN6Assimp13DefaultLoggerD2Ev:bb.a
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #21
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.c, %bb.d
end_hunk_8
begin_hunk_9_@_ZN6Assimp13DefaultLoggerD2Ev:bb.a
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %_ZN6Assimp13LogStreamInfoD2Ev.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_9
begin_hunk_10_@_ZN6Assimp19StdOStreamLogStream5writeEPKc
define linkonce_odr hidden void @_ZN6Assimp19StdOStreamLogStream5writeEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !12 ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

end_hunk_10
begin_hunk_11_@_ZN6Assimp19StdOStreamLogStream5writeEPKc:bb.a
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !6, !align !12
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 0 uses
  ret void
}
end_hunk_11
begin_hunk_12_@_ZN6Assimp8IOSystemD2Ev:bb.a
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
end_hunk_12
begin_hunk_13_@llvm.umin.i64
!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = !{i64 8}
end_hunk_13
