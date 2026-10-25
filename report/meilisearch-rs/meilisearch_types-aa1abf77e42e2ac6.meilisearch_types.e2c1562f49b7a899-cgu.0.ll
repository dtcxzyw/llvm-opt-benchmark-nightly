Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E":bb.a
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
  %i.dw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !23629
  %i.dx = and i64 %i.dw, 9223372036854775807
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, label %bb.ap, !prof !49

bb.ap:                                            ; preds = %bb.ao
  %i.dz = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !23629
  br i1 %i.dz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store atomic i8 1, ptr %i.du monotonic, align 4, !noalias !23629
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ea = atomicrmw xchg ptr %i.j, i32 0 release, align 4, !noalias !23629
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64", label %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67", !prof !23

"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.j), !noalias !23630
  br label %"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67"

"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h4b98bc5ecd57ee85E.exit67": ; preds = %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit.sink.split.i64", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i63, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr73drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$17h32e34c011a1d5618E.exit"

.body:                                            ; preds = %bb.l, %bb.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !24017, !noundef !21 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8, !noalias !24018 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !noalias !24018
  %.val21.i = load i64, ptr %3, align 8, !alias.scope !24017 ; 4 uses
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
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1214) #57, !noalias !24018
  unreachable

.loopexit377.i:                                   ; preds = %.preheader.i
  %i.at = load atomic i8, ptr %i.ax monotonic, align 8, !noalias !24018
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph464.i, !prof !24019

.lr.ph464.i:                                      ; preds = %.outer.i, %.loopexit377.i
  %i.av = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.val21.i, ptr %i.ae, ptr nonnull %.sroa.13.0.ph.i.ph, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !24020
  br i1 %i.av, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit", label %.preheader469.i

._crit_edge.i:                                    ; preds = %.outer.i, %.loopexit377.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !24018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !24018
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx.i, align 16, !noalias !24018
  store <2 x i64> %.ph, ptr %i.z, align 16, !noalias !24018
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.z), !noalias !24018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24018
  %i.aw = load <2 x i64>, ptr %i.aa, align 16, !noalias !24018
  %.sroa.13.0.copyload246.i = load ptr, ptr %.sroa.13.0..sroa_idx245.i, align 16, !noalias !24018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !24018
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
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.i.ph, i64 80 ; 2 uses
  %i.bo = extractelement <2 x i64> %.ph, i64 1
  %invariant.op981 = xor i64 %i.be, 8387220255154660723
  %invariant.op979 = xor i64 %i.be, 8387220255154660723
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aa, %.outer.i.outer
  %i.bp = load atomic i8, ptr %i.ax monotonic, align 1, !noalias !24018
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph464.i, !prof !24021

.preheader469.i:                                  ; preds = %.lr.ph464.i, %bb.aa
  %i.br = load atomic i64, ptr %i.ay monotonic, align 8, !noalias !24018
  %.not17.i = icmp ult i64 %i.br, %i.ai
  br i1 %.not17.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %.preheader469.i
  %i.bs = atomicrmw add ptr %i.ay, i64 %.sroa.0.0.i.i monotonic, align 8, !noalias !24018 ; 2 uses
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.ai, i64 %i.bs) ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.01.0461.i = phi i64 [ 0, %bb.d ], [ %i.np, %bb.z ] ; 3 uses
  %i.bu = add nuw i64 %.sroa.01.0461.i, %i.bs     ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0461.i, %i.bt
  br i1 %exitcond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.01.0.lcssa.i = phi i64 [ %i.bt, %bb.e ], [ %umax.i, %bb.z ]
  %i.bv = call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.val21.i, ptr %i.ae, ptr %.sroa.13.0.ph.i.ph, i64 noundef %.sroa.01.0.lcssa.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !24020
  br i1 %i.bv, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit", label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bu
  %i.bx = atomicrmw or ptr %i.bw, i64 1 acq_rel, align 8, !noalias !24022 ; 3 uses
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = and i64 %i.bx, 7
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca  ; 4 uses
  %i.cc = icmp eq i64 %i.bx, 2
  br i1 %i.cc, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bu
  store atomic i8 -1, ptr %i.ce release, align 1, !noalias !24022
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = and i64 %i.cf, 7
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch  ; 2 uses
  %.val35.i.i.i = load i64, ptr %i.al, align 8, !noalias !24023, !noundef !21 ; 2 uses
  %.val36.i.i.i = load i64, ptr %i.am, align 8, !noalias !24023, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24024)
  %i.cj = xor i64 %.val35.i.i.i, 8317987319222330741 ; 2 uses
  %i.ck = xor i64 %.val36.i.i.i, 7237128888997146477 ; 2 uses
  %i.cl = xor i64 %.val35.i.i.i, 7816392313619706465 ; 2 uses
  %i.cm = xor i64 %.val36.i.i.i, 8387220255154660723 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val.i.i40.i = load ptr, ptr %i.cn, align 8, !alias.scope !24024, !noalias !24025, !nonnull !21, !noundef !21 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val1.i.i41.i = load i64, ptr %i.co, align 8, !alias.scope !24024, !noalias !24025, !noundef !21 ; 4 uses
  %i.cp = and i64 %.val1.i.i41.i, 7               ; 7 uses
  %i.cq = and i64 %.val1.i.i41.i, -8              ; 5 uses
  %.not367.i = icmp eq i64 %i.cq, 0
  br i1 %.not367.i, label %._crit_edge.i154.i, label %.lr.ph.i147.i

