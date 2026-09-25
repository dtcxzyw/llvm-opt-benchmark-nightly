Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.07?download=true
inline.NumInlined: 4383
inline.NumDeleted: 408
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone22squeeze_and_excitation:bb.a
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.body39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !38615
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %.body39

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #26
          to label %.body39 unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38616)
  %i.aa = load ptr, ptr %i.h, align 8, !alias.scope !38617, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !38618
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.67, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !38619
  %i.ai = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1009) 128, i64 noundef 8) #30, !noalias !38619 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.r, label %bb.u, !prof !7

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #25
          to label %.noexc41 unwind label %bb.s

.noexc41:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone22squeeze_and_excitation0EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ah)
          to label %.body39 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @306, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.e, %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.n, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %3)
  ret void

bb.v:                                             ; preds = %bb.f, %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn4conv6Conv2dECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #29
          to label %.body39 unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %.body39
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.x:                                             ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone24mobileone_no_final_layer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone15mobileone_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef 0, i64 undef, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone9mobileone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9mobileone15mobileone_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef 1, i64 %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4flux15quantized_model10layer_norm(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9ones_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, i64 noundef %1, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builder10VarBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #29
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.417.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double f0x3EB0C6F7A0B5ED8D, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.69.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builder10VarBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils27get_anyres_image_grid_shape(i32 noundef %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = uitofp i32 %0 to float                   ; 2 uses
  %i.b = uitofp i32 %1 to float                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %3, 3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils22select_best_resolution.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = insertelement <2 x float> poison, float %i.a, i64 0
  %i.f = insertelement <2 x float> %i.e, float %i.b, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.0.013.i = phi i32 [ %.sroa.0.1.i, %bb.c ], [ 0, %.lr.ph.i.preheader ]
  %.sroa.3.012.i = phi i32 [ %.sroa.3.1.i, %bb.c ], [ 0, %.lr.ph.i.preheader ]
  %.sroa.02.011.i = phi i32 [ %.sroa.02.1.i, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.04.010.i = phi i32 [ %.sroa.04.1.i, %bb.c ], [ -1, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %i.g, %bb.c ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4
  %i.i = load i32, ptr %.sroa.05.09.i, align 4, !alias.scope !38622, !noundef !5 ; 3 uses
  %5 = uitofp i32 %i.i to float
  %6 = load i32, ptr %i.h, align 4, !alias.scope !38622, !noundef !5 ; 3 uses
  %i.j = uitofp i32 %6 to float
  %i.k = insertelement <2 x float> poison, float %5, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fdiv <2 x float> %i.l, %i.f              ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = tail call nsz float @llvm.minimumnum.f32(float %i.n, float %i.o) ; 2 uses
  %i.q = fmul float %i.p, %i.a
  %i.r = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.q)
  %i.s = fmul float %i.p, %i.b
  %i.t = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.s)
  %i.u = mul i32 %6, %i.i                         ; 2 uses
  %i.v = mul i32 %i.r, %i.t
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.v) ; 4 uses
  %i.x = sub nuw i32 %i.u, %i.w                   ; 2 uses
  %i.y = icmp ugt i32 %i.w, %.sroa.02.011.i
  br i1 %i.y, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.z = icmp eq i32 %i.w, %.sroa.02.011.i
  %i.aa = icmp ult i32 %i.x, %.sroa.04.010.i
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.04.1.i = phi i32 [ %i.x, %bb.d ], [ %.sroa.04.010.i, %bb.b ]
  %.sroa.02.1.i = phi i32 [ %i.w, %bb.d ], [ %.sroa.02.011.i, %bb.b ]
  %.sroa.3.1.i = phi i32 [ %6, %bb.d ], [ %.sroa.3.012.i, %bb.b ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %i.i, %bb.d ], [ %.sroa.0.013.i, %bb.b ] ; 2 uses
  %i.ab = icmp eq ptr %i.g, %i.c
  br i1 %i.ab, label %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils22select_best_resolution.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b, %.lr.ph.i
  br label %bb.c

_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils22select_best_resolution.exit: ; preds = %bb.c, %bb.a
  %.sroa.3.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.sroa.3.1.i, %bb.c ]
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.1.i, %bb.c ]
  %i.ac = icmp eq i32 %4, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils22select_best_resolution.exit
  %i.ad = udiv i32 %.sroa.0.0.lcssa.i, %4
  %i.ae = udiv i32 %.sroa.3.0.lcssa.i, %4
  %i.af = insertvalue { i32, i32 } poison, i32 %i.ad, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %i.ae, 1
  ret { i32, i32 } %i.ag

bb.f:                                             ; preds = %_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llava5utils22select_best_resolution.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB2_12BetaScheduleNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB2_12BetaScheduleNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB2_12BetaScheduleNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.88, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4clip10text_modelNtB2_10ActivationNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsH_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef 1.702000e+00)
  %i.d = load i64, ptr %i.a, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.b, align 8
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn3ops7sigmoid(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !38641)
  call void @llvm.experimental.noalias.scope.decl(metadata !38642)
  call void @llvm.experimental.noalias.scope.decl(metadata !38643)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !38644, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !38644
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not37 = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %.not37, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.530.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.432.0..sroa_idx, align 8
  %i.n = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !38645
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsB_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MulBG_E3mulCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull %i.m)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38646)
  call void @llvm.experimental.noalias.scope.decl(metadata !38647)
  call void @llvm.experimental.noalias.scope.decl(metadata !38648)
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !38649, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !38649
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38: ; preds = %bb.k, %bb.j, %bb.b, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbert1__NtB7_6ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1k_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernberts0_1__NtB7_16ClassifierConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernberts_1__NtB7_17ClassifierPoolingNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @313, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models10starcoder21__NtB7_6ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1k_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemma1__NtB7_17TemporalBlockTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1B_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @313, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemmas_1__NtB7_6ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1r_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9deepseek21__NtB7_10TopkMethodNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @313, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models9deepseek2s0_1__NtB7_16DeepSeekV2ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1w_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 16)
  ret i1 %i.a
}
end_hunk_0
