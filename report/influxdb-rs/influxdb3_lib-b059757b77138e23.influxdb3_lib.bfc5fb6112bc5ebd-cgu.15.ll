Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9162
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB3_7Decoder6decodeINtNtB5_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1u_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB5_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !703, !nonnull !13, !noundef !13
  invoke void %i.ly(ptr noundef %.sroa.4.sroa.2.0.copyload.i128.i, ptr noundef %.sroa.3.0.copyload.i124.i, i64 noundef 0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.fm, !noalias !702, !inline_history !0

bb.fi:                                            ; preds = %bb.fg
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i122.i, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !704, !nonnull !13, !noundef !13
  call void %i.ma(ptr noundef %.sroa.4.sroa.2.0.copyload.i128.i, ptr noundef %.sroa.3.0.copyload.i124.i, i64 noundef 0), !inline_history !440
  br label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

.noexc234:                                        ; preds = %bb.ff
  %i.mb = load i8, ptr %.sroa.3.0.copyload.i124.i, align 1, !noalias !702, !noundef !13
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i122.i, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !705, !nonnull !13, !noundef !13
  call void %i.md(ptr noundef %.sroa.4.sroa.2.0.copyload.i128.i, ptr noundef nonnull %.sroa.3.0.copyload.i124.i, i64 noundef %.sroa.4.sroa.0.0.copyload.i126.i), !inline_history !440
  %i.me = icmp eq i8 %i.mb, 10
  br i1 %i.me, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.noexc234
  %i.mf = load ptr, ptr %i.ai, align 8, !noundef !13
  %.not.i130.i = icmp eq ptr %i.mf, null
  br i1 %.not.i130.i, label %.loopexit.thread, label %.noexc236

.loopexit.thread:                                 ; preds = %bb.fj
  store i8 12, ptr %i.bk, align 8
  br label %bb.fp

bb.fk:                                            ; preds = %.noexc234
  %i.mg = call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 20)
  br label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

.noexc236:                                        ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !701
  store i8 10, ptr %i.a, align 1, !noalias !701
  call void @_RNvXs2_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !701
  %i.mh = load i64, ptr %i.bm, align 8, !alias.scope !700, !noalias !632, !noundef !13
  %.not33.i.i = icmp ult i64 %i.mh, %.sroa.023.0
  br i1 %.not33.i.i, label %.loopexit, label %bb.fl

bb.fl:                                            ; preds = %.noexc236
  %i.mi = call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31)
  br label %_RINvMs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decodeNtB6_12ChunkedState4stepINtNtB8_2io8BufferedINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1B_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtB8_6encode10EncodedBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.fm:                                            ; preds = %bb.fh
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !702
  unreachable

bb.fn:                                            ; preds = %.noexc232, %bb.fe
  %.sroa.106250.0 = phi ptr [ %.sroa.3.0.copyload.i124.i, %bb.fe ], [ undef, %.noexc232 ]
  %.sroa.0249.0 = phi i8 [ 1, %bb.fe ], [ 2, %.noexc232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !701
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
  %i.mk = load i64, ptr %i.aj, align 8, !noundef !13
  invoke void @_RNvNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16decode15decode_trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.mk)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.q

bb.fs:                                            ; preds = %bb.fq
  %i.mm = load i64, ptr %i.w, align 8, !range !22, !noundef !13
  %i.mn = icmp eq i64 %i.mm, -1
  br i1 %i.mn, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.mo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !nonnull !13, !noundef !13
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
  %i.mq = load i64, ptr %i.u, align 8, !range !14, !noundef !13
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
  %i.mt = load ptr, ptr %i.ms, align 8, !noundef !13
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.mv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !13, !noundef !13
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
  %.sroa.02.020 = phi i8 [ 0, %.lr.ph23 ], [ %.sroa.02.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
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
  %i.l = load i64, ptr %3, align 8, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  store i64 %2, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i64 %.sroa.0.018 to i32
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.not.a = icmp eq i32 %i.o, 31
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = shl nuw nsw i32 1, %i.o
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
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !708

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.t = icmp ugt i64 %.sroa.0.018, 7
  br i1 %i.t, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  tail call void @llvm.x86.sse2.pause(), !noalias !709
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.u = add nuw nsw i64 %.sroa.0.018, 1
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !709
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.018, %bb.g ], [ %i.u, %bb.f ]
  %.sroa.06.1 = phi i64 [ %.sroa.01.0.i, %bb.b ], [ %.sroa.06.019, %bb.g ], [ %.sroa.06.019, %bb.f ] ; 2 uses
  %.sroa.02.1 = phi i8 [ %.sroa.02.020, %bb.b ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.v = lshr i64 %.sroa.06.1, 51
  %.not = icmp ne i8 %.sroa.02.1, 0
  %i.w = icmp eq i64 %1, %i.v
  %or.cond.not = or i1 %.not, %i.w
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
  %.sroa.02.021 = phi i8 [ 0, %.lr.ph24 ], [ %.sroa.02.1, %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit ]
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
  %i.l = load atomic i64, ptr %3 monotonic, align 8, !noalias !715
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0.i.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.e ] ; 2 uses
  store i64 %.sroa.02.0.i.i, ptr %i.m, align 8, !noalias !715
  %i.n = cmpxchg ptr %3, i64 %.sroa.02.0.i.i, i64 %2 release monotonic, align 8, !noalias !715 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.n, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.n, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvXs_NtNtCs8Bp9JeovReN_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded9DataInnerECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.e

bb.f:                                             ; preds = %bb.c
  %i.o = trunc i64 %.sroa.0.019 to i32
  %i.p = and i32 %i.o, 31                         ; 2 uses
  %.not.a = icmp eq i32 %i.p, 31
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.q = shl nuw nsw i32 1, %i.p
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
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !714

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = icmp ugt i64 %.sroa.0.019, 7
  br i1 %i.u, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  tail call void @llvm.x86.sse2.pause(), !noalias !716
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.v = add nuw nsw i64 %.sroa.0.019, 1
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

bb.h:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !716
  br label %_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCs8Bp9JeovReN_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.h, %bb.g, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.019, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.06.1 = phi i64 [ %.sroa.01.0.i, %bb.b ], [ %.sroa.06.020, %bb.h ], [ %.sroa.06.020, %bb.g ] ; 2 uses
  %.sroa.02.1 = phi i8 [ %.sroa.02.021, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.w = lshr i64 %.sroa.06.1, 51
  %.not = icmp ne i8 %.sroa.02.1, 0
  %i.x = icmp eq i64 %1, %i.w
  %or.cond.not = or i1 %.not, %i.x
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
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
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB2j_7Catalog17new_with_shutdownINtNtB1F_4sync3ArceEE00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB2O_7Catalog17new_with_shutdownINtNtB2a_4sync3ArceEE00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB2B_7Catalog17new_with_shutdownINtNtB1X_4sync3ArceEE00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 16 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2k_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2P_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2C_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2k_27ProcessingEngineManagerImpl24replace_plugin_directory0s6_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2P_27ProcessingEngineManagerImpl24replace_plugin_directory0s6_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB2C_27ProcessingEngineManagerImpl24replace_plugin_directory0s6_00EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  br label %bb.d
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB7_13V1HttpHandler26handle_parameterized_query0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 4 uses
  %i.ayb = load i64, ptr %i.aya, align 8, !range !12, !alias.scope !7933, !noalias !7874, !noundef !13
  %i.ayc = icmp eq i64 %i.ayb, -1
  br i1 %i.ayc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit181.i, label %bb.qv

bb.qv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit175.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aya)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i unwind label %bb.qw, !noalias !7877

bb.qw:                                            ; preds = %bb.qv
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aya)
          to label %.body178.i unwind label %bb.qx, !noalias !7877

bb.qx:                                            ; preds = %bb.qw
  %i.aye = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i: ; preds = %bb.qv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aya)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit181.i unwind label %bb.qy, !noalias !7877

.body178.i:                                       ; preds = %.body212.i, %bb.ru, %bb.qy, %bb.qw
  %i.ayf = phi ptr [ %i.bbd, %.body212.i ], [ %i.avs, %bb.qw ], [ %i.ayk, %bb.qy ], [ %i.avf, %bb.ru ] ; 2 uses
  %i.ayg = phi ptr [ %i.bbe, %.body212.i ], [ %i.avt, %bb.qw ], [ %i.ayl, %bb.qy ], [ %i.avg, %bb.ru ] ; 2 uses
  %.pn82.i = phi { ptr, i32 } [ %.pn80.i, %.body212.i ], [ %i.ayd, %bb.qw ], [ %i.aym, %bb.qy ], [ %i.baw, %bb.ru ] ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 971
  %i.ayi = load i8, ptr %i.ayh, align 1, !range !20, !noalias !7874, !noundef !13
  %i.ayj = trunc nuw i8 %i.ayi to i1
  br i1 %i.ayj, label %bb.sl, label %.body189.i

bb.qy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i
  %i.ayk = phi ptr [ %i.avf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i ], [ %i.avs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i ]
  %i.ayl = phi ptr [ %i.avg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i ], [ %i.avt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i ]
  %i.aym = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit181.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i177.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit175.i
  %i.ayn = getelementptr inbounds nuw i8, ptr %1, i64 971 ; 2 uses
  %i.ayo = load i8, ptr %i.ayn, align 1, !range !20, !noalias !7874, !noundef !13
  %i.ayp = trunc nuw i8 %i.ayo to i1
  br i1 %i.ayp, label %bb.rc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i, %bb.rc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit181.i
  store i8 0, ptr %i.ayn, align 1, !noalias !7874
  %i.ayq = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  %i.ayr = load i64, ptr %i.ayq, align 8, !range !12, !alias.scope !7934, !noalias !7874, !noundef !13
  %i.ays = icmp eq i64 %i.ayr, -1
  br i1 %i.ays, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12, label %bb.qz

bb.qz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i unwind label %bb.ra, !noalias !7877

bb.ra:                                            ; preds = %bb.qz
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayq)
          to label %.body184.i unwind label %bb.rb, !noalias !7877

bb.rb:                                            ; preds = %bb.ra
  %i.ayu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i: ; preds = %bb.qz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12 unwind label %bb.ri, !noalias !7877

bb.rc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit181.i
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 4 uses
  %i.ayw = load i64, ptr %i.ayv, align 16, !range !12, !alias.scope !7935, !noalias !7874, !noundef !13
  %i.ayx = icmp eq i64 %i.ayw, -1
  br i1 %i.ayx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i unwind label %bb.re, !noalias !7877

bb.re:                                            ; preds = %bb.rd
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayv)
          to label %.body189.i unwind label %bb.rf, !noalias !7877

bb.rf:                                            ; preds = %bb.re
  %i.ayz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i: ; preds = %bb.rd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ayv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i unwind label %bb.rg, !noalias !7877

.body189.i:                                       ; preds = %bb.sl, %bb.sg, %bb.rg, %bb.re, %.body178.i
  %i.aza = phi ptr [ %i.ayf, %.body178.i ], [ %i.ayf, %bb.sl ], [ %i.avs, %bb.re ], [ %i.aze, %bb.rg ], [ %i.avf, %bb.sg ]
  %i.azb = phi ptr [ %i.ayg, %.body178.i ], [ %i.ayg, %bb.sl ], [ %i.avt, %bb.re ], [ %i.azf, %bb.rg ], [ %i.avg, %bb.sg ]
  %.pn84.i = phi { ptr, i32 } [ %.pn82.i, %.body178.i ], [ %.pn82.i, %bb.sl ], [ %i.ayy, %bb.re ], [ %i.azg, %bb.rg ], [ %i.bbt, %bb.sg ]
  %i.azc = getelementptr inbounds nuw i8, ptr %1, i64 971
  store i8 0, ptr %i.azc, align 1, !noalias !7874
  %i.azd = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.azd) #33
          to label %.body184.i unwind label %bb.pf, !noalias !7877

