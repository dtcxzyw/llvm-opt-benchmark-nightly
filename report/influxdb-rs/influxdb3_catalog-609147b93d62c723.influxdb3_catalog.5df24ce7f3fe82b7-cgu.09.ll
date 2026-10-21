Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.09?download=true
inline.NumInlined: 2842
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v421DistinctCacheSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB3G_4read9SliceReadEEB1w_:bb.a
  store ptr %i.u, ptr %i.b, align 8
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.410, i64 136, i1 false)
  %i.y = load i64, ptr %i.p, align 8, !alias.scope !2358, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.d, align 8, !range !34, !alias.scope !2358, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v421DistinctCacheSnapshotEE8grow_oneB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !2359

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v421DistinctCacheSnapshotEBJ_(ptr noalias noundef align 8 dereferenceable(144) %.sroa.2.0..sroa_idx)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !2358, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ae, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.p, align 8, !alias.scope !2358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v421DistinctCacheSnapshotEEEB21_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB3s_14DecoderWrapperNtB2x_12Deserializer15deserialize_seq6AccessEB1k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 4 uses
  %i.d = alloca [152 x i8], align 8               ; 6 uses
  %i.e = alloca [152 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8.i.i.i.i.i53.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.8.i.i.i.i54.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [248 x i8], align 8               ; 4 uses
  %i.n = alloca [240 x i8], align 8               ; 6 uses
  %i.o = alloca [240 x i8], align 8               ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 12 uses
  %i.q = alloca [56 x i8], align 8                ; 15 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.t = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.031.i.i.i.sroa.4.i.i.i.i.i = alloca [120 x i8], align 8 ; 6 uses
  %i.u = alloca [64 x i8], align 8                ; 13 uses
  %i.v = alloca [64 x i8], align 8                ; 13 uses
  %i.w = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.7.i.i.i.i = alloca [120 x i8], align 8   ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [160 x i8], align 8               ; 10 uses
  %.sroa.410.sroa.0 = alloca [120 x i8], align 8  ; 2 uses
  %.sroa.10 = alloca [120 x i8], align 8          ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2499, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef 8, i64 noundef 160)
  %i.ac = load i64, ptr %i.x, align 8, !range !4, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !noundef !5 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !16

common.resume:                                    ; preds = %bb.cf, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gw, %bb.cf ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.ag, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.aj = icmp ule i64 %i.ab, %i.af
  tail call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.af, ptr %i.z, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i58.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i59.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i66.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i68.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i71.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i72.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i86.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.031.i.i.i.sroa.4.64..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.i.i.i.sroa.4.i.i.i.i.i, i64 56
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.410.sroa.2.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  br label %bb.d

bb.d:                                             ; preds = %bb.cm, %bb.c
  %i.aw = phi i64 [ %i.gy, %bb.cm ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEB3q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = add nsw i64 %i.aw, -1                   ; 2 uses
  store i64 %i.ay, ptr %i.aa, align 8, !alias.scope !2502
  %i.az = load ptr, ptr %1, align 8, !alias.scope !2502, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.ba = load ptr, ptr %i.am, align 8, !alias.scope !2502, !nonnull !5, !align !12, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504), !noalias !2505
  %i.bb = load i64, ptr %i.az, align 8, !range !13, !alias.scope !2506, !noalias !2507, !noundef !5
  %i.bc = icmp eq i64 %i.bb, 6
  br i1 %i.bc, label %._crit_edge.i.i.i, label %bb.f, !prof !14

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2506, !noalias !2507, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.be, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %.invoke, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.bf = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  br i1 %i.bf, label %.loopexit40, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2506, !noalias !2507, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %i.bi = invoke { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc17:                                         ; preds = %bb.g
  %i.bj = extractvalue { i32, i32 } %i.bi, 0
  %i.bk = trunc i32 %i.bj to i1                   ; 2 uses
  %i.bl = extractvalue { i32, i32 } %i.bi, 1
  %spec.select.i.i.i.i.i.i = select i1 %i.bk, i32 undef, i32 %i.bl
  br i1 %i.bk, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB21_.exit.thread39.i, label %bb.h

bb.h:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.031.i.i.i.sroa.4.i.i.i.i.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2508), !noalias !2505
  call void @llvm.experimental.noalias.scope.decl(metadata !2509), !noalias !2510
  %i.bn = load i64, ptr %i.bm, align 8, !range !13, !alias.scope !2511, !noalias !2512, !noundef !5
  %i.bo = icmp eq i64 %i.bn, 6
  br i1 %i.bo, label %._crit_edge.i.i.i.i.i.i.i, label %bb.i, !prof !14

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc18, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !2511, !noalias !2512, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, 5
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %.invoke, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.br = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba, i64 noundef 5)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.i
  br i1 %i.br, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !2511, !noalias !2512, !nonnull !5, !noundef !5 ; 9 uses
  %i.bu = invoke { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc19:                                         ; preds = %bb.j
  %i.bv = extractvalue { i32, i32 } %i.bu, 0
  %i.bw = trunc i32 %i.bv to i1                   ; 2 uses
  %i.bx = extractvalue { i32, i32 } %i.bu, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.bw, i32 undef, i32 %i.bx
  br i1 %i.bw, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2513
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bz = invoke { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.by, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %bb.k
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit118.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc20
  %i.cc = extractvalue { ptr, i64 } %i.bz, 1
  store ptr %i.ca, ptr %i.w, align 8, !noalias !2513
  store i64 %i.cc, ptr %i.an, align 8, !noalias !2513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2513
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2514), !noalias !2510
  call void @llvm.experimental.noalias.scope.decl(metadata !2515), !noalias !2516
  %i.ce = load i64, ptr %i.cd, align 8, !range !13, !alias.scope !2517, !noalias !2518, !noundef !5
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, !prof !14

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2517, !noalias !2518, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ch, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.an, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ci = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba, i64 noundef 2)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  br i1 %i.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_.exit.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2517, !noalias !2518, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2521
  invoke void @_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seqINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize10VecVisitorNtB27_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc48.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

