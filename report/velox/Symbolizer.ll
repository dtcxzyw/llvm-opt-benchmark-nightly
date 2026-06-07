inline.NumInlined: 173
inline.NumDeleted: 116
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [256 x i16] }
%struct.ucontext_t = type { i64, ptr, %struct.stack_t, %struct.mcontext_t, %struct.__sigset_t, %struct._libc_fpstate, [4 x i64] }
%struct.stack_t = type { ptr, i32, i64 }
%struct.mcontext_t = type { [23 x i64], ptr, [8 x i64] }
%struct.__sigset_t = type { [16 x i64] }
%struct._libc_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %struct._libc_fpxreg], [16 x %struct._libc_xmmreg], [24 x i32] }
%struct._libc_fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._libc_xmmreg = type { [4 x i32] }

$_ZN5folly10symbolizer21SafeStackTracePrinterD0Ev = comdat any

$_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev = comdat any

$_ZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@_ZTVN5folly10symbolizer21SafeStackTracePrinterE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10symbolizer21SafeStackTracePrinterE, ptr @_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev, ptr @_ZN5folly10symbolizer21SafeStackTracePrinterD0Ev, ptr @_ZN5folly10symbolizer21SafeStackTracePrinter25printSymbolizedStackTraceEv] }, align 8
@_ZTIN5folly10symbolizer21SafeStackTracePrinterE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly10symbolizer21SafeStackTracePrinterE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly10symbolizer21SafeStackTracePrinterE = constant [44 x i8] c"N5folly10symbolizer21SafeStackTracePrinterE\00", align 1
@_ZTVN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE, ptr @_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev, ptr @_ZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterD0Ev, ptr @_ZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEv] }, align 8
@_ZTIN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE, ptr @_ZTIN5folly10symbolizer21SafeStackTracePrinterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE = constant [58 x i8] c"N5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [39 x i8] c"(safe mode, symbolizer not available)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(error retrieving stack trace)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"*** Check failure async stack trace: ***\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"*** First async stack root: \00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c", normal stack frame pointer holding async stack root: \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c", return address: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" ***\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"*** First async stack frame pointer: \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c", async stack trace: ***\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 2
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly10symbolizer21SafeStackTracePrinterC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN5folly10symbolizer21SafeStackTracePrinterC2Ei

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer21SafeStackTracePrinterD0Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5folly10symbolizer21SafeStackTracePrinterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i
  %.idx.i.i.i.i = phi i64 [ %.add.i.i.i.i, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i ], [ 16008, %bb.a ]
  %.add.i.i.i.i = add nsw i64 %.idx.i.i.i.i, -152 ; 3 uses
  %.ptr1.i.i.i.i = getelementptr inbounds i8, ptr %i.b, i64 %.add.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr1.i.i.i.i, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !21
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !22, !inline_history !29
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !30, !inline_history !29
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !33
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i

_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.preheader.i.i.i
  %i.t = icmp eq i64 %.add.i.i.i.i, 808
  br i1 %i.t, label %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i: ; preds = %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16008) #19, !inline_history !33
  br label %_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit

_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #18, !inline_history !33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinter25printSymbolizedStackTraceEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38)), !call_target !34, !inline_history !1093
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1094
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1097
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5folly10symbolizer21SafeStackTracePrinterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly10symbolizer10FrameArrayILm100EEESt14default_deleteIS3_EED2Ev.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i
  %.idx.i.i.i = phi i64 [ %.add.i.i.i, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i ], [ 16008, %bb.a ]
  %.add.i.i.i = add nsw i64 %.idx.i.i.i, -152     ; 3 uses
  %.ptr1.i.i.i = getelementptr inbounds i8, ptr %i.b, i64 %.add.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr1.i.i.i, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !21
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !22, !inline_history !1115
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !30, !inline_history !1115
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i

_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.preheader.i.i
  %i.t = icmp eq i64 %.add.i.i.i, 808
  br i1 %i.t, label %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i: ; preds = %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16008) #19
  br label %_ZNSt10unique_ptrIN5folly10symbolizer10FrameArrayILm100EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10symbolizer10FrameArrayILm100EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5folly10symbolizer21SafeStackTracePrinterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i
  %.idx.i.i.i.i = phi i64 [ %.add.i.i.i.i, %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i ], [ 16008, %bb.a ]
  %.add.i.i.i.i = add nsw i64 %.idx.i.i.i.i, -152 ; 3 uses
  %.ptr1.i.i.i.i = getelementptr inbounds i8, ptr %i.b, i64 %.add.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr1.i.i.i.i, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !21
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !22, !inline_history !29
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !call_target !30, !inline_history !29
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !33
  br label %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i

