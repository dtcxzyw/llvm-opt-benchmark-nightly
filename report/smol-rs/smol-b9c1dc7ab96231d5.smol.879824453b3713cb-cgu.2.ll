Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.2?download=true
inline.NumInlined: 170
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB6_5InneruE6notifyINtNtB8_6notify13GenericNotifyNCNvB2_6remove0EECsbDLrNlwBX3H_4smol:bb.a
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
  %i.m = sub nuw i64 %i.e, %.sroa.01.116
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
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.c = load i8, ptr %i.b, align 8, !range !15, !alias.scope !49, !noundef !4
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !53, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !53, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !53, !nonnull !4, !noundef !4
  tail call void %i.i(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !53, !inline_history !54
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !64, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !64
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys8ListeneruEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #21
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.l = load i64, ptr %.0.val, align 8, !range !30, !noundef !4
  %0 = trunc nuw i64 %i.l to i1
  br i1 %0, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.n = load i8, ptr %i.m, align 8, !range !15, !alias.scope !97, !noundef !4
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !101, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !101, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !101, !nonnull !4, !noundef !4
  invoke void %i.t(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o, !inline_history !102

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !112, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !112
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #20
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener13EventListenerECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit3.i.i.i.i, %bb.i, %bb.k, %bb.l, %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #20
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.a = load i8, ptr %0, align 8, !range !15, !alias.scope !122, !noundef !4
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !126, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !126, !nonnull !4, !noundef !4
  tail call void %i.g(ptr noundef %.val1.i.i.i.i), !noalias !126, !inline_history !127
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !137, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !137
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i
    i64 1, label %bb.d
  ], !prof !138

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !139
  store i8 3, ptr %i.a, align 8, !alias.scope !139
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !142, !nonnull !4, !noundef !4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8, !noalias !142
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.d, %bb.a ], [ %.sroa.01.0.i.i, %bb.c ] ; 3 uses
  %i.e = and i64 %.sroa.02.0.i, 12
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i64 %.sroa.02.0.i, 8
  %i.h = cmpxchg weak ptr %i.c, i64 %.sroa.02.0.i, i64 %i.g acq_rel acquire, align 8, !noalias !142 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.h, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.h, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !noalias !142, !nonnull !4, !align !145, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !142, !nonnull !4, !noundef !4
  tail call void %i.k(ptr noundef nonnull %i.b), !noalias !142, !inline_history !146
  %i.l = atomicrmw and ptr %i.c, i64 -2 acq_rel, align 8, !noalias !142
  %i.m = and i64 %i.l, 32
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw or ptr %i.c, i64 128 acq_rel, align 8, !noalias !142
  %i.p = and i64 %i.o, 192
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_RNvXsa_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8RunnableNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !142, !align !145, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !142
  store ptr null, ptr %i.r, align 8, !noalias !142
  %i.v = atomicrmw and ptr %i.c, i64 -161 release, align 8, !noalias !142 ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol:bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i8, ptr %i.b, align 8
  br label %bb.v