.noexc48.i.i.i.i.i.i.i.i:                         ; preds = %bb.n
  %i.cl = load i64, ptr %i.r, align 8, !range !6, !noalias !2521, !noundef !5 ; 4 uses
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc48.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2521
  br label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtB1o_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB2z_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.noexc48.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2521
  store i64 %i.cl, ptr %i.s, align 8, !noalias !2521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2521
  %i.cn = load i64, ptr %i.ao, align 8, !noalias !2521, !noundef !5 ; 6 uses
  %i.co = icmp ult i64 %i.cn, 37191016277640226
  call void @llvm.assume(i1 %i.co), !noalias !2522
  call void @llvm.experimental.noalias.scope.decl(metadata !2523), !noalias !2522
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %_RNvMs1_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE24with_capacity_and_hasherB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q

_RNvMs1_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE24with_capacity_and_hasherB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  store i64 0, ptr %i.q, align 8, !alias.scope !2523, !noalias !2521
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2523, !noalias !2521
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2523, !noalias !2521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @153, i64 32, i1 false), !noalias !2521
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2521
  store ptr %i.cq, ptr %i.p, align 8, !noalias !2521
  store ptr %i.cq, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521
  store i64 %i.cl, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521
  store ptr %i.cq, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2524
  invoke void @_RNvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, i64 noundef range(i64 1, 37191016277640226) %i.cn)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2525

.thread41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2524
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 1, 37191016277640226) %i.cn, i1 noundef zeroext false, i64 noundef 8, i64 noundef 256)
          to label %bb.r unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2526

.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.thread34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !2526

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = load i64, ptr %i.k, align 8, !range !4, !noalias !2524, !noundef !5
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = load i64, ptr %i.ap, align 8, !range !15, !noalias !2524, !noundef !5 ; 3 uses
  br i1 %i.ct, label %bb.s, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.cv = load i64, ptr %i.aq, align 8, !noalias !2524
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cv) #28
          to label %bb.t unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2526

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2526
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.cx = load ptr, ptr %i.aq, align 8, !noalias !2524, !nonnull !5, !noundef !5
  %i.cy = icmp samesign ule i64 %i.cn, %i.cu
  call void @llvm.assume(i1 %i.cy), !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !2521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2524
  store i64 %i.cu, ptr %i.q, align 8, !alias.scope !2523, !noalias !2521
  store ptr %i.cx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2523, !noalias !2521
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2523, !noalias !2521
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.cn, 248
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2521
  store ptr %i.cz, ptr %i.p, align 8, !noalias !2521
  store i64 %i.cl, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521
  store ptr %i.da, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2521
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB15_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !2525

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = phi ptr [ %i.cz, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dj, %bb.ad ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2527), !noalias !2522
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 248
  store ptr %i.dc, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2527, !noalias !2521
  %.sroa.630.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.630.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.630.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2528 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.630.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.db, align 8, !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2521
  store i64 %.sroa.630.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !2521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !2525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2521
  invoke void @_RNvMs2_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE11insert_fullB1x_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q, i32 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.o)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2525

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE24with_capacity_and_hasherB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtB1o_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB2z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2525

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotINtNtB4_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEEEB20_(ptr noalias noundef align 8 dereferenceable(56) %i.q) #26
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !2525

.loopexit.split-lp52.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1G_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB29_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.n, ptr noundef nonnull align 8 dereferenceable(240) %i.ar, i64 240, i1 false), !noalias !2521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2521
  %i.dd = load i64, ptr %i.n, align 8, !range !6, !noalias !2521, !noundef !5
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dd, -1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB15_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2525

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB15_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2521
  invoke void @_RINvXs_NtCs87O7Q65ve1k_7bitcode5serdeNtNtB7_5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 19)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2525

end_hunk_0
begin_hunk_1_@_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB3s_14DecoderWrapperNtB2x_12Deserializer15deserialize_seq6AccessEB1k_:bb.a
          to label %.body100.i.i.i.i.i.i.i.i unwind label %bb.bo, !noalias !2554

bb.bo:                                            ; preds = %bb.bn
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2554
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2554
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB24_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtB1m_31ProcessingEngineTriggerSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

bb.bq:                                            ; preds = %bb.bk
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2554
  unreachable

