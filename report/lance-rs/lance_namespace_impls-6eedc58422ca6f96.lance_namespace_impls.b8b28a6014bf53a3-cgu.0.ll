Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvXs3_NtCs5E8EBwPtAkp_24datafusion_physical_plan6streamINtB5_24RecordBatchStreamAdapterINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4fuse4FuseINtNtB1v_6unfold6UnfoldTINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB2Q_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB2Q_6marker4SendEL_EEINtNtB3m_4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB8S_22UpsertManifestMutationEEENtNvMsc_B8S_NtB8S_17ManifestNamespace30manifest_rewrite_output_stream5PhaseENCIBaG_Ba7_E0NCNCBbU_00EEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8W_:bb.a

.noexc113.i.i.i.i:                                ; preds = %bb.dl
  br i1 %i.hn, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.noexc113.i.i.i.i
  store atomic i8 1, ptr %i.hi monotonic, align 4, !noalias !236960
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.dm, %.noexc113.i.i.i.i, %bb.dk, %bb.dj
  %i.ho = atomicrmw xchg ptr %i.hb, i32 0 release, align 4, !noalias !236960
  %i.hp = icmp eq i32 %i.ho, 2
  br i1 %i.hp, label %.invoke.i.i.i.i, label %bb.en, !prof !426

bb.dn:                                            ; preds = %bb.dw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.do:                                            ; preds = %bb.de
  %i.hr = load i8, ptr %i.i, align 8, !range !423, !noalias !236959, !noundef !416 ; 2 uses
  %.not96.i.i.i.i = icmp eq i8 %i.hr, -1
  br i1 %.not96.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.sroa.12.0..sroa_idx240.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx240.i.i.i, i64 7, i1 false), !noalias !236933
  %.sroa.14.0..sroa_idx242.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.14.0.copyload243.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx242.i.i.i, align 8, !noalias !236933
  %.sroa.19.0..sroa_idx245.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.19.0.copyload246.i.i.i = load ptr, ptr %.sroa.19.0..sroa_idx245.i.i.i, align 8, !noalias !236933
  %.sroa.22.0..sroa_idx248.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.22.0.copyload249.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx248.i.i.i, align 8, !noalias !236933
  %.sroa.23.0..sroa_idx252.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx252.i.i.i, i64 16, i1 false), !noalias !236933
  %.sroa.24.0..sroa_idx253.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.24.0.copyload254.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx253.i.i.i, align 8, !noalias !236933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !236959
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEBH_(ptr noalias noundef align 8 dereferenceable(104) %i.j)
          to label %bb.ee unwind label %.loopexit.split-lp338.i.i.i, !noalias !236960

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !236959
  %i.hs = load i64, ptr %i.bl, align 8, !noalias !236959, !noundef !416
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 416
  store i8 1, ptr %i.ht, align 16, !noalias !236960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !236959
  %i.hu = load i64, ptr %i.hd, align 16, !range !421, !alias.scope !236964, !noalias !236960, !noundef !416
  %i.hv = icmp eq i64 %i.hu, -1
  br i1 %i.hv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEEB13_.exit.i126.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.hd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEEB13_.exit.i126.i.i.i unwind label %.thread.i125.i.i.i, !noalias !236960

.thread.i125.i.i.i:                               ; preds = %bb.dr
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.hd, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !236960
  br label %bb.di

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEEB13_.exit.i126.i.i.i: ; preds = %bb.dr, %bb.dq
  %i.hx = icmp eq i64 %i.hs, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.hd, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !236960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hy = load i64, ptr %.sroa.548.0..sroa_idx.i.i.i.i, align 8, !noalias !236959, !noundef !416 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 384307168202282326
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp ne i64 %i.hy, 0
  %brmerge.i.i.i.i = or i1 %i.hx, %i.ia
  br i1 %brmerge.i.i.i.i, label %bb.dw, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEEB13_.exit.i126.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !236959
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.ic = trunc nuw i8 %i.hc to i1
  br i1 %i.ic, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.id = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !236959
  %i.ie = and i64 %i.id, 9223372036854775807
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i, label %bb.du, !prof !439

bb.du:                                            ; preds = %bb.dt
  %i.ig = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc117.i.i.i.i unwind label %.loopexit336.i.i.i, !noalias !236960

