inline.NumInlined: 124
inline.NumDeleted: 86
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }

$_ZN2v88internal14CancelableTask3RunEv = comdat any

$_ZThn32_N2v88internal14CancelableTask3RunEv = comdat any

$_ZN2v88internal18CancelableIdleTask3RunEd = comdat any

$_ZThn32_N2v88internal18CancelableIdleTask3RunEd = comdat any

@_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE = internal unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev, ptr @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev, ptr @_ZN2v88internal14CancelableTask3RunEv, ptr @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTask11RunInternalEv], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal12_GLOBAL__N_118CancelableFuncTaskD1Ev, ptr @_ZThn32_N2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev, ptr @_ZThn32_N2v88internal14CancelableTask3RunEv] }, align 8
@_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE = internal unnamed_addr constant { [6 x ptr], [5 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD2Ev, ptr @_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD0Ev, ptr @_ZN2v88internal18CancelableIdleTask3RunEd, ptr @_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTask11RunInternalEd], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr null, ptr @_ZThn32_N2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD1Ev, ptr @_ZThn32_N2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD0Ev, ptr @_ZThn32_N2v88internal18CancelableIdleTask3RunEd] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18MakeCancelableTaskEPNS0_7IsolateESt8functionIFvvEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !5 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !5
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !5
  store ptr %i.e, ptr %i.g, align 8, !noalias !5
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge: ; preds = %bb.a
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false), !noalias !5
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 64), ptr %i.i, align 8, !noalias !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.j, align 8, !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18MakeCancelableTaskEPNS0_21CancelableTaskManagerESt8functionIFvvEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !8 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !8
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !8
  store ptr %i.e, ptr %i.g, align 8, !noalias !8
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge: ; preds = %bb.a
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false), !noalias !8
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_118CancelableFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_118CancelableFuncTaskE, i64 64), ptr %i.i, align 8, !noalias !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.j, align 8, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22MakeCancelableIdleTaskEPNS0_7IsolateESt8functionIFvdEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !11 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !11 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, label %_ZNSt8functionIFvdEEC2EOS1_.exit.i

_ZNSt8functionIFvdEEC2EOS1_.exit.i:               ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !11
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !11
  store ptr %i.e, ptr %i.g, align 8, !noalias !11
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge: ; preds = %bb.a
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false), !noalias !11
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 64), ptr %i.i, align 8, !noalias !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.j, align 8, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22MakeCancelableIdleTaskEPNS0_21CancelableTaskManagerESt8functionIFvdEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca { i64, i64 }, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11, !noalias !14 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !14
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !14 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, label %_ZNSt8functionIFvdEEC2EOS1_.exit.i

_ZNSt8functionIFvdEEC2EOS1_.exit.i:               ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !noalias !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !14
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !14
  store ptr %i.e, ptr %i.g, align 8, !noalias !14
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge: ; preds = %bb.a
  tail call void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1) #12, !noalias !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false), !noalias !14
  br label %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskESt14default_deleteIS3_EED2Ev.exit.critedge, %_ZNSt8functionIFvdEEC2EOS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 16), ptr %i.a, align 8, !noalias !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskE, i64 64), ptr %i.i, align 8, !noalias !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.j, align 8, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !17 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %0) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !18 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit

_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(72) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14CancelableTask3RunEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_118CancelableFuncTask11RunInternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvvEEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #14
  unreachable

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #12, !inline_history !19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn32_N2v88internal12_GLOBAL__N_118CancelableFuncTaskD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !18 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit

_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(72) %i.e) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn32_N2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !20 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev.exit

_ZN2v88internal12_GLOBAL__N_118CancelableFuncTaskD0Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(72) %i.e) #12
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef 72) #13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal14CancelableTask3RunEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal14CancelableTask3RunEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #12, !inline_history !21
  br label %_ZN2v88internal14CancelableTask3RunEv.exit

_ZN2v88internal14CancelableTask3RunEv.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

declare void @_ZN2v88internal14CancelableTaskC2EPNS0_21CancelableTaskManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

declare void @_ZN2v88internal18CancelableIdleTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !17 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %0) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !22 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD2Ev.exit

_ZN2v88internal12_GLOBAL__N_122CancelableIdleFuncTaskD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(72) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18CancelableIdleTask3RunEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) #12
end_hunk_0