bb.br:                                            ; preds = %._crit_edge.i.i.i55.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() #28
          to label %.noexc103.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

.noexc103.i.i.i.i.i.i.i.i:                        ; preds = %bb.br
  unreachable

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtB1m_31ProcessingEngineTriggerSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2542
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_.exit.i.i.i.i.i.i.i.i

.body100.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv, %bb.bu, %bb.bt, %bb.bn, %bb.bm, %bb.bk, %.thread34.i.i.i.i.i.i.i61.i.i.i.i.i.i.i.i, %bb.be, %bb.bd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEEB2b_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gd, %bb.bt ], [ %i.fu, %bb.bm ], [ %i.fs, %bb.bk ], [ %i.ff, %bb.be ], [ %.pn.i.i.i.i.i.i.i81.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEEB2b_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body37.i.i.i.i.i.i.i62.i.i.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i.i61.i.i.i.i.i.i.i.i ], [ %i.fe, %bb.bd ], [ %i.fv, %bb.bn ], [ %i.gf, %bb.bu ], [ %i.gg, %bb.bv ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_(ptr noalias noundef align 8 dereferenceable(64) %i.v) #26
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !2519

.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i, %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap5inner4CoreNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB20_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body100.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %.noexc.i.i.i.i87.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i.i.i86.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !2513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2542
  %i.fz = extractvalue { i32, i32 } %i.fp, 1
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i84.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !2513
  store i32 %i.fz, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2513
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bt, i64 352
  %i.gb = invoke noundef range(i8 0, 3) i8 @_RINvXs1_NtNtCs5CfTnloWo2c_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ga, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc106.i.i.i.i.i.i.i.i unwind label %bb.bt, !noalias !2519 ; 2 uses

.noexc106.i.i.i.i.i.i.i.i:                        ; preds = %bb.bs
  %i.gc = icmp eq i8 %i.gb, 2
  br i1 %i.gc, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i.i, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_(ptr noalias noundef align 8 dereferenceable(64) %i.u) #26
          to label %.body100.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !2519

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc106.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bu, !noalias !2519

bb.bu:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEEB2q_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u) #26
          to label %.body100.i.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !2519

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1X_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bv, !noalias !2519

bb.bv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB24_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.body100.i.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !2519

bb.bw:                                            ; preds = %bb.bv
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2519
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2519
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB24_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc97.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_9TriggerIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v131ProcessingEngineTriggerSnapshotEEB1S_.exit.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtB1m_31ProcessingEngineTriggerSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2513
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i114.i.i.i.i.i.i.i.i unwind label %bb.by, !noalias !2519

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB2o_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.v) #26
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cb, !noalias !2519

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i114.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtBE_31ProcessingEngineTriggerSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB1Q_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bz, !noalias !2519

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i114.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ca, !noalias !2519

bb.ca:                                            ; preds = %bb.bz
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2519
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2519
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB1Q_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i114.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2519

bb.cc:                                            ; preds = %bb.bt, %.body100.i.i.i.i.i.i.i.i, %bb.ao
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2519
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB1Q_.exit.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB1m_13TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2513
  call void @llvm.experimental.noalias.scope.decl(metadata !2555), !noalias !2510
  call void @llvm.experimental.noalias.scope.decl(metadata !2556), !noalias !2510
  %i.gp = load ptr, ptr %i.w, align 8, !alias.scope !2557, !noalias !2513, !nonnull !5, !noundef !5
  %i.gq = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !noalias !2558
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit118.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  fence acquire, !noalias !2510
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit118.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit118.i.i.i.i.i.i.i.i: ; preds = %.noexc20, %bb.cd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtBE_13TableSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2513
  br label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i: ; preds = %.noexc106.i.i.i.i.i.i.i.i
  %i.gs = load ptr, ptr %i.w, align 8, !noalias !2513, !nonnull !5, !noundef !5
  %i.gt = load i64, ptr %i.an, align 8, !noalias !2513, !noundef !5
  %.sroa.031.i.i.i.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !2513 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.031.i.i.i.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !2559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.031.i.i.i.sroa.4.64..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !2559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2513
  %i.gu = icmp eq i64 %.sroa.031.i.i.i.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %i.gu, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.i.i.i.i

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i: ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i, %.noexc19, %.noexc18, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit118.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.031.i.i.i.sroa.4.i.i.i.i.i)
  br label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB21_.exit.thread39.i

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.i.i.i.i: ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.031.i.i.i.sroa.4.i.i.i.i.i, i64 120, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.031.i.i.i.sroa.4.i.i.i.i.i)
  %i.gv = icmp eq i64 %.sroa.031.i.i.i.sroa.0.0.copyload.i.i.i.i.i, -2
  br i1 %i.gv, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB21_.exit.thread39.i, label %bb.ce

.invoke:                                          ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB21_.exit.thread39.i: ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.i.i.i.i, %.noexc17, %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  br label %.loopexit40