bb.rg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i
  %i.aze = phi ptr [ %i.avf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i ], [ %i.avs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i ]
  %i.azf = phi ptr [ %i.avg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i ], [ %i.avt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i188.i ]
  %i.azg = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

.body184.i:                                       ; preds = %bb.sc, %bb.ri, %.body189.i, %bb.ra
  %i.azh = phi ptr [ %i.aza, %.body189.i ], [ %i.avs, %bb.ra ], [ %i.azn, %bb.ri ], [ %i.avf, %bb.sc ] ; 2 uses
  %i.azi = phi ptr [ %i.azb, %.body189.i ], [ %i.avt, %bb.ra ], [ %i.azo, %bb.ri ], [ %i.avg, %bb.sc ] ; 2 uses
  %.pn86.i = phi { ptr, i32 } [ %.pn84.i, %.body189.i ], [ %i.ayt, %bb.ra ], [ %i.azp, %bb.ri ], [ %i.bbo, %bb.sc ] ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.azk = load i64, ptr %i.azj, align 16, !range !12, !alias.scope !7936, !noalias !7874, !noundef !13
  %i.azl = icmp eq i64 %i.azk, -1
  br i1 %i.azl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9, label %bb.rh

bb.rh:                                            ; preds = %.body184.i
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.azm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9 unwind label %bb.pf, !noalias !7877

bb.ri:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i
  %i.azn = phi ptr [ %i.avf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i ], [ %i.avs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i ]
  %i.azo = phi ptr [ %i.avg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i ], [ %i.avt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i ]
  %i.azp = landingpad { ptr, i32 }
          cleanup
  br label %.body184.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i183.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit192.i
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.azr = load i64, ptr %i.azq, align 16, !range !12, !alias.scope !7937, !noalias !7874, !noundef !13
  %i.azs = icmp eq i64 %i.azr, -1
  br i1 %i.azs, label %bb.sm, label %.invoke.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9: ; preds = %bb.rj, %bb.rh, %.body184.i
  %i.azt = phi ptr [ %i.bby, %bb.rj ], [ %i.azh, %bb.rh ], [ %i.azh, %.body184.i ]
  %i.azu = phi ptr [ %i.bbz, %bb.rj ], [ %i.azi, %bb.rh ], [ %i.azi, %.body184.i ]
  %.pn88.i = phi { ptr, i32 } [ %i.azv, %bb.rj ], [ %.pn86.i, %bb.rh ], [ %.pn86.i, %.body184.i ]
  store i8 2, ptr %i.azt, align 8, !noalias !7874
  br label %.body19

bb.rj:                                            ; preds = %.invoke.i
  %i.azv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9

bb.rk:                                            ; preds = %bb.qd
  %i.azw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.s) #33
          to label %.thread382.i unwind label %bb.pf, !noalias !7877

.critedge91.i:                                    ; preds = %switch.lookup95
  %i.azx = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

bb.rl:                                            ; preds = %.critedge91.i, %bb.qc
  %.pn42.pn.i = phi { ptr, i32 } [ %i.awl, %bb.qc ], [ %i.azx, %.critedge91.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7874
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awk) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %i.awj, ptr nonnull %i.awk) #33
          to label %bb.rm unwind label %bb.pf, !noalias !7877

bb.rm:                                            ; preds = %bb.og, %bb.pt, %bb.rn, %bb.rl, %.thread378.i, %.thread382.i
  %i.azy = phi ptr [ %i.avs, %.thread378.i ], [ %i.avs, %bb.rl ], [ %i.avs, %.thread382.i ], [ %i.avs, %bb.rn ], [ %i.avs, %bb.pt ], [ %i.apz, %bb.og ] ; 2 uses
  %i.azz = phi ptr [ %i.avt, %.thread378.i ], [ %i.avt, %bb.rl ], [ %i.avt, %.thread382.i ], [ %i.avt, %bb.rn ], [ %i.avt, %bb.pt ], [ %i.aqa, %bb.og ] ; 2 uses
  %.pn51.pn.pn.i = phi { ptr, i32 } [ %i.axc, %.thread378.i ], [ %.pn42.pn.i, %bb.rl ], [ %.pn45.pn.ph.i, %.thread382.i ], [ %i.bad, %bb.rn ], [ %i.avr, %bb.pt ], [ %i.aso, %bb.og ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7874
  %i.baa = getelementptr inbounds nuw i8, ptr %1, i64 974
  %i.bab = load i8, ptr %i.baa, align 2, !range !20, !noalias !7874, !noundef !13
  %i.bac = trunc nuw i8 %i.bab to i1
  br i1 %i.bac, label %bb.si, label %bb.om

bb.rn:                                            ; preds = %bb.qa, %bb.pw, %bb.pz, %bb.py
  %i.bad = landingpad { ptr, i32 }
          cleanup
  br label %bb.rm

bb.ro:                                            ; preds = %bb.py
  store i64 -1, ptr %i.p, align 8, !alias.scope !7919, !noalias !7874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7874
  br label %bb.ok

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 972 ; 2 uses
  %i.baf = load i8, ptr %i.bae, align 4, !range !20, !noalias !7874, !noundef !13
  %.not.i = icmp eq i8 %i.baf, 0
  %i.bag = load i64, ptr %i.ai, align 8, !range !12, !noalias !7874
  %3 = icmp eq i64 %i.bag, -1
  %or.cond386.not.i = select i1 %.not.i, i1 true, i1 %3
  br i1 %or.cond386.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit203.i, label %bb.rp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit203.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i199.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  store i8 0, ptr %i.bae, align 4, !noalias !7874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7874
  %i.bah = getelementptr inbounds nuw i8, ptr %1, i64 973 ; 2 uses
  %i.bai = load i8, ptr %i.bah, align 1, !range !20, !noalias !7874, !noundef !13
  %i.baj = trunc nuw i8 %i.bai to i1
  br i1 %i.baj, label %bb.rw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i

bb.rp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i199.i unwind label %bb.rq, !noalias !7877

bb.rq:                                            ; preds = %bb.rp
  %i.bak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body200.i unwind label %bb.rr, !noalias !7877

bb.rr:                                            ; preds = %bb.rq
  %i.bal = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i199.i: ; preds = %bb.rp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit203.i unwind label %bb.rs, !noalias !7877

.body200.i:                                       ; preds = %bb.sj, %bb.rs, %bb.rq, %.body136.i
  %i.bam = phi ptr [ %i.avm, %.body136.i ], [ %i.avm, %bb.sj ], [ %i.avf, %bb.rs ], [ %i.avf, %bb.rq ] ; 2 uses
  %i.ban = phi ptr [ %i.avn, %.body136.i ], [ %i.avn, %bb.sj ], [ %i.avg, %bb.rs ], [ %i.avg, %bb.rq ] ; 2 uses
  %.pn78.i = phi { ptr, i32 } [ %.pn76.i, %.body136.i ], [ %.pn76.i, %bb.sj ], [ %i.bas, %bb.rs ], [ %i.bak, %bb.rq ] ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %1, i64 972
  store i8 0, ptr %i.bao, align 4, !noalias !7874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7874
  %i.bap = getelementptr inbounds nuw i8, ptr %1, i64 973
  %i.baq = load i8, ptr %i.bap, align 1, !range !20, !noalias !7874, !noundef !13
  %i.bar = trunc nuw i8 %i.baq to i1
  br i1 %i.bar, label %bb.sk, label %.body212.i

bb.rs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i199.i
  %i.bas = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i211.i, %bb.rw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit203.i
  store i8 0, ptr %i.bah, align 1, !noalias !7874
  %i.bat = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 4 uses
  %i.bau = load i64, ptr %i.bat, align 8, !range !12, !alias.scope !7938, !noalias !7874, !noundef !13
  %i.bav = icmp eq i64 %i.bau, -1
  br i1 %i.bav, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit209.i, label %bb.rt

bb.rt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bat)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i unwind label %bb.ru, !noalias !7877

bb.ru:                                            ; preds = %bb.rt
  %i.baw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bat)
          to label %.body178.i unwind label %bb.rv, !noalias !7877

bb.rv:                                            ; preds = %bb.ru
  %i.bax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i: ; preds = %bb.rt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bat)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit209.i unwind label %bb.qy, !noalias !7877

bb.rw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit203.i
  %i.bay = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 4 uses
  %i.baz = load i64, ptr %i.bay, align 16, !range !12, !alias.scope !7939, !noalias !7874, !noundef !13
  %i.bba = icmp eq i64 %i.baz, -1
  br i1 %i.bba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bay)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i211.i unwind label %bb.ry, !noalias !7877

bb.ry:                                            ; preds = %bb.rx
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bay)
          to label %.body212.i unwind label %bb.rz, !noalias !7877

bb.rz:                                            ; preds = %bb.ry
  %i.bbc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i211.i: ; preds = %bb.rx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bay)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i unwind label %bb.sa, !noalias !7877

.body212.i:                                       ; preds = %bb.sk, %bb.sa, %bb.ry, %.body200.i
  %i.bbd = phi ptr [ %i.bam, %.body200.i ], [ %i.bam, %bb.sk ], [ %i.avf, %bb.sa ], [ %i.avf, %bb.ry ]
  %i.bbe = phi ptr [ %i.ban, %.body200.i ], [ %i.ban, %bb.sk ], [ %i.avg, %bb.sa ], [ %i.avg, %bb.ry ]
  %.pn80.i = phi { ptr, i32 } [ %.pn78.i, %.body200.i ], [ %.pn78.i, %bb.sk ], [ %i.bbh, %bb.sa ], [ %i.bbb, %bb.ry ]
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 973
  store i8 0, ptr %i.bbf, align 1, !noalias !7874
  %i.bbg = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.bbg) #33
          to label %.body178.i unwind label %bb.pf, !noalias !7877

bb.sa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i211.i
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  br label %.body212.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit209.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i205.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit215.i
  %i.bbi = getelementptr inbounds nuw i8, ptr %1, i64 971 ; 2 uses
  %i.bbj = load i8, ptr %i.bbi, align 1, !range !20, !noalias !7874, !noundef !13
  %i.bbk = trunc nuw i8 %i.bbj to i1
  br i1 %i.bbk, label %bb.se, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i, %bb.se, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit209.i
  store i8 0, ptr %i.bbi, align 1, !noalias !7874
  %i.bbl = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  %i.bbm = load i64, ptr %i.bbl, align 8, !range !12, !alias.scope !7940, !noalias !7874, !noundef !13
  %i.bbn = icmp eq i64 %i.bbm, -1
  br i1 %i.bbn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i, label %bb.sb

bb.sb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i unwind label %bb.sc, !noalias !7877

bb.sc:                                            ; preds = %bb.sb
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbl)
          to label %.body184.i unwind label %bb.sd, !noalias !7877

bb.sd:                                            ; preds = %bb.sc
  %i.bbp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i: ; preds = %bb.sb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i unwind label %bb.ri, !noalias !7877

bb.se:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit209.i
  %i.bbq = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 4 uses
  %i.bbr = load i64, ptr %i.bbq, align 16, !range !12, !alias.scope !7941, !noalias !7874, !noundef !13
  %i.bbs = icmp eq i64 %i.bbr, -1
  br i1 %i.bbs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i unwind label %bb.sg, !noalias !7877

bb.sg:                                            ; preds = %bb.sf
  %i.bbt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbq)
          to label %.body189.i unwind label %bb.sh, !noalias !7877

bb.sh:                                            ; preds = %bb.sg
  %i.bbu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !7877
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i223.i: ; preds = %bb.sf
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bbq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i unwind label %bb.rg, !noalias !7877

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i217.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit227.i
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.bbw = load i64, ptr %i.bbv, align 16, !range !12, !alias.scope !7942, !noalias !7874, !noundef !13
  %i.bbx = icmp eq i64 %i.bbw, -1
  br i1 %i.bbx, label %bb.sm, label %.invoke.i

