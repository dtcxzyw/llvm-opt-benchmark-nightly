Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9161
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB3_7Decoder6decodeINtNtB5_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1u_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB5_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !644
  %i.mh = load i64, ptr %i.bm, align 8, !alias.scope !641, !noalias !664, !noundef !11
  %.not33.i.i = icmp ult i64 %i.mh, %.sroa.023.0
  br i1 %.not33.i.i, label %.loopexit, label %bb.fl

bb.fl:                                            ; preds = %.noexc236
  %i.mi = call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31)
  br label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.fm:                                            ; preds = %bb.fh
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !648
  unreachable

bb.fn:                                            ; preds = %.noexc232, %bb.fe
  %.sroa.106250.0 = phi ptr [ %.sroa.3.0.copyload.i124.i, %bb.fe ], [ undef, %.noexc232 ]
  %.sroa.0249.0 = phi i8 [ 1, %bb.fe ], [ 2, %.noexc232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !644
  br label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.fn, %.loopexit331, %.loopexit332, %.loopexit333, %.loopexit334, %.loopexit335, %bb.dd, %.loopexit336, %.loopexit337, %.loopexit338, %.loopexit339, %.loopexit340
  %.sroa.106250.12 = phi ptr [ %.sroa.106250.11, %.loopexit340 ], [ %.sroa.106250.7, %.loopexit336 ], [ %.sroa.106250.0, %bb.fn ], [ %.sroa.106250.1, %.loopexit331 ], [ %.sroa.106250.4, %.loopexit334 ], [ %.sroa.106250.6, %bb.dd ], [ %.sroa.106250.8, %.loopexit337 ], [ %.sroa.106250.10, %.loopexit339 ], [ %.sroa.106250.9, %.loopexit338 ], [ %.sroa.106250.3, %.loopexit333 ], [ %.sroa.106250.5, %.loopexit335 ], [ %.sroa.106250.2, %.loopexit332 ]
  %.sroa.0249.12 = phi i8 [ %.sroa.0249.11, %.loopexit340 ], [ %.sroa.0249.7, %.loopexit336 ], [ %.sroa.0249.0, %bb.fn ], [ %.sroa.0249.1, %.loopexit331 ], [ %.sroa.0249.4, %.loopexit334 ], [ %.sroa.0249.6, %bb.dd ], [ %.sroa.0249.8, %.loopexit337 ], [ %.sroa.0249.10, %.loopexit339 ], [ %.sroa.0249.9, %.loopexit338 ], [ %.sroa.0249.3, %.loopexit333 ], [ %.sroa.0249.5, %.loopexit335 ], [ %.sroa.0249.2, %.loopexit332 ]
  %cond = icmp eq i8 %.sroa.0249.12, 2
  br i1 %cond, label %bb.fo, label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.fo:                                            ; preds = %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  store i64 -3, ptr %0, align 8
  br label %bb.s

_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %bb.an, %bb.as, %bb.av, %bb.ax, %bb.az, %bb.bg, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.ca, %bb.cb, %bb.ci, %bb.ck, %bb.cl, %bb.cs, %bb.cu, %bb.da, %bb.dj, %bb.dk, %bb.dr, %bb.ds, %bb.dz, %bb.ec, %bb.ej, %bb.el, %bb.en, %bb.ep, %bb.ew, %bb.ez, %bb.fc, %bb.fi, %bb.fk, %bb.fl, %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.106250.12287 = phi ptr [ %.sroa.106250.12, %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.lv, %bb.fi ], [ %i.mg, %bb.fk ], [ %i.lp, %bb.fc ], [ %i.kz, %bb.ez ], [ %i.kn, %bb.ew ], [ %i.kh, %bb.ep ], [ %i.jq, %bb.ej ], [ %i.kb, %bb.el ], [ %i.ke, %bb.en ], [ %i.ix, %bb.dz ], [ %i.jk, %bb.ec ], [ %i.ir, %bb.ds ], [ %i.ih, %bb.dr ], [ %i.ib, %bb.dk ], [ %i.hr, %bb.dj ], [ %i.hf, %bb.da ], [ %i.gm, %bb.cs ], [ %i.gx, %bb.cu ], [ %i.gf, %bb.cl ], [ %i.fs, %bb.ci ], [ %i.ge, %bb.ck ], [ %i.fm, %bb.cb ], [ %i.fd, %bb.ca ], [ %i.ex, %bb.bt ], [ %i.ej, %bb.bn ], [ %i.dr, %bb.bg ], [ %i.eo, %bb.bp ], [ %i.et, %bb.br ], [ %i.dl, %bb.az ], [ %i.cf, %bb.an ], [ %i.cv, %bb.as ], [ %i.dc, %bb.av ], [ %i.dh, %bb.ax ], [ %i.mi, %bb.fl ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.106250.12287) ]
  store i64 -2, ptr %0, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.106250.12287, ptr %.sroa.484.0..sroa_idx, align 8
  br label %bb.s