bb.ce:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEB2S_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i.i.i, i64 120, i1 false), !noalias !2502
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %.sroa.0.0.insert.ext = zext i32 %spec.select.i.i.i.i.i.i to i64
  br label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEB3q_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %.invoke, %bb.cd
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cj, %.body.i.i.i.i.i.i.i.i, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %.pn44.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %.pn44.i.i.i.i.i.i.i.i, %bb.ao ], [ %i.hc, %bb.cj ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEEB1P_(ptr noalias noundef align 8 dereferenceable(24) %i.z) #26
          to label %common.resume unwind label %bb.co

.loopexit40:                                      ; preds = %.noexc, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB21_.exit.thread39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEEB1P_.exit unwind label %bb.cf

bb.cf:                                            ; preds = %.loopexit40
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEEB1P_.exit: ; preds = %.loopexit40
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %bb.cn

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEB3q_.exit: ; preds = %bb.d, %bb.ce
  %i.gy = phi i64 [ %i.ay, %bb.ce ], [ 0, %bb.d ]
  %.sroa.15.0 = phi i8 [ %i.gb, %bb.ce ], [ undef, %bb.d ]
  %.sroa.14.0 = phi i32 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.ce ], [ undef, %bb.d ]
  %.sroa.13.0 = phi i64 [ %i.gt, %bb.ce ], [ undef, %bb.d ]
  %.sroa.12.0 = phi ptr [ %i.gs, %bb.ce ], [ undef, %bb.d ]
  %.sroa.526.0 = phi i64 [ %.sroa.031.i.i.i.sroa.0.0.copyload.i.i.i.i.i, %bb.ce ], [ -1, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.ext, %bb.ce ], [ undef, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.410.sroa.0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.not = icmp eq i64 %.sroa.526.0, -1
  br i1 %.not, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEB3q_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.0.0, ptr %i.y, align 8
  store i64 %.sroa.526.0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.410.sroa.0, i64 120, i1 false)
  store ptr %.sroa.12.0, ptr %.sroa.410.sroa.2.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.14.0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.15.0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 4
  %i.gz = load i64, ptr %i.al, align 8, !alias.scope !2561, !noundef !5 ; 3 uses
  %i.ha = load i64, ptr %i.z, align 8, !range !34, !alias.scope !2561, !noundef !5
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEE8grow_oneB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.cm unwind label %bb.cj, !noalias !2562

bb.cj:                                            ; preds = %bb.ci
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEBJ_(ptr noalias noundef align 8 dereferenceable(152) %.sroa.2.0..sroa_idx)
          to label %.body unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cl:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEB3q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci, %bb.ch
  %i.he = load ptr, ptr %i.ak, align 8, !alias.scope !2561, !nonnull !5, !noundef !5
  %i.hf = getelementptr inbounds nuw [160 x i8], ptr %i.he, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.hf, ptr noundef nonnull align 8 dereferenceable(160) %i.y, i64 160, i1 false)
  %i.hg = add i64 %i.gz, 1
  store i64 %i.hg, ptr %i.al, align 8, !alias.scope !2561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.d

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v116DatabaseSnapshotEEEB1P_.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void

