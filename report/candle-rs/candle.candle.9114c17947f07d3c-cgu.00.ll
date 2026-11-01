Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.00?download=true
inline.NumInlined: 1694
inline.NumDeleted: 511
begin_hunk_0_@_RNvNvMs1u_CscsgjCEAuSgO_6candleNtNtB8_17cuda_is_available7MakeDef9__PYO3_DEF10trampoline:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
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
  %i.x = load i64, ptr %i.u, align 8, !range !6, !noundef !4 ; 2 uses
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2884, !noundef !4
  %i.ab = icmp eq ptr %i.aa, @PySlice_Type
  br i1 %i.ab, label %bb.aj, label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ad, ptr %i.f, align 8, !noalias !2886
  store i64 %2, ptr %i.e, align 8, !noalias !2886
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, %4
  br i1 %i.af, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !2885, !noundef !4
  %i.ai = add i64 %i.ah, %i.ad                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.split.i, label %.thread.i

.invoke:                                          ; preds = %.thread.i, %bb.d
  %i.ak = phi ptr [ @218, %bb.d ], [ @219, %.thread.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak) #26
          to label %.cont unwind label %bb.am

.cont:                                            ; preds = %.invoke
  unreachable

.thread.i:                                        ; preds = %bb.e, %bb.c
  %.sroa.0.045.i = phi i64 [ %i.ai, %bb.e ], [ %i.ad, %bb.c ] ; 2 uses
  %i.al = icmp ult i64 %2, %4
  br i1 %i.al, label %bb.f, label %.invoke

bb.f:                                             ; preds = %.thread.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !2885, !noundef !4
  %.not.i = icmp slt i64 %.sroa.0.045.i, %i.an
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread, label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2886
  store ptr %i.e, ptr %i.d, align 8, !noalias !2886
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2886
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.ao, align 8, !noalias !2886
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsj_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2886
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @220, ptr noundef nonnull %i.d)
          to label %.noexc232 unwind label %bb.am

.noexc232:                                        ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2886
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !2887
  %i.ap = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 24, i64 noundef 8) #23, !noalias !2887 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread, !prof !13

bb.g:                                             ; preds = %.noexc232
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc.i unwind label %bb.h, !noalias !2886

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs_NtCs4dfyxXSEGwW_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyValueErrorNtNtCsgCecv3eZDcN_5alloc6string6StringE0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.i, !noalias !2886

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !2886
  unreachable

.body233:                                         ; preds = %.thread314, %bb.am
  %.pn208 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.am ], [ %.pn206319, %.thread314 ] ; 2 uses
  %i.at = icmp eq i64 %i.x, 0
  br i1 %i.at, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.body233
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4dfyxXSEGwW_4pyo33err5PyErrECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.au)
          to label %common.resume unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread: ; preds = %.noexc232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
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
  %i.aw = add nuw nsw i64 %2, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ax, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.045.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread444, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread435
  call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2890)
  call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  %i.az = load i64, ptr %i.ay, align 8, !range !6, !alias.scope !2892, !noundef !4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2892, !noundef !4 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.val1.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !2892, !nonnull !4, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !2892 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.bd(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.o unwind label %bb.q, !noalias !2892

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !7, !invariant.load !4, !noalias !2892 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !8, !invariant.load !4, !noalias !2892
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #23, !noalias !2892
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.q:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !7, !invariant.load !4, !noalias !2892 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !8, !invariant.load !4, !noalias !2892
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #23, !noalias !2892
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.j, %.body233, %bb.ab, %bb.ac, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ], [ %i.cc, %bb.ac ], [ %.pn208, %.body233 ], [ %.pn208, %bb.j ], [ %i.ar, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.l
  %i.bp = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !2892, !noundef !4
  %i.bq = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %bb.u, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  call void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val1.i.i.i.i), !noalias !2892
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.u:                                             ; preds = %bb.s
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i.i.i.i) #23, !noalias !2892
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread445, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread436
  call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  %i.bs = load i64, ptr %i.br, align 8, !range !6, !alias.scope !2897, !noundef !4
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i.i.i.i267 = load ptr, ptr %i.bu, align 8, !alias.scope !2897, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.val1.i.i.i.i268 = load ptr, ptr %i.bv, align 8, !alias.scope !2897, !nonnull !4, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i269 = icmp eq ptr %.val.i.i.i.i267, null
  br i1 %.not.i.i.i.i.i269, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %.val1.i.i.i.i268, align 8, !invariant.load !4, !noalias !2897 ; 2 uses
  %.not.i.i.i.i.i.i270 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i270, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void %i.bw(ptr noundef nonnull %.val.i.i.i.i267)
          to label %bb.z unwind label %bb.ab, !noalias !2897

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !7, !invariant.load !4, !noalias !2897 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !8, !invariant.load !4, !noalias !2897
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i267, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #23, !noalias !2897
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.ab:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !7, !invariant.load !4, !noalias !2897 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i268, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !8, !invariant.load !4, !noalias !2897
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i267, i64 noundef range(i64 1, 0) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #23, !noalias !2897
  br label %common.resume

