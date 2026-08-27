Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE:bb.a

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i10.i.i.epil, %bb.bs, %bb.br
  %i.it = load atomic i64, ptr %i.hl acquire, align 8, !noalias !2590 ; 3 uses
  %i.iu = load atomic ptr, ptr %i.hn acquire, align 8, !noalias !2590
  %i.iv = and i64 %i.it, 1
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.bq, label %.critedge.i.i.i.i

.loopexit65.i.i.i.i:                              ; preds = %bb.br
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bv
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit65.i.i.i.i
  %.sroa.043.2.ph.i.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit65.i.i.i.i ], [ %.sroa.043.1.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit65.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ix = icmp eq ptr %.sroa.043.2.ph.i.i.i.i, null
  br i1 %i.ix, label %.thread113.i, label %.thread55.i.i.i.i

.thread55.i.i.i.i:                                ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.2.ph.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2590
  br label %.thread113.i

.critedge.i.i.i.i:                                ; preds = %.outer.backedge.i.i.i.i, %.loopexit.i.i.i.i, %bb.cc
  %.sroa.9.0.i.i.i = phi i64 [ %.lcssa.i.i.i, %bb.cc ], [ 0, %.loopexit.i.i.i.i ], [ 0, %.outer.backedge.i.i.i.i ]
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.05.1.i.i.i.i, %bb.cc ], [ null, %.loopexit.i.i.i.i ], [ null, %.outer.backedge.i.i.i.i ] ; 2 uses
  %.sroa.043.3.i.i.i.i = phi ptr [ %.sroa.043.1.i.i.i.i, %bb.cc ], [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i.i, %.outer.backedge.i.i.i.i ] ; 2 uses
  %i.iy = icmp eq ptr %.sroa.043.3.i.i.i.i, null
  br i1 %i.iy, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %.critedge.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2590
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i": ; preds = %bb.cg, %.critedge.i.i.i.i
  %i.iz = icmp eq ptr %.sroa.4.0.i.i.i, null
  br i1 %i.iz, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hda1c33b8c389c7c1E.exit.fold.split.i.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.9.0.i.i.i
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i": ; preds = %bb.cd
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %i.hn release, align 8, !noalias !2590
  %i.jc = atomicrmw add ptr %i.hl, i64 2 release, align 8, !noalias !2590 ; 0 uses
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %.sroa.05.1.i.i.i.i release, align 8, !noalias !2590
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i.i.i, i64 248
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"
  %.sink.i.i.i = phi ptr [ %i.jd, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i" ], [ %i.jb, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i" ]
  %i.je = atomicrmw or ptr %.sink.i.i.i, i64 1 release, align 8, !noalias !2481 ; 0 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val13.i, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.jf)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcbc5b93ad66d145eE.exit.i" unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2481

bb.ch:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2481
  %i.jg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1000000000, ptr %i.jg, align 8, !noalias !2481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2481
  %i.jh = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false), !noalias !2481
  %i.ji = cmpxchg ptr %.val13.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !2595
  %i.jj = extractvalue { i32, i1 } %i.ji, 1
  br i1 %i.jj, label %.noexc39.i, label %bb.ci, !prof !145

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.val13.i)
          to label %.noexc39.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2481

.noexc39.i:                                       ; preds = %bb.ci, %bb.ch
  %i.jk = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !2595
  %i.jl = and i64 %i.jk, 9223372036854775807
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i", label %bb.cj, !prof !145

bb.cj:                                            ; preds = %.noexc39.i
  %i.jn = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc40.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2481

.noexc40.i:                                       ; preds = %bb.cj
  %i.jo = xor i1 %i.jn, true
  %i.jp = zext i1 %i.jo to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i": ; preds = %.noexc40.i, %.noexc39.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.jp, %.noexc40.i ], [ 0, %.noexc39.i ] ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val13.i, i64 4 ; 3 uses
  %i.jr = load atomic i8, ptr %i.jq monotonic, align 1, !noalias !2595
  %.not70.i.i.i = icmp eq i8 %i.jr, 0
  br i1 %.not70.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i", label %bb.ck, !prof !145

bb.ck:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2598
  store ptr %.val13.i, ptr %i.ak, align 8, !noalias !2598
  %i.js = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.js, align 8, !noalias !2598
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.cm unwind label %bb.cl, !noalias !2602

bb.cl:                                            ; preds = %bb.ck
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #36
          to label %.thread113.i unwind label %bb.cn, !noalias !2602

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2602
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"
  %i.jv = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %i.jw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 72 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !2603, !noalias !2606, !noundef !8 ; 6 uses
  %i.jy = icmp ult i64 %i.jx, 384307168202282326
  call void @llvm.assume(i1 %i.jy)
  %i.jz = icmp eq i64 %i.jx, 0
  br i1 %i.jz, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i"
  %i.ka = call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %.val13.i, i64 64
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !2603, !noalias !2606, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.jx, 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i13.i.i

.lr.ph.i.i.i13.i.i:                               ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i", %bb.co
  %.sroa.02.015.i.i.i.i.i = phi i64 [ %i.kx, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i" ], [ 0, %bb.co ] ; 4 uses
  %i.kf = phi ptr [ %i.kg, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i" ], [ %i.kd, %bb.co ] ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.kh = load ptr, ptr %i.kf, align 8, !alias.scope !2608, !noalias !2611, !nonnull !8, !noundef !8 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !2615, !noundef !8
  %.not.i.i.i.i14.i.i = icmp eq i64 %i.kj, %i.kb
  br i1 %.not.i.i.i.i14.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i", label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.i.i13.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !2608, !noalias !2611, !noundef !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kn = cmpxchg ptr %i.km, i64 0, i64 %i.kl acq_rel acquire, align 8, !noalias !2615
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.kn, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %bb.cq, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i"

bb.cq:                                            ; preds = %bb.cp
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !2608, !noalias !2611, !noundef !8 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store atomic ptr %i.kp, ptr %i.kr release, align 8, !noalias !2615
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !noalias !2615, !nonnull !8, !noundef !8
  %i.kt = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ku = atomicrmw xchg ptr %i.kt, i32 1 release, align 4, !noalias !2615
  %i.kv = icmp eq i32 %i.ku, -1
  br i1 %i.kv, label %bb.ct, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.kw = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.kt)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i unwind label %bb.ef, !noalias !2481 ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i": ; preds = %bb.cp, %.lr.ph.i.i.i13.i.i
  %i.kx = add nuw nsw i64 %.sroa.02.015.i.i.i.i.i, 1
  %i.ky = icmp eq ptr %i.kg, %i.ke
  br i1 %i.ky, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %.lr.ph.i.i.i13.i.i

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.kz = icmp samesign ult i64 %.sroa.02.015.i.i.i.i.i, %i.jx
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %.sroa.02.015.i.i.i.i.i ; 4 uses
  %.sroa.034.0.copyload35.i.i.i = load ptr, ptr %i.la, align 8, !noalias !2619 ; 2 uses
  %.sroa.8.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx36.i.i.i, i64 16, i1 false), !noalias !2619
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = xor i64 %.sroa.02.015.i.i.i.i.i, -1
  %i.ld = add nsw i64 %i.jx, %i.lc
  %i.le = mul nuw nsw i64 %i.ld, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.la, ptr nonnull align 8 %i.lb, i64 %i.le, i1 false), !noalias !2620
  %i.lf = add nsw i64 %i.jx, -1
  store i64 %i.lf, ptr %i.jw, align 8, !alias.scope !2623, !noalias !2624
  %.not.i19.i.i = icmp eq ptr %.sroa.034.0.copyload35.i.i.i, null
  br i1 %.not.i19.i.i, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2481
  store ptr %.sroa.034.0.copyload35.i.i.i, ptr %i.al, align 8, !noalias !2481
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !2481
  %i.lg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !2481, !noundef !8
  store ptr %i.lh, ptr %i.jh, align 8, !noalias !2481
  br i1 %i.jv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.li = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !2481
  %i.lj = and i64 %i.li, 9223372036854775807
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cw, !prof !145