bb.co:                                            ; preds = %.body
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEB1k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.410 = alloca [144 x i8], align 8         ; 2 uses
  %i.c = alloca [160 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = zext i1 %2 to i8
  store i8 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 160)
  %i.h = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !15, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !16

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEEB3E_(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEB2L_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ab, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEEB1P_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.q

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEB2L_.exit: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !range !33, !noundef !5 ; 3 uses
  %i.t = icmp eq i64 %i.s, -2
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEB2L_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEEB1P_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEEB1P_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.i:                                             ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEB2L_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.410, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.u, ptr %i.b, align 8
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.410, i64 144, i1 false)
  %i.y = load i64, ptr %i.p, align 8, !alias.scope !2566, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.d, align 8, !range !34, !alias.scope !2566, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEE8grow_oneB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !2567

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEBJ_(ptr noalias noundef align 8 dereferenceable(152) %.sroa.2.0..sroa_idx)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !2566, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.ad, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.p, align 8, !alias.scope !2566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v216DatabaseSnapshotEEEB1P_.exit, %bb.n
end_hunk_1
begin_hunk_2_@_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_6NodeIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v412NodeSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB3n_4read9SliceReadEEB1m_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB3s_14DecoderWrapperNtB2x_12Deserializer15deserialize_seq6AccessEB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [120 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8.i.i.i.i.i124.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.8.i.i.i.i125.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [136 x i8], align 8               ; 4 uses
  %i.n = alloca [128 x i8], align 8               ; 6 uses
  %i.o = alloca [128 x i8], align 8               ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 12 uses
  %i.q = alloca [56 x i8], align 8                ; 15 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8.i.i.i.i.i78.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.8.i.i.i.i79.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.t = alloca [56 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 12 uses
  %i.aa = alloca [56 x i8], align 8               ; 15 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.ad = alloca [56 x i8], align 8               ; 11 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.047.i.i.i.sroa.4.i.i.i.i.i = alloca [208 x i8], align 8 ; 8 uses
  %i.af = alloca [64 x i8], align 8               ; 9 uses
  %i.ag = alloca [64 x i8], align 8               ; 13 uses
  %i.ah = alloca [64 x i8], align 8               ; 13 uses
  %i.ai = alloca [24 x i8], align 8               ; 10 uses
  %i.aj = alloca [16 x i8], align 8               ; 10 uses
  %.sroa.7.i.i.i.i = alloca [208 x i8], align 8   ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [248 x i8], align 8              ; 10 uses
  %.sroa.410.sroa.0 = alloca [208 x i8], align 8  ; 2 uses
  %.sroa.10 = alloca [208 x i8], align 8          ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2937, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef %i.ao, i1 noundef zeroext false, i64 noundef 8, i64 noundef 248)
  %i.ap = load i64, ptr %i.ak, align 8, !range !4, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.b, label %bb.c, !prof !16

common.resume:                                    ; preds = %bb.dm, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.js, %bb.dm ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.au = load i64, ptr %i.at, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.aw = icmp ule i64 %i.ao, %i.as
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.as, ptr %i.am, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx191.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 43
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 43
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i83.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i84.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i92.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i94.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i95.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i106.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.433.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i129.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i137.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i138.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i139.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i141.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i142.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i143.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i144.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i157.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.441.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.047.i.i.i.sroa.4.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.047.i.i.i.sroa.4.i.i.i.i.i, i64 16
  %.sroa.047.i.i.i.sroa.4.88..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.047.i.i.i.sroa.4.i.i.i.i.i, i64 80
  %.sroa.047.i.i.i.sroa.4.152..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.047.i.i.i.sroa.4.i.i.i.i.i, i64 144
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.410.sroa.2.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 244
  %i.bo = icmp eq i64 %i.ao, 0
  br i1 %i.bo, label %.split119, label %.split

.split:                                           ; preds = %bb.c, %bb.dr
  %i.bp = phi i64 [ %i.ju, %bb.dr ], [ %i.ao, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3t_.exit, label %bb.d

bb.d:                                             ; preds = %.split
  %i.br = add nsw i64 %i.bp, -1                   ; 2 uses
  store i64 %i.br, ptr %i.an, align 8, !alias.scope !2940
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !2940, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.bt = load ptr, ptr %i.az, align 8, !alias.scope !2940, !nonnull !5, !align !12, !noundef !5 ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  call void @llvm.experimental.noalias.scope.decl(metadata !2942), !noalias !2943
  %i.bu = load i64, ptr %i.bs, align 8, !range !13, !alias.scope !2944, !noalias !2945, !noundef !5
  %i.bv = icmp eq i64 %i.bu, 6
  br i1 %i.bv, label %._crit_edge.i.i.i, label %bb.e, !prof !14

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !2944, !noalias !2945, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.bx, 2
  br i1 %.not.i.i.i.i, label %bb.f, label %.invoke, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.by = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bs, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  br i1 %i.by, label %.loopexit43, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !2944, !noalias !2945, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %i.cb = invoke { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc17:                                         ; preds = %bb.f
  %i.cc = extractvalue { i32, i32 } %i.cb, 0
  %i.cd = trunc i32 %i.cc to i1                   ; 2 uses
  %i.ce = extractvalue { i32, i32 } %i.cb, 1
  %spec.select.i.i.i.i.i.i = select i1 %i.cd, i32 undef, i32 %i.ce
  br i1 %i.cd, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB24_.exit.thread39.i, label %bb.g

bb.g:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047.i.i.i.sroa.4.i.i.i.i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2946), !noalias !2943
  call void @llvm.experimental.noalias.scope.decl(metadata !2947), !noalias !2948
  %i.cg = load i64, ptr %i.cf, align 8, !range !13, !alias.scope !2949, !noalias !2950, !noundef !5
  %i.ch = icmp eq i64 %i.cg, 6
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i, label %bb.h, !prof !14

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc18, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2949, !noalias !2950, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 7
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %.invoke, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.ck = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef 7)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.h
  br i1 %i.ck, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !2949, !noalias !2950, !nonnull !5, !noundef !5 ; 13 uses
  %i.cn = invoke { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc19:                                         ; preds = %bb.i
  %i.co = extractvalue { i32, i32 } %i.cn, 0
  %i.cp = trunc i32 %i.co to i1                   ; 2 uses
  %i.cq = extractvalue { i32, i32 } %i.cn, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.cp, i32 undef, i32 %i.cq
  br i1 %i.cp, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2951
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cs = invoke { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %bb.j
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit189.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc20
  %i.cv = extractvalue { ptr, i64 } %i.cs, 1
  store ptr %i.ct, ptr %i.aj, align 8, !noalias !2951
  store i64 %i.cv, ptr %i.ba, align 8, !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2951
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2952
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  %i.cx = load i64, ptr %i.ae, align 8, !range !6, !noalias !2952, !noundef !5 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.ap, label %bb.m

.body187.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dh, %.body.i.i.i.i.i.i.i.i
  %.pn68.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn66.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.jj, %bb.dh ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2954), !noalias !2948
  call void @llvm.experimental.noalias.scope.decl(metadata !2955), !noalias !2948
  %i.cz = load ptr, ptr %i.aj, align 8, !alias.scope !2956, !noalias !2951, !nonnull !5, !noundef !5
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !2957
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.l, label %.body

bb.l:                                             ; preds = %.body187.i.i.i.i.i.i.i.i
  fence acquire, !noalias !2948
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %.body unwind label %bb.dc, !noalias !2953

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.di
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %.body187.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx191.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2952
  store i64 %i.cx, ptr %i.ai, align 8, !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2951
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2958), !noalias !2948
  call void @llvm.experimental.noalias.scope.decl(metadata !2959), !noalias !2960
  %i.dd = load i64, ptr %i.dc, align 8, !range !13, !alias.scope !2961, !noalias !2962, !noundef !5
  %i.de = icmp eq i64 %i.dd, 6
  br i1 %i.de, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !14

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc73.i.i.i.i.i.i.i.i, %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 280
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2961, !noalias !2962, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.ao, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.dh = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef 2)
          to label %.noexc73.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