._crit_edge.i154.i:                               ; preds = %.lr.ph.i147.i, %bb.j
  %.sroa.32304.4.i = phi i64 [ %i.cm, %bb.j ], [ %i.dw, %.lr.ph.i147.i ] ; 4 uses
  %.sroa.22299.4.i = phi i64 [ %i.ck, %bb.j ], [ %i.du, %.lr.ph.i147.i ] ; 6 uses
  %.sroa.12294.4.i = phi i64 [ %i.cl, %bb.j ], [ %i.dx, %.lr.ph.i147.i ] ; 4 uses
  %.sroa.0289.4.i = phi i64 [ %i.cj, %bb.j ], [ %i.dy, %.lr.ph.i147.i ] ; 4 uses
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i154.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %i.cq
  %.sroa.014.0.copyload.i18.i146.i = load i32, ptr %i.cs, align 1, !alias.scope !24026, !noalias !24027
  %i.ct = zext i32 %.sroa.014.0.copyload.i18.i146.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i154.i
  %.sroa.011.0.i12.i138.i = phi i64 [ %i.ct, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 2 uses
  %.sroa.0.0.i13.i139.i = phi i64 [ 4, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 5 uses
  %i.cu = or disjoint i64 %.sroa.0.0.i13.i139.i, 1
  %i.cv = icmp samesign ult i64 %i.cu, %i.cp
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr i8, ptr %.val.i.i40.i, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.sroa.0.0.i13.i139.i
  %.sroa.015.0.copyload.i17.i145.i = load i16, ptr %i.cx, align 1, !alias.scope !24026, !noalias !24027
  %i.cy = zext i16 %.sroa.015.0.copyload.i17.i145.i to i64
  %i.cz = shl nuw nsw i64 %.sroa.0.0.i13.i139.i, 3
  %i.da = shl nuw nsw i64 %i.cy, %i.cz
  %i.db = or i64 %i.da, %.sroa.011.0.i12.i138.i
  %i.dc = or disjoint i64 %.sroa.0.0.i13.i139.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.011.1.i14.i140.i = phi i64 [ %i.db, %bb.m ], [ %.sroa.011.0.i12.i138.i, %bb.l ] ; 2 uses
  %.sroa.0.1.i15.i141.i = phi i64 [ %i.dc, %bb.m ], [ %.sroa.0.0.i13.i139.i, %bb.l ] ; 3 uses
  %i.dd = icmp samesign ult i64 %.sroa.0.1.i15.i141.i, %i.cp
  br i1 %i.dd, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"

.lr.ph.i147.i:                                    ; preds = %bb.j, %.lr.ph.i147.i
  %i.de = phi i64 [ %i.dx, %.lr.ph.i147.i ], [ %i.cl, %bb.j ]
  %i.df = phi i64 [ %i.du, %.lr.ph.i147.i ], [ %i.ck, %bb.j ] ; 3 uses
  %i.dg = phi i64 [ %i.dw, %.lr.ph.i147.i ], [ %i.cm, %bb.j ]
  %.sroa.04.020.i152.i = phi i64 [ %i.dz, %.lr.ph.i147.i ], [ 0, %bb.j ] ; 2 uses
  %i.dh = phi i64 [ %i.dy, %.lr.ph.i147.i ], [ %i.cj, %bb.j ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.sroa.04.020.i152.i
  %.sroa.08.0.copyload.i153.i = load i64, ptr %i.di, align 1, !alias.scope !24028, !noalias !24027 ; 2 uses
  %i.dj = xor i64 %.sroa.08.0.copyload.i153.i, %i.dg ; 3 uses
  %i.dk = add i64 %i.dh, %i.df                    ; 3 uses
  %i.dl = add i64 %i.dj, %i.de                    ; 2 uses
  %i.dm = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 13)
  %i.dn = xor i64 %i.dk, %i.dm                    ; 3 uses
  %i.do = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 16)
  %i.dp = xor i64 %i.dl, %i.do                    ; 3 uses
  %i.dq = call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 32)
  %i.dr = add i64 %i.dl, %i.dn                    ; 3 uses
  %i.ds = add i64 %i.dp, %i.dq                    ; 2 uses
  %i.dt = call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 17)
  %i.du = xor i64 %i.dr, %i.dt                    ; 2 uses
  %i.dv = call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 21)
  %i.dw = xor i64 %i.dv, %i.ds                    ; 2 uses
  %i.dx = call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 32) ; 2 uses
  %i.dy = xor i64 %i.ds, %.sroa.08.0.copyload.i153.i ; 2 uses
  %i.dz = add nuw i64 %.sroa.04.020.i152.i, 8     ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.cq
  br i1 %i.ea, label %.lr.ph.i147.i, label %._crit_edge.i154.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i": ; preds = %bb.n
  %i.eb = icmp eq i64 %i.cp, 0
  br i1 %i.eb, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"
  %i.ec = shl nuw nsw i64 %i.cp, 3
  %i.ed = shl nuw nsw i64 255, %i.ec
  %i.ee = or i64 %.sroa.011.1.i14.i140.i, %i.ed
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i: ; preds = %bb.n
  %i.ef = add nuw i64 %.sroa.0.1.i15.i141.i, %i.cq ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %.val1.i.i41.i
  call void @llvm.assume(i1 %i.eg), !noalias !24029
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %i.ef
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !24026, !noalias !24027, !noundef !21
  %i.ej = zext i8 %i.ei to i64
  %i.ek = shl nuw nsw i64 %.sroa.0.1.i15.i141.i, 3
  %i.el = shl nuw nsw i64 %i.ej, %i.ek
  %i.em = shl nuw nsw i64 %i.cp, 3
  %i.en = shl nuw i64 255, %i.em
  %i.eo = or i64 %i.en, %i.el
  %i.ep = or i64 %i.eo, %.sroa.011.1.i14.i140.i   ; 3 uses
  %.not368.i = icmp eq i64 %i.cp, 7
  br i1 %.not368.i, label %.thread578.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