bb.cw:                                            ; preds = %bb.cv
  %i.ll = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i.i.i unwind label %bb.cz, !noalias !2481

.noexc16.i.i.i:                                   ; preds = %bb.cw
  br i1 %i.ll, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.noexc16.i.i.i
  store atomic i8 1, ptr %i.jq monotonic, align 4, !noalias !2481
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i: ; preds = %bb.cx, %.noexc16.i.i.i, %bb.cv, %bb.cu
  %i.lm = atomicrmw xchg ptr %.val13.i, i32 0 release, align 4, !noalias !2481
  %i.ln = icmp eq i32 %i.lm, 2
  br i1 %i.ln, label %bb.cy, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i.i.i", !prof !136

bb.cy:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.val13.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i.i.i" unwind label %bb.cz, !noalias !2481

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i: ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i", %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.lo = getelementptr inbounds nuw i8, ptr %.val13.i, i64 104
  %i.lp = load i8, ptr %i.lo, align 8, !range !348, !noalias !2481, !noundef !8
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.ea, label %bb.dg

bb.cz:                                            ; preds = %bb.dd, %bb.cy, %bb.cw
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  %i.ls = load ptr, ptr %i.al, align 8, !alias.scope !2637, !noalias !2481, !nonnull !8, !noundef !8
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 release, align 8, !noalias !2638
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.da, label %.thread113.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.thread113.i unwind label %bb.df, !noalias !2481

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i.i.i": ; preds = %bb.cy, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  %.val15.i.i.i = load ptr, ptr %i.jh, align 8, !noalias !2481, !noundef !8 ; 3 uses
  %i.lv = icmp eq ptr %.val15.i.i.i, null
  br i1 %i.lv, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i.i.i"
  %i.lw = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 2
  store i8 1, ptr %i.lw, align 1, !noalias !2481
  %i.lx = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 1
  store atomic i8 1, ptr %i.lx release, align 1, !noalias !2481
  call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %i.ly = load ptr, ptr %i.al, align 8, !alias.scope !2651, !noalias !2481, !nonnull !8, !noundef !8
  %i.lz = atomicrmw sub ptr %i.ly, i64 1 release, align 8, !noalias !2652
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %bb.dc, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit20.i.i.i"

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit20.i.i.i" unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2481

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit20.i.i.i": ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2481
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17h4cf04cdf96a7fdd7E.exit.i.i"

bb.dd:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i.i.i"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #35
          to label %bb.de unwind label %bb.cz, !noalias !2481

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.ef, %bb.da
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2481
  unreachable

bb.dg:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2653
  store ptr %i.am, ptr %i.aj, align 8, !noalias !2481
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8, !noalias !2481
  %.sroa.747.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.val13.i, ptr %.sroa.747.0..sroa_idx.i.i.i, align 8, !noalias !2481
  %.sroa.852.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %.val13.i, ptr %.sroa.852.0..sroa_idx.i.i.i, align 8, !noalias !2481
  %.sroa.957.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 5 uses
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.957.0..sroa_idx.i.i.i, align 8, !noalias !2481
  %i.mc = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i8, ptr %i.md, align 8, !range !1418, !noalias !2656, !noundef !8
  %i.mf = icmp eq i8 %i.me, 1
  br i1 %i.mf, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i16.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i15.i.i, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i15.i.i: ; preds = %bb.dg
  %i.mg = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.mc, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i.i.i.i unwind label %bb.du, !noalias !2653 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i15.i.i
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h56773c4f5c780542E.exit.i.i.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i16.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i16.i.i: ; preds = %.noexc.i.i.i.i, %bb.dg
  %.sroa.0.0.i.i.i2.i.i.i17.i.i = phi ptr [ %i.mg, %.noexc.i.i.i.i ], [ %i.mc, %bb.dg ] ; 4 uses
  %i.mi = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i17.i.i, align 8, !noalias !2653, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i17.i.i, align 8, !noalias !2653
  %.not.i.i.i21.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i21.i.i.i, label %bb.dh, label %bb.do, !prof !136

bb.dh:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2653
  %i.mj = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %bb.di unwind label %bb.du, !noalias !2653 ; 4 uses

bb.di:                                            ; preds = %bb.dh
  store ptr %i.mj, ptr %i.ai, align 8, !noalias !2653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2653
  store i8 2, ptr %.sroa.957.0..sroa_idx.i.i.i, align 8, !noalias !2653
  store ptr %i.am, ptr %i.ag, align 8, !noalias !2481
  %.sroa.642.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.an, ptr %.sroa.642.0..sroa_idx45.i.i.i, align 8, !noalias !2481
  %.sroa.747.0..sroa_idx50.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.val13.i, ptr %.sroa.747.0..sroa_idx50.i.i.i, align 8, !noalias !2481
  %.sroa.852.0..sroa_idx55.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %.val13.i, ptr %.sroa.852.0..sroa_idx55.i.i.i, align 8, !noalias !2481
  %.sroa.4.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !2653
  %i.mk = invoke fastcc noundef i8 @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag, ptr nonnull %i.mj)
          to label %bb.dl unwind label %bb.dj, !noalias !2653

bb.dj:                                            ; preds = %bb.di
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = atomicrmw sub ptr %i.mj, i64 1 release, align 8, !noalias !2663
  %i.mn = icmp eq i64 %i.mm, 1
  br i1 %i.mn, label %bb.dk, label %.body.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.body.i.i.i.i unwind label %bb.dn, !noalias !2653

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2653
  %i.mo = atomicrmw sub ptr %i.mj, i64 1 release, align 8, !noalias !2670
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.dm, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit25.i.i.i.i.i.i"

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit25.i.i.i.i.i.i" unwind label %bb.du, !noalias !2653

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit25.i.i.i.i.i.i": ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2653
  br label %.noexc43.i

bb.dn:                                            ; preds = %bb.dt, %bb.dk
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2653
  unreachable