_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.preheader.i.i.i
  %i.t = icmp eq i64 %.add.i.i.i.i, 808
  br i1 %i.t, label %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i: ; preds = %_ZN5folly10symbolizer15SymbolizedFrameD2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16008) #19, !inline_history !33
  br label %_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit

_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly10symbolizer10FrameArrayILm100EEEEclEPS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #18, !inline_history !33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ucontext_t, align 8         ; 5 uses
  %2 = alloca %struct.ucontext_t, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1116
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %1, i8 0, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %2, i8 0, i64 968, i1 false)
  %i.d = call i32 @getcontext(ptr noundef nonnull %2) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !1118
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1116 ; 5 uses
  %i.g = call ptr @mmap(ptr noundef null, i64 noundef 1048576, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #18, !noalias !1127 ; 6 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.f, 9223372036854251520
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.e, label %3

bb.e:                                             ; preds = %bb.d
  %i.i = urem i64 1048575, %i.f
  %i.j = xor i64 %i.i, 1048575                    ; 3 uses
  %i.k = call i32 @mprotect(ptr noundef nonnull %i.g, i64 noundef %i.f, i32 noundef 0) #18, !noalias !1127
  %.not11.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i, label %bb.f, label %3

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.m = sub nuw nsw i64 1048576, %i.j
  %i.n = call i32 @mprotect(ptr noundef nonnull %i.l, i64 noundef %i.m, i32 noundef 0) #18, !noalias !1127
  %.not12.i = icmp eq i32 %i.n, 0
  br i1 %.not12.i, label %bb.g, label %3

3:                                                ; preds = %bb.f, %bb.e, %bb.d
  %4 = call i32 @munmap(ptr noundef nonnull %i.g, i64 noundef 1048576) #18, !noalias !1127 ; 0 uses
  br label %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1130, !noalias !1127
  %i.q = sub i64 %i.j, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !1131, !noalias !1127
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !1132, !noalias !1127
  call void (ptr, ptr, i32, ...) @makecontext(ptr noundef nonnull %2, ptr noundef nonnull @"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvEN3$_08__invokeEPS1_", i32 noundef 1, ptr noundef nonnull %0) #18
  %i.t = call i32 @swapcontext(ptr noundef nonnull %1, ptr noundef nonnull %2) #18 ; 0 uses
  invoke void inttoptr (i64 ptrtoint (ptr @"_ZZN5folly10symbolizer12_GLOBAL__N_113allocateStackEP10ucontext_tmEN3$_08__invokeEPc" to i64) to ptr)(ptr noundef nonnull %i.g)
          to label %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5 unwind label %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5.sink.split

_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5.sink.split:  ; preds = %bb.g
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #21
  unreachable

_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5:             ; preds = %3, %bb.c, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIcPFvPcEED2Ev.exit5
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinterC2Ei(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5folly10symbolizer21SafeStackTracePrinterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !1097
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinterC1Eiim(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %1, i32 noundef 8, i64 noundef 65536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.c = invoke noalias noundef nonnull dereferenceable(16008) ptr @_Znwm(i64 noundef 16008) #22
          to label %.noexc unwind label %bb.d     ; 7 uses

.noexc:                                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16008) %i.c, i8 0, i64 16008, i1 false), !noalias !1133
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.noexc
  %.idx.i.i = phi i64 [ 808, %.noexc ], [ %.add.i.i.4, %bb.b ] ; 6 uses
  %.ptr.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  store i8 0, ptr %.ptr.ptr.i.i, align 8, !tbaa !1136, !noalias !1133
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.d, i8 0, i64 18, i1 false), !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, i8 0, i64 120, i1 false), !noalias !1133
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.ptr.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i8 0, ptr %.ptr.ptr.i.i.1, align 8, !tbaa !1136, !noalias !1133
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.g, i8 0, i64 18, i1 false), !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.h, i8 0, i64 120, i1 false), !noalias !1133
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.ptr.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store i8 0, ptr %.ptr.ptr.i.i.2, align 8, !tbaa !1136, !noalias !1133
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.j, i8 0, i64 18, i1 false), !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, i8 0, i64 120, i1 false), !noalias !1133
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.ptr.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  store i8 0, ptr %.ptr.ptr.i.i.3, align 8, !tbaa !1136, !noalias !1133
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.m, i8 0, i64 18, i1 false), !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, i8 0, i64 120, i1 false), !noalias !1133
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.ptr.ptr.i.i.4 = getelementptr inbounds nuw i8, ptr %i.o, i64 608
  store i8 0, ptr %.ptr.ptr.i.i.4, align 8, !tbaa !1136, !noalias !1133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 616
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.p, i8 0, i64 18, i1 false), !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.q, i8 0, i64 120, i1 false), !noalias !1133
  %.add.i.i.4 = add nuw nsw i64 %.idx.i.i, 760    ; 2 uses
  %i.r = icmp samesign eq i64 %.add.i.i.4, 16008
  br i1 %i.r, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.s, align 8, !tbaa !13, !alias.scope !1133
  ret void

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #18
  resume { ptr, i32 } %i.t
}

