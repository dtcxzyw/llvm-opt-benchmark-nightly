Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.11?download=true
inline.NumInlined: 354
inline.NumDeleted: 184
begin_hunk_0_@_RNvMs5_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_5Inner3run:bb.a
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !5
  %i.p = add nsw i64 %i.o, -1
  %i.q = and i64 %i.p, -16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.u(ptr noundef nonnull %i.s) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.w = cmpxchg weak ptr %i.v, i8 0, i8 1 acquire monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.v, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr null, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.e
  %i.aj = invoke { ptr, i8 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE9pop_frontB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.body:                                            ; preds = %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.q, %bb.r, %bb.m, %bb.y
  %.sroa.013.1 = phi i1 [ false, %bb.aj ], [ false, %bb.m ], [ false, %bb.r ], [ false, %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.y ], [ false, %bb.q ], [ %.sroa.013.2.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.012.0 = phi i1 [ true, %bb.aj ], [ true, %bb.m ], [ true, %bb.r ], [ true, %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.y ], [ true, %bb.q ], [ %.sroa.012.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp75, %bb.aj ], [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.bi, %bb.r ], [ %lpad.loopexit.split-lp149, %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.by, %bb.y ], [ %i.bi, %bb.q ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.ak = load ptr, ptr %i.h, align 8, !noundef !5
  %i.al = icmp ne ptr %i.ak, null
  %or.cond = and i1 %.sroa.012.0, %i.al
  br i1 %or.cond, label %bb.bg, label %bb.bf

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %.backedge
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ar, %bb.aq, %bb.aw, %bb.au, %bb.at, %bb.am, %bb.v
  %.sroa.013.2.ph.ph = phi i1 [ true, %bb.v ], [ false, %bb.aw ], [ false, %bb.au ], [ false, %bb.aq ], [ true, %bb.at ], [ true, %bb.am ], [ true, %bb.ar ]
  %.sroa.012.1.ph.ph = phi i1 [ true, %bb.v ], [ false, %bb.aw ], [ true, %bb.au ], [ true, %bb.aq ], [ true, %bb.at ], [ true, %bb.am ], [ true, %bb.ar ]
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.backedge
  %i.am = extractvalue { ptr, i8 } %i.aj, 1       ; 2 uses
  %.not16 = icmp eq i8 %i.am, 2
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = extractvalue { ptr, i8 } %i.aj, 0       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.g, align 8
  store i8 %i.am, ptr %i.aa, align 8
  %i.ao = atomicrmw add ptr %i.ab, i64 -1 monotonic, align 8 ; 0 uses
  %i.ap = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ar = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load i8, ptr %i.ad, align 4, !range !15
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit: ; preds = %bb.g, %bb.h
  %i.as = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvMsc_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleE3runB9_(ptr noundef nonnull %i.as)
          to label %bb.j unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit
  %i.at = cmpxchg weak ptr %i.v, i8 0, i8 1 acquire monotonic, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.av = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.v, i64 undef, i32 noundef -1)
          to label %bb.l unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.loopexit95
  br label %.backedge

bb.m:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.bi, %bb.aj, %bb.m, %bb.bg
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.o:                                             ; preds = %bb.u, %bb.i
  %i.ax = phi i8 [ %i.bs, %bb.u ], [ %.pre, %bb.i ]
  %i.ay = trunc nuw i8 %i.ax to i1                ; 2 uses
  br i1 %i.ay, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i64, ptr %i.af, align 8, !noundef !5
  %i.ba = load i32, ptr %i.ag, align 8, !range !939, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !940
  %i.bb = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc.i unwind label %bb.q, !noalias !940 ; 2 uses

.noexc.i:                                         ; preds = %bb.p
  %i.bc = extractvalue { i64, i32 } %i.bb, 0
  %i.bd = extractvalue { i64, i32 } %i.bb, 1
  store i64 %i.bc, ptr %i.a, align 8, !noalias !940
  store i32 %i.bd, ptr %i.ah, align 8, !noalias !940
  %i.be = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.az, i32 noundef range(i32 0, 1000000000) %i.ba)
          to label %.noexc2.i unwind label %bb.q, !noalias !940 ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i
  %i.bf = extractvalue { i64, i32 } %i.be, 0
  %i.bg = extractvalue { i64, i32 } %i.be, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !940
  %i.bh = invoke noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull align 8 %i.v, i64 %i.bf, i32 noundef %i.bg)
          to label %bb.t unwind label %bb.q, !noalias !940

bb.q:                                             ; preds = %.noexc2.i, %.noexc.i, %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1, !noalias !940
  %i.bk = extractvalue { i8, i1 } %i.bj, 1
  br i1 %i.bk, label %.body, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.v, i1 noundef zeroext false)
          to label %.body unwind label %bb.s, !noalias !940

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !940
  unreachable

.loopexit95:                                      ; preds = %bb.t
  %i.bm = add i32 %i.bq, -1
  store i32 %i.bm, ptr %i.ai, align 8
  %.pre122 = load i8, ptr %i.ad, align 4, !range !15
  %i.bn = trunc nuw i8 %.pre122 to i1
  br i1 %i.bn, label %.preheader, label %.backedge.backedge

.preheader:                                       ; preds = %.loopexit95, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.z

bb.t:                                             ; preds = %.noexc2.i
  %i.bq = load i32, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.u, label %.loopexit95

