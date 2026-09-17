Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE14record_read_op0Csc93vp1BCDlY_26lance_namespace_datafusion:bb.a
bb.cn:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE10try_removeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i
  %.sroa.749.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.749.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !29071
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.b, align 8, !noalias !29071
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !29071, !noundef !111 ; 5 uses
  br i1 %i.hm, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.je = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !29071
  %i.jf = and i64 %i.je, 9223372036854775807
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cp, !prof !116

bb.cp:                                            ; preds = %bb.co
  %i.jh = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc23.i.i unwind label %bb.cs, !noalias !29071

.noexc23.i.i:                                     ; preds = %bb.cp
  br i1 %i.jh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc23.i.i
  store atomic i8 1, ptr %i.hh monotonic, align 4, !noalias !29071
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.cq, %.noexc23.i.i, %bb.co, %bb.cn
  %i.ji = atomicrmw xchg ptr %.val19, i32 0 release, align 4, !noalias !29071
  %i.jj = icmp eq i32 %i.ji, 2
  br i1 %i.jj, label %bb.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, !prof !114

bb.cr:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val19)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.cs, !noalias !29071

.loopexit.i.i:                                    ; preds = %_RNCNvMNtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB4_5Waker10try_select0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i, %bb.ce
  %i.jk = getelementptr inbounds nuw i8, ptr %.val19, i64 104
  %i.jl = load i8, ptr %i.jk, align 8, !range !115, !noalias !29071, !noundef !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.710, i64 7, i1 false), !alias.scope !29058
  br i1 %i.hm, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %bb.dc

bb.cs:                                            ; preds = %bb.cz, %bb.cr, %bb.cp
  %.sroa.04.2.i.i = phi i1 [ false, %bb.cz ], [ true, %bb.cr ], [ true, %bb.cp ]
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i.i

.body26.i.i:                                      ; preds = %bb.cw, %bb.cs
  %.sroa.04.2.lpad-body.i.i = phi i1 [ %.sroa.04.2.i.i, %bb.cs ], [ false, %bb.cw ]
  %eh.lpad-body27.i.i = phi { ptr, i32 } [ %i.jm, %bb.cs ], [ %i.ju, %bb.cw ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29090)
  %i.jn = load ptr, ptr %i.b, align 8, !alias.scope !29091, !noalias !29071, !nonnull !111, !noundef !111
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !29092
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.ct, label %.noexc25.i.i

bb.ct:                                            ; preds = %.body26.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc25.i.i unwind label %bb.db, !noalias !29071

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.cr, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.jq = icmp eq ptr %i.jd, null
  br i1 %i.jq, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  store i8 %.sroa.09.0.copyload, ptr %i.jd, align 8, !noalias !29093
  %.sroa.559.0..sroa.6.32..val16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.559.0..sroa.6.32..val16.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.710, i64 7, i1 false), !noalias !29054
  %.sroa.660.0..sroa.6.32..val16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %.sroa.15.0.copyload, ptr %.sroa.660.0..sroa.6.32..val16.sroa_idx.i.i, align 8, !noalias !29093
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store atomic i8 1, ptr %i.jr release, align 8, !noalias !29094
  br label %bb.cx

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  switch i8 %.sroa.09.0.copyload, label %bb.cz [
    i8 2, label %bb.cx
    i8 0, label %bb.cu
  ]

bb.cu:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.copyload) ]
  %i.js = atomicrmw sub ptr %.sroa.15.0.copyload, i32 1 release, align 4, !noalias !29071
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.15.0.copyload)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i unwind label %bb.cw, !noalias !29071

bb.cw:                                            ; preds = %bb.cv
  %i.ju = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.copyload, i64 noundef 40, i64 noundef 8) #44, !noalias !29071
  br label %.body26.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.cv
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.copyload, i64 noundef 40, i64 noundef 8) #44, !noalias !29071
  br label %bb.cz

bb.cx:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29098)
  %i.jv = load ptr, ptr %i.b, align 8, !alias.scope !29099, !noalias !29071, !nonnull !111, !noundef !111
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !noalias !29100
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %bb.cy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i unwind label %bb.df

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2s_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %bb.cu, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @650) #48
          to label %bb.da unwind label %bb.cs, !noalias !29071

bb.da:                                            ; preds = %bb.cz
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29071
  br label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread

bb.db:                                            ; preds = %.body.thread.i.i, %bb.ct, %bb.cm
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !29071
  unreachable

