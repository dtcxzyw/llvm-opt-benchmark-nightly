Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.10?download=true
inline.NumInlined: 259
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECscsgjCEAuSgO_6candle
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECscsgjCEAuSgO_6candle.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECscsgjCEAuSgO_6candle.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35types5tuple16array_into_tupleKj2_ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 2) #21 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !146, !nonnull !4, !noundef !4
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !146, !nonnull !4, !noundef !4
  %i.h = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.g) #21 ; 0 uses
  store i64 2, ptr %i.a, align 8
  store i64 2, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj2_NtB4_11PartialDrop12partial_dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.3.0..sroa_idx, i64 noundef 2, i64 noundef 2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1U_5types3any5PyAnyEKj2_EEECscsgjCEAuSgO_6candle.exit17 unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4dfyxXSEGwW_4pyo33err17panic_after_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #21
  br label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1U_5types3any5PyAnyEKj2_EEECscsgjCEAuSgO_6candle.exit17: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.c
  %.pn1323 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %.pn1323

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueAINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #24
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCs4dfyxXSEGwW_4pyo35types5tuple16array_into_tupleKj3_ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 3) #21 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.h = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.g) #21 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %i.k = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 2, ptr noundef nonnull %i.j) #21 ; 0 uses
  store i64 3, ptr %i.a, align 8
  store i64 3, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj3_NtB4_11PartialDrop12partial_dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.3.0..sroa_idx, i64 noundef 3, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1U_5types3any5PyAnyEKj3_EEECscsgjCEAuSgO_6candle.exit17 unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4dfyxXSEGwW_4pyo33err17panic_after_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #21
  br label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtB1U_5types3any5PyAnyEKj3_EEECscsgjCEAuSgO_6candle.exit17: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.c
  %.pn1323 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %.pn1323

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueAINtNtCs4dfyxXSEGwW_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj3_ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #24
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvNtNtNtCsiSng2TXQ1k7_9getrandom8backends8use_file5utils14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.0.040 = phi ptr [ %.sroa.0.1, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %.sroa.6.1, %bb.f ], [ %1, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !noalias !157, !nonnull !4, !noundef !4
  %i.c = tail call noundef i64 %i.b(ptr noundef nonnull %.sroa.0.040, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039, i32 noundef 0) #21, !inline_history !156 ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.c, -1
  br i1 %i.e, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.c, %.sroa.6.039
  br i1 %.not, label %.loopexit, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_RNvNtNtNtNtCsiSng2TXQ1k7_9getrandom8backends8use_file5utils9get_errno9get_errno() ; 2 uses
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef i32 @_RNvMNtCsiSng2TXQ1k7_9getrandom5errorNtB2_5Error10from_errno(i32 noundef %i.f)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.g
  %.sroa.6.1 = phi i64 [ %i.k, %bb.g ], [ %.sroa.6.039, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.j, %bb.g ], [ %.sroa.0.040, %bb.d ]
  %i.i = icmp eq i64 %.sroa.6.1, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.c
  %i.k = sub nuw nsw i64 %.sroa.6.039, %i.c
  br label %bb.f

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.c, %bb.a, %bb.e
  %.sroa.07.0 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.a ], [ 65538, %bb.b ], [ 0, %bb.f ], [ 65538, %bb.c ]
  ret i32 %.sroa.07.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json3ser8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_entryReNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorInfoECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !162, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !8, !alias.scope !162, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyReECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !162, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !162
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyReECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyReECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !162
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = tail call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !162 ; 0 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !noalias !163, !nonnull !4, !align !6, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !163
  %i.g = tail call noundef align 8 ptr @_RINvXNvNtCsOwuIBbUsgI_11safetensors6tensors1_1__NtB5_10TensorInfoNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json3ser8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_entryeIBN_jEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !187, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !8, !alias.scope !187, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !188, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !188
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !187
  %i.f = tail call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !187 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3 = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.h, align 8            ; 3 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8, !alias.scope !189, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %.idx.i.i.i = shl nuw nsw i64 %.val4, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 %.idx.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !190
  %i.j = icmp eq i64 %.val4, 0
  br i1 %i.j, label %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_seqCscsgjCEAuSgO_6candle.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_seqCscsgjCEAuSgO_6candle.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !190
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueIBT_jEECscsgjCEAuSgO_6candle.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit
  %.val6.i.peel.i.i.i.i = load i64, ptr %.val3, align 8, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  %i.k = call noundef i64 @_RNvXsu_Cs3nyyB272nGn_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val6.i.peel.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !noalias !192 ; 2 uses
  %i.l = sub nuw i64 20, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192
  %i.n = icmp eq i64 %.val4, 1
  br i1 %i.n, label %.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.preheader.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.preheader.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.preheader.i.i.i
  %i.p = phi ptr [ %i.q, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i ], [ %i.o, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.preheader.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.val6.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !191
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  %i.r = call noundef i64 @_RNvXsu_Cs3nyyB272nGn_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val6.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !noalias !193 ; 2 uses
  %i.s = sub nuw i64 20, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  %i.u = icmp eq ptr %i.q, %i.i
  br i1 %i.u, label %.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i, !llvm.loop !186

.loopexit.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callRjINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRIB2Y_jEE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !194
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueIBT_jEECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueIBT_jEECscsgjCEAuSgO_6candle.exit: ; preds = %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_seqCscsgjCEAuSgO_6candle.exit.thread.i.i.i, %.loopexit.i.i.i
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json3ser8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtBR_6string6StringB3H_EECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !217, !nonnull !4, !align !6, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !8, !alias.scope !217, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !218, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !218
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !217
  %i.f = tail call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !217 ; 0 uses
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !219, !nonnull !4, !align !6, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringBN_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !noalias !223
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i = load i64, ptr %i.g, align 8, !noalias !222, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !225, !noalias !219, !nonnull !4, !align !6, !noundef !4 ; 7 uses
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !226
  %.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.i.i.i, label %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.thread.i.i.i

_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.i.i.i: ; preds = %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !226
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBK_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !223 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not11.i.i.i.i.i, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_EECscsgjCEAuSgO_6candle.exit, label %bb.c

_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBK_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !223 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 3 uses
  %.not11.i.i20.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i20.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBV_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtBZ_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapRBV_B4S_RINtB6_7HashMapBV_BV_EE0INtNtB1J_6result6ResultuNtNtB2W_5error5ErrorEECscsgjCEAuSgO_6candle.exit.thread.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.thread.i.i.i
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val7.i.i.peel.i.i.i = load ptr, ptr %i.m, align 8, !noalias !223
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %.val8.i.i.peel.i.i.i = load i64, ptr %i.n, align 8, !noalias !223
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val9.i.i.peel.i.i.i = load ptr, ptr %i.o, align 8, !noalias !223
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val10.i.i.peel.i.i.i = load i64, ptr %i.p, align 8, !noalias !223
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.i.i.i
  %i.q = extractvalue { ptr, ptr } %i.h, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %.val7.i.i.peel22.i.i.i = load ptr, ptr %i.r, align 8, !noalias !223
  %i.s = getelementptr i8, ptr %i.i, i64 16
  %.val8.i.i.peel23.i.i.i = load i64, ptr %i.s, align 8, !noalias !223
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val9.i.i.peel24.i.i.i = load ptr, ptr %i.t, align 8, !noalias !223
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val10.i.i.peel25.i.i.i = load i64, ptr %i.u, align 8, !noalias !223
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !227
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i.i
  %.val10.i.i.peel32.i.i.i = phi i64 [ %.val10.i.i.peel25.i.i.i, %bb.c ], [ %.val10.i.i.peel.i.i.i, %.lr.ph.i.i.preheader.i.i.i ]
  %.val9.i.i.peel30.i.i.i = phi ptr [ %.val9.i.i.peel24.i.i.i, %bb.c ], [ %.val9.i.i.peel.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.val8.i.i.peel28.i.i.i = phi i64 [ %.val8.i.i.peel23.i.i.i, %bb.c ], [ %.val8.i.i.peel.i.i.i, %.lr.ph.i.i.preheader.i.i.i ]
  %.val7.i.i.peel26.i.i.i = phi ptr [ %.val7.i.i.peel22.i.i.i, %bb.c ], [ %.val7.i.i.peel.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.peel26.i.i.i) ]
  %i.v = call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.peel26.i.i.i, i64 noundef %.val8.i.i.peel28.i.i.i), !noalias !228 ; 0 uses
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !229
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.peel30.i.i.i) ]
  %i.w = call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i.i.peel30.i.i.i, i64 noundef %.val10.i.i.peel32.i.i.i), !noalias !230 ; 0 uses
  %i.x = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBK_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !223 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.peel.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBV_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtBZ_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapRBV_B4S_RINtB6_7HashMapBV_BV_EE0INtNtB1J_6result6ResultuNtNtB2W_5error5ErrorEECscsgjCEAuSgO_6candle.exit.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i
  %i.z = phi ptr [ %i.aj, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i ], [ %i.y, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i ] ; 2 uses
  %i.aa = phi { ptr, ptr } [ %i.ai, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i ]
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !223 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !223
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !223 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %.val10.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !223
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i.i) ]
  %i.ag = call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i), !noalias !228 ; 0 uses
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !229
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i) ]
  %i.ah = call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i), !noalias !230 ; 0 uses
  %i.ai = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBK_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !223 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBV_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtBZ_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapRBV_B4S_RINtB6_7HashMapBV_BV_EE0INtNtB1J_6result6ResultuNtNtB2W_5error5ErrorEECscsgjCEAuSgO_6candle.exit.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i, !llvm.loop !216

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBV_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtBZ_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapRBV_B4S_RINtB6_7HashMapBV_BV_EE0INtNtB1J_6result6ResultuNtNtB2W_5error5ErrorEECscsgjCEAuSgO_6candle.exit.thread.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsgCecv3eZDcN_5alloc6string6StringB1l_EINtNtBe_6result6ResultuNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENCINvYQINtNtB2u_3ser10SerializerQINtNtB1q_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapB1l_B1l_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1m_B1m_EE0E0CscsgjCEAuSgO_6candle.exit.i.i.peel.i.i.i, %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.thread.i.i.i
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !223
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_EECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_EECscsgjCEAuSgO_6candle.exit: ; preds = %_RNvXs1_NtCsaPlfBUY5LAj_10serde_json3serQINtB5_10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer13serialize_mapCscsgjCEAuSgO_6candle.exit.i.i.i, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringBV_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtBZ_3vec3VechEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_mapRBV_B4S_RINtB6_7HashMapBV_BV_EE0INtNtB1J_6result6ResultuNtNtB2W_5error5ErrorEECscsgjCEAuSgO_6candle.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json3ser8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsOwuIBbUsgI_11safetensors6tensor5DtypeECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !236, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !236, !noundef !4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !237, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !237
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !236
  %i.e = tail call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !236 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !238, !nonnull !4, !align !6, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !238
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtCsOwuIBbUsgI_11safetensors6tensors3_1__NtB5_5DtypeNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeQINtNtCsaPlfBUY5LAj_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json3ser8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap15serialize_entryeTjjEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !258, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !8, !alias.scope !258, !noundef !4
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !259, !nonnull !4, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !259
  br label %_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit

