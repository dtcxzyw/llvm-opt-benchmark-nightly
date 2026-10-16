Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.4?download=true
inline.NumInlined: 192
inline.NumDeleted: 136
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB1e_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB36_, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB19_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0B31_ }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant [43 x i8] c"fatal runtime error: unreachable, aborting\0A", align 1
@4 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/thread/local.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT = external global { { { i64 } } }
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\001\00\00\00" }>, align 8
@7 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/async-executor-1.14.0/src/lib.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00`\01\00\00F\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"e\00\00\00\00\00\00\00\E4\02\00\00F\00\00\00" }>, align 8
@_RNvNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { i64, i8, [7 x i8] }
@_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on10IO_POLLING0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global i8
@_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [5 x i64] } }, i8, [7 x i8] }
@10 = private unnamed_addr constant [12 x i8] c"SMOL_THREADS", align 1
@11 = private unnamed_addr constant [8 x i8] c"\05smol-\C0\00", align 1
@12 = private unnamed_addr constant [28 x i8] c"cannot spawn executor thread", align 1
@13 = private unnamed_addr constant [13 x i8] c"src/spawn.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"\0C\00\00\00\00\00\00\005\00\00\00\16\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@16 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1

; Function Attrs: cold minsize nonlazybind optsize uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2d_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB17_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0EB2Z_.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16
  store ptr %0, ptr %i.c, align 8, !noalias !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.g, align 8, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16
  store ptr %i.c, ptr %i.b, align 8, !noalias !16
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB17_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0EB2Z_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB18_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB17_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0EB2Z_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !7
  switch i8 %i.e, label %default.unreachable5 [
    i8 0, label %bb.b
    i8 1, label %bb.o
    i8 2, label %bb.c
  ]

default.unreachable5:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %.sroa.03.0.copyload to i1
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0.1.sroa_idx, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g)
  store i64 0, ptr %i.c, align 8, !alias.scope !43
  %.pre = load i8, ptr %i.d, align 8, !range !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i8 1, ptr %i.d, align 8
  switch i8 %.pre, label %default.unreachable5 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.n
  ], !prof !44

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB18_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB18_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !52, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !52
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !53, !nonnull !7, !align !8, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !53, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  invoke void %i.o(ptr noundef %.val4.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.m, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !53, !nonnull !7, !align !8, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val2.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !53, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7
  invoke void %i.s(ptr noundef %.val2.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i unwind label %bb.k, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.k, %bb.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !56, !nonnull !7, !noundef !7
  %3 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !57
  %i.v = icmp eq i64 %3, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.m

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !60, !nonnull !7, !noundef !7
  %4 = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !61
  %i.z = icmp eq i64 %4, 1
  br i1 %i.z, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

bb.n:                                             ; preds = %bb.e
  %i.ab = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %i.ab)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol.exit ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs13QwXx3ETeK_8async_io6driver8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtBR_8Executor3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(232) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [232 x i8], align 16              ; 23 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 14 uses
  %i.l = alloca [232 x i8], align 8               ; 7 uses
  %i.m = alloca [232 x i8], align 8               ; 9 uses
  %i.n = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 1 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.m, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noalias !154, !noundef !7
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.s = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1i_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1i_4sync6atomic6AtomicbEEEEuE16get_or_init_slowNvNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) null)
          to label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.de, !noalias !155 ; 2 uses

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.b
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.dc, label %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i

_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i8.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i ], [ %i.o, %bb.a ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.l, ptr noundef nonnull align 8 dereferenceable(232) %i.m, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !157
  %i.u = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %.not101.i.i.i = icmp eq i64 %i.u, 0            ; 3 uses
  br i1 %.not101.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i8.i.i, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !157
  invoke void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.f unwind label %bb.cz, !noalias !157

bb.e:                                             ; preds = %bb.f, %bb.c
  %.sroa.01.0.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.k, %bb.f ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.i, ptr noundef nonnull align 8 dereferenceable(232) %i.l, i64 232, i1 false), !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !157
  store ptr %i.w, ptr %i.h, align 8, !noalias !157
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !157
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.z, align 8, !noalias !157
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 6 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 201 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 224 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 200 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 5 uses
  %i.ag = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 2 uses
  %.sroa.816.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on10IO_POLLING0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.374.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ar = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.ai, i64 1
  br label %.backedge.i.i.i

.body44.i.i.i:                                    ; preds = %bb.ar, %bb.al, %.body.i.i.i, %.body.thread.i.i.i
  %.pn22.pn.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.ar ], [ %.pn22.ph.i.i.i, %bb.al ], [ %.pn22.ph.i.i.i, %.body.i.i.i ], [ %.pn7.i.i.i.i, %.body.thread.i.i.i ] ; 2 uses
  br i1 %.not101.i.i.i, label %.split.i.i.i, label %bb.cy

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !157
  br label %bb.e

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.e
  %i.at = load i8, ptr %i.aa, align 1, !range !9, !noalias !158, !noundef !7
  switch i8 %i.at, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

.unreachabledefault:                              ; preds = %.backedge.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.cq, %bb.l, %bb.bm
  unreachable

bb.g:                                             ; preds = %.backedge.i.i.i
  %i.au = load ptr, ptr %i.ac, align 8, !noalias !158, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  store i8 1, ptr %i.ab, align 16, !noalias !158
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !158 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.h, label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ax = invoke noundef ptr @_RNvNvMs3_Csa9iXSdNszRG_14async_executorNtB7_8Executor5state11alloc_state(ptr noundef nonnull align 8 %i.au)
          to label %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i unwind label %bb.i, !noalias !158

bb.i:                                             ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.av, %bb.g ], [ %i.ax, %bb.h ]
  store ptr %.sroa.0.0.i.i.i6.i.i, ptr %i.ad, align 16, !noalias !158
  %i.az = invoke noundef nonnull align 128 ptr @_RNvXsb_NtCskKLDkoKarTP_4core3pinINtB5_3PinRNtCsa9iXSdNszRG_14async_executor5StateENtNtNtB7_3ops5deref5Deref5derefCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.thread.i.i.i.i unwind label %bb.i, !noalias !158 ; 2 uses

.thread.i.i.i.i:                                  ; preds = %_RNvMs3_Csa9iXSdNszRG_14async_executorNtB5_8Executor5state.exit.i.i.i.i
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store ptr %i.az, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !158
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !158
  br label %bb.m

.body.thread.i.i.i:                               ; preds = %.body.i.i.i.i, %bb.ah, %bb.i
  %.pn7.i.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %.pn5.i.i.i.i, %.body.i.i.i.i ], [ %i.ay, %bb.i ]
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store i8 2, ptr %i.aa, align 1, !noalias !158
  br label %.body44.i.i.i

bb.j:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !157

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.backedge.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !157

.noexc40.i.i.i:                                   ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.backedge.i.i.i
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !range !9, !noalias !159
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

._crit_edge.i.i.i:                                ; preds = %bb.l
  %.pre.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !159
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.az, %.thread.i.i.i.i ]
  store i8 1, ptr %i.ae, align 8, !noalias !159
  invoke void @_RNvMsf_Csa9iXSdNszRG_14async_executorNtB5_6Runner3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noundef nonnull align 128 %i.ba)
          to label %bb.o unwind label %bb.n, !noalias !159

bb.n:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = load i8, ptr %i.ah, align 8, !range !160, !noalias !161, !noundef !7
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i, !prof !5

._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.o
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !159
  br label %bb.q

_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.be = invoke { i64, i64 } @_RNvNtCs8NKWGp8lJEP_8fastrand10global_rng11random_seed()
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !159 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = extractvalue { i64, i64 } %i.be, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 1078321422319462234
  store i8 1, ptr %i.ah, align 8, !noalias !162
  br label %bb.q

bb.p:                                             ; preds = %_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs8NKWGp8lJEP_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.r, !noalias !159

bb.q:                                             ; preds = %.noexc.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i
  %i.bj = phi i64 [ %.pre.i.i.i.i.i.i.i, %._RNvYNCNKNvNtCs8NKWGp8lJEP_8fastrand10global_rng3RNG0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit_crit_edge.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ]
  %i.bk = add i64 %i.bj, 3257665815644502181      ; 3 uses
  %i.bl = zext i64 %i.bk to i128
  %i.bm = xor i64 %i.bk, -8378864009470890807
  %i.bn = zext i64 %i.bm to i128
  %i.bo = mul nuw i128 %i.bn, %i.bl               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.bk, ptr %i.ag, align 8, !noalias !159
  store i64 %i.br, ptr %i.ai, align 8, !noalias !159
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store <2 x ptr> %i.as, ptr %i.i, align 16, !noalias !159
  store i8 0, ptr %.sroa.816.0..sroa_idx.i.i.i.i.i, align 16, !noalias !159
  br label %bb.u

bb.r:                                             ; preds = %bb.v, %bb.p
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

bb.s:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc9.i.i.i.i unwind label %bb.af, !noalias !158

.noexc9.i.i.i.i:                                  ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc10.i.i.i.i unwind label %bb.af, !noalias !158

.noexc10.i.i.i.i:                                 ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.l
  %i.bt = invoke noundef zeroext i1 @_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.w unwind label %bb.v, !noalias !157

bb.v:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #22
          to label %.body.i.i.i.i.i unwind label %bb.r, !noalias !157

bb.w:                                             ; preds = %bb.u
  br i1 %i.bt, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.z unwind label %bb.y, !noalias !157

bb.y:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !157

bb.z:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i unwind label %bb.ab, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.y
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.bv, %bb.y ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !165, !noalias !159, !nonnull !7, !noundef !7
  %1 = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !166
  %i.ca = icmp eq i64 %1, 1
  br i1 %i.ca, label %bb.aa, label %.body.i.i.i.i.i

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #18
          to label %.body.i.i.i.i.i unwind label %bb.ad, !noalias !157

bb.ab:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i: ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !169, !noalias !159, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.cd, i64 -1 release, align 8, !noalias !170
  %i.ce = icmp eq i64 %2, 1
  br i1 %i.ce, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #18
          to label %bb.ag unwind label %bb.ae, !noalias !157

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ae, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i, %bb.v, %bb.p, %bb.n
  %.pn9.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.bi, %bb.p ], [ %.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i.i ], [ %i.bu, %bb.v ], [ %i.cg, %bb.ae ], [ %.pn.i.i.i.i.i.i, %bb.aa ]
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  br label %.body.i.i.i.i

bb.af:                                            ; preds = %bb.t, %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ag:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i.i.i.i.i.i
  store i8 0, ptr %i.ae, align 8, !noalias !159
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.an unwind label %bb.ah, !noalias !157

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.af, %.body.i.i.i.i.i
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %.pn9.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.ch, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i) #22
          to label %.body.thread.i.i.i unwind label %bb.ai, !noalias !157

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

.body.i.i.i:                                      ; preds = %bb.co, %bb.cj, %bb.bg, %bb.ao, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn22.ph.i.i.i = phi { ptr, i32 } [ %i.cn, %bb.ao ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.bg ], [ %.pn84.i.i.i, %bb.cj ], [ %i.fo, %bb.co ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.pr.i.i.i = load i8, ptr %i.aa, align 1, !noalias !157
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i, 3
  br i1 %cond.i.i.i.i.i, label %bb.aj, label %.body44.i.i.i

bb.aj:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %bb.al unwind label %bb.ak, !noalias !157

bb.ak:                                            ; preds = %bb.aj
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body41.i.i.i

bb.al:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body44.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.cx, %bb.cv, %bb.ck, %bb.cg, %bb.ce, %bb.bf, %bb.bc, %bb.bb, %bb.ba, %bb.am
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.k, %bb.j
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.am:                                            ; preds = %bb.w
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !159
  store i8 3, ptr %i.aa, align 1, !noalias !158
  %i.cl = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.az unwind label %.loopexit.i.i.i, !noalias !157

bb.an:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ab, align 16, !noalias !158
  store i8 1, ptr %i.aa, align 1, !noalias !158
  %i.cm = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.ap unwind label %bb.ao, !noalias !157 ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !157
  %i.co = load i8, ptr %i.aa, align 1, !range !9, !noalias !157, !noundef !7
  %cond.i.i43.i.i.i = icmp eq i8 %i.co, 3
  br i1 %cond.i.i43.i.i.i, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i unwind label %bb.ar, !noalias !157

bb.ar:                                            ; preds = %bb.aq
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.ab, align 16, !noalias !157
  br label %.body44.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !157
  br i1 %.not101.i.i.i, label %.critedge.i.i.i, label %bb.as

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !157
  br label %bb.dh

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.cq = load ptr, ptr %i.k, align 8, !alias.scope !176, !noalias !157, !nonnull !7, !noundef !7
  %3 = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !177
  %i.cr = icmp eq i64 %3, 1
  br i1 %i.cr, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.au, !noalias !157

bb.au:                                            ; preds = %bb.at
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !171, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !171, !noalias !157, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !157, !nonnull !7, !noundef !7
  invoke void %i.cw(ptr noundef %.val4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.ay, !noalias !157, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !171, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !171, !noalias !157, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !157, !nonnull !7, !noundef !7
  invoke void %i.da(ptr noundef %.val2.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i unwind label %bb.aw, !noalias !157, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.aw, %bb.au
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.de, %bb.aw ], [ %i.cs, %bb.au ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !180, !noalias !157, !nonnull !7, !noundef !7
  %4 = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !181
  %i.dd = icmp eq i64 %4, 1
  br i1 %i.dd, label %bb.av, label %.body

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db) #18
          to label %.body unwind label %bb.ay, !noalias !157

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !184, !noalias !157, !nonnull !7, !noundef !7
  %5 = atomicrmw add ptr %i.dg, i64 -1 release, align 8, !noalias !185
  %i.dh = icmp eq i64 %5, 1
  br i1 %i.dh, label %bb.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.df) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.dg

bb.ay:                                            ; preds = %bb.av, %bb.au
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !157
  unreachable

.critedge.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin14PinMacroHelperNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1c_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0EECsbDLrNlwBX3H_4smol.exit46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !157
  %i.dj = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  br label %bb.dh

bb.az:                                            ; preds = %bb.am
  br i1 %i.cl, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !157
  %i.dl = invoke noundef nonnull align 128 ptr @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor3get()
          to label %bb.bc unwind label %.loopexit.i.i.i, !noalias !157

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !157
  %i.dm = invoke noundef nonnull align 128 ptr @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor3get()
          to label %bb.ck unwind label %.loopexit.i.i.i, !noalias !157

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor8try_lock(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 128 %i.dl)
          to label %bb.bd unwind label %.loopexit.i.i.i, !noalias !157

bb.bd:                                            ; preds = %bb.bc
  %i.dn = load i8, ptr %i.aj, align 8, !range !6, !noalias !157, !noundef !7
  %.not.i.i.i = icmp eq i8 %i.dn, 2
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !157
  %i.do = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.bh unwind label %.thread81.i.i.i, !noalias !157 ; 2 uses

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i)
          to label %bb.ch unwind label %.loopexit.i.i.i, !noalias !157

.thread85.i.i.i:                                  ; preds = %bb.br, %bb.bp, %bb.bo, %bb.bk, %bb.bi
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !186
  %i.dp = load ptr, ptr %i.x, align 8, !noalias !186, !nonnull !7, !noundef !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store atomic i8 0, ptr %i.dq seq_cst, align 1, !noalias !186
  br label %bb.cj

bb.bg:                                            ; preds = %bb.ca, %bb.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i, %bb.bx, %bb.bv
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !187
  %i.dr = load ptr, ptr %i.x, align 8, !noalias !187, !nonnull !7, !noundef !7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store atomic i8 0, ptr %i.ds seq_cst, align 1, !noalias !187
  br label %.body.i.i.i

.thread81.i.i.i:                                  ; preds = %bb.be
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bh:                                            ; preds = %bb.be
  %i.du = extractvalue { i64, i32 } %i.do, 0
  %i.dv = extractvalue { i64, i32 } %i.do, 1
  store i64 %i.du, ptr %i.c, align 8, !noalias !157
  store i32 %i.dv, ptr %i.ak, align 8, !noalias !157
  br label %bb.bi

bb.bi:                                            ; preds = %bb.by, %bb.bh
  store i8 1, ptr %i.al, align 1, !noalias !157
  %i.dw = load ptr, ptr %i.x, align 8, !noalias !157, !nonnull !7, !noundef !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store atomic i8 1, ptr %i.dx seq_cst, align 1, !noalias !157
  %i.dy = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.bj unwind label %.thread85.i.i.i, !noalias !157

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.dy, label %bb.cc, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dz = invoke noundef ptr @_RNvMs_NtCs13QwXx3ETeK_8async_io7reactorNtB4_11ReactorLock5react(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 undef, i32 noundef -1)
          to label %bb.bl unwind label %.thread85.i.i.i, !noalias !157 ; 4 uses

bb.bl:                                            ; preds = %bb.bk
  %.not16.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not16.i.i.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  %i.ea = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 3
  switch i64 %i.eb, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
    i64 3, label %bb.bn
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
    i64 1, label %bb.bo
  ], !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.ec = icmp ult ptr %i.dz, inttoptr (i64 188978561024 to ptr)
  %i.ed = and i64 %i.ea, 1095216660480
  %i.ee = icmp ne i64 %i.ed, 1095216660480
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ee)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.ef = getelementptr i8, ptr %i.dz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  store ptr %i.ef, ptr %i.am, align 8, !alias.scope !189, !noalias !188
  store i8 3, ptr %i.b, align 8, !alias.scope !189, !noalias !188
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %.thread85.i.i.i, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  br label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i, %bb.bl
  %i.eg = invoke noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %bb.bq unwind label %.thread85.i.i.i, !noalias !157

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.eg, label %bb.cc, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eh = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bs unwind label %.thread85.i.i.i, !noalias !157 ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.ei = extractvalue { i64, i32 } %i.eh, 0
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.split88.i.i.i, label %bb.bt

.split88.i.i.i:                                   ; preds = %bb.bs
  %i.ek = extractvalue { i64, i32 } %i.eh, 1      ; 2 uses
  %i.el = icmp ult i32 %i.ek, 1000000000
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ugt i32 %i.ek, 500000
  br i1 %i.em, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %.split88.i.i.i, %bb.bs
  %.sroa.374.0.copyload.i.i.i = load ptr, ptr %.sroa.374.0..sroa_idx.i.i.i, align 8, !noalias !157, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !157
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.374.0.copyload.i.i.i, i64 4
  %i.eo = trunc nuw i8 %.sroa.4.0.copyload.i.i.i to i1
  br i1 %i.eo, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ep = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.eq = and i64 %i.ep, 9223372036854775807
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bv, !prof !5

bb.bv:                                            ; preds = %bb.bu
  %i.es = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #18
          to label %.noexc51.i.i.i unwind label %bb.bg, !noalias !157

.noexc51.i.i.i:                                   ; preds = %bb.bv
  br i1 %i.es, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.noexc51.i.i.i
  store atomic i8 1, ptr %i.en monotonic, align 1, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.bw, %.noexc51.i.i.i, %bb.bu, %bb.bt
  %i.et = atomicrmw xchg ptr %.sroa.374.0.copyload.i.i.i, i32 0 release, align 4, !noalias !157
  %i.eu = icmp eq i32 %i.et, 2
  br i1 %i.eu, label %bb.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i, !prof !10

bb.bx:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.374.0.copyload.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i unwind label %bb.bg, !noalias !157

bb.by:                                            ; preds = %.split88.i.i.i
  store i8 0, ptr %i.al, align 1, !noalias !190
  %i.ev = load ptr, ptr %i.x, align 8, !noalias !190, !nonnull !7, !noundef !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store atomic i8 0, ptr %i.ew seq_cst, align 1, !noalias !190
  br label %bb.bi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.bx, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
          to label %bb.bz unwind label %bb.bg, !noalias !157
end_hunk_0
begin_hunk_1_@_RINvNtCs13QwXx3ETeK_8async_io6driver8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtBR_8Executor3runuINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i unwind label %.loopexit.i.i.i, !noalias !157

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit56.i.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !157
  br label %.backedge.i.i.i.backedge

bb.ci:                                            ; preds = %bb.cy, %bb.co, %bb.cj
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body41.i.i.i

.body41.i.i.i:                                    ; preds = %bb.db, %bb.ci, %bb.ak
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !155
  unreachable

bb.cj:                                            ; preds = %.thread81.i.i.i, %.thread85.i.i.i
  %.pn84.i.i.i = phi { ptr, i32 } [ %i.dt, %.thread81.i.i.i ], [ %lpad.thr_comm.i.i.i, %.thread85.i.i.i ]
  %.val34.i.i.i = load ptr, ptr %.sroa.374.0..sroa_idx.i.i.i, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %.val35.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !160, !noalias !157, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol(ptr nonnull %.val34.i.i.i, i8 %.val35.i.i.i) #22
          to label %.body.i.i.i unwind label %bb.ci, !noalias !157

bb.ck:                                            ; preds = %bb.bb
  invoke void @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor8try_lock(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 128 %i.dm)
          to label %bb.cl unwind label %.loopexit.i.i.i, !noalias !157

bb.cl:                                            ; preds = %bb.ck
  %i.fm = load i8, ptr %i.an, align 8, !range !6, !noalias !157, !noundef !7
  %.not18.i.i.i = icmp eq i8 %i.fm, 2
  br i1 %.not18.i.i.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !157
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %bb.cm, %bb.ch
  br label %.backedge.i.i.i

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !157
  store i8 1, ptr %i.al, align 1, !noalias !157
  %i.fn = invoke noundef ptr @_RNvMs_NtCs13QwXx3ETeK_8async_io7reactorNtB4_11ReactorLock5react(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 0, i32 noundef 0)
          to label %bb.cp unwind label %bb.co, !noalias !157 ; 4 uses

bb.co:                                            ; preds = %bb.cs, %bb.cn
  %i.fo = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.al, align 1, !noalias !157
  %.val32.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7
  %.val33.i.i.i = load i8, ptr %i.aq, align 8, !range !160, !noalias !157, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol(ptr nonnull %.val32.i.i.i, i8 %.val33.i.i.i) #22
          to label %.body.i.i.i unwind label %bb.ci, !noalias !157

bb.cp:                                            ; preds = %bb.cn
  %.not19.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not19.i.i.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  %i.fp = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fq = and i64 %i.fp, 3
  switch i64 %i.fq, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i
    i64 3, label %bb.cr
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i
    i64 1, label %bb.cs
  ], !prof !11

bb.cr:                                            ; preds = %bb.cq
  %i.fr = icmp ult ptr %i.fn, inttoptr (i64 188978561024 to ptr)
  %i.fs = and i64 %i.fp, 1095216660480
  %i.ft = icmp ne i64 %i.fs, 1095216660480
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.assume(i1 %i.ft)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.fu = getelementptr i8, ptr %i.fn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  store ptr %i.fu, ptr %i.ao, align 8, !alias.scope !194, !noalias !193
  store i8 3, ptr %i.a, align 8, !alias.scope !194, !noalias !193
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i unwind label %bb.co, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit60.i.i.i, %bb.cp
  store i8 0, ptr %i.al, align 1, !noalias !157
  %.val30.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !157, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  %.val31.i.i.i = load i8, ptr %i.aq, align 8, !range !160, !noalias !157, !noundef !7
  %i.fv = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 4
  %i.fw = trunc nuw i8 %.val31.i.i.i to i1
  br i1 %i.fw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fx = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.fy = and i64 %i.fx, 9223372036854775807
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.cv, !prof !5

bb.cv:                                            ; preds = %bb.cu
  %i.ga = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #18
          to label %.noexc62.i.i.i unwind label %.loopexit.i.i.i, !noalias !157

.noexc62.i.i.i:                                   ; preds = %bb.cv
  br i1 %i.ga, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc62.i.i.i
  store atomic i8 1, ptr %i.fv monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i: ; preds = %bb.cw, %.noexc62.i.i.i, %bb.cu, %bb.ct
  %i.gb = atomicrmw xchg ptr %.val30.i.i.i, i32 0 release, align 4, !noalias !157
  %i.gc = icmp eq i32 %i.gb, 2
  br i1 %i.gc, label %bb.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i, !prof !10

bb.cx:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val30.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i unwind label %.loopexit.i.i.i, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol.exit64.i.i.i: ; preds = %bb.cx, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !157
  br label %bb.cm

bb.cy:                                            ; preds = %.body44.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #22
          to label %.body unwind label %bb.ci, !noalias !157

.split.i.i.i:                                     ; preds = %.body44.i.i.i
  %i.gd = load i64, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157, !noundef !7
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %.sroa.0.0.i.i.i8.i.i, align 8, !noalias !157
  br label %.body

bb.cz:                                            ; preds = %bb.d
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 225
  %i.gh = load i8, ptr %i.gg, align 1, !range !9, !alias.scope !156, !noalias !155, !noundef !7
  %cond.i.i.i.i = icmp eq i8 %i.gh, 3
  br i1 %cond.i.i.i.i, label %bb.da, label %.body

bb.da:                                            ; preds = %bb.cz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.l)
          to label %.body unwind label %bb.db, !noalias !155

bb.db:                                            ; preds = %bb.da
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  store i8 0, ptr %i.gj, align 8, !alias.scope !156, !noalias !155
  br label %.body41.i.i.i

bb.dc:                                            ; preds = %_RNvYNCNKNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on5CACHE00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB14_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB14_4sync6atomic6AtomicbEEEEEEEE9call_onceCsbDLrNlwBX3H_4smol.exit.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 225
  %i.gl = load i8, ptr %i.gk, align 1, !range !9, !alias.scope !155, !noundef !7
  %cond.i.i8.i.i = icmp eq i8 %i.gl, 3
  br i1 %cond.i.i8.i.i, label %bb.dd, label %.noexc1

bb.dd:                                            ; preds = %bb.dc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.m)
          to label %.noexc1 unwind label %bb.dg

bb.de:                                            ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.m, i64 225
  %i.go = load i8, ptr %i.gn, align 1, !range !9, !alias.scope !155, !noundef !7
  %cond.i.i9.i.i = icmp eq i8 %i.go, 3
  br i1 %cond.i.i9.i.i, label %bb.df, label %.body

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(232) %i.m)
          to label %.body unwind label %.body10.i.i

.body10.i.i:                                      ; preds = %bb.df
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  store i8 0, ptr %i.gq, align 8, !alias.scope !155
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.noexc1:                                          ; preds = %bb.dd, %bb.dc
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %.noexc2 unwind label %bb.dg

.noexc2:                                          ; preds = %.noexc1
  unreachable

bb.dg:                                            ; preds = %.noexc1, %bb.dd, %bb.ax
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i, %bb.av, %bb.cy, %.split.i.i.i, %bb.cz, %bb.da, %bb.de, %bb.df, %bb.dg
  %eh.lpad-body = phi { ptr, i32 } [ %i.gr, %bb.dg ], [ %i.gm, %bb.de ], [ %.pn.i.i.i.i, %bb.av ], [ %i.gf, %bb.da ], [ %.pn22.pn.i.i.i, %.split.i.i.i ], [ %i.gf, %bb.cz ], [ %.pn22.pn.i.i.i, %bb.cy ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i ], [ %i.gm, %bb.df ]
  %6 = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 -1 seq_cst, align 8 ; 0 uses
  %i.gs = invoke noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
          to label %.noexc3 unwind label %bb.di

.noexc3:                                          ; preds = %.body
  %i.gt = invoke noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs13QwXx3ETeK_8async_io6driver10CallOnDropNCINvBE_8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1N_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0E0EECsbDLrNlwBX3H_4smol.exit unwind label %bb.di ; 0 uses

bb.dh:                                            ; preds = %.critedge.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %7 = atomicrmw add ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver14BLOCK_ON_COUNT, i64 -1 seq_cst, align 8 ; 0 uses
  %i.gu = call noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker()
  %i.gv = call noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gu) ; 0 uses
  ret void

bb.di:                                            ; preds = %.noexc3, %.body
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs13QwXx3ETeK_8async_io6driver10CallOnDropNCINvBE_8block_onuNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1N_8Executor3runuINtNtNtB4_6future7pending7PendinguEE0E0EECsbDLrNlwBX3H_4smol.exit: ; preds = %.noexc3
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbDLrNlwBX3H_4smol(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #23
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit
    i64 1, label %bb.e
  ], !prof !11

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !200, !noalias !199
  store i8 3, ptr %i.a, align 8, !alias.scope !200, !noalias !199
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !199
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsb_Csa9iXSdNszRG_14async_executorNtBK_5State3runuINtNtNtB4_6future7pending7PendinguEE0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !7
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !213, !nonnull !7, !noundef !7
  %1 = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !214
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.e, label %.body

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %.body unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !217, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !218
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body:                                            ; preds = %bb.i, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit.i ], [ %i.p, %bb.i ], [ %.pn.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.o, align 8
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.q, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6RunnerECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !229, !nonnull !7, !noundef !7
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !229
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !232, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !232
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit3

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit2, %bb.f
  ret void

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsa9iXSdNszRG_14async_executor6TickerECsbDLrNlwBX3H_4smol.exit, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs13QwXx3ETeK_8async_io7reactor11ReactorLockECsbDLrNlwBX3H_4smol(ptr %.8.val, i8 %.16.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 4
  %i.b = trunc nuw i8 %.16.val to i1
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #18
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCs5qktYLymHBF_7polling6EventsEECsbDLrNlwBX3H_4smol.exit, !prof !10

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.8.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCs5qktYLymHBF_7polling6EventsEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtCs5qktYLymHBF_7polling6EventsEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit
    i64 1, label %bb.c
  ], !prof !11

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !235
  store i8 3, ptr %i.a, align 8, !alias.scope !235
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB4_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !256, !nonnull !7, !noundef !7
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !256
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.e, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  invoke void %i.g(ptr noundef %.val4)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit unwind label %bb.g, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !7, !align !8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.i, align 8, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  invoke void %i.k(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7 unwind label %bb.e, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.c, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !259, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !259
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !262, !nonnull !7, !noundef !7
  %3 = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !262
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit9

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7, %bb.f
  ret void

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB18_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB18_4sync6atomic6AtomicbEEEEECsbDLrNlwBX3H_4smol(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1C_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1C_4sync6atomic6AtomicbEEEEE0ECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !292, !nonnull !7, !noundef !7
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !292
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !293, !nonnull !7, !align !8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !293, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  invoke void %i.k(ptr noundef %.val4.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.h, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !293, !nonnull !7, !align !8, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !293, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  invoke void %i.o(ptr noundef %.val2.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i.i unwind label %bb.f, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !296, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !297
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.e, label %.body.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #18
          to label %.body.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2KJ8IamB81r_7parking6ParkerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !300, !nonnull !7, !noundef !7
  %3 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !301
  %i.v = icmp eq i64 %3, 1
  br i1 %i.v, label %bb.g, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1C_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1C_4sync6atomic6AtomicbEEEEE0ECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #18
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1C_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1C_4sync6atomic6AtomicbEEEEE0ECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #24
          to label %.noexc1.i unwind label %bb.j

.noexc1.i:                                        ; preds = %.body.i
  unreachable

bb.j:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellTNtCs2KJ8IamB81r_7parking6ParkerNtNtNtB1C_4task4wake5WakerINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB1C_4sync6atomic6AtomicbEEEEE0ECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbDLrNlwBX3H_4smol.exit7.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB19_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0B31_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [136 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !8, !noundef !7 ; 2 uses
  store ptr null, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvNtCsG258MDvU3F_3std3env3varReECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 12)
  %i.o = load i64, ptr %i.l, align 8, !range !337, !noundef !7
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  br i1 %i.p, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i

common.resume.i.i.i:                              ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i, %bb.r, %bb.o, %bb.l, %bb.e
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.t, %bb.e ], [ %i.ax, %bb.l ], [ %i.bj, %bb.o ], [ %.pn.i.i.i.i.i, %bb.x ], [ %.pn.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsbDLrNlwBX3H_4smol.exit.sink.split.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread62.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.b
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i, label %.thread62.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false)
  store i64 %i.r, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.v = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !alias.scope !338, !nonnull !7, !noundef !7 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !338, !noundef !7 ; 2 uses
  switch i64 %i.x, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.v, align 1, !alias.scope !339, !noalias !338, !noundef !7 ; 2 uses
  switch i8 %i.y, label %bb.i [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.g
  %.pr.i.i.i.i.i = load i8, ptr %i.v, align 1, !alias.scope !339, !noalias !338
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.h
  %i.z = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.y, %bb.h ]
  %cond.i.i.i.i.i = icmp eq i8 %i.z, 43           ; 2 uses
  %i.aa = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.x, %i.aa ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.ab, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.i
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i21, i64 1
  %i.ad = add nsw i64 %.sroa.15.1.i.i.i.i.i20, -1 ; 2 uses
  %.not52.i.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.ad, 0
  br i1 %.not52.i.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.i, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i21 = phi ptr [ %i.ac, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i20 = phi i64 [ %i.ad, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.i ]
  %.sroa.042.0.i.i.i.i.i19 = phi i64 [ %i.am, %.preheader56.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ae = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i19, i64 10) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.j, !prof !10

bb.j:                                             ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i.i.i.i.i21, align 1, !alias.scope !339, !noalias !338, !noundef !7
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = add i64 %i.ag, %i.al                    ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %or.cond.i.i.i.i = select i1 %i.ak, i1 true, i1 %i.an, !prof !340
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !340

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.k
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.at, %bb.k ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %.preheader.i.i.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !339, !noalias !338, !noundef !7
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9                   ; 3 uses
  br i1 %i.ar, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.at = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.j, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.h, %bb.h, %bb.g
  %.sroa.102.0.i.i.i.i = phi i64 [ undef, %bb.h ], [ 0, %.preheader.i.i.i.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.k ], [ undef, %bb.j ], [ %i.am, %.preheader56.i.i.i.i.i ], [ undef, %.preheader56.i.i.i.i.i.preheader ]
  %.sink.i.i.i.i.i = phi i1 [ true, %bb.h ], [ false, %.preheader.i.i.i.i.i ], [ true, %bb.g ], [ true, %bb.h ], [ %i.ar, %bb.k ], [ %i.ar, %.lr.ph.i.i.i.i.i ], [ true, %bb.j ], [ false, %.preheader56.i.i.i.i.i ], [ true, %.preheader56.i.i.i.i.i.preheader ] ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.thread62.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsbDLrNlwBX3H_4smol.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %.lr.ph.i.i.i

bb.n:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = select i1 %.sink.i.i.i.i.i, i64 undef, i64 %.sroa.102.0.i.i.i.i
  %.sroa.3.0.i.fr.i.i.i = freeze i64 %.sroa.3.0.i.i.i.i ; 2 uses
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i.fr.i.i.i, 0
  %narrow.i.not.i.i.i = or i1 %.sink.i.i.i.i.i, %.not.i.i.i.i
  %spec.select.i.i = select i1 %narrow.i.not.i.i.i, i64 1, i64 %.sroa.3.0.i.fr.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.thread62.i.i.i
  %i.az = phi i64 [ 1, %.thread62.i.i.i ], [ %spec.select.i.i, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.050.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i ] ; 3 uses
  %i.be = add i64 %.sroa.0.050.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0.050.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %i.ba, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.k, ptr %i.e, align 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @11, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.bf = load ptr, ptr %i.i, align 8, !alias.scope !342, !noundef !7
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i, !prof !10

._crit_edge.i.i.i:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.bh, align 8
  %i.bi = invoke noundef nonnull ptr @_RINvMs3_Csa9iXSdNszRG_14async_executorNtB6_8Executor5spawnzNCNvCs6Pq5vOzcA63_13async_process6driver0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.c)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %._crit_edge.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_Csa9iXSdNszRG_14async_executorNtB5_8ExecutorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %common.resume.i.i.i unwind label %.body.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE6detachCsbDLrNlwBX3H_4smol(ptr noundef nonnull %i.bi)
          to label %_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB4_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0B2f_.exit unwind label %bb.o

.body.i:                                          ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !342, !nonnull !7, !noundef !7
  store ptr %i.bm, ptr %i.a, align 8, !noalias !343
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
          to label %bb.s unwind label %bb.r, !noalias !343

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %common.resume.i.i.i unwind label %bb.t, !noalias !343

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !343
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.bq = load ptr, ptr %i.j, align 8, !alias.scope !348, !nonnull !7, !noundef !7
  %2 = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !349
  %i.br = icmp eq i64 %2, 1
  br i1 %i.br, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezENtNtNtB4_2io5error5ErrorE6expectCsbDLrNlwBX3H_4smol.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.bs = load ptr, ptr %i.j, align 8, !alias.scope !354, !nonnull !7, !noundef !7
  %3 = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !355
  %i.bt = icmp eq i64 %3, 1
  br i1 %i.bt, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i: ; preds = %bb.y, %bb.v, %bb.u
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.y ], [ %i.bp, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.bu = load ptr, ptr %i.bd, align 8, !alias.scope !358, !nonnull !7, !noundef !7
  %4 = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !359
  %i.bv = icmp eq i64 %4, 1
  br i1 %i.bv, label %bb.x, label %common.resume.i.i.i

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #18
          to label %common.resume.i.i.i unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i: ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECsbDLrNlwBX3H_4smol.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.bx = load ptr, ptr %i.bd, align 8, !alias.scope !362, !nonnull !7, !noundef !7
  %5 = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !363
  %i.by = icmp eq i64 %5, 1
  br i1 %i.by, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i

bb.aa:                                            ; preds = %bb.x, %bb.v
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandlezEECsbDLrNlwBX3H_4smol.exit.i.i.i: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.0.050.i.i.i, %i.az
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbDLrNlwBX3H_4smol.exit.i.i.i

_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB4_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0B2f_.exit: ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.n, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB1e_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB36_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !366
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB19_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zE0E0B31_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !382, !noundef !7 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !383
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !385, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !386
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  %.val3.i = load ptr, ptr %i.b, align 8, !alias.scope !387, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val4.i = load ptr, ptr %i.l, align 8, !alias.scope !387
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsbDLrNlwBX3H_4smol(ptr %.val3.i, ptr %.val4.i) #22
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i: ; preds = %bb.g, %bb.f, %bb.e
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !387, !noundef !7 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val2.i = load ptr, ptr %i.n, align 8, !alias.scope !387 ; 6 uses
  %i.o = icmp eq ptr %.val.i, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.p = load ptr, ptr %.val2.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.p(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !7 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !13, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #23
  br label %.body

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit.i ], [ %i.v, %bb.m ], [ %i.v, %bb.n ]
  %i.ac = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit, label %bb.p

bb.p:                                             ; preds = %.body
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = atomicrmw add ptr %i.ad, i64 -1 release, align 8
  %i.ae = icmp eq i64 %3, 1
  br i1 %i.ae, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit6.i
  %i.af = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit2, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = atomicrmw add ptr %i.ag, i64 -1 release, align 8
  %i.ah = icmp eq i64 %4, 1
  br i1 %i.ah, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit2

bb.s:                                             ; preds = %bb.r
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECsbDLrNlwBX3H_4smol.exit, %bb.r, %bb.s
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzERNtNtBG_5alloc6GlobalEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.q, %bb.p, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() unnamed_addr #7 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %i.b)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #20
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process5abort() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_Csa9iXSdNszRG_14async_executorNtB5_6RunnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_Csa9iXSdNszRG_14async_executorNtB5_6TickerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_Csa9iXSdNszRG_14async_executorNtB5_8ExecutorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 128 ptr @_RNvXsb_NtCskKLDkoKarTP_4core3pinINtB5_3PinRNtCsa9iXSdNszRG_14async_executor5StateENtNtNtB7_3ops5deref5Deref5derefCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_Csa9iXSdNszRG_14async_executorNtB5_6Runner3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull align 128) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs5_NtCsitb6zIp059K_12futures_lite6futureINtB5_2OrINtNtNtCskKLDkoKarTP_4core6future7pending7PendinguENCNCINvMsb_Csa9iXSdNszRG_14async_executorNtB1P_5State3runuBP_E00ENtNtBU_6future6Future4pollCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCs13QwXx3ETeK_8async_io6driver8unparker() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_Cs2KJ8IamB81r_7parkingNtB5_8Unparker6unpark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs13QwXx3ETeK_8async_io6driver8block_on16parker_and_waker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker12park_timeout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 128 ptr @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor3get() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs13QwXx3ETeK_8async_io7reactorNtB2_7Reactor8try_lock(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 128) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCs13QwXx3ETeK_8async_io7reactorNtB4_11ReactorLock5react(ptr noalias nofree noundef align 8 dereferenceable(24), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs2KJ8IamB81r_7parkingNtB2_6Parker4park(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std3env3varReECsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs3_Csa9iXSdNszRG_14async_executorNtB6_8Executor5spawnzNCNvCs6Pq5vOzcA63_13async_process6driver0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE6detachCsbDLrNlwBX3H_4smol(ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1h_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #14

; Function Attrs: cold nonlazybind uwtable
declare noundef ptr @_RNvNvMs3_Csa9iXSdNszRG_14async_executorNtB7_8Executor5state11alloc_state(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs8NKWGp8lJEP_8fastrand10global_rng11random_seed() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEE9drop_slowCsa9iXSdNszRG_14async_executor(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_1