declare void @_ZN5folly10symbolizer18FDSymbolizePrinterC1Eiim(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN5folly10symbolizer18FDSymbolizePrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !22, !inline_history !1145
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !30, !inline_history !1145
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1097
  %i.d = tail call noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef %i.c) ; 0 uses
  ret void
}

declare void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38)), !call_target !34, !inline_history !1146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1094
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1097
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k) #18
  ret void
}

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinter15printStackTraceEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef i64 @_ZN5folly10symbolizer17getStackTraceSafeEPmm(ptr noundef nonnull %i.d, i64 noundef 100)
          to label %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit unwind label %bb.e ; 6 uses

_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit: ; preds = %bb.a
  %.not.i.not = icmp eq i64 %i.e, -1
  br i1 %.not.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1094
  %.not12.i = icmp eq i64 %i.e, 0
  br i1 %.not12.i, label %.loopexit42, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 808 ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  store i8 0, ptr %i.h, align 8, !tbaa !1136
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i8 0, ptr %i.j, align 8, !tbaa !1136
  %i.k = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  store i8 0, ptr %i.l, align 8, !tbaa !1136
  %i.m = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  store i8 0, ptr %i.n, align 8, !tbaa !1136
  %i.o = add nuw i64 %.011.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit42.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1147

bb.d:                                             ; preds = %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 0, ptr %i.c, align 8, !tbaa !1094
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(13) %i.p, ptr nonnull @.str.1, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 31))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit unwind label %bb.e, !inline_history !1149

bb.e:                                             ; preds = %bb.af, %.noexc34, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i", %bb.z, %.noexc31, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i", %.noexc29, %.noexc28, %.noexc27, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i", %.noexc25, %.noexc24, %.noexc23, %.critedge.i, %.noexc21, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i", %bb.q, %.noexc18, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i", %.noexc16, %.noexc15, %.noexc, %bb.n, %bb.h, %bb.d, %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit, %bb.a, %bb.ae, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev"(i8 0, ptr nonnull %0) #18
  resume { ptr, i32 } %i.t

.loopexit42.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit42, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit42.loopexit.unr-lcssa, %.lr.ph.i
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit42.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.011.i.epil = phi i64 [ %.011.i.epil.init, %.epil.preheader ], [ %i.v, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i.epil
  store i8 0, ptr %i.u, align 8, !tbaa !1136
  %i.v = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit42, label %bb.f, !llvm.loop !1150

.loopexit42:                                      ; preds = %.loopexit42.loopexit.unr-lcssa, %bb.f, %bb.b
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit42
  %i.w = load ptr, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit unwind label %bb.e, !call_target !1152

bb.h:                                             ; preds = %.loopexit42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(13) %i.z, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit unwind label %bb.e, !inline_history !1817

_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !1094
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1097
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef %i.ai) #18
  br label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit

_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit: ; preds = %bb.d, %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit, %bb.g
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !13  ; 5 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !1094
end_hunk_0
begin_hunk_1_@_ZN5folly10symbolizer21SafeStackTracePrinter15printStackTraceEb:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.7, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 5))
          to label %.noexc28 unwind label %bb.e, !inline_history !1819

