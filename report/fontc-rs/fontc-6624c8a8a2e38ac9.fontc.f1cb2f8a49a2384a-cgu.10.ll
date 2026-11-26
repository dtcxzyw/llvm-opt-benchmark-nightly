Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc-6624c8a8a2e38ac9.fontc.f1cb2f8a49a2384a-cgu.10?download=true
inline.NumInlined: 335
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_recvB2D_:bb.a
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.05.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %i.u = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.o, %i.u
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %i.r, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0 = phi i64 [ %i.o, %bb.c ], [ %spec.select, %bb.e ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.014.0, null
  br i1 %i.x, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.h ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %i.z = cmpxchg weak ptr %0, i64 %.sroa.05.0, i64 %.sroa.01.0 seq_cst acquire, align 8 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ac = icmp ult i32 %.sroa.0.036, 7
  br i1 %i.ac, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.k
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  %i.ad = icmp ult i32 %.sroa.0.036, 11
  br i1 %i.ad, label %.loopexit.i20.thread, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

.preheader.i21:                                   ; preds = %bb.k, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.ae, %.preheader.i21 ], [ 0, %bb.k ]
  %i.ae = add nuw nsw i32 %.sroa.0.03.i22, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i23 = lshr i32 %i.ae, %.sroa.0.036
  %i.af = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.af, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ag = add nuw nsw i32 %.sroa.0.036, 1
  br label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.3 = phi i32 [ %i.ag, %.loopexit.i20.thread ], [ %.sroa.0.036, %.loopexit.i20 ]
  %i.ah = load atomic i64, ptr %0 acquire, align 128
  %i.ai = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.l:                                             ; preds = %bb.j
  %i.aj = load atomic ptr, ptr %i.b acquire, align 8
  %i.ak = tail call i32 @llvm.umin.i32(i32 %.sroa.0.036, i32 6)
  br label %bb.m

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.al = icmp ult i32 %.sroa.0.036, 7
  %i.am = zext i1 %i.al to i32
  %spec.select37 = add nuw nsw i32 %.sroa.0.036, %i.am
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.an, %bb.m ]
  %i.an = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i28 = lshr i32 %i.an, %i.ak
  %i.ao = icmp eq i32 %.sroa.0.0.highbits.i28, 0
  br i1 %i.ao, label %bb.m, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

bb.n:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.f, 30
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 4464 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i, label %_RNvMs_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB4_5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE9wait_nextB2A_.exit

.lr.ph.i:                                         ; preds = %bb.o, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i29 = phi i32 [ %.sroa.0.1.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.at = icmp ult i32 %.sroa.0.02.i29, 7
  br i1 %i.at, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  %i.au = icmp ult i32 %.sroa.0.02.i29, 11
  br i1 %i.au, label %.loopexit.i.thread.i, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.av, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.av = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.av, %.sroa.0.02.i29
  %i.aw = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.aw, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ax = add nuw nsw i32 %.sroa.0.02.i29, 1
  br label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ax, %.loopexit.i.thread.i ], [ %.sroa.0.02.i29, %.loopexit.i.i ]
  %i.ay = load atomic ptr, ptr %i.aq acquire, align 8 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.lr.ph.i, label %_RNvMs_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB4_5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE9wait_nextB2A_.exit

