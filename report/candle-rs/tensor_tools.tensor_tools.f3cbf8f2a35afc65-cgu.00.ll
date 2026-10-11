Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.00?download=true
inline.NumInlined: 959
inline.NumDeleted: 501
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBV_B1g_EE9from_iterCskVIURZGHVHJ_12tensor_tools:bb.a
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !832, !noalias !833
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !832, !noalias !833
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !832, !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !834
  tail call void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !832
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB12_B1n_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #18
          to label %bb.q unwind label %bb.p, !noalias !832

bb.e:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !834
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load i64, ptr %i.m, align 8, !alias.scope !833, !noalias !832, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !834
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i unwind label %bb.d, !noalias !832

.noexc.i:                                         ; preds = %bb.e
  %i.p = load i64, ptr %i.c, align 8, !range !21, !noalias !834, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !22, !noalias !834, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !834
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #22
          to label %.noexc4.i unwind label %bb.d, !noalias !832

.noexc4.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !834, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !832
  store i64 %i.s, ptr %i.g, align 8, !noalias !834
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !834
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.j, !noalias !832

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.y, %bb.j ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.body.i unwind label %bb.n, !noalias !832

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 8, !range !11, !noalias !839, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !839
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !840, !noalias !841, !noundef !5 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 288230376151711744
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.g, align 8, !range !9, !alias.scope !840, !noalias !841, !noundef !5
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.m, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %bb.m, %bb.k
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !840, !noalias !841, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !832
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !840, !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  br label %bb.h

bb.l:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #18
          to label %bb.i unwind label %bb.n, !noalias !832

bb.m:                                             ; preds = %bb.k
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !842, !noalias !843, !noundef !5
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.l, !noalias !832

bb.n:                                             ; preds = %bb.l, %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !832
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.o, !noalias !832

bb.o:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %.pn.i.i.i, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.p, !noalias !832

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !834
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB12_B1n_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

bb.p:                                             ; preds = %bb.q, %.body.i, %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !832
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.q, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.q ]
  resume { ptr, i32 } %.pn9.i

bb.q:                                             ; preds = %bb.d, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.d ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.p, !noalias !832

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB12_B1n_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.c, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBW_B1i_EE9from_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !855
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !853 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !854, !noalias !853, !noundef !5
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !855
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !853
  %i.i = load i64, ptr %i.a, align 8, !range !21, !noalias !855, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !22, !noalias !855, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !855
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #22, !noalias !853
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = load ptr, ptr %i.m, align 8, !noalias !855, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  store ptr %i.e, ptr %i.p, align 8, !noalias !853
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.r, align 8, !noalias !853
  store i64 %i.l, ptr %i.c, align 8, !noalias !855
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !855
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.s = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !853 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10.i, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %.noexc10.i ]
  %i.v = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.ah, %.noexc10.i ]
  %i.w = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !860, !noalias !861, !noundef !5 ; 5 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.c, align 8, !range !9, !alias.scope !860, !noalias !861, !noundef !5
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !862, !noalias !863, !noundef !5
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef range(i64 1, 0) %i.ab, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !853

.noexc9.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !860, !noalias !861, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !noalias !853
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %i.ae, align 8, !noalias !853
  %i.af = add nuw nsw i64 %i.x, 1
  store i64 %i.af, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !860, !noalias !861
  %i.ag = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !853 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !853, !noalias !854
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !alias.scope !853, !noalias !854
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !853, !noalias !854
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

.loopexit.i:                                      ; preds = %.noexc9.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtB7_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtBG_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.g, !noalias !853

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !854
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !853
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtBG_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.e, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !855
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBW_B1i_EE9from_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !875
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !873 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !874, !noalias !873, !noundef !5
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !875
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !873
  %i.i = load i64, ptr %i.a, align 8, !range !21, !noalias !875, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !22, !noalias !875, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !875
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #22, !noalias !873
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = load ptr, ptr %i.m, align 8, !noalias !875, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !875
  store ptr %i.e, ptr %i.p, align 8, !noalias !873
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.r, align 8, !noalias !873
  store i64 %i.l, ptr %i.c, align 8, !noalias !875
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !875
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.s = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !873 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10.i, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %.noexc10.i ]
  %i.v = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.ah, %.noexc10.i ]
  %i.w = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !880, !noalias !881, !noundef !5 ; 5 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.c, align 8, !range !9, !alias.scope !880, !noalias !881, !noundef !5
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !882, !noalias !883, !noundef !5
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef range(i64 1, 0) %i.ab, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !873

.noexc9.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !880, !noalias !881, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !noalias !873
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %i.ae, align 8, !noalias !873
  %i.af = add nuw nsw i64 %i.x, 1
  store i64 %i.af, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !880, !noalias !881
  %i.ag = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !873 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !873, !noalias !874
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !alias.scope !873, !noalias !874
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !873, !noalias !874
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

