Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.007?download=true
inline.NumInlined: 11866
inline.NumDeleted: 6049
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBR_jEEINtB6_6ExtendTB1n_jEE6extendINtNtBc_6option6OptionB2Y_EEB1v_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !alias.scope !13384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13386)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !13386, !noalias !13385 ; 2 uses
  %i.b = icmp ne i64 %.val.i, -1                  ; 2 uses
  %i.c = zext i1 %i.b to i64                      ; 4 uses
  br i1 %i.b, label %bb.b, label %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBQ_jEEINtB5_6ExtendTB1m_jEE14extend_reserveB1u_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !13387, !noalias !13386, !noundef !38 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !45, !alias.scope !13387, !noalias !13386, !noundef !38
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.e, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 152)
          to label %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e, !noalias !13386

_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13388, !noalias !13386, !noundef !38 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !45, !alias.scope !13388, !noalias !13386, !noundef !38
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ult i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.lr.ph.split.us.i.i.i, !prof !39

bb.d:                                             ; preds = %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.k, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %..lr.ph.split.us.i.i.i_crit_edge unwind label %bb.e, !noalias !13386

..lr.ph.split.us.i.i.i_crit_edge:                 ; preds = %bb.d
  %.promoted12.i.i.i.pre = load i64, ptr %i.j, align 8, !alias.scope !13389, !noalias !13390
  br label %.lr.ph.split.us.i.i.i

_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBQ_jEEINtB5_6ExtendTB1m_jEE14extend_reserveB1u_.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13392)
  br label %_RNvXs_NvNtNtNtCskKLDkoKarTP_4core4iter6traits7collect14default_extendTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIB17_jEEINtB4_10SpecExtendINtNtBc_6option8IntoIterTB1D_jEEE6extendB1L_.exit

.lr.ph.split.us.i.i.i:                            ; preds = %..lr.ph.split.us.i.i.i_crit_edge, %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  %.promoted12.i.i.i = phi i64 [ %.promoted12.i.i.i.pre, %..lr.ph.split.us.i.i.i_crit_edge ], [ %i.k, %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i ] ; 3 uses
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.5.0.copyload15.i = load i64, ptr %.sroa.5.0..sroa_idx14.i, align 8, !alias.scope !13386, !noalias !13385
  %.promoted11.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !13393, !noalias !13394 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !13389, !noalias !13390, !nonnull !38, !noundef !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13393, !noalias !13394, !nonnull !38, !noundef !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13396)
  %i.s = icmp ult i64 %.promoted11.i.i.i, 60680079189834052
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [152 x i8], ptr %i.r, i64 %.promoted11.i.i.i ; 2 uses
  store i64 %.val.i, ptr %i.t, align 8, !noalias !13397
  %.sroa.47.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.47.0..sroa_idx.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.u, i64 144, i1 false)
  %i.v = add nuw nsw i64 %.promoted11.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13398)
  %i.w = icmp ult i64 %.promoted12.i.i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.promoted12.i.i.i
  store i64 %.sroa.5.0.copyload15.i, ptr %i.x, align 8, !noalias !13399
  %i.y = add nuw nsw i64 %.promoted12.i.i.i, 1
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !13393, !noalias !13394
  store i64 %i.y, ptr %i.j, align 8, !alias.scope !13389, !noalias !13390
  br label %_RNvXs_NvNtNtNtCskKLDkoKarTP_4core4iter6traits7collect14default_extendTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIB17_jEEINtB4_10SpecExtendINtNtBc_6option8IntoIterTB1D_jEEE6extendB1L_.exit

