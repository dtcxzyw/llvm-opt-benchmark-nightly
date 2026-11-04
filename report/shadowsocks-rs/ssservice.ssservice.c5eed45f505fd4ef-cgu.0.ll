Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtCsi1FNhPBS7PW_11hickory_net4xfer11ignore_senduINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtB4_5error8NetErrorEECsgZAIVb0XKpv_9ssservice:bb.a

bb.s:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %i.am) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCslXgxf2tUV4p_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEEEECsgZAIVb0XKpv_9ssservice.exit.sink.split

bb.t:                                             ; preds = %bb.o
  %i.an = load ptr, ptr @_RNvNvNtCsi1FNhPBS7PW_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @357, ptr %i.f, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 85 to ptr), ptr %i.ap, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @19, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCslXgxf2tUV4p_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEEEECsgZAIVb0XKpv_9ssservice.exit.sink.split: ; preds = %bb.s, %bb.r, %bb.q, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCslXgxf2tUV4p_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCslXgxf2tUV4p_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCslXgxf2tUV4p_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEEEECsgZAIVb0XKpv_9ssservice.exit.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsgZAIVb0XKpv_9ssservice(i32 noundef %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef range(i64 8, 4097) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i32 %0, 2047
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2328 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2256 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2260 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2204 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1888 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1884 ; 23 uses
  %i.j = trunc nuw nsw i64 %8 to i32              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 2302 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2240 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 2236 ; 5 uses
  %i.r = add nsw i32 %i.a, -1
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 false)
  %i.t = sub nuw nsw i32 32, %i.s                 ; 7 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @379, i64 %i.u
  %.pre = load i8, ptr %i.b, align 8, !range !232
  switch i8 %.pre, label %default.unreachable441 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %thread-pre-split
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.aq
  ]

bb.b:                                             ; preds = %.preheader99.15
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ny
  store i16 -1, ptr %i.w, align 2
  store i32 0, ptr %i.o, align 4
  store i32 8, ptr %i.p, align 8
  store i32 0, ptr %i.c, align 8
  store i32 0, ptr %i.q, align 4
  store i32 32768, ptr %i.d, align 4
  store i8 5, ptr %i.b, align 8
  br label %bb.aq

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice.exit.loopexit: ; preds = %._crit_edge48.i, %._crit_edge43.i
  store i8 3, ptr %i.b, align 8
  br label %bb.ag

..loopexit97_crit_edge:                           ; preds = %bb.h, %.loopexit97.loopexit
  %i.x = phi i64 [ %i.at, %.loopexit97.loopexit ], [ %.promoted14.i40, %bb.h ]
  %.lcssa7.i38 = phi i32 [ %i.au, %.loopexit97.loopexit ], [ %.promoted.i35, %bb.h ] ; 2 uses
  %i.y = and i32 %.lcssa7.i38, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %i.x, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3                        ; 2 uses
  store i32 %i.ac, ptr %i.o, align 4, !alias.scope !30608
  %i.ad = add i32 %.lcssa7.i38, 2
  store i32 %i.ad, ptr %i.g, align 8, !alias.scope !30609
  store i32 0, ptr %i.e, align 4
  store i8 2, ptr %i.b, align 8
  br label %bb.k

bb.c:                                             ; preds = %.loopexit96
  store i32 32, ptr %i.d, align 4
  store i32 0, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.k, i8 0, i64 18, i1 false)
  store i8 4, ptr %i.b, align 8
  br label %bb.ah

bb.d:                                             ; preds = %.loopexit96
  store i8 1, ptr %i.b, align 8
  br label %bb.h

default.unreachable441:                           ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30612)
  %.promoted.i = load i32, ptr %i.g, align 8, !alias.scope !30610 ; 3 uses
  %i.ae = add i32 %.promoted.i, -63
  %.not.i = icmp ult i32 %i.ae, 2
  %.promoted14.i = load i64, ptr %i.f, align 8, !alias.scope !30610 ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit96

.lr.ph.i:                                         ; preds = %bb.e
  %.promoted17.i = load i32, ptr %i.h, align 8, !alias.scope !30610 ; 2 uses
  %.promoted18.i = load i32, ptr %i.i, align 4, !alias.scope !30610 ; 3 uses
  %i.af = zext i32 %.promoted18.i to i64          ; 2 uses
  %i.ag = icmp eq i32 %.promoted17.i, 0
  br i1 %i.ag, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %exitcond348.not.not = icmp ult i32 %.promoted18.i, %i.j
  br i1 %exitcond348.not.not, label %.loopexit96.loopexit, label %bb.g