bb.y:                                             ; preds = %bb.ag, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.ap, %bb.w ], [ %i.ap, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.ah unwind label %bb.aa

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.ae, %bb.ab, %bb.ad, %bb.af, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.d, align 8, !range !15, !alias.scope !234
  %i.at = icmp eq i8 %.pre, 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  br i1 %i.at, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol.exit

bb.ab:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ax = icmp eq i8 %i.an, 2
  br i1 %i.ax, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !241, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !241, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !241, !nonnull !4, !noundef !4
  invoke void %i.bc(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.ag, !inline_history !242

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bd = load ptr, ptr %i.ba, align 8, !alias.scope !252, !nonnull !4, !noundef !4
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !252
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ah:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3iPtYnXk70z_14event_listener3sys4LinkuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #22
          to label %bb.ai unwind label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 128, !range !253, !noundef !4
  switch i64 %i.a, label %default.unreachable5 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = lshr i64 %i.c, 1
  %.lobit = and i64 %i.d, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = tail call noundef i64 @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128 ; 3 uses
  %i.j = load atomic i64, ptr %i.g seq_cst, align 128 ; 2 uses
  %i.k = load atomic i64, ptr %i.h seq_cst, align 128
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, label %bb.e

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e
  %i.m = and i64 %i.i, -2                         ; 2 uses
  %i.n = and i64 %i.j, -2                         ; 2 uses
  %i.o = and i64 %i.i, 62
  %i.p = icmp eq i64 %i.o, 62
  %i.q = add i64 %i.m, 2
  %spec.select.i = select i1 %i.p, i64 %i.q, i64 %i.m
  %i.r = and i64 %i.j, 62
  %i.s = icmp eq i64 %i.r, 62
  %i.t = add i64 %i.n, 2
  %.sroa.08.0.i = select i1 %i.s, i64 %i.t, i64 %i.n ; 2 uses
  %i.u = and i64 %.sroa.08.0.i, -64
  %i.v = sub i64 %spec.select.i, %i.u             ; 2 uses
  %i.w = lshr exact i64 %i.v, 1
  %i.x = lshr exact i64 %.sroa.08.0.i, 1
  %i.y = and i64 %i.x, 31
  %i.z = lshr i64 %i.v, 6
  %i.aa = add nuw nsw i64 %i.z, %i.y
  %i.ab = sub nsw i64 %i.w, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %.lobit, %bb.b ], [ %i.f, %bb.c ], [ %i.ab, %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3lenCsbDLrNlwBX3H_4smol.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %1, align 128, !range !253, !noundef !4
  switch i64 %i.b, label %default.unreachable18 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %i.c)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_RNvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB2_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %i.d)
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.f = load atomic i64, ptr %i.e acquire, align 128, !noalias !254
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8, !noalias !254
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %bb.d
  %.sroa.020.0.i = phi ptr [ %i.h, %bb.d ], [ %i.o, %.backedge.i ] ; 8 uses
  %.sroa.04.0.i = phi i64 [ %i.f, %bb.d ], [ %.sroa.04.0.be.i, %.backedge.i ] ; 5 uses
  %i.j = lshr i64 %.sroa.04.0.i, 1                ; 2 uses
  %i.k = and i64 %i.j, 31                         ; 5 uses
  %i.l = icmp eq i64 %i.k, 31
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !254
  %i.m = load atomic i64, ptr %i.e acquire, align 128, !noalias !254
  br label %.backedge.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i64 %.sroa.04.0.i, 2                 ; 2 uses
  %2 = trunc i64 %.sroa.04.0.i to i1
  br i1 %2, label %bb.k, label %bb.h

.backedge.i:                                      ; preds = %bb.p, %bb.o, %bb.f
  %.sroa.04.0.be.i = phi i64 [ %.sroa.01.0.i.i, %bb.p ], [ %i.m, %bb.f ], [ %i.w, %bb.o ]
  %i.o = load atomic ptr, ptr %i.g acquire, align 8, !noalias !254
  br label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !254
  store i64 0, ptr %i.a, align 8, !noalias !254
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.a) #20, !noalias !254, !srcloc !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  %i.p = load atomic i64, ptr %i.i monotonic, align 128, !noalias !254 ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp eq i64 %i.j, %i.q
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.unshifted.i = xor i64 %i.p, %.sroa.04.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.n, %i.s
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %3 = trunc i64 %i.p to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.g ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.u = icmp eq ptr %.sroa.020.0.i, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.t, align 1, !alias.scope !254
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.t, align 1, !alias.scope !254
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.n:                                             ; preds = %bb.k
  %i.v = cmpxchg weak ptr %i.e, i64 %.sroa.04.0.i, i64 %.sroa.0.0.i seq_cst acquire, align 8, !noalias !254 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.v, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !254
  %i.w = load atomic i64, ptr %i.e acquire, align 128, !noalias !254
  br label %.backedge.i

bb.p:                                             ; preds = %bb.n
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.v, 0
  br label %.backedge.i