.noexc73.i.i.i.i.i.i.i.i:                         ; preds = %bb.n
  br i1 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtBE_24ColumnDefinitionSnapshotEEBK_.exit.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 272
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !2961, !noalias !2962, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2963
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2964
  invoke void @_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seqINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize10VecVisitorNtB27_8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEB3i_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc74.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

.noexc74.i.i.i.i.i.i.i.i:                         ; preds = %bb.o
  %i.dk = load i64, ptr %i.ab, align 8, !range !6, !noalias !2964, !noundef !5 ; 4 uses
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc74.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2964
  br label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtB1o_8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB2A_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %.noexc74.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2964
  store i64 %i.dk, ptr %i.ac, align 8, !noalias !2964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2964
  %i.dm = load i64, ptr %i.bb, align 8, !noalias !2964, !noundef !5 ; 6 uses
  %i.dn = icmp ult i64 %i.dm, 164703072086692426
  call void @llvm.assume(i1 %i.dn), !noalias !2965
  call void @llvm.experimental.noalias.scope.decl(metadata !2966), !noalias !2965
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %_RNvMs1_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE24with_capacity_and_hasherB1y_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

_RNvMs1_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE24with_capacity_and_hasherB1y_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  store i64 0, ptr %i.aa, align 8, !alias.scope !2966, !noalias !2964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2966, !noalias !2964
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2966, !noalias !2964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @153, i64 32, i1 false), !noalias !2964
  %i.dp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2964
  store ptr %i.dp, ptr %i.z, align 8, !noalias !2964
  store ptr %i.dp, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964
  store i64 %i.dk, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964
  store ptr %i.dp, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2967
  invoke void @_RNvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, i64 noundef range(i64 1, 164703072086692426) %i.dm)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2968

.thread40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.thread33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2967
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef range(i64 1, 164703072086692426) %i.dm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %bb.s unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2969

.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.thread33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !2969

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = load i64, ptr %i.u, align 8, !range !4, !noalias !2967, !noundef !5
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = load i64, ptr %i.bc, align 8, !range !15, !noalias !2967, !noundef !5 ; 3 uses
  br i1 %i.ds, label %bb.t, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.du = load i64, ptr %i.bd, align 8, !noalias !2967
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dt, i64 %i.du) #28
          to label %bb.u unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2969

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2969
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.dw = load ptr, ptr %i.bd, align 8, !noalias !2967, !nonnull !5, !noundef !5
  %i.dx = icmp samesign ule i64 %i.dm, %i.dt
  call void @llvm.assume(i1 %i.dx), !noalias !2965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !2964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2967
  store i64 %i.dt, ptr %i.aa, align 8, !alias.scope !2966, !noalias !2964
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2966, !noalias !2964
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2966, !noalias !2964
  %i.dy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dm, 56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2964
  store ptr %i.dy, ptr %i.z, align 8, !noalias !2964
  store i64 %i.dk, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964
  store ptr %i.dz, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2964
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEB15_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1H_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEEB2a_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !2968

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = phi ptr [ %i.dy, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ej, %bb.ae ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2970), !noalias !2965
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %i.eb, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2970, !noalias !2964
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 51
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2971 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ea, align 8, !noalias !2971
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 52
  %.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !2971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2964
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(43) %i.y, ptr noundef nonnull align 8 dereferenceable(43) %i.ec, i64 43, i1 false), !noalias !2968
end_hunk_2
begin_hunk_3_@_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB3s_14DecoderWrapperNtB2x_12Deserializer15deserialize_seq6AccessEB1n_:bb.a

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtB1m_21DistinctCacheSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v121DistinctCacheSnapshotEEB1Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2999
  br label %.loopexit86

