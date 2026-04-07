begin_hunk_0_@_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE:bb.a
  %.1 = phi i32 [ 0, %.loopexit85 ], [ %i.fm, %bb.av ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %3, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #15
  unreachable

bb.bf:                                            ; preds = %bb.ba, %bb.o
end_hunk_0
begin_hunk_1_@_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE:bb.a
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bd
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pr = load ptr, ptr %2, align 8, !tbaa !12     ; 3 uses
  %.not.i78 = icmp eq ptr %.pr, null
end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorI11CStringBaseIwEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %0, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !36
}

; Function Attrs: nounwind
end_hunk_3
begin_hunk_4_@_ZNK11CStringBaseIwE3MidEii:bb.a
  store <4 x i32> %wide.load28, ptr %i.ar, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ai
end_hunk_4
begin_hunk_5_@_ZNK11CStringBaseIwE3MidEii:bb.a
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.ay, label %scalar.ph, label %._crit_edge, !llvm.loop !40

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.d, %._crit_edge
  %spec.select.sink = phi i32 [ %spec.select, %._crit_edge ], [ %i.c, %bb.d ]
end_hunk_5
begin_hunk_6_@llvm.assume
!33 = !{!26, !26, i64 0}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !32, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !32, !38}
end_hunk_6