_RNvMs_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB4_5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE9wait_nextB2A_.exit: ; preds = %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.ar, %bb.o ], [ %i.ay, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ba = and i64 %.sroa.01.0, -2
  %i.bb = add i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4464
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = zext i1 %i.be to i64
  %spec.select19 = or disjoint i64 %i.bb, %i.bf
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_RNvMs_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB4_5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE9wait_nextB2A_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.014.0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.bh, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE18disconnect_sendersB2D_(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = atomicrmw or ptr %i.b, i64 1 seq_cst, align 8
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCsghax4HXTRKW_17crossbeam_channel5waker5WakerE4lockCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !13 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !14   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !879, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !879, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.o, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.r, %.noexc5.i ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !879, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 32
  %i.t = cmpxchg ptr %i.s, i64 0, i64 2 acq_rel acquire, align 8, !noalias !879
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.c, label %.noexc5.i

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %bb.b
  invoke fastcc void @_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #26
          to label %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !879, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !879, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.z = atomicrmw xchg ptr %i.y, i32 1 release, align 4, !noalias !879
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.d, label %.noexc5.i

.noexc5.i:                                        ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ab = icmp eq ptr %i.r, %i.p
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.y)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !879 ; 0 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %._crit_edge.i.i
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsghax4HXTRKW_17crossbeam_channel5waker5WakerEECskL3QWxtyvYA_5fontc(ptr nonnull %i.h, i8 %i.j) #24
          to label %bb.l unwind label %bb.k

_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.ad = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 384307168202282326
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 384307168202282326
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = zext i1 %i.aj to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.ak, %bb.e ], [ 0, %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i8 %.sroa.0.0.i, ptr %i.al seq_cst, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.an = trunc nuw i8 %i.j to i1
  br i1 %i.an, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.ar = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.ar, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.as = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.j, label %_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect.exit, !prof !12

bb.j:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
  br label %_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect.exit

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp2

_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect.exit: ; preds = %bb.j, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE20disconnect_receiversB2D_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.04042.i = phi i32 [ %.sroa.0.2.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.04042.i, 11
  br i1 %i.i, label %.loopexit.i.thread.i, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.j, %.sroa.0.04042.i
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.k, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.l = add nuw nsw i32 %.sroa.0.04042.i, 1
  br label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %.loopexit.i.thread.i ], [ %.sroa.0.04042.i, %.loopexit.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.n = and i64 %i.m, 62
  %i.o = icmp eq i64 %i.n, 62
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.2.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %i.p = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.q = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %i.t = lshr i64 %i.q, 1                         ; 2 uses
  %i.u = icmp ne i64 %i.t, %i.p                   ; 2 uses
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  br i1 %i.u, label %.lr.ph48.i, label %._crit_edge49.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.f, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.f ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bd, %bb.f ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE20discard_all_messagesB2D_.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.f
  %i.ad = phi i64 [ %i.be, %bb.f ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bd, %bb.f ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.f ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 4472, i64 noundef 8) #13
  br label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE20discard_all_messagesB2D_.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 4464 ; 3 uses
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i.i, label %_RNvMs_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB4_5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE9wait_nextB2A_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  %i.aj = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.02.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.02.i.i, 1
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvB2D_:bb.a
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !914
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.g, %bb.f
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.be, %bb.o ], [ %i.aq, %bb.g ], [ %i.be, %bb.p ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.k:                                             ; preds = %_RNvYNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !914
  store ptr %i.ao, ptr %i.d, align 8, !noalias !914
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store atomic i64 0, ptr %i.ay release, align 8, !noalias !914
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store atomic ptr null, ptr %i.az release, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !914
  store ptr %i.h, ptr %i.b, align 8, !noalias !914
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.i, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB7_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0B2F_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.ao)
          to label %bb.l unwind label %bb.o, !noalias !914

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !914
  %i.ba = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !914, !noundef !4 ; 3 uses
  store ptr %i.ba, ptr %i.a, align 8, !noalias !914
  store ptr %i.ao, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !914
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !927
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25, !noalias !914
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !914
  br label %_RINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEB3f_.exit

bb.o:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !928
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc.exit.i.i.i unwind label %bb.j, !noalias !914

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtBZ_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtNtB1S_7flavors4listINtB3i_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtBZ_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEs_0uEB58_.exit.i: ; preds = %_RNvYNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.i.i
  call fastcc void @_RNCINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB5_7Context4withNCNvMs1_NtNtB7_7flavors4listINtB1c_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEs0_0B3h_(ptr nonnull %i.f) #26, !noalias !914
  br label %_RINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEB3f_.exit

_RINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEB3f_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc.exit19.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc.exit.i.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtBZ_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtNtB1S_7flavors4listINtB3i_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtBZ_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEs_0uEB58_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !914
  %i.bh = call fastcc noundef zeroext i1 @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_recvB2D_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(72) %i.h)
  br i1 %i.bh, label %._crit_edge, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.split:                                           ; preds = %bb.c
  %i.bi = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 1000000000
  call void @llvm.assume(i1 %i.bj)
  %.not10 = icmp samesign ult i32 %i.bi, %i.af
  br i1 %.not10, label %bb.d, label %bb.r

bb.q:                                             ; preds = %bb.c
  %.not9 = icmp slt i64 %i.ai, %i.ag
  br i1 %.not9, label %bb.d, label %bb.r

bb.r:                                             ; preds = %.split, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bk, align 8
  store i64 2, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.g, i64 136, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4sendB2D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [128 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [128 x i8], align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !noalias !965 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 6 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !965
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread

_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.018.0.copyload39 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx40, i64 128, i1 false)
  br label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.01.073.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.01.0.be.i, %.backedge.i ] ; 3 uses
  %.sroa.09.072.i = phi ptr [ %i.g, %.lr.ph.i ], [ %.sroa.09.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.071.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 9 uses
  %.sroa.037.069.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.01.073.i, 1
  %i.l = and i64 %i.k, 31                         ; 3 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %.sroa.0.071.i, 7
  br i1 %i.n, label %.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit.i, !noalias !965

.loopexit.i.i:                                    ; preds = %bb.d
  %i.o = icmp ult i32 %.sroa.0.071.i, 11
  br i1 %i.o, label %.loopexit.i.thread.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.p, %.preheader.i.i ], [ 0, %bb.c ]
  %i.p = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !965
  %.sroa.0.0.highbits.i.i = lshr i32 %i.p, %.sroa.0.071.i
  %i.q = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.q, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.r = add nuw nsw i32 %.sroa.0.071.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.l, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.069.i, null
  %or.cond.i = select i1 %i.s, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i