.noexc28:                                         ; preds = %.noexc27
  %i.fm = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.8, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 37))
          to label %.noexc29 unwind label %bb.e, !inline_history !1819

.noexc29:                                         ; preds = %.noexc28
  %i.fp = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc30 unwind label %bb.e, !inline_history !1819

.noexc30:                                         ; preds = %.noexc29
  %i.fs = ptrtoint ptr %i.bd to i64               ; 3 uses
  %.not.i.i.i.i61.i = icmp eq ptr %i.bd, null     ; 2 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = sub nuw nsw i64 67, %i.ft
  %i.fv = lshr i64 %i.fu, 2                       ; 2 uses
  %.0.i1.i.i.i62.i = select i1 %.not.i.i.i.i61.i, i64 1, i64 %i.fv, !prof !32 ; 3 uses
  %i.fw = icmp samesign ugt i64 %.0.i1.i.i.i62.i, 2
  br i1 %i.fw, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i

.lr.ph.i.i.i67.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i67.i
  %.0.i3.i.i.i68.i = phi i64 [ %i.fy, %.lr.ph.i.i.i67.i ], [ %i.fs, %.noexc30 ] ; 2 uses
  %.014.i2.i.i.i69.i = phi i64 [ %i.fx, %.lr.ph.i.i.i67.i ], [ %i.fv, %.noexc30 ]
  %i.fx = add i64 %.014.i2.i.i.i69.i, -2          ; 4 uses
  %i.fy = lshr i64 %.0.i3.i.i.i68.i, 8            ; 2 uses
  %i.fz = and i64 %.0.i3.i.i.i68.i, 255
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !1820
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  store i16 %i.gb, ptr %i.gc, align 1
  %i.gd = icmp ugt i64 %i.fx, 2
  br i1 %i.gd, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i, !llvm.loop !1821

._crit_edge.i.i.i63.i:                            ; preds = %.lr.ph.i.i.i67.i, %.noexc30
  %.014.i.lcssa.i.i.i64.i = phi i64 [ %.0.i1.i.i.i62.i, %.noexc30 ], [ %i.fx, %.lr.ph.i.i.i67.i ]
  %.0.i.lcssa.i.i.i65.i = phi i64 [ %i.fs, %.noexc30 ], [ %i.fy, %.lr.ph.i.i.i67.i ]
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i65.i
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !1820 ; 2 uses
  %i.gg = icmp eq i64 %.014.i.lcssa.i.i.i64.i, 2
  br i1 %i.gg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i63.i
  store i16 %i.gf, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

bb.x:                                             ; preds = %._crit_edge.i.i.i63.i
  %i.gh = lshr i16 %i.gf, 8
  %i.gi = trunc nuw i16 %i.gh to i8
  store i8 %i.gi, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i": ; preds = %bb.x, %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i62.i
  %i.gk = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  invoke void %i.gm(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.gj)
          to label %.noexc31 unwind label %bb.e, !inline_history !1819

.noexc31:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"
  %i.gn = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc32 unwind label %bb.e, !inline_history !1819

.noexc32:                                         ; preds = %.noexc31
  br i1 %.not.i.i.i.i61.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1829
  %.fr90.i = freeze ptr %i.gr
  %i.gs = ptrtoint ptr %.fr90.i to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc32
  %.fr89.i = phi i64 [ %i.gs, %bb.y ], [ 0, %.noexc32 ] ; 5 uses
  %i.gt = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc33 unwind label %bb.e, !inline_history !1819

.noexc33:                                         ; preds = %bb.z
  %.not.i.i.i.i72.i = icmp eq i64 %.fr89.i, 0
  %i.gw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fr89.i, i1 true)
  %i.gx = sub nuw nsw i64 67, %i.gw
  %i.gy = lshr i64 %i.gx, 2                       ; 4 uses
  br i1 %.not.i.i.i.i72.i, label %._crit_edge.i.i.i74.thread.i, label %bb.aa, !prof !32

._crit_edge.i.i.i74.thread.i:                     ; preds = %.noexc33
  %i.gz = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1820
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc33
  %i.ha = icmp ugt i64 %.fr89.i, 255
  br i1 %i.ha, label %.lr.ph.i.i.i78.i, label %._crit_edge.i.i.i74.i

