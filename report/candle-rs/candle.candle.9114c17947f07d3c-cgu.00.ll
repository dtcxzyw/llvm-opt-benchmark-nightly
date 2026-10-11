Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.00?download=true
inline.NumInlined: 1694
inline.NumDeleted: 511
begin_hunk_0_@_RNvNvMs1u_CscsgjCEAuSgO_6candleNtNtB8_17cuda_is_available7MakeDef9__PYO3_DEF10trampoline:bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNvMs1v_CscsgjCEAuSgO_6candleNtNtB8_14has_accelerate7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscsgjCEAuSgO_6candle27___pyfunction_has_accelerate, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNvMs1w_CscsgjCEAuSgO_6candleNtNtB8_7has_mkl7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscsgjCEAuSgO_6candle20___pyfunction_has_mkl, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNvMs1x_CscsgjCEAuSgO_6candleNtNtB8_15get_num_threads7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscsgjCEAuSgO_6candle28___pyfunction_get_num_threads, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNvMs1y_CscsgjCEAuSgO_6candleNtNtB8_7softmax7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCscsgjCEAuSgO_6candle20___pyfunction_softmax, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNvMs1z_CscsgjCEAuSgO_6candleNtNtB8_10avg_pool2d7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCscsgjCEAuSgO_6candle23___pyfunction_avg_pool2d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMsP_CscsgjCEAuSgO_6candleNtB7_8PyTensor11___getitem__15extract_indexer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 16 uses
  %i.t = alloca [56 x i8], align 8                ; 9 uses
  %i.u = alloca [56 x i8], align 8                ; 12 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.w = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @_RNvXsn_NtNtNtCs4dfyxXSEGwW_4pyo311conversions3std3numiNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noundef nonnull %i.w)
  %i.x = load i64, ptr %i.u, align 8, !range !6, !noundef !4 ; 4 uses
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2916, !noundef !4
  %i.ab = icmp eq ptr %i.aa, @PySlice_Type
  br i1 %i.ab, label %bb.aj, label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ad, ptr %i.f, align 8, !noalias !2918
  store i64 %2, ptr %i.e, align 8, !noalias !2918
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, %4
  br i1 %i.af, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !2917, !noalias !2919, !noundef !4
  %i.ai = add i64 %i.ah, %i.ad                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.split.i, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c
  %.sroa.0.045.i = phi i64 [ %i.ai, %bb.e ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ak = icmp ult i64 %2, %4
  br i1 %i.ak, label %bb.f, label %.invoke

bb.f:                                             ; preds = %.thread.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2917, !noalias !2919, !noundef !4
  %.not.i = icmp slt i64 %.sroa.0.045.i, %i.am
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread, label %.split.i

.invoke:                                          ; preds = %.thread.i, %bb.d
  %i.an = phi ptr [ @218, %bb.d ], [ @219, %.thread.i ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #26
  unreachable

.split.i:                                         ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2918
  store ptr %i.e, ptr %i.d, align 8, !noalias !2918
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2918
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.ao, align 8, !noalias !2918
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsj_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2918
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @220, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2918
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !2920
  %i.ap = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 24, i64 noundef 8) #23, !noalias !2920 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread, !prof !13

bb.g:                                             ; preds = %.split.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc.i unwind label %bb.h, !noalias !2918

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs_NtCs4dfyxXSEGwW_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyValueErrorNtNtCsgCecv3eZDcN_5alloc6string6StringE0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.i, !noalias !2918

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !2918
  unreachable

.body233:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit, %bb.cq
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  %6 = icmp eq i64 %i.x, 0
  br i1 %6, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.body233.thread438, %.body233.thread435, %.body233
  %.pn208437 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body233.thread435 ], [ %.pn204, %.body233 ], [ %lpad.thr_comm, %.body233.thread438 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4dfyxXSEGwW_4pyo33err5PyErrECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.at)
          to label %common.resume unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread: ; preds = %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  %.sroa.480.sroa.6.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @209, ptr %.sroa.480.sroa.6.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  %.sroa.480.sroa.7.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.480.sroa.7.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = add nuw nsw i64 %2, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aw, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.045.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.av, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241: ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  %7 = icmp eq i64 %i.x, 0
  br i1 %7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread449, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread440, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  %i.ay = load i64, ptr %i.ax, align 8, !range !6, !alias.scope !2925, !noundef !4
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !2925, !noundef !4 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.val1.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2925, !nonnull !4, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !2925 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.bc(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.o unwind label %bb.q, !noalias !2925

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !7, !invariant.load !4, !noalias !2925 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !8, !invariant.load !4, !noalias !2925
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #23, !noalias !2925
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.q:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !7, !invariant.load !4, !noalias !2925 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !8, !invariant.load !4, !noalias !2925
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #23, !noalias !2925
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.j, %.body233, %bb.ab, %bb.ac, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %i.cb, %bb.ac ], [ %.pn204, %.body233 ], [ %.pn208437, %bb.j ], [ %i.ar, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.l
  %i.bo = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !2925, !noundef !4
  %i.bp = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bp, label %bb.u, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  call void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val1.i.i.i.i), !noalias !2925
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.u:                                             ; preds = %bb.s
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i.i.i.i) #23, !noalias !2925
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  %8 = icmp eq i64 %i.x, 0
  br i1 %8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread450, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread441, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  %i.br = load i64, ptr %i.bq, align 8, !range !6, !alias.scope !2930, !noundef !4
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i267 = load ptr, ptr %i.bt, align 8, !alias.scope !2930, !noundef !4 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.val1.i.i.i.i268 = load ptr, ptr %i.bu, align 8, !alias.scope !2930, !nonnull !4, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i269 = icmp eq ptr %.val.i.i.i.i267, null
  br i1 %.not.i.i.i.i.i269, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = load ptr, ptr %.val1.i.i.i.i268, align 8, !invariant.load !4, !noalias !2930 ; 2 uses
  %.not.i.i.i.i.i.i270 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i270, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void %i.bv(ptr noundef nonnull %.val.i.i.i.i267)
          to label %bb.z unwind label %bb.ab, !noalias !2930

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !7, !invariant.load !4, !noalias !2930 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !8, !invariant.load !4, !noalias !2930
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i267, i64 noundef range(i64 1, 0) %i.bx, i64 noundef range(i64 1, 536870913) %i.ca) #23, !noalias !2930
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.ab:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !7, !invariant.load !4, !noalias !2930 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !range !8, !invariant.load !4, !noalias !2930
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i267, i64 noundef range(i64 1, 0) %i.cd, i64 noundef range(i64 1, 536870913) %i.cg) #23, !noalias !2930
  br label %common.resume