.invoke.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12
  %i.bby = phi ptr [ %i.avf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i ], [ %i.avs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12 ] ; 2 uses
  %i.bbz = phi ptr [ %i.avg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit221.i ], [ %i.avt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i12 ] ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.bca)
          to label %bb.sm unwind label %bb.rj, !noalias !7877

bb.si:                                            ; preds = %bb.rm
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB1j_13V1HttpHandler13execute_query0s2_00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aa) #33
          to label %bb.om unwind label %bb.pf, !noalias !7877

bb.sj:                                            ; preds = %.body136.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #33
          to label %.body200.i unwind label %bb.pf, !noalias !7877

bb.sk:                                            ; preds = %.body200.i
  %i.bcb = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.bcb) #33
          to label %.body212.i unwind label %bb.pf, !noalias !7877

bb.sl:                                            ; preds = %.body178.i
end_hunk_1
begin_hunk_2_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a

bb.agj:                                           ; preds = %bb.agi, %bb.agh
  %i.enq = landingpad { ptr, i32 }
          cleanup
  br label %bb.agp

bb.agk:                                           ; preds = %bb.agi
  br i1 %i.enp, label %bb.agm, label %bb.agl

bb.agl:                                           ; preds = %bb.ago, %bb.agk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahv), !noalias !12556
  br label %bb.agt

bb.agm:                                           ; preds = %bb.agk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahu), !noalias !12556
  %i.enr = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi9query_sql010___CALLSITE, align 8, !noalias !12556, !nonnull !13, !align !18, !noundef !13
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aht), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahs), !noalias !12556
  store ptr @320, ptr %i.ahs, align 8, !noalias !12556
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.ent, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahr), !noalias !12556
  store ptr %i.emq, ptr %i.ahr, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahq), !noalias !12556
  store ptr %i.emr, ptr %i.ahq, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahp), !noalias !12556
  store ptr %i.ems, ptr %i.ahp, align 8, !noalias !12556
  store ptr %i.ahs, ptr %i.aht, align 8, !noalias !12556
  %i.enu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store ptr @54, ptr %i.enu, align 8, !noalias !12556
  %i.env = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  store ptr %i.ahr, ptr %i.env, align 8, !noalias !12556
  %i.enw = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  store ptr @268, ptr %i.enw, align 8, !noalias !12556
  %i.enx = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  store ptr %i.ahq, ptr %i.enx, align 8, !noalias !12556
  %i.eny = getelementptr inbounds nuw i8, ptr %i.aht, i64 40
  store ptr @268, ptr %i.eny, align 8, !noalias !12556
  %i.enz = getelementptr inbounds nuw i8, ptr %i.aht, i64 48
  store ptr %i.ahp, ptr %i.enz, align 8, !noalias !12556
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.aht, i64 56
  store ptr @269, ptr %i.eoa, align 8, !noalias !12556
  store i64 1, ptr %i.ahu, align 8, !alias.scope !12581, !noalias !12556
  %.sroa.4.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store ptr %i.aht, ptr %.sroa.4.0..sroa_idx.i82.i, align 8, !alias.scope !12581, !noalias !12556
  %.sroa.5.0..sroa_idx.i83.i = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i83.i, align 8, !alias.scope !12581, !noalias !12556
  %i.eob = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  store ptr %i.ens, ptr %i.eob, align 8, !alias.scope !12581, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahg), !noalias !12556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahg, ptr noundef nonnull align 8 dereferenceable(24) %i.ahv, i64 24, i1 false), !noalias !12556
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.enh, ptr noundef nonnull %i.enl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.enm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ahg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ahu)
          to label %bb.ago unwind label %bb.agn, !noalias !12557

bb.agn:                                           ; preds = %bb.agm
  %i.eoc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahp), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahq), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahr), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahs), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aht), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahu), !noalias !12556
  br label %bb.agp

bb.ago:                                           ; preds = %bb.agm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahg), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahp), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahq), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahr), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahs), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aht), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahu), !noalias !12556
  br label %bb.agl

bb.agp:                                           ; preds = %bb.agn, %bb.agj
  %.pn10.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.eoc, %bb.agn ], [ %i.enq, %bb.agj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahv), !noalias !12556
  br label %bb.agw

bb.agq:                                           ; preds = %bb.age
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aib), !noalias !12556
  %i.eod = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi9query_sql010___CALLSITE, align 8, !noalias !12556, !nonnull !13, !align !18, !noundef !13
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eod, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aia), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahz), !noalias !12556
  store ptr @320, ptr %i.ahz, align 8, !noalias !12556
  %i.eof = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.eof, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahy), !noalias !12556
  store ptr %i.emq, ptr %i.ahy, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahx), !noalias !12556
  store ptr %i.emr, ptr %i.ahx, align 8, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahw), !noalias !12556
  store ptr %i.ems, ptr %i.ahw, align 8, !noalias !12556
  store ptr %i.ahz, ptr %i.aia, align 8, !noalias !12556
  %i.eog = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  store ptr @54, ptr %i.eog, align 8, !noalias !12556
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  store ptr %i.ahy, ptr %i.eoh, align 8, !noalias !12556
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.aia, i64 24
  store ptr @268, ptr %i.eoi, align 8, !noalias !12556
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.aia, i64 32
  store ptr %i.ahx, ptr %i.eoj, align 8, !noalias !12556
  %i.eok = getelementptr inbounds nuw i8, ptr %i.aia, i64 40
  store ptr @268, ptr %i.eok, align 8, !noalias !12556
  %i.eol = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  store ptr %i.ahw, ptr %i.eol, align 8, !noalias !12556
  %i.eom = getelementptr inbounds nuw i8, ptr %i.aia, i64 56
  store ptr @269, ptr %i.eom, align 8, !noalias !12556
  store i64 1, ptr %i.aib, align 8, !noalias !12556
  %.sroa.9185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store ptr %i.aia, ptr %.sroa.9185.0..sroa_idx.i, align 8, !noalias !12556
  %.sroa.10186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  store i64 4, ptr %.sroa.10186.0..sroa_idx.i, align 8, !noalias !12556
  %.sroa.11187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aib, i64 24
  store ptr %i.eoe, ptr %.sroa.11187.0..sroa_idx.i, align 8, !noalias !12556
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi9query_sql00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aib)
          to label %bb.ags unwind label %bb.agr, !noalias !12557

bb.agr:                                           ; preds = %bb.agq
  %i.eon = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aib), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahw), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahx), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahy), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahz), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aia), !noalias !12556
  br label %bb.agw

bb.ags:                                           ; preds = %bb.agq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aib), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahw), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahx), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahy), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahz), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aia), !noalias !12556
  br label %bb.agt

bb.agt:                                           ; preds = %bb.ags, %bb.agl, %bb.agg, %bb.agf
  %i.eoo = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.eop = load ptr, ptr %i.eoo, align 8, !noalias !12556, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.eop, i64 128
  %.val69.i = load ptr, ptr %i.eoq, align 8, !noalias !12557, !nonnull !13, !noundef !13
  %i.eor = getelementptr i8, ptr %i.eop, i64 136
  %.val70.i = load ptr, ptr %i.eor, align 8, !noalias !12557, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.eos = getelementptr inbounds nuw i8, ptr %.val70.i, i64 16
  %i.eot = load i64, ptr %i.eos, align 8, !range !25, !invariant.load !13, !noalias !12557
  %i.eou = add nsw i64 %i.eot, -1
  %i.eov = and i64 %i.eou, -16
  %i.eow = getelementptr inbounds nuw i8, ptr %.val69.i, i64 %i.eov
  %i.eox = getelementptr inbounds nuw i8, ptr %i.eow, i64 16
  %.val67.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !12556, !nonnull !13, !noundef !13
  %.val68.i = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 16, !noalias !12556, !noundef !13
  %.val65.i = load ptr, ptr %.sroa.0.sroa.7.24..sroa_idx.i, align 16, !noalias !12556, !nonnull !13, !noundef !13
  %.val66.i = load i64, ptr %.sroa.0.sroa.8.24..sroa_idx.i, align 8, !noalias !12556, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aho), !noalias !12556
  store i8 0, ptr %i.emt, align 1, !noalias !12556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aho, ptr noundef nonnull align 8 dereferenceable(48) %i.aic, i64 48, i1 false), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahn), !noalias !12556
  %i.eoy = getelementptr inbounds nuw i8, ptr %1, i64 1234
  store i8 0, ptr %i.eoy, align 2, !noalias !12556
  %i.eoz = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ahn, ptr noundef nonnull align 16 dereferenceable(80) %i.eoz, i64 80, i1 false), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahm), !noalias !12556
  %i.epa = getelementptr inbounds nuw i8, ptr %i.ahm, i64 48
  store i64 -1, ptr %i.epa, align 16, !noalias !12556
  %i.epb = getelementptr inbounds nuw i8, ptr %.val70.i, i64 72
  %i.epc = load ptr, ptr %i.epb, align 8, !invariant.load !13, !noalias !12557, !nonnull !13
  %i.epd = invoke { ptr, ptr } %i.epc(ptr noundef nonnull %i.eox, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val67.i, i64 noundef %.val68.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val65.i, i64 noundef %.val66.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aho, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(80) %i.ahn, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(80) %i.ahm)
          to label %bb.agv unwind label %bb.agu, !noalias !12557 ; 2 uses

bb.agu:                                           ; preds = %bb.agt
  %i.epe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahm), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahn), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aho), !noalias !12556
  br label %.body87.i

bb.agv:                                           ; preds = %bb.agt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahm), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahn), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aho), !noalias !12556
  %i.epf = extractvalue { ptr, ptr } %i.epd, 0
  %i.epg = extractvalue { ptr, ptr } %i.epd, 1
  store ptr %i.epf, ptr %i.emo, align 8, !noalias !12556
  %i.eph = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.epg, ptr %i.eph, align 16, !noalias !12556
  br label %bb.aha

bb.agw:                                           ; preds = %.body87.i, %bb.agr, %bb.agp, %bb.agc
  %i.epi = phi ptr [ %i.erq, %.body87.i ], [ %i.eml, %bb.agr ], [ %i.eml, %bb.agp ], [ %i.eml, %bb.agc ]
  %i.epj = phi ptr [ %i.err, %.body87.i ], [ %i.emm, %bb.agr ], [ %i.emm, %bb.agp ], [ %i.emm, %bb.agc ]
  %i.epk = phi ptr [ %.pre336.i, %.body87.i ], [ %i.emv, %bb.agr ], [ %i.emv, %bb.agp ], [ %i.emv, %bb.agc ]
  %.pn37.pn.pn.i = phi { ptr, i32 } [ %.pn37.pn.i, %.body87.i ], [ %i.eon, %bb.agr ], [ %.pn10.pn.pn.pn.pn.pn.i, %bb.agp ], [ %i.ena, %bb.agc ]
  %i.epl = getelementptr inbounds nuw i8, ptr %1, i64 1237 ; 2 uses
  %i.epm = load i8, ptr %i.epl, align 1, !range !20, !noalias !12556, !noundef !13
  %.not333.i = icmp eq i8 %i.epm, 0
  %3 = icmp eq ptr %i.epk, null
  %or.cond.not.i = select i1 %.not333.i, i1 true, i1 %3
  br i1 %or.cond.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.aiy