.thread578.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i
  %i.eq = xor i64 %i.ep, %.sroa.32304.4.i         ; 3 uses
  %i.er = add i64 %.sroa.0289.4.i, %.sroa.22299.4.i ; 3 uses
  %i.es = add i64 %i.eq, %.sroa.12294.4.i         ; 2 uses
  %i.et = call i64 @llvm.fshl.i64(i64 %.sroa.22299.4.i, i64 %.sroa.22299.4.i, i64 13)
  %i.eu = xor i64 %i.er, %i.et                    ; 3 uses
  %i.ev = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 16)
  %i.ew = xor i64 %i.es, %i.ev                    ; 3 uses
  %i.ex = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ey = add i64 %i.es, %i.eu                    ; 3 uses
  %i.ez = add i64 %i.ew, %i.ex                    ; 2 uses
  %i.fa = call i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 17)
  %i.fb = xor i64 %i.ey, %i.fa
  %i.fc = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 21)
  %i.fd = xor i64 %i.fc, %i.ez
  %i.fe = call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 32)
  %i.ff = xor i64 %i.ez, %i.ep
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i": ; preds = %.thread578.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"
  %.sroa.50314.0.i = phi i64 [ %i.ep, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.ee, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i ], [ 0, %.thread578.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.32304.2.i = phi i64 [ %.sroa.32304.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.32304.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i ], [ %i.fd, %.thread578.i ], [ %.sroa.32304.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.22299.2.i = phi i64 [ %.sroa.22299.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.22299.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i ], [ %i.fb, %.thread578.i ], [ %.sroa.22299.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ] ; 3 uses
  %.sroa.12294.2.i = phi i64 [ %.sroa.12294.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.12294.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i ], [ %i.fe, %.thread578.i ], [ %.sroa.12294.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.0289.2.i = phi i64 [ %.sroa.0289.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %.sroa.0289.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.thread.i ], [ %i.ff, %.thread578.i ], [ %.sroa.0289.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %i.fg = shl i64 %.val1.i.i41.i, 56
  %i.fh = add i64 %i.fg, 72057594037927936
  %i.fi = or i64 %.sroa.50314.0.i, %i.fh          ; 2 uses
  %i.fj = xor i64 %i.fi, %.sroa.32304.2.i         ; 3 uses
  %i.fk = add i64 %.sroa.0289.2.i, %.sroa.22299.2.i ; 3 uses
  %i.fl = add i64 %.sroa.12294.2.i, %i.fj         ; 2 uses
  %i.fm = call i64 @llvm.fshl.i64(i64 %.sroa.22299.2.i, i64 %.sroa.22299.2.i, i64 13)
  %i.fn = xor i64 %i.fk, %i.fm                    ; 3 uses
  %i.fo = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 16)
  %i.fp = xor i64 %i.fl, %i.fo                    ; 3 uses
  %i.fq = call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 32)
  %i.fr = add i64 %i.fn, %i.fl                    ; 3 uses
  %i.fs = add i64 %i.fq, %i.fp                    ; 2 uses
  %i.ft = call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 17)
  %i.fu = xor i64 %i.fr, %i.ft                    ; 3 uses
  %i.fv = call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 21)
  %i.fw = xor i64 %i.fs, %i.fv                    ; 3 uses
  %i.fx = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 32)
  %i.fy = xor i64 %i.fs, %i.fi
  %i.fz = xor i64 %i.fx, 255
  %i.ga = add i64 %i.fy, %i.fu                    ; 3 uses
  %i.gb = add i64 %i.fz, %i.fw                    ; 2 uses
  %i.gc = call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 13)
  %i.gd = xor i64 %i.ga, %i.gc                    ; 3 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 16)
  %i.gf = xor i64 %i.gb, %i.ge                    ; 3 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %i.gh = add i64 %i.gd, %i.gb                    ; 3 uses
  %i.gi = add i64 %i.gf, %i.gg                    ; 2 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gk = xor i64 %i.gh, %i.gj                    ; 3 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gm = xor i64 %i.gl, %i.gi                    ; 3 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.go = add i64 %i.gk, %i.gi                    ; 3 uses
  %i.gp = add i64 %i.gm, %i.gn                    ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 13)
  %i.gr = xor i64 %i.gq, %i.go                    ; 3 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 16)
  %i.gt = xor i64 %i.gs, %i.gp                    ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
  %.val1.i.i33.i = load i64, ptr %i.ik, align 8, !alias.scope !24030, !noalias !24031, !noundef !21 ; 4 uses
  %i.il = and i64 %.val1.i.i33.i, 7               ; 7 uses
  %i.im = and i64 %.val1.i.i33.i, -8              ; 5 uses
  %.not370.i = icmp eq i64 %i.im, 0
  br i1 %.not370.i, label %._crit_edge.i97.i, label %.lr.ph.i90.i

