Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.227?download=true
inline.NumInlined: 683
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtNtCsliWsDkOzYJy_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECsl8OoimOLbh_6qdrant:bb.a

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @_RNvMNtCs14kzo5Se9zC_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i8 %i.d, 9
  br i1 %i.f, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq i8 %i.d, 127
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp eq ptr %i.c, %i.a
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.c, %._crit_edge
  %.sink = phi i8 [ 0, %._crit_edge ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsliWsDkOzYJy_4http6header5valueNtB3_11HeaderValue17from_maybe_sharedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = load <2 x ptr>, ptr %1, align 8
  %.sroa.014.0.copyload = load ptr, ptr %1, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.014.0.copyload, null
  br i1 %.not, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEECsl8OoimOLbh_6qdrant.exit8, !prof !14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEECsl8OoimOLbh_6qdrant.exit8: ; preds = %bb.a
  store <2 x ptr> %i.b, ptr %i.a, align 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.515.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 16
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.6.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  call void @_RNvMNtNtCsliWsDkOzYJy_4http6header5valueNtB2_11HeaderValue11from_shared(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtNtNtCs3WWrd2JY12C_5hyper5proto2h16encodeNtB3_7Encoder14encode_and_endNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [20 x i8], align 1                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.h, align 8, !noundef !13 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !range !15, !noundef !13 ; 2 uses
  %i.j = icmp slt i64 %i.i, -9223372036854775806
  %i.k = add i64 %i.i, -9223372036854775807
  %i.l = select i1 %i.j, i64 %i.k, i64 0
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.d, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs0_NtNtNtCs3WWrd2JY12C_5hyper5proto2h16encodeNtB5_9ChunkSize3new(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(none) dereferenceable(20) %i.e, i64 noundef %.val)
          to label %bb.f unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !13 ; 2 uses
  %i.o = tail call i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %i.n)
  switch i8 %i.o, label %bb.b [
    i8 -1, label %bb.h
    i8 0, label %bb.i
    i8 1, label %bb.j
  ]

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvMs9_NtNtNtCs3WWrd2JY12C_5hyper5proto2h12ioINtB6_8WriteBufINtNtB8_6encode10EncodedBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEE6bufferB1o_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, ptr noundef nonnull align 1 dereferenceable(20) %i.e, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 7, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RINvMs9_NtNtNtCs3WWrd2JY12C_5hyper5proto2h12ioINtB6_8WriteBufINtNtB8_6encode10EncodedBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEE6bufferINtNtNtB1s_3buf5chain5ChainIB28_NtB10_9ChunkSizeB1o_ERShEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i8, ptr %i.s, align 8, !range !16, !noundef !13
  %i.u = xor i8 %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.e, %bb.f
  %.sroa.0.0 = phi i8 [ %i.u, %bb.f ], [ 0, %bb.h ], [ %i.y, %bb.i ], [ %i.ac, %bb.j ], [ 0, %bb.e ]
  %i.v = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.v

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvMs9_NtNtNtCs3WWrd2JY12C_5hyper5proto2h12ioINtB6_8WriteBufINtNtB8_6encode10EncodedBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEE6bufferB1o_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvMs9_NtNtNtCs3WWrd2JY12C_5hyper5proto2h12ioINtB6_8WriteBufINtNtB8_6encode10EncodedBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEE6bufferB1o_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i8, ptr %i.w, align 8, !range !16, !noundef !13
  %i.y = xor i8 %i.x, 1
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !49
  call void @_RINvMs9_NtNtNtCs3WWrd2JY12C_5hyper5proto2h12ioINtB6_8WriteBufINtNtB8_6encode10EncodedBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEE6bufferINtNtNtB1s_3buf4take4TakeB1o_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !16, !noundef !13
  %i.ac = xor i8 %i.ab, 1
  br label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !52, !noundef !13
  %i.af = load ptr, ptr %1, align 8, !alias.scope !52, !nonnull !13, !align !17, !noundef !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !52, !nonnull !13, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !52, !noundef !13
  invoke void %i.ah(ptr noundef %i.ae, ptr noundef %i.aj, i64 noundef %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit unwind label %bb.l, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs3WWrd2JY12C_5hyper5proto2h16encodeNtB3_7Encoder15encode_trailersNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 12 uses
  %i.c = alloca [104 x i8], align 8               ; 12 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [72 x i8], align 16               ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 13 uses
  %i.h = alloca [32 x i8], align 8                ; 13 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [96 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 21 uses
  %i.r = alloca [40 x i8], align 8                ; 19 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = load i64, ptr %1, align 8, !range !15, !noundef !13
  switch i64 %i.t, label %bb.b [
    i64 -1, label %bb.e
    i64 -9223372036854775807, label %bb.e
    i64 -9223372036854775808, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !253
  %i.y = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @29)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.x
  %i.aa = extractvalue { i64, i64 } %i.y, 0
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @19, i64 32, i1 false), !noalias !253
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.aa, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !253
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ab, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !253
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2y_5slice4iter4IterBP_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull %i.v, ptr noundef nonnull %i.z)
          to label %bb.g unwind label %bb.c, !noalias !253

bb.c:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %.thread unwind label %bb.d, !noalias !253

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !253
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %2)
  br label %bb.af

