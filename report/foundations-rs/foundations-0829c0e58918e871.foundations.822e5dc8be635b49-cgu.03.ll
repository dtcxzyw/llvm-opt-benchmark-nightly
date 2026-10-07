Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.03?download=true
inline.NumInlined: 1263
inline.NumDeleted: 629
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2p_5boxed3BoxDNtNtB1O_5error5ErrorNtNtB1O_6marker4SendNtB3D_4SyncEL_EEEE4recvs_0CsbaWXNhtWAp9_11foundations:bb.a
  fence acquire, !dbg !9753
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.h, !dbg !9754

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9755
  unreachable, !dbg !9755

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !9756
  unreachable, !dbg !9756

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ay, %bb.z, %bb.g, %bb.f, %bb.af, %bb.be
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.be ], [ %i.cy, %bb.af ], [ %i.cd, %bb.z ], [ %i.aa, %bb.f ], [ %i.ee, %bb.ay ], [ %i.aa, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.02.2 = phi i1 [ false, %bb.be ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.f ], [ false, %bb.ay ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.02.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !9757
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2z_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #27
          to label %bb.b unwind label %bb.av, !dbg !9758

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc30
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread13, %bb.v, %bb.bm, %bb.m, %bb.o, %bb.aj, %bb.al, %bb.bi, %bb.bk
  %.sroa.02.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.aj ], [ false, %bb.bi ], [ false, %bb.bm ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bk ], [ false, %.thread13 ], [ true, %bb.j ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64, !dbg !9759
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !9759, !alias.scope !9692, !noalias !9693, !nonnull !786, !noundef !786
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x, !dbg !9760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !9761
  %i.ah = add i64 %i.x, 1, !dbg !9762
  store i64 %i.ah, ptr %i.w, align 8, !dbg !9762, !alias.scope !9692, !noalias !9693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9763
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !9764
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9765

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9757
  %i.ak = load i8, ptr %i.aj, align 8, !dbg !9757, !range !1053, !noundef !786
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4, !dbg !9766
  %i.am = trunc nuw i8 %i.ak to i1, !dbg !9767
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !9767

bb.l:                                             ; preds = %bb.k
  %i.an = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9768
  %i.ao = and i64 %i.an, 9223372036854775807, !dbg !9769
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !9769
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !9769, !prof !942

bb.m:                                             ; preds = %bb.l
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9770

.noexc:                                           ; preds = %bb.m
  br i1 %i.aq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !9771

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4, !dbg !9772
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !9773

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4, !dbg !9774
  %i.as = icmp eq i32 %i.ar, 2, !dbg !9775
  br i1 %i.as, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, !dbg !9775, !prof !863

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9776

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9777
  %i.au = load ptr, ptr %i.at, align 8, !dbg !9777, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !dbg !9777 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !9777
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !9777, !range !1058, !noundef !786 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, %bb.p
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8, !dbg !9778 ; 3 uses
  switch i64 %i.ba, label %.thread10 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !9779

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !9780

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, %.noexc30
  %i.bb = load atomic i64, ptr %i.ay acquire, align 8, !dbg !9778 ; 3 uses
  switch i64 %i.bb, label %.thread10 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !9779

bb.q:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !9781 ; 2 uses

.noexc29:                                         ; preds = %bb.q
  %i.bd = extractvalue { i64, i32 } %i.bc, 0, !dbg !9781 ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1, !dbg !9781 ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av, !dbg !9782
  %i.bg = icmp slt i64 %i.bd, %i.av, !dbg !9783
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg, !dbg !9782
  br i1 %spec.select.i, label %bb.s, label %bb.r, !dbg !9784

bb.r:                                             ; preds = %.noexc29
  %i.bi = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8, !dbg !9785 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1, !dbg !9786
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0, !dbg !9787
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !9787
  br i1 %.sroa.18.0.in.i.i.i, label %.thread13, label %.split7.us.i, !dbg !9788

bb.s:                                             ; preds = %.noexc29
  %i.bj = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 -1, 1000000000) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !9789 ; 2 uses

.noexc30:                                         ; preds = %bb.s
  %i.bk = extractvalue { i64, i32 } %i.bj, 0, !dbg !9789
  %i.bl = extractvalue { i64, i32 } %i.bj, 1, !dbg !9789
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !9790

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ], !dbg !9791
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread13
    i64 2, label %bb.v
    i64 3, label %.thread10
  ], !dbg !9792, !prof !1147

bb.t:                                             ; preds = %.split7.us.i
  unreachable, !dbg !9793

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9794

.thread13:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9795
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9795
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !9795, !nonnull !786, !align !806, !noundef !786
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bn)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9796

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9797
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9797
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !9797, !nonnull !786, !align !806, !noundef !786
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bp)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9798

.thread10:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bq = load atomic i8, ptr %i.n acquire, align 8, !dbg !9799
  %.not2.i = icmp eq i8 %i.bq, 0, !dbg !9800
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit, !dbg !9801