bb.dc:                                            ; preds = %.loopexit.i.i
  %i.jz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !29071
  %i.ka = and i64 %i.jz, 9223372036854775807
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %.noexc31.i.i, !prof !116

.noexc31.i.i:                                     ; preds = %bb.dc
  %i.kc = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc34 unwind label %bb.df

.noexc34:                                         ; preds = %.noexc31.i.i
  br i1 %i.kc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc34
  store atomic i8 1, ptr %i.hh monotonic, align 4, !noalias !29071
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i: ; preds = %bb.dd, %.noexc34, %bb.dc, %.loopexit.i.i
  %i.kd = atomicrmw xchg ptr %.val19, i32 0 release, align 4, !noalias !29071
  %i.ke = icmp eq i32 %i.kd, 2
  br i1 %i.ke, label %bb.de, label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !114

bb.de:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val19)
          to label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.df

.body.thread.i.i:                                 ; preds = %bb.cm, %bb.cb, %.body.thread71.i.i, %.noexc25.i.i
  %.pn65.i.i = phi { ptr, i32 } [ %i.hk, %bb.cb ], [ %eh.lpad-body27.i.i, %.noexc25.i.i ], [ %lpad.thr_comm.i.i, %.body.thread71.i.i ], [ %i.jb, %bb.cm ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(i8 %.sroa.09.0.copyload, ptr %.sroa.15.0.copyload) #49
          to label %.body30 unwind label %bb.db, !noalias !29071

bb.df:                                            ; preds = %bb.de, %.noexc31.i.i, %bb.cy, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.aw, %.body.thread.i.i.i, %.noexc25.i.i, %.body.thread.i.i, %bb.df
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.kf, %bb.df ], [ %eh.lpad-body26.i.i.i, %.body.thread.i.i.i ], [ %i.fc, %bb.aw ], [ %.pn65.i.i, %.body.thread.i.i ], [ %eh.lpad-body27.i.i, %.noexc25.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %.body38

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread: ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i
  %.sroa.24.3.ph = phi ptr [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i ], [ undef, %bb.bv ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i ], [ %.sroa.15.0.copyload, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %.sroa.14.3.ph = phi i8 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i ], [ undef, %bb.bv ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i ], [ %.sroa.09.0.copyload, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %i.kg = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECsc93vp1BCDlY_26lance_namespace_datafusion.exit29.i.i ], [ false, %bb.bv ], [ false, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread.i.i ], [ true, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ false, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %bb.dg

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread26: ; preds = %_RNCNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB7_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB21_16CachedReaderDataEE8try_send0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %.thread111

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.de, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  %switch.not = icmp eq i8 %i.jl, 0
  br i1 %switch.not, label %bb.dg, label %.thread111

.thread111:                                       ; preds = %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, i64 7, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2n_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.dg:                                            ; preds = %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.05.323 = phi i1 [ %i.kg, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread ], [ true, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %.sroa.14.322 = phi i8 [ %.sroa.14.3.ph, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread ], [ %.sroa.09.0.copyload, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %.sroa.24.321 = phi ptr [ %.sroa.24.3.ph, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread ], [ %.sroa.15.0.copyload, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1R_16CachedReaderDataEE8try_sendCsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 5 uses
  %i.kh = icmp eq i8 %.sroa.14.322, 0
  %or.cond = select i1 %.sroa.05.323, i1 %i.kh, i1 false
  br i1 %or.cond, label %bb.dh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2n_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2n_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.thread111, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %bb.dh, %bb.dg
  %.sroa.05.0122 = phi i64 [ 1, %.thread111 ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ -1, %bb.dh ], [ -1, %bb.dg ]
  %.sroa.3.sroa.3.0121 = phi ptr [ %.sroa.15.0.copyload, %.thread111 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ undef, %bb.dh ], [ undef, %bb.dg ]
  %.sroa.3.sroa.0.0120 = phi i8 [ %.sroa.09.0.copyload, %.thread111 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ undef, %bb.dh ], [ undef, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  store i8 0, ptr %i.cs, align 1
  store i64 %.sroa.05.0122, ptr %0, align 8
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.3.sroa.0.0120, ptr %.sroa.3.0..sroa_idx7, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.2, i64 7, i1 false)
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.sroa.3.0121, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx7.sroa_idx, align 8
  br label %common.ret

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24.321) ]
  %i.ki = atomicrmw sub ptr %.sroa.24.321, i32 1 release, align 4, !noalias !29101
  %i.kj = icmp eq i32 %i.ki, 1
  br i1 %i.kj, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2n_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.di:                                            ; preds = %bb.dh
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1S_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.24.321)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i unwind label %common.resume.i36, !noalias !29101

common.resume.i36:                                ; preds = %bb.di
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.24.321, i64 noundef 40, i64 noundef 8) #44, !noalias !29101
  br label %.body38

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i: ; preds = %bb.di
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.24.321, i64 noundef 40, i64 noundef 8) #44, !noalias !29101
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2n_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