.loopexit96.loopexit:                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !30612, !noundef !177
  %i.aj = zext i8 %i.ai to i64
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %.promoted14.i, i64 56) ; 2 uses
  store i64 %i.ak, ptr %i.f, align 8, !alias.scope !30610
  %i.al = add nsw i32 %.promoted.i, -8
  %i.am = add i32 %.promoted17.i, -1
  store i32 %i.am, ptr %i.h, align 8, !alias.scope !30610
  %indvars.iv.next344 = add nuw nsw i32 %.promoted18.i, 1
  store i32 %indvars.iv.next344, ptr %i.i, align 4, !alias.scope !30610
  br label %.loopexit96

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30613
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30614)
  %.promoted.i35 = load i32, ptr %i.g, align 8, !alias.scope !30609 ; 3 uses
  %i.an = add i32 %.promoted.i35, -63
  %.not.i36 = icmp ult i32 %i.an, 2
  %.promoted14.i40 = load i64, ptr %i.f, align 8, !alias.scope !30609 ; 2 uses
  br i1 %.not.i36, label %.lr.ph.i39, label %..loopexit97_crit_edge

.lr.ph.i39:                                       ; preds = %bb.h
  %.promoted17.i41 = load i32, ptr %i.h, align 8, !alias.scope !30609 ; 2 uses
  %.promoted18.i42 = load i32, ptr %i.i, align 4, !alias.scope !30609 ; 3 uses
  %i.ao = zext i32 %.promoted18.i42 to i64        ; 2 uses
  %i.ap = icmp eq i32 %.promoted17.i41, 0
  br i1 %i.ap, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i39
  %exitcond.not.not = icmp ult i32 %.promoted18.i42, %i.j
  br i1 %exitcond.not.not, label %.loopexit97.loopexit, label %bb.j

.loopexit97.loopexit:                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !30614, !noundef !177
  %i.as = zext i8 %i.ar to i64
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %.promoted14.i40, i64 56) ; 2 uses
  store i64 %i.at, ptr %i.f, align 8, !alias.scope !30609
  %i.au = add nsw i32 %.promoted.i35, -8
  %i.av = add i32 %.promoted17.i41, -1
  store i32 %i.av, ptr %i.h, align 8, !alias.scope !30609
  %indvars.iv.next = add nuw nsw i32 %.promoted18.i42, 1
  store i32 %indvars.iv.next, ptr %i.i, align 4, !alias.scope !30609
  br label %..loopexit97_crit_edge

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30615
  unreachable

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i32, ptr %i.o, align 4, !alias.scope !30616
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %..loopexit97_crit_edge
  %i.aw = phi i32 [ %.pr, %thread-pre-split ], [ %i.ac, %..loopexit97_crit_edge ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30617)
  %i.ax = load i32, ptr %i.e, align 4, !alias.scope !30616, !noundef !177 ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = zext i32 %i.aw to i64                   ; 4 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 6 uses
  %i.bb = icmp samesign uge i64 %i.ba, %i.ay
  %i.bc = icmp ult i32 %i.aw, 720
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.m, label %bb.l, !prof !200

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ay, i64 noundef %i.ba, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #62, !noalias !30618
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ba
  %i.be = icmp samesign eq i64 %i.ba, %i.ay
  br i1 %i.be, label %._crit_edge43.i, label %.lr.ph42.split.us.preheader.i

.lr.ph42.split.us.preheader.i:                    ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ay
  br label %.lr.ph42.split.us.i