_RINvXs6_NtCsaPlfBUY5LAj_10serde_json3serINtB6_8CompoundQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseZbltJ5Yqe_10serde_core3ser12SerializeMap13serialize_keyeECscsgjCEAuSgO_6candle.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !258
  %i.g = tail call noundef ptr @_RINvNtCsaPlfBUY5LAj_10serde_json3ser18format_escaped_strQINtNtCsgCecv3eZDcN_5alloc3vec3VechENtB2_16CompactFormatterECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !258 ; 0 uses
  %.val3 = load i64, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.h, align 8
  %.val.i5 = load ptr, ptr %i.c, align 8, !nonnull !4, !align !6, !noundef !4
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !263, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  tail call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !265
  %i.i = call noundef i64 @_RNvXsu_Cs3nyyB272nGn_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val3, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b), !noalias !265 ; 2 uses
  %i.j = sub nuw i64 20, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !265
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  %i.l = call noundef i64 @_RNvXsu_Cs3nyyB272nGn_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val4, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !noalias !266 ; 2 uses
  %i.m = sub nuw i64 20, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.m), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !260
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsgYbDhs8a4Ay_9once_cell3impINtB8_8OnceCellINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2i_INtB2i_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3U_E0CscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !276
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.e, align 8, !noalias !276
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.g, align 8, !noalias !276
  call void @_RNvXs4_NtNtCs4dfyxXSEGwW_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !276
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !277
  %i.h = load ptr, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !277, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !277, !noundef !4
  call void @_RINvMNtNtCs4dfyxXSEGwW_4pyo35types6moduleNtB3_8PyModule6importReECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !277
  %i.k = load i64, ptr %i.b, align 8, !range !5, !noalias !277, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.015.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !277 ; 5 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !277
  store ptr %.sroa.015.0.copyload.i.i, ptr %i.c, align 8, !noalias !277
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %i.n = load ptr, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !277, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !277, !noundef !4
  invoke void @_RINvXs_NtNtCs4dfyxXSEGwW_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.e unwind label %bb.d, !noalias !277

