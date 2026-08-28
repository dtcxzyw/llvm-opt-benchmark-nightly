Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECsbDLrNlwBX3H_4smol, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsbDLrNlwBX3H_4smol, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsbDLrNlwBX3H_4smol, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsbDLrNlwBX3H_4smol }>, align 8
@1 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@2 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant [17 x i8] c"tag already taken", align 1
@5 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/event-listener-5.4.2/src/intrusive.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"j\00\00\00\00\00\00\00O\01\00\00,\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"j\00\00\00\00\00\00\00;\01\00\00\12\00\00\00" }>, align 8
@8 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/concurrent-queue-2.5.0/src/unbounded.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"l\00\00\00\00\00\00\00\E7\00\00\00C\00\00\00" }>, align 8
@10 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify10AdditionalNtB14_6NotifyEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.not15 = icmp eq i64 %1, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8
  %.promoted17 = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit
  %i.d = phi i64 [ %.promoted17, %.lr.ph ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ]
  %i.e = phi ptr [ %.promoted, %.lr.ph ], [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ] ; 6 uses
  %.sroa.01.116 = phi i64 [ %1, %.lr.ph ], [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ] ; 2 uses
  %i.f = add i64 %.sroa.01.116, -1                ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.c

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, %bb.a, %bb.d
  %.sroa.0.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.a ], [ %1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.0.0.copyload = load i8, ptr %i.e, align 8
  store i8 1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %i.i = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %bb.b
  %i.j = sub i64 %1, %.sroa.01.116
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @_RNvMsl_Cs3iPtYnXk70z_14event_listenerNtB5_4Task4wake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %bb.c
  %i.l = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.l, ptr %i.c, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load i64, ptr %1, align 8, !noundef !4  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13 = load i8, ptr %i.b, align 8, !range !5, !noundef !4 ; 2 uses
  %i.c = trunc nuw i8 %.val13 to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %.val, %i.e
  br i1 %i.f, label %.loopexit, label %bb.f

bb.c:                                             ; preds = %bb.f, %bb.a
  %.sroa.01.0 = phi i64 [ %.val, %bb.a ], [ %i.p, %bb.f ] ; 2 uses
  %.not17 = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 6 uses
  %.promoted20 = load i64, ptr %i.h, align 8
  %.not12.peel = icmp eq ptr %.promoted, null
  br i1 %.not12.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.promoted19 = load i8, ptr %i.i, align 1
  %i.j = trunc nuw i8 %.promoted19 to i1
  %i.k = getelementptr inbounds nuw i8, ptr %.promoted, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  br i1 %i.j, label %_RNvXsb_NtCs3iPtYnXk70z_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsbDLrNlwBX3H_4smol.exit.peel, label %bb.g, !prof !6

_RNvXsb_NtCs3iPtYnXk70z_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsbDLrNlwBX3H_4smol.exit.peel: ; preds = %bb.d
  %.sroa.0.0.copyload = load i8, ptr %.promoted, align 8
  store i8 1, ptr %.promoted, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  store i8 %.val13, ptr %.sroa.4.0..sroa_idx.peel, align 1
  %i.m = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.peel

bb.e:                                             ; preds = %_RNvXsb_NtCs3iPtYnXk70z_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsbDLrNlwBX3H_4smol.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvMsl_Cs3iPtYnXk70z_14event_listenerNtB5_4Task4wake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.peel

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.peel: ; preds = %bb.e, %_RNvXsb_NtCs3iPtYnXk70z_14event_listener6notifyINtB5_13GenericNotifyNCNvMs0_NtB7_3sysINtB1b_5InneruE6remove0ENtB5_19NotificationPrivate8next_tagCsbDLrNlwBX3H_4smol.exit.peel
  %i.o = add i64 %.promoted20, 1
  store i64 %i.o, ptr %i.h, align 8
  %.not.peel = icmp eq i64 %.sroa.01.0, 1
  %.not12 = icmp eq ptr %i.l, null
  %or.cond = or i1 %.not.peel, %.not12
  br i1 %or.cond, label %.loopexit, label %.loopexit26

bb.f:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %.val, %i.e
  br label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.peel, %bb.c, %bb.b
  ret void

.loopexit26:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.peel
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noundef !4
  store ptr %i.r, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit26, %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !7
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not15 = icmp eq i64 %i.e, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted17 = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit
  %i.g = phi ptr [ %.promoted17, %.lr.ph ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ] ; 6 uses
  %.sroa.01.116 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.lr.ph ], [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ]
  %i.i = add i64 %.sroa.01.116, -1                ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %bb.d

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit ]
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 8
  store i8 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %i.l = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  %i.m = sub i64 %i.e, %.sroa.01.116
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvMsl_Cs3iPtYnXk70z_14event_listenerNtB5_4Task4wake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.d
  %i.o = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.o, ptr %i.b, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs4_NtCsfO0Hesl1pIe_10async_task8runnableINtB6_7BuilderuE15spawn_uncheckedNCINvMs3_Csa9iXSdNszRG_14async_executorNtB1n_8Executor11spawn_innerzNCNvCs6Pq5vOzcA63_13async_process6driver0Es_0INtB1n_15AsyncCallOnDropB2k_NCB1g_0ENCNvB1j_8schedule0ECsbDLrNlwBX3H_4smol(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  %i.b = call noundef nonnull ptr @_RINvMs1_NtCsfO0Hesl1pIe_10async_task3rawINtB6_7RawTaskINtCsa9iXSdNszRG_14async_executor15AsyncCallOnDropNCNvCs6Pq5vOzcA63_13async_process6driver0NCINvMs3_BT_NtBT_8Executor11spawn_innerzB1E_E0EzNCNvB2o_8schedule0uE8allocateNCB2l_s_0ECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a, ptr noundef nonnull align 128 %2, i1 noundef zeroext %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %i.b, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_Cs3iPtYnXk70z_14event_listenerNtB6_5Event6notifyINtNtB6_6notify10AdditionalNtBV_6NotifyEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #20, !srcloc !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = call noundef ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0)
  %i.c = call noundef i64 @_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE6notifyINtNtB7_6notify10AdditionalNtB13_6NotifyEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.b, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsG258MDvU3F_3std3env3varReECsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCsG258MDvU3F_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsG258MDvU3F_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !4
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !16, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !16, !nonnull !4, !noundef !4
  tail call void %i.g(ptr noundef %.val1.i), !noalias !16, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !29, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !29
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.d = load i8, ptr %i.c, align 8, !range !15, !alias.scope !49, !noundef !4
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !53, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !53, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !53, !nonnull !4, !noundef !4
  tail call void %i.j(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !53, !inline_history !54
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !64, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !64
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3iPtYnXk70z_14event_listener13EventListenerEECsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtB7_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !71, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !71
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i unwind label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !78, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !78
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i: ; preds = %bb.h, %bb.e, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %.0.val) #22
          to label %bb.p unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_0