bb.ad:                                            ; preds = %bb.w
  %i.ch = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i.i.i.i272 = load i64, ptr %i.ch, align 8, !noalias !2930, !noundef !4
  %i.ci = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i272, 0
  br i1 %i.ci, label %bb.af, label %bb.ae, !prof !5

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val1.i.i.i.i268), !noalias !2930
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.af:                                            ; preds = %bb.ad
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i.i.i.i268) #23, !noalias !2930
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.ag:                                            ; preds = %bb.b
  tail call void @_Py_IncRef(ptr noundef nonnull @PySlice_Type) #23, !noalias !2916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2931
  invoke void @_RNvXs1_NtNtCs4dfyxXSEGwW_4pyo37pyclass5guardINtB5_12PyClassGuardNtCscsgjCEAuSgO_6candle8PyTensorENtNtB9_10conversion12FromPyObject7extractB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.w)
          to label %.noexc239 unwind label %.body233.thread438

.noexc239:                                        ; preds = %bb.ag
  %i.cj = load i64, ptr %i.a, align 8, !range !6, !noalias !2931, !noundef !4
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !2931, !noundef !4 ; 4 uses
  br i1 %i.ck, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %.noexc239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2931
  store ptr %i.cm, ptr %i.b, align 8, !noalias !2931
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.val.i238 = load ptr, ptr %i.cn, align 8, !noalias !2931, !nonnull !4, !noundef !4 ; 5 uses
  %i.co = atomicrmw add ptr %.val.i238, i64 1 monotonic, align 8, !noalias !2931
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.ai, label %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i: ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val.i238, ptr %i.cq, align 8, !alias.scope !2931
  store i64 0, ptr %i.s, align 8, !alias.scope !2931
  invoke void @_RNvXs4_NtNtCs4dfyxXSEGwW_4pyo37pyclass5guardINtB5_12PyClassGuardNtCscsgjCEAuSgO_6candle8PyTensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ap unwind label %.body233.thread438