bb.agx:                                           ; preds = %bb.afy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.23.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12162.sroa.3.i, i64 32, i1 false), !noalias !12556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.25.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16166.i, i64 7, i1 false), !noalias !12556
  %.sroa.10255.sroa.0.0.extract.trunc275.i = trunc i32 %.sroa.16.2.i.i to i8
  %.sroa.10255.sroa.6.0.extract.shift278.i = lshr i32 %.sroa.16.2.i.i, 8
  %.sroa.10255.sroa.6.0.extract.trunc279.i = trunc i32 %.sroa.10255.sroa.6.0.extract.shift278.i to i8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit120.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit120.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i, %bb.agx
  %i.epn = phi ptr [ %i.eml, %bb.agx ], [ %i.erj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ] ; 2 uses
  %i.epo = phi ptr [ %i.emm, %bb.agx ], [ %i.erk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ] ; 2 uses
  %.sroa.24.0.i = phi i8 [ %.sroa.31.2.i.i, %bb.agx ], [ %.sroa.24.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.22.0.i822 = phi i64 [ %.sroa.30.sroa.0.2.i.i, %bb.agx ], [ %.sroa.22.1.i818, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.21.0.i823 = phi ptr [ %.sroa.29.2.i.i, %bb.agx ], [ %.sroa.21.1.i819, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.19.0.i824 = phi i64 [ %.sroa.27.2.i.i, %bb.agx ], [ %.sroa.19.1.i820, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.17261.0.i = phi i64 [ %.sroa.24.2.i.i, %bb.agx ], [ %.sroa.17261.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.15258.0.i = phi ptr [ %.sroa.19.2.i.i, %bb.agx ], [ %.sroa.15258.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.6252.0.i = phi i32 [ %.sroa.9147.2.i.i, %bb.agx ], [ %.sroa.6252.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.10255.sroa.0.0.i = phi i8 [ %.sroa.10255.sroa.0.0.extract.trunc275.i, %bb.agx ], [ %.sroa.10255.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.10255.sroa.6.0.i = phi i8 [ %.sroa.10255.sroa.6.0.extract.trunc279.i, %bb.agx ], [ %.sroa.10255.sroa.6.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.10255.sroa.7.0.i = phi i32 [ %.sroa.16.2.i.i, %bb.agx ], [ %.sroa.10255.sroa.7.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %.sroa.23.sroa.0.0.i = phi i64 [ %.sroa.30.sroa.5.i.sroa.0.1.i, %bb.agx ], [ %.sroa.23.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i116.i ]
  %i.epp = getelementptr inbounds nuw i8, ptr %1, i64 1234 ; 2 uses
  %i.epq = load i8, ptr %i.epp, align 2, !range !20, !noalias !12556, !noundef !13
  %i.epr = trunc nuw i8 %i.epq to i1
  br i1 %i.epr, label %bb.ait, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.agy:                                           ; preds = %bb.ajc, %bb.aja, %bb.aiy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.aix, %bb.aiw, %.body94.i, %bb.ahw, %bb.ahr, %bb.agz, %.body.i839
  %i.eps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12557
  unreachable

.body108.i:                                       ; preds = %.body.i839, %bb.air, %bb.aij, %bb.aih, %.body94.i
  %i.ept = phi ptr [ %i.erj, %bb.air ], [ %i.esr, %.body94.i ], [ %i.eru, %bb.aih ], [ %i.eta, %bb.aij ], [ %i.ehv, %.body.i839 ] ; 3 uses
  %i.epu = phi ptr [ %i.erk, %bb.air ], [ %i.ess, %.body94.i ], [ %i.erv, %bb.aih ], [ %i.etb, %bb.aij ], [ %i.ehw, %.body.i839 ] ; 3 uses
  %.pn43.pn.i = phi { ptr, i32 } [ %i.eto, %bb.air ], [ %.pn41.i, %.body94.i ], [ %i.esy, %bb.aih ], [ %i.etc, %bb.aij ], [ %eh.lpad-body.i840, %.body.i839 ] ; 3 uses
  %i.epv = getelementptr inbounds nuw i8, ptr %1, i64 1234
  %i.epw = load i8, ptr %i.epv, align 2, !range !20, !noalias !12556, !noundef !13
  %i.epx = trunc nuw i8 %i.epw to i1
  br i1 %i.epx, label %bb.aiz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit124.i

bb.agz:                                           ; preds = %bb.aha
  %i.epy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahl), !noalias !12556
  %.val54.i = load ptr, ptr %i.eqc, align 8, !noalias !12556
  %i.epz = getelementptr i8, ptr %1, i64 1248
  %.val55.i = load ptr, ptr %i.epz, align 16, !noalias !12556, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val54.i, ptr nonnull %.val55.i) #33
          to label %.body87.i unwind label %bb.agy, !noalias !12557

bb.aha:                                           ; preds = %bb.agv, %bb.adp
  %i.eqa = phi ptr [ %i.egz, %bb.adp ], [ %i.eml, %bb.agv ] ; 7 uses
  %i.eqb = phi ptr [ %i.egy, %bb.adp ], [ %i.emm, %bb.agv ] ; 6 uses
  %.pre336340.i = phi ptr [ undef, %bb.adp ], [ %i.emv, %bb.agv ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahl), !noalias !12556
  %i.eqc = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBG_IBW_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB1P_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5t_EL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ahl, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eqc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ahb unwind label %bb.agz, !noalias !12557

bb.ahb:                                           ; preds = %bb.aha
  %i.eqd = load i64, ptr %i.ahl, align 8, !range !12582, !noalias !12556, !noundef !13 ; 3 uses
  %i.eqe = icmp eq i64 %i.eqd, -2
  br i1 %i.eqe, label %bb.ahc, label %bb.ahd

bb.ahc:                                           ; preds = %bb.ahb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahl), !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aic), !noalias !12556
  br label %bb.ajd

bb.ahd:                                           ; preds = %bb.ahb
  %.sroa.3207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %.sroa.3207.0.copyload.i = load ptr, ptr %.sroa.3207.0..sroa_idx.i, align 8, !noalias !12556 ; 5 uses
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %.sroa.5208.0.copyload.i = load ptr, ptr %.sroa.5208.0..sroa_idx.i, align 8, !noalias !12556 ; 5 uses
  %.sroa.7209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24
  %.sroa.7209.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7209.0..sroa_idx.i, align 8, !noalias !12556
  %.sroa.7209.sroa.2.0..sroa.7209.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %.sroa.7209.sroa.2.0.copyload.i = load i64, ptr %.sroa.7209.sroa.2.0..sroa.7209.0..sroa_idx.sroa_idx.i, align 8, !noalias !12556
  %.sroa.7209.sroa.3.0..sroa.7209.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 40
  %.sroa.7209.sroa.3.0.copyload.i = load i64, ptr %.sroa.7209.sroa.3.0..sroa.7209.0..sroa_idx.sroa_idx.i, align 8, !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahl), !noalias !12556
  %.val.i834 = load ptr, ptr %i.eqc, align 8, !noalias !12556 ; 5 uses
  %i.eqf = getelementptr i8, ptr %1, i64 1248
  %.val53.i = load ptr, ptr %i.eqf, align 16, !noalias !12556, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.eqg = load ptr, ptr %.val53.i, align 8, !invariant.load !13, !noalias !12557 ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.eqg, null
  br i1 %.not.i.i86.i, label %bb.ahf, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i834) ]
  invoke void %i.eqg(ptr noundef nonnull %.val.i834)
          to label %bb.ahf unwind label %bb.ahh, !noalias !12557

bb.ahf:                                           ; preds = %bb.ahe, %bb.ahd
  %i.eqh = getelementptr inbounds nuw i8, ptr %.val53.i, i64 8
  %i.eqi = load i64, ptr %i.eqh, align 8, !range !24, !invariant.load !13, !noalias !12557 ; 2 uses
  %i.eqj = icmp eq i64 %i.eqi, 0
  br i1 %i.eqj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.eqk = getelementptr inbounds nuw i8, ptr %.val53.i, i64 16
  %i.eql = load i64, ptr %i.eqk, align 8, !range !25, !invariant.load !13, !noalias !12557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i834) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i834, i64 noundef range(i64 1, 0) %i.eqi, i64 noundef range(i64 1, 536870913) %i.eql) #28, !noalias !12557
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ahh:                                           ; preds = %bb.ahe
  %i.eqm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eqn = getelementptr inbounds nuw i8, ptr %.val53.i, i64 8
  %i.eqo = load i64, ptr %i.eqn, align 8, !range !24, !invariant.load !13, !noalias !12557 ; 2 uses
  %i.eqp = icmp eq i64 %i.eqo, 0
  br i1 %i.eqp, label %.body87.i, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  %i.eqq = getelementptr inbounds nuw i8, ptr %.val53.i, i64 16
  %i.eqr = load i64, ptr %i.eqq, align 8, !range !25, !invariant.load !13, !noalias !12557
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i834, i64 noundef range(i64 1, 0) %i.eqo, i64 noundef range(i64 1, 536870913) %i.eqr) #28, !noalias !12557
  br label %.body87.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ahg, %bb.ahf
  %.not.i89.i = icmp eq i64 %i.eqd, -1
  br i1 %.not.i89.i, label %bb.ahj, label %bb.ahn

bb.ahj:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3207.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5208.0.copyload.i) ]
  %i.eqs = getelementptr inbounds nuw i8, ptr %1, i64 1236 ; 2 uses
  store i8 1, ptr %i.eqs, align 4, !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahk), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahj), !noalias !12556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahi), !noalias !12556
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ahi)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i836 unwind label %bb.ahk, !noalias !12557

bb.ahk:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i836, %bb.ahj
  %i.eqt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahi), !noalias !12556
  br label %bb.ahm

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i836: ; preds = %bb.ahj
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ahj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ahi, i16 noundef 200)
          to label %switch.lookup unwind label %bb.ahk, !noalias !12557

switch.lookup:                                    ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahi), !noalias !12556
  %i.equ = getelementptr inbounds nuw i8, ptr %1, i64 1233 ; 2 uses
  %.val71.i = load i8, ptr %i.equ, align 1, !range !39, !noalias !12556, !noundef !13 ; 2 uses
  %i.eqv = zext nneg i8 %.val71.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib.729, i64 %i.eqv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.eqw = zext nneg i8 %.val71.i to i64
  %switch.gep8705 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib.730, i64 %i.eqw
  %switch.load8706 = load ptr, ptr %switch.gep8705, align 8
  %i.eqx = getelementptr inbounds nuw i8, ptr %1, i64 1648
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameReECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.eqx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ahj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) @141, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load8706, i64 noundef %switch.ext)
          to label %bb.ahl unwind label %.critedge51.i, !noalias !12557

bb.ahl:                                           ; preds = %switch.lookup
  %i.eqy = getelementptr inbounds nuw i8, ptr %1, i64 1235
  store i8 1, ptr %i.eqy, align 1, !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahj), !noalias !12556
  store i8 0, ptr %i.eqs, align 4, !noalias !12556
  %i.eqz = load i8, ptr %i.equ, align 1, !range !39, !noalias !12556, !noundef !13
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store ptr %.sroa.3207.0.copyload.i, ptr %.sroa.8234.0..sroa_idx.i, align 8, !noalias !12556
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store ptr %.sroa.5208.0.copyload.i, ptr %.sroa.9235.0..sroa_idx.i, align 16, !noalias !12556
  %.sroa.11237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1277
  store i8 0, ptr %.sroa.11237.0..sroa_idx.i, align 1, !noalias !12556
  %.sroa.12238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1278
  store i8 %i.eqz, ptr %.sroa.12238.0..sroa_idx.i, align 2, !noalias !12556
  br label %bb.ahs

.critedge51.i:                                    ; preds = %switch.lookup
  %i.era = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahm

bb.ahm:                                           ; preds = %.critedge51.i, %bb.ahk
  %.pn23.pn.i835 = phi { ptr, i32 } [ %i.eqt, %bb.ahk ], [ %i.era, %.critedge51.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahj), !noalias !12556
  br label %.body113.i