._crit_edge.i97.i:                                ; preds = %.lr.ph.i90.i, %bb.s
  %.sroa.32.4.i = phi i64 [ %i.ii, %bb.s ], [ %i.js, %.lr.ph.i90.i ] ; 4 uses
  %.sroa.22.4.i = phi i64 [ %i.ig, %bb.s ], [ %i.jq, %.lr.ph.i90.i ] ; 6 uses
  %.sroa.12.4.i = phi i64 [ %i.ih, %bb.s ], [ %i.jt, %.lr.ph.i90.i ] ; 4 uses
  %.sroa.0263.4.i = phi i64 [ %i.if, %bb.s ], [ %i.ju, %.lr.ph.i90.i ] ; 4 uses
  %i.in = icmp samesign ugt i64 %i.il, 3
  br i1 %i.in, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i97.i
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %i.im
  %.sroa.014.0.copyload.i18.i89.i = load i32, ptr %i.io, align 1, !alias.scope !24032, !noalias !24033
  %i.ip = zext i32 %.sroa.014.0.copyload.i18.i89.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i97.i
  %.sroa.011.0.i12.i81.i = phi i64 [ %i.ip, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 2 uses
  %.sroa.0.0.i13.i82.i = phi i64 [ 4, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 5 uses
  %i.iq = or disjoint i64 %.sroa.0.0.i13.i82.i, 1
  %i.ir = icmp samesign ult i64 %i.iq, %i.il
  br i1 %i.ir, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.is = getelementptr i8, ptr %.val.i.i32.i, i64 %i.im
  %i.it = getelementptr i8, ptr %i.is, i64 %.sroa.0.0.i13.i82.i
  %.sroa.015.0.copyload.i17.i88.i = load i16, ptr %i.it, align 1, !alias.scope !24032, !noalias !24033
  %i.iu = zext i16 %.sroa.015.0.copyload.i17.i88.i to i64
  %i.iv = shl nuw nsw i64 %.sroa.0.0.i13.i82.i, 3
  %i.iw = shl nuw nsw i64 %i.iu, %i.iv
  %i.ix = or i64 %i.iw, %.sroa.011.0.i12.i81.i
  %i.iy = or disjoint i64 %.sroa.0.0.i13.i82.i, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.011.1.i14.i83.i = phi i64 [ %i.ix, %bb.v ], [ %.sroa.011.0.i12.i81.i, %bb.u ] ; 2 uses
  %.sroa.0.1.i15.i84.i = phi i64 [ %i.iy, %bb.v ], [ %.sroa.0.0.i13.i82.i, %bb.u ] ; 3 uses
  %i.iz = icmp samesign ult i64 %.sroa.0.1.i15.i84.i, %i.il
  br i1 %i.iz, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"

.lr.ph.i90.i:                                     ; preds = %bb.s, %.lr.ph.i90.i
  %i.ja = phi i64 [ %i.jt, %.lr.ph.i90.i ], [ %i.ih, %bb.s ]
  %i.jb = phi i64 [ %i.jq, %.lr.ph.i90.i ], [ %i.ig, %bb.s ] ; 3 uses
  %i.jc = phi i64 [ %i.js, %.lr.ph.i90.i ], [ %i.ii, %bb.s ]
  %.sroa.04.020.i95.i = phi i64 [ %i.jv, %.lr.ph.i90.i ], [ 0, %bb.s ] ; 2 uses
  %i.jd = phi i64 [ %i.ju, %.lr.ph.i90.i ], [ %i.if, %bb.s ]
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %.sroa.04.020.i95.i
  %.sroa.08.0.copyload.i96.i = load i64, ptr %i.je, align 1, !alias.scope !24034, !noalias !24033 ; 2 uses
  %i.jf = xor i64 %.sroa.08.0.copyload.i96.i, %i.jc ; 3 uses
  %i.jg = add i64 %i.jd, %i.jb                    ; 3 uses
  %i.jh = add i64 %i.jf, %i.ja                    ; 2 uses
  %i.ji = call i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 13)
  %i.jj = xor i64 %i.jg, %i.ji                    ; 3 uses
  %i.jk = call i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 16)
  %i.jl = xor i64 %i.jh, %i.jk                    ; 3 uses
  %i.jm = call i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 32)
  %i.jn = add i64 %i.jh, %i.jj                    ; 3 uses
  %i.jo = add i64 %i.jl, %i.jm                    ; 2 uses
  %i.jp = call i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 17)
  %i.jq = xor i64 %i.jn, %i.jp                    ; 2 uses
  %i.jr = call i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 21)
  %i.js = xor i64 %i.jr, %i.jo                    ; 2 uses
  %i.jt = call i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 32) ; 2 uses
  %i.ju = xor i64 %i.jo, %.sroa.08.0.copyload.i96.i ; 2 uses
  %i.jv = add nuw i64 %.sroa.04.020.i95.i, 8      ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.im
  br i1 %i.jw, label %.lr.ph.i90.i, label %._crit_edge.i97.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i": ; preds = %bb.w
  %i.jx = icmp eq i64 %i.il, 0
  br i1 %i.jx, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"
  %i.jy = shl nuw nsw i64 %i.il, 3
  %i.jz = shl nuw nsw i64 255, %i.jy
  %i.ka = or i64 %.sroa.011.1.i14.i83.i, %i.jz
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i: ; preds = %bb.w
  %i.kb = add nuw i64 %.sroa.0.1.i15.i84.i, %i.im ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %.val1.i.i33.i
  call void @llvm.assume(i1 %i.kc), !noalias !24035
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !24032, !noalias !24033, !noundef !21
  %i.kf = zext i8 %i.ke to i64
  %i.kg = shl nuw nsw i64 %.sroa.0.1.i15.i84.i, 3
  %i.kh = shl nuw nsw i64 %i.kf, %i.kg
  %i.ki = shl nuw nsw i64 %i.il, 3
  %i.kj = shl nuw i64 255, %i.ki
  %i.kk = or i64 %i.kj, %i.kh
  %i.kl = or i64 %i.kk, %.sroa.011.1.i14.i83.i    ; 3 uses
  %.not371.i = icmp eq i64 %i.il, 7
  br i1 %.not371.i, label %.thread586.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