bb.do:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2653
  store ptr %i.mi, ptr %i.ah, align 8, !noalias !2653
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store atomic i64 0, ptr %i.mr release, align 8, !noalias !2653
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E":bb.a
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.aw ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.05.1.i.i, %bb.aw ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.043.3.i.i = phi ptr [ %.sroa.043.1.i.i, %bb.aw ], [ %.sroa.043.0.ph86.i.i, %.loopexit.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.ff = icmp eq ptr %.sroa.043.3.i.i, null
  br i1 %i.ff, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", label %bb.ba

bb.ba:                                            ; preds = %.critedge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3854
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i"

.body.thread18.i:                                 ; preds = %bb.ay, %.noexc24.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i11

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i": ; preds = %bb.ba, %.critedge.i.i
  %i.fg = icmp eq ptr %.sroa.4.0.i, null
  br i1 %i.fg, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit", label %bb.bb

bb.bb:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i"
  %.sroa.4.127.i = phi ptr [ %.sroa.05.1.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.4.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ]
  %.sroa.9.126.i = phi i64 [ 30, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.9.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ] ; 2 uses
  %i.fh = icmp samesign ult i64 %.sroa.9.126.i, 31
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.127.i, i64 %.sroa.9.126.i ; 2 uses
  store ptr %0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = atomicrmw or ptr %i.fj, i64 1 release, align 8 ; 0 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.fl)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit"

.body.thread.i11:                                 ; preds = %.body.thread18.i, %.thread55.i.i, %bb.az
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread18.i ], [ %lpad.phi.i.i, %.thread55.i.i ], [ %lpad.phi.i.i, %bb.az ] ; 2 uses
  %i.fm = icmp eq ptr %0, null
  br i1 %i.fm, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %.body.thread.i11
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit": ; preds = %bb.aj, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %bb.bb
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.bb ], [ 1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ], [ 1, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.do

bb.be:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %0, ptr %i.n, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1000000000, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.fq = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !3859
  %i.fr = extractvalue { i32, i1 } %i.fq, 1
  br i1 %i.fr, label %.noexc.i19, label %bb.bf, !prof !145

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc.i19 unwind label %.split.thread.i

.noexc.i19:                                       ; preds = %bb.bf, %bb.be
  %i.fs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3859
  %i.ft = and i64 %i.fs, 9223372036854775807
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.bh, label %bb.bg, !prof !145

bb.bg:                                            ; preds = %.noexc.i19
  %i.fv = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i unwind label %.split.thread.i

.noexc16.i:                                       ; preds = %bb.bg
  %i.fw = xor i1 %i.fv, true
  %i.fx = zext i1 %i.fw to i8
  br label %bb.bh

.body.i:                                          ; preds = %bb.bz, %bb.by
  br i1 %.sroa.04.4.i, label %.body.thread90.i, label %common.resume

.split.thread.i:                                  ; preds = %bb.bg, %bb.bf
  %lpad.thr_comm.i17 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread90.i

bb.bh:                                            ; preds = %.noexc16.i, %.noexc.i19
  %.sroa.01.0.i.i.i = phi i8 [ %i.fx, %.noexc16.i ], [ 0, %.noexc.i19 ] ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.fz = load atomic i8, ptr %i.fy monotonic, align 1, !noalias !3859
  %.not94.i = icmp eq i8 %i.fz, 0
  br i1 %.not94.i, label %bb.bm, label %bb.bi, !prof !145

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3862
  store ptr %.8.val, ptr %i.i, align 8, !noalias !3862
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.ga, align 8, !noalias !3862
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.bk unwind label %bb.bj, !noalias !3866

bb.bj:                                            ; preds = %bb.bi
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #36
          to label %.body.thread90.i unwind label %bb.bl, !noalias !3866

bb.bk:                                            ; preds = %bb.bi
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3866
  unreachable

bb.bm:                                            ; preds = %bb.bh
  %i.gd = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  %i.ge = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !3867, !noalias !3870, !noundef !8 ; 6 uses
  %i.gg = icmp ult i64 %i.gf, 384307168202282326
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = icmp eq i64 %i.gf, 0
  br i1 %i.gh, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gi = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !3867, !noalias !3870, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.gf, 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i.i
  br label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i", %bb.bn
  %.sroa.02.015.i.i.i = phi i64 [ %i.hf, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i" ], [ 0, %bb.bn ] ; 4 uses
  %i.gn = phi ptr [ %i.go, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i" ], [ %i.gl, %bb.bn ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  %i.gp = load ptr, ptr %i.gn, align 8, !alias.scope !3872, !noalias !3875, !nonnull !8, !noundef !8 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !3879, !noundef !8
  %.not.i.i.i.i21 = icmp eq i64 %i.gr, %i.gj
  br i1 %.not.i.i.i.i21, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i", label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i20
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !3872, !noalias !3875, !noundef !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gv = cmpxchg ptr %i.gu, i64 0, i64 %i.gt acq_rel acquire, align 8, !noalias !3879
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.gv, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bp, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i"

bb.bp:                                            ; preds = %bb.bo
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !3872, !noalias !3875, !noundef !8 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store atomic ptr %i.gx, ptr %i.gz release, align 8, !noalias !3879
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !3879, !nonnull !8, !noundef !8
  %i.hb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 40 ; 2 uses
  %i.hc = atomicrmw xchg ptr %i.hb, i32 1 release, align 4, !noalias !3879
  %i.hd = icmp eq i32 %i.hc, -1
  br i1 %i.hd, label %bb.bs, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.he = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.hb)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i unwind label %bb.dm ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i": ; preds = %bb.bo, %.lr.ph.i.i.i20
  %i.hf = add nuw nsw i64 %.sroa.02.015.i.i.i, 1
  %i.hg = icmp eq ptr %i.go, %i.gm
  br i1 %i.hg, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %.lr.ph.i.i.i20

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i: ; preds = %bb.bs, %bb.br
  %i.hh = icmp samesign ult i64 %.sroa.02.015.i.i.i, %i.gf
  tail call void @llvm.assume(i1 %i.hh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.sroa.02.015.i.i.i ; 4 uses
  %.sroa.043.0.copyload44.i = load ptr, ptr %i.hi, align 8, !noalias !3867 ; 2 uses
  %.sroa.8.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx45.i, i64 16, i1 false), !noalias !3867
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = xor i64 %.sroa.02.015.i.i.i, -1
  %i.hl = add nsw i64 %i.gf, %i.hk
  %i.hm = mul nuw nsw i64 %i.hl, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %i.hj, i64 %i.hm, i1 false), !noalias !3883
  %i.hn = add nsw i64 %i.gf, -1
  store i64 %i.hn, ptr %i.ge, align 8, !alias.scope !3886, !noalias !3887
  %.not.i26 = icmp eq ptr %.sroa.043.0.copyload44.i, null
  br i1 %.not.i26, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.043.0.copyload44.i, ptr %i.k, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !noundef !8
  store ptr %i.hp, ptr %i.fp, align 8
  br i1 %i.gd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.hr = and i64 %i.hq, 9223372036854775807
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bv, !prof !145

bb.bv:                                            ; preds = %bb.bu
  %i.ht = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc18.i unwind label %bb.by

.noexc18.i:                                       ; preds = %bb.bv
  br i1 %i.ht, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.noexc18.i
  store atomic i8 1, ptr %i.fy monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.bw, %.noexc18.i, %bb.bu, %bb.bt
  %i.hu = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.hv = icmp eq i32 %i.hu, 2
  br i1 %i.hv, label %bb.bx, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i", !prof !136

bb.bx:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i" unwind label %bb.by

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i: ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i", %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.hw = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.hx = load i8, ptr %i.hw, align 8, !range !348, !noundef !8
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.dh, label %bb.cg

bb.by:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i", %bb.cd, %bb.bx, %bb.bv
  %.sroa.04.4.i = phi i1 [ false, %"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i" ], [ false, %bb.cd ], [ true, %bb.bx ], [ true, %bb.bv ]
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  %i.ia = load ptr, ptr %i.k, align 8, !alias.scope !3900, !nonnull !8, !noundef !8
  %i.ib = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !noalias !3900
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.bz, label %.body.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.cf

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i": ; preds = %bb.bx, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val15.i = load ptr, ptr %i.fp, align 8, !noundef !8 ; 4 uses
  %i.id = icmp eq ptr %.val15.i, null
  br i1 %i.id, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i"
  store i64 1, ptr %.val15.i, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  store ptr %0, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  store atomic i8 1, ptr %i.if release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3910)
  %i.ig = load ptr, ptr %i.k, align 8, !alias.scope !3913, !nonnull !8, !noundef !8
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !3913
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.cb, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i"

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i"

