Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.007?download=true
inline.NumInlined: 11866
inline.NumDeleted: 6049
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs2_NtCs4J2qyOfMFpM_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant:bb.a
  call fastcc void @_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putNtNtBa_5bytes5BytesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13297)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !13300, !noundef !8
  %i.i = load ptr, ptr %1, align 8, !alias.scope !13300, !nonnull !8, !align !162, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13300, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13300, !noundef !8
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit unwind label %bb.d, !inline_history !7597

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCs4J2qyOfMFpM_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter9append_toNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !162, !noundef !8
  tail call void @_RINvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putRShECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putNtNtBa_5bytes5BytesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %.val = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13301, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !114, !alias.scope !13301, !noundef !8
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %.val, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit, !prof !17

.loopexit:                                        ; preds = %bb.d, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.c, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13304)
  call void @llvm.experimental.noalias.scope.decl(metadata !13307)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !13310, !noundef !8
  %i.l = load ptr, ptr %1, align 8, !alias.scope !13310, !nonnull !8, !align !162, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !13310, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !13310, !noundef !8
  %i.q = load i64, ptr %i.d, align 8, !alias.scope !13310, !noundef !8
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit unwind label %bb.j, !inline_history !7597

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit unwind label %.loopexit.split-lp

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit
  %i.t = invoke noundef zeroext i1 @_RNvYNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13314)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !13317, !noundef !8
  %i.w = load ptr, ptr %1, align 8, !alias.scope !13317, !nonnull !8, !align !162, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !13317, !nonnull !8, !noundef !8
  %i.z = load ptr, ptr %i.r, align 8, !alias.scope !13317, !noundef !8
  %i.aa = load i64, ptr %i.d, align 8, !alias.scope !13317, !noundef !8
  tail call void %i.y(ptr noundef %i.v, ptr noundef %i.z, i64 noundef %i.aa), !noalias !13317, !inline_history !13318
  ret void

bb.g:                                             ; preds = %bb.e
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8
  %.val2 = load i64, ptr %i.d, align 8, !noundef !8 ; 9 uses
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !13319, !noundef !8 ; 5 uses
  %i.ac = load i64, ptr %0, align 8, !range !114, !alias.scope !13319, !noundef !8
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ugt i64 %.val2, %i.ad
  br i1 %i.ae, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i, !prof !17

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %.val2, i64 noundef 1, i64 noundef 1)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i
  %i.af = load i64, ptr %i.e, align 8, !alias.scope !13324, !noundef !8 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  br label %bb.h

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g
  %i.ah = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ah)
  %.not.i = icmp eq i64 %.val2, 0
  br i1 %.not.i, label %.thread, label %bb.h

.thread:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !13324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %_RNvXs3_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit

bb.h:                                             ; preds = %.noexc3, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i
  %i.ai = phi i64 [ %i.af, %.noexc3 ], [ %i.ab, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i ]
  %i.aj = load ptr, ptr %i.s, align 8, !alias.scope !13324, !nonnull !8, !noundef !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %.val1, i64 %.val2, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !13324
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !13325 ; 3 uses
  %i.al = add i64 %.pre.i, %.val2
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !13324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.val2, ptr %i.c, align 8, !noalias !13325
  %.not.i4 = icmp ugt i64 %.val2, %.pre
  br i1 %.not.i4, label %bb.i, label %_RNvXs3_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit, !prof !13328

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13325
  store i64 %.pre, ptr %i.b, align 8, !noalias !13325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13325
  store ptr %i.c, ptr %i.a, align 8, !noalias !13325
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13325
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.am, align 8, !noalias !13325
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !13325
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.i
  unreachable

_RNvXs3_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit: ; preds = %.thread, %bb.h
  %i.an = phi i64 [ 0, %.thread ], [ %.pre, %bb.h ]
  %i.ao = sub nuw i64 %i.an, %.val2
  store i64 %i.ao, ptr %i.d, align 8, !alias.scope !13325
  %i.ap = load ptr, ptr %i.r, align 8, !alias.scope !13325, !noundef !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.val2
  store ptr %i.aq, ptr %i.r, align 8, !alias.scope !13325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBR_jEEINtB6_6ExtendTB1n_jEE6extendINtNtBc_6option6OptionB2Y_EEB1v_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !alias.scope !13329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13336)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !13336, !noalias !13333 ; 2 uses
  %i.b = icmp ne i64 %.val.i, -1                  ; 2 uses
  %i.c = zext i1 %i.b to i64                      ; 4 uses
  br i1 %i.b, label %bb.b, label %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBQ_jEEINtB5_6ExtendTB1m_jEE14extend_reserveB1u_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !13338, !noalias !13336, !noundef !8 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !114, !alias.scope !13338, !noalias !13336, !noundef !8
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i, !prof !17

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.e, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 152)
          to label %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i unwind label %bb.e, !noalias !13336