bb.u:                                             ; preds = %bb.t
  %i.bs = load i8, ptr %i.ad, align 4, !range !15, !noundef !5 ; 2 uses
  %.not17 = icmp eq i8 %i.bs, 0
  %brmerge.not = and i1 %i.bh, %.not17
  br i1 %brmerge.not, label %bb.v, label %bb.o

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuENtNtNtBW_4hash6random11RandomStateE6removejECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.h, align 8, !alias.scope !941, !noundef !5
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.critedge unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.body

.critedge:                                        ; preds = %bb.w, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bz = atomicrmw add ptr %i.bt, i64 -1 monotonic, align 8 ; 0 uses
  br label %bb.al

bb.z:                                             ; preds = %.preheader, %bb.ai
  %i.ca = invoke { ptr, i8 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool4TaskE9pop_frontB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cb = extractvalue { ptr, i8 } %i.ca, 1       ; 2 uses
  %.not17.a = icmp eq i8 %i.cb, 2
  br i1 %.not17.a, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = extractvalue { ptr, i8 } %i.ca, 0       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  store ptr %i.cc, ptr %i.d, align 8
  store i8 %i.cb, ptr %i.bp, align 8
  %i.cd = atomicrmw add ptr %i.ab, i64 -1 monotonic, align 8 ; 0 uses
  %i.ce = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1
  %i.cf = extractvalue { i8, i1 } %i.ce, 1
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit36, label %bb.ac, !prof !12

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit36 unwind label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  %i.cg = atomicrmw add ptr %i.bo, i64 -1 monotonic, align 8 ; 0 uses
  br i1 %i.ay, label %bb.al, label %bb.ak

.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %.noexc37, %bb.af, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit, %bb.k
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit36: ; preds = %bb.ab, %bb.ac
  %i.ch = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = load i8, ptr %i.bp, align 8, !range !15, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit36
  %i.ck = invoke noundef nonnull ptr @_RNvMsc_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleE9into_taskB9_(ptr noundef nonnull %i.ch)
          to label %.noexc37 unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.ae
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.ck)
          to label %bb.ag unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit36
  invoke void @_RNvMsc_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleE3runB9_(ptr noundef nonnull %i.ch)
          to label %bb.ag unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af, %.noexc37
  %i.cl = cmpxchg weak ptr %i.v, i8 0, i8 1 acquire monotonic, align 1
  %i.cm = extractvalue { i8, i1 } %i.cl, 1
  br i1 %i.cm, label %bb.ai, label %bb.ah, !prof !12

bb.ah:                                            ; preds = %bb.ag
  %i.cn = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.v, i64 undef, i32 noundef -1)
          to label %bb.ai unwind label %.thread76.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.aj:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp75 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body unwind label %bb.n

bb.ak:                                            ; preds = %bb.an, %bb.ad
  %i.co = phi ptr [ %i.cr, %bb.an ], [ %i.bo, %bb.ad ]
  %i.cp = load i8, ptr %i.ad, align 4, !range !15, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ar, label %bb.ap

bb.al:                                            ; preds = %.critedge, %bb.ad
  %i.cr = phi ptr [ %i.bt, %.critedge ], [ %i.bo, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cs = atomicrmw add ptr %i.ac, i64 -1 monotonic, align 8 ; 2 uses
  store i64 %i.cs, ptr %i.c, align 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.am, label %bb.an, !prof !4

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @14, ptr noundef nonnull @15, ptr nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ak

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.as, %bb.at, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB2_14SpawnerMetrics11num_threads.exit, %bb.ak
  %i.cu = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1
  %i.cv = extractvalue { i8, i1 } %i.cu, 1
  br i1 %i.cv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit44, label %bb.aq, !prof !12

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ak
  %i.cw = invoke noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr noundef nonnull align 8 %i.co, i8 noundef 0)
          to label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB2_14SpawnerMetrics11num_threads.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB2_14SpawnerMetrics11num_threads.exit: ; preds = %bb.ar
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.as, label %bb.ap

bb.as:                                            ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB2_14SpawnerMetrics11num_threads.exit
  %i.cy = load atomic ptr, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ap, label %bb.at, !prof !12

bb.at:                                            ; preds = %bb.as
  %i.da = invoke noundef zeroext i1 @_RNvMs_NtCsfC2LXmwPSoN_11parking_lot7condvarNtB4_7Condvar15notify_one_slow(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull %i.cy)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit44: ; preds = %bb.ap, %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dc = load ptr, ptr %i.db, align 8, !noundef !5 ; 2 uses
  %.not18 = icmp eq ptr %i.dc, null
  br i1 %.not18, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit44
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !range !17, !invariant.load !5
  %i.dh = add nsw i64 %i.dg, -1
  %i.di = and i64 %i.dh, -16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.dm(ptr noundef nonnull %i.dk)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime8blocking4pool6SharedEEBK_.exit44
  %i.dn = load ptr, ptr %i.h, align 8, !noundef !5
  %.not19 = icmp eq ptr %i.dn, null
  br i1 %.not19, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.do = invoke { ptr, ptr } @_RNvMs1_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_9JoinInneruE4joinCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ay:                                            ; preds = %bb.aw
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 4 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 6 uses
  %i.dr = icmp eq ptr %i.dp, null
  br i1 %i.dr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  %i.ds = load ptr, ptr %i.dq, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ds, null
end_hunk_0