bb.f:                                             ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.r, %.loopexit.i.thread.i ], [ %.sroa.0.071.i, %.loopexit.i.i ]
  %i.t = load atomic i64, ptr %i.d acquire, align 128, !noalias !965
  %i.u = load atomic ptr, ptr %i.f acquire, align 8, !noalias !965
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i, %bb.n, %bb.f
  %.sroa.037.0.be.i = phi ptr [ %.sroa.037.3.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %.sroa.037.069.i, %bb.f ], [ %i.aa, %bb.n ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %spec.select.i, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %.sroa.0.2.i, %bb.f ], [ %.sroa.0.071.i, %bb.n ]
  %.sroa.09.0.be.i = phi ptr [ %i.an, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.u, %bb.f ], [ %i.ag, %bb.n ]
  %.sroa.01.0.be.i = phi i64 [ %i.ak, %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.t, %bb.f ], [ %i.af, %bb.n ] ; 2 uses
  %i.v = and i64 %.sroa.01.0.be.i, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %._crit_edge.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i: ; preds = %bb.g, %bb.e
  %.sroa.037.3.i = phi ptr [ %.sroa.037.069.i, %bb.e ], [ %i.y, %bb.g ] ; 8 uses
  %i.x = icmp eq ptr %.sroa.09.072.i, null
  br i1 %i.x, label %bb.h, label %bb.o

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !965
  %i.y = tail call noundef align 8 dereferenceable_or_null(4472) ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef 4472, i64 noundef 8) #13, !noalias !965 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.noexc22.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i, !prof !12

.noexc22.i:                                       ; preds = %bb.g
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 4472) #27
          to label %.noexc unwind label %.body, !noalias !965

.noexc:                                           ; preds = %.noexc22.i
  unreachable

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #13, !noalias !965
  %i.aa = tail call noundef align 8 dereferenceable_or_null(4472) ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef 4472, i64 noundef 8) #13, !noalias !965 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 4472) #27
          to label %.noexc23.i unwind label %.loopexit.split-lp.i, !noalias !965

.noexc23.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = cmpxchg ptr %i.f, ptr null, ptr %i.aa release monotonic, align 8, !noalias !965
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.ae, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 4472, i64 noundef 8) #13, !noalias !965
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  store atomic ptr %i.aa, ptr %i.j release, align 8, !noalias !965
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.af = load atomic i64, ptr %i.d acquire, align 128, !noalias !965
  %i.ag = load atomic ptr, ptr %i.f acquire, align 8, !noalias !965
  br label %.backedge.i

bb.o:                                             ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i
  %.sroa.09.2.i = phi ptr [ %.sroa.09.072.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtCsghax4HXTRKW_17crossbeam_channel7flavors4list5BlockTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEEEEB3J_.exit.i ], [ %i.aa, %bb.m ] ; 3 uses
  %i.ah = add i64 %.sroa.01.073.i, 2
  %i.ai = cmpxchg weak ptr %i.d, i64 %.sroa.01.073.i, i64 %i.ah seq_cst acquire, align 8, !noalias !965 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.s, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p
  %.not17.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not17.i, label %bb.r, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42, !prof !12

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27
          to label %.noexc5 unwind label %.body, !noalias !965

.noexc5:                                          ; preds = %bb.r
  unreachable

_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42: ; preds = %bb.q
  store atomic ptr %.sroa.037.3.i, ptr %i.f release, align 8, !noalias !965
  %i.al = atomicrmw add ptr %i.d, i64 2 release, align 8, !noalias !965 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 4464
  store atomic ptr %.sroa.037.3.i, ptr %i.am release, align 8, !noalias !965
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.018.0.copyload45 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx46, i64 128, i1 false)
  br label %bb.w

bb.s:                                             ; preds = %bb.o
  %i.an = load atomic ptr, ptr %i.f acquire, align 8, !noalias !965
  %i.ao = tail call i32 @llvm.umin.i32(i32 %.sroa.0.071.i, i32 6)
  br label %bb.t

_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.t
  %i.ap = icmp ult i32 %.sroa.0.071.i, 7
  %i.aq = zext i1 %i.ap to i32
  %spec.select.i = add nuw nsw i32 %.sroa.0.071.i, %i.aq
  br label %.backedge.i

bb.t:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.s ], [ %i.ar, %bb.t ]
  %i.ar = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !965
  %.sroa.0.0.highbits.i31.i = lshr i32 %i.ar, %i.ao
  %i.as = icmp eq i32 %.sroa.0.0.highbits.i31.i, 0
  br i1 %i.as, label %bb.t, label %_RNvMNtCs250ZbEhTtZx_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.069.i, %.loopexit.i ], [ %.sroa.037.3.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.at = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.at, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.u
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 4472, i64 noundef 8) #13, !noalias !965
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.p
  %.sroa.9.0 = phi i64 [ %i.l, %bb.p ], [ 0, %.backedge.i ]
  %.sroa.412.0 = phi ptr [ %.sroa.09.2.i, %bb.p ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.p ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.au = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.au, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 4472, i64 noundef 8) #13, !noalias !965
  br label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit

.body:                                            ; preds = %.noexc22.i, %bb.r
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit: ; preds = %bb.v, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.018.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.av = icmp eq ptr %.sroa.412.0, null
  br i1 %i.av, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit
  %.sroa.018.0.copyload49 = phi i64 [ %.sroa.018.0.copyload45, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42 ], [ %.sroa.018.0.copyload, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit ]
  %.sroa.412.148 = phi ptr [ %.sroa.09.2.i, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42 ], [ %.sroa.412.0, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit ]
  %.sroa.9.147 = phi i64 [ 30, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread42 ], [ %.sroa.9.0, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit ]
  %i.aw = getelementptr inbounds nuw [144 x i8], ptr %.sroa.412.148, i64 %.sroa.9.147 ; 3 uses
  store i64 %.sroa.018.0.copyload49, ptr %i.aw, align 8, !noalias !966
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5, i64 128, i1 false), !noalias !966
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.ay = atomicrmw or ptr %i.ax, i64 1 release, align 8, !noalias !968 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.ba = load atomic i8, ptr %i.az seq_cst, align 8, !noalias !968
  %.not.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i, label %.noexc6, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit.thread

.noexc6:                                          ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !968
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCsghax4HXTRKW_17crossbeam_channel5waker5WakerE4lockCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.bb), !noalias !968
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !968, !nonnull !4, !align !13 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !14, !noalias !968 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !968
  %i.bg = load atomic i8, ptr %i.az seq_cst, align 8, !noalias !968
  %.not2.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not2.i.i, label %bb.y, label %bb.ah

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i, %bb.am, %.noexc8.i.i, %bb.ag, %bb.ab, %bb.aa, %_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCsghax4HXTRKW_17crossbeam_channel5waker5WakerEECskL3QWxtyvYA_5fontc(ptr nonnull %i.bd, i8 %i.bf) #24
          to label %.body.thread30 unwind label %bb.aq, !noalias !968

bb.y:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !968
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !969, !noalias !968, !noundef !4 ; 4 uses
  %i.bl = icmp ult i64 %i.bk, 384307168202282326
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !range !14, !noalias !970, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread.i.i.i, label %_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.i.i.i.i, !prof !11

_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.i.i.i.i: ; preds = %bb.z
  %i.br = invoke noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE16get_or_init_slowNvNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc(ptr noundef nonnull align 8 %i.bn, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null)
          to label %.noexc.i.i unwind label %bb.x, !noalias !971 ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc.exit.i.i.i.i
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.aa, label %.thread.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !971
  %i.bt = invoke noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current()
          to label %.noexc6.i.i unwind label %bb.x, !noalias !971 ; 3 uses

.noexc6.i.i:                                      ; preds = %bb.aa
  store ptr %i.bt, ptr %i.a, align 8, !noalias !971
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !972, !noalias !971, !noundef !4
  %i.bw = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !973
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ab, label %.noexc7.i.i

bb.ab:                                            ; preds = %.noexc6.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %.noexc7.i.i unwind label %bb.x, !noalias !971

.thread.i.i.i:                                    ; preds = %.noexc.i.i, %bb.z
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.br, %.noexc.i.i ], [ %i.bn, %bb.z ]
  %.val.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !range !972, !noalias !971, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !969, !noalias !968, !nonnull !4, !noundef !4 ; 2 uses
  %.idx22.i.i.i = mul nuw nsw i64 %i.bk, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx22.i.i.i
  br label %.lr.ph.i.preheader.i.i.i

.noexc7.i.i:                                      ; preds = %bb.ab, %.noexc6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !971
  %.pre.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !969, !noalias !968 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !969, !noalias !968, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %.pre.i.i.i, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i
  %i.ce = icmp eq i64 %.pre.i.i.i, 0
  br i1 %i.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.noexc7.i.i, %.thread.i.i.i
  %i.cf = phi ptr [ %i.ca, %.thread.i.i.i ], [ %i.cd, %.noexc7.i.i ]
  %i.cg = phi ptr [ %i.bz, %.thread.i.i.i ], [ %i.cc, %.noexc7.i.i ]
  %.sroa.0.023.i.i.i = phi i64 [ %.val.i.i.i.i, %.thread.i.i.i ], [ %i.bv, %.noexc7.i.i ]
  %i.ch = phi i64 [ %i.bk, %.thread.i.i.i ], [ %.pre.i.i.i, %.noexc7.i.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.dc, %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.ci = phi ptr [ %i.cj, %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i ], [ %i.cg, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.ck = load ptr, ptr %i.ci, align 8, !alias.scope !974, !noalias !975, !nonnull !4, !noundef !4 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !range !972, !noalias !976, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, %.sroa.0.023.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !974, !noalias !975, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cq = cmpxchg ptr %i.cp, i64 0, i64 %i.co acq_rel acquire, align 8, !noalias !976
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  br i1 %i.cr, label %bb.ad, label %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !974, !noalias !975, !noundef !4 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store atomic ptr %i.ct, ptr %i.cv release, align 8, !noalias !976
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !976, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56 ; 2 uses
  %i.cz = atomicrmw xchg ptr %i.cy, i32 1 release, align 4, !noalias !976
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.ag, label %.noexc8.i.i

bb.ag:                                            ; preds = %bb.af
  %i.db = invoke noundef zeroext i1 @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cy)
          to label %.noexc8.i.i unwind label %bb.x, !noalias !976 ; 0 uses

_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %i.dc = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.dd = icmp eq ptr %i.cj, %i.cf
  br i1 %i.dd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i, label %.lr.ph.i.i.i.i

.noexc8.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.de = icmp ult i64 %.sroa.02.010.i.i.i.i, %i.ch
  call void @llvm.assume(i1 %i.de)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE6removeCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %.sroa.02.010.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.x, !noalias !968

bb.ah:                                            ; preds = %bb.ap, %.noexc6
  %i.df = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.dg = trunc nuw i8 %i.bf to i1
  br i1 %i.dg, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !968
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %.noexc7, !prof !11

.noexc7:                                          ; preds = %bb.ai
  %i.dk = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #25, !noalias !968
  br i1 %i.dk, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc7
  store atomic i8 1, ptr %i.df monotonic, align 4, !noalias !968
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.aj, %.noexc7, %bb.ai, %bb.ah
  %i.dl = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !968
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.ak, label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit.thread, !prof !12

bb.ak:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bd), !noalias !968
  br label %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit.thread