bb.aj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cr = icmp ult i64 %2, %4
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  invoke void @_RNvXs0_NtNtCs4dfyxXSEGwW_4pyo35types5sliceINtNtB9_8instance5BoundNtB5_7PySliceENtB5_14PySliceMethods7indices(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.ct)
          to label %bb.an unwind label %.body233.thread435

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #28
          to label %bb.am unwind label %.body233.thread435

.body233.thread438:                               ; preds = %bb.ag, %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.j

.body233.thread435:                               ; preds = %bb.al, %bb.ak
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cu = load i64, ptr %i.t, align 8, !range !6, !noundef !4
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.090.0.copyload = load i64, ptr %i.cw, align 8 ; 2 uses
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.491.0.copyload = load i64, ptr %.sroa.491.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread441, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread440

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread441: ; preds = %bb.an
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.794.0..sroa_idx, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load <2 x i64>, ptr %.sroa.592.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %.sroa.090.0.copyload, ptr %i.cx, align 8
  store i64 %.sroa.491.0.copyload, ptr %.sroa.496.0..sroa_idx, align 8
  store <2 x i64> %i.cy, ptr %.sroa.597.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread440: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cz = add nuw nsw i64 %2, 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.da, align 8
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.090.0.copyload, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.491.0.copyload, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cz, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.ao:                                            ; preds = %.noexc239
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2931
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cm, ptr %i.dd, align 8, !alias.scope !2931
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.dc, ptr %i.de, align 8, !alias.scope !2931
  store i64 1, ptr %i.s, align 8, !alias.scope !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2931
  %i.df = load ptr, ptr %i.v, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %.val.i243 = load ptr, ptr %i.df, align 8, !alias.scope !2932, !noalias !2933, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i243, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !2934, !noundef !4
  %i.di = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.dh) #23, !noalias !2934
  %i.dj = and i64 %i.di, 33554432
  %.not.i244 = icmp eq i64 %i.dj, 0
  br i1 %.not.i244, label %bb.ay, label %bb.bb

bb.ap:                                            ; preds = %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.val.i238, ptr %i.r, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i238, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 1152921504606846976
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread449, label %bb.aq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread449: ; preds = %bb.ap
  %i.do = add i64 %2, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.dp, align 8
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val.i238, ptr %.sroa.034.sroa.4.0..sroa_idx, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.do, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.k

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.dq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 16, i64 noundef 8) #23 ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ar, label %bb.au, !prof !13

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc245 unwind label %bb.as

.noexc245:                                        ; preds = %bb.ar
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.bl
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.du = add i64 %2, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.dv, align 8
  %.sroa.048.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dt, ptr %.sroa.048.sroa.5.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.du, ptr %.sroa.549.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cn

bb.as:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  call void @llvm.experimental.noalias.scope.decl(metadata !2937)
  %i.dx = load ptr, ptr %i.r, align 8, !alias.scope !2938, !nonnull !4, !noundef !4
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !2938
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit unwind label %bb.ax