.lr.ph42.split.us.i:                              ; preds = %bb.ab, %.lr.ph42.split.us.preheader.i
  %.sroa.05.040.us.i = phi i32 [ %i.dj, %bb.ab ], [ %i.ax, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %.sroa.09.039.us.i = phi ptr [ %i.bg, %bb.ab ], [ %i.bf, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.09.039.us.i, i64 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30620)
  %.promoted.i.us.i = load i32, ptr %i.g, align 8, !alias.scope !30621 ; 11 uses
  %i.bh = sub i32 64, %.promoted.i.us.i
  %.not.i.us.i = icmp ult i32 %i.bh, %i.t
  %.promoted14.i.us.i = load i64, ptr %i.f, align 8, !alias.scope !30621 ; 2 uses
  br i1 %.not.i.us.i, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph42.split.us.i
  %.promoted17.i.us.i = load i32, ptr %i.h, align 8, !alias.scope !30621 ; 6 uses
  %.promoted18.i.us.i = load i32, ptr %i.i, align 4, !alias.scope !30621 ; 4 uses
  %i.bi = zext i32 %.promoted18.i.us.i to i64     ; 5 uses
  %umax73.i = tail call i32 @llvm.umax.i32(i32 %.promoted18.i.us.i, i32 %i.j)
  %wide.trip.count74.i = zext i32 %umax73.i to i64 ; 5 uses
  %i.bj = icmp eq i32 %.promoted17.i.us.i, 0
  br i1 %i.bj, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.n, !prof !202

bb.n:                                             ; preds = %.lr.ph.i.us.i
  %exitcond75.not.i.not = icmp ult i32 %.promoted18.i.us.i, %i.j
  br i1 %exitcond75.not.i.not, label %bb.o, label %.split.us.i

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !30622, !noundef !177
  %i.bm = zext i8 %i.bl to i64
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %.promoted14.i.us.i, i64 56) ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !30621
  %i.bo = add i32 %.promoted.i.us.i, -8           ; 2 uses
  store i32 %i.bo, ptr %i.g, align 8, !alias.scope !30621
  %i.bp = add i32 %.promoted17.i.us.i, -1         ; 2 uses
  store i32 %i.bp, ptr %i.h, align 8, !alias.scope !30621
  %indvars.iv.next71.i = add nuw nsw i64 %i.bi, 1 ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next71.i to i32
  store i32 %i.bq, ptr %i.i, align 4, !alias.scope !30621
  %i.br = sub i32 72, %.promoted.i.us.i
  %.not19.i.us.i = icmp ult i32 %i.br, %i.t
  br i1 %.not19.i.us.i, label %bb.p, label %._crit_edge.i.us.i

bb.p:                                             ; preds = %bb.o
  %i.bs = icmp eq i32 %i.bp, 0
  br i1 %i.bs, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.q, !prof !202

bb.q:                                             ; preds = %bb.p
  %exitcond75.not.i.1 = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i.1, label %.split.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next71.i
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !30622, !noundef !177
  %i.bv = zext i8 %i.bu to i64
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bn, i64 56) ; 3 uses
  store i64 %i.bw, ptr %i.f, align 8, !alias.scope !30621
  %i.bx = add i32 %.promoted.i.us.i, -16          ; 2 uses
  store i32 %i.bx, ptr %i.g, align 8, !alias.scope !30621
  %i.by = add i32 %.promoted17.i.us.i, -2         ; 2 uses
  store i32 %i.by, ptr %i.h, align 8, !alias.scope !30621
  %indvars.iv.next71.i.1 = add nuw nsw i64 %i.bi, 2 ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next71.i.1 to i32
  store i32 %i.bz, ptr %i.i, align 4, !alias.scope !30621
  %i.ca = sub i32 80, %.promoted.i.us.i
  %.not19.i.us.i.1 = icmp ult i32 %i.ca, %i.t
  br i1 %.not19.i.us.i.1, label %bb.s, label %._crit_edge.i.us.i

bb.s:                                             ; preds = %bb.r
  %i.cb = icmp eq i32 %i.by, 0
  br i1 %i.cb, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.t, !prof !202

bb.t:                                             ; preds = %bb.s
  %exitcond75.not.i.2 = icmp eq i64 %indvars.iv.next71.i.1, %wide.trip.count74.i
  br i1 %exitcond75.not.i.2, label %.split.us.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next71.i.1
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !30622, !noundef !177
  %i.ce = zext i8 %i.cd to i64
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.bw, i64 56) ; 3 uses
  store i64 %i.cf, ptr %i.f, align 8, !alias.scope !30621
  %i.cg = add i32 %.promoted.i.us.i, -24          ; 2 uses
  store i32 %i.cg, ptr %i.g, align 8, !alias.scope !30621
  %i.ch = add i32 %.promoted17.i.us.i, -3         ; 2 uses
  store i32 %i.ch, ptr %i.h, align 8, !alias.scope !30621
  %indvars.iv.next71.i.2 = add nuw nsw i64 %i.bi, 3 ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.next71.i.2 to i32
  store i32 %i.ci, ptr %i.i, align 4, !alias.scope !30621
  %i.cj = sub i32 88, %.promoted.i.us.i
  %.not19.i.us.i.2 = icmp ult i32 %i.cj, %i.t
  br i1 %.not19.i.us.i.2, label %bb.v, label %._crit_edge.i.us.i

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i32 %i.ch, 0
  br i1 %i.ck, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.w, !prof !202