.thread586.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i
  %i.km = xor i64 %i.kl, %.sroa.32.4.i            ; 3 uses
  %i.kn = add i64 %.sroa.0263.4.i, %.sroa.22.4.i  ; 3 uses
  %i.ko = add i64 %i.km, %.sroa.12.4.i            ; 2 uses
  %i.kp = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.kq = xor i64 %i.kn, %i.kp                    ; 3 uses
  %i.kr = call i64 @llvm.fshl.i64(i64 %i.km, i64 %i.km, i64 16)
  %i.ks = xor i64 %i.ko, %i.kr                    ; 3 uses
  %i.kt = call i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 32)
  %i.ku = add i64 %i.ko, %i.kq                    ; 3 uses
  %i.kv = add i64 %i.ks, %i.kt                    ; 2 uses
  %i.kw = call i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 17)
  %i.kx = xor i64 %i.ku, %i.kw
  %i.ky = call i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 21)
  %i.kz = xor i64 %i.ky, %i.kv
  %i.la = call i64 @llvm.fshl.i64(i64 %i.ku, i64 %i.ku, i64 32)
  %i.lb = xor i64 %i.kv, %i.kl
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i": ; preds = %.thread586.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"
  %.sroa.50.0.i = phi i64 [ %i.kl, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.ka, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i ], [ 0, %.thread586.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.32.2.i = phi i64 [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i ], [ %i.kz, %.thread586.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.22.2.i = phi i64 [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i ], [ %i.kx, %.thread586.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i ], [ %i.la, %.thread586.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.0263.2.i = phi i64 [ %.sroa.0263.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.0263.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread.i ], [ %i.lb, %.thread586.i ], [ %.sroa.0263.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %i.lc = shl i64 %.val1.i.i33.i, 56
  %i.ld = add i64 %i.lc, 72057594037927936
  %i.le = or i64 %.sroa.50.0.i, %i.ld             ; 2 uses
  %i.lf = xor i64 %i.le, %.sroa.32.2.i            ; 3 uses
  %i.lg = add i64 %.sroa.0263.2.i, %.sroa.22.2.i  ; 3 uses
  %i.lh = add i64 %.sroa.12.2.i, %i.lf            ; 2 uses
  %i.li = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i, i64 %.sroa.22.2.i, i64 13)
  %i.lj = xor i64 %i.lg, %i.li                    ; 3 uses
  %i.lk = call i64 @llvm.fshl.i64(i64 %i.lf, i64 %i.lf, i64 16)
  %i.ll = xor i64 %i.lh, %i.lk                    ; 3 uses
  %i.lm = call i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 32)
  %i.ln = add i64 %i.lj, %i.lh                    ; 3 uses
  %i.lo = add i64 %i.lm, %i.ll                    ; 2 uses
  %i.lp = call i64 @llvm.fshl.i64(i64 %i.lj, i64 %i.lj, i64 17)
  %i.lq = xor i64 %i.ln, %i.lp                    ; 3 uses
  %i.lr = call i64 @llvm.fshl.i64(i64 %i.ll, i64 %i.ll, i64 21)
  %i.ls = xor i64 %i.lo, %i.lr                    ; 3 uses
  %i.lt = call i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 32)
  %i.lu = xor i64 %i.lo, %i.le
  %i.lv = xor i64 %i.lt, 255
  %i.lw = add i64 %i.lu, %i.lq                    ; 3 uses
  %i.lx = add i64 %i.lv, %i.ls                    ; 2 uses
  %i.ly = call i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 13)
  %i.lz = xor i64 %i.lw, %i.ly                    ; 3 uses
  %i.ma = call i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 16)
  %i.mb = xor i64 %i.lx, %i.ma                    ; 3 uses
  %i.mc = call i64 @llvm.fshl.i64(i64 %i.lw, i64 %i.lw, i64 32)
  %i.md = add i64 %i.lz, %i.lx                    ; 3 uses
  %i.me = add i64 %i.mb, %i.mc                    ; 2 uses
  %i.mf = call i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 17)
  %i.mg = xor i64 %i.md, %i.mf                    ; 3 uses
  %i.mh = call i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 21)
  %i.mi = xor i64 %i.mh, %i.me                    ; 3 uses
  %i.mj = call i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 32)
  %i.mk = add i64 %i.mg, %i.me                    ; 3 uses
  %i.ml = add i64 %i.mi, %i.mj                    ; 2 uses
  %i.mm = call i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 13)
  %i.mn = xor i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = call i64 @llvm.fshl.i64(i64 %i.mi, i64 %i.mi, i64 16)
  %i.mp = xor i64 %i.mo, %i.ml                    ; 3 uses
  %i.mq = call i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 32)
  %i.mr = add i64 %i.mn, %i.ml                    ; 3 uses
  %i.ms = add i64 %i.mp, %i.mq                    ; 2 uses
  %i.mt = call i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 17)
  %i.mu = xor i64 %i.mt, %i.mr                    ; 3 uses
  %i.mv = call i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 21)
  %i.mw = xor i64 %i.mv, %i.ms                    ; 2 uses
  %i.mx = call i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 32)
  %i.my = add i64 %i.mu, %i.ms
  %i.mz = add i64 %i.mw, %i.mx                    ; 2 uses
  %i.na = call i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 13)
  %i.nb = xor i64 %i.na, %i.my                    ; 2 uses
  %i.nc = add i64 %i.nb, %i.mz                    ; 2 uses
  %i.nd = shl i64 %i.nb, 17
  %i.ne = shl i64 %i.mw, 37
  %i.nf = shl i64 %i.mz, 21
  %i.ng = xor i64 %i.nf, %i.ne
  %i.nh = shl i64 %i.nc, 32
  %i.ni = xor i64 %i.ng, %i.nd
  %i.nj = xor i64 %i.ni, %i.nh
  %i.nk = xor i64 %i.nj, %i.nc
  %i.nl = lshr i64 %i.nk, 57
  %i.nm = trunc nuw nsw i64 %i.nl to i8
  br label %bb.x