_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc8.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !alias.scope !977, !noalias !968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.dn = icmp eq ptr %.pr.i.i, null
  br i1 %i.dn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select.exit.i.i
  %i.do = atomicrmw add ptr %.pr.i.i, i64 -1 release, align 8, !noalias !978
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i unwind label %bb.x, !noalias !968

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i: ; preds = %_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc.exit.i.i.i.i, %bb.am, %bb.al, %_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select.exit.i.i, %.noexc7.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !968
  invoke fastcc void @_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bi)
          to label %bb.an unwind label %bb.x, !noalias !968

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc.exit.i.i
  %i.dq = load i64, ptr %i.bj, align 8, !noalias !968, !noundef !4 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  br i1 %i.ds, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !noalias !968, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 384307168202282326
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp eq i64 %i.du, 0
  %i.dx = zext i1 %i.dw to i8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i.i = phi i8 [ %i.dx, %bb.ao ], [ 0, %bb.an ]
  store atomic i8 %.sroa.0.0.i.i, ptr %i.az seq_cst, align 8, !noalias !968
  br label %bb.ah

bb.aq:                                            ; preds = %bb.x
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !968
  unreachable

_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit.thread: ; preds = %bb.ak, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.as

_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit: ; preds = %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread
  %.sroa.018.0.copyload41 = phi i64 [ %.sroa.018.0.copyload39, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit.thread ], [ %.sroa.018.0.copyload, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5, i64 128, i1 false), !alias.scope !968
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.018.0.copyload41, 2
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, i64 128, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload41, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.at

bb.as:                                            ; preds = %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit.thread, %_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_.exit
  store i64 2, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

.body.thread30:                                   ; preds = %bb.x, %.body.thread
  %eh.lpad-body28 = phi { ptr, i32 } [ %eh.lpad-body29, %.body.thread ], [ %i.bh, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body28

.body.thread:                                     ; preds = %.thread49.i, %bb.u, %.body
  %eh.lpad-body29 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.phi.i, %bb.u ], [ %lpad.phi.i, %.thread49.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtB4_6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(136) %2) #24
          to label %.body.thread30 unwind label %bb.au