.lr.ph.i:                                         ; preds = %.thread10, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.bu, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread10 ] ; 6 uses
  %i.br = icmp ult i32 %.sroa.0.03.i, 7, !dbg !9802
  br i1 %i.br, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.w, !dbg !9802

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit, !dbg !9803

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.03.i, 0, !dbg !9804
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !9805

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.bs = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i, !dbg !9806 ; 2 uses
  %xtraiter = and i32 %i.bs, 7, !dbg !9805        ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.03.i, 3, !dbg !9805
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !9805

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bs, 56, !dbg !9805
  br label %.lr.ph.i.i, !dbg !9805

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  call void @llvm.x86.sse2.pause(), !dbg !9807
  %niter.next.7 = add i32 %niter, 8, !dbg !9805   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !9805
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !9805

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !9805
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !9805

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0, !dbg !9805
  call void @llvm.assume(i1 %lcmp.mod78), !dbg !9805
  br label %.lr.ph.i.i.epil, !dbg !9805

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !9807
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !9805 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !9805
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !9805, !llvm.loop !9508

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.bu = add i32 %.sroa.0.03.i, 1, !dbg !9808
  %i.bv = load atomic i8, ptr %i.n acquire, align 8, !dbg !9799
  %.not.i32 = icmp eq i8 %i.bv, 0, !dbg !9800
  br i1 %.not.i32, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit, !dbg !9801

bb.x:                                             ; preds = %.thread13
  call void @llvm.experimental.noalias.scope.decl(metadata !9700), !dbg !9809
  %i.bw = load i64, ptr %i.g, align 8, !dbg !9810, !range !895, !alias.scope !9700, !noalias !9701, !noundef !786
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !9811
  br i1 %i.bx, label %bb.y, label %bb.ac, !dbg !9811, !prof !863

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9812, !noalias !9702
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9812
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !9812, !alias.scope !9700, !noalias !9701, !nonnull !786, !align !806, !noundef !786
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9812
  %i.cb = load i8, ptr %i.ca, align 8, !dbg !9812, !range !1053, !alias.scope !9700, !noalias !9701, !noundef !786
  store ptr %i.bz, ptr %i.a, align 8, !dbg !9812, !noalias !9702
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9812
  store i8 %i.cb, ptr %i.cc, align 8, !dbg !9812, !noalias !9702
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
          to label %bb.aa unwind label %bb.z, !dbg !9813, !noalias !9700

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %.body unwind label %bb.ab, !dbg !9814, !noalias !9700

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9815, !noalias !9700
  unreachable, !dbg !9815

bb.ac:                                            ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9816
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !9816, !alias.scope !9700, !noalias !9701, !nonnull !786, !align !806, !noundef !786 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9816
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !9816, !range !1053, !alias.scope !9700, !noalias !9701, !noundef !786 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1, !dbg !9816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9817
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 56, !dbg !9795
  call void @llvm.experimental.noalias.scope.decl(metadata !9703), !dbg !9818
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 64, !dbg !9819
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !9819, !alias.scope !9703, !noalias !9704, !nonnull !786, !noundef !786 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 72, !dbg !9820
  %i.co = load i64, ptr %i.cn, align 8, !dbg !9820, !alias.scope !9703, !noalias !9704, !noundef !786 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.co, 24, !dbg !9821
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx65, !dbg !9821
  %i.cq = icmp eq i64 %i.co, 0, !dbg !9822
  br i1 %i.cq, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64, !dbg !9823

bb.ad:                                            ; preds = %.lr.ph64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cu, i64 24, !dbg !9824 ; 2 uses
  %i.cs = add nuw nsw i64 %i.cv, 1, !dbg !9825
  %i.ct = icmp eq ptr %i.cr, %i.cp, !dbg !9822
  br i1 %i.ct, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64, !dbg !9823