.body171.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cx, %bb.cr, %bb.cq, %bb.co, %.thread34.i.i.i.i.i.i.i132.i.i.i.i.i.i.i.i, %bb.ci, %bb.ch, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v121DistinctCacheSnapshotEEEB2i_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ix, %bb.cx ], [ %i.io, %bb.cq ], [ %i.im, %bb.co ], [ %i.hz, %bb.ci ], [ %.pn.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v121DistinctCacheSnapshotEEEB2i_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body37.i.i.i.i.i.i.i133.i.i.i.i.i.i.i.i, %.thread34.i.i.i.i.i.i.i132.i.i.i.i.i.i.i.i ], [ %i.hy, %bb.ch ], [ %i.ip, %bb.cr ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtBE_17LastCacheSnapshotEEBK_(ptr noalias noundef align 8 dereferenceable(64) %i.ag) #26
          to label %.body120.i.i.i.i.i.i.i.i unwind label %bb.dc, !noalias !2953

.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bv, %bb.bu, %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i, %bb.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v121DistinctCacheSnapshotEEB1Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap5inner4CoreNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v121DistinctCacheSnapshotEEB27_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %.body171.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %.noexc.i.i.i.i158.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.441.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i.i.i157.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2999
  %i.it = extractvalue { i16, i16 } %i.ij, 1
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i155.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !2951
  store i16 %i.it, ptr %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2951
  %i.iu = getelementptr inbounds nuw i8, ptr %i.cm, i64 528
  %i.iv = invoke noundef range(i8 0, 3) i8 @_RINvXs1_NtNtCs5CfTnloWo2c_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.iu, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.cx, !noalias !3012 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.cw
  %i.iw = icmp eq i8 %i.iv, 2
  br i1 %i.iw, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtBE_21DistinctCacheSnapshotEEBK_(ptr noalias noundef align 8 dereferenceable(64) %i.af) #26
          to label %.body171.i.i.i.i.i.i.i.i unwind label %bb.dc, !noalias !2953

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtBE_21DistinctCacheSnapshotEEBK_(ptr noalias noundef align 8 dereferenceable(64) %i.af)
          to label %.loopexit86 unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

.loopexit86:                                      ; preds = %.noexc168.i.i.i.i.i.i.i.i, %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementbECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i.i.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id15DistinctCacheIdNtB1m_21DistinctCacheSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2951
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cy, !noalias !2953

bb.cy:                                            ; preds = %.loopexit86
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag) #26
          to label %.body120.i.i.i.i.i.i.i.i unwind label %bb.db, !noalias !2953

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit86
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB20_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEEB1V_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.cz, !noalias !2953

bb.cz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.body120.i.i.i.i.i.i.i.i unwind label %bb.da, !noalias !2953

bb.da:                                            ; preds = %bb.cz
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEEB1V_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtBE_17LastCacheSnapshotEEBK_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp66.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

bb.dc:                                            ; preds = %bb.cx, %.body171.i.i.i.i.i.i.i.i, %.body120.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i, %bb.l
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtBE_17LastCacheSnapshotEEBK_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc117.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_11LastCacheIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v117LastCacheSnapshotEEB1V_.exit.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtB1m_17LastCacheSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2951
  %i.je = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.je)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i182.i.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !2953

bb.dd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtBE_17LastCacheSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEEB2p_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ah) #26
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.dg, !noalias !2953

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i182.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdNtBE_17LastCacheSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1W_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEB1R_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.de, !noalias !2953

bb.de:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i182.i.i.i.i.i.i.i.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ah)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.df, !noalias !2953

bb.df:                                            ; preds = %bb.de
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

bb.dg:                                            ; preds = %bb.dd
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEB1R_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i182.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtBE_24ColumnDefinitionSnapshotEEBK_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtBE_24ColumnDefinitionSnapshotEEBK_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc73.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_8ColumnIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v124ColumnDefinitionSnapshotEEB1R_.exit.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtB1m_24ColumnDefinitionSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1s_.exit.thread18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2951
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.di unwind label %bb.dh, !noalias !2953

bb.dh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtBE_24ColumnDefinitionSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body187.i.i.i.i.i.i.i.i unwind label %bb.dj, !noalias !2953

bb.di:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v118RepositorySnapshotNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtBE_24ColumnDefinitionSnapshotEEBK_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2953

bb.dj:                                            ; preds = %bb.dh
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2953
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2951
  call void @llvm.experimental.noalias.scope.decl(metadata !3013), !noalias !2948
  call void @llvm.experimental.noalias.scope.decl(metadata !3014), !noalias !2948
  %i.jl = load ptr, ptr %i.aj, align 8, !alias.scope !3015, !noalias !2951, !nonnull !5, !noundef !5
  %i.jm = atomicrmw sub ptr %i.jl, i64 1 release, align 8, !noalias !3016
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %bb.dk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit189.i.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i
  fence acquire, !noalias !2948
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit189.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit189.i.i.i.i.i.i.i.i: ; preds = %.noexc20, %bb.dk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2951
  br label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.jo = load ptr, ptr %i.aj, align 8, !noalias !2951, !nonnull !5, !noundef !5
  %i.jp = load i64, ptr %i.ba, align 8, !noalias !2951, !noundef !5
  %.sroa.047.i.i.i.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !2951 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.047.i.i.i.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.047.i.i.i.sroa.4.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.047.i.i.i.sroa.4.88..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false), !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.047.i.i.i.sroa.4.152..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false), !noalias !3017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2951
  %i.jq = icmp eq i64 %.sroa.047.i.i.i.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %i.jq, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i, label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.i.i.i.i

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i: ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i, %.noexc19, %.noexc18, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit189.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.i.i.i.sroa.4.i.i.i.i.i)
  br label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB24_.exit.thread39.i

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.i.i.i.i: ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.047.i.i.i.sroa.4.i.i.i.i.i, i64 208, i1 false), !noalias !3018
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.i.i.i.sroa.4.i.i.i.i.i)
  %i.jr = icmp eq i64 %.sroa.047.i.i.i.sroa.0.0.copyload.i.i.i.i.i, -2
  br i1 %i.jr, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB24_.exit.thread39.i, label %bb.dl

