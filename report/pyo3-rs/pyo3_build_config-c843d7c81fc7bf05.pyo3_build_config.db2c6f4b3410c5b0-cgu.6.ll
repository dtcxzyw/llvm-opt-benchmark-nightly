Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.6?download=true
inline.NumInlined: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCs5GPH1eSwN50_14target_lexicon6triple6TripleNtNtBL_11parse_error10ParseErrorE6expectCsiOEEQt9hBE2_17pyo3_build_config:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5GPH1eSwN50_14target_lexicon11parse_error10ParseErrorECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #21
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorE2okCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsG258MDvU3F_3std7process6OutputNtNtNtB4_2io5error5ErrorE2okCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std7process6OutputNtNtNtB4_2io5error5ErrorEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorE6expectCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @19, ptr align 8 %4) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #21
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17InterpreterConfigNtNtBL_6errors5ErrorE6expectBL_(ptr nofree writeonly sret([192 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @20, ptr align 8 %4) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorEBF_(ptr nonnull align 8 %i.a) #21
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReBH_E2okCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE2okCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorE2okBM_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1                    ; 2 uses
  br i1 %.not, label %.thread, label %1

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  br label %1

1:                                                ; preds = %bb.a, %.thread
  %.sroa.3.0 = phi i32 [ %i.c, %.thread ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %.thread ], [ 0, %bb.a ]
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %1
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmNtNtCsiOEEQt9hBE2_17pyo3_build_config6errors5ErrorEEB12_(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %1
  %i.d = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE2okCsiOEEQt9hBE2_17pyo3_build_config(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %not. = and i32 %i.a, 1
  %. = xor i32 %not., 1
  %.sroa.34.0.extract.shift = lshr i64 %0, 32
  %.sroa.34.0.extract.trunc = trunc nuw i64 %.sroa.34.0.extract.shift to i32
  %i.b = insertvalue { i32, i32 } poison, i32 %., 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %.sroa.34.0.extract.trunc, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsiOEEQt9hBE2_17pyo3_build_config(i1 zeroext %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @21, ptr align 8 %3) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc13is_whitespaceCsiOEEQt9hBE2_17pyo3_build_config(i32 %0) unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 133
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space6lookupCsiOEEQt9hBE2_17pyo3_build_config(i32 %0) #20
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digitCsiOEEQt9hBE2_17pyo3_build_config(i32 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -2
  %or.cond = icmp ult i32 %i.a, 35
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @22, ptr nonnull inttoptr (i64 143 to ptr), ptr nonnull align 8 @24) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 57
  %i.c = icmp samesign ugt i32 %1, 10
  %or.cond1 = and i1 %i.b, %i.c
  %i.d = add i32 %0, -65
  %i.e = and i32 %i.d, -33
  %i.f = add nuw nsw i32 %i.e, 10
  %i.g = add i32 %0, -48
  %.sroa.02.0 = select i1 %or.cond1, i32 %i.f, i32 %i.g ; 2 uses
  %i.h = icmp ult i32 %.sroa.02.0, %1
  %.sroa.0.0 = zext i1 %i.h to i32
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.02.0, 1
  ret { i32, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMNtNtNtCskKLDkoKarTP_4core5slice4sort6stableINtB2_14AlignedStorageNtNtCsG258MDvU3F_3std4path7PathBufKj1000_E19as_uninit_slice_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 170, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = zext i1 %1 to i64
  %i.k = load i64, ptr %i.e, align 8
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.h, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_E8is_emptyCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs2_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments17from_str_nonconstCsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = lshr i64 %i.c, 1
  %i.e = insertvalue { ptr, i64 } { ptr null, i64 poison }, i64 %i.d, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCsiOEEQt9hBE2_17pyo3_build_config(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr %1, ptr %2) unnamed_addr #0 {
_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiOEEQt9hBE2_17pyo3_build_config.exit:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr %i.a, ptr align 8 %i.c, ptr %1, ptr %2)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_rawCsiOEEQt9hBE2_17pyo3_build_config(i32 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048                    ; 2 uses
  %i.c = icmp ult i32 %0, 65536                   ; 2 uses
  %. = select i1 %i.c, i64 3, i64 4
  %.sroa.0.0 = select i1 %i.b, i64 2, i64 %.      ; 2 uses
  %i.d = icmp ult i64 %2, %.sroa.0.0
  br i1 %i.d, label %bb.h, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.h, label %.thread7

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
end_hunk_0
