inline.NumInlined: 124
inline.NumDeleted: 86
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false), !noalias !5
  %i.c = load ptr, ptr %i.b, align 8, !noalias !5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !5
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !5
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_1
begin_hunk_2_@_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE:bb.a

_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskC2EPNS0_7IsolateESt8functionIFvvEE.exit.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !5
  store ptr %i.e, ptr %i.i, align 8, !noalias !5
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskC2EPNS0_7IsolateESt8functionIFvvEE.exit.i, %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}
end_hunk_2
begin_hunk_3_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18MakeCancelableTaskEPNS0_21CancelableTaskManagerESt8functionIFvvEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false), !noalias !8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal18MakeCancelableTaskEPNS0_21CancelableTaskManagerESt8functionIFvvEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !8
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_4
begin_hunk_5_@_ZN2v88internal18MakeCancelableTaskEPNS0_21CancelableTaskManagerESt8functionIFvvEE:bb.a

_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskC2EPNS0_21CancelableTaskManagerESt8functionIFvvEE.exit.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !8
  store ptr %i.e, ptr %i.i, align 8, !noalias !8
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskC2EPNS0_21CancelableTaskManagerESt8functionIFvvEE.exit.i, %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}
end_hunk_5
begin_hunk_6_@_ZN2v88internal18MakeCancelableTaskEPNS0_21CancelableTaskManagerESt8functionIFvvEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22MakeCancelableIdleTaskEPNS0_7IsolateESt8functionIFvdEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !11 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false), !noalias !11
  %i.c = load ptr, ptr %i.b, align 8, !noalias !11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !11 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal22MakeCancelableIdleTaskEPNS0_7IsolateESt8functionIFvdEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvdEEC2EOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !11
  br label %_ZNSt8functionIFvdEEC2EOS1_.exit.i

_ZNSt8functionIFvdEEC2EOS1_.exit.i:               ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_7
begin_hunk_8_@_ZN2v88internal22MakeCancelableIdleTaskEPNS0_7IsolateESt8functionIFvdEE:bb.a

_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskC2EPNS0_7IsolateESt8functionIFvdEE.exit.i: ; preds = %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !11
  store ptr %i.e, ptr %i.i, align 8, !noalias !11
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskC2EPNS0_7IsolateESt8functionIFvdEE.exit.i, %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN2v88internal22MakeCancelableIdleTaskEPNS0_7IsolateESt8functionIFvdEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22MakeCancelableIdleTaskEPNS0_21CancelableTaskManagerESt8functionIFvdEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !14 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false), !noalias !14
  %i.c = load ptr, ptr %i.b, align 8, !noalias !14
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !14 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN2v88internal22MakeCancelableIdleTaskEPNS0_21CancelableTaskManagerESt8functionIFvdEE:bb.a
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvdEEC2EOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !14
  br label %_ZNSt8functionIFvdEEC2EOS1_.exit.i

_ZNSt8functionIFvdEEC2EOS1_.exit.i:               ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_10
begin_hunk_11_@_ZN2v88internal22MakeCancelableIdleTaskEPNS0_21CancelableTaskManagerESt8functionIFvdEE:bb.a

_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskC2EPNS0_21CancelableTaskManagerESt8functionIFvdEE.exit.i: ; preds = %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !14
  store ptr %i.e, ptr %i.i, align 8, !noalias !14
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskC2EPNS0_21CancelableTaskManagerESt8functionIFvdEE.exit.i, %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}
end_hunk_11
begin_hunk_12_@_Znwm
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_12