bb.q:                                             ; preds = %bb.n
  %i.x = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.y = icmp eq i64 %i.x, 31
  br i1 %i.y, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 496 ; 2 uses
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8, !noalias !254 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.lr.ph.i.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !254
  %i.ac = load atomic ptr, ptr %i.z acquire, align 8, !noalias !254 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.lr.ph.i.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i: ; preds = %.lr.ph.i.i, %bb.r
  %.lcssa.i.i = phi ptr [ %i.aa, %bb.r ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %i.ae = and i64 %.sroa.0.0.i, -2
  %i.af = add i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 496
  %i.ah = load atomic ptr, ptr %i.ag monotonic, align 8, !noalias !254
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = zext i1 %i.ai to i64
  %spec.select44.i = or disjoint i64 %i.af, %i.aj
  store atomic ptr %.lcssa.i.i, ptr %i.g release, align 8, !noalias !254
  store atomic i64 %spec.select44.i, ptr %i.e release, align 128, !noalias !254
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %i.k ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8, !noalias !254
  %4 = trunc i64 %i.am to i1
  br i1 %4, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i45.i

.lr.ph.i45.i:                                     ; preds = %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i, %.lr.ph.i45.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !254
  %i.an = load atomic i64, ptr %i.al acquire, align 8, !noalias !254
  %5 = trunc i64 %i.an to i1
  br i1 %5, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i45.i

_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i: ; preds = %.lr.ph.i45.i, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE9wait_nextCsbDLrNlwBX3H_4smol.exit.i
  %i.ao = load ptr, ptr %i.ak, align 8, !noalias !254 ; 3 uses
  br label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %bb.u, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i
  %.sroa.0.03.i.i = phi i64 [ 0, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit.i ], [ %i.ax, %bb.u ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8, !noalias !254
  %i.as = and i64 %i.ar, 2
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %.lr.ph.i46.i.1

bb.s:                                             ; preds = %.lr.ph.i46.i
  %i.au = atomicrmw or ptr %i.aq, i64 4 acq_rel, align 8, !noalias !254
  %i.av = and i64 %i.au, 2
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %.lr.ph.i46.i.1

.lr.ph.i46.i.1:                                   ; preds = %bb.s, %.lr.ph.i46.i
  %i.ax = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8, !noalias !254
  %i.bb = and i64 %i.ba, 2
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i46.i.1
  %i.bd = atomicrmw or ptr %i.az, i64 4 acq_rel, align 8, !noalias !254
  %i.be = and i64 %i.bd, 2
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i46.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ax, 30
  br i1 %exitcond.not.i.i.1, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, label %.lr.ph.i46.i

bb.v:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %i.k ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !254
  %6 = trunc i64 %i.bi to i1
  br i1 %6, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %bb.v, %.lr.ph.i48.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !254
  %i.bj = load atomic i64, ptr %i.bh acquire, align 8, !noalias !254
  %7 = trunc i64 %i.bj to i1
  br i1 %7, label %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i, label %.lr.ph.i48.i

_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i: ; preds = %.lr.ph.i48.i, %bb.v
  %i.bk = load ptr, ptr %i.bg, align 8, !noalias !254 ; 4 uses
  %i.bl = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !254
  %i.bm = and i64 %i.bl, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.w

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i: ; preds = %bb.y, %bb.u, %bb.w
  %.ph.i = phi ptr [ %i.bk, %bb.w ], [ %i.ao, %bb.u ], [ %i.bk, %bb.y ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.i, i64 noundef 504, i64 noundef 8) #20, !noalias !254
  br label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i

_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.x, %bb.s, %bb.t, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i
  %i.bo = phi ptr [ %.ph.i, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i ], [ %i.bk, %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i ], [ %i.ao, %bb.s ], [ %i.ao, %bb.t ], [ %i.bk, %bb.x ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !254
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit

bb.w:                                             ; preds = %_RNvMNtCseSXqeRWftQm_16concurrent_queue9unboundedINtB2_4SlotNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE10wait_writeCsbDLrNlwBX3H_4smol.exit49.i
  %i.bq = icmp samesign ult i64 %i.k, 29
  br i1 %i.bq, label %.lr.ph.i51.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i

.lr.ph.i51.i:                                     ; preds = %bb.w, %bb.y
  %.sroa.0.03.i52.i = phi i64 [ %i.br, %bb.y ], [ %i.x, %bb.w ] ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.0.03.i52.i, 1    ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.020.0.i, i64 %.sroa.0.03.i52.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8, !noalias !254
  %i.bv = and i64 %i.bu, 2
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i51.i
  %i.bx = atomicrmw or ptr %i.bt, i64 4 acq_rel, align 8, !noalias !254
  %i.by = and i64 %i.bx, 2
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i51.i
  %exitcond.not.i53.i = icmp eq i64 %i.br, 30
  br i1 %exitcond.not.i53.i, label %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.sink.split.i, label %.lr.ph.i51.i

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.l, %bb.m, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i
  %.sink.i = phi i8 [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %_RNvMs_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB4_5BlockNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE7destroyCsbDLrNlwBX3H_4smol.exit.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !254
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE3popCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs2_CseSXqeRWftQm_16concurrent_queueINtB5_15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 128, !range !253, !noundef !4
  switch i64 %i.b, label %default.unreachable24 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable24:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { i64, ptr } @_RNvMNtCseSXqeRWftQm_16concurrent_queue6singleINtB2_6SingleNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull %1)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = tail call { i64, ptr } @_RINvMNtCseSXqeRWftQm_16concurrent_queue7boundedINtB3_7BoundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE12push_or_elseNCNvB2_4push0ECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 128 %i.e, ptr noundef nonnull %1, ptr noundef nonnull align 128 %i.e)
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8
  %2 = trunc i64 %i.h to i1
  br i1 %2, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.01.084.i = phi i64 [ %i.h, %.lr.ph.i ], [ %.sroa.01.0.be.i, %.backedge.i ] ; 3 uses
  %.sroa.09.083.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 2 uses
  %.sroa.0.04182.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0.041.be.i, %.backedge.i ] ; 4 uses
  %i.l = lshr exact i64 %.sroa.01.084.i, 1
  %i.m = and i64 %i.l, 31                         ; 3 uses
  %i.n = icmp eq i64 %i.m, 31
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %bb.i unwind label %.loopexit.i

bb.g:                                             ; preds = %bb.e
  %.not71.i = icmp eq i64 %i.m, 30                ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.04182.i, null
  %or.cond.i = select i1 %.not71.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.i:                                             ; preds = %bb.f
  %i.o = load atomic i64, ptr %i.g acquire, align 128
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.u, %bb.s, %bb.i
  %.sroa.0.041.be.i = phi ptr [ %.sroa.0.3.i, %bb.u ], [ %.sroa.0.04182.i, %bb.i ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, %bb.s ] ; 2 uses
  %.sroa.01.0.be.i = phi i64 [ %.sroa.01.0.i.i, %bb.u ], [ %i.o, %bb.i ], [ %i.w, %bb.s ] ; 2 uses
  %i.p = load atomic ptr, ptr %i.i acquire, align 8
  %3 = trunc i64 %.sroa.01.0.be.i to i1
  br i1 %3, label %.thread57.i, label %bb.e

bb.j:                                             ; preds = %bb.k, %bb.g
  %.sroa.0.3.i = phi ptr [ %.sroa.0.04182.i, %bb.g ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i, %bb.k ] ; 8 uses
  %i.q = icmp eq ptr %.sroa.09.083.i, null
  br i1 %i.q, label %bb.m, label %bb.t

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i = tail call align 8 dereferenceable_or_null(504) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 504, i64 8) ; 2 uses
  %i.r = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed100.i, null
  br i1 %i.r, label %bb.l, label %bb.j, !prof !152

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #25
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i = tail call align 8 dereferenceable_or_null(504) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 504, i64 8) ; 5 uses
  %i.s = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.s, label %bb.n, label %bb.o, !prof !152

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #25
          to label %.noexc29.i unwind label %.loopexit.split-lp.i