bb.ad:                                            ; preds = %bb.w
  %i.ci = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i.i.i.i272 = load i64, ptr %i.ci, align 8, !noalias !2897, !noundef !4
  %i.cj = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i272, 0
  br i1 %i.cj, label %bb.af, label %bb.ae, !prof !5

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val1.i.i.i.i268), !noalias !2897
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.af:                                            ; preds = %bb.ad
  call void @_Py_DecRef(ptr noundef nonnull %.val1.i.i.i.i268) #23, !noalias !2897
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultiNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit236

bb.ag:                                            ; preds = %bb.b
  tail call void @_Py_IncRef(ptr noundef nonnull @PySlice_Type) #23, !noalias !2884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2898
  invoke void @_RNvXs1_NtNtCs4dfyxXSEGwW_4pyo37pyclass5guardINtB5_12PyClassGuardNtCscsgjCEAuSgO_6candle8PyTensorENtNtB9_10conversion12FromPyObject7extractB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.w)
          to label %.noexc239 unwind label %.thread322

.noexc239:                                        ; preds = %bb.ag
  %i.ck = load i64, ptr %i.a, align 8, !range !6, !noalias !2898, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2898, !noundef !4 ; 4 uses
  br i1 %i.cl, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %.noexc239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2898
  store ptr %i.cn, ptr %i.b, align 8, !noalias !2898
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val.i238 = load ptr, ptr %i.co, align 8, !noalias !2898, !nonnull !4, !noundef !4 ; 5 uses
  %i.cp = atomicrmw add ptr %.val.i238, i64 1 monotonic, align 8, !noalias !2898
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.ai, label %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i: ; preds = %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val.i238, ptr %i.cr, align 8, !alias.scope !2898
  store i64 0, ptr %i.s, align 8, !alias.scope !2898
  invoke void @_RNvXs4_NtNtCs4dfyxXSEGwW_4pyo37pyclass5guardINtB5_12PyClassGuardNtCscsgjCEAuSgO_6candle8PyTensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aq unwind label %.thread322

bb.aj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cs = icmp ult i64 %2, %4
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4
  invoke void @_RNvXs0_NtNtCs4dfyxXSEGwW_4pyo35types5sliceINtNtB9_8instance5BoundNtB5_7PySliceENtB5_14PySliceMethods7indices(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.cu)
          to label %bb.ao unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #28
          to label %bb.an unwind label %bb.am

.thread322:                                       ; preds = %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i, %bb.ag
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread314

bb.am:                                            ; preds = %.invoke, %.split.i, %bb.ak, %bb.al
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body233

.thread314:                                       ; preds = %bb.co, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit, %.thread322
  %.pn206319 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread322 ], [ %.pn204, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit ], [ %.pn204, %bb.co ]
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %.body233

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.cv = load i64, ptr %i.t, align 8, !range !6, !noundef !4
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.090.0.copyload = load i64, ptr %i.cx, align 8 ; 2 uses
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.491.0.copyload = load i64, ptr %.sroa.491.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread436, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread435

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread436: ; preds = %bb.ao
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.794.0..sroa_idx, i64 16, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load <2 x i64>, ptr %.sroa.592.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %.sroa.090.0.copyload, ptr %i.cy, align 8
  store i64 %.sroa.491.0.copyload, ptr %.sroa.496.0..sroa_idx, align 8
  store <2 x i64> %i.cz, ptr %.sroa.597.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread435: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.da = add nuw nsw i64 %2, 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.db, align 8
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.090.0.copyload, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.491.0.copyload, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.da, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.ap:                                            ; preds = %.noexc239
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !2898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2898
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cn, ptr %i.de, align 8, !alias.scope !2898
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.dd, ptr %i.df, align 8, !alias.scope !2898
  store i64 1, ptr %i.s, align 8, !alias.scope !2898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2898
  %i.dg = load ptr, ptr %i.v, align 8, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  %.val.i243 = load ptr, ptr %i.dg, align 8, !alias.scope !2899, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i243, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !2900, !noundef !4
  %i.dj = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.di) #23, !noalias !2900
  %i.dk = and i64 %i.dj, 33554432
  %.not.i244 = icmp eq i64 %i.dk, 0
  br i1 %.not.i244, label %bb.ay, label %bb.bb