bb.au:                                            ; preds = %bb.aq
  store ptr @215, ptr %i.dq, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 50, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0107.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0107.sroa.5.0..sroa_idx, align 8
  %.sroa.0107.sroa.5.sroa.4.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dq, ptr %.sroa.0107.sroa.5.sroa.4.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0107.sroa.5.sroa.5.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @192, ptr %.sroa.0107.sroa.5.sroa.5.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.4108.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %i.ec = load ptr, ptr %i.r, align 8, !alias.scope !2942, !nonnull !4, !noundef !4
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !2942
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255 unwind label %bb.aw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit: ; preds = %bb.bj, %bb.bo, %bb.bc, %bb.ca, %bb.bv, %.thread387, %bb.by, %bb.as, %bb.at, %bb.aw
  %.pn204 = phi { ptr, i32 } [ %i.eh, %bb.aw ], [ %i.dw, %bb.as ], [ %i.dw, %bb.at ], [ %i.fl, %bb.bv ], [ %lpad.thr_comm.split-lp403, %bb.by ], [ %eh.lpad-body394, %.thread387 ], [ %.pn199369, %bb.ca ], [ %i.eq, %bb.bc ], [ %i.ex, %bb.bj ], [ %i.fa, %bb.bo ] ; 2 uses
  %i.ef = load i64, ptr %i.s, align 8, !range !6, !noundef !4
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.body233, label %bb.cq

bb.aw:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.pre = load i64, ptr %i.s, align 8, !range !6
  %i.ei = trunc nuw i64 %.pre to i1
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread450

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread450: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.v

bb.ax:                                            ; preds = %bb.at, %bb.j, %bb.cq, %bb.ca, %bb.bo
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ay:                                            ; preds = %bb.ao
  tail call void @_Py_IncRef(ptr noundef nonnull @PyList_Type) #23, !noalias !2934
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_EllipsisObject) #23
  %i.ek = load ptr, ptr %i.v, align 8, !nonnull !4, !align !17, !noundef !4
  %.val221 = load ptr, ptr %i.ek, align 8, !nonnull !4, !noundef !4
  %i.el = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.el, align 8, !noundef !4
  %i.em = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.em, label %bb.ba, label %bb.az, !prof !5

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull @_Py_EllipsisObject)
          to label %bb.cb unwind label %.thread404

bb.ba:                                            ; preds = %bb.ay
  tail call void @_Py_DecRef(ptr noundef nonnull @_Py_EllipsisObject) #23
  br label %bb.cb

bb.bb:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 0, ptr %i.eo, align 8
  invoke void @_RNvXs_NtNtCs4dfyxXSEGwW_4pyo35types4listINtNtB8_8instance5BoundNtB4_6PyListENtB4_13PyListMethods4iter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df)
          to label %bb.bd unwind label %.thread370

.thread370:                                       ; preds = %bb.bb
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bc:                                            ; preds = %bb.bm
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bt, %bb.bd
  %i.eu = invoke noundef ptr @_RNvMs0_NtNtCs4dfyxXSEGwW_4pyo35types4listNtB5_17BoundListIterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.bg unwind label %bb.bf     ; 5 uses

.thread360:                                       ; preds = %bb.bf, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.bf ], [ %i.fb, %bb.bp ]
  %.val224 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val224) #23
  br label %bb.ca

bb.bf:                                            ; preds = %bb.be
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.thread360

bb.bg:                                            ; preds = %bb.be
  %.not196 = icmp eq ptr %i.eu, null
  br i1 %.not196, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsk_NtNtNtCs4dfyxXSEGwW_4pyo311conversions3std3numxNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noundef nonnull %i.eu)
          to label %bb.bq unwind label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  %.val223 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val223) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.ew = invoke noundef i64 @_RNvXs_NtNtCs4dfyxXSEGwW_4pyo35types4listINtNtB8_8instance5BoundNtB4_6PyListENtB4_13PyListMethods3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df)
          to label %bb.bk unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bk
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_impljxECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %i.ew, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @15, i1 noundef zeroext false)
          to label %bb.bl unwind label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ey = load i64, ptr %i.m, align 8, !range !22, !noundef !4
  %.not197 = icmp eq i64 %i.ey, -1
  br i1 %.not197, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCscsgjCEAuSgO_6candle5utils8wrap_err(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
          to label %bb.bn unwind label %bb.bc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit.thread: ; preds = %bb.cf, %bb.cj, %bb.ck
  %.sink = phi i64 [ 0, %bb.cf ], [ 1, %bb.cj ], [ 0, %bb.ck ]
  store i64 %.sink, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull @PyList_Type) #23
  br label %bb.cn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.559.8.copyload = load ptr, ptr %i.h, align 8
  %.sroa.961.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.961.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.559.8.copyload, ptr %i.ez, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread

bb.bo:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit unwind label %bb.ax

bb.bp:                                            ; preds = %bb.bs, %bb.bh
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.eu) #23
  br label %.thread360

bb.bq:                                            ; preds = %bb.bh
  %i.fc = load i64, ptr %i.n, align 8, !range !6, !noundef !4
  %i.fd = trunc nuw i64 %i.fc to i1
  %.sroa.0127.0.copyload = load i64, ptr %i.et, align 8 ; 2 uses
  br i1 %i.fd, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fe = load i64, ptr %i.eo, align 8, !alias.scope !2943, !noundef !4 ; 3 uses
  %i.ff = load i64, ptr %i.q, align 8, !range !7, !alias.scope !2943, !noundef !4
  %i.fg = icmp eq i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #25
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.fh = load ptr, ptr %i.en, align 8, !alias.scope !2943, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe
  store i64 %.sroa.0127.0.copyload, ptr %i.fi, align 8
  %i.fj = add i64 %i.fe, 1
  store i64 %i.fj, ptr %i.eo, align 8, !alias.scope !2943
  call void @_Py_DecRef(ptr noundef nonnull %i.eu) #23
  br label %bb.be

bb.bu:                                            ; preds = %bb.bq
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4130.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4128.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0127.0.copyload, ptr %i.fk, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %i.eu) #23
  %.val222 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val222) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECscsgjCEAuSgO_6candle.exit unwind label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread404:                                       ; preds = %bb.cm, %bb.ce, %bb.az
  %lpad.thr_comm402 = landingpad { ptr, i32 }
          cleanup
  br label %.thread387

bb.by:                                            ; preds = %bb.bw
  %lpad.thr_comm.split-lp403 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

.thread387:                                       ; preds = %bb.ch, %.thread404
  %eh.lpad-body394 = phi { ptr, i32 } [ %lpad.thr_comm402, %.thread404 ], [ %i.fx, %bb.ch ]
  call void @_Py_DecRef(ptr noundef nonnull @PyList_Type) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread

bb.bz:                                            ; preds = %bb.cl
  store ptr @217, ptr %i.gc, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 71, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0144.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0144.sroa.5.0..sroa_idx, align 8
  %.sroa.0144.sroa.5.sroa.4.0..sroa.0144.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.gc, ptr %.sroa.0144.sroa.5.sroa.4.0..sroa.0144.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0144.sroa.5.sroa.5.0..sroa.0144.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @192, ptr %.sroa.0144.sroa.5.sroa.5.0..sroa.0144.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.4145.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  tail call void @_Py_DecRef(ptr noundef nonnull @PyList_Type) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread

bb.ca:                                            ; preds = %.thread370, %.thread360
  %.pn199369 = phi { ptr, i32 } [ %.pn, %.thread360 ], [ %i.ep, %.thread370 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit unwind label %bb.ax

bb.cb:                                            ; preds = %bb.ba, %bb.az
  %i.fp = icmp eq ptr %.val221, @_Py_EllipsisObject
  br i1 %i.fp, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fq = tail call noundef ptr @Py_GetConstantBorrowed(i32 noundef 0) #23
  %i.fr = load ptr, ptr %i.v, align 8, !nonnull !4, !align !17, !noundef !4
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !4, !noundef !4
  %i.ft = icmp eq ptr %i.fq, %i.fs
  br i1 %i.ft, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.not201 = icmp eq i64 %2, 0
  br i1 %.not201, label %bb.ck, label %bb.cl

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.v, ptr %i.j, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtBB_5types3any5PyAnyENtB6_7Display3fmtCscsgjCEAuSgO_6candle, ptr %.sroa.4165.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @216, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscsgjCEAuSgO_6candle.exit unwind label %.thread404

bb.cf:                                            ; preds = %bb.cc
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.fu, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.470.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit.thread

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscsgjCEAuSgO_6candle.exit: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !2944
  %i.fv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 24, i64 noundef 8) #23, !noalias !2944 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.cg, label %bb.cj, !prof !13