.noexc117.i.i.i.i:                                ; preds = %bb.du
  br i1 %i.ig, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %.noexc117.i.i.i.i
  store atomic i8 1, ptr %i.ib monotonic, align 4, !noalias !236960
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i: ; preds = %bb.dv, %.noexc117.i.i.i.i, %bb.dt, %bb.ds
  %i.ih = atomicrmw xchg ptr %i.hb, i32 0 release, align 4, !noalias !236960
  %i.ii = icmp eq i32 %i.ih, 2
  br i1 %i.ii, label %.invoke.i.i.i.i, label %.thread317.i.i.i, !prof !426

.thread317.i.i.i:                                 ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest20ManifestBatchBuilderEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.l), !noalias !236960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !236959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !236933
  br label %bb.eu

.invoke.i.i.i.i:                                  ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %.sroa.19.2.i.i.i = phi ptr [ %.sroa.619.i.sroa.7.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ undef, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i ]
  %.sroa.24.2.i.i.i = phi i64 [ %.sroa.619.i.sroa.10.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ undef, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.619.i.sroa.8.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ undef, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i ]
  %.sroa.14.2267.i.i.i = phi i64 [ %.sroa.619.i.sroa.6.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ -1, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i ]
  %.sroa.0236.2.i.i.i = phi i8 [ %.sroa.619.i.sroa.0.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ -1, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i116.i.i.i.i ]
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hb)
          to label %bb.en unwind label %.loopexit336.i.i.i, !noalias !236960

bb.dw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEEB13_.exit.i126.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !236959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false), !noalias !236959
  invoke void @_RNvMs2_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_20ManifestBatchBuilder6finish(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.g)
          to label %bb.dx unwind label %bb.dn, !noalias !236960

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !236959
  %i.ij = load i8, ptr %i.e, align 8, !range !423, !noalias !236959, !noundef !416 ; 2 uses
  %.not.i127.i.i.i = icmp eq i8 %i.ij, -1
  br i1 %.not.i127.i.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.sroa.487.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.588.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.588.0.copyload.i.i.i.i = load i64, ptr %.sroa.588.0..sroa_idx.i.i.i.i, align 8, !noalias !236959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.487.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !236933
  %.sroa.14.1.copyload.i.i.i = load i64, ptr %i.bm, align 8, !noalias !236933
  %.sroa.19.1.copyload.i.i.i = load ptr, ptr %.sroa.19.8..sroa_idx.i.i.i, align 8, !noalias !236933
  %.sroa.22.1.copyload.i.i.i = load ptr, ptr %.sroa.22.8..sroa_idx.i.i.i, align 8, !noalias !236933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.8..sroa_idx.i.i.i, i64 16, i1 false), !noalias !236933
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %.sroa.14.8.copyload.i.i.i = load i64, ptr %i.bm, align 8, !noalias !236933
  %.sroa.19.8.copyload.i.i.i = load ptr, ptr %.sroa.19.8..sroa_idx.i.i.i, align 8, !noalias !236933
  %.sroa.22.8.copyload.i.i.i = load ptr, ptr %.sroa.22.8..sroa_idx.i.i.i, align 8, !noalias !236933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.8..sroa_idx.i.i.i, i64 16, i1 false), !noalias !236933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !236959
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.il = trunc nuw i8 %i.hc to i1
  br i1 %i.il, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.im = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !236959
  %i.in = and i64 %i.im, 9223372036854775807
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.eb, !prof !439

bb.eb:                                            ; preds = %bb.ea
  %i.ip = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc152.i.i.i unwind label %.loopexit336.i.i.i, !noalias !236934

.noexc152.i.i.i:                                  ; preds = %bb.eb
  br i1 %i.ip, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc152.i.i.i
  store atomic i8 1, ptr %i.ik monotonic, align 4, !noalias !236960
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.ec, %.noexc152.i.i.i, %bb.ea, %bb.dz
  %i.iq = atomicrmw xchg ptr %i.hb, i32 0 release, align 4, !noalias !236960
  %i.ir = icmp eq i32 %i.iq, 2
  br i1 %i.ir, label %bb.ed, label %.thread280.i.i.i, !prof !426

bb.ed:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hb)
          to label %.thread280.i.i.i unwind label %.loopexit336.i.i.i, !noalias !236934