bb.cc:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit.i"
  store i64 1, ptr %i.j, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %0, ptr %i.ij, align 8
  %i.ik = icmp eq ptr %0, null
  br i1 %i.ik, label %"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ij)
          to label %"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i" unwind label %bb.by

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i": ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"

"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i": ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #35
          to label %bb.ce unwind label %bb.by

bb.ce:                                            ; preds = %"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h73fb6e9a6a7719eaE.exit.i"
  unreachable

bb.cf:                                            ; preds = %bb.dn, %bb.dm, %bb.bz
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.cg:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3914
  store ptr %0, ptr %i.h, align 8
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.651.0..sroa_idx.i, align 8
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %.sroa.756.0..sroa_idx.i, align 8
  %.sroa.861.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %.8.val, ptr %.sroa.861.0..sroa_idx.i, align 8
  %.sroa.966.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %.8.val, ptr %.sroa.966.0..sroa_idx.i, align 8
  %.sroa.1071.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  store i8 %.sroa.01.0.i.i.i, ptr %.sroa.1071.0..sroa_idx.i, align 8
  %i.im = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i8, ptr %i.in, align 8, !range !1418, !noalias !3917, !noundef !8
  %i.ip = icmp eq i8 %i.io, 1
  br i1 %i.ip, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i23, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i22, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i22: ; preds = %bb.cg
  %i.iq = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.im, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i.i unwind label %bb.cw, !noalias !3914 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i22
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i23

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i23: ; preds = %.noexc.i.i, %bb.cg
  %.sroa.0.0.i.i.i2.i.i.i24 = phi ptr [ %i.iq, %.noexc.i.i ], [ %i.im, %bb.cg ] ; 4 uses
  %i.is = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i24, align 8, !noalias !3914, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i24, align 8, !noalias !3914
  %.not.i.i.i24.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i24.i, label %bb.ch, label %bb.co, !prof !136

bb.ch:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3914
  %i.it = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %bb.ci unwind label %bb.cw, !noalias !3914 ; 4 uses

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.it, ptr %i.g, align 8, !noalias !3914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3914
  store i8 2, ptr %.sroa.1071.0..sroa_idx.i, align 8, !noalias !3914
  store ptr %0, ptr %i.d, align 8
  %.sroa.651.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %.sroa.651.0..sroa_idx54.i, align 8
  %.sroa.756.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.756.0..sroa_idx59.i, align 8
  %.sroa.861.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.8.val, ptr %.sroa.861.0..sroa_idx64.i, align 8
  %.sroa.966.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.8.val, ptr %.sroa.966.0..sroa_idx69.i, align 8
  %.sroa.4.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 %.sroa.01.0.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i.i.i, align 8, !noalias !3914
  %i.iu = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d, ptr nonnull %i.it)
          to label %bb.cl unwind label %bb.cj, !noalias !3914 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = atomicrmw sub ptr %i.it, i64 1 release, align 8, !noalias !3924
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.ck, label %.body.i.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i unwind label %bb.cn, !noalias !3914

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3914
  %i.iy = atomicrmw sub ptr %i.it, i64 1 release, align 8, !noalias !3931
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.cm, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit26.i.i.i.i"

bb.cm:                                            ; preds = %bb.cl
end_hunk_1
begin_hunk_2_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E":bb.a
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.bs = cmpxchg ptr %i.br, i32 0, i32 1 acquire monotonic, align 4, !noalias !4033
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %.noexc41, label %bb.w, !prof !145

bb.w:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.br)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.w, %.thread
  %i.bu = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4033
  %i.bv = and i64 %i.bu, 9223372036854775807
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.ac, label %bb.x, !prof !145

bb.x:                                             ; preds = %.noexc41
  %i.bx = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  %i.by = xor i1 %i.bx, true
  %i.bz = zext i1 %i.by to i8
  br label %bb.ac

.thread31:                                        ; preds = %.split9.i, %.split9.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.cc = cmpxchg ptr %i.cb, i32 0, i32 1 acquire monotonic, align 4, !noalias !4036
  %i.cd = extractvalue { i32, i1 } %i.cc, 1
  br i1 %i.cd, label %.noexc45, label %bb.y, !prof !145

bb.y:                                             ; preds = %.thread31
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.cb)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.y, %.thread31
  %i.ce = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4036
  %i.cf = and i64 %i.ce, 9223372036854775807
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.au, label %bb.z, !prof !145

bb.z:                                             ; preds = %.noexc45
  %i.ch = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.z
  %i.ci = xor i1 %i.ch, true
  %i.cj = zext i1 %i.ci to i8
  br label %bb.au

.thread28:                                        ; preds = %.split9.i, %.split9.us.i, %bb.u
  %i.ck = load atomic i8, ptr %i.l acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"

.lr.ph.i:                                         ; preds = %.thread28, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cp, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ], [ 0, %.thread28 ] ; 6 uses
  %i.cm = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.cm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i unwind label %.loopexit

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.cn = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.cn, 7                    ; 3 uses
  %i.co = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.co, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cn, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod94 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4039

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aa, %bb.ab
  %i.cp = add i32 %.sroa.0.02.i, 1
  %i.cq = load atomic i8, ptr %i.l acquire, align 8
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"