common.resume:                                    ; preds = %bb.q, %bb.s, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.am, %bb.s ], [ %i.aj, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #21, !noalias !277
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !range !5, !noalias !277, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.021.0.copyload.i.i = load ptr, ptr %i.t, align 8, !noalias !277 ; 6 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.422.0..sroa_idx.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !278, !noundef !4
  %i.w = call noundef i64 @PyType_GetFlags(ptr noundef %i.v) #21, !noalias !278
  %i.x = and i64 %i.w, 2147483648
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_Py_IncRef(ptr noundef nonnull @PyType_Type) #21, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !277
  invoke void @_RNvXs4_NtNtCs4dfyxXSEGwW_4pyo33err10cast_errorNtB7_5PyErrINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.021.0.copyload.i.i, ptr noundef nonnull @PyType_Type)
          to label %bb.i unwind label %bb.d, !noalias !277

bb.i:                                             ; preds = %bb.h
  %.sroa.714.8.copyload15 = load ptr, ptr %i.a, align 8, !noalias !279
  %.sroa.13.8..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.8..sroa_idx16, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !277
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.sroa.714.0 = phi ptr [ %.sroa.021.0.copyload.i.i, %bb.f ], [ %.sroa.714.8.copyload15, %bb.i ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #21, !noalias !277
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j
  %.sroa.714.1 = phi ptr [ %.sroa.015.0.copyload.i.i, %bb.b ], [ %.sroa.714.0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !277
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !6, !noundef !4 ; 7 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !5, !alias.scope !280, !noundef !4
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4dfyxXSEGwW_4pyo33err5PyErrECscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit unwind label %bb.s

bb.m:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.015.0.copyload.i.i) #21, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !277
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload.i.i) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !4
  %.val = load ptr, ptr %i.af, align 8, !noundef !4 ; 3 uses
  %i.ag = icmp eq ptr %.val, null
  br i1 %i.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs4dfyxXSEGwW_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noundef !4
  %i.ai = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.ai, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXsy_NtCs4dfyxXSEGwW_4pyo38instanceINtB7_2PypENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @_Py_DecRef(ptr noundef nonnull %.val) #21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.ae, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.ak, align 8
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.p, %bb.m, %bb.o
  %i.al = load ptr, ptr %i.ae, align 8, !noundef !4
  store ptr %.sroa.021.0.copyload.i.i, ptr %i.al, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB12_5types10typeobject6PyTypeEEECscsgjCEAuSgO_6candle.exit ]
  ret i1 %.sroa.0.0