bb.ee:                                            ; preds = %bb.dy, %bb.dp
  %.sroa.19.1.i.i.i = phi ptr [ %.sroa.19.1.copyload.i.i.i, %bb.dy ], [ %.sroa.19.0.copyload246.i.i.i, %bb.dp ] ; 2 uses
  %.sroa.24.1.i.i.i = phi i64 [ %.sroa.588.0.copyload.i.i.i.i, %bb.dy ], [ %.sroa.24.0.copyload254.i.i.i, %bb.dp ] ; 2 uses
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.1.copyload.i.i.i, %bb.dy ], [ %.sroa.22.0.copyload249.i.i.i, %bb.dp ] ; 2 uses
  %.sroa.14.1266.i.i.i = phi i64 [ %.sroa.14.1.copyload.i.i.i, %bb.dy ], [ %.sroa.14.0.copyload243.i.i.i, %bb.dp ] ; 2 uses
  %.sroa.0236.1.i.i.i = phi i8 [ %i.ij, %bb.dy ], [ %i.hr, %bb.dp ] ; 2 uses
  %.sroa.043.5.i.i.i.i = phi i8 [ 0, %bb.dy ], [ 1, %bb.dp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !236959
  %i.is = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.it = trunc nuw i8 %i.hc to i1
  br i1 %i.it, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.iu = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !236959
  %i.iv = and i64 %i.iu, 9223372036854775807
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i, label %bb.eg, !prof !439

bb.eg:                                            ; preds = %bb.ef
  %i.ix = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc121.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !236960

.noexc121.i.i.i.i:                                ; preds = %bb.eg
  br i1 %i.ix, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.noexc121.i.i.i.i
  store atomic i8 1, ptr %i.is monotonic, align 1, !noalias !236960
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i: ; preds = %bb.eh, %.noexc121.i.i.i.i, %bb.ef, %bb.ee
  %i.iy = atomicrmw xchg ptr %i.hb, i32 0 release, align 4, !noalias !236960
  %i.iz = icmp eq i32 %i.iy, 2
  br i1 %i.iz, label %bb.ei, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i, !prof !426

bb.ei:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !236960

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i: ; preds = %bb.ei, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i120.i.i.i.i
  %i.ja = trunc nuw i8 %.sroa.043.5.i.i.i.i to i1
  br i1 %i.ja, label %.thread303.i.i.i, label %.loopexit342.sink.split.i.i.i

bb.ej:                                            ; preds = %bb.de
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest24ManifestIndexAccumulatorEBH_(ptr noalias noundef align 8 dereferenceable(104) %i.j) #73
          to label %bb.di unwind label %bb.ek, !noalias !236960

bb.ek:                                            ; preds = %bb.ej, %bb.di
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !236960
  unreachable

bb.el:                                            ; preds = %bb.da
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest20ManifestBatchBuilderEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.l) #73, !noalias !236960
  br label %.body130.i.i.i

bb.em:                                            ; preds = %bb.h
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bg, ptr %i.jd, align 8, !noalias !236933
  br label %bb.l

.body130.i.i.i:                                   ; preds = %.body135.i.i.i, %bb.el, %bb.da
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn326.i.i.i, %.body135.i.i.i ], [ %.pn100.i.i.i.i, %bb.da ], [ %.pn100.i.i.i.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i.i.i)
  br label %bb.fk

.thread280.i.i.i:                                 ; preds = %bb.ed, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !236959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !236933
  br label %bb.es