bb.ac:                                            ; preds = %.noexc42, %.noexc41
  %.sroa.01.0.i.i = phi i8 [ %i.bz, %.noexc42 ], [ 0, %.noexc41 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.ct = load atomic i8, ptr %i.cs monotonic, align 4, !noalias !4033
  %.not49 = icmp eq i8 %i.ct, 0
  br i1 %.not49, label %bb.ah, label %bb.ad, !prof !145

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4040
  store ptr %i.br, ptr %i.b, align 8, !noalias !4040
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cu, align 8, !noalias !4040
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #35
          to label %bb.af unwind label %bb.ae, !noalias !4044

bb.ae:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %.body unwind label %bb.ag, !noalias !4044

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4044
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.cx = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !4045, !noalias !4048, !nonnull !8, !noundef !8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4045, !noalias !4048, !noundef !8 ; 7 uses
  %.idx87 = mul nuw nsw i64 %i.db, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx87
  %i.dd = icmp eq i64 %i.db, 0
  br i1 %i.dd, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph86

bb.ai:                                            ; preds = %.lr.ph86
  %i.de = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.df = add nuw nsw i64 %i.di, 1
  %i.dg = icmp eq ptr %i.de, %i.dc
  br i1 %i.dg, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ah, %bb.ai
  %i.dh = phi ptr [ %i.de, %bb.ai ], [ %i.cz, %bb.ah ] ; 2 uses
  %i.di = phi i64 [ %i.df, %bb.ai ], [ 0, %bb.ah ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !4050, !noalias !4055, !noundef !8
  %.not.i.i49 = icmp eq i64 %i.dk, %i.i
  br i1 %.not.i.i49, label %bb.aj, label %bb.ai

bb.aj:                                            ; preds = %.lr.ph86
  call void @llvm.experimental.noalias.scope.decl(metadata !4060)
  %i.dl = icmp ult i64 %i.db, 384307168202282326
  call void @llvm.assume(i1 %i.dl)
  %.not.i5.i = icmp samesign ult i64 %i.di, %i.db
  br i1 %.not.i5.i, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %bb.ak, !prof !145

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.di, i64 noundef %i.db, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc50 unwind label %bb.al

.noexc50:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.an, %bb.ak, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.br, i8 %.sroa.01.0.i.i) #36
          to label %.body unwind label %bb.at

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.di ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dn, align 8, !noalias !4045 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !4045
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = xor i64 %i.di, -1
  %i.dq = add nsw i64 %i.db, %i.dp
  %i.dr = mul nuw nsw i64 %i.dq, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.do, i64 %i.dr, i1 false), !noalias !4063
  %i.ds = add nsw i64 %i.db, -1
  store i64 %i.ds, ptr %i.da, align 8, !alias.scope !4066, !noalias !4067
  %.not11 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not11, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %bb.am, !prof !2723

bb.am:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dt = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !4068
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.an, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit" unwind label %bb.al

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread: ; preds = %bb.ai, %bb.ah, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #35
          to label %bb.h unwind label %bb.al

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.am, %bb.an
  br i1 %i.cx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.ao

bb.ao:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  %i.dv = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.ap, !prof !145

bb.ap:                                            ; preds = %bb.ao
  %i.dy = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %bb.ap
  br i1 %i.dy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, label %bb.aq

bb.aq:                                            ; preds = %.noexc53
  store atomic i8 1, ptr %i.cs monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52: ; preds = %bb.aq, %.noexc53, %bb.ao, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  %i.dz = atomicrmw xchg ptr %i.br, i32 0 release, align 4
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.ar, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55", !prof !136

bb.ar:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.br)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i52, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eb = load i64, ptr %i.f, align 8, !range !597, !noundef !8
  %i.ec = load ptr, ptr %i.m, align 8
  store i64 0, ptr %i.f, align 8
  %i.ed = trunc nuw i64 %i.eb to i1
  br i1 %i.ed, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57", label %.invoke, !prof !145

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55"
  %i.ee = phi ptr [ @268, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" ], [ @271, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee) #35
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, %.thread28
  %.pr = load i64, ptr %i.f, align 8, !alias.scope !4077
  %i.ef = icmp eq i64 %.pr, 0
  %i.eg = load ptr, ptr %i.m, align 8
  %i.eh = icmp eq ptr %i.eg, null
  %or.cond47 = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond47, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57", label %bb.as

bb.as:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
  br label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57"

bb.at:                                            ; preds = %bb.i, %bb.al, %bb.bd, %bb.bl
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.au:                                            ; preds = %.noexc46, %.noexc45
  %.sroa.01.0.i.i43 = phi i8 [ %i.cj, %.noexc46 ], [ 0, %.noexc45 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.ek = load atomic i8, ptr %i.ej monotonic, align 4, !noalias !4036
  %.not48 = icmp eq i8 %i.ek, 0
  br i1 %.not48, label %bb.az, label %bb.av, !prof !145

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4084
  store ptr %i.cb, ptr %i.c, align 8, !noalias !4084
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i43, ptr %i.el, align 8, !noalias !4084
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #35
          to label %bb.ax unwind label %bb.aw, !noalias !4088

bb.aw:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %.body unwind label %bb.ay, !noalias !4088

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4088
  unreachable

bb.az:                                            ; preds = %bb.au
  %i.eo = trunc nuw i8 %.sroa.01.0.i.i43 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4089)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !4089, !noalias !4092, !nonnull !8, !noundef !8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !4089, !noalias !4092, !noundef !8 ; 7 uses
  %.idx = mul nuw nsw i64 %i.es, 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.ew = add nuw nsw i64 %i.ez, 1
  %i.ex = icmp eq ptr %i.ev, %i.et
  br i1 %i.ex, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %bb.ba
  %i.ey = phi ptr [ %i.ev, %bb.ba ], [ %i.eq, %bb.az ] ; 2 uses
  %i.ez = phi i64 [ %i.ew, %bb.ba ], [ 0, %bb.az ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !4094, !noalias !4099, !noundef !8
  %.not.i.i58 = icmp eq i64 %i.fb, %i.i
  br i1 %.not.i.i58, label %bb.bb, label %bb.ba

bb.bb:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %i.fc = icmp ult i64 %i.es, 384307168202282326
  call void @llvm.assume(i1 %i.fc)
  %.not.i5.i59 = icmp samesign ult i64 %i.ez, %i.es
  br i1 %.not.i5.i59, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62, label %bb.bc, !prof !145

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.ez, i64 noundef %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc61 unwind label %bb.bd

.noexc61:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bf, %bb.bc, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.cb, i8 %.sroa.01.0.i.i43) #36
          to label %.body unwind label %bb.at

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62: ; preds = %bb.bb
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.ez ; 4 uses
  %.sroa.011.0.copyload12 = load ptr, ptr %i.fe, align 8, !noalias !4089 ; 3 uses
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx14, i64 16, i1 false), !noalias !4089
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = xor i64 %i.ez, -1
  %i.fh = add nsw i64 %i.es, %i.fg
  %i.fi = mul nuw nsw i64 %i.fh, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %i.ff, i64 %i.fi, i1 false), !noalias !4107
  %i.fj = add nsw i64 %i.es, -1
  store i64 %i.fj, ptr %i.er, align 8, !alias.scope !4110, !noalias !4111
  %.not = icmp eq ptr %.sroa.011.0.copyload12, null
  br i1 %.not, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, label %bb.be, !prof !2723

bb.be:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62
  store ptr %.sroa.011.0.copyload12, ptr %i.d, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  %i.fk = atomicrmw sub ptr %.sroa.011.0.copyload12, i64 1 release, align 8, !noalias !4112
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.bf, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64" unwind label %bb.bd

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread: ; preds = %bb.ba, %bb.az, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #35
          to label %bb.h unwind label %bb.bd

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64": ; preds = %bb.be, %bb.bf
  br i1 %i.eo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bg

bb.bg:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"
  %i.fm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fn = and i64 %i.fm, 9223372036854775807
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bh, !prof !145

bb.bh:                                            ; preds = %bb.bg
  %i.fp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.bh
  br i1 %i.fp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, label %bb.bi

