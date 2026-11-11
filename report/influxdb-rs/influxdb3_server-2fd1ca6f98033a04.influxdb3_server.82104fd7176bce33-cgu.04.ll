Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.04?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1355
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCsktysmkNHh7l_5prost8encoding7message6encodeNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.04.0.i.i.i.epil.init
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i.epil = load i64, ptr %i.bf, align 8, !alias.scope !2969, !noundef !8 ; 3 uses
  %i.bg = icmp sgt i64 %.val.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = or i64 %.val.i.i.i.epil, 1
  %i.bi = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = xor i64 %i.bi, 63
  %i.bk = mul nuw nsw i64 %i.bj, 9
  %i.bl = add nuw nsw i64 %i.bk, 73
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = add i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init
  %i.bo = add i64 %i.bn, %i.bm
  br label %_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit

_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit: ; preds = %.preheader.i.i.epil.preheader, %_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit.loopexit.unr-lcssa, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bc, %_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit.loopexit.unr-lcssa ], [ %i.bo, %.preheader.i.i.epil.preheader ]
  %i.bp = add i64 %.sroa.01.0.i, %.sroa.0.0.i
  %i.bq = add i64 %i.bp, %i.ae
  %i.br = add i64 %i.bq, %.sroa.0.0.i.i.i
  tail call fastcc void @_RINvNtNtCsktysmkNHh7l_5prost8encoding6varint13encode_varintNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(i64 noundef %i.br, ptr %.val1)
  %i.bs = load i32, ptr %i.f, align 8, !noalias !2970, !noundef !8 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2971
  store i8 8, ptr %i.b, align 1, !noalias !2971
  call void @_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !2971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2971
  %i.bu = sext i32 %i.bs to i64
  call fastcc void @_RINvNtNtCsktysmkNHh7l_5prost8encoding6varint13encode_varintNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(i64 noundef %i.bu, ptr nonnull %.val1), !noalias !2971
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB6_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message11encoded_len.exit
  %i.bv = load i64, ptr %i.q, align 8, !noalias !2970, !noundef !8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RINvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB7_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message10encode_rawNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2972
  store i8 18, ptr %i.a, align 1, !noalias !2972
  call void @_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !2972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2972
  %.val2.i.i = load i64, ptr %i.q, align 8, !noalias !2972, !noundef !8
  call fastcc void @_RINvNtNtCsktysmkNHh7l_5prost8encoding6varint13encode_varintNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(i64 noundef %.val2.i.i, ptr nonnull %.val1), !noalias !2972
  call void @_RINvXs1_NtCsktysmkNHh7l_5prost8encodingNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB6_6sealed12BytesAdapter9append_toNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB7_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message10encode_rawNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs1D_NtCsekDO8Mha3LU_12arrow_flight3genNtB7_16FlightDescriptorNtNtCsktysmkNHh7l_5prost7message7Message10encode_rawNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g, %bb.h
  %i.by = load ptr, ptr %i.ab, align 8, !noalias !2970, !nonnull !8, !noundef !8
  %i.bz = load i64, ptr %i.ad, align 8, !noalias !2970, !noundef !8
  call void @_RINvNtNtCsktysmkNHh7l_5prost8encoding6string15encode_repeatedNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(i32 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.by, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsbakdBCgU4AF_16influxdb3_server(ptr %.0.val, ptr %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2977 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2978
  store ptr %i.b, ptr %i.a, align 8, !noalias !2978
  store i64 32, ptr %i.c, align 8, !noalias !2978
  store i64 0, ptr %i.d, align 8, !noalias !2978
  store i64 32, ptr %i.e, align 8, !noalias !2978
  %i.f = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 11 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2978
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !noalias !2978, !noundef !8 ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !noalias !2978, !noundef !8 ; 9 uses
  %.not7.i = icmp ugt i64 %i.k, %i.j
  br i1 %.not7.i, label %bb.e, label %bb.g, !prof !19

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2978
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.k
    i64 0, label %.split32
    i64 1, label %.split31
  ], !prof !20

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2978
  %i.n = inttoptr i64 %i.k to ptr
  %i.o = icmp ult i64 %i.k, 33
  br i1 %i.o, label %.noexc, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #30
  unreachable

.noexc:                                           ; preds = %bb.g
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2979, !noundef !8 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %.not.i7 = icmp eq i64 %i.k, 0
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2979, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.b, i64 %i.k, i1 false)
  %.pre.i = load i64, ptr %i.p, align 8, !alias.scope !2979
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc
  %i.v = phi i64 [ %.pre.i, %bb.i ], [ %i.q, %.noexc ]
  %i.w = add i64 %i.v, %i.k
  store i64 %i.w, ptr %i.p, align 8, !alias.scope !2979
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.split, %.split31, %.split32, %bb.j
  %.sroa.3.0 = phi ptr [ %i.n, %bb.j ], [ %i.h, %.split32 ], [ %i.h, %.split31 ], [ %i.ag, %bb.k ], [ %i.h, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.j ], [ 1, %.split32 ], [ 1, %.split31 ], [ 1, %.split ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.y = insertvalue { i64, ptr } %i.x, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.y

.split:                                           ; preds = %bb.f
  %.mask = and i64 %i.l, -4294967296
  %i.z = icmp eq i64 %.mask, 17179869184
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split32:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !18, !noundef !8
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split31:                                         ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.h, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !18, !noundef !8
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

bb.k:                                             ; preds = %.thread, %bb.f
  %i.ag = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread ], [ %i.h, %bb.f ] ; 3 uses
  %.sroa.4.1.i.ph13 = phi i64 [ 55834574851, %.thread ], [ %i.l, %bb.f ]
  %i.ah = lshr i64 %.sroa.4.1.i.ph13, 32
  %i.ai = icmp ult ptr %i.ag, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.ah to i8
  %spec.select.i.i = select i1 %i.ai, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.aj = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.split32, %.split31, %.split, %bb.k
  %i.al = phi ptr [ %i.h, %.split ], [ %i.ag, %bb.k ], [ %i.h, %.split31 ], [ %i.h, %.split32 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %i.al)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeINtNtNtCs3tYbhKVn990_6flate22gz4read14MultiGzDecoderRShEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(336) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2982 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeINtNtNtCs3tYbhKVn990_6flate22gz4read14MultiGzDecoderRShEENtB5_4Read4readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(336) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  %2 = ptrtoint ptr %i.d to i64                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit
  %3 = phi i64 [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !prof !17

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.a
  %.lcssa34 = phi ptr [ %i.d, %bb.a ], [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ] ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ] ; 4 uses
  %i.g = icmp ult ptr %.lcssa34, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !prof !14

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #30
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2983, !noundef !8 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq ptr %.lcssa34, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2983, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false)
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !2983
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ]
  %i.o = add i64 %i.n, %.lcssa
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !2983
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa34, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1
  ret { i64, ptr } %i.r