.loopexit:                                        ; preds = %bb.x, %.noexc236
  %.pr = load ptr, ptr %i.ai, align 8             ; 2 uses
  store i8 12, ptr %i.bk, align 8
  %.not164 = icmp eq ptr %.pr, null
  br i1 %.not164, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.loopexit.thread, %.loopexit
  store i64 -1, ptr %0, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @6, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5103.0..sroa_idx, align 8
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6104.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.s

bb.fq:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.535.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.535.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  store ptr null, ptr %i.ai, align 8
  store ptr %.pr, ptr %i.v, align 8
  %i.mk = load i64, ptr %i.aj, align 8, !noundef !11
  invoke void @_RNvNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decode15decode_trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.mk)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.q

bb.fs:                                            ; preds = %bb.fq
  %i.mm = load i64, ptr %i.w, align 8, !range !361, !noundef !11
  %i.mn = icmp eq i64 %i.mm, -1
  br i1 %i.mn, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.mo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !nonnull !11, !noundef !11
  store i64 -2, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mp, ptr %.sroa.438.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutECsgsNUVCRJO2f_13influxdb3_lib.exit240

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutECsgsNUVCRJO2f_13influxdb3_lib.exit240

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes9bytes_mut8BytesMutECsgsNUVCRJO2f_13influxdb3_lib.exit240: ; preds = %bb.fu, %bb.ft
  call void @_RNvXs0_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.s

bb.fv:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h12ioINtB5_8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB13_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB7_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEENtB5_7MemRead8read_memCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(224) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 8192)
  %i.mq = load i64, ptr %i.u, align 8, !range !27, !noundef !11
  %i.mr = trunc nuw i64 %i.mq to i1
  br i1 %i.mr, label %bb.fx, label %bb.fy

bb.fw:                                            ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @6, ptr %.sroa.4130.0..sroa_idx, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5131.0..sroa_idx, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6132.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.s

bb.fx:                                            ; preds = %bb.fv
  store i64 -3, ptr %0, align 8
  br label %bb.gb

bb.fy:                                            ; preds = %bb.fv
  %i.ms = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !noundef !11
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.mv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !11, !noundef !11
  store i64 -2, ptr %0, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mw, ptr %.sroa.4143.0..sroa_idx, align 8
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4156.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i64 16, i1 false)
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store i64 -1, ptr %0, align 8
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mx = load <2 x i64>, ptr %.sroa.4136.0..sroa_idx, align 8
  %.sroa.4136.0.copyload = load i64, ptr %.sroa.4136.0..sroa_idx, align 8
  %i.my = icmp eq i64 %.sroa.4136.0.copyload, 0
  %i.mz = zext i1 %i.my to i8
  store i8 %i.mz, ptr %i.al, align 8
  store <2 x i64> %i.mx, ptr %.sroa.5157.0..sroa_idx, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs8Bp9JeovReN_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtB8_5LocalNCINvMs2_B6_BM_13clear_storageB2H_E0bECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 2 uses
  %i.b = lshr i64 %i.a, 51
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %.lr.ph23, label %.loopexit