bb.bi:                                            ; preds = %.noexc66
  store atomic i8 1, ptr %i.ej monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65: ; preds = %bb.bi, %.noexc66, %bb.bg, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit64"
  %i.fq = atomicrmw xchg ptr %i.cb, i32 0 release, align 4
  %i.fr = icmp eq i32 %i.fq, 2
  br i1 %i.fr, label %bb.bj, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68", !prof !136

bb.bj:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.cb)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i65, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fs = load i64, ptr %i.f, align 8, !range !597, !noundef !8
  %i.ft = load ptr, ptr %i.m, align 8
  store i64 0, ptr %i.f, align 8
  %i.fu = trunc nuw i64 %i.fs to i1
  br i1 %i.fu, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57", label %.invoke, !prof !145

"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit57": ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68", %bb.as, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit"
  %.sroa.0.039 = phi i64 [ 2, %bb.as ], [ 2, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" ], [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" ]
  %.sroa.4.038 = phi ptr [ undef, %bb.as ], [ undef, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17haf4474540f6188ffE.exit" ], [ %i.ec, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit55" ], [ %i.ft, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit68" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fv = insertvalue { i64, ptr } poison, i64 %.sroa.0.039, 0
  %i.fw = insertvalue { i64, ptr } %i.fv, ptr %.sroa.4.038, 1
  ret { i64, ptr } %i.fw

"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit": ; preds = %.body, %bb.i
  br i1 %.sroa.07.2, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit"
  resume { ptr, i32 } %.pn

bb.bl:                                            ; preds = %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit"
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load i8, ptr %i.fx, align 8, !range !348, !noundef !8
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.o, i8 %.val18) #36
          to label %bb.bk unwind label %bb.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.63 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 5 uses
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !align !9, !noundef !8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4121
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4121
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.p, align 8, !noalias !4121
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.q, align 8, !noalias !4121
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4121
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4124, !noalias !4127, !noundef !8 ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !range !182, !alias.scope !4124, !noalias !4127, !noundef !8
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.i unwind label %bb.d, !noalias !4127

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !4129
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %.thread46

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread46 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4124, !noalias !4127, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ac = add i64 %i.s, 1
  store i64 %i.ac, ptr %i.r, align 8, !alias.scope !4124, !noalias !4127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4121
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.j unwind label %bb.bd

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !348, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %.noexc, !prof !145

.noexc:                                           ; preds = %bb.k
  %i.al = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.l, %.noexc, %bb.k, %bb.j
  %i.am = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.m, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !136

bb.m:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.l)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %bb.m, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !315, !noundef !8 ; 4 uses
end_hunk_2
begin_hunk_3_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hc92a9a1e03f759f4E":bb.a
  unreachable

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !4138
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc34, label %bb.s, !prof !145

bb.s:                                             ; preds = %.thread
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bk)
  br label %.noexc34

.noexc34:                                         ; preds = %bb.s, %.thread
  %i.bn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4138
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %.noexc35, !prof !145

.noexc35:                                         ; preds = %.noexc34
  %i.bq = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.w

.thread31:                                        ; preds = %.split9.i, %.split9.us.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !4141
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc38, label %bb.t, !prof !145

bb.t:                                             ; preds = %.thread31
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bu)
  br label %.noexc38

.noexc38:                                         ; preds = %bb.t, %.thread31
  %i.bx = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4141
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.an, label %.noexc39, !prof !145

.noexc39:                                         ; preds = %.noexc38
  %i.ca = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i8
  br label %bb.an

.thread28:                                        ; preds = %.split9.i, %.split9.us.i, %bb.q
  %i.cd = load atomic i8, ptr %i.i acquire, align 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit"

.lr.ph.i:                                         ; preds = %.thread28, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i
  %.sroa.0.02.i = phi i32 [ %i.ci, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ], [ 0, %.thread28 ] ; 6 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.cf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %i.cg = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.cg, 7                    ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.ch, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cg, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  call void @llvm.x86.sse2.pause() #24
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4144

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.u, %bb.v
  %i.ci = add i32 %.sroa.0.02.i, 1
  %i.cj = load atomic i8, ptr %i.i acquire, align 1
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit"

bb.w:                                             ; preds = %.noexc35, %.noexc34
  %.sroa.01.0.i.i = phi i8 [ %i.bs, %.noexc35 ], [ 0, %.noexc34 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.cm = load atomic i8, ptr %i.cl monotonic, align 4, !noalias !4138
  %.not59 = icmp eq i8 %i.cm, 0
  br i1 %.not59, label %bb.ab, label %bb.x, !prof !145

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4145
  store ptr %i.bk, ptr %i.b, align 8, !noalias !4145
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cn, align 8, !noalias !4145
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #35
          to label %bb.z unwind label %bb.y, !noalias !4149

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %.thread39 unwind label %bb.aa, !noalias !4149

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4149
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.cq = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !4150, !noalias !4153, !nonnull !8, !noundef !8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !4150, !noalias !4153, !noundef !8 ; 7 uses
  %.idx93 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx93
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph92

bb.ac:                                            ; preds = %.lr.ph92
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.ab, %bb.ac
  %i.da = phi ptr [ %i.cx, %bb.ac ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ac ], [ 0, %bb.ab ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !4155, !noalias !4160, !noundef !8
  %.not.i.i42 = icmp eq i64 %i.dd, %i.h
  br i1 %.not.i.i42, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %.lr.ph92
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  %i.de = icmp ult i64 %i.cu, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  %.not.i5.i = icmp samesign ult i64 %i.db, %i.cu
  br i1 %.not.i5.i, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %bb.ae, !prof !145

bb.ae:                                            ; preds = %bb.ad
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.db, i64 noundef %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc43 unwind label %bb.af

.noexc43:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.bk, i8 %.sroa.01.0.i.i) #36
          to label %.thread39 unwind label %bb.am

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.db ; 4 uses
  %.sroa.01.0.copyload2 = load ptr, ptr %i.dg, align 8, !noalias !4150 ; 3 uses
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx4, i64 16, i1 false), !noalias !4150
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = xor i64 %i.db, -1
  %i.dj = add nsw i64 %i.cu, %i.di
  %i.dk = mul nuw nsw i64 %i.dj, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.dh, i64 %i.dk, i1 false), !noalias !4168
  %i.dl = add nsw i64 %i.cu, -1
  store i64 %i.dl, ptr %i.ct, align 8, !alias.scope !4171, !noalias !4172
  %.not7 = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %.not7, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, label %bb.ag, !prof !2723

bb.ag:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  store ptr %.sroa.01.0.copyload2, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  %i.dm = atomicrmw sub ptr %.sroa.01.0.copyload2, i64 1 release, align 8, !noalias !4173
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ah, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit" unwind label %bb.af

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread: ; preds = %bb.ac, %bb.ab, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #35
          to label %bb.h unwind label %bb.af

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.ag, %bb.ah
  br i1 %i.cq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45, label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  %i.do = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45, label %.noexc46, !prof !145

.noexc46:                                         ; preds = %bb.ai
  %i.dr = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.cl monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45: ; preds = %bb.aj, %.noexc46, %bb.ai, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  %i.ds = atomicrmw xchg ptr %i.bk, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ak, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48", !prof !136