bb.w:                                             ; preds = %bb.v
  %exitcond75.not.i.3 = icmp eq i64 %indvars.iv.next71.i.2, %wide.trip.count74.i
  br i1 %exitcond75.not.i.3, label %.split.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next71.i.2
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !30622, !noundef !177
  %i.cn = zext i8 %i.cm to i64
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cf, i64 56) ; 3 uses
  store i64 %i.co, ptr %i.f, align 8, !alias.scope !30621
  %i.cp = add i32 %.promoted.i.us.i, -32          ; 2 uses
  store i32 %i.cp, ptr %i.g, align 8, !alias.scope !30621
  %i.cq = add i32 %.promoted17.i.us.i, -4         ; 2 uses
  store i32 %i.cq, ptr %i.h, align 8, !alias.scope !30621
  %indvars.iv.next71.i.3 = add nuw nsw i64 %i.bi, 4 ; 3 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next71.i.3 to i32
  store i32 %i.cr, ptr %i.i, align 4, !alias.scope !30621
  %i.cs = sub i32 96, %.promoted.i.us.i
  %.not19.i.us.i.3 = icmp ult i32 %i.cs, %i.t
  br i1 %.not19.i.us.i.3, label %bb.y, label %._crit_edge.i.us.i

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp eq i32 %i.cq, 0
  br i1 %i.ct, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.z, !prof !202

bb.z:                                             ; preds = %bb.y
  %exitcond75.not.i.4 = icmp eq i64 %indvars.iv.next71.i.3, %wide.trip.count74.i
  br i1 %exitcond75.not.i.4, label %.split.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next71.i.3
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !30622, !noundef !177
  %i.cw = zext i8 %i.cv to i64
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.co, i64 56) ; 2 uses
  store i64 %i.cx, ptr %i.f, align 8, !alias.scope !30621
  %i.cy = add i32 %.promoted.i.us.i, -40          ; 2 uses
  store i32 %i.cy, ptr %i.g, align 8, !alias.scope !30621
  %i.cz = add i32 %.promoted17.i.us.i, -5
  store i32 %i.cz, ptr %i.h, align 8, !alias.scope !30621
  %indvars.iv.next71.i.4 = add i32 %.promoted18.i.us.i, 5
  store i32 %indvars.iv.next71.i.4, ptr %i.i, align 4, !alias.scope !30621
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.o, %bb.r, %bb.u, %bb.x, %bb.aa, %.lr.ph42.split.us.i
  %i.da = phi i64 [ %.promoted14.i.us.i, %.lr.ph42.split.us.i ], [ %i.bn, %bb.o ], [ %i.bw, %bb.r ], [ %i.cf, %bb.u ], [ %i.co, %bb.x ], [ %i.cx, %bb.aa ]
  %.lcssa7.i.us.i = phi i32 [ %.promoted.i.us.i, %.lr.ph42.split.us.i ], [ %i.bo, %bb.o ], [ %i.bx, %bb.r ], [ %i.cg, %bb.u ], [ %i.cp, %bb.x ], [ %i.cy, %bb.aa ] ; 2 uses
  %i.db = and i32 %.lcssa7.i.us.i, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 %i.da, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %i.df = load i32, ptr %i.v, align 4, !noalias !30623, !noundef !177
  %i.dg = and i32 %i.df, %i.de                    ; 2 uses
  %i.dh = add i32 %.lcssa7.i.us.i, %i.t
  store i32 %i.dh, ptr %i.g, align 8, !alias.scope !30621
  %.not.us.i = icmp ult i32 %i.dg, %1
  br i1 %.not.us.i, label %bb.ab, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.ab:                                            ; preds = %._crit_edge.i.us.i
  %i.di = trunc i32 %i.dg to i16
  store i16 %i.di, ptr %.sroa.09.039.us.i, align 2, !alias.scope !30616
  %i.dj = add i32 %.sroa.05.040.us.i, 1
  %i.dk = icmp eq ptr %i.bg, %i.bd
  br i1 %i.dk, label %._crit_edge43.i, label %.lr.ph42.split.us.i