.noexc29.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.t = cmpxchg ptr %i.i, ptr null, ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i release monotonic, align 8
  %i.u = extractvalue { ptr, i1 } %i.t, 1
  br i1 %i.u, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = icmp eq ptr %.sroa.0.3.i, null
  br i1 %i.v, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.3.i, i64 noundef 504, i64 noundef 8) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  store atomic ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, ptr %i.k release, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.w = load atomic i64, ptr %i.g acquire, align 128
  br label %.backedge.i

bb.t:                                             ; preds = %bb.r, %bb.j
  %.sroa.09.2.i = phi ptr [ %.sroa.09.083.i, %bb.j ], [ %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, %bb.r ] ; 4 uses
  %i.x = add i64 %.sroa.01.084.i, 2
  %i.y = cmpxchg weak ptr %i.g, i64 %.sroa.01.084.i, i64 %i.x seq_cst acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.y, 0
  br label %.backedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %.not71.i, label %bb.w, label %.thread64.i

.thread64.i:                                      ; preds = %bb.v
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.2.i, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = atomicrmw or ptr %i.aa, i64 1 release, align 8 ; 0 uses
  br label %.thread57.i

bb.w:                                             ; preds = %bb.v
  %.not21.i = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not21.i, label %bb.x, label %bb.z, !prof !152

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  store atomic ptr %.sroa.0.3.i, ptr %i.i release, align 8
  %i.ac = atomicrmw add ptr %i.g, i64 2 release, align 8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 496
  store atomic ptr %.sroa.0.3.i, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 480
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 488
  %i.ag = atomicrmw or ptr %i.af, i64 1 release, align 8 ; 0 uses
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %bb.n, %bb.l
  %.sroa.0.1.ph.ph.i = phi ptr [ null, %bb.l ], [ %.sroa.0.3.i, %bb.n ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.1.ph.i = phi ptr [ %.sroa.0.04182.i, %.loopexit.i ], [ %.sroa.0.1.ph.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.0.1.ph.i, null
  br i1 %i.ah, label %.thread.i, label %.thread65.i

.thread65.i:                                      ; preds = %bb.aa
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.ph.i, i64 noundef 504, i64 noundef 8) #20
  br label %.thread.i

bb.ab:                                            ; preds = %.thread.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread57.i:                                      ; preds = %.backedge.i, %.thread64.i
  %.sroa.0.063.i = phi i64 [ 2, %.thread64.i ], [ 1, %.backedge.i ] ; 2 uses
  %.sroa.0.461.i = phi ptr [ %.sroa.0.3.i, %.thread64.i ], [ %.sroa.0.041.be.i, %.backedge.i ] ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.461.i, null
  br i1 %i.aj, label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread57.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.461.i, i64 noundef 504, i64 noundef 8) #20
  br label %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit

bb.ad:                                            ; preds = %.thread.i
  resume { ptr, i32 } %.pn49.i

.thread.i:                                        ; preds = %.thread65.i, %bb.aa, %bb.h
  %.pn49.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.h ], [ %lpad.phi.i, %bb.aa ], [ %lpad.phi.i, %.thread65.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #22
          to label %bb.ad unwind label %bb.ab

_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.d, %bb.z, %.thread57.i, %bb.ac
  %.sroa.0.062.i = phi i64 [ 2, %bb.z ], [ %.sroa.0.063.i, %.thread57.i ], [ %.sroa.0.063.i, %bb.ac ], [ 1, %bb.d ]
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.062.i, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %1, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit, %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.al, %_RNvMs0_NtCseSXqeRWftQm_16concurrent_queue9unboundedINtB5_9UnboundedNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableE4pushCsbDLrNlwBX3H_4smol.exit ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs9_NtCsfO0Hesl1pIe_10async_task8runnableNtB5_8Runnable3runCsbDLrNlwBX3H_4smol(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !145, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1d_4sync3ArcINtCseSXqeRWftQm_16concurrent_queue15ConcurrentQueueNtNtCsfO0Hesl1pIe_10async_task8runnable8RunnableEEEE3newCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !258
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !258
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !258
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol.exit.i
end_hunk_1