bb.ak:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bk)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48": ; preds = %bb.ak, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.du = load i8, ptr %i.j, align 1, !range !348, !noundef !8
  %i.dv = trunc nuw i8 %i.du to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.dv, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit", label %bb.al, !prof !145

bb.al:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #35
  unreachable

bb.am:                                            ; preds = %bb.af, %bb.aw, %.thread46
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.an:                                            ; preds = %.noexc39, %.noexc38
  %.sroa.01.0.i.i36 = phi i8 [ %i.cc, %.noexc39 ], [ 0, %.noexc38 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.dy = load atomic i8, ptr %i.dx monotonic, align 4, !noalias !4141
  %.not58 = icmp eq i8 %i.dy, 0
  br i1 %.not58, label %bb.as, label %bb.ao, !prof !145

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4182
  store ptr %i.bu, ptr %i.c, align 8, !noalias !4182
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.dz, align 8, !noalias !4182
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #35
          to label %bb.aq unwind label %bb.ap, !noalias !4186

bb.ap:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %.thread39 unwind label %bb.ar, !noalias !4186

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4186
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.ec = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !4187, !noalias !4190, !nonnull !8, !noundef !8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !4187, !noalias !4190, !noundef !8 ; 7 uses
  %.idx = mul nuw nsw i64 %i.eg, 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  %i.ei = icmp eq i64 %i.eg, 0
  br i1 %i.ei, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %.lr.ph

bb.at:                                            ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  %i.ek = add nuw nsw i64 %i.en, 1
  %i.el = icmp eq ptr %i.ej, %i.eh
  br i1 %i.el, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %i.em = phi ptr [ %i.ej, %bb.at ], [ %i.ee, %bb.as ] ; 2 uses
  %i.en = phi i64 [ %i.ek, %bb.at ], [ 0, %bb.as ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !4192, !noalias !4197, !noundef !8
  %.not.i.i49 = icmp eq i64 %i.ep, %i.h
  br i1 %.not.i.i49, label %bb.au, label %bb.at

bb.au:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %i.eq = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eq)
  %.not.i5.i50 = icmp samesign ult i64 %i.en, %i.eg
  br i1 %.not.i5.i50, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53, label %bb.av, !prof !145

bb.av:                                            ; preds = %bb.au
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.en, i64 noundef %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc52 unwind label %bb.aw

.noexc52:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.ay, %bb.av, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.bu, i8 %.sroa.01.0.i.i36) #36
          to label %.thread39 unwind label %bb.am

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53: ; preds = %bb.au
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.en ; 4 uses
  %.sroa.011.0.copyload12 = load ptr, ptr %i.es, align 8, !noalias !4187 ; 3 uses
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx14, i64 16, i1 false), !noalias !4187
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = xor i64 %i.en, -1
  %i.ev = add nsw i64 %i.eg, %i.eu
  %i.ew = mul nuw nsw i64 %i.ev, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.et, i64 %i.ew, i1 false), !noalias !4205
  %i.ex = add nsw i64 %i.eg, -1
  store i64 %i.ex, ptr %i.ef, align 8, !alias.scope !4208, !noalias !4209
  %.not = icmp eq ptr %.sroa.011.0.copyload12, null
  br i1 %.not, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread, label %bb.ax, !prof !2723

bb.ax:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53
  store ptr %.sroa.011.0.copyload12, ptr %i.d, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  %i.ey = atomicrmw sub ptr %.sroa.011.0.copyload12, i64 1 release, align 8, !noalias !4210
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ay, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55" unwind label %bb.aw

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53.thread: ; preds = %bb.at, %bb.as, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit53
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #35
          to label %bb.h unwind label %bb.aw

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55": ; preds = %bb.ax, %bb.ay
  br i1 %i.ec, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %bb.az

bb.az:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"
  %i.fa = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %.noexc57, !prof !145

.noexc57:                                         ; preds = %bb.az
  %i.fd = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.fd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56, label %bb.ba

bb.ba:                                            ; preds = %.noexc57
  store atomic i8 1, ptr %i.dx monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56: ; preds = %bb.ba, %.noexc57, %bb.az, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit55"
  %i.fe = atomicrmw xchg ptr %i.bu, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.bb, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59", !prof !136

bb.bb:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bu)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59": ; preds = %bb.bb, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fg = load i8, ptr %i.j, align 1, !range !348, !noundef !8
  %i.fh = trunc nuw i8 %i.fg to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.fh, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit", label %bb.bc, !prof !145

bb.bc:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #35
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h1eb8a1e8310bae21E.exit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i, %.thread28, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48"
  %.sroa.0.0 = phi i8 [ 1, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit59" ], [ 0, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit48" ], [ 2, %.thread28 ], [ 2, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i8 %.sroa.0.0

bb.bd:                                            ; preds = %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

.thread39:                                        ; preds = %bb.ap, %bb.y, %bb.aw, %bb.af, %.thread46
  %eh.lpad-body.ph.pn = phi { ptr, i32 } [ %i.df, %bb.af ], [ %.pn, %.thread46 ], [ %i.co, %bb.y ], [ %i.er, %bb.aw ], [ %i.ea, %bb.ap ]
  resume { ptr, i32 } %eh.lpad-body.ph.pn

.thread46:                                        ; preds = %bb.e, %bb.d, %bb.bd
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bd ], [ %i.v, %bb.d ], [ %i.v, %bb.e ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12 = load i8, ptr %i.fi, align 8, !range !348, !noundef !8
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %i.l, i8 %.val12) #36
          to label %.thread39 unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !3965, !noundef !8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !8
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !8
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !315, !noundef !8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  %i.ab = icmp samesign ult i32 %i.z, 1000000000
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.ad = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ad, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.ae = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ae, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.af = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, i32 } %i.af, 1      ; 3 uses
  %i.ai = icmp eq i64 %i.ag, %i.x
  br i1 %i.ai, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.aj = icmp ult i32 %i.ah, 1000000000
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ab)
  %i.ak = icmp samesign ult i32 %i.ah, %i.z
  br i1 %i.ak, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp slt i64 %i.ag, %i.x
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.am = cmpxchg ptr %i.aa, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.an = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.am, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !3966

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !8
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !136

end_hunk_3
begin_hunk_4_@_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17h8d3ee9c2a2799b36E:bb.a

._crit_edge.i:                                    ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit"
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !4297, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val3.i = load ptr, ptr %i.aa, align 8, !noalias !4297, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40 ; 2 uses
  %i.ac = atomicrmw xchg ptr %i.ab, i32 1 release, align 4, !noalias !4297
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ab)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i unwind label %.loopexit ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i: ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.af = icmp eq ptr %i.w, %i.u
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.r

