begin_hunk_0_@_ZN16COpenCallbackImpD2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.l, align 8, !tbaa !34
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.d, !inline_history !81

bb.d:                                             ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #22, !inline_history !81
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %_ZN9CMyComPtrI20IArchiveOpenCallbackED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #20, !inline_history !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
end_hunk_0
begin_hunk_1_@_ZThn8_N16COpenCallbackImp7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(192) %i.d) #20, !inline_history !82
  br label %_ZN16COpenCallbackImp7ReleaseEv.exit

_ZN16COpenCallbackImp7ReleaseEv.exit:             ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@_ZThn8_N16COpenCallbackImpD0Ev
define linkonce_odr dso_local void @_ZThn8_N16COpenCallbackImpD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN16COpenCallbackImpD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20, !inline_history !83
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 noundef 192) #24, !inline_history !83
  ret void
}

end_hunk_2
begin_hunk_3_@_ZThn16_N16COpenCallbackImp7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(192) %i.d) #20, !inline_history !82
  br label %_ZN16COpenCallbackImp7ReleaseEv.exit

_ZN16COpenCallbackImp7ReleaseEv.exit:             ; preds = %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@_ZThn16_N16COpenCallbackImpD0Ev
define linkonce_odr dso_local void @_ZThn16_N16COpenCallbackImpD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN16COpenCallbackImpD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20, !inline_history !83
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 noundef 192) #24, !inline_history !83
  ret void
}

end_hunk_4
begin_hunk_5_@_ZThn24_N16COpenCallbackImp7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(192) %i.d) #20, !inline_history !82
  br label %_ZN16COpenCallbackImp7ReleaseEv.exit

_ZN16COpenCallbackImp7ReleaseEv.exit:             ; preds = %bb.a, %bb.b
end_hunk_5
begin_hunk_6_@_ZThn24_N16COpenCallbackImpD0Ev
define linkonce_odr dso_local void @_ZThn24_N16COpenCallbackImpD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  tail call void @_ZN16COpenCallbackImpD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20, !inline_history !83
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 noundef 192) #24, !inline_history !83
  ret void
}

end_hunk_6
begin_hunk_7_@_ZN16CInFileStreamVolD2Ev:bb.a
bb.g:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %bb.d
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i4, %i.ad
  br i1 %exitcond.not, label %._crit_edge.i, label %bb.d, !llvm.loop !84

_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit: ; preds = %bb.c, %bb.b, %._crit_edge.i
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
end_hunk_7
begin_hunk_8_@_ZThn8_N13CInFileStream7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(1112) %i.d) #20, !inline_history !85
  br label %_ZN13CInFileStream7ReleaseEv.exit

_ZN13CInFileStream7ReleaseEv.exit:                ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@_ZThn8_N16CInFileStreamVolD0Ev
define linkonce_odr dso_local void @_ZThn8_N16CInFileStreamVolD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN16CInFileStreamVolD2Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a) #20, !inline_history !86
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1144) %i.a, i64 noundef 1144) #24, !inline_history !86
  ret void
}

end_hunk_9
begin_hunk_10_@_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !84
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #4
end_hunk_10
begin_hunk_11_@_ZN13CObjectVectorI11CStringBaseIwEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %0, align 8, !tbaa !34
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.b, !inline_history !81

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22, !inline_history !81
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20, !inline_history !81
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}
end_hunk_11
begin_hunk_12_@_ZN11CStringBaseIwEpLEPKw:bb.a
  store <4 x i32> %wide.load11, ptr %i.ac, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
end_hunk_12
begin_hunk_13_@_ZN11CStringBaseIwEpLEPKw:bb.a
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !90

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
end_hunk_13
begin_hunk_14_@_ZN11CStringBaseIwEpLEPKw:bb.a
  store i32 %i.au, ptr %i.av, align 4, !tbaa !57
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !92

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
end_hunk_14
begin_hunk_15_@llvm.assume
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTS9CMyComPtrI22ICryptoGetTextPasswordE", !80, i64 0}
!80 = !{!"p1 _ZTS22ICryptoGetTextPassword", !11, i64 0}
!81 = !{ptr @_ZN13CObjectVectorI11CStringBaseIwEED2Ev}
!82 = !{ptr @_ZN16COpenCallbackImp7ReleaseEv}
!83 = !{ptr @_ZN16COpenCallbackImpD0Ev}
!84 = distinct !{!84, !50}
!85 = !{ptr @_ZN13CInFileStream7ReleaseEv}
!86 = !{ptr @_ZN16CInFileStreamVolD0Ev}
!87 = distinct !{!87, !50, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !50, !88}
end_hunk_15
