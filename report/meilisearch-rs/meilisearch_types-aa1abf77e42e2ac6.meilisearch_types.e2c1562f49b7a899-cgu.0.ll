Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E":bb.a

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.cm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.ch monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.cn = atomicrmw xchg ptr %i.j, i32 0 release, align 4
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %bb.x, label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit", !prof !23

bb.x:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.j)
  br label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa": ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit", label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa", %.preheader.preheader
  %.sroa.09.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa" ]
  %.sroa.07.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ce, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa" ]
  %lcmp.mod114 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.09.0.i.epil = phi i64 [ %i.cs, %.preheader.epil ], [ %.sroa.09.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.07.0.i.epil = phi i64 [ %i.cr, %.preheader.epil ], [ %.sroa.07.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.bl, i64 %.sroa.09.0.i.epil
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8
  %.fr88.epil = freeze i64 %i.cq
  %i.cr = add i64 %.fr88.epil, %.sroa.07.0.i.epil ; 2 uses
  %i.cs = add nuw i64 %.sroa.09.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit", label %.preheader.epil, !llvm.loop !24723

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit": ; preds = %.preheader.epil, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa"
  %.lcssa = phi i64 [ %i.ce, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.unr-lcssa" ], [ %i.cr, %.preheader.epil ]
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.lcssa, i64 0)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.thread": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit", %bb.s
  %i.ct = phi i64 [ %spec.select, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit" ], [ 0, %bb.s ] ; 2 uses
  %i.cu = lshr i64 %i.bj, 1                       ; 2 uses
  %.not = icmp samesign ult i64 %i.ct, %i.cu
  br i1 %.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.thread"
  %i.cv = lshr i64 %i.bj, 3
  %.not42 = icmp samesign ugt i64 %i.ct, %i.cv
  br i1 %.not42, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb1405faf46e19c2cE.exit.thread"
  %i.cw = shl i64 %i.bj, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !21
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cy)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.z
  %.sroa.014.0 = phi i64 [ %i.cw, %bb.z ], [ %i.bj, %bb.y ], [ %.sroa.0.0.i, %bb.aa ]
  %i.cz = trunc nuw i64 %2 to i1
  %..sroa.014.0 = select i1 %i.cz, i64 %3, i64 %.sroa.014.0 ; 2 uses
  %i.da = icmp sgt i64 %..sroa.014.0, -1
  br i1 %i.da, label %bb.ad, label %bb.ac, !prof !49

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @1212, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.de, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1213) #57
          to label %bb.ae unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN6papaya3raw5alloc14Table$LT$T$GT$5alloc17h3306b64bfd9e9551E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %..sroa.014.0)
          to label %bb.af unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !noundef !21
  store atomic ptr %i.dg, ptr %i.g release, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.di = trunc nuw i8 %.sroa.8.076 to i1
  br i1 %i.di, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55, label %.noexc56, !prof !49

.noexc56:                                         ; preds = %bb.ag
  %i.dm = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.dm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55, label %bb.ah

bb.ah:                                            ; preds = %.noexc56
  store atomic i8 1, ptr %i.dh monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55: ; preds = %bb.ah, %.noexc56, %bb.ag, %bb.af
  %i.dn = atomicrmw xchg ptr %i.j, i32 0 release, align 4
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.ai, label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit58", !prof !23

bb.ai:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.j)
  br label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit58"

"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit58": ; preds = %bb.ai, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit"

"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit": ; preds = %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.x, %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit58", %bb.e
  ret void

bb.aj:                                            ; preds = %bb.ak, %.body
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ak ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn

bb.ak:                                            ; preds = %bb.q, %bb.ad, %bb.ac, %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i"
  %.sroa.8.077.ph = phi i8 [ %.sroa.01.0.i.i50, %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i" ], [ %.sroa.8.076, %bb.ac ], [ %.sroa.8.076, %bb.ad ], [ %.sroa.01.0.i.i50, %bb.q ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E"(ptr nonnull %i.j, i8 %.sroa.8.077.ph) #55
          to label %bb.aj unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %.body
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

._crit_edge:                                      ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcda29f149c402445E.exit", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcda29f149c402445E.exit.thread"
  %i.dq = phi i8 [ 2, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcda29f149c402445E.exit.thread" ], [ %.sroa.01.0.i.i, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcda29f149c402445E.exit" ] ; 3 uses
  %i.dr = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %._crit_edge.1, label %bb.am

bb.am:                                            ; preds = %._crit_edge.7, %._crit_edge.6, %._crit_edge.5, %._crit_edge.4, %._crit_edge.3, %._crit_edge.2, %._crit_edge.1, %._crit_edge
  %.lcssa94 = phi ptr [ %i.dr, %._crit_edge ], [ %i.y, %._crit_edge.1 ], [ %i.aa, %._crit_edge.2 ], [ %i.ac, %._crit_edge.3 ], [ %i.ae, %._crit_edge.4 ], [ %i.ag, %._crit_edge.5 ], [ %i.ai, %._crit_edge.6 ], [ %i.ak, %._crit_edge.7 ] ; 2 uses
  %i.dt = load <2 x i64>, ptr %.lcssa94, align 8
  store <2 x i64> %i.dt, ptr %0, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa94, ptr %.sroa.527.0..sroa_idx, align 8
  %.not.i.i62 = icmp eq i8 %i.dq, 2
  br i1 %.not.i.i62, label %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.dv = trunc nuw i8 %i.dq to i1
  br i1 %i.dv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !24732
  %i.dx = and i64 %i.dw, 9223372036854775807
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, label %bb.ap, !prof !49

bb.ap:                                            ; preds = %bb.ao
  %i.dz = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !24732
  br i1 %i.dz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store atomic i8 1, ptr %i.du monotonic, align 4, !noalias !24732
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ea = atomicrmw xchg ptr %i.j, i32 0 release, align 4, !noalias !24732
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64", label %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67", !prof !23

"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.j), !noalias !24733
  br label %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67"

"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67": ; preds = %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit"

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.ay, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #55
          to label %bb.aj unwind label %bb.al
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$20prepare_retry_insert17hc92753cb76dc3141E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef range(i64 0, 2) %2, i64 %3, ptr noalias nofree noundef align 1 captures(none) dereferenceable(1) %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %6) unnamed_addr #30 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %1, align 8, !range !32, !noundef !21
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %4, align 1, !range !35, !noundef !21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = trunc nuw i64 %2 to i1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !23