.lr.ph.i.i.i78.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i78.i
  %.0.i3.i.i.i79.i = phi i64 [ %i.hc, %.lr.ph.i.i.i78.i ], [ %.fr89.i, %bb.aa ] ; 2 uses
  %.014.i2.i.i.i80.i = phi i64 [ %i.hb, %.lr.ph.i.i.i78.i ], [ %i.gy, %bb.aa ]
  %i.hb = add i64 %.014.i2.i.i.i80.i, -2          ; 4 uses
  %i.hc = lshr i64 %.0.i3.i.i.i79.i, 8            ; 2 uses
  %i.hd = and i64 %.0.i3.i.i.i79.i, 255
  %i.he = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !1820
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hb
  store i16 %i.hf, ptr %i.hg, align 1
  %i.hh = icmp ugt i64 %i.hb, 2
  br i1 %i.hh, label %.lr.ph.i.i.i78.i, label %._crit_edge.i.i.i74.i, !llvm.loop !1821

._crit_edge.i.i.i74.i:                            ; preds = %.lr.ph.i.i.i78.i, %bb.aa
  %.014.i.lcssa.i.i.i75.i = phi i64 [ %i.gy, %bb.aa ], [ %i.hb, %.lr.ph.i.i.i78.i ]
  %.0.i.lcssa.i.i.i76.i = phi i64 [ %.fr89.i, %bb.aa ], [ %i.hc, %.lr.ph.i.i.i78.i ]
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i76.i
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !1820 ; 2 uses
  %i.hk = icmp eq i64 %.014.i.lcssa.i.i.i75.i, 2
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i74.i
  store i16 %i.hj, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"

bb.ac:                                            ; preds = %._crit_edge.i.i.i74.i, %._crit_edge.i.i.i74.thread.i
  %i.hl = phi i16 [ %i.gz, %._crit_edge.i.i.i74.thread.i ], [ %i.hj, %._crit_edge.i.i.i74.i ]
  %i.hm = phi i64 [ 1, %._crit_edge.i.i.i74.thread.i ], [ %i.gy, %._crit_edge.i.i.i74.i ]
  %i.hn = lshr i16 %i.hl, 8
  %i.ho = trunc nuw i16 %i.hn to i8
  store i8 %i.ho, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i": ; preds = %bb.ac, %bb.ab
  %i.hp = phi i64 [ %i.gy, %bb.ab ], [ %i.hm, %bb.ac ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hp
  %i.hr = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.hq)
          to label %.noexc34 unwind label %bb.e, !inline_history !1819

.noexc34:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"
  %i.hu = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.9, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 25))
          to label %bb.ad unwind label %bb.e, !inline_history !1819

bb.ad:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %1, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hx = load ptr, ptr %0, align 8, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ag unwind label %bb.e, !call_target !1152

bb.af:                                            ; preds = %bb.ad
  %i.ia = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37 unwind label %bb.e, !inline_history !1817

_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37: ; preds = %bb.af
  %i.id = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.id, align 8, !tbaa !1094
  %i.ig = trunc i64 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !1097
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.ie, i32 noundef %i.ig, i32 noundef %i.ii) #18
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %bb.ae, %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37, %_ZN5folly10symbolizer6detail13fixFrameArrayILm100EEEbRNS0_10FrameArrayIXT_EEEl.exit13
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ij)
          to label %.noexc.i.i.i unwind label %bb.ah

.noexc.i.i.i:                                     ; preds = %bb.ag
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !1097
  %i.im = invoke noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef %i.il)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev.exit" unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.ag
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #21
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev.exit": ; preds = %.noexc.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev"(i8 %.0.val, ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  invoke void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1097
  %i.e = invoke noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef %i.d)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit" unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.noexc.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit": ; preds = %.noexc.i.i, %bb.a
  ret void
}