.split:                                           ; preds = %.lr.ph
  %.mask = and i64 %3, -4294967296
  %i.s = icmp eq i64 %.mask, 17179869184
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !18, !noundef !8
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15
  %i.x = load i8, ptr %i.w, align 8, !range !18, !noundef !8
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.z = lshr i64 %3, 32
  %i.aa = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.z to i8
  %spec.select.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %4)
  %i.ad = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeINtNtNtCs3tYbhKVn990_6flate22gz4read14MultiGzDecoderRShEENtB5_4Read4readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(336) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %5 = ptrtoint ptr %i.af to i64                  ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2986 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  %2 = ptrtoint ptr %i.d to i64                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit
  %3 = phi i64 [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !prof !17

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.a
  %.lcssa34 = phi ptr [ %i.d, %bb.a ], [ %i.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ] ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit ] ; 4 uses
  %i.g = icmp ult ptr %.lcssa34, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !prof !14

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #30
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2987, !noundef !8 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq ptr %.lcssa34, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2987, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false)
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !2987
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ]
  %i.o = add i64 %i.n, %.lcssa
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !2987
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa34, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1
  ret { i64, ptr } %i.r

.split:                                           ; preds = %.lr.ph
  %.mask = and i64 %3, -4294967296
  %i.s = icmp eq i64 %.mask, 17179869184
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !18, !noundef !8
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15
  %i.x = load i8, ptr %i.w, align 8, !range !18, !noundef !8
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.z = lshr i64 %3, 32
  %i.aa = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.z to i8
  %spec.select.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit, label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %4)
  %i.ad = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %5 = ptrtoint ptr %i.af to i64                  ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_id1__NtB5_6NodeIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1H_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2988 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids2_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1I_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2989 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids2_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 !guid !2990 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXst_CscOYT7KBnvIh_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val1, ptr noalias noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1L_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2991 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 !guid !2992 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXst_CscOYT7KBnvIh_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val1, ptr noalias noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids6_1__NtB5_9TriggerIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1N_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2993 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsa_1__NtB5_5TagIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1J_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2994 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsc_1__NtB5_13FieldFamilyIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1S_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2995 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsg_1__NtB5_11LastCacheIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1Q_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2996 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsi_1__NtB5_15DistinctCacheIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1U_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2997 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsk_1__NtB5_7TokenIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1L_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !2998 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_idsu_1__NtB5_15FieldIdentifierNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1U_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !2999 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2s0_1__NtB5_15FieldFamilyModeNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2p_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !3000 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2s2_1__NtB5_15FieldFamilyNameNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2p_16CompactFormatterEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !guid !3001 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7IterMutINtNtNtCs5SRHcsv2kA9_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1z_10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3C_13V1HttpHandler13execute_query0s2_00EEENCINvNtB1z_8join_all12iter_pin_mutB1u_E0ENCNvXs_NtB1z_12try_join_allINtB5N_10TryJoinAllB3q_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB76_8for_each4callINtNtCscdodAO9FK5_5alloc5boxed3BoxDB6v_p6OutputINtNtBc_6result6ResultNtNtB3E_5types9StatementNtNtB3E_5error5ErrorENtNtBc_6marker4SendEL_ENCINvMsj_NtB8e_3vecINtBav_3VecB89_E14extend_trustedBN_E0E0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3016 {
bb.a:
  %i.a = alloca [9712 x i8], align 16             ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !3017 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3017 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3017
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs5SRHcsv2kA9_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1v_10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3y_13V1HttpHandler13execute_query0s2_00EEENCINvNtB1v_8join_all12iter_pin_mutB1q_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtBc_3pin3PinQB1q_EINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtB3A_5types9StatementNtNtB3A_5error5ErrorENtNtBc_6marker4SendEL_EuNCNvXs_NtB1v_12try_join_allINtB9E_10TryJoinAllB3m_EB7s_4poll0NCINvNvB5C_8for_each4callB6T_NCINvMsj_NtB6Y_3vecINtBb8_3VecB6T_E14extend_trustedIBO_BN_B9x_EE0E0E0ECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 9712
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %.val15.i.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.b ], [ %i.r, %bb.k ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.k ] ; 2 uses
  %i.i = getelementptr inbounds nuw [9712 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 3 uses
  %i.j = load i64, ptr %i.i, align 16, !range !26, !noalias !3018, !noundef !8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9712) %i.a, ptr noundef nonnull align 16 dereferenceable(9712) %i.i, i64 9712, i1 false), !noalias !3018
  store i64 2, ptr %i.i, align 16, !noalias !3018
  %i.l = load i64, ptr %i.a, align 16, !range !26, !noalias !3018, !noundef !8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.k, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30
          to label %bb.g unwind label %bb.h, !noalias !3018

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBG_10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB2I_13V1HttpHandler13execute_query0s2_00EEECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 16 %i.a) #32
          to label %bb.l unwind label %bb.i, !noalias !3018

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3018
  unreachable

bb.j:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
          to label %.noexc.i.i unwind label %bb.c, !noalias !3019

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload.i, i64 %.val15.i.i
  %i.q = load <2 x ptr>, ptr %i.g, align 8, !noalias !3018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3018
  store <2 x ptr> %i.q, ptr %i.p, align 8, !noalias !3020
  %i.r = add i64 %.val15.i.i, 1                   ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs5SRHcsv2kA9_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1v_10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3y_13V1HttpHandler13execute_query0s2_00EEENCINvNtB1v_8join_all12iter_pin_mutB1q_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtBc_3pin3PinQB1q_EINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtB3A_5types9StatementNtNtB3A_5error5ErrorENtNtBc_6marker4SendEL_EuNCNvXs_NtB1v_12try_join_allINtB9E_10TryJoinAllB3m_EB7s_4poll0NCINvNvB5C_8for_each4callB6T_NCINvMsj_NtB6Y_3vecINtBb8_3VecB6T_E14extend_trustedIBO_BN_B9x_EE0E0E0ECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.l:                                             ; preds = %bb.h, %bb.c
end_hunk_0