bb.e:                                             ; preds = %bb.c
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  tail call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11wait_copied17h799bf4c9c4b2d984E"(ptr nonnull align 8 poison, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  store i8 0, ptr %4, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$4init17ha54f5b0e2f0c09ebE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #30 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = trunc nuw i64 %2 to i1
  %. = select i1 %i.b, i64 %3, i64 32
  call fastcc void @"_ZN6papaya3raw5alloc14Table$LT$T$GT$5alloc17h3306b64bfd9e9551E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !21 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i8 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = cmpxchg ptr %i.f, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i1 } %i.g, 0         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !21
  tail call fastcc void @"_ZN6papaya3raw5alloc14Table$LT$T$GT$7dealloc17hae452f0be1b33f23E"(i64 %.val, ptr nonnull %i.d)
  %i.j = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i1 noundef zeroext %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 16               ; 5 uses
  %i.y = alloca [24 x i8], align 16               ; 5 uses
  %i.z = alloca [24 x i8], align 16               ; 5 uses
  %i.aa = alloca [24 x i8], align 16              ; 5 uses
  %i.ab = load i64, ptr %1, align 8, !range !32, !noundef !21
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.dk

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !25127, !noalias !25128, !noundef !21 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8, !noalias !25129 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !noalias !25129
  %.val21.i = load i64, ptr %3, align 8, !alias.scope !25127, !noalias !25128 ; 4 uses
  %i.ai = add i64 %.val21.i, 1                    ; 3 uses
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 4096) ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 137
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.val21.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 1016      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %.sroa.13.0..sroa_idx251.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.13.0..sroa_idx245.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 1) ; 2 uses
  br label %.outer.i.outer

.critedge.i:                                      ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1214) #57, !noalias !25129
  unreachable

.loopexit377.i:                                   ; preds = %.preheader.i
  %i.at = load atomic i8, ptr %i.ax monotonic, align 8, !noalias !25129
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph464.i, !prof !25130

.lr.ph464.i:                                      ; preds = %.outer.i, %.loopexit377.i
  %i.av = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.val21.i, ptr %i.ae, ptr nonnull %.sroa.13.0.ph.i.ph, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25131
  br i1 %i.av, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit", label %.preheader469.i

._crit_edge.i:                                    ; preds = %.outer.i, %.loopexit377.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25129
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx.i, align 16, !noalias !25129
  store <2 x i64> %.ph, ptr %i.z, align 16, !noalias !25129
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.z), !noalias !25129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25129
  %i.aw = load <2 x i64>, ptr %i.aa, align 16, !noalias !25129
  %.sroa.13.0.copyload246.i = load ptr, ptr %.sroa.13.0..sroa_idx245.i, align 16, !noalias !25129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25129
  br label %.outer.i.outer.backedge

.outer.i.outer.backedge:                          ; preds = %._crit_edge.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i"
  %.sroa.13.0.ph.i.ph.be = phi ptr [ %.sroa.13.0.copyload252.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i" ], [ %.sroa.13.0.copyload246.i, %._crit_edge.i ]
  %.ph.be = phi <2 x i64> [ %i.nq, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i" ], [ %i.aw, %._crit_edge.i ]
  br label %.outer.i.outer

.outer.i.outer:                                   ; preds = %.outer.i.outer.backedge, %bb.c
  %.sroa.13.0.ph.i.ph = phi ptr [ %i.ag, %bb.c ], [ %.sroa.13.0.ph.i.ph.be, %.outer.i.outer.backedge ] ; 18 uses
  %.ph = phi <2 x i64> [ %i.ah, %bb.c ], [ %.ph.be, %.outer.i.outer.backedge ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 128 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 136 ; 2 uses
  %i.ba = extractelement <2 x i64> %.ph, i64 0    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 48 ; 18 uses
  %i.be = ptrtoint ptr %i.ax to i64               ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 52 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 56 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 104 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 88 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 96 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 64 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 72 ; 3 uses
end_hunk_0