_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit: ; preds = %._crit_edge.i
  %i.ag = load i64, ptr %i.s, align 8, !noundef !8 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !8 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = zext i1 %i.am to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit
  %.sroa.0.0 = phi i8 [ %i.an, %bb.l ], [ 0, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ao seq_cst, align 8
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !145

bb.o:                                             ; preds = %bb.n
  %i.as = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.at = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.q, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit", !prof !136

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 3, 0) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !4300
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !145

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %1), !noalias !4300
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4300
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit", label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !4300
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !4300
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit", label %bb.e, !prof !145

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4303
  store ptr %1, ptr %i.a, align 8, !noalias !4303
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !4303
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @314, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #35
          to label %bb.g unwind label %bb.f, !noalias !4307

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hc6c1405b92e847b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %common.resume unwind label %bb.h, !noalias !4307

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4307
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4308)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !4308, !noalias !4311, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4308, !noalias !4311, !noundef !8 ; 9 uses
  %.idx = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.w = add nuw nsw i64 %i.z, 1
  %i.x = icmp eq ptr %i.v, %i.t
  br i1 %i.x, label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit", %bb.i
  %i.y = phi ptr [ %i.v, %bb.i ], [ %i.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit" ] ; 2 uses
  %i.z = phi i64 [ %i.w, %bb.i ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit" ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4313, !noalias !4318, !noundef !8
  %.not.i.i = icmp eq i64 %i.ab, %2
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4323)
  %i.ac = icmp ult i64 %i.s, 384307168202282326
  tail call void @llvm.assume(i1 %i.ac)
  %.not.i5.i = icmp samesign ult i64 %i.z, %i.s
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h4ad70e629583eef0E.exit.i", label %bb.k, !prof !145

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.z, i64 noundef %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h4ad70e629583eef0E.exit.i": ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.z ; 4 uses
  %.sroa.0.0.copyload13 = load ptr, ptr %i.ad, align 8, !noalias !4308
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx14, i64 16, i1 false), !noalias !4308
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = xor i64 %i.z, -1
  %i.ag = add nsw i64 %i.s, %i.af
  %i.ah = mul nuw nsw i64 %i.ag, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.ah, i1 false), !noalias !4326
  %i.ai = add nsw i64 %i.s, -1                    ; 2 uses
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !4329, !noalias !4330
  br label %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E"(ptr nonnull %1, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.s

_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit: ; preds = %bb.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h4ad70e629583eef0E.exit.i"
  %i.ak = phi i64 [ %i.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h4ad70e629583eef0E.exit.i" ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit" ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.0.015 = phi ptr [ %.sroa.0.0.copyload13, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h4ad70e629583eef0E.exit.i" ], [ null, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit" ], [ null, %bb.i ]
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = zext i1 %i.aq to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit
  %.sroa.0.0 = phi i8 [ %i.ar, %bb.m ], [ 0, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.as seq_cst, align 8
  store ptr %.sroa.0.015, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p, !prof !145

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.aw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ax = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.r, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit", !prof !136

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %1)
  br label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !4331
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !145

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !4331
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4331
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit", label %bb.e, !prof !145

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !4331
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.m, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load atomic i8, ptr %i.n monotonic, align 4, !noalias !4331
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.k, label %bb.f, !prof !145

bb.f:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4334
  store ptr %0, ptr %i.a, align 8, !noalias !4334
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.p, align 8, !noalias !4334
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @314, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #35
          to label %bb.h unwind label %bb.g, !noalias !4338

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hc6c1405b92e847b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %common.resume unwind label %bb.i, !noalias !4338

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4338
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.t, %bb.r, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.ac

bb.k:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  %i.t = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.u = load atomic i8, ptr %i.c seq_cst, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4339)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !4339, !noalias !4342, !noundef !8 ; 6 uses
  %i.z = icmp ult i64 %i.y, 384307168202282326
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !4339, !noalias !4342, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.y, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", %bb.m
  %.sroa.02.015.i.i = phi i64 [ %i.ay, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i" ], [ 0, %bb.m ] ; 4 uses
  %i.ag = phi ptr [ %i.ah, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i" ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !4344, !noalias !4347, !nonnull !8, !noundef !8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !4351, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ak, %i.ac
  br i1 %.not.i.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !4344, !noalias !4347, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = cmpxchg ptr %i.an, i64 0, i64 %i.am acq_rel acquire, align 8, !noalias !4351
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.o, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !4344, !noalias !4347, !noundef !8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store atomic ptr %i.aq, ptr %i.as release, align 8, !noalias !4351
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val2.i.i.i = load ptr, ptr %i.at, align 8, !noalias !4351, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 40 ; 2 uses
  %i.av = atomicrmw xchg ptr %i.au, i32 1 release, align 4, !noalias !4351
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.r, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.au)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit unwind label %bb.j ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i": ; preds = %bb.n, %.lr.ph.i.i
  %i.ay = add nuw nsw i64 %.sroa.02.015.i.i, 1
  %i.az = icmp eq ptr %i.ah, %i.af
  br i1 %i.az, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit", label %.lr.ph.i.i

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit: ; preds = %bb.q, %bb.r
  %i.ba = icmp samesign ult i64 %.sroa.02.015.i.i, %i.y
  tail call void @llvm.assume(i1 %i.ba)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.02.015.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !4339
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = xor i64 %.sroa.02.015.i.i, -1
  %i.be = add nsw i64 %i.y, %i.bd
  %i.bf = mul nuw nsw i64 %i.be, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false), !noalias !4355
  %i.bg = add nsw i64 %i.y, -1
  store i64 %i.bg, ptr %i.x, align 8, !alias.scope !4358, !noalias !4359
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !4360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  %i.bh = icmp eq ptr %.pr, null
  br i1 %i.bh, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit", label %bb.s

bb.s:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit
  %i.bi = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !4363
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.t, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit" unwind label %bb.j

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit": ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i", %bb.l, %bb.s, %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.u unwind label %bb.j

bb.u:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..waker..Entry$GT$$GT$17hd20e85cd157f34eaE.exit"
  %i.bk = load i64, ptr %i.x, align 8, !noundef !8 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 384307168202282326
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 384307168202282326
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = zext i1 %i.bq to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.0.0 = phi i8 [ %i.br, %bb.v ], [ 0, %bb.u ]
  store atomic i8 %.sroa.0.0, ptr %i.c seq_cst, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  br i1 %i.t, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.z, !prof !145

bb.z:                                             ; preds = %bb.y
  %i.bv = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.n monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bw = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.ab, label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit", !prof !136

bb.ab:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit"

"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E.exit": ; preds = %bb.ab, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.a
  ret void

bb.ac:                                            ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %0, i64 noundef range(i64 3, 0) %1, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !4372
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !145

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %0), !noalias !4372
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4372
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit", label %bb.d, !prof !145

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !4372
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !4372
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit", label %bb.e, !prof !145

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4375
  store ptr %0, ptr %i.b, align 8, !noalias !4375
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !4375
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @314, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #35
          to label %bb.g unwind label %bb.f, !noalias !4379

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hc6c1405b92e847b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #36
          to label %common.resume unwind label %bb.h, !noalias !4379

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4379
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.z, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9db3120d23b47f67E.exit"
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4380
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4380
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.t, align 8, !noalias !4380
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !4380
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4380
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4383, !noalias !4386, !noundef !8 ; 4 uses
  %i.x = load i64, ptr %i.q, align 8, !range !182, !alias.scope !4383, !noalias !4386, !noundef !8
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.o unwind label %bb.k, !noalias !4386

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !4388
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.n:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98a368d599e7c907E.exit"
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h1140a69572cb9419E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !4383, !noalias !4386, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !4383, !noalias !4386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4380
  %i.ah = icmp slt i64 %i.w, 384307168202282325
end_hunk_4