.lr.ph64:                                         ; preds = %bb.ac, %bb.ad
  %i.cu = phi ptr [ %i.cr, %bb.ad ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cv = phi i64 [ %i.cs, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !9826
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !9826, !alias.scope !9705, !noalias !9706, !noundef !786
  %.not.i.i34 = icmp eq i64 %i.cx, %i.l, !dbg !9826
  br i1 %.not.i.i34, label %bb.ae, label %bb.ad, !dbg !9827

bb.ae:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE6removeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ck, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af, !dbg !9828

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.cg, i8 %i.ci) #27
          to label %.body unwind label %bb.av, !dbg !9829

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8, !dbg !9830
  %.not5 = icmp eq ptr %.pr, null, !dbg !9830
  br i1 %.not5, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !dbg !9831, !prof !1169

bb.ag:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9833
  call void @llvm.experimental.noalias.scope.decl(metadata !9708), !dbg !9829
  call void @llvm.experimental.noalias.scope.decl(metadata !9709), !dbg !9834
  call void @llvm.experimental.noalias.scope.decl(metadata !9710), !dbg !9835
  call void @llvm.experimental.noalias.scope.decl(metadata !9711), !dbg !9836
  %i.cz = load ptr, ptr %i.i, align 8, !dbg !9837, !alias.scope !9712, !nonnull !786, !noundef !786
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !dbg !9838, !noalias !9712
  %i.db = icmp eq i64 %i.da, 1, !dbg !9839
  br i1 %i.db, label %bb.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, !dbg !9839

bb.ah:                                            ; preds = %bb.ag
  fence acquire, !dbg !9840
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit unwind label %bb.af, !dbg !9841

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
          to label %bb.c unwind label %bb.af, !dbg !9842

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.ag, %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 4, !dbg !9843
  br i1 %i.cj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37, label %bb.ai, !dbg !9844

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.dd = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9845
  %i.de = and i64 %i.dd, 9223372036854775807, !dbg !9846
  %i.df = icmp eq i64 %i.de, 0, !dbg !9846
  br i1 %i.df, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37, label %bb.aj, !dbg !9846, !prof !942

bb.aj:                                            ; preds = %bb.ai
  %i.dg = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9847

.noexc38:                                         ; preds = %bb.aj
  br i1 %i.dg, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37, label %bb.ak, !dbg !9848

bb.ak:                                            ; preds = %.noexc38
  store atomic i8 1, ptr %i.dc monotonic, align 4, !dbg !9849
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37, !dbg !9850

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37: ; preds = %bb.ak, %.noexc38, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.dh = atomicrmw xchg ptr %i.cg, i32 0 release, align 4, !dbg !9851
  %i.di = icmp eq i32 %i.dh, 2, !dbg !9852
  br i1 %i.di, label %bb.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit40, !dbg !9852, !prof !863

bb.al:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9853

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit40: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i37, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9829
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !9854
  store i8 0, ptr %i.dj, align 1, !dbg !9854
  br label %bb.am, !dbg !9855

bb.am:                                            ; preds = %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit52, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit40
  %.sink = phi i8 [ 0, %bb.bl ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit52 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit40 ]
  store i8 %.sink, ptr %0, align 8, !dbg !9856
  %i.dk = load i64, ptr %i.j, align 8, !dbg !9857, !range !895, !alias.scope !9713, !noundef !786
  %i.dl = icmp eq i64 %i.dk, 0, !dbg !9857
  br i1 %i.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2z_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations.exit, label %bb.an, !dbg !9857

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs0_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB5_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1z_5boxed3BoxDNtNtBY_5error5ErrorNtNtBY_6marker4SendNtB2M_4SyncEL_EEENtNtNtBY_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ar unwind label %bb.ao, !dbg !9858

bb.ao:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9714), !dbg !9858
  %i.dn = load ptr, ptr %i.o, align 8, !dbg !9859, !alias.scope !9715, !noundef !786 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null, !dbg !9859
  br i1 %i.do, label %.thread, label %bb.ap, !dbg !9859

end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2p_5boxed3BoxDNtNtB1O_5error5ErrorNtNtB1O_6marker4SendNtB3D_4SyncEL_EEEE4send0CsbaWXNhtWAp9_11foundations:bb.a
  fence acquire, !dbg !10266
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.g, !dbg !10267

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10268
  unreachable, !dbg !10268

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !10269
  unreachable, !dbg !10269

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aw, %bb.y, %bb.f, %bb.e, %bb.ae, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.bc ], [ %i.da, %bb.ae ], [ %i.cf, %bb.y ], [ %i.ac, %bb.e ], [ %i.ei, %bb.aw ], [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit28, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.07.2 = phi i1 [ false, %bb.bc ], [ false, %bb.ae ], [ false, %bb.y ], [ true, %bb.e ], [ false, %bb.aw ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.07.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !10270
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2z_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #27
          to label %.body48 unwind label %bb.at, !dbg !10271

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc36
  %lpad.loopexit28 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread9, %bb.u, %bb.l, %bb.n, %bb.ai, %bb.ak, %bb.bg, %bb.bi
  %.sroa.07.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.ai ], [ false, %bb.bg ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bi ], [ false, %.invoke ], [ false, %.thread9 ], [ true, %bb.i ], [ false, %bb.ak ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !10272
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !10272, !alias.scope !10195, !noalias !10196, !nonnull !786, !noundef !786
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.z, !dbg !10273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10274
  %i.aj = add i64 %i.z, 1, !dbg !10275
  store i64 %i.aj, ptr %i.y, align 8, !dbg !10275, !alias.scope !10195, !noalias !10196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10276
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !10277
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10278

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10270
  %i.am = load i8, ptr %i.al, align 8, !dbg !10270, !range !1053, !noundef !786
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !10279
  %i.ao = trunc nuw i8 %i.am to i1, !dbg !10280
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !dbg !10280

bb.k:                                             ; preds = %bb.j
  %i.ap = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10281
  %i.aq = and i64 %i.ap, 9223372036854775807, !dbg !10282
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !10282
  br i1 %i.ar, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !10282, !prof !942

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10283

.noexc:                                           ; preds = %bb.l
  br i1 %i.as, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !10284

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.an monotonic, align 4, !dbg !10285
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !10286

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.at = atomicrmw xchg ptr %i.s, i32 0 release, align 4, !dbg !10287
  %i.au = icmp eq i32 %i.at, 2, !dbg !10288
  br i1 %i.au, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, !dbg !10288, !prof !863

bb.n:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10289

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10290
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !10290, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !10290 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !10290
  %i.az = load i32, ptr %i.ay, align 8, !dbg !10290, !range !1058, !noundef !786 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, %bb.o
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8, !dbg !10291 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !10292

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !10293

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, %.noexc36
  %i.bd = load atomic i64, ptr %i.ba acquire, align 8, !dbg !10291 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !10292

bb.p:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !10294 ; 2 uses

.noexc35:                                         ; preds = %bb.p
  %i.bf = extractvalue { i64, i32 } %i.be, 0, !dbg !10294 ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1, !dbg !10294 ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax, !dbg !10295
  %i.bi = icmp slt i64 %i.bf, %i.ax, !dbg !10296
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi, !dbg !10295
  br i1 %spec.select.i, label %bb.r, label %bb.q, !dbg !10297

bb.q:                                             ; preds = %.noexc35
  %i.bk = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8, !dbg !10298 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bk, 1, !dbg !10299
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bk, 0, !dbg !10300
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !10300
  br i1 %.sroa.18.0.in.i.i.i, label %.thread9, label %.split7.us.i, !dbg !10301

bb.r:                                             ; preds = %.noexc35
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 -1, 1000000000) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !10302 ; 2 uses

.noexc36:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0, !dbg !10302
  %i.bn = extractvalue { i64, i32 } %i.bl, 1, !dbg !10302
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !10303

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ], !dbg !10304
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread9
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !dbg !10305, !prof !1147

