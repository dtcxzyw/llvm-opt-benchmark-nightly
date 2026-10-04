Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEv:bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7coro_io16ib_buffer_pool_t23g_memory_usage_recorderEvE11used_memory) #36
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !280  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !86
  br label %_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEEC2Em(ptr noundef nonnull align 8 dereferenceable(612) %0, i64 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !7182
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !316
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !2200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.h, align 4, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.i, align 8, !tbaa !316
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.j, i8 0, i64 504, i1 false)
  store atomic i8 0, ptr %i.g monotonic, align 8
  store atomic i64 0, ptr %i.e monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 32, ptr %i.k, align 8, !tbaa !1464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.l, align 8, !tbaa !1465
  store atomic i64 0, ptr %i.f monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !1466
  store atomic ptr %i.k, ptr %i.d monotonic, align 8
  %i.as = lshr i64 %1, 5                          ; 2 uses
  %i.at = and i64 %1, 31
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.as, %i.av            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !1486
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !1487
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ba = mul i64 %i.aw, 328
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.ba) #59 ; 16 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %i.as, %i.av            ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, 4
  br i1 %i.be, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, 1152921504606846972
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bf = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 256
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 312
  store ptr null, ptr %i.bh, align 8, !tbaa !1488
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bg, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bi, align 8, !tbaa !1490
  %i.bj = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 584
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 640
  store ptr null, ptr %i.bl, align 8, !tbaa !1488
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bk, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bm, align 8, !tbaa !1490
  %i.bn = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 912
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 968
  store ptr null, ptr %i.bp, align 8, !tbaa !1488
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bo, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bq, align 8, !tbaa !1490
  %i.br = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1240
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1296
  store ptr null, ptr %i.bt, align 8, !tbaa !1488
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bs, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bu, align 8, !tbaa !1490
  %i.bv = add nuw nsw i64 %.011.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7178