bb.x:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", %bb.r
  %.sroa.025.0.i.i.i = phi i8 [ %i.nm, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i" ], [ -1, %bb.r ]
  %i.nn = load atomic i8, ptr %i.hr monotonic, align 1, !noalias !24023
  %i.no = icmp eq i8 %i.nn, -128
  br i1 %i.no, label %bb.y, label %bb.p

bb.y:                                             ; preds = %bb.x
  store atomic i8 %.sroa.025.0.i.i.i, ptr %i.hr release, align 1, !noalias !24023
  br label %bb.p

bb.z:                                             ; preds = %.split9.us.i.i.i, %bb.i, %bb.g
  %i.np = add nuw nsw i64 %.sroa.01.0461.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.np, %umax.i
  br i1 %exitcond.not.i, label %bb.f, label %bb.e

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i": ; preds = %bb.p
  store atomic i8 1, ptr %i.ax seq_cst, align 8, !noalias !24018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !24018
  store <2 x i64> %.ph, ptr %i.x, align 16, !noalias !24018
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx249.i, align 16, !noalias !24018
  call void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$17get_or_alloc_next17h4e2867af3a127a82E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x), !noalias !24018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24018
  call fastcc void @_ZN6papaya3raw5utils6parker6Parker6unpark17h689a69a296f0d968E(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 1 %i.as), !noalias !24018
  %i.nq = load <2 x i64>, ptr %i.y, align 16, !noalias !24018
  %.sroa.13.0.copyload252.i = load ptr, ptr %.sroa.13.0..sroa_idx251.i, align 16, !noalias !24018
  br label %.outer.i.outer.backedge

bb.aa:                                            ; preds = %bb.f
  %i.nr = load atomic i8, ptr %i.ax monotonic, align 8, !noalias !24018
  %i.ns = icmp eq i8 %i.nr, 1
  br i1 %i.ns, label %.outer.i, label %.preheader469.i

.preheader.i:                                     ; preds = %.preheader469.i, %.backedge.i
  %indvars.iv542.i = phi i64 [ %indvars.iv.next543.i, %.backedge.i ], [ 0, %.preheader469.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ 1, %.preheader469.i ] ; 2 uses
  %.sroa.012.0.i = phi i64 [ %i.nt, %.backedge.i ], [ 0, %.preheader469.i ] ; 3 uses
  %umax544.i = call i64 @llvm.umax.i64(i64 %indvars.iv542.i, i64 1) ; 2 uses
  %i.nt = add i64 %.sroa.012.0.i, 1
  %i.nu = load atomic i8, ptr %i.ax acquire, align 8, !noalias !24018
  switch i8 %i.nu, label %bb.ab [
    i8 1, label %.loopexit377.i
    i8 2, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit"
  ]

bb.ab:                                            ; preds = %.preheader.i
  %i.nv = icmp ult i64 %.sroa.012.0.i, 8
  br i1 %i.nv, label %bb.dj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !24018
  store i64 %i.be, ptr %i.w, align 8, !noalias !24018
  br label %bb.ad

