Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.192?download=true
inline.NumInlined: 226
inline.NumDeleted: 113
begin_hunk_0_@_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor14visit_byte_bufNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor20visit_newtype_structINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtB2J_17DeserializerErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  invoke void @_RNvXs0_NtCsadazKHFPhDw_11serde_value2deNtB5_17DeserializerErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtBE_17DeserializerErrorEECsPYQCUnoTxQ_10collection.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsadazKHFPhDw_11serde_value5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtBE_17DeserializerErrorEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor20visit_newtype_structINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs2_NtCs8jn5zD2RXga_10serde_cbor5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor20visit_newtype_structINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs0_NtCsadazKHFPhDw_11serde_value2deNtB5_17DeserializerErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor20visit_newtype_structINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i8 %1 to i64                        ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !366
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !366
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !366
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i8 %1 to i64                        ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !369
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !369
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !369
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i8 %1 to i64                        ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !372
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !372
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !372
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !375
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !375
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !375
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !378
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !378
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !381
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !381
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !381
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = fpext float %1 to double                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload8.i = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !387, !noalias !391
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.5.0.copyload9.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !387, !noalias !391
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !394
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection.exit

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload9.i, %bb.b ], [ %i.b, %bb.c ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i, %bb.b ], [ 2, %bb.c ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.b ], [ -9223372036854775806, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !384
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !384
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !384
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = fpext float %1 to double                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !395
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload8.i = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !398, !noalias !402
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.5.0.copyload9.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !398, !noalias !402
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !405
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection.exit

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload9.i, %bb.b ], [ %i.b, %bb.c ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i, %bb.b ], [ 2, %bb.c ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.b ], [ -9223372036854775806, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !395
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !395
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !395
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !395
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = fpext float %1 to double                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !406
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload8.i = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !409, !noalias !413
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.5.0.copyload9.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i, align 8, !alias.scope !409, !noalias !413
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection.exit

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !416
  br label %_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection.exit

_RINvXNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload9.i, %bb.b ], [ %i.b, %bb.c ]
  %.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.5.sroa.0.0.copyload8.i, %bb.b ], [ 2, %bb.c ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.b ], [ -9223372036854775806, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !406
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !406
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !406
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !406
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !417
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !417
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !417
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !420
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !420
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !420
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !423
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !423
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !423
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !426
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !426
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !426
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !429
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !429
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !429
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !432
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !432
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !432
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !435
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !435
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !435
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !438
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !438
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !438
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i16 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !441
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !441
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !441
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !444
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !444
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !444
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !447
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !447
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !447
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs8O45qwFIwQX_10serde_json5value2deNtBa_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 24)) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !450
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !450
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !450
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream8try_nextINtB5_7TryNextINtNtB9_17futures_unordered16FuturesUnorderedINtNtNtBb_6future6future3MapINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4i_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEIB4i_bEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENCNCNvMNtNtB5S_18collection_manager17segments_searcherNtB6Z_16SegmentsSearcher16execute_searches00EEENtNtNtB3J_6future6future6Future4pollB5S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.sroa.11 = alloca [24 x i8], align 8           ; 2 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !42, !noundef !6
  call void @_RNvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtB9_6future6future3MapINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecIB3z_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEIB3z_bEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENCNCNvMNtNtB59_18collection_manager17segments_searcherNtB6g_16SegmentsSearcher16execute_searches00EENtNtB7_10try_stream12TryStreamExt19try_poll_next_unpinB59_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !453, !noundef !6 ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 -2, label %bb.b
    i64 -1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.8.0 = phi i64 [ %i.d, %bb.e ], [ 2, %bb.a ]
  %.sroa.01.0 = phi i64 [ %.sroa.029.0.copyload, %bb.e ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
end_hunk_0