bb.s:                                             ; preds = %.split7.us.i
  unreachable, !dbg !10306

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10307

.thread9:                                         ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10204
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10204
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !10204, !nonnull !786, !align !806, !noundef !786
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10308

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10232
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10232
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !10232, !nonnull !786, !align !806, !noundef !786
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10309

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.p acquire, align 8, !dbg !10310
  %.not2.i = icmp eq i8 %i.bs, 0, !dbg !10311
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit, !dbg !10312

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.03.i, 7, !dbg !10313
  br i1 %i.bt, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.v, !dbg !10313

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit, !dbg !10314

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.03.i, 0, !dbg !10315
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10316

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.bu = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i, !dbg !10317 ; 2 uses
  %xtraiter = and i32 %i.bu, 7, !dbg !10316       ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.03.i, 3, !dbg !10316
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10316

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56, !dbg !10316
  br label %.lr.ph.i.i, !dbg !10316

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  call void @llvm.x86.sse2.pause(), !dbg !10318
  %niter.next.7 = add i32 %niter, 8, !dbg !10316  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10316
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10316

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10316
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10316

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0, !dbg !10316
  call void @llvm.assume(i1 %lcmp.mod82), !dbg !10316
  br label %.lr.ph.i.i.epil, !dbg !10316

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !10318
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10316 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10316
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10316, !llvm.loop !10009

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.bw = add i32 %.sroa.0.03.i, 1, !dbg !10319
  %i.bx = load atomic i8, ptr %i.p acquire, align 8, !dbg !10310
  %.not.i38 = icmp eq i8 %i.bx, 0, !dbg !10311
  br i1 %.not.i38, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit, !dbg !10312

bb.w:                                             ; preds = %.thread9
  call void @llvm.experimental.noalias.scope.decl(metadata !10200), !dbg !10320
  %i.by = load i64, ptr %i.g, align 8, !dbg !10321, !range !895, !alias.scope !10200, !noalias !10201, !noundef !786
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !10322
  br i1 %i.bz, label %bb.x, label %bb.ab, !dbg !10322, !prof !863

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10323, !noalias !10202
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10323
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !10323, !alias.scope !10200, !noalias !10201, !nonnull !786, !align !806, !noundef !786
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !10323
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !10323, !range !1053, !alias.scope !10200, !noalias !10201, !noundef !786
  store ptr %i.cb, ptr %i.a, align 8, !dbg !10323, !noalias !10202
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10323
  store i8 %i.cd, ptr %i.ce, align 8, !dbg !10323, !noalias !10202
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
          to label %bb.z unwind label %bb.y, !dbg !10324, !noalias !10200

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %.body unwind label %bb.aa, !dbg !10325, !noalias !10200

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10326, !noalias !10200
  unreachable, !dbg !10326

bb.ab:                                            ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10327
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !10327, !alias.scope !10200, !noalias !10201, !nonnull !786, !align !806, !noundef !786 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !10327
  %i.ck = load i8, ptr %i.cj, align 8, !dbg !10327, !range !1053, !alias.scope !10200, !noalias !10201, !noundef !786 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1, !dbg !10327
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !10328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10329
  call void @llvm.experimental.noalias.scope.decl(metadata !10206), !dbg !10330
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16, !dbg !10331
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !10331, !alias.scope !10206, !noalias !10207, !nonnull !786, !noundef !786 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !10332
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !10332, !alias.scope !10206, !noalias !10207, !noundef !786 ; 2 uses
  %.idx69 = mul nuw nsw i64 %i.cq, 24, !dbg !10333
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx69, !dbg !10333
  %i.cs = icmp eq i64 %i.cq, 0, !dbg !10334
  br i1 %i.cs, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68, !dbg !10335