bb.ad:                                            ; preds = %bb.di, %bb.ac
  %i.nw = atomicrmw add ptr %i.bf, i64 1 seq_cst, align 8, !noalias !24018 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !24018
  %i.nx = cmpxchg ptr %i.bd, i32 0, i32 1 acquire monotonic, align 4, !noalias !24036
  %i.ny = extractvalue { i32, i1 } %i.nx, 1
  br i1 %i.ny, label %bb.af, label %bb.ae, !prof !49

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bd), !noalias !24036
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.nz = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !24036
  %i.oa = and i64 %i.nz, 9223372036854775807
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i", label %bb.ag, !prof !49

bb.ag:                                            ; preds = %bb.af
  %i.oc = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !24036
  %i.od = xor i1 %i.oc, true
  %i.oe = zext i1 %i.od to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i": ; preds = %bb.ag, %bb.af
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.oe, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.of = load atomic i8, ptr %i.bg monotonic, align 4, !noalias !24036
  %.not.i.i = icmp eq i8 %i.of, 0
  br i1 %.not.i.i, label %.lr.ph.i187.i, label %bb.ah, !prof !49

bb.ah:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24037
  store ptr %i.bd, ptr %i.s, align 8, !noalias !24037
  %i.og = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.og, align 8, !noalias !24037
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1077, i64 noundef 43, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1079, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1224) #57
          to label %bb.an unwind label %bb.ai, !noalias !24038

bb.ai:                                            ; preds = %bb.ah
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24039)
  %.val.i67.i = load ptr, ptr %i.s, align 8, !alias.scope !24039, !noalias !24038, !nonnull !21, !align !27, !noundef !21 ; 3 uses
  %.val1.i.i = load i8, ptr %i.og, align 8, !range !35, !alias.scope !24039, !noalias !24038, !noundef !21
  %i.oi = getelementptr inbounds nuw i8, ptr %.val.i67.i, i64 4
  %i.oj = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.oj, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ok = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !24040
  %i.ol = and i64 %i.ok, 9223372036854775807
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.ak, !prof !49

bb.ak:                                            ; preds = %bb.aj
  %i.on = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc.i unwind label %bb.ao, !noalias !24018

.noexc.i:                                         ; preds = %bb.ak
  br i1 %i.on, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, label %bb.al

bb.al:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.oi monotonic, align 4, !noalias !24040
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i: ; preds = %bb.al, %.noexc.i, %bb.aj, %bb.ai
  %i.oo = atomicrmw xchg ptr %.val.i67.i, i32 0 release, align 4, !noalias !24040
  %i.op = icmp eq i32 %i.oo, 2
  br i1 %i.op, label %bb.am, label %common.resume, !prof !23

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val.i67.i)
          to label %common.resume unwind label %bb.ao, !noalias !24018

bb.an:                                            ; preds = %bb.ah
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !24038
  unreachable

