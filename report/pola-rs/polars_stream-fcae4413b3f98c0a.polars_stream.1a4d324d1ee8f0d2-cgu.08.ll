Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.08?download=true
inline.NumInlined: 6106
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMsm_NtCscgRAwXFJnXP_4core5arrayAhj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninithEEINtBN_7WrappedB1r_hNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2x_6CursorhKBz_E10write_impl0EECs2g09Ig8GZd6_13polars_stream:bb.a
.noexc10:                                         ; preds = %.noexc9
  %i.k = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %bb.c unwind label %bb.b, !dbg !7496

bb.b:                                             ; preds = %.noexc10, %.noexc9, %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2e_6CursorhKBS_E10write_impl0EENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj4_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2w_6CursorhKB1a_E10write_impl0EEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !7497

bb.c:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7498, !noalias !7489
  %.sroa.6.0.insert.ext.i = zext i8 %i.k to i32, !dbg !7499
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24, !dbg !7499
  %.sroa.5.0.insert.ext.i = zext i8 %i.j to i32, !dbg !7499
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16, !dbg !7499
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i, %.sroa.5.0.insert.shift.i, !dbg !7499
  %.sroa.4.0.insert.ext.i = zext i8 %i.i to i32, !dbg !7499
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8, !dbg !7499
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i, !dbg !7499
  %.sroa.0.0.insert.ext.i = zext i8 %i.h to i32, !dbg !7499
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i, !dbg !7499
  call void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2e_6CursorhKBS_E10write_impl0EENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !7500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7502
  ret i32 %.sroa.0.0.insert.insert.i, !dbg !7503

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj4_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2w_6CursorhKB1a_E10write_impl0EEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.l, !dbg !7504

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7504
  unreachable, !dbg !7504
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RINvMsm_NtCscgRAwXFJnXP_4core5arrayAhj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninithEEINtBN_7WrappedB1r_hNvMs1_B1u_B1r_3newEECs2g09Ig8GZd6_13polars_stream(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7505 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7532
  store i32 %0, ptr %i.d, align 4, !dbg !7533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7534
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !7535
  store ptr %i.d, ptr %i.c, align 8, !dbg !7536
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7536
  store ptr %i.e, ptr %i.f, align 8, !dbg !7536
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7536
  store ptr %i.a, ptr %i.g, align 8, !dbg !7536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7530
  store ptr %i.c, ptr %i.b, align 8, !noalias !7531
  %i.h = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1v_B1s_3newEEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.b, !dbg !7537

.noexc:                                           ; preds = %bb.a
  %i.i = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1v_B1s_3newEEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc9 unwind label %bb.b, !dbg !7537

.noexc9:                                          ; preds = %.noexc
  %i.j = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1v_B1s_3newEEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc10 unwind label %bb.b, !dbg !7537

.noexc10:                                         ; preds = %.noexc9
  %i.k = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1v_B1s_3newEEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %bb.c unwind label %bb.b, !dbg !7537

bb.b:                                             ; preds = %.noexc10, %.noexc9, %.noexc, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1u_B1r_3newEENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj4_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1M_B1J_3newEEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !7538

bb.c:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7539, !noalias !7530
  %.sroa.6.0.insert.ext.i = zext i8 %i.k to i32, !dbg !7540
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24, !dbg !7540
  %.sroa.5.0.insert.ext.i = zext i8 %i.j to i32, !dbg !7540
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16, !dbg !7540
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i, %.sroa.5.0.insert.shift.i, !dbg !7540
  %.sroa.4.0.insert.ext.i = zext i8 %i.i to i32, !dbg !7540
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8, !dbg !7540
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i, !dbg !7540
  %.sroa.0.0.insert.ext.i = zext i8 %i.h to i32, !dbg !7540
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i, !dbg !7540
  call void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj4_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1u_B1r_3newEENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !7541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7543
  ret i32 %.sroa.0.0.insert.insert.i, !dbg !7544

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj4_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNvMs1_B1M_B1J_3newEEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.l, !dbg !7545

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7545
  unreachable, !dbg !7545
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvMsm_NtCscgRAwXFJnXP_4core5arrayAhj8_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtNtB8_3mem12maybe_uninit11MaybeUninithEEINtBN_7WrappedB1r_hNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2x_6CursorhKBz_E10write_impl0EECs2g09Ig8GZd6_13polars_stream(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7546 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7573
  store i64 %0, ptr %i.d, align 8, !dbg !7574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7575
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7576
  store ptr %i.d, ptr %i.c, align 8, !dbg !7577
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7577
  store ptr %i.e, ptr %i.f, align 8, !dbg !7577
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7577
  store ptr %i.a, ptr %i.g, align 8, !dbg !7577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7571
  store ptr %i.c, ptr %i.b, align 8, !noalias !7572
  %i.h = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.b, !dbg !7578

.noexc:                                           ; preds = %bb.a
  %i.i = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc9 unwind label %bb.b, !dbg !7578

.noexc9:                                          ; preds = %.noexc
  %i.j = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc10 unwind label %bb.b, !dbg !7578

.noexc10:                                         ; preds = %.noexc9
  %i.k = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %.noexc11 unwind label %bb.b, !dbg !7578

.noexc11:                                         ; preds = %.noexc10
  %i.l = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 4)
          to label %.noexc12 unwind label %bb.b, !dbg !7578

.noexc12:                                         ; preds = %.noexc11
  %i.m = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 5)
          to label %.noexc13 unwind label %bb.b, !dbg !7578