bb.ac:                                            ; preds = %.lr.ph68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !10336 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cx, 1, !dbg !10337
  %i.cv = icmp eq ptr %i.ct, %i.cr, !dbg !10334
  br i1 %i.cv, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68, !dbg !10335

.lr.ph68:                                         ; preds = %bb.ab, %bb.ac
  %i.cw = phi ptr [ %i.ct, %bb.ac ], [ %i.co, %bb.ab ] ; 2 uses
  %i.cx = phi i64 [ %i.cu, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !10338
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !10338, !alias.scope !10208, !noalias !10209, !noundef !786
  %.not.i.i40 = icmp eq i64 %i.cz, %i.m, !dbg !10338
  br i1 %.not.i.i40, label %bb.ad, label %bb.ac, !dbg !10339

bb.ad:                                            ; preds = %.lr.ph68
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE6removeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cm, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ae, !dbg !10340

bb.ae:                                            ; preds = %bb.ag, %bb.ad, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.ci, i8 %i.ck) #27
          to label %.body unwind label %bb.at, !dbg !10341

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ad
  %.pr = load ptr, ptr %i.h, align 8, !dbg !10342
  %.not11 = icmp eq ptr %.pr, null, !dbg !10342
  br i1 %.not11, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.af, !dbg !10343, !prof !1169

bb.af:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !10344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10345
  call void @llvm.experimental.noalias.scope.decl(metadata !10211), !dbg !10341
  call void @llvm.experimental.noalias.scope.decl(metadata !10212), !dbg !10346
  call void @llvm.experimental.noalias.scope.decl(metadata !10213), !dbg !10347
  call void @llvm.experimental.noalias.scope.decl(metadata !10214), !dbg !10348
  %i.db = load ptr, ptr %i.i, align 8, !dbg !10349, !alias.scope !10215, !nonnull !786, !noundef !786
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !dbg !10350, !noalias !10215
  %i.dd = icmp eq i64 %i.dc, 1, !dbg !10351
  br i1 %i.dd, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, !dbg !10351

bb.ag:                                            ; preds = %bb.af
  fence acquire, !dbg !10352
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit unwind label %bb.ae, !dbg !10353

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ac, %bb.ab, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
          to label %bb.b unwind label %bb.ae, !dbg !10354

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.af, %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !10355
  br i1 %i.cl, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.ah, !dbg !10356

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.df = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10357
  %i.dg = and i64 %i.df, 9223372036854775807, !dbg !10358
  %i.dh = icmp eq i64 %i.dg, 0, !dbg !10358
  br i1 %i.dh, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.ai, !dbg !10358, !prof !942

bb.ai:                                            ; preds = %bb.ah
  %i.di = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10359

.noexc44:                                         ; preds = %bb.ai
  br i1 %i.di, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.aj, !dbg !10360

bb.aj:                                            ; preds = %.noexc44
  store atomic i8 1, ptr %i.de monotonic, align 4, !dbg !10361
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, !dbg !10362

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43: ; preds = %bb.aj, %.noexc44, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  %i.dj = atomicrmw xchg ptr %i.ci, i32 0 release, align 4, !dbg !10363
  %i.dk = icmp eq i32 %i.dj, 2, !dbg !10364
  br i1 %i.dk, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit46, !dbg !10364, !prof !863

bb.ak:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10365

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit46: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10341
  %i.dl = load i64, ptr %i.j, align 8, !dbg !10366, !range !895, !noundef !786
  %i.dm = load ptr, ptr %i.q, align 8, !dbg !10366
  store i64 0, ptr %i.j, align 8, !dbg !10367
  %i.dn = trunc nuw i64 %i.dl to i1, !dbg !10368
  br i1 %i.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2z_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations.exit, label %.invoke, !dbg !10368, !prof !942