.thread303.i.i.i:                                 ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i, %bb.dc
  %.sroa.19.0.ph.i.i.i = phi ptr [ %i.ha, %bb.dc ], [ %.sroa.19.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.24.0.ph.i.i.i = phi i64 [ %.sroa.24.17.copyload.i.i.i, %bb.dc ], [ %.sroa.24.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.22.0.ph.i.i.i = phi ptr [ %.sroa.22.17.copyload.i.i.i, %bb.dc ], [ %.sroa.22.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.14.0265.ph.i.i.i = phi i64 [ %i.gz, %bb.dc ], [ %.sroa.14.1266.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.0236.0.ph.i.i.i = phi i8 [ %i.gy, %bb.dc ], [ %.sroa.0236.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest20ManifestBatchBuilderEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.l), !noalias !236960
  br label %.loopexit342.sink.split.i.i.i

bb.en:                                            ; preds = %.invoke.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %.sroa.19.0.i.i.i = phi ptr [ %.sroa.19.2.i.i.i, %.invoke.i.i.i.i ], [ %.sroa.619.i.sroa.7.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.24.0.i.i.i = phi i64 [ %.sroa.24.2.i.i.i, %.invoke.i.i.i.i ], [ %.sroa.619.i.sroa.10.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ]
  %.sroa.22.0.i.i.i = phi ptr [ %.sroa.22.2.i.i.i, %.invoke.i.i.i.i ], [ %.sroa.619.i.sroa.8.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.0265.i.i.i = phi i64 [ %.sroa.14.2267.i.i.i, %.invoke.i.i.i.i ], [ %.sroa.619.i.sroa.6.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0236.0.i.i.i = phi i8 [ %.sroa.0236.2.i.i.i, %.invoke.i.i.i.i ], [ %.sroa.619.i.sroa.0.0.copyload.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ] ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest20ManifestBatchBuilderEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.l), !noalias !236960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !236959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !236933
  %.not.i.i.i = icmp eq i8 %.sroa.0236.0.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.es, label %.loopexit342.i.i.i

.loopexit342.sink.split.i.i.i:                    ; preds = %.thread303.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i
  %.sroa.0236.3301.ph.i.i.i = phi i8 [ %.sroa.0236.0.ph.i.i.i, %.thread303.i.i.i ], [ %.sroa.0236.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.14.3300.ph.i.i.i = phi i64 [ %.sroa.14.0265.ph.i.i.i, %.thread303.i.i.i ], [ %.sroa.14.1266.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.22.3299.ph.i.i.i = phi ptr [ %.sroa.22.0.ph.i.i.i, %.thread303.i.i.i ], [ %.sroa.22.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.24.3298.ph.i.i.i = phi i64 [ %.sroa.24.0.ph.i.i.i, %.thread303.i.i.i ], [ %.sroa.24.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  %.sroa.19.3297.ph.i.i.i = phi ptr [ %.sroa.19.0.ph.i.i.i, %.thread303.i.i.i ], [ %.sroa.19.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest21ManifestRewriteSharedNtB1z_22UpsertManifestMutationEEEB1D_.exit123.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !236959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !236933
  br label %.loopexit342.i.i.i

.loopexit342.i.i.i:                               ; preds = %bb.en, %.loopexit342.sink.split.i.i.i
  %.sroa.0236.3301.i.i.i = phi i8 [ %.sroa.0236.3301.ph.i.i.i, %.loopexit342.sink.split.i.i.i ], [ %.sroa.0236.0.i.i.i, %bb.en ]
  %.sroa.14.3300.i.i.i = phi i64 [ %.sroa.14.3300.ph.i.i.i, %.loopexit342.sink.split.i.i.i ], [ %.sroa.14.0265.i.i.i, %bb.en ]
  %.sroa.22.3299.i.i.i = phi ptr [ %.sroa.22.3299.ph.i.i.i, %.loopexit342.sink.split.i.i.i ], [ %.sroa.22.0.i.i.i, %bb.en ]
  %.sroa.24.3298.i.i.i = phi i64 [ %.sroa.24.3298.ph.i.i.i, %.loopexit342.sink.split.i.i.i ], [ %.sroa.24.0.i.i.i, %bb.en ]
  %.sroa.19.3297.i.i.i = phi ptr [ %.sroa.19.3297.ph.i.i.i, %.loopexit342.sink.split.i.i.i ], [ %.sroa.19.0.i.i.i, %bb.en ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !236933
  store i8 %.sroa.0236.3301.i.i.i, ptr %i.am, align 8, !noalias !236933
  %.sroa.12.0..sroa_idx239.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx239.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i.i, i64 7, i1 false), !noalias !236933
  %.sroa.14.0..sroa_idx241.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.14.3300.i.i.i, ptr %.sroa.14.0..sroa_idx241.i.i.i, align 8, !noalias !236933
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.19.3297.i.i.i, ptr %.sroa.19.0..sroa_idx.i.i.i, align 8, !noalias !236933
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.sroa.22.3299.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !236933
  %.sroa.23.0..sroa_idx251.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx251.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, i64 16, i1 false), !noalias !236933
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %.sroa.24.3298.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !noalias !236933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !236965
  store i64 0, ptr %i.c, align 8, !noalias !236965
  %.sroa.42.0..sroa_idx.i.i132.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i132.i.i.i, align 8, !noalias !236965
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !236965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236965
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.je, align 8, !noalias !236965
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !236965
  %.sroa.5.0..sroa_idx.i.i133.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i133.i.i.i, align 2, !noalias !236965
  store ptr %i.c, ptr %i.b, align 8, !noalias !236965
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @15, ptr %i.jf, align 8, !noalias !236965
  %i.jg = invoke noundef zeroext i1 @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.eq unwind label %bb.eo, !noalias !236966

bb.eo:                                            ; preds = %bb.er, %.loopexit342.i.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !236967)
  call void @llvm.experimental.noalias.scope.decl(metadata !236968)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !419, !alias.scope !236969, !noalias !236965, !noundef !416 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ji, label %bb.fj, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.val1.i.i.i.i134.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i132.i.i.i, align 8, !alias.scope !236969, !noalias !236965, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i134.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !236970
  br label %bb.fj

bb.eq:                                            ; preds = %.loopexit342.i.i.i
  br i1 %i.jg, label %bb.er, label %bb.ev, !prof !426

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5286, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3168, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5288) #72
          to label %.noexc.i.i.i.i.i unwind label %bb.eo, !noalias !236966

.noexc.i.i.i.i.i:                                 ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.en, %.thread280.i.i.i
  %.sroa.14.3289.i.i.i = phi i64 [ %.sroa.14.8.copyload.i.i.i, %.thread280.i.i.i ], [ %.sroa.14.0265.i.i.i, %bb.en ] ; 2 uses
  %.sroa.22.3288.i.i.i = phi ptr [ %.sroa.22.8.copyload.i.i.i, %.thread280.i.i.i ], [ %.sroa.22.0.i.i.i, %bb.en ]
  %.sroa.19.3287.i.i.i = phi ptr [ %.sroa.19.8.copyload.i.i.i, %.thread280.i.i.i ], [ %.sroa.19.0.i.i.i, %bb.en ]
  %.not94.i.i.i = icmp eq i64 %.sroa.14.3289.i.i.i, -1
  br i1 %.not94.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.i.i.i, i64 16, i1 false), !noalias !236933
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 0, ptr %i.jj, align 1, !noalias !236933
  %i.jk = load ptr, ptr %i.bg, align 8, !noalias !236933, !nonnull !416, !noundef !416
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !236933, !nonnull !416, !align !417, !noundef !416
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.jn, align 8, !noalias !236933
  %i.jo = load ptr, ptr %i.bi, align 8, !noalias !236933, !nonnull !416, !noundef !416
  %i.jp = load i8, ptr %i.bh, align 1, !range !429, !noalias !236933, !noundef !416
  br label %bb.ff

bb.eu:                                            ; preds = %bb.es, %.thread317.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i.i.i)
  br label %bb.h

bb.ev:                                            ; preds = %bb.eq
  %.sroa.0257.0.copyload258.i.i.i = load i64, ptr %i.c, align 8, !noalias !236971 ; 5 uses
  %.sroa.6.0.copyload260.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i132.i.i.i, align 8, !noalias !236971 ; 5 uses
  %.sroa.7.0.copyload262.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !236971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !236933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.am, i64 56, i1 false), !noalias !236933
  %.val120.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !236933, !nonnull !416, !noundef !416
  invoke fastcc void @_RINvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB6_17ManifestNamespace26set_manifest_rewrite_errorNtB6_22UpsertManifestMutationEBa_(ptr nonnull %.val120.i.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.al)
          to label %bb.ew unwind label %bb.fg, !noalias !236934

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !236933
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !236972
  %i.jq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !236972 ; 5 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.ex, label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoINtNtBC_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1Z_4SendEL_EE4intoCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, !prof !448

bb.ex:                                            ; preds = %bb.ew
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ey, !noalias !236973

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ex
  unreachable

bb.ey:                                            ; preds = %bb.ex
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0257.0.copyload258.i.i.i, 0
  br i1 %i.jt, label %.body135.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload260.i.i.i) ]
end_hunk_0