.split.us.i:                                      ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %wide.trip.count74.i, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30623
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.y, %bb.v, %bb.s, %bb.p, %.lr.ph.i.us.i
  store i32 %.sroa.05.040.us.i, ptr %i.e, align 4, !alias.scope !30616
  store i8 2, ptr %i.b, align 8, !alias.scope !30616
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

._crit_edge43.i:                                  ; preds = %bb.ab, %bb.m
  %.idx.i = shl nuw nsw i64 %i.az, 1              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.dm = icmp eq i32 %i.aw, 0
  br i1 %i.dm, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice.exit.loopexit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %._crit_edge43.i
  %i.dn = getelementptr i8, ptr %6, i64 %.idx.i
  %scevgep.i = getelementptr i8, ptr %i.dn, i64 258
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge48.i, %.lr.ph52.preheader.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %i.dp, %._crit_edge48.i ] ; 3 uses
  %.sroa.011.049.i = phi ptr [ %i.n, %.lr.ph52.preheader.i ], [ %i.do, %._crit_edge48.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.011.049.i, i64 2 ; 2 uses
  %i.dp = add nuw nsw i64 %indvars.iv76.i, 1      ; 2 uses
  %exitcond79.i = icmp eq i64 %indvars.iv76.i, %i.ba
  br i1 %exitcond79.i, label %bb.ad, label %bb.ac, !prof !186

bb.ac:                                            ; preds = %.lr.ph52.i
  %i.dq = icmp eq i64 %indvars.iv76.i, %i.az
  br i1 %i.dq, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dp
  %i.ds = load i16, ptr %.sroa.011.049.i, align 2, !alias.scope !30616, !noundef !177
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph52.i
  %i.dt = add nuw nsw i64 %i.az, 2
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dt, i64 noundef %i.ba, i64 noundef 720, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #62, !noalias !30618
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.014.045.i, i64 2 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %scevgep.i
  br i1 %i.dv, label %._crit_edge48.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph47.i
  %.sroa.014.045.i = phi ptr [ %i.dr, %.lr.ph47.i ], [ %i.du, %bb.ae ] ; 2 uses
  %i.dw = load i16, ptr %.sroa.014.045.i, align 2, !alias.scope !30616, !noundef !177
  %i.dx = icmp eq i16 %i.ds, %i.dw
  br i1 %i.dx, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.ae

._crit_edge48.i:                                  ; preds = %bb.ae, %bb.ac
  %i.dy = icmp eq ptr %i.do, %i.dl
  br i1 %i.dy, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice.exit.loopexit, label %.lr.ph52.i

bb.ag:                                            ; preds = %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsgZAIVb0XKpv_9ssservice.exit.loopexit, %bb.a
  %i.dz = load i32, ptr %i.o, align 4, !noundef !177 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 3
  br i1 %i.ea, label %bb.bp, label %bb.bt

bb.ah:                                            ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30625)
  %i.eb = load i32, ptr %i.e, align 4, !alias.scope !30624, !noundef !177 ; 3 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = icmp ugt i32 %i.eb, 18
  br i1 %i.ed, label %bb.aj, label %bb.ai, !prof !186

bb.ai:                                            ; preds = %bb.ah
  %i.ee = load i32, ptr %i.d, align 4, !alias.scope !30624, !noundef !177 ; 2 uses
  %i.ef = load i32, ptr %i.c, align 8, !alias.scope !30624, !noundef !177 ; 2 uses
  %i.eg = icmp eq i32 %i.eb, 18
  br i1 %i.eg, label %._crit_edge.i49, label %.lr.ph.i46

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef 18, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #62, !noalias !30626
  unreachable