.invoke:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit58, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit46
  %i.do = phi ptr [ @40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit46 ], [ @43, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit58 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10369

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
  %.pr13 = load i64, ptr %i.j, align 8, !dbg !10370, !alias.scope !10221
  %i.dp = icmp eq i64 %.pr13, 0, !dbg !10370
  br i1 %i.dp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2z_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEEECsbaWXNhtWAp9_11foundations.exit, label %bb.al, !dbg !10370

bb.al:                                            ; preds = %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit
  invoke void @_RNvXs0_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB5_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1z_5boxed3BoxDNtNtBY_5error5ErrorNtNtBY_6marker4SendNtB2M_4SyncEL_EEENtNtNtBY_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ap unwind label %bb.am, !dbg !10371

end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE4recvCsbaWXNhtWAp9_11foundations:bb.a
          to label %common.resume unwind label %bb.e, !dbg !14319, !noalias !14269

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !14320, !noalias !14269
  unreachable, !dbg !14320

common.resume:                                    ; preds = %bb.be, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.be ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !14321

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !14322
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !14322, !alias.scope !14269, !noalias !14270, !nonnull !786, !align !806, !noundef !786 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !14322
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !14322, !range !1053, !alias.scope !14269, !noalias !14270, !noundef !786 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !14322   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14272
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !14324
  call void @llvm.experimental.noalias.scope.decl(metadata !14274), !dbg !14325
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !14326
  %i.ag = load i64, ptr %i.af, align 8, !dbg !14326, !alias.scope !14274, !noalias !14275, !noundef !786 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326, !dbg !14327
  call void @llvm.assume(i1 %i.ah), !dbg !14328
  %i.ai = icmp eq i64 %i.ag, 0, !dbg !14329
  br i1 %i.ai, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i, !dbg !14330

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @61)
          to label %.noexc unwind label %bb.be, !dbg !14331

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !14332
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !14332, !alias.scope !14274, !noalias !14275, !nonnull !786, !noundef !786 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24, !dbg !14333
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i, !dbg !14333
  br label %.lr.ph.i.i, !dbg !14334

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i, %.noexc
  %.sroa.02.010.i.i = phi i64 [ %i.bg, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !14335 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14276), !dbg !14336
  %i.ap = load ptr, ptr %i.an, align 8, !dbg !14337, !alias.scope !14276, !noalias !14277, !nonnull !786, !noundef !786 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40, !dbg !14338
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !14338, !noalias !14278, !noundef !786
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj, !dbg !14334
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.f, !dbg !14334

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !14339
  %i.at = load i64, ptr %i.as, align 8, !dbg !14339, !alias.scope !14276, !noalias !14277, !noundef !786
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !14340
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !dbg !14341, !noalias !14278
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.av, 1, !dbg !14342
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.g, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !14343

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !14344
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !14344, !alias.scope !14276, !noalias !14277, !noundef !786 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null, !dbg !14345
  br i1 %i.ay, label %bb.i, label %bb.h, !dbg !14346

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !14347
  store atomic ptr %i.ax, ptr %i.az release, align 8, !dbg !14348, !noalias !14278
  br label %bb.i, !dbg !14349

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !14350
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !14350, !noalias !14278, !nonnull !786, !noundef !786
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40, !dbg !14351 ; 2 uses
  %i.bd = atomicrmw xchg ptr %i.bc, i32 1 release, align 4, !dbg !14352, !noalias !14278
  %i.be = icmp eq i32 %i.bd, -1, !dbg !14353
  br i1 %i.be, label %bb.j, label %.noexc11, !dbg !14353

bb.j:                                             ; preds = %bb.i
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.bc)
          to label %.noexc11 unwind label %bb.be, !dbg !14354 ; 0 uses

_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.02.010.i.i, 1, !dbg !14355
  %i.bh = icmp eq ptr %i.ao, %i.am, !dbg !14356
  br i1 %i.bh, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i, !dbg !14357

.noexc11:                                         ; preds = %bb.j, %bb.i
  %i.bi = icmp samesign ult i64 %.sroa.02.010.i.i, %i.ag, !dbg !14358
  call void @llvm.assume(i1 %i.bi), !dbg !14359
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE6removeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.010.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63)
          to label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.be, !dbg !14360

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc11
  %.pr = load ptr, ptr %i.k, align 8, !dbg !14272
  %.not = icmp eq ptr %.pr, null, !dbg !14272
  br i1 %.not, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k, !dbg !14361

bb.k:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !14362
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !14363
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !14363, !noundef !786
  store ptr %i.bk, ptr %i.p, align 8, !dbg !14364
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 4, !dbg !14365
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !14366

bb.l:                                             ; preds = %bb.k
  %i.bm = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !14367
  %i.bn = and i64 %i.bm, 9223372036854775807, !dbg !14368
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !14368
  br i1 %i.bo, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !14368, !prof !942

bb.m:                                             ; preds = %bb.l
  %i.bp = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
          to label %.noexc13 unwind label %.loopexit.split-lp, !dbg !14369

.noexc13:                                         ; preds = %bb.m
  br i1 %i.bp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !14370