.invoke:                                          ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB24_.exit.thread39.i: ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.i.i.i.i, %.noexc17, %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  br label %.loopexit43

bb.dl:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple6AccessNtB17_9SeqAccess12next_elementNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEB2S_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.i.i.i.i, i64 208, i1 false), !noalias !2940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %.sroa.0.0.insert.ext = zext i32 %spec.select.i.i.i.i.i.i to i64
  br label %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3t_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %.invoke, %bb.dk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split121, %.body187.i.i.i.i.i.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %.pn68.i.i.i.i.i.i.i.i, %.body187.i.i.i.i.i.i.i.i ], [ %.pn68.i.i.i.i.i.i.i.i, %bb.l ], [ %i.jy, %.split121 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.am) #26
          to label %common.resume unwind label %bb.dt

.loopexit43:                                      ; preds = %.noexc, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB24_.exit.thread39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB1S_.exit unwind label %bb.dm

bb.dm:                                            ; preds = %.loopexit43
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB1S_.exit: ; preds = %.loopexit43
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %bb.ds

_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3t_.exit: ; preds = %.split, %bb.dl
  %i.ju = phi i64 [ %i.br, %bb.dl ], [ 0, %.split ]
  %.sroa.15.0 = phi i8 [ %i.iv, %bb.dl ], [ undef, %.split ]
  %.sroa.14.0 = phi i32 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.dl ], [ undef, %.split ]
  %.sroa.13.0 = phi i64 [ %i.jp, %bb.dl ], [ undef, %.split ]
  %.sroa.12.0 = phi ptr [ %i.jo, %bb.dl ], [ undef, %.split ]
  %.sroa.526.0 = phi i64 [ %.sroa.047.i.i.i.sroa.0.0.copyload.i.i.i.i.i, %bb.dl ], [ -1, %.split ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.ext, %bb.dl ], [ undef, %.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.410.sroa.0, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.10, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.not = icmp eq i64 %.sroa.526.0, -1
  br i1 %.not, label %.split119, label %bb.do

bb.do:                                            ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3t_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.0.0, ptr %i.al, align 8
  store i64 %.sroa.526.0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.410.sroa.0, i64 208, i1 false)
  store ptr %.sroa.12.0, ptr %.sroa.410.sroa.2.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.14.0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.15.0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 4
  %i.jv = load i64, ptr %i.ay, align 8, !alias.scope !3019, !noundef !5 ; 3 uses
  %i.jw = load i64, ptr %i.am, align 8, !range !34, !alias.scope !3019, !noundef !5
  %i.jx = icmp eq i64 %i.jv, %i.jw
  br i1 %i.jx, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEE8grow_oneB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.dr unwind label %.split121, !noalias !3020

.split121:                                        ; preds = %bb.dp
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEBJ_(ptr noalias noundef align 8 dereferenceable(240) %.sroa.2.0..sroa_idx)
          to label %.body unwind label %bb.dq

bb.dq:                                            ; preds = %.split121
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

.split119:                                        ; preds = %_RINvYNtNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtBb_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seq6AccessNtB17_9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEB3t_.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.do
  %i.ka = load ptr, ptr %i.ax, align 8, !alias.scope !3019, !nonnull !5, !noundef !5
  %i.kb = getelementptr inbounds nuw [248 x i8], ptr %i.ka, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.kb, ptr noundef nonnull align 8 dereferenceable(248) %i.al, i64 248, i1 false)
  %i.kc = add i64 %i.jv, 1
  store i64 %i.kc, ptr %i.ay, align 8, !alias.scope !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.split, !llvm.loop !2936

bb.ds:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v113TableSnapshotEEEB1S_.exit, %.split119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void

bb.dt:                                            ; preds = %.body
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_10VecVisitorNtB8_7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotENtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [248 x i8], align 8               ; 6 uses
  %.sroa.410 = alloca [232 x i8], align 8         ; 2 uses
  %i.c = alloca [248 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = zext i1 %2 to i8
  store i8 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 248)
  %i.h = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !15, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !16

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEEB3H_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEB2O_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ab, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.q

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEB2O_.exit: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !range !33, !noundef !5 ; 3 uses
  %i.t = icmp eq i64 %i.s, -2
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEB2O_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEEB1S_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEEB1S_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.i:                                             ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess12next_elementTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEB2O_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.410, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.5.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.u, ptr %i.b, align 8
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.410, i64 232, i1 false)
  %i.y = load i64, ptr %i.p, align 8, !alias.scope !3025, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.d, align 8, !range !34, !alias.scope !3025, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEE8grow_oneB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !3026

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEBJ_(ptr noalias noundef align 8 dereferenceable(240) %.sroa.2.0..sroa_idx)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !3025, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [248 x i8], ptr %i.ad, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ae, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.p, align 8, !alias.scope !3025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v213TableSnapshotEEEB1S_.exit, %bb.n
end_hunk_3