bb.s:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.z, align 8
  store ptr %.sroa.714.1, ptr %i.ac, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs4dfyxXSEGwW_4pyo33err5PyErrEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.k, %bb.l
  store i64 1, ptr %i.z, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.714.1, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsgYbDhs8a4Ay_9once_cell3impINtBd_8OnceCellINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2o_INtB2o_10PyOnceLockBW_E6import0BW_NtNtB11_3err5PyErrE0B41_E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_once6vtableCscsgjCEAuSgO_6candle(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCsgYbDhs8a4Ay_9once_cell3impINtB8_8OnceCellINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2i_INtB2i_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3U_E0CscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #25
  ret i1 %i.a
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs4_NtCsgYbDhs8a4Ay_9once_cell4syncINtB5_8OnceCellINtNtCs4dfyxXSEGwW_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE3getCscsgjCEAuSgO_6candle(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  %i.b = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %spec.select
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1y_fEEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1y_mEEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1y_xEEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecfEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceINtNtCsgCecv3eZDcN_5alloc3vec3VecxEENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceNtCscsgjCEAuSgO_6candle8PyTensorENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecB1z_(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequencefENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequenceiENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequencejENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequencemENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden void @_RNvXNvNtNtCs4dfyxXSEGwW_4pyo310conversion12FromPyObject18sequence_extractorINtB2_14NeverASequencexENtNtB6_23from_py_object_sequence20FromPyObjectSequence6to_vecCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_16ShapeWithOneHole10into_shapeCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromjE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterINtNtB9_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance8BorrowedNtNtNtB19_5types3any5PyAnyEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorInfoENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
end_hunk_0