.thread.i:                                        ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.cb, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.011.i.i.epil ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 256
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 312
  store ptr null, ptr %i.bz, align 8, !tbaa !1488
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.by, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.ca, align 8, !tbaa !1490
  %i.cb = add nuw nsw i64 %.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil, !llvm.loop !7179

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.cc, align 8, !tbaa !1487
  %xtraiter4 = and i64 %i.aw, 7                   ; 3 uses
  %i.cd = icmp samesign ult i64 %i.bd, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter8 = and i64 %i.aw, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.cu, %.lr.ph.i ] ; 9 uses
  %niter9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter9.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 320
  store i8 0, ptr %i.cf, align 8, !tbaa !1490
  %i.cg = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 648
  store i8 0, ptr %i.ch, align 8, !tbaa !1490
  %i.ci = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 976
  store i8 0, ptr %i.cj, align 8, !tbaa !1490
  %i.ck = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1304
  store i8 0, ptr %i.cl, align 8, !tbaa !1490
  %i.cm = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1632
  store i8 0, ptr %i.cn, align 8, !tbaa !1490
  %i.co = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1960
  store i8 0, ptr %i.cp, align 8, !tbaa !1490
  %i.cq = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2288
  store i8 0, ptr %i.cr, align 8, !tbaa !1490
  %i.cs = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2616
  store i8 0, ptr %i.ct, align 8, !tbaa !1490
  %i.cu = add nuw nsw i64 %.06.i, 8               ; 2 uses
  %niter9.next.7 = add i64 %niter9, 8             ; 2 uses
  %niter9.ncmp.7 = icmp eq i64 %niter9.next.7, %unroll_iter8
  br i1 %niter9.ncmp.7, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !7180

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.cu, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.cx, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter5 = phi i64 [ %epil.iter5.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [328 x i8], ptr %i.bb, i64 %.06.i.epil
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 320
  store i8 0, ptr %i.cw, align 8, !tbaa !1490
  %i.cx = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter5.next = add i64 %epil.iter5, 1       ; 2 uses
  %epil.iter5.cmp.not = icmp eq i64 %epil.iter5.next, %xtraiter4
  br i1 %epil.iter5.cmp.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !7181

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit
  %.02130 = phi ptr [ %i.e, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1498 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2202 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.g, align 8, !tbaa !2204
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit: ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.02130, align 8, !tbaa !263
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.02130) #36, !inline_history !7183
  tail call void @free(ptr noundef nonnull %.02130) #36
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7destroyINSB_12ProducerBaseEEEvPT_.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %.not2331 = icmp eq ptr %i.k, null
  br i1 %.not2331, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1466 ; 2 uses
  %cond47 = icmp eq ptr %i.m, null
  br i1 %cond47, label %._crit_edge35, label %.preheader

.preheader:                                       ; preds = %.lr.ph34.preheader, %.preheader
  %i.n = phi ptr [ %i.p, %.preheader ], [ %i.m, %.lr.ph34.preheader ] ; 2 uses
  %.0203248 = phi ptr [ %i.n, %.preheader ], [ %i.k, %.lr.ph34.preheader ]
  tail call void @free(ptr noundef nonnull %.0203248) #36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1466 ; 2 uses
  %cond = icmp eq ptr %i.p, null
  br i1 %cond, label %._crit_edge35, label %.preheader

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34.preheader, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8 ; 2 uses
  %.not2436 = icmp eq ptr %i.r, null
  br i1 %.not2436, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge35, %bb.d
  %.037 = phi ptr [ %i.t, %bb.d ], [ %i.r, %._crit_edge35 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.037, i64 312
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.037, i64 320
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1490, !range !414, !noundef !366
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph39
  tail call void @free(ptr noundef nonnull %.037) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph39
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %._crit_edge40, label %.lr.ph39, !llvm.loop !7184

._crit_edge40:                                    ; preds = %bb.d, %._crit_edge35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1487 ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge40
  tail call void @free(ptr noundef nonnull %i.y) #36
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINSB_5BlockEEEvPT_m.exit: ; preds = %.preheader.preheader.i, %._crit_edge40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !763  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !279
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #36
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_tD2Ev(ptr noundef nonnull align 8 dead_on_return(1352) dereferenceable(1352) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !310
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !311
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !119
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !119
  br label %_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev.exit, !prof !291

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev.exit

_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev.exit:  ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !623  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !154

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8functionIFvRN7easylog8record_tEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2756
  br label %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2758
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #50
  br label %_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt8functionIFvRN7easylog8record_tEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRN7easylog8record_tEEES5_EvT_S7_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #10 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEEC2Em(ptr noundef nonnull align 8 dereferenceable(612) %0, i64 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !8471
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !316
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !2200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.h, align 4, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.i, align 8, !tbaa !316
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.j, i8 0, i64 504, i1 false)
  store atomic i8 0, ptr %i.g monotonic, align 8
  store atomic i64 0, ptr %i.e monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 32, ptr %i.k, align 8, !tbaa !2764
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.l, align 8, !tbaa !2765
  store atomic i64 0, ptr %i.f monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !2766
  store atomic ptr %i.k, ptr %i.d monotonic, align 8
  %i.as = lshr i64 %1, 5                          ; 2 uses
  %i.at = and i64 %1, 31
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = add nuw nsw i64 %i.as, %i.av            ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !2776
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.az, align 8, !tbaa !2777
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ba = mul i64 %i.aw, 2632
  %i.bb = tail call noalias noundef ptr @malloc(i64 noundef %i.ba) #59 ; 16 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %i.as, %i.av            ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, 4
  br i1 %i.be, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, 1152921504606846972
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bf = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2560
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2616
  store ptr null, ptr %i.bh, align 8, !tbaa !2778
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bg, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bi, align 8, !tbaa !2780
  %i.bj = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 5192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 5248
  store ptr null, ptr %i.bl, align 8, !tbaa !2778
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 5256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bk, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bm, align 8, !tbaa !2780
  %i.bn = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7824
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 7880
  store ptr null, ptr %i.bp, align 8, !tbaa !2778
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 7888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bo, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bq, align 8, !tbaa !2780
  %i.br = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 10512
  store ptr null, ptr %i.bt, align 8, !tbaa !2778
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 10520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bs, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.bu, align 8, !tbaa !2780
  %i.bv = add nuw nsw i64 %.011.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !8467

.thread.i:                                        ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.cb, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.011.i.i.epil ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2560
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2616
  store ptr null, ptr %i.bz, align 8, !tbaa !2778
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 2624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.by, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.ca, align 8, !tbaa !2780
  %i.cb = add nuw nsw i64 %.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil, !llvm.loop !8468

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.cc, align 8, !tbaa !2777
  %xtraiter4 = and i64 %i.aw, 7                   ; 3 uses
  %i.cd = icmp samesign ult i64 %i.bd, 8
  br i1 %i.cd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter8 = and i64 %i.aw, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.cu, %.lr.ph.i ] ; 9 uses
  %niter9 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter9.next.7, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2624
  store i8 0, ptr %i.cf, align 8, !tbaa !2780
  %i.cg = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 5256
  store i8 0, ptr %i.ch, align 8, !tbaa !2780
  %i.ci = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 7888
  store i8 0, ptr %i.cj, align 8, !tbaa !2780
  %i.ck = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 10520
  store i8 0, ptr %i.cl, align 8, !tbaa !2780
  %i.cm = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 13152
  store i8 0, ptr %i.cn, align 8, !tbaa !2780
  %i.co = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15784
  store i8 0, ptr %i.cp, align 8, !tbaa !2780
  %i.cq = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 18416
  store i8 0, ptr %i.cr, align 8, !tbaa !2780
  %i.cs = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 21048
  store i8 0, ptr %i.ct, align 8, !tbaa !2780
  %i.cu = add nuw nsw i64 %.06.i, 8               ; 2 uses
  %niter9.next.7 = add i64 %niter9, 8             ; 2 uses
  %niter9.ncmp.7 = icmp eq i64 %niter9.next.7, %unroll_iter8
  br i1 %niter9.ncmp.7, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !8469

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.cu, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.cx, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter5 = phi i64 [ %epil.iter5.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [2632 x i8], ptr %i.bb, i64 %.06.i.epil
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2624
  store i8 0, ptr %i.cw, align 8, !tbaa !2780
  %i.cx = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter5.next = add i64 %epil.iter5, 1       ; 2 uses
  %epil.iter5.cmp.not = icmp eq i64 %epil.iter5.next, %xtraiter4
  br i1 %epil.iter5.cmp.not, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !8470

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #8 align 2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7easylog8appenderD2Ev(ptr noundef nonnull align 8 dead_on_return(1361) dereferenceable(1361) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !411
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #36 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #52
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.e = load atomic i8, ptr %i.d seq_cst, align 8, !range !414, !noundef !366
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store atomic i8 1, ptr %i.d seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #36 ; 0 uses
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.a, align 8, !tbaa !411
  %.not2.i = icmp eq i64 %.sroa.0.0.copyload.i1.i, 0
  br i1 %.not2.i, label %_ZN7easylog8appender4stopEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7easylog8appender4stopEv.exit unwind label %bb.h

_ZN7easylog8appender4stopEv.exit:                 ; preds = %bb.e, %bb.a, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #36
  %.sroa.0.0.copyload.i.i2 = load i64, ptr %i.a, align 8, !tbaa !411
  %.not.i3 = icmp eq i64 %.sroa.0.0.copyload.i.i2, 0
  br i1 %.not.i3, label %_ZNSt6threadD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7easylog8appender4stopEv.exit
  tail call void @_ZSt9terminatev() #49
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN7easylog8appender4stopEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %i.j) #36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.k) #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6threadD2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !279
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6threadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #49
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(612) dereferenceable(612) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit
  %.02130 = phi ptr [ %i.e, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1498 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2202 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.g, align 8, !tbaa !2204
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit: ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %.02130, align 8, !tbaa !263
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.02130) #36, !inline_history !8472
  tail call void @free(ptr noundef nonnull %.02130) #36
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE7destroyINS6_12ProducerBaseEEEvPT_.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %.not2331 = icmp eq ptr %i.k, null
  br i1 %.not2331, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2766 ; 2 uses
  %cond47 = icmp eq ptr %i.m, null
  br i1 %cond47, label %._crit_edge35, label %.preheader

.preheader:                                       ; preds = %.lr.ph34.preheader, %.preheader
  %i.n = phi ptr [ %i.p, %.preheader ], [ %i.m, %.lr.ph34.preheader ] ; 2 uses
  %.0203248 = phi ptr [ %i.n, %.preheader ], [ %i.k, %.lr.ph34.preheader ]
  tail call void @free(ptr noundef nonnull %.0203248) #36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2766 ; 2 uses
  %cond = icmp eq ptr %i.p, null
  br i1 %cond, label %._crit_edge35, label %.preheader

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34.preheader, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8 ; 2 uses
  %.not2436 = icmp eq ptr %i.r, null
  br i1 %.not2436, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %._crit_edge35, %bb.d
  %.037 = phi ptr [ %i.t, %bb.d ], [ %i.r, %._crit_edge35 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.037, i64 2616
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.037, i64 2624
  %i.v = load i8, ptr %i.u, align 8, !tbaa !2780, !range !414, !noundef !366
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph39
  tail call void @free(ptr noundef nonnull %.037) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph39
  %.not24 = icmp eq ptr %i.t, null
  br i1 %.not24, label %._crit_edge40, label %.lr.ph39, !llvm.loop !8473

._crit_edge40:                                    ; preds = %bb.d, %._crit_edge35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2777 ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge40
  tail call void @free(ptr noundef nonnull %i.y) #36
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE13destroy_arrayINS6_5BlockEEEvPT_m.exit: ; preds = %._crit_edge40, %.preheader.preheader.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !2753, !range !414, !noundef !366
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

end_hunk_1