declare noundef i64 @_ZN5folly10symbolizer17getStackTraceSafeEPmm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly10symbolizer22getAsyncStackTraceSafeEPmm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nounwind returns_twice
declare i32 @getcontext(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @makecontext(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @swapcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN5folly10symbolizer12_GLOBAL__N_113allocateStackEP10ucontext_tmEN3$_08__invokeEPc"(ptr noundef %0) #2 align 2 {
  %2 = tail call i32 @munmap(ptr noundef %0, i64 noundef 1048576) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvEN3$_08__invokeEPS1_"(ptr noundef %0) #15 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38)), !call_target !34, !inline_history !1831
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1094
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1097
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k) #18
  br label %"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit"

"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind returns_twice }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN5folly10symbolizer10FrameArrayILm100EEE", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!18 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!19 = !{!20, !8, i64 8}
!20 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!21 = !{!20, !8, i64 12}
!22 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !24, file: !23, line: 139, type: !26, scopeLine: 139, containingType: !24, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !25, file: !23, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!25 = !DINamespace(name: "std", scope: null)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!29 = distinct !{ptr @_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev, null, null, null, null, null, null, null}
!30 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !24, file: !23, line: 143, type: !26, scopeLine: 143, containingType: !24, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!31 = !{!9, !9, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{ptr @_ZN5folly10symbolizer21SafeStackTracePrinterD2Ev}
!34 = !DISubprogram(name: "doPrint", linkageName: "_ZN5folly10symbolizer16SymbolizePrinter7doPrintENS_5RangeIPKcEE", scope: !36, file: !35, line: 125, type: !39, scopeLine: 125, containingType: !36, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!35 = !DIFile(filename: "_deps/folly-src/folly/debugging/symbolizer/SymbolizePrinter.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "acc4b89884b8391b63469ba928e158e8")
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SymbolizePrinter", scope: !37, file: !35, line: 51, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly10symbolizer16SymbolizePrinterE")
!37 = !DINamespace(name: "symbolizer", scope: !38)
!38 = !DINamespace(name: "folly", scope: null)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringPiece", scope: !38, file: !43, line: 1344, baseType: !44)
!43 = !DIFile(filename: "_deps/folly-src/folly/Range.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "1b112bd8b799ea0ea5ea01adb4a57005")
!44 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Range<const char *>", scope: !38, file: !43, line: 258, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !45, templateParams: !1091, identifier: "_ZTSN5folly5RangeIPKcEE")
!45 = !{!46, !52, !56, !57, !61, !66, !70, !73, !78, !83, !86, !89, !93, !96, !97, !98, !101, !105, !106, !110, !113, !114, !115, !116, !117, !118, !129, !130, !152, !153, !975, !976, !986, !991, !994, !997, !998, !999, !1002, !1003, !1006, !1007, !1008, !1009, !1010, !1011, !1014, !1017, !1020, !1023, !1026, !1036, !1037, !1040, !1041, !1042, !1045, !1048, !1049, !1050, !1051, !1054, !1057, !1060, !1061, !1062, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1074, !1077, !1078, !1079, !1082, !1085, !1088}
!46 = !DIDerivedType(tag: DW_TAG_variable, name: "npos", scope: !44, file: !43, line: 296, baseType: !47, flags: DIFlagPublic | DIFlagStaticMember)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !44, file: !43, line: 267, baseType: !49, flags: DIFlagPublic)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !25, file: !50, line: 308, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "b_", scope: !44, file: !43, line: 1270, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "e_", scope: !44, file: !43, line: 1271, baseType: !53, size: 64, offset: 64)
!57 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4Ev", scope: !44, file: !43, line: 304, type: !58, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!61 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4ERKS3_", scope: !44, file: !43, line: 306, type: !62, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !60, !64}
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!66 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4EOS3_", scope: !44, file: !43, line: 307, type: !67, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !60, !69}
!69 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !44, size: 64)
!70 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4ES2_S2_", scope: !44, file: !43, line: 316, type: !71, scopeLine: 316, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !60, !53, !53}
!73 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4ES2_m", scope: !44, file: !43, line: 323, type: !74, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !60, !53, !76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !51)
!77 = !DIFile(filename: "/usr/lib/llvm-23/lib/clang/23/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4EDn", scope: !44, file: !43, line: 325, type: !79, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !60, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !25, file: !50, line: 312, baseType: !82)
!82 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!83 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4ES2_", scope: !44, file: !43, line: 327, type: !84, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !60, !53}
!86 = !DISubprogram(name: "Range", linkageName: "_ZN5folly5RangeIPKcEC4ERKS3_mm", scope: !44, file: !43, line: 372, type: !87, scopeLine: 372, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !60, !64, !48, !48}
!89 = !DISubprogram(name: "operator=", linkageName: "_ZNR5folly5RangeIPKcEaSERKS3_", scope: !44, file: !43, line: 567, type: !90, scopeLine: 567, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(flags: DIFlagLValueReference, types: !91)
!91 = !{!92, !60, !64}
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !44, size: 64)
!93 = !DISubprogram(name: "operator=", linkageName: "_ZNR5folly5RangeIPKcEaSEOS3_", scope: !44, file: !43, line: 568, type: !94, scopeLine: 568, flags: DIFlagPublic | DIFlagPrototyped | DIFlagLValueReference, spFlags: DISPFlagOptimized)
!94 = !DISubroutineType(flags: DIFlagLValueReference, types: !95)
!95 = !{!92, !60, !69}
!96 = !DISubprogram(name: "clear", linkageName: "_ZN5folly5RangeIPKcE5clearEv", scope: !44, file: !43, line: 579, type: !58, scopeLine: 579, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubprogram(name: "assign", linkageName: "_ZN5folly5RangeIPKcE6assignES2_S2_", scope: !44, file: !43, line: 587, type: !71, scopeLine: 587, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubprogram(name: "reset", linkageName: "_ZN5folly5RangeIPKcE5resetES2_m", scope: !44, file: !43, line: 595, type: !99, scopeLine: 595, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !60, !53, !48}
!101 = !DISubprogram(name: "size", linkageName: "_ZNK5folly5RangeIPKcE4sizeEv", scope: !44, file: !43, line: 606, type: !102, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{!48, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!105 = !DISubprogram(name: "walk_size", linkageName: "_ZNK5folly5RangeIPKcE9walk_sizeEv", scope: !44, file: !43, line: 610, type: !102, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubprogram(name: "empty", linkageName: "_ZNK5folly5RangeIPKcE5emptyEv", scope: !44, file: !43, line: 613, type: !107, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !104}
!109 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DISubprogram(name: "data", linkageName: "_ZNK5folly5RangeIPKcE4dataEv", scope: !44, file: !43, line: 614, type: !111, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{!53, !104}
!113 = !DISubprogram(name: "start", linkageName: "_ZNK5folly5RangeIPKcE5startEv", scope: !44, file: !43, line: 615, type: !111, scopeLine: 615, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubprogram(name: "begin", linkageName: "_ZNK5folly5RangeIPKcE5beginEv", scope: !44, file: !43, line: 616, type: !111, scopeLine: 616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubprogram(name: "end", linkageName: "_ZNK5folly5RangeIPKcE3endEv", scope: !44, file: !43, line: 617, type: !111, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubprogram(name: "cbegin", linkageName: "_ZNK5folly5RangeIPKcE6cbeginEv", scope: !44, file: !43, line: 618, type: !111, scopeLine: 618, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubprogram(name: "cend", linkageName: "_ZNK5folly5RangeIPKcE4cendEv", scope: !44, file: !43, line: 619, type: !111, scopeLine: 619, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubprogram(name: "front", linkageName: "_ZN5folly5RangeIPKcE5frontEv", scope: !44, file: !43, line: 620, type: !119, scopeLine: 620, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !60}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !44, file: !43, line: 271, baseType: !122, flags: DIFlagPublic)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !124, file: !123, line: 205, baseType: !128)
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_iterator_base_types.h", directory: "")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !25, file: !123, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !125, templateParams: !126, identifier: "_ZTSSt15iterator_traitsIPKcE")
!125 = !{}
!126 = !{!127}
!127 = !DITemplateTypeParameter(name: "_Iterator", type: !53)
!128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !54, size: 64)
!129 = !DISubprogram(name: "back", linkageName: "_ZN5folly5RangeIPKcE4backEv", scope: !44, file: !43, line: 624, type: !119, scopeLine: 624, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubprogram(name: "front", linkageName: "_ZNK5folly5RangeIPKcE5frontEv", scope: !44, file: !43, line: 628, type: !131, scopeLine: 628, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !104}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !44, file: !43, line: 272, baseType: !134, flags: DIFlagPublic)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "conditional_t<std::is_lvalue_reference_v<reference>, const char &, const char &>", scope: !38, file: !135, line: 816, baseType: !136)
!135 = !DIFile(filename: "_deps/folly-src/folly/Traits.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "6f2c10d5dee2e53beabe4fecce6dd037")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "apply<const char &, const char &>", scope: !137, file: !135, line: 804, baseType: !141)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional_<true>", scope: !138, file: !135, line: 802, size: 8, flags: DIFlagTypePassByValue, elements: !125, templateParams: !139, identifier: "_ZTSN5folly6detail12conditional_ILb1EEE")
!138 = !DINamespace(name: "detail", scope: !38)
!139 = !{!140}
!140 = !DITemplateValueParameter(type: !109, value: i1 true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "add_lvalue_reference_t<const char>", scope: !25, file: !142, line: 1644, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !144, file: !142, line: 1630, baseType: !147)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<const char>", scope: !25, file: !142, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !125, templateParams: !145, identifier: "_ZTSSt20add_lvalue_referenceIKcE")
!145 = !{!146}
!146 = !DITemplateTypeParameter(name: "_Tp", type: !54)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__add_lval_ref_t<const char>", scope: !25, file: !142, line: 1071, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !149, file: !142, line: 1068, baseType: !128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<const char, void>", scope: !25, file: !142, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !125, templateParams: !150, identifier: "_ZTSSt29__add_lvalue_reference_helperIKcvE")
!150 = !{!146, !151}
!151 = !DITemplateTypeParameter(type: null, defaulted: true)
!152 = !DISubprogram(name: "back", linkageName: "_ZNK5folly5RangeIPKcE4backEv", scope: !44, file: !43, line: 632, type: !131, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubprogram(name: "str", linkageName: "_ZNK5folly5RangeIPKcE3strB5cxx11Ev", scope: !44, file: !43, line: 773, type: !154, scopeLine: 773, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !104}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !25, file: !157, line: 77, baseType: !158)
!157 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stringfwd.h", directory: "")
!158 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !160, file: !159, line: 87, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !161, templateParams: !973, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!159 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/basic_string.h", directory: "")
!160 = !DINamespace(name: "__cxx11", scope: !25, exportSymbols: true)
!161 = !{!162, !222, !244, !245, !253, !257, !464, !469, !472, !475, !480, !483, !489, !490, !491, !494, !499, !502, !503, !506, !510, !515, !516, !517, !520, !523, !526, !529, !532, !533, !536, !597, !650, !653, !656, !659, !663, !666, !669, !670, !673, !674, !677, !680, !683, !686, !690, !695, !698, !701, !702, !706, !709, !712, !715, !718, !721, !724, !727, !728, !729, !734, !739, !740, !741, !742, !743, !744, !745, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !767, !773, !774, !775, !778, !781, !782, !783, !784, !785, !786, !787, !788, !791, !794, !795, !798, !799, !802, !803, !804, !805, !806, !807, !808, !809, !812, !815, !818, !821, !824, !827, !830, !834, !837, !840, !843, !844, !847, !850, !853, !856, !859, !862, !865, !868, !871, !874, !877, !880, !883, !886, !887, !890, !893, !894, !897, !900, !903, !904, !907, !910, !913, !916, !919, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !945, !948, !951, !954, !957, !960, !963, !966, !969, !970, !971, !972}
!162 = !DIDerivedType(tag: DW_TAG_variable, name: "npos", scope: !158, file: !159, line: 112, baseType: !163, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !158, file: !159, line: 99, baseType: !165, flags: DIFlagPublic)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !167, file: !166, line: 56, baseType: !196)
!166 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/alloc_traits.h", directory: "")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !168, file: !166, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !169, templateParams: !220, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!168 = !DINamespace(name: "__gnu_cxx", scope: null)
!169 = !{!170, !204, !209, !213, !216, !217, !218, !219}
!170 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !167, baseType: !171, extraData: i32 0)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !25, file: !172, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !173, templateParams: !202, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!172 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "ba5569b3568669c1c77efc18640dd1aa")
!173 = !{!174, !184, !190, !193, !199}
!174 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !171, file: !172, line: 481, type: !175, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !179, !183}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !171, file: !172, line: 437, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !171, file: !172, line: 431, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !25, file: !182, line: 287, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIcE")
!182 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "9c5b773ad00830bea46f2a8fa4ac22e7")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !172, line: 452, baseType: !49)
!184 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !171, file: !172, line: 496, type: !185, scopeLine: 496, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!177, !179, !183, !187}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !172, line: 446, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !171, file: !172, line: 516, type: !191, scopeLine: 516, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !179, !177, !183}
!193 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !171, file: !172, line: 571, type: !194, scopeLine: 571, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!194 = !DISubroutineType(types: !195)
end_hunk_1
