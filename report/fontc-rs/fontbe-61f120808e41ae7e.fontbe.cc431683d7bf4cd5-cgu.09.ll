Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.09?download=true
inline.NumInlined: 1867
inline.NumDeleted: 1127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBX_INtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeBX_EuNCNvYNtNtNtB11_8features4kern19KerningFragmentWorkINtB3s_4WorkNtBZ_7ContextBX_NtNtB11_5error5ErrorE12write_access0NCIB2Q_B3p_TB3p_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6I_7HashSetB3p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1Q_7collect6ExtendB3p_E6extendINtB2S_3MapBI_B4q_EE0NCINvNvB1M_8for_each4callB6r_NCINvXs1i_NtB6K_3mapINtB9R_7HashMapB3p_uB7v_EIB8k_B6r_E6extendIB8U_B8T_B6z_EE0E0E0E0EB11_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !974
  %.not.not = icmp eq ptr %i.g, %i.d
  br i1 %.not.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1j_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1t_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBX_INtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeBX_EuNCNvYNtNtNtB11_8features5marks8MarkWorkINtB3s_4WorkNtBZ_7ContextBX_NtNtB11_5error5ErrorE12write_access0NCIB2Q_B3p_TB3p_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6x_7HashSetB3p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1Q_7collect6ExtendB3p_E6extendINtB2S_3MapBI_B4q_EE0NCINvNvB1M_8for_each4callB6g_NCINvXs1i_NtB6z_3mapINtB9G_7HashMapB3p_uB7k_EIB89_B6g_E6extendIB8J_B8I_B6o_EE0E0E0E0EB11_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not4 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1j_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  store i64 1, ptr %i.a, align 8, !noalias !985
  %i.h = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration10AccessTypeNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.d       ; 0 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1j_.exit: ; preds = %bb.c, %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.l, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !984
  %.not.not = icmp eq ptr %i.g, %i.d
  br i1 %.not.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1j_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEEB1t_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1X_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB23_8adapters5chain5ChainBI_BI_EE0E0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !992, !noalias !993, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9 = load i64, ptr %i.g, align 8, !alias.scope !992, !noalias !993
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !992, !noalias !993
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.m, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.n, align 8, !noundef !4
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.o = phi i64 [ %.promoted9, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.s = add i64 %i.o, 1                          ; 2 uses
  %.not.not = icmp eq ptr %i.q, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1X_8for_each4callBX_NCINvMsk_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB23_8adapters5chain5ChainBI_BI_EE0E0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not4 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1002, !noalias !1003, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted5 = load i64, ptr %i.g, align 8, !alias.scope !1002, !noalias !1003
  br label %bb.b

._RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit_crit_edge: ; preds = %bb.b
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1002, !noalias !1003
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit: ; preds = %._RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit_crit_edge, %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.l = phi i64 [ %.promoted5, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.p = add i64 %i.l, 1                          ; 2 uses
  %.not.not = icmp eq ptr %i.n, %i.c
  br i1 %.not.not, label %._RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap14EncodingRecordEECshxhuDJfZv4T_6fontbe.exit_crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropsENCINvNtNtB1Z_8adapters3map12map_try_foldBX_sB2X_INtNtB21_6result6ResultB2X_zENCNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4W_14MetricsBuilder5build0NCINvNtB8_16in_place_collect24write_in_place_with_dropsE0E0B4l_EB4Y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 9 uses
  %.not12 = icmp eq ptr %.promoted, %i.b
  br i1 %.not12, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.b to i64
  %i.e = ptrtoaddr ptr %.promoted to i64
  %i.f = add i64 %i.d, -4
  %i.g = sub i64 %i.f, %i.e                       ; 4 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 144
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = lshr i64 %i.g, 1
  %i.k = and i64 %i.j, 9223372036854775806
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 2
  %i.n = getelementptr i8, ptr %.promoted, i64 2
  %i.o = and i64 %i.g, -4
  %i.p = getelementptr i8, ptr %.promoted, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %bound0 = icmp ult ptr %2, %i.q
  %bound1 = icmp ult ptr %i.n, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i64 %i.i, 7                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 8, i64 %i.r
  %n.vec = sub nsw i64 %i.i, %i.t                 ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %i.v = getelementptr i8, ptr %2, i64 %i.u
  %i.w = shl i64 %n.vec, 2
  %i.x = getelementptr i8, ptr %.promoted, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.y  ; 2 uses
  %i.z = shl i64 %index, 2                        ; 2 uses
  %next.gep21 = getelementptr i8, ptr %.promoted, i64 %i.z
  %i.aa = getelementptr i8, ptr %.promoted, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.ac = getelementptr i8, ptr %i.aa, i64 18
  %wide.vec = load <8 x i16>, ptr %i.ab, align 2, !alias.scope !1009
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x i16>, ptr %i.ac, align 2, !alias.scope !1009
  %strided.vec24 = shufflevector <8 x i16> %wide.vec23, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ad = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep, align 2, !alias.scope !1010, !noalias !1009
  store <4 x i16> %strided.vec24, ptr %i.ad, align 2, !alias.scope !1010, !noalias !1009
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph.preheader26, label %vector.body, !llvm.loop !1007

.lr.ph.preheader26:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.sroa.4.013.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph.preheader ], [ %i.x, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.sroa.4.013 = phi ptr [ %i.aj, %.lr.ph ], [ %.sroa.4.013.ph, %.lr.ph.preheader26 ] ; 2 uses
  %i.af = phi ptr [ %i.ai, %.lr.ph ], [ %.ph, %.lr.ph.preheader26 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  store i16 %i.ah, ptr %.sroa.4.013, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1008

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.ai, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.aj, %._crit_edge ], [ %2, %bb.a ]
  %i.ak = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.al = insertvalue { ptr, ptr } %i.ak, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNtNtB1Z_8adapters3map8map_foldBX_TTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtBa_6string6StringEuNvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringNCINvNvB1T_8for_each4callB3x_NCINvMsk_B8_INtB8_3VecB3x_E14extend_trustedINtB30_3MapINtNtB32_5chain5ChainBI_INtNtB32_6cloned6ClonedINtNtNtB21_5slice4iter4IterBX_EEEB4J_EE0E0E0EB4P_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not4 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.h, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  invoke void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringEuNvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringNCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB2o_NCINvMsk_NtB3h_3vecINtB69_3VecB2o_E14extend_trustedINtBT_3MapINtNtBV_5chain5ChainINtNtB69_9into_iter8IntoIterB1t_EINtNtBV_6cloned6ClonedINtNtNtBb_5slice4iter4IterB1t_EEEB3R_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB3X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.not = icmp eq ptr %i.h, %i.e
  br i1 %.not.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.m

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1J_8adapters3map8map_foldBX_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB4i_11MvarBuilder5builds_0NCINvNvB1D_8for_each4callB3g_NCINvMsk_B8_INtB8_3VecB3g_E14extend_trustedINtB2J_3MapBI_B4d_EE0E0E0EB4k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not25 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1021, !nonnull !4, !align !8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted26 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit
  %.val1123 = phi i64 [ %.promoted26, %.lr.ph ], [ %i.q, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.l = invoke i48 @_RNvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations14common_builderINtB2_17VarStoreRemappingNtNtB6_6layout14VariationIndexE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, i32 noundef %.sroa.4.0.extract.trunc.i.i)
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.m = trunc i48 %i.l to i1
  br i1 %i.m, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.c
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit: ; preds = %.noexc
  %.sroa.08.4.extract.shift.i.i = lshr i48 %i.l, 32
  %.sroa.08.4.extract.trunc.i.i = zext nneg i48 %.sroa.08.4.extract.shift.i.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.08.4.extract.trunc.i.i, 48
  %i.n = shl i48 %i.l, 16
  %i.o = and i48 %i.n, -4294967296
  %.sroa.24.0.insert.shift.i.i = zext i48 %i.o to i64
  %.sroa.24.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.24.0.insert.shift.i.i
  %.sroa.03.0.insert.ext.i.i = and i64 %.sroa.0.0.copyload, 4294967295
  %.sroa.03.0.insert.insert.i.i = or disjoint i64 %.sroa.24.0.insert.insert.i.i, %.sroa.03.0.insert.ext.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.val1123
  store i64 %.sroa.03.0.insert.insert.i.i, ptr %i.p, align 2, !noalias !1024
  %i.q = add i64 %.val1123, 1                     ; 2 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1024
  %.not.not = icmp eq ptr %i.k, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCsbZq13ASDQ8l_10font_types3tag3TagmENtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecorduNCNvMNtCshxhuDJfZv4T_6fontbe4mvarNtB2B_11MvarBuilder5builds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4B_3VecB1z_E14extend_trustedINtB4_3MapINtNtB4B_9into_iter8IntoIterBU_EB2w_EE0E0E0B2D_.exit, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