bb.f:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs_NtNtCs577yCKf7gy3_4http6header3mapNtB4_9HeaderMapNtNtCskKLDkoKarTP_4core7default7Default7defaultCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.q)
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %.body30, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body30 ], [ %i.ar, %bb.k ] ; 3 uses
  %.sroa.016.2 = phi i1 [ false, %.body30 ], [ %.sroa.016.3, %bb.k ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ae = load i64, ptr %i.r, align 8, !range !18, !alias.scope !254, !noundef !13
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !257, !noundef !13 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !262, !noundef !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !262, !nonnull !13, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !262, !noundef !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !262, !noundef !13
  invoke void %i.am(ptr noundef %i.ak, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ak, !inline_history !69

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit, %bb.aa, %bb.g
  %.sroa.016.3 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.aa ], [ true, %bb.g ]
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  invoke void @_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.o)
          to label %bb.m unwind label %bb.t

.body30:                                          ; preds = %bb.x, %bb.t, %bb.aj, %.thread109
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.thread109 ], [ %lpad.thr_comm.split-lp100, %bb.t ], [ %lpad.thr_comm99, %bb.aj ], [ %i.br, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q) #27
          to label %bb.h unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.915.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.554.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.581.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.684.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.890.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.backedge, %bb.m
  invoke void @_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %bb.n unwind label %.thread116.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.thread109:                                       ; preds = %.thread116.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %bb.ct, %.loopexit.split-lp146.loopexit.split-lp, %bb.cl, %bb.ck, %bb.cg, %.loopexit.split-lp151.loopexit.split-lp, %bb.bo, %bb.bn, %bb.bj
  %.pn.pn = phi { ptr, i32 } [ %i.mw, %bb.cl ], [ %i.mi, %bb.cg ], [ %.pn108, %bb.ct ], [ %lpad.loopexit.split-lp582, %.loopexit.split-lp146.loopexit.split-lp ], [ %i.mw, %bb.ck ], [ %lpad.loopexit.split-lp585, %.loopexit.split-lp151.loopexit.split-lp ], [ %i.kf, %bb.bn ], [ %i.jr, %bb.bj ], [ %i.kf, %bb.bo ], [ %lpad.loopexit.split-lp578, %.thread116.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map8IntoIterNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #27
          to label %.body30 unwind label %bb.ak

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit
  %i.bk = load i64, ptr %i.m, align 8, !range !19, !noundef !13 ; 2 uses
  %.not20 = icmp eq i64 %i.bk, 2
  br i1 %.not20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload55 = load ptr, ptr %i.as, align 8 ; 28 uses
  %.sroa.657.0.copyload = load ptr, ptr %.sroa.657.0..sroa_idx, align 8 ; 22 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 22 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 22 uses
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.al, label %bb.ao

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map8IntoIterNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.bn, align 8
  br i1 %3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtNtCs3WWrd2JY12C_5hyper5proto2h14role13write_headers(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.u unwind label %bb.aj

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtNtNtCs3WWrd2JY12C_5hyper5proto2h14role24write_headers_title_case(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.u unwind label %bb.aj

bb.t:                                             ; preds = %bb.l, %bb.p, %bb.y, %bb.v
  %lpad.thr_comm.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %.body30

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !13 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvXsE_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.aa unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body30 unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit unwind label %bb.t

bb.z:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.48.sroa.0.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 4, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @3, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.0.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.48.sroa.0.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @4, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
          to label %bb.ab unwind label %bb.k

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.bt = load i64, ptr %i.r, align 8, !range !18, !alias.scope !263, !noundef !13
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.bv = load ptr, ptr %i.at, align 8, !alias.scope !266, !noundef !13 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.bx = load ptr, ptr %i.au, align 8, !alias.scope !271, !noundef !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !271, !nonnull !13, !noundef !13
  %i.ca = load ptr, ptr %i.av, align 8, !alias.scope !271, !noundef !13
  %i.cb = load i64, ptr %i.aw, align 8, !alias.scope !271, !noundef !13
  invoke void %i.bz(ptr noundef %i.bx, ptr noundef %i.ca, i64 noundef %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33 unwind label %bb.ae, !inline_history !69

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i, %bb.h, %bb.j, %bb.ae
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.ae ], [ %.pn.pn.pn.pn, %bb.j ], [ %.pn.pn.pn.pn, %bb.h ], [ %.pn.pn.pn.pn, %bb.i ] ; 2 uses
  %.sroa.016.4 = phi i1 [ false, %bb.ae ], [ %.sroa.016.2, %bb.j ], [ %.sroa.016.2, %bb.h ], [ %.sroa.016.2, %bb.i ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit
  br i1 %.sroa.016.4, label %.thread, label %bb.cu

bb.ae:                                            ; preds = %bb.ai, %bb.ad
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33: ; preds = %bb.ac, %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
          to label %bb.ag unwind label %bb.k

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.cd = load i64, ptr %i.r, align 8, !range !18, !alias.scope !272, !noundef !13
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.cf = load ptr, ptr %i.at, align 8, !alias.scope !275, !noundef !13 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ch = load ptr, ptr %i.au, align 8, !alias.scope !280, !noundef !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !280, !nonnull !13, !noundef !13
  %i.ck = load ptr, ptr %i.av, align 8, !alias.scope !280, !noundef !13
  %i.cl = load i64, ptr %i.aw, align 8, !alias.scope !280, !noundef !13
  invoke void %i.cj(ptr noundef %i.ch, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38 unwind label %bb.ae, !inline_history !69

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38: ; preds = %bb.ah, %bb.ag, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.af

bb.aj:                                            ; preds = %bb.s, %bb.r
  %lpad.thr_comm99 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #27
          to label %.body30 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.ct, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit, %bb.j, %.thread, %bb.aj, %.thread109, %.body30
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.al:                                            ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %4 = load i64, ptr %i.r, align 8, !range !18, !alias.scope !281, !noundef !13
  %i.cn = icmp eq i64 %4, 0
  br i1 %i.cn, label %.thread392, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.co = load ptr, ptr %i.at, align 8, !alias.scope !284, !noundef !13 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.thread392, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.cq = load ptr, ptr %i.au, align 8, !alias.scope !289, !noundef !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !289, !nonnull !13, !noundef !13
  %i.ct = load ptr, ptr %i.av, align 8, !alias.scope !289, !noundef !13
  %i.cu = load i64, ptr %i.aw, align 8, !alias.scope !289, !noundef !13
  invoke void %i.cs(ptr noundef %i.cq, ptr noundef %i.ct, i64 noundef %i.cu)
          to label %.thread392 unwind label %.thread105.a, !inline_history !69

bb.ao:                                            ; preds = %bb.o
  %.pr = load i64, ptr %i.r, align 8
  %i.cv = trunc nuw i64 %.pr to i1
  br i1 %i.cv, label %bb.ap, label %bb.aq, !prof !290

.thread105.a:                                     ; preds = %bb.an
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  br label %bb.ct

.thread392:                                       ; preds = %bb.an, %bb.al, %bb.am
  store i64 1, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  br label %bb.ap

.thread116.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit, %bb.bs, %bb.bm, %bb.aw, %bb.cj, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.thread
  %lpad.loopexit.split-lp578 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ap, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ap:                                            ; preds = %.thread392, %bb.ao
  %i.cx = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBP_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull align 8 %i.at)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  br i1 %i.cx, label %bb.at, label %.invoke

bb.at:                                            ; preds = %bb.as
  %i.cy = load ptr, ptr %i.at, align 8, !noundef !13
  %.not21 = icmp eq ptr %i.cy, null
  br i1 %.not21, label %bb.cs, label %bb.au

bb.au:                                            ; preds = %bb.cs, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.cz = invoke noundef zeroext i1 @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %bb.av unwind label %.loopexit.split-lp146.loopexit.split-lp, !noalias !292

bb.av:                                            ; preds = %bb.au
  br i1 %i.cz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !293, !nonnull !13, !noundef !13
  invoke void %i.db(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.thread unwind label %.thread116.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !122

bb.ax:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.dc = load i64, ptr %i.q, align 8, !range !19, !alias.scope !295, !noundef !13
  %i.dd = icmp ne i64 %i.dc, 2                    ; 2 uses
  br i1 %i.dd, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !296
  %i.de = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !295 ; 3 uses
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dg = xor <2 x i64> %i.df, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.dg, ptr %i.f, align 16, !noalias !296
  %i.dh = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.di = xor <2 x i64> %i.dh, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.di, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !noalias !296
  store <2 x i64> %i.de, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !296
  %i.dj = load ptr, ptr %i.at, align 8, !noalias !297, !noundef !13 ; 2 uses
  %i.dk = icmp ne ptr %i.dj, null                 ; 2 uses
  %i.dl = zext i1 %i.dk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !298
  store i64 %i.dl, ptr %i.e, align 8, !noalias !298
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #28, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !298
  br i1 %i.dk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.val.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !297, !noundef !13 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !297, !noundef !13
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i.i) #28, !noalias !299
  %i.dm = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.dn = trunc i64 %i.dm to i8
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.do = load i8, ptr %i.av, align 8, !range !20, !noalias !297, !noundef !13 ; 2 uses
  %i.dp = zext nneg i8 %i.do to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !300
  store i64 %i.dp, ptr %i.d, align 8, !noalias !300
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #28, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !300
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ba, %bb.az
  %i.dq = phi i8 [ %i.do, %bb.ba ], [ %i.dn, %bb.az ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !301, !noalias !296
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !296
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !alias.scope !301, !noalias !296 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !296
  %i.dr = load i64, ptr %.sroa.915.0..sroa_idx.i.i, align 16, !alias.scope !301, !noalias !296, !noundef !13
  %i.ds = shl i64 %i.dr, 56
  %i.dt = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !301, !noalias !296, !noundef !13
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = xor i64 %i.du, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.dw = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.dx = add i64 %i.dv, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.dy = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.dz = xor i64 %i.dy, %i.dw                    ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 16)
  %i.eb = xor i64 %i.ea, %i.dx                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 32)
  %i.ed = add i64 %i.dx, %i.dz                    ; 3 uses
  %i.ee = add i64 %i.eb, %i.ec                    ; 2 uses
  %i.ef = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 17)
  %i.eg = xor i64 %i.ed, %i.ef                    ; 3 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 21)
  %i.ei = xor i64 %i.eh, %i.ee                    ; 3 uses
  %i.ej = call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 32)
  %i.ek = xor i64 %i.ee, %i.du
  %i.el = xor i64 %i.ej, 255
  %i.em = add i64 %i.ek, %i.eg                    ; 3 uses
  %i.en = add i64 %i.ei, %i.el                    ; 2 uses
  %i.eo = call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 13)
  %i.ep = xor i64 %i.em, %i.eo                    ; 3 uses
  %i.eq = call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 16)
  %i.er = xor i64 %i.eq, %i.en                    ; 3 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 32)
  %i.et = add i64 %i.ep, %i.en                    ; 3 uses
  %i.eu = add i64 %i.er, %i.es                    ; 2 uses
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 17)
  %i.ew = xor i64 %i.et, %i.ev                    ; 3 uses
  %i.ex = call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 21)
  %i.ey = xor i64 %i.ex, %i.eu                    ; 3 uses
  %i.ez = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 32)
  %i.fa = add i64 %i.ew, %i.eu                    ; 3 uses
  %i.fb = add i64 %i.ey, %i.ez                    ; 2 uses
  %i.fc = call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 13)
  %i.fd = xor i64 %i.fc, %i.fa                    ; 3 uses
  %i.fe = call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 16)
  %i.ff = xor i64 %i.fe, %i.fb                    ; 3 uses
  %i.fg = call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 32)
  %i.fh = add i64 %i.fd, %i.fb                    ; 3 uses
  %i.fi = add i64 %i.ff, %i.fg                    ; 2 uses
  %i.fj = call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 17)
  %i.fk = xor i64 %i.fj, %i.fh                    ; 3 uses
  %i.fl = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 21)
  %i.fm = xor i64 %i.fl, %i.fi                    ; 2 uses
  %i.fn = call noundef i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 32)
  %i.fo = add i64 %i.fk, %i.fi
  %i.fp = add i64 %i.fm, %i.fn                    ; 2 uses
  %i.fq = call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 13)
  %i.fr = xor i64 %i.fq, %i.fo                    ; 2 uses
  %i.fs = shl i64 %i.fm, 16
  %i.ft = xor i64 %i.fs, %i.fp
  %i.fu = add i64 %i.fr, %i.fp                    ; 2 uses
  %i.fv = lshr i64 %i.fr, 47
  %i.fw = lshr i64 %i.ft, 43
  %i.fx = lshr i64 %i.fu, 32
  %i.fy = xor i64 %i.fw, %i.fv
  %i.fz = xor i64 %i.fy, %i.fx
  %i.ga = xor i64 %i.fz, %i.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !296
  br label %.loopexit.i

bb.bb:                                            ; preds = %bb.ax
  %i.gb = load ptr, ptr %i.at, align 8, !noalias !302, !noundef !13 ; 4 uses
  %i.gc = icmp ne ptr %i.gb, null                 ; 2 uses
  %i.gd = zext i1 %i.gc to i64
  %i.ge = xor i64 %i.gd, -3750763034362895579
  %i.gf = mul i64 %i.ge, 2232315406967589409      ; 4 uses
  br i1 %i.gc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i.i21.i.i = load ptr, ptr %i.av, align 8, !noalias !302, !noundef !13 ; 4 uses
  %.val1.i.i.i22.i.i = load i64, ptr %i.aw, align 8, !noalias !302, !noundef !13 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i.i21.i.i, i64 %.val1.i.i.i22.i.i
  %i.gh = icmp samesign eq i64 %.val1.i.i.i22.i.i, 0
  %i.gi = ptrtoint ptr %.val.i.i.i21.i.i to i64
  %i.gj = trunc i64 %i.gi to i8                   ; 3 uses
  br i1 %i.gh, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bc
  %xtraiter = and i64 %.val1.i.i.i22.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i21.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.gl = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, align 1, !alias.scope !303, !noalias !304, !noundef !13
end_hunk_0