.noexc13:                                         ; preds = %.noexc12
  %i.n = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 6)
          to label %.noexc14 unwind label %bb.b, !dbg !7578

.noexc14:                                         ; preds = %.noexc13
  %i.o = invoke i8 @_RNvXs0_NtNtCscgRAwXFJnXP_4core5array5drainQINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2f_6CursorhKBT_E10write_impl0EEINtNtB11_8function5FnMutTjEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 7)
          to label %bb.c unwind label %bb.b, !dbg !7578

bb.b:                                             ; preds = %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %.noexc, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2e_6CursorhKBS_E10write_impl0EENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj8_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2w_6CursorhKB1a_E10write_impl0EEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !7579

bb.c:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7580, !noalias !7571
  %.sroa.10.0.insert.ext.i = zext i8 %i.o to i64, !dbg !7581
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 56, !dbg !7581
  %.sroa.9.0.insert.ext.i = zext i8 %i.n to i64, !dbg !7581
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48, !dbg !7581
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.shift.i, %.sroa.9.0.insert.shift.i, !dbg !7581
  %.sroa.8.0.insert.ext.i = zext i8 %i.m to i64, !dbg !7581
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40, !dbg !7581
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i, !dbg !7581
  %.sroa.7.0.insert.ext.i = zext i8 %i.l to i64, !dbg !7581
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32, !dbg !7581
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.7.0.insert.shift.i, !dbg !7581
  %.sroa.6.0.insert.ext.i = zext i8 %i.k to i64, !dbg !7581
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24, !dbg !7581
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i, !dbg !7581
  %.sroa.5.0.insert.ext.i = zext i8 %i.j to i64, !dbg !7581
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16, !dbg !7581
  %.sroa.4.0.insert.ext.i = zext i8 %i.i to i64, !dbg !7581
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8, !dbg !7581
  %.sroa.4.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.5.0.insert.shift.i, !dbg !7581
  %.sroa.0.0.insert.ext.i = zext i8 %i.h to i64, !dbg !7581
  %.sroa.0.0.insert.mask.i = or disjoint i64 %.sroa.4.0.insert.mask.i, %.sroa.4.0.insert.shift.i, !dbg !7581
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i, !dbg !7581
  call void @_RNvXs1_NtNtCscgRAwXFJnXP_4core5array5drainINtB5_5DrainhKj8_INtNtNtB9_3ops9try_trait7WrappedINtNtNtB9_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2e_6CursorhKBS_E10write_impl0EENtNtB10_4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !7582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7584
  ret i64 %.sroa.0.0.insert.insert.i, !dbg !7585

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array5drain5DrainhKj8_INtNtNtB4_3ops9try_trait7WrappedINtNtNtB4_3mem12maybe_uninit11MaybeUninithEhNCNvMCs2ENAkwcOlrd_17array_init_cursorINtB2w_6CursorhKB1a_E10write_impl0EEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.p, !dbg !7586

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7586
  unreachable, !dbg !7586
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayj1_ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7587 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b, !dbg !7607

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7607
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.g, !dbg !7608

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit2.i unwind label %bb.e, !dbg !7609

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  %i.d = load ptr, ptr %1, align 8, !dbg !7610, !alias.scope !7605, !noundef !3602
  %i.e = icmp eq ptr %i.d, null, !dbg !7610
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.d, !dbg !7610

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.g, !dbg !7611

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit2.i: ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !dbg !7612, !alias.scope !7606, !noundef !3602
  %i.h = icmp eq ptr %i.g, null, !dbg !7612
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs2g09Ig8GZd6_13polars_stream.exit, label %bb.f, !dbg !7612

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit2.i
  tail call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7613
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7612

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7607
  unreachable, !dbg !7607

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit.i
  resume { ptr, i32 } %.pn.i, !dbg !7607

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECs2g09Ig8GZd6_13polars_stream.exit2.i
  ret void, !dbg !7614
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !135 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !7618, !range !3697, !noundef !3602
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !7618
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !7618

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream.exit, %bb.a
  ret void, !dbg !7618

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !7619

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.e, !dbg !7620

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7619
  unreachable, !dbg !7619

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !7619

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !7621
  br label %bb.b, !dbg !7618
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !138 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !7628, !range !3893, !noundef !3602
  %switch = icmp slt i64 %i.a, -9223372036854775806, !dbg !7628
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !7628

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i.i
  ret void, !dbg !7628

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.c, !dbg !7629

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i unwind label %bb.d, !dbg !7630

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7629
  unreachable, !dbg !7629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !7629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !7631
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7632
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEEB16_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7633 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !7670, !noundef !3602
  %i.b = icmp eq ptr %i.a, null, !dbg !7670
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit, label %bb.b, !dbg !7670

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !7670

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs3_NtNtCsidoPH4Qgqxm_12polars_async10primitives9connectorINtB5_11ReceiverExtNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1k_4pipe11PipeMetricsEEENtNtNtB26_3ops4drop4Drop4dropB1k_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.c, !dbg !7671

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7662), !dbg !7671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7663), !dbg !7672
  %i.d = load ptr, ptr %0, align 8, !dbg !7673, !alias.scope !7664, !nonnull !3602, !noundef !3602
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !7674, !noalias !7665
  %i.f = icmp eq i64 %i.e, 1, !dbg !7675
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionIBH_NtNtB2n_4pipe11PipeMetricsEEEEEB2n_.exit.i.i, !dbg !7675

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !7676
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCscgRAwXFJnXP_4core6option6OptionIBx_NtNtB1P_4pipe11PipeMetricsEEEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionIBH_NtNtB2n_4pipe11PipeMetricsEEEEEB2n_.exit.i.i unwind label %bb.g, !dbg !7677

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7666), !dbg !7671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7667), !dbg !7678
  %i.g = load ptr, ptr %0, align 8, !dbg !7679, !alias.scope !7668, !nonnull !3602, !noundef !3602
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !7680, !noalias !7669
  %i.i = icmp eq i64 %i.h, 1, !dbg !7681
  br i1 %i.i, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit, !dbg !7681

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !7682
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCscgRAwXFJnXP_4core6option6OptionIBx_NtNtB1P_4pipe11PipeMetricsEEEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46, !dbg !7683
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit, !dbg !7683

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7671
  unreachable, !dbg !7671

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionIBH_NtNtB2n_4pipe11PipeMetricsEEEEEB2n_.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c, !dbg !7671
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !152 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !7688, !range !3697, !noundef !3602
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !7688
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !7688

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs2g09Ig8GZd6_13polars_stream.exit, %bb.a
  ret void, !dbg !7688

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !7689

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.e, !dbg !7690

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !7689
  unreachable, !dbg !7689

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !7689

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !7691
  br label %bb.b, !dbg !7688
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7692 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7725), !dbg !7732
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7733 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !7733, !alias.scope !7725, !nonnull !3602, !noundef !3602 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7734
  %i.d = load i8, ptr %i.c, align 16, !dbg !7734, !range !3783, !noalias !7725, !noundef !3602
  %i.e = icmp eq i8 %i.d, 23, !dbg !7735
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit, !dbg !7735, !prof !3663

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4drop9drop_slowNtNtB6_9datatypes10BinaryTypeEB6_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #46
          to label %._RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit_crit_edge unwind label %bb.c, !dbg !7736

._RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !dbg !7737, !alias.scope !7726
  br label %_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit, !dbg !7736

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7727), !dbg !7732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7728), !dbg !7738
  %i.g = load ptr, ptr %i.a, align 8, !dbg !7739, !alias.scope !7729, !nonnull !3602, !noundef !3602
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !7740, !noalias !7729
  %i.i = icmp eq i64 %i.h, 1, !dbg !7741
  br i1 %i.i, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7741

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !7742
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.i, !dbg !7743

_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit_crit_edge, %bb.a
  %i.j = phi ptr [ %.pre, %._RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit_crit_edge ], [ %i.b, %bb.a ], !dbg !7737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7730), !dbg !7732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7731), !dbg !7744
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !dbg !7745, !noalias !7726
  %i.l = icmp eq i64 %i.k, 1, !dbg !7746
  br i1 %i.l, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2g09Ig8GZd6_13polars_stream.exit4, !dbg !7746

bb.e:                                             ; preds = %_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream.exit
end_hunk_0