bb.n:                                             ; preds = %.noexc13
  store atomic i8 1, ptr %i.bl monotonic, align 4, !dbg !14371
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !14372

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc13, %bb.l, %bb.k
  %i.bq = atomicrmw xchg ptr %i.aa, i32 0 release, align 4, !dbg !14373
  %i.br = icmp eq i32 %i.bq, 2, !dbg !14374
  br i1 %i.br, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit, !dbg !14374, !prof !863

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit unwind label %.loopexit.split-lp, !dbg !14375

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbaWXNhtWAp9_11foundations.exit.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14376
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 104, !dbg !14377
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !14377, !range !1053, !noundef !786
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !14377
  br i1 %i.bu, label %bb.ay, label %bb.ac, !dbg !14377

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14280), !dbg !14376
  call void @llvm.experimental.noalias.scope.decl(metadata !14281), !dbg !14378
  call void @llvm.experimental.noalias.scope.decl(metadata !14282), !dbg !14379
  call void @llvm.experimental.noalias.scope.decl(metadata !14283), !dbg !14380
  %i.bv = load ptr, ptr %i.j, align 8, !dbg !14381, !alias.scope !14284, !nonnull !786, !noundef !786
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !dbg !14382, !noalias !14284
  %i.bx = icmp eq i64 %i.bw, 1, !dbg !14383
  br i1 %i.bx, label %bb.q, label %common.resume, !dbg !14383

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !14384
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #25
          to label %common.resume unwind label %bb.ab, !dbg !14385

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val10 = load ptr, ptr %i.p, align 8, !dbg !14386, !noundef !786 ; 11 uses
  %i.by = icmp eq ptr %.val10, null, !dbg !14387
  br i1 %i.by, label %bb.x, label %bb.r, !dbg !14388

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val10, i64 17, !dbg !14389
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !14389, !range !1053, !noundef !786
  %i.cb = trunc nuw i8 %i.ca to i1, !dbg !14389
  br i1 %i.cb, label %bb.u, label %bb.s, !dbg !14389

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 2 uses
  %i.cd = load atomic i8, ptr %i.cc acquire, align 1, !dbg !14390
  %.not2.i.i = icmp eq i8 %i.cd, 0, !dbg !14391
  br i1 %.not2.i.i, label %.lr.ph.i.i16, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i, !dbg !14392

.lr.ph.i.i16:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.03.i.i, 7, !dbg !14393
  br i1 %i.ce, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.t, !dbg !14393

bb.t:                                             ; preds = %.lr.ph.i.i16
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit, !dbg !14394

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i.i16
  %.not.i.i.i17 = icmp eq i32 %.sroa.0.03.i.i, 0, !dbg !14395
  br i1 %.not.i.i.i17, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !14396

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.cf = mul nuw nsw i32 %.sroa.0.03.i.i, %.sroa.0.03.i.i, !dbg !14397 ; 2 uses
  %xtraiter = and i32 %i.cf, 7, !dbg !14396       ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.03.i.i, 3, !dbg !14396
  br i1 %i.cg, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !14396

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.cf, 56, !dbg !14396
  br label %.lr.ph.i.i.i, !dbg !14396

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  call void @llvm.x86.sse2.pause(), !dbg !14398
  %niter.next.7 = add i32 %niter, 8, !dbg !14396  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !14396
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !14396

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !14396
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !14396

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod93 = icmp ne i32 %xtraiter, 0, !dbg !14396
  call void @llvm.assume(i1 %lcmp.mod93), !dbg !14396
  br label %.lr.ph.i.i.i.epil, !dbg !14396

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !14398
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !14396 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !14396
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !14396, !llvm.loop !14052

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ch = add i32 %.sroa.0.03.i.i, 1, !dbg !14399
  %i.ci = load atomic i8, ptr %i.cc acquire, align 1, !dbg !14390
  %.not.i.i = icmp eq i8 %i.ci, 0, !dbg !14391
  br i1 %.not.i.i, label %.lr.ph.i.i16, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i, !dbg !14392

_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %i.cj = load i64, ptr %.val10, align 8, !dbg !14400, !range !895, !noundef !786
  %i.ck = getelementptr inbounds nuw i8, ptr %.val10, i64 8, !dbg !14400
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !14400
  store i64 0, ptr %.val10, align 8, !dbg !14401
  %i.cm = trunc nuw i64 %i.cj to i1, !dbg !14402
  br i1 %i.cm, label %bb.v, label %.invoke, !dbg !14402, !prof !942

bb.u:                                             ; preds = %bb.r
  %i.cn = load i64, ptr %.val10, align 8, !dbg !14403, !range !895, !noundef !786
  %i.co = getelementptr inbounds nuw i8, ptr %.val10, i64 8, !dbg !14403
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !14403
  store i64 0, ptr %.val10, align 8, !dbg !14404
  %i.cq = trunc nuw i64 %i.cn to i1, !dbg !14405
  br i1 %i.cq, label %bb.w, label %.invoke, !dbg !14405, !prof !942

.invoke:                                          ; preds = %bb.u, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i
  %i.cr = phi ptr [ @66, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i ], [ @67, %bb.u ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #29
          to label %.cont unwind label %.loopexit.split-lp, !dbg !14406

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2m_5boxed3BoxDNtNtB1L_5error5ErrorNtNtB1L_6marker4SendNtB3A_4SyncEL_EEEE10wait_readyCsbaWXNhtWAp9_11foundations.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef 24, i64 noundef 8) #19, !dbg !14407
  br label %bb.y, !dbg !14408

bb.w:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.val10, i64 16, !dbg !14409
  store atomic i8 1, ptr %i.cs release, align 8, !dbg !14410
  br label %bb.y, !dbg !14408

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14411
  store i8 1, ptr %i.ct, align 1, !dbg !14411
  br label %bb.z, !dbg !14412