.lr.ph23:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190
  %.v = select i1 %.cmp, i64 1, i64 -8190
  %i.d = add i64 %1, %.v
  %i.e = shl nuw i64 %i.d, 51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph23, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.020 = phi i1 [ false, %.lr.ph23 ], [ %.sroa.02.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.019 = phi i64 [ %i.a, %.lr.ph23 ], [ %.sroa.06.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.018 = phi i64 [ 0, %.lr.ph23 ], [ %.sroa.0.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %i.f = and i64 %.sroa.06.019, 2251799813685247
  %i.g = or disjoint i64 %i.f, %i.e
  %i.h = cmpxchg ptr %0, i64 %.sroa.06.019, i64 %i.g acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.h, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.h, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i, label %bb.c, label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

.loopexit:                                        ; preds = %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit, %bb.a, %bb.d
  %or.cond.not16 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not16

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %.sroa.01.0.i, 2251799813685244
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs6_NtNtCs4DT25d3JcKH_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCs8Bp9JeovReN_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(72) dereferenceable_or_null(72) %i.k)
  %i.l = load i64, ptr %3, align 8, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  store i64 %2, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i64 %.sroa.0.018 to i32
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.not = icmp eq i32 %i.o, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = shl nuw i32 1, %i.o
  %i.q = freeze i32 %i.p                          ; 3 uses
  %i.r = add i32 %i.q, -1
  %xtraiter = and i32 %i.q, 7                     ; 3 uses
  %i.s = icmp ult i32 %i.r, 7
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.q, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !668

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.t = icmp ugt i64 %.sroa.0.018, 7
  br i1 %i.t, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  tail call void @llvm.x86.sse2.pause(), !noalias !665
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.u = add nuw nsw i64 %.sroa.0.018, 1
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !665
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.018, %bb.g ], [ %i.u, %bb.f ]
  %.sroa.06.1 = phi i64 [ %.sroa.01.0.i, %bb.b ], [ %.sroa.06.019, %bb.g ], [ %.sroa.06.019, %bb.f ] ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.020, %bb.b ], [ true, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.v = lshr i64 %.sroa.06.1, 51
  %i.w = icmp eq i64 %1, %i.v
  %or.cond.not = or i1 %.sroa.02.1, %i.w
  br i1 %or.cond.not, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCs8Bp9JeovReN_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtNtB8_5stack13TransferStackNCINvMs2_B6_BM_13clear_storageB2H_E0bECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 2 uses
  %i.b = lshr i64 %i.a, 51
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %.lr.ph24, label %_RINvXs_NtNtCs8Bp9JeovReN_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerECsgsNUVCRJO2f_13influxdb3_lib.exit

.lr.ph24:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190
  %.v = select i1 %.cmp, i64 1, i64 -8190
  %i.d = add i64 %1, %.v
  %i.e = shl nuw i64 %i.d, 51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.021 = phi i1 [ false, %.lr.ph24 ], [ %.sroa.02.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.020 = phi i64 [ %i.a, %.lr.ph24 ], [ %.sroa.06.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.019 = phi i64 [ 0, %.lr.ph24 ], [ %.sroa.0.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %i.f = and i64 %.sroa.06.020, 2251799813685247
  %i.g = or disjoint i64 %i.f, %i.e
  %i.h = cmpxchg ptr %0, i64 %.sroa.06.020, i64 %i.g acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.h, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.h, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i, label %bb.c, label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

_RINvXs_NtNtCs8Bp9JeovReN_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit, %bb.e, %bb.a
  %or.cond.not17 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not17

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %.sroa.01.0.i, 2251799813685244
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs6_NtNtCs4DT25d3JcKH_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCs8Bp9JeovReN_12sharded_slab5clear5Clear5clear(ptr noalias noundef nonnull align 8 dereferenceable(72) dereferenceable_or_null(72) %i.k)
  %i.l = load atomic i64, ptr %3 monotonic, align 8, !noalias !670
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0.i.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.e ] ; 2 uses
  store i64 %.sroa.02.0.i.i, ptr %i.m, align 8, !noalias !670
  %i.n = cmpxchg ptr %3, i64 %.sroa.02.0.i.i, i64 %2 release monotonic, align 8, !noalias !670 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.n, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.n, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvXs_NtNtCs8Bp9JeovReN_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.o = trunc i64 %.sroa.0.019 to i32
  %i.p = and i32 %i.o, 31                         ; 2 uses
  %.not = icmp eq i32 %i.p, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.q = shl nuw i32 1, %i.p
  %i.r = freeze i32 %i.q                          ; 3 uses
  %i.s = add i32 %i.r, -1
  %xtraiter = and i32 %i.r, 7                     ; 3 uses
  %i.t = icmp ult i32 %i.s, 7
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.r, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !676

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = icmp ugt i64 %.sroa.0.019, 7
  br i1 %i.u, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  tail call void @llvm.x86.sse2.pause(), !noalias !673
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.v = add nuw nsw i64 %.sroa.0.019, 1
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

bb.h:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !673
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.h, %bb.g, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.019, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.06.1 = phi i64 [ %.sroa.01.0.i, %bb.b ], [ %.sroa.06.020, %bb.h ], [ %.sroa.06.020, %bb.g ] ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.021, %bb.b ], [ true, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.w = lshr i64 %.sroa.06.1, 51
  %i.x = icmp eq i64 %1, %i.w
  %or.cond.not = or i1 %.sroa.02.1, %i.x
  br i1 %or.cond.not, label %bb.b, label %_RINvXs_NtNtCs8Bp9JeovReN_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerECsgsNUVCRJO2f_13influxdb3_lib.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs_NtCsaIKnL9StOw_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs_NtCsaIKnL9StOw_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2h_4body8incoming8IncomingEEINtB4e_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1B_DNtNtB19_5error5ErrorNtNtB19_6marker4SendNtBaX_4SyncEL_EEENtNtNtB37_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2M_4body8incoming8IncomingEEINtB4J_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB26_DNtNtB1E_5error5ErrorNtNtB1E_6marker4SendNtBbs_4SyncEL_EEENtNtNtB3C_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2z_4body8incoming8IncomingEEINtB4w_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1T_DNtNtB1r_5error5ErrorNtNtB1r_6marker4SendNtBbf_4SyncEL_EEENtNtNtB3p_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2h_4body8incoming8IncomingEEINtB4e_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1B_DNtNtB19_5error5ErrorNtNtB19_6marker4SendNtBaX_4SyncEL_EEENtNtNtB37_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2M_4body8incoming8IncomingEEINtB4J_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB26_DNtNtB1E_5error5ErrorNtNtB1E_6marker4SendNtBbs_4SyncEL_EEENtNtNtB3C_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2z_4body8incoming8IncomingEEINtB4w_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1T_DNtNtB1r_5error5ErrorNtNtB1r_6marker4SendNtBbf_4SyncEL_EEENtNtNtB3p_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB5I_INtNtB4g_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2h_4body8incoming8IncomingEEINtB5K_10TracedBodyIBaC_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1B_DNtNtB19_5error5ErrorNtNtB19_6marker4SendNtBdb_4SyncEL_EEEENtNtNtB37_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB6d_INtNtB4L_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2M_4body8incoming8IncomingEEINtB6f_10TracedBodyIBb7_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB26_DNtNtB1E_5error5ErrorNtNtB1E_6marker4SendNtBdG_4SyncEL_EEEENtNtNtB3C_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB60_INtNtB4y_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB2z_4body8incoming8IncomingEEINtB62_10TracedBodyIBaU_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1T_DNtNtB1r_5error5ErrorNtNtB1r_6marker4SendNtBdt_4SyncEL_EEEENtNtNtB3p_2rt5tokio13TokioExecutorEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2d_12object_store14WalObjectStoreE0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2I_12object_store14WalObjectStoreE0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2v_12object_store14WalObjectStoreE0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2f_12object_store14WalObjectStoreE0s_0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2K_12object_store14WalObjectStoreE0s_0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB2x_12object_store14WalObjectStoreE0s_0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
end_hunk_0