bb.aq:                                            ; preds = %_RNvXs5_CscsgjCEAuSgO_6candleNtB5_8PyTensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.val.i238, ptr %i.r, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i238, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 1152921504606846976
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 1
  br i1 %i.do, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread444, label %bb.ar

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit241.thread444: ; preds = %bb.aq
  %i.dp = add i64 %2, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.dq, align 8
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val.i238, ptr %.sroa.034.sroa.4.0..sroa_idx, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dp, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.k

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.dr = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 97) 16, i64 noundef 8) #23 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.as, label %bb.av, !prof !13

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc245 unwind label %bb.at

.noexc245:                                        ; preds = %bb.as
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dv = add i64 %2, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.dw, align 8
  %.sroa.048.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.du, ptr %.sroa.048.sroa.5.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dv, ptr %.sroa.549.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cl

bb.at:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %i.dy = load ptr, ptr %i.r, align 8, !alias.scope !2904, !nonnull !4, !noundef !4
  %i.dz = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !2904
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit unwind label %bb.ax

bb.av:                                            ; preds = %bb.ar
  store ptr @215, ptr %i.dr, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 50, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0107.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.0107.sroa.5.0..sroa_idx, align 8
  %.sroa.0107.sroa.5.sroa.4.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dr, ptr %.sroa.0107.sroa.5.sroa.4.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0107.sroa.5.sroa.5.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @192, ptr %.sroa.0107.sroa.5.sroa.5.0..sroa.0107.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.4108.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.ed = load ptr, ptr %i.r, align 8, !alias.scope !2908, !nonnull !4, !noundef !4
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !2908
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255 unwind label %bb.bw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECscsgjCEAuSgO_6candle.exit: ; preds = %bb.bm, %bb.by, %bb.bt, %.thread387, %bb.bw, %bb.at, %bb.au
  %.pn204 = phi { ptr, i32 } [ %i.ey, %bb.bm ], [ %i.dx, %bb.at ], [ %i.dx, %bb.au ], [ %i.fj, %bb.bt ], [ %lpad.thr_comm.split-lp403, %bb.bw ], [ %eh.lpad-body394, %.thread387 ], [ %.pn199369, %bb.by ] ; 2 uses
  %i.eg = load i64, ptr %i.s, align 8, !range !6, !noundef !4
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.thread314, label %bb.co

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.pre = load i64, ptr %i.s, align 8, !range !6
  %i.ei = trunc nuw i64 %.pre to i1
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread445

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types5slice7PySliceENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit242.thread445: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB13_5types4list6PyListENtNtNtB13_3err10cast_error9CastErrorEECscsgjCEAuSgO_6candle.exit255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_Py_DecRef(ptr noundef nonnull @PySlice_Type) #23
  br label %bb.v

bb.ax:                                            ; preds = %bb.au, %bb.j, %bb.co, %bb.by, %bb.bm
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ay:                                            ; preds = %bb.ap
  tail call void @_Py_IncRef(ptr noundef nonnull @PyList_Type) #23, !noalias !2900
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_EllipsisObject) #23
  %i.ek = load ptr, ptr %i.v, align 8, !nonnull !4, !align !17, !noundef !4
  %.val221 = load ptr, ptr %i.ek, align 8, !nonnull !4, !noundef !4
  %i.el = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.el, align 8, !noundef !4
  %i.em = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.em, label %bb.ba, label %bb.az, !prof !5

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull @_Py_EllipsisObject)
          to label %bb.bz unwind label %.thread404

bb.ba:                                            ; preds = %bb.ay
  tail call void @_Py_DecRef(ptr noundef nonnull @_Py_EllipsisObject) #23
  br label %bb.bz

bb.bb:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store i64 0, ptr %i.eo, align 8
  invoke void @_RNvXs_NtNtCs4dfyxXSEGwW_4pyo35types4listINtNtB8_8instance5BoundNtB4_6PyListENtB4_13PyListMethods4iter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg)
          to label %bb.bc unwind label %.thread370

.thread370:                                       ; preds = %bb.bb
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.br, %bb.bc
  %i.et = invoke noundef ptr @_RNvMs0_NtNtCs4dfyxXSEGwW_4pyo35types4listNtB5_17BoundListIterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.bf unwind label %bb.be     ; 5 uses

.thread360:                                       ; preds = %bb.be, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.be ], [ %i.ez, %bb.bn ]
  %.val224 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val224) #23
  br label %bb.by

bb.be:                                            ; preds = %bb.bd
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.thread360
end_hunk_0
