Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RNvXs3_NtCs5E8EBwPtAkp_24datafusion_physical_plan6streamINtB5_24RecordBatchStreamAdapterINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB1t_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB4O_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB5Z_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB5Z_7convert4FromB6P_E4fromEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB2W_:bb.a
bb.am:                                            ; preds = %bb.ai
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val28.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !109293, !noalias !109292 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !109298
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 -4, ptr %i.bu, align 16, !noalias !109298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !109298
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !391, !noalias !109299, !noundef !315
  switch i8 %i.bx, label %default.unreachable [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %.thread8.i.i.i.i.i.i.i
  ], !prof !576

default.unreachable:                              ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bv, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsc85D0lJ81Z_16lance_datafusion)
          to label %.noexc.i36.i.i.i.i.i.i unwind label %.thread5.i.i.i.i.i.i.i, !noalias !109300

.noexc.i36.i.i.i.i.i.i:                           ; preds = %bb.an
  store i8 1, ptr %i.bw, align 8, !noalias !109299
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc.i36.i.i.i.i.i.i, %bb.am
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 68
  %i.bz = load i8, ptr %i.by, align 4, !range !327, !noalias !109301, !noundef !315 ; 2 uses
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 69 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !109301 ; 4 uses
  br i1 %i.ca, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.at unwind label %.thread5.i.i.i.i.i.i.i, !noalias !109302

bb.ar:                                            ; preds = %bb.ap
  %i.cd = add i8 %i.cc, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cd, %bb.ar ], [ %i.cc, %bb.ao ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i.i, ptr %i.cb, align 1, !noalias !109301
  br label %bb.at

.thread5.i.i.i.i.i.i.i:                           ; preds = %bb.at, %bb.aq, %bb.an
  %lpad.thr_comm.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i33.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cc, %bb.as ], [ 0, %bb.aq ]
  %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.as ], [ true, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !109298
  store i24 0, ptr %i.b, align 4, !noalias !109298
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.ce)
          to label %bb.au unwind label %.thread5.i.i.i.i.i.i.i, !noalias !109302

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !109298
  br i1 %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i, label %bb.av, label %.thread8.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !109298
  call void @llvm.experimental.noalias.scope.decl(metadata !109303)
  %i.cf = load i64, ptr %i.bu, align 16, !range !405, !alias.scope !109303, !noalias !109298, !noundef !315 ; 2 uses
  %.not.i.i34.i.i.i.i.i.i = icmp eq i64 %i.cf, -4
  br i1 %.not.i.i34.i.i.i.i.i.i, label %bb.br, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !109304)
  %.not.i.i.i35.i.i.i.i.i.i = icmp eq i64 %i.cf, -3
  br i1 %.not.i.i.i35.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB1A_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EB2G_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !109302
  br label %bb.br

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !109305)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 16, !alias.scope !109306, !noalias !109298, !noundef !315 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !109306, !noalias !109298 ; 6 uses
  %i.ci = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ci, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i) ]
  %i.cj = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !315, !noalias !109307 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void %i.cj(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i)
          to label %bb.bb unwind label %bb.bc, !noalias !109307

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !322, !invariant.load !315, !noalias !109307 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.br, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !340, !invariant.load !315, !noalias !109307
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.co) #71, !noalias !109307
  br label %bb.br

bb.bc:                                            ; preds = %bb.ba
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !322, !invariant.load !315, !noalias !109307 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !340, !invariant.load !315, !noalias !109307
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) %i.cu) #71, !noalias !109307
  br label %common.resume

.thread8.i.i.i.i.i.i.i:                           ; preds = %bb.au, %bb.am
  %.sroa.03.011.i10.off8.i.i.i.i.i.i.i = phi i8 [ %i.bz, %bb.au ], [ 0, %bb.am ]
  %.sroa.03.011.i10.off16.i.i.i.i.i.i.i = phi i8 [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ 0, %bb.am ]
  store i8 %.sroa.03.011.i10.off8.i.i.i.i.i.i.i, ptr %i.c, align 1, !noalias !109298
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i10.off16.i.i.i.i.i.i.i, ptr %i.cv, align 1, !noalias !109298
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i.i.i.i.i.i) ]
  %i.cw = load ptr, ptr %2, align 8, !alias.scope !109308, !noalias !109302, !nonnull !315, !align !324, !noundef !315
  %i.cx = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !109300, !nonnull !315, !align !324, !noundef !315
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !109302, !nonnull !315, !noundef !315
  invoke void %i.da(ptr noundef nonnull %.val28.i.i.i.i.i.i, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw)
          to label %bb.be unwind label %bb.bd, !noalias !109302

bb.bd:                                            ; preds = %.thread8.i.i.i.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.thread.i33.i.i.i.i.i.i unwind label %bb.bf, !noalias !109302

bb.be:                                            ; preds = %.thread8.i.i.i.i.i.i.i
  %i.dc = load i64, ptr %i.bu, align 16, !range !405, !noalias !109298, !noundef !315 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dc, -4
  br i1 %.not.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.be
  store i8 0, ptr %i.c, align 1, !noalias !109298
  %i.dd = load <2 x ptr>, ptr %i.d, align 16, !noalias !109309 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !109263
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.9.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !109309
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c), !noalias !109302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !109298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !109298
  switch i64 %i.dc, label %bb.bh [
    i64 -3, label %bb.bg
    i64 -2, label %bb.bj
  ]

bb.bf:                                            ; preds = %.thread.i33.i.i.i.i.i.i, %bb.bd
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !109302
  unreachable