bb.cg:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscsgjCEAuSgO_6candle.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc257 unwind label %bb.ch

.noexc257:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs_NtCs4dfyxXSEGwW_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions11PyTypeErrorNtNtCsgCecv3eZDcN_5alloc6string6StringE0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #27
          to label %.thread387 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.cj:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscsgjCEAuSgO_6candle.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0175.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0175.sroa.5.0..sroa_idx, align 8
  %.sroa.0175.sroa.5.sroa.4.0..sroa.0175.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.fv, ptr %.sroa.0175.sroa.5.sroa.4.0..sroa.0175.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0175.sroa.5.sroa.5.0..sroa.0175.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @3, ptr %.sroa.0175.sroa.5.sroa.5.0..sroa.0175.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.4176.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit.thread

bb.ck:                                            ; preds = %bb.cd
  %.neg412 = add nuw nsw i64 %4, 1
  %i.ga = sub i64 %.neg412, %5
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.gb, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ga, ptr %.sroa.466.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit.thread

bb.cl:                                            ; preds = %bb.cd
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.gc = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 16, i64 noundef 8) #23 ; 4 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.cm, label %bb.bz, !prof !13

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc259 unwind label %.thread404

.noexc259:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  %i.ge = icmp eq ptr %i.cm, null
  br i1 %i.ge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i = load ptr, ptr %i.gf, align 8, !alias.scope !2945, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i) #23, !noalias !2945
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242, %bb.v, %bb.z, %bb.aa, %bb.ae, %bb.af, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241, %bb.k, %bb.o, %bb.p, %bb.t, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread: ; preds = %bb.bz, %bb.bn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECscsgjCEAuSgO_6candle.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i263 = load ptr, ptr %i.gg, align 8, !alias.scope !2946, !noundef !4
  %i.gh = icmp eq ptr %.val.i263, null
  br i1 %i.gh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242, label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread
  %i.gi = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i264 = load ptr, ptr %i.gi, align 8, !alias.scope !2946, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i264) #23, !noalias !2946
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242

bb.cq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCscsgjCEAuSgO_6candle8PyTensorNtNtNtCs4dfyxXSEGwW_4pyo37pyclass5guard17PyClassGuardErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #27
          to label %.body233 unwind label %bb.ax
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMS10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMs13_CscsgjCEAuSgO_6candleNtB6_8PyTensor19___pymethod_values__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMS6___wrap(ptr noundef %0, ptr noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvYNCNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBf_8PyTensorEINtBD_9PyMethodsB1A_E10py_methods5ITEMS6___wrap0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTNtNtBH_6marker6PythonONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectB3H_EE9call_onceBf_, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %i.g = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_10binaryfunc0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMSs0_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMs13_CscsgjCEAuSgO_6candleNtB6_8PyTensor16___pymethod_abs__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMSs0_6___wrap(ptr noundef %0, ptr noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvYNCNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBf_8PyTensorEINtBD_9PyMethodsB1A_E10py_methods5ITEMSs0_6___wrap0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTNtNtBH_6marker6PythonONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectB3K_EE9call_onceBf_, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %i.g = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_10binaryfunc0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMSs1_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMs13_CscsgjCEAuSgO_6candleNtB6_8PyTensor16___pymethod_sin__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PyTensorEINtBy_9PyMethodsB1v_E10py_methods5ITEMSs1_6___wrap(ptr noundef %0, ptr noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvYNCNvNvNvXs12_CscsgjCEAuSgO_6candleINtNtNtCs4dfyxXSEGwW_4pyo35impl_7pyclass20PyClassImplCollectorNtBf_8PyTensorEINtBD_9PyMethodsB1A_E10py_methods5ITEMSs1_6___wrap0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTNtNtBH_6marker6PythonONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectB3K_EE9call_onceBf_, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %i.g = invoke fastcc noundef ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35impl_10trampoline10trampolineNCNvB2_10binaryfunc0ONtNtCsbgX9fTizDDQ_8pyo3_ffi6object8PyObjectECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.g
}
end_hunk_0