.body113.i:                                       ; preds = %bb.ahw, %bb.aia, %bb.aim, %bb.aip, %bb.aiw, %bb.ahm
  %i.erb = phi ptr [ %i.eqa, %bb.ahm ], [ %i.eru, %bb.aiw ], [ %i.eru, %bb.aip ], [ %i.eru, %bb.aim ], [ %i.eru, %bb.aia ], [ %i.eru, %bb.ahw ] ; 2 uses
  %i.erc = phi ptr [ %i.eqb, %bb.ahm ], [ %i.erv, %bb.aiw ], [ %i.erv, %bb.aip ], [ %i.erv, %bb.aim ], [ %i.erv, %bb.aia ], [ %i.erv, %bb.ahw ] ; 2 uses
  %.pre336338.i = phi ptr [ %.pre336340.i, %bb.ahm ], [ %.pre336339.i, %bb.aiw ], [ %.pre336339.i, %bb.aip ], [ %.pre336339.i, %bb.aim ], [ %.pre336339.i, %bb.aia ], [ %.pre336339.i, %bb.ahw ]
  %.sroa.11195.1.i = phi ptr [ %.sroa.5208.0.copyload.i, %bb.ahm ], [ %.sroa.11195.0.i, %bb.aiw ], [ %.sroa.11195.0.i, %bb.aip ], [ %.sroa.11195.0.i, %bb.aim ], [ %.sroa.11195.0.i, %bb.aia ], [ %.sroa.11195.0.i, %bb.ahw ] ; 2 uses
  %.sroa.0194.1.i = phi ptr [ %.sroa.3207.0.copyload.i, %bb.ahm ], [ %.sroa.0194.0.i, %bb.aiw ], [ %.sroa.0194.0.i, %bb.aip ], [ %.sroa.0194.0.i, %bb.aim ], [ %.sroa.0194.0.i, %bb.aia ], [ %.sroa.0194.0.i, %bb.ahw ]
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %.pn23.pn.i835, %bb.ahm ], [ %i.esd, %bb.aiw ], [ %i.etk, %bb.aip ], [ %i.etg, %bb.aim ], [ %i.esd, %bb.aia ], [ %.pn28.i816, %bb.ahw ] ; 2 uses
  %i.erd = getelementptr inbounds nuw i8, ptr %1, i64 1235
  store i8 0, ptr %i.erd, align 1, !noalias !12556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ahk), !noalias !12556
  %i.ere = getelementptr inbounds nuw i8, ptr %1, i64 1236
end_hunk_2
begin_hunk_3_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a

bb.alz:                                           ; preds = %bb.aly
  %i.fbc = extractvalue { ptr, ptr } %i.fbb, 0    ; 2 uses
  %i.fbd = extractvalue { ptr, ptr } %i.fbb, 1    ; 2 uses
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.fbd, i64 24
  %i.fbf = load ptr, ptr %i.fbe, align 8, !invariant.load !13, !noalias !12592, !nonnull !13
  %i.fbg = invoke noundef zeroext i1 %i.fbf(ptr noundef %i.fbc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agq)
          to label %bb.amb unwind label %bb.ama, !noalias !12592

bb.ama:                                           ; preds = %bb.alz, %bb.aly
  %i.fbh = landingpad { ptr, i32 }
          cleanup
  br label %bb.amg

bb.amb:                                           ; preds = %bb.alz
  br i1 %i.fbg, label %bb.amd, label %bb.amc

bb.amc:                                           ; preds = %bb.amf, %bb.amb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agq), !noalias !12591
  br label %.thread428.i

bb.amd:                                           ; preds = %bb.amb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agp), !noalias !12591
  %i.fbi = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi14query_influxql010___CALLSITE, align 8, !noalias !12591, !nonnull !13, !align !18, !noundef !13
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.fbi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ago), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agn), !noalias !12591
  store ptr @266, ptr %i.agn, align 8, !noalias !12591
  %i.fbk = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.fbk, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agm), !noalias !12591
  store ptr %i.fai, ptr %i.agm, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agl), !noalias !12591
  store ptr %i.faj, ptr %i.agl, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agk), !noalias !12591
  store ptr %i.fak, ptr %i.agk, align 8, !noalias !12591
  store ptr %i.agn, ptr %i.ago, align 8, !noalias !12591
  %i.fbl = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  store ptr @54, ptr %i.fbl, align 8, !noalias !12591
  %i.fbm = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  store ptr %i.agm, ptr %i.fbm, align 8, !noalias !12591
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.ago, i64 24
  store ptr @267, ptr %i.fbn, align 8, !noalias !12591
  %i.fbo = getelementptr inbounds nuw i8, ptr %i.ago, i64 32
  store ptr %i.agl, ptr %i.fbo, align 8, !noalias !12591
  %i.fbp = getelementptr inbounds nuw i8, ptr %i.ago, i64 40
  store ptr @268, ptr %i.fbp, align 8, !noalias !12591
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  store ptr %i.agk, ptr %i.fbq, align 8, !noalias !12591
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.ago, i64 56
  store ptr @269, ptr %i.fbr, align 8, !noalias !12591
  store i64 1, ptr %i.agp, align 8, !alias.scope !12615, !noalias !12591
  %.sroa.4.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  store ptr %i.ago, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !alias.scope !12615, !noalias !12591
  %.sroa.5.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i80.i, align 8, !alias.scope !12615, !noalias !12591
  %i.fbs = getelementptr inbounds nuw i8, ptr %i.agp, i64 24
  store ptr %i.fbj, ptr %i.fbs, align 8, !alias.scope !12615, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.age), !noalias !12591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull align 8 dereferenceable(24) %i.agq, i64 24, i1 false), !noalias !12591
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fay, ptr noundef nonnull %i.fbc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fbd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.age, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.agp)
          to label %bb.amf unwind label %bb.ame, !noalias !12592

bb.ame:                                           ; preds = %bb.amd
  %i.fbt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agk), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agl), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agm), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agn), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ago), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agp), !noalias !12591
  br label %bb.amg

bb.amf:                                           ; preds = %bb.amd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.age), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agk), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agl), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agm), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agn), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ago), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agp), !noalias !12591
  br label %bb.amc

bb.amg:                                           ; preds = %bb.ame, %bb.ama
  %.pn11.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fbt, %bb.ame ], [ %i.fbh, %bb.ama ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agq), !noalias !12591
  br label %bb.amm

bb.amh:                                           ; preds = %bb.alv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agw), !noalias !12591
  %i.fbu = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi14query_influxql010___CALLSITE, align 8, !noalias !12591, !nonnull !13, !align !18, !noundef !13
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.fbu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agv), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agu), !noalias !12591
  store ptr @266, ptr %i.agu, align 8, !noalias !12591
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.fbw, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agt), !noalias !12591
  store ptr %i.fai, ptr %i.agt, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ags), !noalias !12591
  store ptr %i.faj, ptr %i.ags, align 8, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agr), !noalias !12591
  store ptr %i.fak, ptr %i.agr, align 8, !noalias !12591
  store ptr %i.agu, ptr %i.agv, align 8, !noalias !12591
  %i.fbx = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store ptr @54, ptr %i.fbx, align 8, !noalias !12591
  %i.fby = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  store ptr %i.agt, ptr %i.fby, align 8, !noalias !12591
  %i.fbz = getelementptr inbounds nuw i8, ptr %i.agv, i64 24
  store ptr @267, ptr %i.fbz, align 8, !noalias !12591
  %i.fca = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  store ptr %i.ags, ptr %i.fca, align 8, !noalias !12591
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.agv, i64 40
  store ptr @268, ptr %i.fcb, align 8, !noalias !12591
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.agv, i64 48
  store ptr %i.agr, ptr %i.fcc, align 8, !noalias !12591
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.agv, i64 56
  store ptr @269, ptr %i.fcd, align 8, !noalias !12591
  store i64 1, ptr %i.agw, align 8, !noalias !12591
  %.sroa.9182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  store ptr %i.agv, ptr %.sroa.9182.0..sroa_idx.i, align 8, !noalias !12591
  %.sroa.10183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  store i64 4, ptr %.sroa.10183.0..sroa_idx.i, align 8, !noalias !12591
  %.sroa.11184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agw, i64 24
  store ptr %i.fbv, ptr %.sroa.11184.0..sroa_idx.i, align 8, !noalias !12591
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi14query_influxql00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.agw)
          to label %bb.amj unwind label %bb.ami, !noalias !12592

bb.ami:                                           ; preds = %bb.amh
  %i.fce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agw), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agr), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ags), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agt), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agu), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agv), !noalias !12591
  br label %bb.amm

bb.amj:                                           ; preds = %bb.amh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agw), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agr), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ags), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agt), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agu), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agv), !noalias !12591
  br label %.thread428.i

.thread428.i:                                     ; preds = %bb.amj, %bb.amc, %bb.alx, %bb.alw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agj), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0200.i)
  %i.fcf = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.fcg = load ptr, ptr %i.fcf, align 8, !noalias !12591, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  store i8 0, ptr %i.fah, align 2, !noalias !12591
  %.sroa.14216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14216.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %i.fai, i64 24, i1 false), !noalias !12591
  %.val66.i963 = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i955, align 16, !noalias !12591, !nonnull !13, !noundef !13 ; 2 uses
  %.val67.i964 = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i957, align 8, !noalias !12591, !noundef !13 ; 2 uses
  store i8 0, ptr %i.fal, align 1, !noalias !12591
  %.sroa.0200.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0200.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0200.64..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.agx, i64 48, i1 false), !noalias !12591
  %i.fch = getelementptr inbounds nuw i8, ptr %1, i64 1234
  store i8 0, ptr %i.fch, align 2, !noalias !12591
  %i.fci = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %.sroa.11213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.11213.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %i.fci, i64 80, i1 false), !noalias !12591
  %i.fcj = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.fcj, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0200.i, i64 128, i1 false), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0200.i)
  %.sroa.9211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %.val66.i963, ptr %.sroa.9211.0..sroa_idx.i, align 16, !noalias !12591
  %.sroa.10212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1384
  store i64 %.val67.i964, ptr %.sroa.10212.0..sroa_idx.i, align 8, !noalias !12591
  %.sroa.13215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.fcg, ptr %.sroa.13215.0..sroa_idx.i, align 16, !noalias !12591
  %.sroa.16218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1606 ; 2 uses
  store i8 0, ptr %.sroa.16218.0..sroa_idx.i, align 2, !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afs), !noalias !12591
  br label %bb.ams

bb.amk:                                           ; preds = %bb.atq, %bb.ato, %bb.atm, %bb.atk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i868, %bb.atj, %bb.ath, %bb.asm, %bb.ash, %.body94.i891, %.body.i911
  %i.fck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12592
  unreachable

bb.aml:                                           ; preds = %bb.ars, %.body94.i891
  %i.fcl = phi ptr [ %i.fdf, %.body94.i891 ], [ %i.frs, %bb.ars ]
  %i.fcm = phi ptr [ %i.fdg, %.body94.i891 ], [ %i.frt, %bb.ars ]
  %.pn43.i = phi { ptr, i32 } [ %eh.lpad-body95.i, %.body94.i891 ], [ %i.frx, %bb.ars ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agj), !noalias !12591
  br label %bb.amm