.loopexit.i:                                      ; preds = %.noexc9.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtB7_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtBG_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.g, !noalias !873

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !874
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !873
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtBG_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB13_B1p_EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.e, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBT_B1f_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !875
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EE9from_iterCskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !890
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !890
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noalias !890, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !22, !noalias !890, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EECskVIURZGHVHJ_12tensor_tools.exit.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !890
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #22, !noalias !890
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EECskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !890, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !890
  store i64 %i.k, ptr %i.c, align 8, !noalias !890
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !890
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !891
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !891
  store ptr %i.q, ptr %i.a, align 8, !noalias !891
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !891
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4k_3VecjE14extend_trustedBN_E0E0ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.c, !noalias !890

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EECskVIURZGHVHJ_12tensor_tools.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.d, !noalias !890

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !890
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EE9from_iterCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file15read_one_tensorNtNtCs5Xr050g3D4S_3std2fs4FileE0EECskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !890
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysB11_NtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCNvCskVIURZGHVHJ_12tensor_tools9run_prints_0EE9from_iterB4t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !908
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCNvCskVIURZGHVHJ_12tensor_tools9run_prints_0ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !908, !nonnull !5, !noundef !5
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val2.i = load i64, ptr %i.k, align 8, !noalias !908, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !909
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val2.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !910
  %i.l = load i64, ptr %i.d, align 8, !range !21, !noalias !909, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !22, !noalias !909, !noundef !5 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB12_B1n_EE9from_iterCskVIURZGHVHJ_12tensor_tools:bb.a
bb.c:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #18
          to label %bb.r unwind label %bb.q

bb.f:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.m, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.p = load i64, ptr %i.c, align 8, !range !21, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !22, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %.noexc
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #22
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store i64 %i.s, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1070
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.y, %bb.k ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.body unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.b, align 8, !range !11, !noalias !1070, !noundef !5
  %.not.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1070
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1071, !noalias !1072, !noundef !5 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 164703072086692426
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.g, align 8, !range !9, !alias.scope !1071, !noalias !1072, !noundef !5
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.n, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %bb.n, %bb.l
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1071, !noalias !1072, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1071, !noalias !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1070
  br label %bb.i

bb.m:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #18
          to label %bb.j unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %.val.i.i = load i64, ptr %i.x, align 8, !alias.scope !1072, !noalias !1071, !noundef !5
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i unwind label %bb.m

bb.o:                                             ; preds = %bb.m, %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RNvXsF_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1070
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.pn.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.q

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE16extend_desugaredINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBH_B12_EECskVIURZGHVHJ_12tensor_tools.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.q:                                             ; preds = %bb.r, %.body, %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.r, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.r ]
  resume { ptr, i32 } %.pn9

bb.r:                                             ; preds = %bb.e, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.e ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringB15_ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantizes0_0EE9from_iterB4I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !1083 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !1083, !nonnull !5, !noundef !5
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val3.i = load i64, ptr %i.g, align 8, !noalias !1083, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.k = load i64, ptr %i.a, align 8, !range !21, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !22, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #22
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.b
  %i.q = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.s = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.val.i, ptr %i.r, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.val3.i, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 %i.n, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.t = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i12.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringBV_ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantizes0_0EE11spec_extendB4o_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i.i
  %i.w = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.ak, %.noexc6 ] ; 2 uses
  %i.x = phi { ptr, ptr } [ %i.t, %.lr.ph.i.i ], [ %i.aj, %.noexc6 ]
  %i.y = extractvalue { ptr, ptr } %i.x, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !noalias !1088, !nonnull !5, !noundef !5
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val3.i.i.i = load i64, ptr %i.aa, align 8, !noalias !1088, !noundef !5
  %i.ab = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1089, !noalias !1090, !noundef !5 ; 5 uses
  %i.ac = icmp ult i64 %i.ab, 384307168202282326
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1089, !noalias !1090, !noundef !5
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i, label %.noexc5

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.v, align 8, !alias.scope !1090, !noalias !1089, !noundef !5
  %i.af = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ab, i64 noundef range(i64 1, 0) %i.af, i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i, %bb.d
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1089, !noalias !1090, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab ; 3 uses
  store ptr %.val.i.i.i, ptr %i.ah, align 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.val3.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.y, ptr %.sroa.57.0..sroa_idx.i.i, align 8
  %i.ai = add nuw nsw i64 %i.ab, 1
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1089, !noalias !1090
  %i.aj = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6 unwind label %.loopexit ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringBV_ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantizes0_0EE11spec_extendB4o_.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringBV_ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantizes0_0EE11spec_extendB4o_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i.i, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVIURZGHVHJ_12tensor_tools.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.h

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtB6_6string6StringBV_ENCNvCskVIURZGHVHJ_12tensor_tools12run_quantizes0_0EE11spec_extendB4o_.exit: ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTReRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE8as_sliceCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1095, !noundef !5 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !alias.scope !1095, !noundef !5
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i, !prof !14

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !1096, !noundef !5 ; 2 uses
  %i.k = icmp ult i64 %i.j, 192153584101141163
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 192153584101141163
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEECskVIURZGHVHJ_12tensor_tools.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1096, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !1096
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEECskVIURZGHVHJ_12tensor_tools.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.c, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !1096
  %i.t = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE7reserveCskVIURZGHVHJ_12tensor_tools.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCskVIURZGHVHJ_12tensor_tools12QuantizationENCNCNvXso_NtNtCsflt7xRw9JFr_12clap_builder7builder12value_parserINtB35_15EnumValueParserB2c_ENtB35_16TypedValueParser9parse_refs_00ENCB2X_s_0ENCB2X_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
end_hunk_1
