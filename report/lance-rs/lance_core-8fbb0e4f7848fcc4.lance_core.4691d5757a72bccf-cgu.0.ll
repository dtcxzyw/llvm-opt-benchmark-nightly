Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB17_4moka14MokaCacheEntryE14record_read_op0B19_:bb.a
bb.cn:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryE10try_removeCs63DIHKhvmTb_10lance_core.exit.i.i.i.i
  %.sroa.749.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.749.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !9023
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.b, align 8, !noalias !9023
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !9023, !noundef !24 ; 5 uses
  br i1 %i.hm, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.je = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9023
  %i.jf = and i64 %i.je, 9223372036854775807
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cp, !prof !29

bb.cp:                                            ; preds = %bb.co
  %i.jh = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc23.i.i unwind label %bb.cs, !noalias !9023

.noexc23.i.i:                                     ; preds = %bb.cp
  br i1 %i.jh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc23.i.i
  store atomic i8 1, ptr %i.hh monotonic, align 4, !noalias !9023
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.cq, %.noexc23.i.i, %bb.co, %bb.cn
  %i.ji = atomicrmw xchg ptr %.val19, i32 0 release, align 4, !noalias !9023
  %i.jj = icmp eq i32 %i.ji, 2
  br i1 %i.jj, label %bb.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECs63DIHKhvmTb_10lance_core.exit.i.i, !prof !27

bb.cr:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val19)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECs63DIHKhvmTb_10lance_core.exit.i.i unwind label %bb.cs, !noalias !9023

.loopexit.i.i:                                    ; preds = %_RNCNvMNtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB4_5Waker10try_select0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i, %bb.ce
  %i.jk = getelementptr inbounds nuw i8, ptr %.val19, i64 104
  %i.jl = load i8, ptr %i.jk, align 8, !range !30, !noalias !9023, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.710, i64 7, i1 false), !alias.scope !9010
  br i1 %i.hm, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %bb.dc

bb.cs:                                            ; preds = %bb.cz, %bb.cr, %bb.cp
  %.sroa.04.2.i.i = phi i1 [ false, %bb.cz ], [ true, %bb.cr ], [ true, %bb.cp ]
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i.i

.body26.i.i:                                      ; preds = %bb.cw, %bb.cs
  %.sroa.04.2.lpad-body.i.i = phi i1 [ %.sroa.04.2.i.i, %bb.cs ], [ false, %bb.cw ]
  %eh.lpad-body27.i.i = phi { ptr, i32 } [ %i.jm, %bb.cs ], [ %i.ju, %bb.cw ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9042)
  %i.jn = load ptr, ptr %i.b, align 8, !alias.scope !9043, !noalias !9023, !nonnull !24, !noundef !24
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !9044
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.ct, label %.noexc25.i.i

bb.ct:                                            ; preds = %.body26.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc25.i.i unwind label %bb.db, !noalias !9023

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.cr, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.jq = icmp eq ptr %i.jd, null
  br i1 %i.jq, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECs63DIHKhvmTb_10lance_core.exit.i.i
  store i8 %.sroa.09.0.copyload, ptr %i.jd, align 8, !noalias !9045
  %.sroa.559.0..sroa.6.32..val16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.559.0..sroa.6.32..val16.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.710, i64 7, i1 false), !noalias !9006
  %.sroa.660.0..sroa.6.32..val16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %.sroa.15.0.copyload, ptr %.sroa.660.0..sroa.6.32..val16.sroa_idx.i.i, align 8, !noalias !9045
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store atomic i8 1, ptr %i.jr release, align 8, !noalias !9046
  br label %bb.cx

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEECs63DIHKhvmTb_10lance_core.exit.i.i
  switch i8 %.sroa.09.0.copyload, label %bb.cz [
    i8 2, label %bb.cx
    i8 0, label %bb.cu
  ]

bb.cu:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.copyload) ]
  %i.js = atomicrmw sub ptr %.sroa.15.0.copyload, i32 1 release, align 4, !noalias !9023
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.15.0.copyload)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2u_4moka14MokaCacheEntryEEEEB2w_.exit.i.i.i.i.i.i unwind label %bb.cw, !noalias !9023

bb.cw:                                            ; preds = %bb.cv
  %i.ju = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.copyload, i64 noundef 48, i64 noundef 8) #65, !noalias !9023
  br label %.body26.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2u_4moka14MokaCacheEntryEEEEB2w_.exit.i.i.i.i.i.i: ; preds = %bb.cv
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.copyload, i64 noundef 48, i64 noundef 8) #65, !noalias !9023
  br label %bb.cz

bb.cx:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9050)
  %i.jv = load ptr, ptr %i.b, align 8, !alias.scope !9051, !noalias !9023, !nonnull !24, !noundef !24
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !noalias !9052
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %bb.cy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i unwind label %bb.df

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtB1f_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2u_4moka14MokaCacheEntryEEEEB2w_.exit.i.i.i.i.i.i, %bb.cu, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @482) #68
          to label %bb.da unwind label %bb.cs, !noalias !9023

bb.da:                                            ; preds = %bb.cz
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9023
  br label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread

bb.db:                                            ; preds = %.body.thread.i.i, %bb.ct, %bb.cm
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !9023
  unreachable

bb.dc:                                            ; preds = %.loopexit.i.i
  %i.jz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9023
  %i.ka = and i64 %i.jz, 9223372036854775807
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %.noexc31.i.i, !prof !29

.noexc31.i.i:                                     ; preds = %bb.dc
  %i.kc = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc34 unwind label %bb.df

.noexc34:                                         ; preds = %.noexc31.i.i
  br i1 %i.kc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc34
  store atomic i8 1, ptr %i.hh monotonic, align 4, !noalias !9023
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i: ; preds = %bb.dd, %.noexc34, %bb.dc, %.loopexit.i.i
  %i.kd = atomicrmw xchg ptr %.val19, i32 0 release, align 4, !noalias !9023
  %i.ke = icmp eq i32 %i.kd, 2
  br i1 %i.ke, label %bb.de, label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit, !prof !27

bb.de:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val19)
          to label %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit unwind label %bb.df

.body.thread.i.i:                                 ; preds = %bb.cm, %bb.cb, %.body.thread71.i.i, %.noexc25.i.i
  %.pn65.i.i = phi { ptr, i32 } [ %i.hk, %bb.cb ], [ %eh.lpad-body27.i.i, %.noexc25.i.i ], [ %lpad.thr_comm.i.i, %.body.thread71.i.i ], [ %i.jb, %bb.cm ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_(i8 %.sroa.09.0.copyload, ptr %.sroa.15.0.copyload) #69
          to label %.body30 unwind label %bb.db, !noalias !9023

bb.df:                                            ; preds = %bb.de, %.noexc31.i.i, %bb.cy, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.aw, %.body.thread.i.i.i, %.noexc25.i.i, %.body.thread.i.i, %bb.df
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.kf, %bb.df ], [ %eh.lpad-body26.i.i.i, %.body.thread.i.i.i ], [ %i.fc, %bb.aw ], [ %.pn65.i.i, %.body.thread.i.i ], [ %eh.lpad-body27.i.i, %.noexc25.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %.body38

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread: ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE10start_sendB23_.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i, %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i
  %.sroa.24.3.ph = phi ptr [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i ], [ undef, %bb.bv ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i ], [ %.sroa.15.0.copyload, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE10start_sendB23_.exit.i.i ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i ]
  %.sroa.14.3.ph = phi i8 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i ], [ undef, %bb.bv ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i ], [ %.sroa.09.0.copyload, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE10start_sendB23_.exit.i.i ], [ undef, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i ]
  %i.kg = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5EntryECs63DIHKhvmTb_10lance_core.exit29.i.i ], [ false, %bb.bv ], [ false, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.thread.i.i ], [ true, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE10start_sendB23_.exit.i.i ], [ false, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_4moka14MokaCacheEntryEE5writeB23_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %bb.dg

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread26: ; preds = %_RNCNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB7_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB23_4moka14MokaCacheEntryEE8try_send0B25_.exit.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  br label %.thread111

_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit: ; preds = %bb.de, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710)
  %switch.not = icmp eq i8 %i.jl, 0
  br i1 %switch.not, label %bb.dg, label %.thread111

.thread111:                                       ; preds = %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, i64 7, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2p_4moka14MokaCacheEntryEEEB2r_.exit

bb.dg:                                            ; preds = %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit
  %.sroa.05.323 = phi i1 [ %i.kg, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread ], [ true, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit ]
  %.sroa.14.322 = phi i8 [ %.sroa.14.3.ph, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread ], [ %.sroa.09.0.copyload, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit ]
  %.sroa.24.321 = phi ptr [ %.sroa.24.3.ph, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit.thread ], [ %.sroa.15.0.copyload, %_RNvMs2_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_6SenderINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1T_4moka14MokaCacheEntryEE8try_sendB1V_.exit ] ; 5 uses
  %i.kh = icmp eq i8 %.sroa.14.322, 0
  %or.cond = select i1 %.sroa.05.323, i1 %i.kh, i1 false
  br i1 %or.cond, label %bb.dh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2p_4moka14MokaCacheEntryEEEB2r_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2p_4moka14MokaCacheEntryEEEB2r_.exit: ; preds = %.thread111, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i, %bb.dh, %bb.dg
  %.sroa.05.0122 = phi i64 [ 1, %.thread111 ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i ], [ -1, %bb.dh ], [ -1, %bb.dg ]
  %.sroa.3.sroa.3.0121 = phi ptr [ %.sroa.15.0.copyload, %.thread111 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i ], [ undef, %bb.dh ], [ undef, %bb.dg ]
  %.sroa.3.sroa.0.0120 = phi i8 [ %.sroa.09.0.copyload, %.thread111 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i ], [ undef, %bb.dh ], [ undef, %bb.dg ]
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
  %i.ki = atomicrmw sub ptr %.sroa.24.321, i32 1 release, align 4, !noalias !9053
  %i.kj = icmp eq i32 %i.ki, 1
  br i1 %i.kj, label %bb.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2p_4moka14MokaCacheEntryEEEB2r_.exit