.thread.i33.i.i.i.i.i.i:                          ; preds = %bb.bd, %.thread5.i.i.i.i.i.i.i
  %.pn4.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i, %.thread5.i.i.i.i.i.i.i ], [ %i.db, %bb.bd ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemIB11_NtB2l_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EB3r_EENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.d) #73
          to label %common.resume unwind label %bb.bf, !noalias !109302

.critedge.i.i.i.i.i.i:                            ; preds = %bb.be
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c), !noalias !109302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !109298
  br label %bb.br

bb.bg:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !109263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, i64 24, i1 false), !noalias !109263
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !109263, !noundef !315
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not12.i.i.i.i.i.i, label %bb.bl, label %bb.bk, !prof !316

.body.i.i.i.i.i.i:                                ; preds = %bb.bh
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = extractelement <2 x ptr> %i.dd, i64 1
  %i.dj = extractelement <2 x ptr> %i.dd, i64 0
  store i64 2, ptr %i.p, align 8, !alias.scope !109293, !noalias !109310
  %.sroa.596.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dj, ptr %.sroa.596.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !109293, !noalias !109310
  store ptr %i.di, ptr %i.bt, align 8, !alias.scope !109293, !noalias !109310
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.l) #73
          to label %common.resume unwind label %bb.ak, !noalias !109265

bb.bh:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !109263
  store i64 %i.dc, ptr %i.l, align 8, !noalias !109263
  %.sroa.6.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, i64 24, i1 false), !noalias !109263
  %.sroa.7.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.9.0.copyload.i.i.i.i.i.i, ptr %.sroa.7.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !109263
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i unwind label %.body.i.i.i.i.i.i, !noalias !109311

bb.bi:                                            ; preds = %bb.bj
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i64 4, ptr %i.p, align 8, !alias.scope !109293, !noalias !109312
  br label %common.resume

bb.bj:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i unwind label %bb.bi, !noalias !109313

_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i: ; preds = %bb.bj
  store i64 4, ptr %i.p, align 8, !alias.scope !109293, !noalias !109312
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !109257
  store i8 1, ptr %i.s, align 8, !alias.scope !109253, !noalias !109254
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bg
  %i.dl = call { ptr, ptr } @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5errorNtB2_9JoinError10into_panic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4135), !noalias !109265 ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dl, 0
  %i.dn = extractvalue { ptr, ptr } %i.dl, 1
  call void @_RNvNtCsgczF5crJ4sT_3std5panic13resume_unwind(ptr noundef nonnull %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dn) #72, !noalias !109265
  unreachable

bb.bl:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !109263
  store ptr %i.k, ptr %i.j, align 8, !noalias !109263
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !109263
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4136, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4137) #72
          to label %bb.bm unwind label %bb.bn, !noalias !109265

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %lpad.thr_comm.split-lp82.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #73
          to label %common.resume unwind label %bb.ak, !noalias !109265

_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i: ; preds = %bb.bh
  store i64 2, ptr %i.p, align 8, !alias.scope !109293, !noalias !109310
  %.sroa.596.0..sroa_idx97.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x ptr> %i.dd, ptr %.sroa.596.0..sroa_idx97.i.i.i.i.i.i, align 8, !alias.scope !109293, !noalias !109310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, i64 32, i1 false), !noalias !109314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !109263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !109257
  %i.do = icmp eq i64 %i.dc, -1
  br i1 %i.do, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !109315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !109314
  call void @_RNvXs2_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !109316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !109315
  br label %.critedge

bb.bp:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i
  store i64 %i.dc, ptr %i.r, align 8, !noalias !109314
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !109314
  br label %.critedge

bb.bq:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.bv

bb.br:                                            ; preds = %bb.av, %bb.ax, %bb.ay, %bb.bb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !109298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !109257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !109246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bv

.critedge:                                        ; preds = %bb.bo, %bb.bp
  %.sroa.04.0.i.i.ph = phi i64 [ 1, %bb.bo ], [ 0, %bb.bp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !109317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !109246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 %.sroa.04.0.i.i.ph, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bv

bb.bt:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !109317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !109246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 -1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.o) #73
          to label %common.resume unwind label %bb.bw

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit: ; preds = %bb.bt
  store i64 -1, ptr %i.p, align 8
  br label %bb.bs

bb.bv:                                            ; preds = %bb.bq, %bb.br, %bb.bs
  ret void

bb.bw:                                            ; preds = %bb.bu
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs3_NtCs5E8EBwPtAkp_24datafusion_physical_plan6streamINtB5_24RecordBatchStreamAdapterINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB1t_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB4O_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB5Z_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB5Z_7convert4FromB6P_E4fromEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB2W_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !366, !noundef !315 ; 4 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109343)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !327, !alias.scope !109344, !noalias !109345, !noundef !315
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109347)
  %i.f = icmp ne i64 %i.b, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.b, -2
  %i.h = icmp samesign ugt i64 %i.b, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !109348, !noalias !109349, !nonnull !315, !noundef !315
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !109348, !noalias !109349, !nonnull !315, !align !324, !noundef !315
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !315, !noalias !109350, !nonnull !315
  tail call void %i.m(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %.val.i.i.i.i.i), !noalias !109348, !inline_history !109335
  br label %_RNvXsv_NtNtCs9p5Dg9WVwvP_12futures_util6stream10try_streamINtB5_6MapErrINtNtNtB7_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3x_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4I_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4I_7convert4FromB5y_E4fromENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB1F_.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !alias.scope !109351
  br label %_RNvXsv_NtNtCs9p5Dg9WVwvP_12futures_util6stream10try_streamINtB5_6MapErrINtNtNtB7_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3x_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4I_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4I_7convert4FromB5y_E4fromENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB1F_.exit

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !109349, !noalias !109348
end_hunk_0