bb.amm:                                           ; preds = %bb.ati, %bb.aml, %bb.ami, %bb.amg, %bb.alt
  %i.fcn = phi ptr [ %i.fcl, %bb.aml ], [ %i.fso, %bb.ati ], [ %i.fac, %bb.ami ], [ %i.fac, %bb.amg ], [ %i.fac, %bb.alt ]
  %i.fco = phi ptr [ %i.fcm, %bb.aml ], [ %i.fsp, %bb.ati ], [ %i.fad, %bb.ami ], [ %i.fad, %bb.amg ], [ %i.fad, %bb.alt ]
  %.pn43.pn.i866 = phi { ptr, i32 } [ %.pn43.i, %bb.aml ], [ %.pn38.pn.pn.pn.i, %bb.ati ], [ %i.fce, %bb.ami ], [ %.pn11.pn.pn.pn.pn.pn.i, %bb.amg ], [ %i.far, %bb.alt ]
  %i.fcp = getelementptr inbounds nuw i8, ptr %1, i64 1237 ; 2 uses
  %i.fcq = load i8, ptr %i.fcp, align 1, !range !20, !noalias !12591, !noundef !13
  %.not401.i = icmp eq i8 %i.fcq, 0
  %i.fcr = load ptr, ptr %i.agx, align 8, !noalias !12591
  %4 = icmp eq ptr %i.fcr, null
  %or.cond.not.i867 = select i1 %.not401.i, i1 true, i1 %4
  br i1 %or.cond.not.i867, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i868, label %bb.atk

bb.amn:                                           ; preds = %bb.alp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12159.sroa.5.i, i64 24, i1 false), !noalias !12591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.33.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16163.i, i64 7, i1 false), !noalias !12591
  %.sroa.10297.sroa.0.0.extract.trunc326.i = trunc i32 %.sroa.16.2.i.i948 to i8
  %.sroa.10297.sroa.6.0.extract.shift329.i = lshr i32 %.sroa.16.2.i.i948, 8
  %.sroa.10297.sroa.6.0.extract.trunc330.i = trunc i32 %.sroa.10297.sroa.6.0.extract.shift329.i to i8
  %i.fcs = ptrtoint ptr %.sroa.29.2.i.i944 to i64
  br label %bb.amo

bb.amo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877, %bb.amn
  %i.fct = phi ptr [ %i.fac, %bb.amn ], [ %i.fst, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ] ; 2 uses
  %i.fcu = phi ptr [ %i.fad, %bb.amn ], [ %i.fsu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ] ; 2 uses
  %.sroa.21.0.i878 = phi i64 [ %.sroa.27.2.i.i945, %bb.amn ], [ %.sroa.21.1.i874, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.18.0.i = phi i64 [ %.sroa.24.2.i.i946, %bb.amn ], [ %.sroa.18.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.15300.0.i = phi ptr [ %.sroa.19.2.i.i947, %bb.amn ], [ %.sroa.15300.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.6294.0.i = phi i32 [ %.sroa.9147.2.i.i949, %bb.amn ], [ %.sroa.6294.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.24.0.i879 = phi i64 [ %i.fcs, %bb.amn ], [ %.sroa.24.1.i875, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.26.0.i = phi i64 [ %.sroa.30.sroa.0.2.i.i951, %bb.amn ], [ %.sroa.26.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.32.0.i = phi i8 [ %.sroa.31.2.i.i943, %bb.amn ], [ %.sroa.32.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.10297.sroa.0.0.i = phi i8 [ %.sroa.10297.sroa.0.0.extract.trunc326.i, %bb.amn ], [ %.sroa.10297.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.10297.sroa.6.0.i = phi i8 [ %.sroa.10297.sroa.6.0.extract.trunc330.i, %bb.amn ], [ %.sroa.10297.sroa.6.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %.sroa.10297.sroa.7.0.i = phi i32 [ %.sroa.16.2.i.i948, %bb.amn ], [ %.sroa.10297.sroa.7.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %i.fcv = phi <2 x i64> [ %i.faf, %bb.amn ], [ %i.fsv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i877 ]
  %i.fcw = getelementptr inbounds nuw i8, ptr %1, i64 1234 ; 2 uses
  %i.fcx = load i8, ptr %i.fcw, align 2, !range !20, !noalias !12591, !noundef !13
  %i.fcy = trunc nuw i8 %i.fcx to i1
  br i1 %i.fcy, label %bb.ate, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i880

bb.amp:                                           ; preds = %.body.i911, %bb.atl
  %i.fcz = phi ptr [ %i.fub, %bb.atl ], [ %i.evg, %.body.i911 ] ; 3 uses
  %i.fda = phi ptr [ %i.fuc, %bb.atl ], [ %i.evh, %.body.i911 ] ; 3 uses
  %.pn48.pn.i = phi { ptr, i32 } [ %.pn46.i869, %bb.atl ], [ %eh.lpad-body.i912, %.body.i911 ] ; 3 uses
  %i.fdb = getelementptr inbounds nuw i8, ptr %1, i64 1234
  %i.fdc = load i8, ptr %i.fdb, align 2, !range !20, !noalias !12591, !noundef !13
  %i.fdd = trunc nuw i8 %i.fdc to i1
  br i1 %i.fdd, label %bb.atn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit121.i

bb.amq:                                           ; preds = %bb.aot, %bb.aos
  %i.fde = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i891

.body94.i891:                                     ; preds = %.body144.i.i, %bb.amq
  %i.fdf = phi ptr [ %i.euk, %bb.amq ], [ %i.fqz, %.body144.i.i ]
  %i.fdg = phi ptr [ %i.euj, %bb.amq ], [ %i.fra, %.body144.i.i ]
  %i.fdh = phi ptr [ %i.fdi, %bb.amq ], [ %i.frc, %.body144.i.i ]
  %eh.lpad-body95.i = phi { ptr, i32 } [ %i.fde, %bb.amq ], [ %.pn59.i.i, %.body144.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi20query_influxql_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.fdh) #33
          to label %bb.aml unwind label %bb.amk, !noalias !12592

bb.amr:                                           ; preds = %bb.ajg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agx), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agj), !noalias !12591
  %.phi.trans.insert403.i = getelementptr inbounds nuw i8, ptr %1, i64 1606 ; 4 uses
  %.pre404.i = load i8, ptr %.phi.trans.insert403.i, align 2, !range !39, !noalias !12616
  %i.fdi = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afs), !noalias !12591
  switch i8 %.pre404.i, label %default.unreachable8536 [
    i8 0, label %._crit_edge7739
    i8 1, label %bb.aos
    i8 2, label %bb.aot
    i8 3, label %bb.amt
    i8 4, label %bb.amu
  ]

._crit_edge7739:                                  ; preds = %bb.amr
  %.phi.trans.insert7740 = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.pre7741 = load ptr, ptr %.phi.trans.insert7740, align 16, !noalias !12616
  %.phi.trans.insert7742 = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %.pre7743 = load ptr, ptr %.phi.trans.insert7742, align 16, !noalias !12616
  %.phi.trans.insert7744 = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %.pre7745 = load i64, ptr %.phi.trans.insert7744, align 8, !noalias !12616
  br label %bb.ams

bb.ams:                                           ; preds = %._crit_edge7739, %.thread428.i
  %i.fdj = phi ptr [ %i.fac, %.thread428.i ], [ %i.euk, %._crit_edge7739 ] ; 17 uses
  %i.fdk = phi ptr [ %i.fad, %.thread428.i ], [ %i.euj, %._crit_edge7739 ] ; 17 uses
  %i.fdl = phi i64 [ %.val67.i964, %.thread428.i ], [ %.pre7745, %._crit_edge7739 ] ; 2 uses
  %i.fdm = phi ptr [ %.val66.i963, %.thread428.i ], [ %.pre7743, %._crit_edge7739 ] ; 2 uses
  %i.fdn = phi ptr [ %i.fcg, %.thread428.i ], [ %.pre7741, %._crit_edge7739 ] ; 6 uses
  %i.fdo = phi ptr [ %.sroa.16218.0..sroa_idx.i, %.thread428.i ], [ %.phi.trans.insert403.i, %._crit_edge7739 ] ; 17 uses
  %i.fdp = phi ptr [ %i.fcj, %.thread428.i ], [ %i.fdi, %._crit_edge7739 ] ; 20 uses
  %i.fdq = getelementptr inbounds nuw i8, ptr %1, i64 1605 ; 2 uses
  %i.fdr = getelementptr inbounds nuw i8, ptr %1, i64 1603 ; 2 uses
  %i.fds = getelementptr inbounds nuw i8, ptr %1, i64 1602 ; 2 uses
  %i.fdt = getelementptr inbounds nuw i8, ptr %1, i64 1604 ; 2 uses
  %i.fdu = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 3 uses
  %i.fdv = getelementptr inbounds nuw i8, ptr %1, i64 1601 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.fdu, i8 0, i64 6, i1 false), !noalias !12616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12616
  store i8 1, ptr %i.fdq, align 1, !noalias !12616
  %i.fdw = getelementptr inbounds nuw i8, ptr %1, i64 1576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afv, ptr noundef nonnull align 8 dereferenceable(24) %i.fdw, i64 24, i1 false), !noalias !12616
  store i8 1, ptr %i.fdr, align 1, !noalias !12616
  %i.fdx = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 3 uses
  %i.fdy = getelementptr inbounds nuw i8, ptr %1, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fdx, ptr noundef nonnull align 16 dereferenceable(48) %i.fdy, i64 48, i1 false), !noalias !12616
  store i8 1, ptr %i.fds, align 2, !noalias !12616
  %i.fdz = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.fea = getelementptr inbounds nuw i8, ptr %1, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.fdz, ptr noundef nonnull align 16 dereferenceable(80) %i.fea, i64 80, i1 false), !noalias !12616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afu), !noalias !12616
  invoke void @_RNvCs8dx9gOL6MFw_26iox_query_influxql_rewrite16parse_statements(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.afu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fdm, i64 noundef %i.fdl)
          to label %bb.amw unwind label %bb.amv, !noalias !12617

bb.amt:                                           ; preds = %bb.amr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12616
  br label %bb.aov

bb.amu:                                           ; preds = %bb.amr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12616
  br label %bb.aph

bb.amv:                                           ; preds = %bb.ams
  %i.feb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afu), !noalias !12616
  br label %.body93.i.i

bb.amw:                                           ; preds = %bb.ams
  call void @llvm.experimental.noalias.scope.decl(metadata !12618)
  %i.fec = load i64, ptr %i.afu, align 8, !range !30, !alias.scope !12619, !noalias !12616, !noundef !13 ; 2 uses
  %.not.i83.i.i = icmp eq i64 %i.fec, -2
  %i.fed = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %.sroa.8152.sroa.0.0.copyload249.i.i = load ptr, ptr %i.fed, align 8, !alias.scope !12620, !noalias !12616 ; 3 uses
  %.sroa.8152.sroa.8.0..sroa_idx251.i.i = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %.sroa.8152.sroa.8.0.copyload252.i.i = load i64, ptr %.sroa.8152.sroa.8.0..sroa_idx251.i.i, align 8, !alias.scope !12620, !noalias !12616 ; 3 uses
  %.sroa.8152.sroa.9.0..sroa_idx254.i.i = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %.sroa.8152.sroa.9.0.copyload255.i.i = load i64, ptr %.sroa.8152.sroa.9.0..sroa_idx254.i.i, align 8, !alias.scope !12620, !noalias !12616 ; 4 uses
  br i1 %.not.i83.i.i, label %bb.amx, label %bb.aor

bb.amx:                                           ; preds = %bb.amw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afu), !noalias !12616
  %i.fee = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store ptr %.sroa.8152.sroa.0.0.copyload249.i.i, ptr %i.fee, align 16, !noalias !12616
  %.sroa.4257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store i64 %.sroa.8152.sroa.8.0.copyload252.i.i, ptr %.sroa.4257.0..sroa_idx.i.i, align 8, !noalias !12616
  %.sroa.5258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488 ; 2 uses
  store i64 %.sroa.8152.sroa.9.0.copyload255.i.i, ptr %.sroa.5258.0..sroa_idx.i.i, align 16, !noalias !12616
  %i.fef = icmp ult i64 %.sroa.8152.sroa.9.0.copyload255.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.fef)
  %i.feg = icmp eq i64 %.sroa.8152.sroa.9.0.copyload255.i.i, 1
  br i1 %i.feg, label %bb.amy, label %bb.aon