_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13345, !noalias !13336, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !114, !alias.scope !13345, !noalias !13336, !noundef !8
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ult i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.lr.ph.split.us.i.i.i, !prof !17

bb.d:                                             ; preds = %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.k, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %..lr.ph.split.us.i.i.i_crit_edge unwind label %bb.e, !noalias !13336

..lr.ph.split.us.i.i.i_crit_edge:                 ; preds = %bb.d
  %.promoted12.i.i.i.pre = load i64, ptr %i.j, align 8, !alias.scope !13350, !noalias !13359
  br label %.lr.ph.split.us.i.i.i

_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIBQ_jEEINtB5_6ExtendTB1m_jEE14extend_reserveB1u_.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13368)
  br label %_RNvXs_NvNtNtNtCskKLDkoKarTP_4core4iter6traits7collect14default_extendTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEIB17_jEEINtB4_10SpecExtendINtNtBc_6option8IntoIterTB1D_jEEE6extendB1L_.exit

.lr.ph.split.us.i.i.i:                            ; preds = %..lr.ph.split.us.i.i.i_crit_edge, %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i
  %.promoted12.i.i.i = phi i64 [ %.promoted12.i.i.i.pre, %..lr.ph.split.us.i.i.i_crit_edge ], [ %i.k, %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveBN_.exit.i.i ] ; 3 uses
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.5.0.copyload15.i = load i64, ptr %.sroa.5.0..sroa_idx14.i, align 8, !alias.scope !13336, !noalias !13333
  %.promoted11.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !13369, !noalias !13372 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !13350, !noalias !13359, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13369, !noalias !13372, !nonnull !8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13375)
  %i.s = icmp ult i64 %.promoted11.i.i.i, 60680079189834052
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [152 x i8], ptr %i.r, i64 %.promoted11.i.i.i ; 2 uses
  store i64 %.val.i, ptr %i.t, align 8, !noalias !13376
  %.sroa.47.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.47.0..sroa_idx.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.u, i64 144, i1 false)
  %i.v = add nuw nsw i64 %.promoted11.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13377)
  %i.w = icmp ult i64 %.promoted12.i.i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.promoted12.i.i.i
  store i64 %.sroa.5.0.copyload15.i, ptr %i.x, align 8, !noalias !13378
  %i.y = add nuw nsw i64 %.promoted12.i.i.i, 1
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !13369, !noalias !13372
  store i64 %i.y, ptr %i.j, align 8, !alias.scope !13350, !noalias !13359
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
  %.val = load i64, ptr %i.c, align 8, !noundef !8 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !114, !alias.scope !13379, !noundef !8
  %i.e = icmp ugt i64 %.val, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit, !prof !17

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13385)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !13388, !noundef !8
  %i.i = load ptr, ptr %1, align 8, !alias.scope !13388, !nonnull !8, !align !162, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13388, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13388, !noundef !8
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit unwind label %bb.d, !inline_history !7597

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
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !13392
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !noalias !13392
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !13394, !noalias !13397, !noundef !8 ; 2 uses
  %i.i = load i64, ptr %1, align 8, !range !114, !alias.scope !13394, !noalias !13397, !noundef !8
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b, %bb.a
  %i.l = call noundef zeroext i1 @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.l, label %.lr.ph.i, label %_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.g, align 8, !alias.scope !13398, !noalias !13397, !noundef !8 ; 5 uses
  %i.o = load i64, ptr %1, align 8, !range !114, !alias.scope !13398, !noalias !13397, !noundef !8
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ugt i64 %i.e, %i.p
  br i1 %i.q, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i, !prof !17

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i: ; preds = %.lr.ph.i
  %i.r = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.r)
  %.not.i.peel.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.peel.i, label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i, label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i: ; preds = %.lr.ph.i
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !13403, !noalias !13397, !noundef !8 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i
  %i.u = phi i64 [ %i.s, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.thread.i.peel.i ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i ]
  %i.v = load ptr, ptr %i.m, align 8, !alias.scope !13403, !noalias !13397, !nonnull !8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.e, i1 false)
  %.pre.i.peel.i = load i64, ptr %i.g, align 8, !alias.scope !13403, !noalias !13397
  br label %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i

_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i
  %i.x = phi i64 [ %.pre.i.peel.i, %bb.c ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant.exit.i.peel.i ]
  %i.y = add i64 %i.x, %i.e
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !13403, !noalias !13397
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !alias.scope !13404, !noalias !13392, !captures !13407
  store i64 0, ptr %i.f, align 8, !alias.scope !13404, !noalias !13392
  %i.aa = call noundef zeroext i1 @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.aa, label %.peel.next.i, label %_RINvXs2_NtNtCs14kzo5Se9zC_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECsl8OoimOLbh_6qdrant.exit

.peel.next.i:                                     ; preds = %_RNvXs0_NtNtCs14kzo5Se9zC_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.peel.i
end_hunk_0