bb.au:                                            ; preds = %.body.thread
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE8try_recvB2D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 9)) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = call fastcc noundef zeroext i1 @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_recvB2D_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(72) %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.f, align 8, !noundef !4
  %.val1 = load i64, ptr %i.e, align 8
  call fastcc void @_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4readB2D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.a, ptr %.val, i64 %.val1)
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_5Debug3fmtCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsf_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path4PathNtB6_5Debug3fmtCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXs19_NtCs5Xr050g3D4S_3std4pathNtB6_4PathNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB6_5Debug3fmtCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsG_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCscDfuDmzQoJe_5kurbo5point5PointNtB6_5Debug3fmtCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NtCscDfuDmzQoJe_5kurbo5pointNtB5_5PointNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEENtNtNtB21_3ops4drop4Drop4dropB2D_(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %bb.f ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.0.016 = phi i64 [ %i.n, %bb.f ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %bb.f ], [ %i.e, %bb.a ] ; 5 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskL3QWxtyvYA_5fontc:bb.a
  %.promoted20 = load i64, ptr %i.al, align 8, !alias.scope !988
  %.promoted22 = load i64, ptr %i.am, align 8, !alias.scope !988
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = xor i64 %i.ao, %i.ae                    ; 3 uses
  %i.aq = load i64, ptr %0, align 8, !alias.scope !989, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !989, !noundef !4 ; 3 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !989, !noundef !4
  %i.aw = add i64 %i.av, %i.ap                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.ay = xor i64 %i.ax, %i.at                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.ba = xor i64 %i.aw, %i.az                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.bc = add i64 %i.aw, %i.ay                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.bc, %i.be
  store i64 %i.bf, ptr %i.ar, align 8, !alias.scope !989
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.an, align 8, !alias.scope !989
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  store i64 %i.bi, ptr %i.au, align 8, !alias.scope !989
  %i.bj = xor i64 %i.bd, %i.ae
  store i64 %i.bj, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.bk = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cz, ptr %i.ak, align 8
  store i64 %i.cx, ptr %i.al, align 8, !alias.scope !988
  store i64 %i.da, ptr %i.am, align 8, !alias.scope !988
  store i64 %i.db, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.dc, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.ah, 3
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bm, align 1, !alias.scope !990
  %i.bn = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bn, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bo = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bp = icmp samesign ult i64 %i.bo, %i.ah
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.br = getelementptr i8, ptr %i.bq, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.br, align 1, !alias.scope !990
  %i.bs = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bt = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %.sroa.0.0.i11
  %i.bw = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bw, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bx = icmp samesign ult i64 %.sroa.03.1.i12, %i.ah
  br i1 %i.bx, label %bb.p, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.bz = icmp ult i64 %i.by, %2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !990, !noundef !4
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.sroa.0.1.i13
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.cf, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cg, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cx, %bb.q ] ; 3 uses
  %i.cj = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cz, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.dc, %bb.q ] ; 2 uses
  %i.ck = phi i64 [ %.promoted, %.lr.ph ], [ %i.db, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.cl, align 1 ; 2 uses
  %i.cm = xor i64 %i.cj, %.sroa.07.0.copyload     ; 3 uses
  %i.cn = add i64 %i.ci, %i.ck                    ; 3 uses
  %i.co = add i64 %i.ch, %i.cm                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cq = xor i64 %i.cp, %i.cn                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.cs = xor i64 %i.co, %i.cr                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 32)
  %i.cu = add i64 %i.co, %i.cq                    ; 3 uses
  %i.cv = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 17)
  %i.cx = xor i64 %i.cu, %i.cw                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cz = xor i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32) ; 2 uses
  %i.db = xor i64 %i.cv, %.sroa.07.0.copyload     ; 2 uses
  %i.dc = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %i.ai
  br i1 %i.dd, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bk, %bb.j ], [ %i.ah, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCskL3QWxtyvYA_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.g = call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f)
  store ptr %1, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.g, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceENtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1M_15NormalizedSpaceENtNtB7_7set_val9SetValZSTE10init_frontCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !997
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !997, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !997
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %.noexc1.i unwind label %bb.g, !noalias !997

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !997
  store ptr %i.k, ptr %i.a, align 8, !noalias !997
  invoke void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !998

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1H_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc.exit unwind label %bb.g, !noalias !997 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !996
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCscDfuDmzQoJe_5kurbo5point5PointNtB5_5Debug3fmtCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscDfuDmzQoJe_5kurbo5point5PointINtNtNtBa_5slice4iter4IterB14_EECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE16get_or_init_slowNvNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(8)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6WnK4nVnpEz_11write_fonts8validate15ValidationErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshxhuDJfZv4T_6fontbe5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBJ_9UserSpaceEIBH_NtBJ_11DesignSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_9UserSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6WnK4nVnpEz_11write_fonts8validate15ValidationErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshxhuDJfZv4T_6fontbe5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBQ_9UserSpaceEIBO_NtBQ_11DesignSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_9UserSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB2_7Context3new() unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCskL3QWxtyvYA_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCskL3QWxtyvYA_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1H_15NormalizedSpaceENtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE6removeCskL3QWxtyvYA_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullECskL3QWxtyvYA_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCs5Xr050g3D4S_3std4timeNtB5_7InstantNtNtNtCsf3Ta7LF998c_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions12park_timeout(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions4park() unnamed_addr #0
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!798 = distinct !{!798, !797, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!799 = distinct !{!799, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!800 = distinct !{!800, !799, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!801 = !{!790}
!802 = !{!792}
!803 = !{!794}
!804 = !{!794, !792, !790}
!805 = !{!796}
!806 = !{!798}
!807 = !{!800}
!808 = !{!800, !798, !796}
!809 = distinct !{!809, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE8push_mutCskL3QWxtyvYA_5fontc"}
!810 = distinct !{!810, !809, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE8push_mutCskL3QWxtyvYA_5fontc: argument 0"}
!811 = distinct !{!811, !809, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryE8push_mutCskL3QWxtyvYA_5fontc: argument 1"}
!812 = distinct !{!812, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc"}
!813 = distinct !{!813, !812, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc: argument 0"}
!814 = distinct !{!814, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!815 = distinct !{!815, !814, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!816 = distinct !{!816, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!817 = distinct !{!817, !816, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!818 = distinct !{!818, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!819 = distinct !{!819, !818, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!820 = distinct !{!820, i1 true, !"_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister"}
!821 = distinct !{!821, !820, !"_RNvMs0_NtCsghax4HXTRKW_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister: argument 0"}
!822 = distinct !{!822, i1 true, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10unregister"}
!823 = distinct !{!823, !822, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10unregister: argument 0"}
!824 = distinct !{!824, !822, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10unregister: argument 1"}
!825 = distinct !{!825, i1 true, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3z_NCNvMB28_NtB28_5Waker10unregister0E0E0CskL3QWxtyvYA_5fontc"}
!826 = distinct !{!826, !825, !"_RNCINvNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3z_NCNvMB28_NtB28_5Waker10unregister0E0E0CskL3QWxtyvYA_5fontc: argument 0"}
!827 = distinct !{!827, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENCNvMB1h_NtB1h_5Waker10unregister0E0CskL3QWxtyvYA_5fontc"}
!828 = distinct !{!828, !827, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENCNvMB1h_NtB1h_5Waker10unregister0E0CskL3QWxtyvYA_5fontc: argument 0"}
!829 = distinct !{!829, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3D_EENCINvNvB1x_4find5checkB4n_NCNvMBL_NtBL_5Waker10unregister0E0E0B3I_ECskL3QWxtyvYA_5fontc"}
!830 = distinct !{!830, !829, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1D_8adapters9enumerateINtB2w_9EnumeratepEB1x_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3D_EENCINvNvB1x_4find5checkB4n_NCNvMBL_NtBL_5Waker10unregister0E0E0B3I_ECskL3QWxtyvYA_5fontc: argument 0"}
!831 = distinct !{!831, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc"}
!832 = distinct !{!832, !831, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc: argument 0"}
!833 = distinct !{!833, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!834 = distinct !{!834, !833, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!835 = distinct !{!835, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!836 = distinct !{!836, !835, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!837 = distinct !{!837, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!838 = distinct !{!838, !837, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!839 = !{i64 128}
!840 = !{!810}
!841 = !{i64 0, i64 -9223372036854775808}
!842 = !{!811}
!843 = !{!819, !817, !815, !813, !811}
!844 = !{!"branch_weights", i32 2142436100, i32 5047534, i32 0, i32 0}
!845 = !{!821}
!846 = !{!823}
!847 = !{!824}
!848 = !{!828, !826}
!849 = !{!830, !823, !824, !821}
!850 = !{!838, !836, !834, !832}
!851 = distinct !{!851, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc"}
!852 = distinct !{!852, !851, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc: argument 0"}
!853 = distinct !{!853, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!854 = distinct !{!854, !853, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!855 = distinct !{!855, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!856 = distinct !{!856, !855, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!857 = distinct !{!857, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!858 = distinct !{!858, !857, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!859 = distinct !{!859, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc"}
!860 = distinct !{!860, !859, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc: argument 0"}
!861 = distinct !{!861, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!862 = distinct !{!862, !861, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!863 = distinct !{!863, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!864 = distinct !{!864, !863, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!865 = distinct !{!865, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!866 = distinct !{!866, !865, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!867 = !{!852}
!868 = !{!854}
!869 = !{!856}
!870 = !{!858}
!871 = !{!858, !856, !854, !852}
!872 = !{!860}
!873 = !{!862}
!874 = !{!864}
!875 = !{!866}
!876 = !{!866, !864, !862, !860}
!877 = distinct !{!877, i1 true, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect"}
!878 = distinct !{!878, !877, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10disconnect: argument 0"}
!879 = !{!878}
!880 = distinct !{!880, i1 true, !"_RINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEB3f_"}
!881 = distinct !{!881, !880, !"_RINvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE4recvs_0uEB3f_: argument 0"}
!882 = distinct !{!882, i1 true, !"_RNvYNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskL3QWxtyvYA_5fontc"}
!883 = distinct !{!883, !882, !"_RNvYNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskL3QWxtyvYA_5fontc: argument 0"}
!884 = distinct !{!884, i1 true, !"_RNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB8_7Context4with7CONTEXT00CskL3QWxtyvYA_5fontc"}
!885 = distinct !{!885, !884, !"_RNCNKNvNvMNtCsghax4HXTRKW_17crossbeam_channel7contextNtB8_7Context4with7CONTEXT00CskL3QWxtyvYA_5fontc: argument 0"}
!886 = distinct !{!886, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc"}
!887 = distinct !{!887, !886, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1j_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc: argument 0"}
!888 = distinct !{!888, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!889 = distinct !{!889, !888, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!890 = distinct !{!890, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!891 = distinct !{!891, !890, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!892 = distinct !{!892, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!893 = distinct !{!893, !892, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!894 = distinct !{!894, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!895 = distinct !{!895, !894, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!896 = distinct !{!896, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!897 = distinct !{!897, !896, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!898 = distinct !{!898, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!899 = distinct !{!899, !898, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!900 = distinct !{!900, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc"}
!901 = distinct !{!901, !900, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextEECskL3QWxtyvYA_5fontc: argument 0"}
!902 = distinct !{!902, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!903 = distinct !{!903, !902, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!904 = distinct !{!904, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!905 = distinct !{!905, !904, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!906 = distinct !{!906, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!907 = distinct !{!907, !906, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!908 = distinct !{!908, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!909 = distinct !{!909, !908, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!910 = distinct !{!910, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!911 = distinct !{!911, !910, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!912 = distinct !{!912, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!913 = distinct !{!913, !912, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!914 = !{!881}
!915 = !{i8 0, i8 3}
!916 = !{!887, !885, !883, !881}
!917 = !{!889}
!918 = !{!891}
!919 = !{!893}
!920 = !{!893, !891, !889}
!921 = !{!893, !891, !889, !881}
!922 = !{!895}
!923 = !{!897}
!924 = !{!899}
!925 = !{!899, !897, !895}
!926 = !{!899, !897, !895, !881}
!927 = !{!907, !905, !903, !901, !881}
!928 = !{!913, !911, !909, !881}
!929 = distinct !{!929, i1 true, !"_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_"}
!930 = distinct !{!930, !929, !"_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE10start_sendB2D_: argument 0"}
!931 = distinct !{!931, i1 true, !"_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_"}
!932 = distinct !{!932, !931, !"_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_: argument 0"}
!933 = distinct !{!933, !931, !"_RNvMs1_NtNtCsghax4HXTRKW_17crossbeam_channel7flavors4listINtB5_7ChannelTNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCskL3QWxtyvYA_5fontc5error5ErrorEEE5writeB2D_: argument 1"}
!934 = distinct !{!934, i1 true, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select"}
!935 = distinct !{!935, !934, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select: argument 1"}
!936 = distinct !{!936, !934, !"_RNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB2_5Waker10try_select: argument 0"}
!937 = distinct !{!937, i1 true, !"_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc"}
!938 = distinct !{!938, !937, !"_RNvYNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1t_6option6OptionQIB28_NtNtNtCs5Xr050g3D4S_3std6thread2id8ThreadIdEEEE9call_onceCskL3QWxtyvYA_5fontc: argument 0"}
!939 = distinct !{!939, i1 true, !"_RNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0CskL3QWxtyvYA_5fontc"}
!940 = distinct !{!940, !939, !"_RNCNKNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0CskL3QWxtyvYA_5fontc: argument 0"}
!941 = distinct !{!941, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE11get_or_initNvNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc"}
!942 = distinct !{!942, !941, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE11get_or_initNvNvNvNtCsghax4HXTRKW_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskL3QWxtyvYA_5fontc: argument 0"}
!943 = distinct !{!943, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECskL3QWxtyvYA_5fontc"}
!944 = distinct !{!944, !943, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECskL3QWxtyvYA_5fontc: argument 0"}
!945 = distinct !{!945, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskL3QWxtyvYA_5fontc"}
!946 = distinct !{!946, !945, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskL3QWxtyvYA_5fontc: argument 0"}
!947 = distinct !{!947, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskL3QWxtyvYA_5fontc"}
!948 = distinct !{!948, !947, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskL3QWxtyvYA_5fontc: argument 0"}
!949 = distinct !{!949, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!950 = distinct !{!950, !949, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!951 = distinct !{!951, i1 true, !"_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc"}
!952 = distinct !{!952, !951, !"_RNCNvMNtCsghax4HXTRKW_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskL3QWxtyvYA_5fontc: argument 0"}
!953 = distinct !{!953, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECskL3QWxtyvYA_5fontc"}
!954 = distinct !{!954, !953, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECskL3QWxtyvYA_5fontc: argument 0"}
!955 = distinct !{!955, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc"}
!956 = distinct !{!956, !955, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryEECskL3QWxtyvYA_5fontc: argument 0"}
!957 = distinct !{!957, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc"}
!958 = distinct !{!958, !957, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel5waker5EntryECskL3QWxtyvYA_5fontc: argument 0"}
!959 = distinct !{!959, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc"}
!960 = distinct !{!960, !959, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsghax4HXTRKW_17crossbeam_channel7context7ContextECskL3QWxtyvYA_5fontc: argument 0"}
!961 = distinct !{!961, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc"}
!962 = distinct !{!962, !961, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerEECskL3QWxtyvYA_5fontc: argument 0"}
!963 = distinct !{!963, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc"}
!964 = distinct !{!964, !963, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsghax4HXTRKW_17crossbeam_channel7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc: argument 0"}
!965 = !{!930}
!966 = !{!932}
!967 = !{!933}
!968 = !{!932, !933}
!969 = !{!935}
!970 = !{!942, !940, !938, !936, !935, !932, !933}
!971 = !{!936, !935, !932, !933}
!972 = !{i64 1, i64 0}
!973 = !{!950, !948, !946, !944, !936, !935, !932, !933}
!974 = !{!952}
!975 = !{!954, !936, !935, !932, !933}
!976 = !{!952, !954, !936, !935, !932, !933}
!977 = !{!956}
!978 = !{!964, !962, !960, !958, !956, !932, !933}
!979 = distinct !{!979, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le"}
!980 = distinct !{!980, !979, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le: argument 0"}
!981 = distinct !{!981, i1 true, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!982 = distinct !{!982, !981, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!983 = distinct !{!983, i1 true, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!984 = distinct !{!984, !983, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!985 = distinct !{!985, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le"}
!986 = distinct !{!986, !985, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le: argument 0"}
!987 = !{!980}
!988 = !{!982}
!989 = !{!984}
!990 = !{!986}
!991 = distinct !{!991, i1 true, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc"}
!992 = distinct !{!992, !991, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB30_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECskL3QWxtyvYA_5fontc: argument 0"}
!993 = distinct !{!993, i1 true, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1W_15NormalizedSpaceENtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CskL3QWxtyvYA_5fontc"}
!994 = distinct !{!994, !993, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1W_15NormalizedSpaceENtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CskL3QWxtyvYA_5fontc: argument 1"}
!995 = distinct !{!995, !993, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1W_15NormalizedSpaceENtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CskL3QWxtyvYA_5fontc: argument 0"}
!996 = !{!992}
!997 = !{!995, !994, !992}
!998 = !{!994, !992}
end_hunk_3