bb.amy:                                           ; preds = %bb.amx
  %i.feh = inttoptr i64 %.sroa.8152.sroa.8.0.copyload252.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  store i64 0, ptr %.sroa.5258.0..sroa_idx.i.i, align 16, !alias.scope !12621, !noalias !12616
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8152.sroa.0.0.copyload249.i.i) ]
  %.sroa.0157.0.copyload158.i.i = load i64, ptr %i.feh, align 8, !noalias !12622 ; 2 uses
  %.sroa.7.0..sroa_idx159.i.i = getelementptr inbounds nuw i8, ptr %i.feh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx159.i.i, i64 56, i1 false), !noalias !12622
  %.not.i.i87.i = icmp eq i64 %.sroa.0157.0.copyload158.i.i, -1
  br i1 %.not.i.i87.i, label %bb.amz, label %bb.anb, !prof !16

bb.amz:                                           ; preds = %bb.amy
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #35
          to label %.noexc.i91.i unwind label %bb.ana, !noalias !12617

.noexc.i91.i:                                     ; preds = %bb.amz
  unreachable

bb.ana:                                           ; preds = %bb.amz
  %i.fei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.aom

bb.anb:                                           ; preds = %bb.amy
  store i64 %.sroa.0157.0.copyload158.i.i, ptr %i.fdp, align 8, !alias.scope !12623, !noalias !12616
  %.sroa.7.0..sroa_idx.i.i899 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i.i899, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, i64 56, i1 false), !alias.scope !12623, !noalias !12616
  store i8 1, ptr %i.fdt, align 4, !noalias !12616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aft), !noalias !12616
  store i8 0, ptr %i.fdq, align 1, !noalias !12616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aft, ptr noundef nonnull align 8 dereferenceable(24) %i.afv, i64 24, i1 false), !noalias !12616
  invoke void @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE12resolve_dbrpCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.afs, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.fdp)
          to label %bb.and unwind label %bb.anc, !noalias !12617

bb.anc:                                           ; preds = %bb.anb
  %i.fej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.aft) #33
          to label %bb.aol unwind label %bb.aok, !noalias !12617

bb.and:                                           ; preds = %bb.anb
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.aft, align 8, !noalias !12616 ; 4 uses
  %.sroa.8.0..sroa_idx.i.i900 = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i900, align 8, !noalias !12616 ; 5 uses
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  %.sroa.8.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12616 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aft), !noalias !12616
  %.not21.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, -1
  %i.fek = load i64, ptr %i.afs, align 8, !range !12, !noalias !12616, !noundef !13 ; 2 uses
  %.not22.i.i = icmp eq i64 %i.fek, -1            ; 2 uses
  br i1 %.not21.i.i, label %bb.anf, label %bb.ane

end_hunk_3
begin_hunk_4_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.fny = phi ptr [ %i.fik, %bb.apz ], [ %i.fke, %bb.aop ]
  %i.fnz = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEEECsgsNUVCRJO2f_13influxdb3_lib.exit119.i.i: ; preds = %bb.apz
  %i.foa = getelementptr inbounds nuw i8, ptr %1, i64 1602 ; 2 uses
  %i.fob = load i8, ptr %i.foa, align 2, !range !20, !noalias !12616, !noundef !13
  %i.foc = trunc nuw i8 %i.fob to i1
  br i1 %i.foc, label %bb.aqg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.aqh, %bb.aqg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEEECsgsNUVCRJO2f_13influxdb3_lib.exit119.i.i
  store i8 0, ptr %i.foa, align 2, !noalias !12616
  %i.fod = getelementptr inbounds nuw i8, ptr %1, i64 1603 ; 2 uses
  %i.foe = load i8, ptr %i.fod, align 1, !range !20, !noalias !12616, !noundef !13
  %i.fof = trunc nuw i8 %i.foe to i1
  br i1 %i.fof, label %bb.aqj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.aqg:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEEECsgsNUVCRJO2f_13influxdb3_lib.exit119.i.i
  %i.fog = getelementptr inbounds nuw i8, ptr %1, i64 1712
  %i.foh = load i64, ptr %i.fog, align 16, !range !12, !alias.scope !12633, !noalias !12616, !noundef !13
  %i.foi = icmp eq i64 %i.foh, -1
  br i1 %i.foi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, label %bb.aqh

bb.aqh:                                           ; preds = %bb.aqg
  %i.foj = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.foj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.aqi, !noalias !12617

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i: ; preds = %bb.arm, %bb.arl, %bb.aqi, %.body93.i.i
  %i.fok = phi ptr [ %i.fos, %bb.aqi ], [ %i.fkt, %.body93.i.i ], [ %i.fkt, %bb.arm ], [ %i.fkt, %bb.arl ] ; 3 uses
  %i.fol = phi ptr [ %i.fot, %bb.aqi ], [ %i.fku, %.body93.i.i ], [ %i.fku, %bb.arm ], [ %i.fku, %bb.arl ] ; 3 uses
  %i.fom = phi ptr [ %i.fou, %bb.aqi ], [ %i.fkv, %.body93.i.i ], [ %i.fkv, %bb.arm ], [ %i.fkv, %bb.arl ] ; 3 uses
  %i.fon = phi ptr [ %i.fov, %bb.aqi ], [ %i.fkw, %.body93.i.i ], [ %i.fkw, %bb.arm ], [ %i.fkw, %bb.arl ] ; 3 uses
  %.pn55.i.i = phi { ptr, i32 } [ %i.fow, %bb.aqi ], [ %.pn52.pn.i.i, %.body93.i.i ], [ %.pn52.pn.i.i, %bb.arm ], [ %.pn52.pn.i.i, %bb.arl ] ; 3 uses
  %i.foo = getelementptr inbounds nuw i8, ptr %1, i64 1602
  store i8 0, ptr %i.foo, align 2, !noalias !12616
  %i.fop = getelementptr inbounds nuw i8, ptr %1, i64 1603
  %i.foq = load i8, ptr %i.fop, align 1, !range !20, !noalias !12616, !noundef !13
  %i.for = trunc nuw i8 %i.foq to i1
  br i1 %i.for, label %bb.arn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i

bb.aqi:                                           ; preds = %bb.ara, %bb.aqh
  %i.fos = phi ptr [ %i.fkl, %bb.ara ], [ %i.fih, %bb.aqh ]
  %i.fot = phi ptr [ %i.fkm, %bb.ara ], [ %i.fii, %bb.aqh ]
  %i.fou = phi ptr [ %i.fkn, %bb.ara ], [ %i.fij, %bb.aqh ]
  %i.fov = phi ptr [ %i.fko, %bb.ara ], [ %i.fik, %bb.aqh ]
  %i.fow = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.aqk, %bb.aqj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  store i8 0, ptr %i.fod, align 1, !noalias !12616
  %i.fox = getelementptr inbounds nuw i8, ptr %1, i64 1605
  store i8 0, ptr %i.fox, align 1, !noalias !12616
  br label %bb.arr

bb.aqj:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.foy = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  %i.foz = load ptr, ptr %i.foy, align 16, !alias.scope !12634, !noalias !12616, !noundef !13
  %i.fpa = icmp eq ptr %i.foz, null
  br i1 %i.fpa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, label %bb.aqk

bb.aqk:                                           ; preds = %bb.aqj
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.foy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.aql, !noalias !12617

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i: ; preds = %bb.aro, %bb.arn, %bb.aql, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i
  %i.fpb = phi ptr [ %i.fpj, %bb.aql ], [ %i.fok, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i ], [ %i.fok, %bb.aro ], [ %i.fok, %bb.arn ] ; 2 uses
  %i.fpc = phi ptr [ %i.fpk, %bb.aql ], [ %i.fol, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i ], [ %i.fol, %bb.aro ], [ %i.fol, %bb.arn ] ; 2 uses
  %i.fpd = phi ptr [ %i.fpl, %bb.aql ], [ %i.fom, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i ], [ %i.fom, %bb.aro ], [ %i.fom, %bb.arn ] ; 2 uses
  %i.fpe = phi ptr [ %i.fpm, %bb.aql ], [ %i.fon, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i ], [ %i.fon, %bb.aro ], [ %i.fon, %bb.arn ] ; 2 uses
  %.pn57.i.i = phi { ptr, i32 } [ %i.fpn, %bb.aql ], [ %.pn55.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i ], [ %.pn55.i.i, %bb.aro ], [ %.pn55.i.i, %bb.arn ] ; 2 uses
  %i.fpf = getelementptr inbounds nuw i8, ptr %1, i64 1603
  store i8 0, ptr %i.fpf, align 1, !noalias !12616
  %i.fpg = getelementptr inbounds nuw i8, ptr %1, i64 1605
  %i.fph = load i8, ptr %i.fpg, align 1, !range !20, !noalias !12616, !noundef !13
  %i.fpi = trunc nuw i8 %i.fph to i1
  br i1 %i.fpi, label %bb.arp, label %.body144.i.i

bb.aql:                                           ; preds = %bb.arc, %bb.aqk
  %i.fpj = phi ptr [ %i.fkl, %bb.arc ], [ %i.fih, %bb.aqk ]
  %i.fpk = phi ptr [ %i.fkm, %bb.arc ], [ %i.fii, %bb.aqk ]
  %i.fpl = phi ptr [ %i.fkn, %bb.arc ], [ %i.fij, %bb.aqk ]
  %i.fpm = phi ptr [ %i.fko, %bb.arc ], [ %i.fik, %bb.aqk ]
  %i.fpn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i

bb.aqm:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EENtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorEB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit106.i.i
  %i.fpo = getelementptr inbounds nuw i8, ptr %1, i64 1544 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fpo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i129.i.i unwind label %bb.aqn, !noalias !12617

bb.aqn:                                           ; preds = %bb.aqm
  %i.fpp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fpo)
          to label %.body95.i.i unwind label %bb.aqo, !noalias !12617

bb.aqo:                                           ; preds = %bb.aqn
  %i.fpq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i129.i.i: ; preds = %bb.aqm
  %i.fpr = inttoptr i64 %i.fmf to ptr
  %i.fps = ptrtoint ptr %.sroa.5202.0.copyload.i.i to i64
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fpo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit133.i.i unwind label %bb.apt, !noalias !12617

bb.aqp:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.anr
  %i.fpt = phi ptr [ %i.fir, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.fdj, %bb.anr ]
  %i.fpu = phi ptr [ %i.fis, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.fdk, %bb.anr ]
  %i.fpv = phi ptr [ %i.fit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.fdo, %bb.anr ]
  %i.fpw = phi ptr [ %i.fiu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.fdp, %bb.anr ]
  %i.fpx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i890

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit133.i.i
  %i.fpy = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 2 uses
  %i.fpz = load i8, ptr %i.fpy, align 16, !range !20, !noalias !12616, !noundef !13
  %i.fqa = trunc nuw i8 %i.fpz to i1
  br i1 %i.fqa, label %bb.aqr, label %bb.aqq

bb.aqq:                                           ; preds = %bb.aqr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  store i8 0, ptr %i.fpy, align 16, !noalias !12616
  %i.fqb = getelementptr inbounds nuw i8, ptr %1, i64 1496 ; 4 uses
  %i.fqc = load i64, ptr %i.fqb, align 8, !range !12, !noalias !12616, !noundef !13
  %.not46.i.i = icmp eq i64 %i.fqc, -1
  br i1 %.not46.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i, label %bb.aqs

bb.aqr:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.fqd = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.fqd)
          to label %bb.aqq unwind label %bb.apw, !noalias !12617