.body.i:                                          ; preds = %bb.e
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputjEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a) #31
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs_NvNtNtNtCskKLDkoKarTP_4core4iter6traits7collect14default_extendTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIB17_jEEINtB4_10SpecExtendINtNtBc_6option8IntoIterTB1D_jEEE6extendB1L_.exit: ; preds = %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBQ_jEEINtB5_6ExtendTB1m_jEE14extend_reserveB1u_.exit.i, %.lr.ph.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtCskQk6bzzE9jJ_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !noundef !38 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !45, !alias.scope !13406, !noundef !38
  %i.e = icmp ugt i64 %.val, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit unwind label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call fastcc void @_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putNtNtBa_5bytes5BytesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13408)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !13409, !noundef !38
  %i.i = load ptr, ptr %1, align 8, !alias.scope !13409, !nonnull !38, !align !47, !noundef !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13409, !nonnull !38, !noundef !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13409, !noundef !38
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit unwind label %bb.d, !inline_history !20

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtCskQk6bzzE9jJ_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter9append_toBB_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !38, !noundef !38 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !38 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !13423
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !noalias !13423
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !13424, !noalias !13425, !noundef !38 ; 2 uses
  %i.i = load i64, ptr %1, align 8, !range !45, !alias.scope !13424, !noalias !13425, !noundef !38
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b, %bb.a
  %i.l = call noundef zeroext i1 @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.l, label %.lr.ph.i, label %_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.g, align 8, !alias.scope !13426, !noalias !13425, !noundef !38 ; 5 uses
  %i.o = load i64, ptr %1, align 8, !range !45, !alias.scope !13426, !noalias !13425, !noundef !38
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ugt i64 %i.e, %i.p
  br i1 %i.q, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i, !prof !39

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i: ; preds = %.lr.ph.i
  %i.r = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.r)
  %.not.i.peel.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.peel.i, label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i, label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i: ; preds = %.lr.ph.i
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !13427, !noalias !13425, !noundef !38 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i
  %i.u = phi i64 [ %i.s, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i ]
  %i.v = load ptr, ptr %i.m, align 8, !alias.scope !13427, !noalias !13425, !nonnull !38, !noundef !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.e, i1 false)
  %.pre.i.peel.i = load i64, ptr %i.g, align 8, !alias.scope !13427, !noalias !13425
  br label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i

_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i
  %i.x = phi i64 [ %.pre.i.peel.i, %bb.c ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i ]
  %i.y = add i64 %i.x, %i.e
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !13427, !noalias !13425
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !alias.scope !13428, !noalias !13423, !captures !121
  store i64 0, ptr %i.f, align 8, !alias.scope !13428, !noalias !13423
  %i.aa = call noundef zeroext i1 @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.aa, label %.peel.next.i, label %_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit

.peel.next.i:                                     ; preds = %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i
  store ptr %i.z, ptr %i.a, align 8, !alias.scope !13428, !noalias !13423, !captures !121
  store i64 0, ptr %i.f, align 8, !alias.scope !13428, !noalias !13423
  br label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i

_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i: ; preds = %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i, %.peel.next.i
  %i.ab = call noundef zeroext i1 @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.ab, label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i, label %_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit, !llvm.loop !13421

_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i, %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtBc_3vec3VechENtB6_18BufferedWriterSpec9copy_fromNtNtCs3TE53SMfxyL_6fs_err4file4FileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCsl8OoimOLbh_6qdrant.exit:
  %i.a = tail call { i64, ptr } @_RNvYNtNtCs3TE53SMfxyL_6fs_err4file4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_endCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecIBK_fEENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorIB3o_fEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecIBK_fEENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorIB3o_fEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecIBK_fEENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB21_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB21_11Deserialize11deserialize10VecVisitorIB3n_fEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB21_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB21_11Deserialize11deserialize10VecVisitorINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtB8_11Deserialize11deserializeNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtB3p_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtB3s_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB21_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB21_11Deserialize11deserialize10VecVisitorNtNtB3r_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2d_4read9SliceReadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtB2L_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types13GeoLineStringENtB8_11Deserialize11deserializeINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtB2A_17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs9_NtCsadazKHFPhDw_11serde_value2deINtB6_17ValueDeserializerNtB6_17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1s_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types13GeoLineStringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types13GeoLineStringENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB2d_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB2d_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types13GeoLineStringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsb3nlOWP6RTB_9rmp_serde6decode5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB21_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB21_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeNtNtCs8O45qwFIwQX_10serde_json5value5ValueECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8O45qwFIwQX_10serde_json5value2deNtB8_5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtB8_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerNtNtB2F_4read9SliceReadEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtB8_11Deserialize11deserializeINtNtCsadazKHFPhDw_11serde_value2de17ValueDeserializerNtB2u_17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs9_NtCsadazKHFPhDw_11serde_value2deINtB6_17ValueDeserializerNtB6_17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1s_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1s_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types8GeoPointEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB2d_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB2d_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types8GeoPointEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs3cfoFdbzKJ1_12erased_serde5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs3cfoFdbzKJ1_12erased_serde5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB24_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB24_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8jn5zD2RXga_10serde_cbor5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtB8_11Deserialize11deserializeINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsadazKHFPhDw_11serde_value2de17DeserializerErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB2d_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB2d_11Deserialize11deserialize10VecVisitorNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}
end_hunk_0