bb.di:                                            ; preds = %bb.dh
  fence acquire
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka6common10concurrent3arc7ArcDataINtBG_10ValueEntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1U_4moka14MokaCacheEntryEEEB1W_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.24.321)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i unwind label %common.resume.i36, !noalias !9053

common.resume.i36:                                ; preds = %bb.di
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.24.321, i64 noundef 48, i64 noundef 8) #65, !noalias !9053
  br label %.body38

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_.exit.sink.split.i: ; preds = %bb.di
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.24.321, i64 noundef 48, i64 noundef 8) #65, !noalias !9053
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40Ppcsylqp4_17crossbeam_channel3err12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2p_4moka14MokaCacheEntryEEEB2r_.exit

.body38:                                          ; preds = %common.resume.i36, %.body30
  %.pn13 = phi { ptr, i32 } [ %eh.lpad-body31, %.body30 ], [ %i.kk, %common.resume.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %bb.dj

bb.dj:                                            ; preds = %.body, %.body38
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body38 ], [ %.pn, %.body ]
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !range !30, !noundef !24
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.dm, label %bb.dl

.body:                                            ; preds = %bb.ae, %.body.i
  %i.ko = phi ptr [ %i.by, %.body.i ], [ %i.p, %bb.ae ]
  %.pn = phi { ptr, i32 } [ %.pn6.pn.i, %.body.i ], [ %i.co, %bb.ae ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtBJ_9BaseCacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1J_4moka14MokaCacheEntryE21apply_reads_if_needed0EB1L_(ptr noundef nonnull align 8 %i.ko) #69
          to label %bb.dj unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %.body
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.dl:                                            ; preds = %bb.dm, %bb.dj
  store i8 0, ptr %i.kl, align 1
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn13.pn

bb.dm:                                            ; preds = %bb.dj
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i8, ptr %i.kq, align 8, !range !30, !noundef !24
  %i.kr = getelementptr i8, ptr %1, i64 48
  %.val16 = load ptr, ptr %i.kr, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEEB1x_(i8 %.val, ptr %.val16) #69
          to label %bb.dl unwind label %bb.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB17_4moka14MokaCacheEntryE17schedule_write_op0B19_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i.i = alloca [38 x i8], align 2      ; 10 uses
  %.sroa.6.i.i.i = alloca [38 x i8], align 2      ; 7 uses
  %.sroa.3.sroa.2 = alloca [38 x i8], align 2     ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 27 uses
  %.sroa.17 = alloca [38 x i8], align 2           ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 161 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !71, !noundef !24
  switch i8 %i.e, label %default.unreachable147 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.l
    i8 4, label %bb.c
  ]

default.unreachable147:                           ; preds = %bb.ao, %bb.m, %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !24, !align !51, !noundef !24
  store <2 x ptr> %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i64, ptr %i.p, align 8, !noundef !24 ; 2 uses
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !align !51, !noundef !24 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8
  store i8 1, ptr %i.f, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 162
  store i8 0, ptr %i.u, align 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val21.pre = load ptr, ptr %.phi.trans.insert131, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #68
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #68
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.ds
  %.val21 = phi ptr [ %.val21.pre, %bb.c ], [ %i.kz, %bb.ds ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.val22 = load ptr, ptr %2, align 8, !nonnull !24, !align !51, !noundef !24
  %i.w = invoke fastcc noundef zeroext i1 @_RNvXsp_Cs9ZJqkc64Jh8_14event_listenerNtB5_13EventListenerNtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollCs63DIHKhvmTb_10lance_core(ptr nonnull %.val21, ptr nonnull %.val22)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.v, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core(ptr %.val) #69
          to label %bb.dt unwind label %bb.du

bb.h:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.dm, %bb.an, %bb.i
  %.sink = phi i8 [ 1, %bb.dm ], [ 3, %bb.an ], [ 4, %bb.i ]
  store i8 %.sink, ptr %i.d, align 1
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.val20 = load ptr, ptr %i.v, align 8, !nonnull !24, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECs63DIHKhvmTb_10lance_core(ptr %.val20)
          to label %.loopexit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre124 = load ptr, ptr %.phi.trans.insert123, align 8
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre126 = load i64, ptr %.phi.trans.insert125, align 8
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre128 = load ptr, ptr %.phi.trans.insert127, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %.loopexit
  %i.z = phi ptr [ %.pre128, %.loopexit ], [ %i.t, %bb.b ]
  %i.aa = phi i64 [ %.pre126, %.loopexit ], [ %i.q, %bb.b ]
  %i.ab = phi ptr [ %.pre124, %.loopexit ], [ %i.m, %bb.b ]
  %i.ac = phi ptr [ %.pre, %.loopexit ], [ %i.i, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ac, ptr %i.ad, align 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.ab, ptr %.sroa.745.0..sroa_idx, align 8
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.aa, ptr %.sroa.846.0..sroa_idx, align 8
  %.sroa.947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.z, ptr %.sroa.947.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val23148 = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 344
  br label %bb.m

end_hunk_0