bb.aqs:                                           ; preds = %bb.aqq
  %i.fqe = getelementptr inbounds nuw i8, ptr %1, i64 1601
  %i.fqf = load i8, ptr %i.fqe, align 1, !range !20, !noalias !12616, !noundef !13
  %i.fqg = trunc nuw i8 %i.fqf to i1
  br i1 %i.fqg, label %bb.aqt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i

bb.aqt:                                           ; preds = %bb.aqs
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fqb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i unwind label %bb.aqu, !noalias !12617

bb.aqu:                                           ; preds = %bb.aqt
  %i.fqh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fqb)
          to label %.body122.i.i unwind label %bb.aqv, !noalias !12617

bb.aqv:                                           ; preds = %bb.aqu
  %i.fqi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i: ; preds = %bb.aqt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fqb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i unwind label %bb.aqe, !noalias !12617

bb.aqw:                                           ; preds = %bb.aqx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i
  store i8 0, ptr %i.ffb, align 4, !noalias !12616
  br label %bb.aon

bb.aqx:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.fez)
          to label %bb.aqw unwind label %bb.aqy, !noalias !12617

bb.aqy:                                           ; preds = %bb.aqx
  %i.fqj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aom

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit141.i.i: ; preds = %bb.ara, %bb.aqz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  store i8 0, ptr %i.fkq, align 2, !noalias !12616
  %i.fqk = getelementptr inbounds nuw i8, ptr %1, i64 1603 ; 2 uses
  %i.fql = load i8, ptr %i.fqk, align 1, !range !20, !noalias !12616, !noundef !13
  %i.fqm = trunc nuw i8 %i.fql to i1
  br i1 %i.fqm, label %bb.arb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i

bb.aqz:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.fqn = getelementptr inbounds nuw i8, ptr %1, i64 1712
  %i.fqo = load i64, ptr %i.fqn, align 16, !range !12, !alias.scope !12635, !noalias !12616, !noundef !13
  %i.fqp = icmp eq i64 %i.fqo, -1
  br i1 %i.fqp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit141.i.i, label %bb.ara

bb.ara:                                           ; preds = %bb.aqz
  %i.fqq = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.fqq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit141.i.i unwind label %bb.aqi, !noalias !12617

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i: ; preds = %bb.arc, %bb.arb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit141.i.i
  store i8 0, ptr %i.fqk, align 1, !noalias !12616
  %i.fqr = getelementptr inbounds nuw i8, ptr %1, i64 1605 ; 2 uses
  %i.fqs = load i8, ptr %i.fqr, align 1, !range !20, !noalias !12616, !noundef !13
  %.not.i83.i = icmp eq i8 %i.fqs, 0
  %i.fqt = load i64, ptr %i.afv, align 8, !range !12, !noalias !12616
  %5 = icmp eq i64 %i.fqt, -1
  %or.cond.not.i.i = select i1 %.not.i83.i, i1 true, i1 %5
  br i1 %or.cond.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, label %bb.ard

bb.arb:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit141.i.i
  %i.fqu = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  %i.fqv = load ptr, ptr %i.fqu, align 16, !alias.scope !12636, !noalias !12616, !noundef !13
  %i.fqw = icmp eq ptr %i.fqv, null
  br i1 %i.fqw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i, label %bb.arc

bb.arc:                                           ; preds = %bb.arb
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fqu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i unwind label %bb.aql, !noalias !12617

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i
  store i8 0, ptr %i.fqr, align 1, !noalias !12616
  br label %bb.arr

bb.ard:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit143.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.are, !noalias !12617

bb.are:                                           ; preds = %bb.ard
  %i.fqx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %.body144.i.i unwind label %bb.arf, !noalias !12617

bb.arf:                                           ; preds = %bb.are
  %i.fqy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12617
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.ard
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.arg, !noalias !12617

.body144.i.i:                                     ; preds = %bb.arp, %bb.arg, %bb.are, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i
  %i.fqz = phi ptr [ %i.fpb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i ], [ %i.fpb, %bb.arp ], [ %i.fkl, %bb.arg ], [ %i.fkl, %bb.are ]
  %i.fra = phi ptr [ %i.fpc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i ], [ %i.fpc, %bb.arp ], [ %i.fkm, %bb.arg ], [ %i.fkm, %bb.are ]
  %i.frb = phi ptr [ %i.fpd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i ], [ %i.fpd, %bb.arp ], [ %i.fkn, %bb.arg ], [ %i.fkn, %bb.are ]
  %i.frc = phi ptr [ %i.fpe, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i ], [ %i.fpe, %bb.arp ], [ %i.fko, %bb.arg ], [ %i.fko, %bb.are ]
  %.pn59.i.i = phi { ptr, i32 } [ %.pn57.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i ], [ %.pn57.i.i, %bb.arp ], [ %i.fre, %bb.arg ], [ %i.fqx, %bb.are ]
  %i.frd = getelementptr inbounds nuw i8, ptr %1, i64 1605
  store i8 0, ptr %i.frd, align 1, !noalias !12616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afv), !noalias !12616
  store i8 2, ptr %i.frb, align 2, !noalias !12616
  br label %.body94.i891

bb.arg:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.fre = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i.i

bb.arh:                                           ; preds = %.body.i.i890
  %i.frf = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.frf) #33
          to label %bb.aoj unwind label %bb.aok, !noalias !12617

bb.ari:                                           ; preds = %bb.aoj
  %i.frg = getelementptr inbounds nuw i8, ptr %1, i64 1601
  %i.frh = load i8, ptr %i.frg, align 1, !range !20, !noalias !12616, !noundef !13
  %i.fri = trunc nuw i8 %i.frh to i1
  br i1 %i.fri, label %bb.arj, label %.body122.i.i

bb.arj:                                           ; preds = %bb.ari
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fjk) #33
          to label %.body122.i.i unwind label %bb.aok, !noalias !12617

bb.ark:                                           ; preds = %.body122.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.fjq) #33
          to label %bb.aom unwind label %bb.aok, !noalias !12617

bb.arl:                                           ; preds = %.body93.i.i
  %i.frj = getelementptr inbounds nuw i8, ptr %1, i64 1712
  %i.frk = load i64, ptr %i.frj, align 16, !range !12, !alias.scope !12637, !noalias !12616, !noundef !13
  %i.frl = icmp eq i64 %i.frk, -1
  br i1 %i.frl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i, label %bb.arm

bb.arm:                                           ; preds = %bb.arl
  %i.frm = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.frm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i unwind label %bb.aok, !noalias !12617

bb.arn:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit148.i.i
  %i.frn = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  %i.fro = load ptr, ptr %i.frn, align 16, !alias.scope !12638, !noalias !12616, !noundef !13
  %i.frp = icmp eq ptr %i.fro, null
  br i1 %i.frp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i, label %bb.aro

bb.aro:                                           ; preds = %bb.arn
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.frn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i unwind label %bb.aok, !noalias !12617

bb.arp:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit150.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.afv) #33
          to label %.body144.i.i unwind label %bb.aok, !noalias !12617

bb.arq:                                           ; preds = %bb.apj, %bb.aox
  %i.frq = phi ptr [ %i.flc, %bb.aox ], [ %i.fma, %bb.apj ]
  %i.frr = phi ptr [ %i.fle, %bb.aox ], [ %i.fmc, %bb.apj ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.aox ], [ 4, %bb.apj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afv), !noalias !12616
  store i8 %.sink.i.ph.i, ptr %i.frr, align 2, !noalias !12616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afs), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agx), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agj), !noalias !12591
  br label %bb.atr

bb.arr:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.frs = phi ptr [ %i.fih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.fkl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 5 uses
  %i.frt = phi ptr [ %i.fii, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.fkm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 5 uses
  %i.fru = phi ptr [ %i.fij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.fkn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.frv = phi ptr [ %i.fik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.fko, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %.sroa.16.sroa.7.sroa.7.sroa.0.4.i.i = phi i64 [ %.sroa.4.sroa.4.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.16.sroa.7.sroa.7.sroa.0.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 2 uses
  %.sroa.16.sroa.7.sroa.0.4.i.i = phi i64 [ %.sroa.4.sroa.0.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.16.sroa.7.sroa.0.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 2 uses
  %.sroa.16.sroa.0.4.i.i = phi i64 [ %.sroa.0227.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.16.sroa.0.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 3 uses
  %.sroa.15.4.i.i = phi ptr [ %.sroa.414.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.15.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 6 uses
  %.sroa.14213.4.i.i = phi ptr [ %.sroa.013.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.14213.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 6 uses
  %.sroa.0208.4.i.i = phi i32 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.0208.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 2 uses
  %i.frw = phi <2 x i64> [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.fkp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afv), !noalias !12616
  store i8 1, ptr %i.fru, align 2, !noalias !12616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afs), !noalias !12591
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi20query_influxql_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.frv)
          to label %bb.art unwind label %bb.ars, !noalias !12592

bb.ars:                                           ; preds = %bb.arr
  %i.frx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aml

bb.art:                                           ; preds = %bb.arr
  %.not.i96.i = icmp eq i32 %.sroa.0208.4.i.i, -1
  br i1 %.not.i96.i, label %bb.aru, label %bb.asd

bb.aru:                                           ; preds = %bb.art
  store ptr %.sroa.14213.4.i.i, ptr %i.agj, align 8, !noalias !12591
  %.sroa.4.0..sroa_idx.i892 = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  store ptr %.sroa.15.4.i.i, ptr %.sroa.4.0..sroa_idx.i892, align 8, !noalias !12591
  %.sroa.5252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agj, i64 16 ; 4 uses
  store i64 %.sroa.16.sroa.0.4.i.i, ptr %.sroa.5252.0..sroa_idx.i, align 8, !noalias !12591
  %.sroa.6253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agj, i64 24
  store i64 %.sroa.16.sroa.7.sroa.0.4.i.i, ptr %.sroa.6253.0..sroa_idx.i, align 8, !noalias !12591
  %.sroa.7254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  store i64 %.sroa.16.sroa.7.sroa.7.sroa.0.4.i.i, ptr %.sroa.7254.0..sroa_idx.i, align 8, !noalias !12591
  %i.fry = getelementptr inbounds nuw i8, ptr %1, i64 1236 ; 2 uses
  store i8 1, ptr %i.fry, align 4, !noalias !12591
  %i.frz = icmp eq i64 %.sroa.16.sroa.0.4.i.i, -1
  br i1 %i.frz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.arv

bb.arv:                                           ; preds = %bb.aru
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6select9DimensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.arw, !noalias !12592

bb.arw:                                           ; preds = %bb.arv
  %i.fsa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6select9DimensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx.i)
          to label %.body97.i unwind label %bb.arx, !noalias !12592

bb.arx:                                           ; preds = %bb.arw
  %i.fsb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12592
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.arv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6select9DimensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.5252.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ary, !noalias !12592

bb.ary:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.fsc = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

.body97.i:                                        ; preds = %bb.ary, %bb.arw
  %eh.lpad-body98.i = phi { ptr, i32 } [ %i.fsc, %bb.ary ], [ %i.fsa, %bb.arw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agj), !noalias !12591
  br label %bb.asc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtBG_6select9DimensionEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.aru
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agj), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agi), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agh), !noalias !12591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agg), !noalias !12591
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.agg)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i893 unwind label %bb.arz, !noalias !12592

bb.arz:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i893, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.fsd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agg), !noalias !12591
  br label %bb.asb

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i893: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6common10ZeroOrMoreNtNtB12_6select9DimensionEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.agh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.agg, i16 noundef 200)
          to label %switch.lookup8707 unwind label %bb.arz, !noalias !12592

switch.lookup8707:                                ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agg), !noalias !12591
  %i.fse = getelementptr inbounds nuw i8, ptr %1, i64 1233 ; 2 uses
end_hunk_4