.lr.ph.i46:                                       ; preds = %bb.ai, %bb.ao
  %.sroa.02.042.i = phi i32 [ %.sroa.02.1.i, %bb.ao ], [ %i.ef, %bb.ai ] ; 3 uses
  %.sroa.05.040.i = phi i32 [ %.sroa.05.1.i, %bb.ao ], [ %i.ee, %bb.ai ] ; 3 uses
  %.sroa.011.0.idx37.i = phi i64 [ %.sroa.011.0.add.i, %bb.ao ], [ %i.ec, %bb.ai ] ; 3 uses
  %.sroa.011.0.ptr.i = getelementptr inbounds nuw i8, ptr @429, i64 %.sroa.011.0.idx37.i
  %.sroa.011.0.add.i = add nuw nsw i64 %.sroa.011.0.idx37.i, 1 ; 2 uses
  %i.eh = load i8, ptr %.sroa.011.0.ptr.i, align 1, !noalias !30626, !noundef !177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30628)
  %.promoted.i.i = load i32, ptr %i.g, align 8, !alias.scope !30629 ; 7 uses
  %i.ei = add i32 %.promoted.i.i, -61
  %.not.i.i = icmp ult i32 %i.ei, 4
  %.promoted11.i.i = load i64, ptr %i.f, align 8, !alias.scope !30629 ; 3 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i46
  %.promoted13.i.i = load i32, ptr %i.h, align 8, !alias.scope !30629 ; 2 uses
  %.promoted14.i.i = load i32, ptr %i.i, align 4, !alias.scope !30629 ; 3 uses
  %i.ej = zext i32 %.promoted14.i.i to i64        ; 2 uses
  %i.ek = icmp eq i32 %.promoted13.i.i, 0
  br i1 %i.ek, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, label %bb.ak

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i: ; preds = %.lr.ph.i46, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i
  %i.el = phi i64 [ %i.es, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted11.i.i, %.lr.ph.i46 ]
  %.lcssa7.i.i = phi i32 [ %i.et, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted.i.i, %.lr.ph.i46 ] ; 2 uses
  %i.em = and i32 %.lcssa7.i.i, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = lshr i64 %i.el, %i.en
  %.pre.i47 = and i64 %i.eo, 15                   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @430, i64 %.pre.i47
  %.pre59.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !30626
  %.pre60.i = zext i8 %.pre59.i to i32
  br label %bb.an

bb.ak:                                            ; preds = %.lr.ph.i.i
  %exitcond.not.not.i = icmp ult i32 %.promoted14.i.i, %i.j
  br i1 %exitcond.not.not.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i, label %bb.al

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i: ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 %i.ej
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !30630, !noundef !177
  %i.er = zext i8 %i.eq to i64
  %i.es = tail call i64 @llvm.fshl.i64(i64 %i.er, i64 %.promoted11.i.i, i64 56) ; 2 uses
  store i64 %i.es, ptr %i.f, align 8, !alias.scope !30629
  %i.et = add nsw i32 %.promoted.i.i, -8
  %i.eu = add i32 %.promoted13.i.i, -1
  store i32 %i.eu, ptr %i.h, align 8, !alias.scope !30629
  %indvars.iv.next.i = add nuw nsw i32 %.promoted14.i.i, 1
  store i32 %indvars.iv.next.i, ptr %i.i, align 4, !alias.scope !30629
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef range(i64 8, 4097) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #62, !noalias !30631
  unreachable