common.resume:                                    ; preds = %bb.eu, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i", %bb.fg, %bb.fo, %bb.gf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i26.i, %bb.hf, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i, %bb.am, %.body.i, %bb.br, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, %bb.cr
  %common.resume.op = phi { ptr, i32 } [ %i.oh, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i68.i ], [ %i.aaq, %bb.br ], [ %i.aei, %bb.cr ], [ %eh.lpad-body.i, %.body.i ], [ %i.aei, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i ], [ %i.oh, %bb.am ], [ %.pn.i.i.i151, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h3388e2b25d840354E.exit.i.i.i" ], [ %i.ayo, %bb.eu ], [ %i.bcz, %bb.gf ], [ %i.aze, %bb.fg ], [ %i.baj, %bb.fo ], [ %i.bgr, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i26.i ], [ %i.bgr, %bb.hf ]
  resume { ptr, i32 } %common.resume.op

.lr.ph.i187.i:                                    ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6faa78b81180f535E.exit.i.i"
  %i.or = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  %i.os = load i64, ptr %i.bi, align 8, !noalias !24018, !noundef !21
  %i.ot = add i64 %i.os, 1                        ; 2 uses
  store i64 %i.ot, ptr %i.bi, align 8, !noalias !24018
  call void @llvm.experimental.noalias.scope.decl(metadata !24041)
  %.val.i.i30.i = load i64, ptr %i.bj, align 8, !alias.scope !24041, !noalias !24018, !noundef !21 ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !24041, !noalias !24018, !noundef !21 ; 2 uses
  %i.ou = xor i64 %.val.i.i30.i, 8317987319222330741
  %i.ov = xor i64 %.val5.i.i.i, 7237128888997146477 ; 3 uses
  %i.ow = xor i64 %.val.i.i30.i, 7816392313619706465
  %.reass.i.reass.reass = xor i64 %.val5.i.i.i, %invariant.op981 ; 3 uses
  %i.ox = add i64 %i.ov, %i.ou                    ; 3 uses
  %i.oy = add i64 %.reass.i.reass.reass, %i.ow    ; 2 uses
  %i.oz = call i64 @llvm.fshl.i64(i64 %i.ov, i64 %i.ov, i64 13)
  %i.pa = xor i64 %i.oz, %i.ox                    ; 3 uses
  %i.pb = call i64 @llvm.fshl.i64(i64 %.reass.i.reass.reass, i64 %.reass.i.reass.reass, i64 16)
  %i.pc = xor i64 %i.oy, %i.pb                    ; 3 uses
  %i.pd = call i64 @llvm.fshl.i64(i64 %i.ox, i64 %i.ox, i64 32)
  %i.pe = add i64 %i.pa, %i.oy                    ; 3 uses
  %i.pf = add i64 %i.pc, %i.pd                    ; 2 uses
  %i.pg = call i64 @llvm.fshl.i64(i64 %i.pa, i64 %i.pa, i64 17)
  %i.ph = xor i64 %i.pe, %i.pg                    ; 3 uses
  %i.pi = call i64 @llvm.fshl.i64(i64 %i.pc, i64 %i.pc, i64 21)
  %i.pj = call i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 32)
  %i.pk = xor i64 %i.pf, %i.be
  %i.pl = xor i64 %i.pi, %i.pf
  %i.pm = xor i64 %i.pl, 576460752303423488       ; 3 uses
  %i.pn = add i64 %i.ph, %i.pk                    ; 3 uses
  %i.po = add i64 %i.pm, %i.pj                    ; 2 uses
  %i.pp = call i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 13)
  %i.pq = xor i64 %i.pp, %i.pn                    ; 3 uses
  %i.pr = call i64 @llvm.fshl.i64(i64 %i.pm, i64 %i.pm, i64 16)
  %i.ps = xor i64 %i.pr, %i.po                    ; 3 uses
  %i.pt = call i64 @llvm.fshl.i64(i64 %i.pn, i64 %i.pn, i64 32)
  %i.pu = add i64 %i.po, %i.pq                    ; 3 uses
  %i.pv = add i64 %i.ps, %i.pt                    ; 2 uses
  %i.pw = call i64 @llvm.fshl.i64(i64 %i.pq, i64 %i.pq, i64 17)
  %i.px = xor i64 %i.pu, %i.pw                    ; 3 uses
  %i.py = call i64 @llvm.fshl.i64(i64 %i.ps, i64 %i.ps, i64 21)
  %i.pz = xor i64 %i.py, %i.pv                    ; 3 uses
  %i.qa = call i64 @llvm.fshl.i64(i64 %i.pu, i64 %i.pu, i64 32)
  %i.qb = xor i64 %i.pv, 576460752303423488
  %i.qc = xor i64 %i.qa, 255
  %i.qd = add i64 %i.qb, %i.px                    ; 3 uses
  %i.qe = add i64 %i.pz, %i.qc                    ; 2 uses
  %i.qf = call i64 @llvm.fshl.i64(i64 %i.px, i64 %i.px, i64 13)
  %i.qg = xor i64 %i.qd, %i.qf                    ; 3 uses
  %i.qh = call i64 @llvm.fshl.i64(i64 %i.pz, i64 %i.pz, i64 16)
  %i.qi = xor i64 %i.qh, %i.qe                    ; 3 uses
  %i.qj = call i64 @llvm.fshl.i64(i64 %i.qd, i64 %i.qd, i64 32)
  %i.qk = add i64 %i.qg, %i.qe                    ; 3 uses
  %i.ql = add i64 %i.qi, %i.qj                    ; 2 uses
  %i.qm = call i64 @llvm.fshl.i64(i64 %i.qg, i64 %i.qg, i64 17)
  %i.qn = xor i64 %i.qk, %i.qm                    ; 3 uses
  %i.qo = call i64 @llvm.fshl.i64(i64 %i.qi, i64 %i.qi, i64 21)
  %i.qp = xor i64 %i.qo, %i.ql                    ; 3 uses
  %i.qq = call i64 @llvm.fshl.i64(i64 %i.qk, i64 %i.qk, i64 32)
  %i.qr = add i64 %i.qn, %i.ql                    ; 3 uses
  %i.qs = add i64 %i.qp, %i.qq                    ; 2 uses
  %i.qt = call i64 @llvm.fshl.i64(i64 %i.qn, i64 %i.qn, i64 13)
  %i.qu = xor i64 %i.qt, %i.qr                    ; 3 uses
  %i.qv = call i64 @llvm.fshl.i64(i64 %i.qp, i64 %i.qp, i64 16)
  %i.qw = xor i64 %i.qv, %i.qs                    ; 3 uses
  %i.qx = call i64 @llvm.fshl.i64(i64 %i.qr, i64 %i.qr, i64 32)
  %i.qy = add i64 %i.qu, %i.qs                    ; 3 uses
  %i.qz = add i64 %i.qw, %i.qx                    ; 2 uses
  %i.ra = call i64 @llvm.fshl.i64(i64 %i.qu, i64 %i.qu, i64 17)
  %i.rb = xor i64 %i.ra, %i.qy                    ; 3 uses
  %i.rc = call i64 @llvm.fshl.i64(i64 %i.qw, i64 %i.qw, i64 21)
  %i.rd = xor i64 %i.rc, %i.qz                    ; 3 uses
  %i.re = call i64 @llvm.fshl.i64(i64 %i.qy, i64 %i.qy, i64 32)
  %i.rf = add i64 %i.rb, %i.qz
  %i.rg = add i64 %i.rd, %i.re                    ; 2 uses
end_hunk_1
