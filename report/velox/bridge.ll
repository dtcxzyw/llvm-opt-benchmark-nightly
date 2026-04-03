begin_hunk_0

bb.t:                                             ; preds = %bb.s
  %.not44.i = icmp eq i64 %i.am, 0
  br i1 %.not44.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = icmp ugt i8 %i.ao, 25
  br i1 %i.ap, label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread, label %bb.v, !prof !165

bb.v:                                             ; preds = %bb.u
  %5 = load i8, ptr %i.aj, align 1, !tbaa !14
  %6 = add i8 %5, -48                             ; 2 uses
  %i.aq = mul nuw i8 %i.ao, 10                    ; 4 uses
  %i.ar = add i8 %6, %i.aq                        ; 2 uses
  %.not45.i = icmp eq i64 %i.am, 1
  %.not48.i = icmp ult i8 %6, 10
  %or.cond.not.i = and i1 %.not45.i, %.not48.i    ; 2 uses
  %7 = icmp uge i8 %i.ar, %i.aq
  %.46.i = tail call i8 @llvm.umax.i8(i8 %i.ar, i8 %i.aq)
  %.237.i = select i1 %or.cond.not.i, i8 %.46.i, i8 %i.aq, !prof !2636
  %cond2.i = select i1 %or.cond.not.i, i1 %7, i1 false, !prof !2636
  br i1 %cond2.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a, label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread, !prof !2461

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a:  ; preds = %bb.v, %bb.t, %bb.r
  %.133 = phi i8 [ %i.ah, %bb.r ], [ %i.ao, %bb.t ], [ %.237.i, %bb.v ] ; 4 uses
  br i1 %i.ab, label %bb.w, label %bb.x

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread38: ; preds = %bb.q
end_hunk_0
begin_hunk_1
  store i8 %storemerge.sink, ptr %4, align 1, !tbaa !14
  br label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread: ; preds = %bb.g, %bb.k, %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.v, %bb.u, %bb.s, %.critedge, %bb.x, %bb.w, %bb.o, %bb.a
  %.022 = phi i1 [ false, %bb.o ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.v ], [ false, %bb.x ], [ true, %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.w ], [ false, %.critedge ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.022
}

end_hunk_1
begin_hunk_2
  %i.b = load ptr, ptr %1, align 8, !tbaa !616    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !417  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge13

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_2
begin_hunk_3
  store ptr %i.n, ptr %0, align 8, !tbaa !52, !alias.scope !3386
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit15, label %bb.b

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge13

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.c

.critedge13:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit15, %bb.a
  %.111 = phi i64 [ %i.q, %_ZN5arrow6StatusD2Ev.exit15 ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.111, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge13
  ret void
}

end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIlEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !616    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !417  ; 2 uses
end_hunk_4
begin_hunk_5
  store ptr %i.n, ptr %0, align 8, !tbaa !52, !alias.scope !3428
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.o = icmp eq ptr %i.n, null
  %3 = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  %.111 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.111, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

end_hunk_5
begin_hunk_6
!2633 = distinct !{!2633, !2634, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2634 = distinct !{!2634, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2635 = distinct !{!2635, !111}
!2636 = !{!"branch_weights", i32 4000000, i32 4001}
!2637 = !{!"branch_weights", !"expected", i32 2182155, i32 2145301493}
!2638 = !{!2639}
!2639 = distinct !{!2639, !2640, !"_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
end_hunk_6