_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i: ; preds = %.lr.ph.i.i
  %i.ev = sub nuw nsw i32 64, %.promoted.i.i
  %i.ew = icmp eq i32 %.promoted.i.i, 64
  %i.ex = and i32 %.promoted.i.i, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = lshr i64 %.promoted11.i.i, %i.ey
  %i.fa = and i64 %i.ez, 15
  %storemerge.i = select i1 %i.ew, i64 0, i64 %i.fa ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr @430, i64 %storemerge.i
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !30626, !noundef !177
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = icmp samesign ult i32 %i.ev, %i.fd
  br i1 %i.fe, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i
  %indvars58.le.i = trunc i64 %.sroa.011.0.idx37.i to i32
  store i32 %indvars58.le.i, ptr %i.e, align 4, !alias.scope !30624
  store i32 %.sroa.02.042.i, ptr %i.c, align 8, !alias.scope !30624
  store i32 %.sroa.05.040.i, ptr %i.d, align 4, !alias.scope !30624
  store i8 4, ptr %i.b, align 8, !alias.scope !30624
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.an:                                            ; preds = %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i
  %.pre-phi61.i = phi i32 [ %.pre60.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %i.fd, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ]
  %i.ff = phi i32 [ %.lcssa7.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %.promoted.i.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre.i47, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %storemerge.i, %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr @431, i64 %.pre-phi.i
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !30626, !noundef !177 ; 3 uses
  %i.fi = add i32 %i.ff, %.pre-phi61.i
  store i32 %i.fi, ptr %i.g, align 8, !alias.scope !30624
  %i.fj = zext i8 %i.eh to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fj
  store i8 %i.fh, ptr %i.fk, align 1, !alias.scope !30624
  %i.fl = shl nuw nsw i64 1, %.pre-phi.i
  %i.fm = and i64 %i.fl, 4369
  %.not.i48 = icmp eq i64 %i.fm, 0
  br i1 %.not.i48, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %.sroa.05.1.i = phi i32 [ %.sroa.05.040.i, %bb.an ], [ %i.fr, %bb.ap ] ; 2 uses
  %.sroa.02.1.i = phi i32 [ %.sroa.02.042.i, %bb.an ], [ %i.fs, %bb.ap ] ; 2 uses
  %i.fn = icmp eq i64 %.sroa.011.0.add.i, 18
  br i1 %i.fn, label %._crit_edge.i49, label %.lr.ph.i46

bb.ap:                                            ; preds = %bb.an
  %i.fo = and i8 %i.fh, 31
  %i.fp = zext nneg i8 %i.fo to i32
  %i.fq = lshr i32 32, %i.fp
  %i.fr = sub i32 %.sroa.05.040.i, %i.fq          ; 3 uses
  %i.fs = add i32 %.sroa.02.042.i, 1              ; 2 uses
  %i.ft = zext i8 %i.fh to i64
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ft ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !alias.scope !30624, !noundef !177
  %i.fw = add i16 %i.fv, 1
  store i16 %i.fw, ptr %i.fu, align 2, !alias.scope !30624
  %i.fx = add i32 %i.fr, -33
  %i.fy = icmp ult i32 %i.fx, -32
  br i1 %i.fy, label %._crit_edge.i49, label %bb.ao

._crit_edge.i49:                                  ; preds = %bb.ap, %bb.ao, %bb.ai
  %.sroa.05.2.i = phi i32 [ %i.ee, %bb.ai ], [ %.sroa.05.1.i, %bb.ao ], [ %i.fr, %bb.ap ]
  %.sroa.02.2.i = phi i32 [ %i.ef, %bb.ai ], [ %.sroa.02.1.i, %bb.ao ], [ %i.fs, %bb.ap ]
  %i.fz = icmp eq i32 %.sroa.02.2.i, 1
  %i.ga = icmp eq i32 %.sroa.05.2.i, 0
  %or.cond.i50 = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %or.cond.i50, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit

bb.aq:                                            ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30633)
  %i.gb = load i32, ptr %i.o, align 4, !alias.scope !30632, !noundef !177 ; 3 uses
  %i.gc = load i32, ptr %i.c, align 8, !alias.scope !30632, !noundef !177
  %i.gd = load i32, ptr %i.d, align 4, !alias.scope !30632, !noundef !177 ; 4 uses
  %i.ge = load i32, ptr %i.p, align 8, !alias.scope !30632, !noundef !177
  %i.gf = load i32, ptr %i.q, align 4, !alias.scope !30632, !noundef !177
  %i.gg = load i32, ptr %i.g, align 8, !alias.scope !30632, !noundef !177
  %i.gh = icmp eq i32 %i.gg, 64
  br i1 %i.gh, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gi = load i32, ptr %i.h, align 8, !alias.scope !30632, !noundef !177
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = load i32, ptr %i.i, align 4, !alias.scope !30632, !noundef !177
  %i.gl = zext i32 %i.gk to i64                   ; 3 uses
  %i.gm = icmp samesign ugt i64 %8, %i.gl
  br i1 %i.gm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gn = load <2 x i32>, ptr %i.i, align 4, !alias.scope !30632
  %i.go = load i64, ptr %i.f, align 8, !alias.scope !30632, !noundef !177
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 %i.gl
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !30633, !noundef !177
  %i.gr = zext i8 %i.gq to i64
  %i.gs = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.go, i64 56)
  store i64 %i.gs, ptr %i.f, align 8, !alias.scope !30632
  store i32 56, ptr %i.g, align 8, !alias.scope !30632
  %i.gt = add <2 x i32> %i.gn, <i32 1, i32 -1>
  store <2 x i32> %i.gt, ptr %i.i, align 4, !alias.scope !30632
  br label %bb.av

bb.au:                                            ; preds = %bb.as
end_hunk_0