.body38:                                          ; preds = %common.resume.i36, %.body30
  %.pn13 = phi { ptr, i32 } [ %eh.lpad-body31, %.body30 ], [ %i.kk, %common.resume.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %bb.dj

bb.dj:                                            ; preds = %.body, %.body38
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body38 ], [ %.pn, %.body ]
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !range !115, !noundef !111
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.dm, label %bb.dl

.body:                                            ; preds = %bb.ae, %.body.i
  %i.ko = phi ptr [ %i.by, %.body.i ], [ %i.p, %bb.ae ]
  %.pn = phi { ptr, i32 } [ %.pn6.pn.i, %.body.i ], [ %i.co, %bb.ae ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1H_16CachedReaderDataE21apply_reads_if_needed0ECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noundef nonnull align 8 %i.ko) #49
          to label %bb.dj unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %.body
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.dl:                                            ; preds = %bb.dm, %bb.dj
  store i8 0, ptr %i.kl, align 1
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn13.pn

bb.dm:                                            ; preds = %bb.dj
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i8, ptr %i.kq, align 8, !range !115, !noundef !111
  %i.kr = getelementptr i8, ptr %1, i64 48
  %.val16 = load ptr, ptr %i.kr, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(i8 %.val, ptr %.val16) #49
          to label %bb.dl unwind label %bb.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE17schedule_write_op0Csc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i.i = alloca [38 x i8], align 2      ; 10 uses
  %.sroa.6.i.i.i = alloca [38 x i8], align 2      ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.3.sroa.2 = alloca [38 x i8], align 2     ; 2 uses
  %.sroa.18 = alloca [38 x i8], align 2           ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 161 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !140, !noundef !111
  switch i8 %i.h, label %default.unreachable144 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.l
    i8 4, label %bb.c
  ]

default.unreachable144:                           ; preds = %bb.ao, %bb.m, %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !111, !align !127, !noundef !111
  store <2 x ptr> %i.o, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load i64, ptr %i.s, align 8, !noundef !111 ; 2 uses
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !align !127, !noundef !111 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8
  store i8 1, ptr %i.i, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 162
  store i8 0, ptr %i.x, align 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val21.pre = load ptr, ptr %.phi.trans.insert128, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #48
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #48
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.dq
  %.val21 = phi ptr [ %.val21.pre, %bb.c ], [ %i.lc, %bb.dq ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.val22 = load ptr, ptr %2, align 8, !nonnull !111, !align !127, !noundef !111
  %i.z = invoke fastcc noundef zeroext i1 @_RNvXsp_Cs9ZJqkc64Jh8_14event_listenerNtB5_13EventListenerNtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %.val21, ptr nonnull %.val22)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.y, align 8, !nonnull !111, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val) #49
          to label %bb.dr unwind label %bb.ds

bb.h:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.dk, %bb.an, %bb.i
  %.sink = phi i8 [ 1, %bb.dk ], [ 3, %bb.an ], [ 4, %bb.i ]
  store i8 %.sink, ptr %i.g, align 1
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.val20 = load ptr, ptr %i.y, align 8, !nonnull !111, !noundef !111
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val20)
          to label %.loopexit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8
  %.phi.trans.insert122 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre123 = load i64, ptr %.phi.trans.insert122, align 8
  %.phi.trans.insert124 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre125 = load ptr, ptr %.phi.trans.insert124, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %.loopexit
  %i.ac = phi ptr [ %.pre125, %.loopexit ], [ %i.w, %bb.b ]
  %i.ad = phi i64 [ %.pre123, %.loopexit ], [ %i.t, %bb.b ]
  %i.ae = phi ptr [ %.pre121, %.loopexit ], [ %i.p, %bb.b ]
  %i.af = phi ptr [ %.pre, %.loopexit ], [ %i.l, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.af, ptr %i.ag, align 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.ae, ptr %.sroa.745.0..sroa_idx, align 8
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.ad, ptr %.sroa.846.0..sroa_idx, align 8
  %.sroa.947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.ac, ptr %.sroa.947.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val23145 = load ptr, ptr %2, align 8
end_hunk_0