bb.y:                                             ; preds = %bb.v, %bb.w
  %.sroa.4.0.i.ph = phi ptr [ %i.cp, %bb.w ], [ %i.cl, %bb.v ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14413
  store ptr %.sroa.4.0.i.ph, ptr %i.cu, align 8, !dbg !14413
  br label %bb.z, !dbg !14414

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge = phi i8 [ 0, %bb.y ], [ 1, %bb.x ], !dbg !14415
  store i8 %storemerge, ptr %0, align 8, !dbg !14415
  call void @llvm.experimental.noalias.scope.decl(metadata !14291), !dbg !14376
  call void @llvm.experimental.noalias.scope.decl(metadata !14292), !dbg !14416
  call void @llvm.experimental.noalias.scope.decl(metadata !14293), !dbg !14417
  call void @llvm.experimental.noalias.scope.decl(metadata !14294), !dbg !14418
  %i.cv = load ptr, ptr %i.j, align 8, !dbg !14419, !alias.scope !14295, !nonnull !786, !noundef !786
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !dbg !14420, !noalias !14295
  %i.cx = icmp eq i64 %i.cw, 1, !dbg !14421
  br i1 %i.cx, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit22, !dbg !14421

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !14422
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #25, !dbg !14423
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit22, !dbg !14423

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit22: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14376
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbaWXNhtWAp9_11foundations.exit27, !dbg !14424

bb.ab:                                            ; preds = %bb.q, %bb.be
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !14425
  unreachable, !dbg !14425

bb.ac:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !14296), !dbg !14426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14427, !noalias !14297
  store ptr %i.m, ptr %i.h, align 8, !dbg !14428, !noalias !14296
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14428
  store ptr %i.n, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !14428, !noalias !14296
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !14428
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !14428, !noalias !14296
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !14428 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !14428, !noalias !14296
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !14428 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !dbg !14428, !noalias !14296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !14429
  %i.cz = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL), !dbg !14430 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !14431
  %i.db = load i8, ptr %i.da, align 8, !dbg !14432, !range !1052, !noalias !14298, !noundef !786
  %i.dc = icmp eq i8 %i.db, 1, !dbg !14433
  br i1 %i.dc, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !14433, !prof !942

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.ac
  %i.dd = invoke noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.cz, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.ar, !dbg !14434, !noalias !14297 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.i.i
  %i.de = icmp eq ptr %i.dd, null, !dbg !14435
  br i1 %i.de, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtBZ_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB4D_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB5Q_4SyncEL_EEEE4recvs_0IB4e_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B6x_ECsbaWXNhtWAp9_11foundations.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !14436

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %.noexc.i, %bb.ac
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.cz, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14437, !noalias !14301
  %i.df = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !14438, !noalias !14302, !noundef !786 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !14439, !noalias !14302
  %.not.i.i.i23 = icmp eq ptr %i.df, null, !dbg !14440
  br i1 %.not.i.i.i23, label %bb.ad, label %bb.ak, !dbg !14441, !prof !863

bb.ad:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbaWXNhtWAp9_11foundations.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14442, !noalias !14302
  %i.dg = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.ae unwind label %bb.ar, !dbg !14442, !noalias !14297 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dg, ptr %i.f, align 8, !dbg !14442, !noalias !14302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14443, !noalias !14302
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !dbg !14444, !noalias !14302
  store ptr %i.m, ptr %i.c, align 8, !dbg !14445, !noalias !14296
  %.sroa.637.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14445
  store ptr %i.n, ptr %.sroa.637.0..sroa_idx40, align 8, !dbg !14445, !noalias !14296
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !14445
  store ptr %1, ptr %.sroa.7.0..sroa_idx44, align 8, !dbg !14445, !noalias !14296
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14445
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !dbg !14445, !noalias !14296
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !14445
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !dbg !14445, !noalias !14302
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2p_5boxed3BoxDNtNtB1O_5error5ErrorNtNtB1O_6marker4SendNtB3D_4SyncEL_EEEE4recvs_0CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.dg)
          to label %bb.ah unwind label %bb.af, !dbg !14446, !noalias !14301

bb.af:                                            ; preds = %bb.ae
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !dbg !14447, !noalias !14303
  %i.dj = icmp eq i64 %i.di, 1, !dbg !14448
  br i1 %i.dj, label %bb.ag, label %.body.i, !dbg !14448

bb.ag:                                            ; preds = %bb.af
  fence acquire, !dbg !14449
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #25
          to label %.body.i unwind label %bb.aj, !dbg !14450, !noalias !14302

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14451, !noalias !14302
  %i.dk = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !dbg !14452, !noalias !14304
  %i.dl = icmp eq i64 %i.dk, 1, !dbg !14453
  br i1 %i.dl, label %bb.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations.exit24.i.i.i, !dbg !14453

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !14454
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations.exit24.i.i.i unwind label %bb.ar, !dbg !14455, !noalias !14297

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations.exit24.i.i.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14456, !noalias !14302
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtBZ_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB4D_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB5Q_4SyncEL_EEEE4recvs_0IB4e_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B6x_ECsbaWXNhtWAp9_11foundations.exit.i, !dbg !14456

bb.aj:                                            ; preds = %bb.aq, %bb.ao, %bb.ag
end_hunk_2
