Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8d7fd61e2fab8711E":bb.a
  tail call void @_ZN3std6thread4park17h9f920373c321d8bfE()
  br label %.split8.us.i

.split8.i:                                        ; preds = %bb.d, %bb.i
  %i.ad = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ad, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
    i64 2, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
  ]

bb.f:                                             ; preds = %.split8.i
  %i.ae = tail call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 3 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  br i1 %i.ah, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ai = icmp ult i32 %i.ag, 1000000000
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.ab)
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  br i1 %i.aj, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp slt i64 %i.af, %i.x
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.al = cmpxchg ptr %i.aa, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.al, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.am = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.an = extractvalue { i64, i32 } %i.am, 0
  %i.ao = extractvalue { i64, i32 } %i.am, 1
  tail call void @_ZN3std6thread12park_timeout17h10105cdb2dda5236E(i64 noundef %i.an, i32 noundef %i.ao)
  br label %.split8.i

_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.al, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
    i64 2, label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
  ], !prof !45

bb.j:                                             ; preds = %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #35
  unreachable

_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread: ; preds = %.split8.i, %.split8.i, %.split8.us.i, %.split8.us.i, %bb.h, %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit, %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN17crossbeam_channel5waker9SyncWaker10unregister17hacb1e2894949e2e4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.ap = load ptr, ptr %i.a, align 8, !noundef !10
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !17

_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread4: ; preds = %.split8.i, %.split8.us.i, %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit, %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit"
  ret void

bb.k:                                             ; preds = %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !1662, !nonnull !10, !noundef !10
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1662
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.l, label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8846951ad5e46f84E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit"

"_ZN4core3ptr52drop_in_place$LT$crossbeam_channel..waker..Entry$GT$17h80c4d4e6e233f927E.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread4

bb.m:                                             ; preds = %_ZN17crossbeam_channel7context7Context10wait_until17hac45b2ce3fa4cd68E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$8try_recv17h67078fc557da3d32E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 1000000000, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i32 1000000000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = call fastcc noundef zeroext i1 @"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$10start_recv17he2aeb893b18a61efE"(ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.val = load ptr, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit.thread", label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$tracing_appender..Msg$GT$17h8a39454b053423b4E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.g unwind label %bb.f, !noalias !1665

bb.e:                                             ; preds = %bb.c
  %.val1 = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1665
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1665
  store atomic i64 %.val1, ptr %.val release, align 8, !noalias !1665
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_ZN17crossbeam_channel5waker9SyncWaker6notify17hf159e6f703e473fbE(ptr noundef nonnull align 8 %i.l)
          to label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit" unwind label %bb.d, !noalias !1665

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !1665
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit": ; preds = %bb.e
  %.sroa.0.0.copyload2 = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1665
  %i.n = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775807
  br i1 %i.n, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit.thread", label %bb.i

bb.h:                                             ; preds = %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit.thread": ; preds = %bb.c, %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.o, align 8
  br label %bb.j

bb.i:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit.thread"
  %.sroa.0.0.copyload2.sink = phi i64 [ %.sroa.0.0.copyload2, %bb.i ], [ -9223372036854775807, %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$4read17h4f2a5e60bdf29465E.exit.thread" ]
  store i64 %.sroa.0.0.copyload2.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h77d218b22265fb62E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @75, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex15decode_to_slice17h59df2fbd19cc89c1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull writeonly align 1 captures(address) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %2, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %2, 1
  %.not = icmp eq i64 %i.c, %4
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = icmp samesign eq i64 %4, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.d, %bb.v
  %.sroa.059.091 = phi ptr [ %i.f, %bb.v ], [ %3, %bb.d ] ; 2 uses
  %.sroa.860.090 = phi i64 [ %i.g, %bb.v ], [ 0, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.059.091, i64 1 ; 2 uses
  %i.g = add nuw i64 %.sroa.860.090, 1
  %i.h = shl i64 %.sroa.860.090, 1                ; 5 uses
  %5 = icmp ult i64 %i.h, %2
  br i1 %5, label %bb.g, label %bb.l

._crit_edge:                                      ; preds = %bb.v, %bb.d
  store i32 3, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.u, %bb.c, %bb.e, %._crit_edge
  ret void

bb.g:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !10 ; 6 uses
  %i.k = add i8 %i.j, -65
  %or.cond.i = icmp ult i8 %i.k, 6
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = add i8 %i.j, -97
  %or.cond1.i = icmp ult i8 %i.l, 6
  br i1 %or.cond1.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = add nsw i8 %i.j, -55
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.n = add i8 %i.j, -48                         ; 2 uses
  %or.cond2.i = icmp ult i8 %i.n, 10
  br i1 %or.cond2.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.o = add nsw i8 %i.j, -87
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.h, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #35
  unreachable

bb.m:                                             ; preds = %bb.j
  store i32 0, ptr %0, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.j, ptr %.sroa.231.0..sroa_idx, align 4
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.332.0..sroa_idx, align 1
  %.sroa.332.sroa.2.0..sroa.332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.332.sroa.2.0..sroa.332.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sroa.862.sroa.0.0.ph = phi i8 [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.m, %bb.i ]
  %i.p = shl nuw i8 %.sroa.862.sroa.0.0.ph, 4
  %i.q = or disjoint i64 %i.h, 1                  ; 4 uses
  %6 = icmp ult i64 %i.q, %2
  br i1 %6, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !10 ; 6 uses
  %i.t = add i8 %i.s, -65
  %or.cond.i53 = icmp ult i8 %i.t, 6
  br i1 %or.cond.i53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = add i8 %i.s, -97
  %or.cond1.i54 = icmp ult i8 %i.u, 6
  br i1 %or.cond1.i54, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.v = add nsw i8 %i.s, -55
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.w = add i8 %i.s, -48                         ; 2 uses
  %or.cond2.i55 = icmp ult i8 %i.w, 10
  br i1 %or.cond2.i55, label %bb.v, label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.x = add nsw i8 %i.s, -87
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.q, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #35
  unreachable

bb.u:                                             ; preds = %bb.r
  store i32 0, ptr %0, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %.sroa.240.0..sroa_idx, align 4
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.341.0..sroa_idx, align 1
  %.sroa.341.sroa.2.0..sroa.341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.341.sroa.2.0..sroa.341.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.v:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.sroa.864.sroa.0.0.ph = phi i8 [ %i.w, %bb.r ], [ %i.x, %bb.s ], [ %i.v, %bb.q ]
  %i.y = or i8 %.sroa.864.sroa.0.0.ph, %i.p
  store i8 %i.y, ptr %.sroa.059.091, align 1
  %i.z = icmp eq ptr %i.f, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex15decode_to_slice17hd22b4ebe8e427212E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(address) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val52 = load i64, ptr %i.b, align 8, !noundef !10 ; 5 uses
  %i.c = and i64 %.val52, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.invoke
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #33
          to label %common.resume unwind label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.f = lshr exact i64 %.val52, 1
  %.not = icmp eq i64 %i.f, %3
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.h = icmp samesign eq i64 %3, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  store i32 2, ptr %0, align 8
  br label %bb.w

.lr.ph:                                           ; preds = %bb.e, %bb.v
  %.sroa.0.092 = phi ptr [ %i.i, %bb.v ], [ %2, %bb.e ] ; 2 uses
  %.sroa.861.091 = phi i64 [ %i.j, %bb.v ], [ 0, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.861.091, 1
  %i.k = shl i64 %.sroa.861.091, 1                ; 5 uses
  %4 = icmp ult i64 %i.k, %.val52
  br i1 %4, label %bb.i, label %.invoke

._crit_edge:                                      ; preds = %bb.v, %bb.e
  store i32 3, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit60" unwind label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.x, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.x ], [ %i.l, %bb.g ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit60": ; preds = %._crit_edge, %bb.w
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !noundef !10 ; 6 uses
  %i.p = add i8 %i.o, -65
  %or.cond.i = icmp ult i8 %i.p, 6
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add i8 %i.o, -97
  %or.cond1.i = icmp ult i8 %i.q, 6
  br i1 %or.cond1.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.r = add nsw i8 %i.o, -55
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.s = add i8 %i.o, -48                         ; 2 uses
  %or.cond2.i = icmp ult i8 %i.s, 10
  br i1 %or.cond2.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.t = add nsw i8 %i.o, -87
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %0, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.o, ptr %.sroa.231.0..sroa_idx, align 4
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.332.0..sroa_idx, align 1
  %.sroa.332.sroa.2.0..sroa.332.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.332.sroa.2.0..sroa.332.0..sroa_idx.sroa_idx, align 8
  br label %bb.w

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.sroa.863.sroa.0.0.ph = phi i8 [ %i.s, %bb.l ], [ %i.t, %bb.m ], [ %i.r, %bb.k ]
  %i.u = shl nuw i8 %.sroa.863.sroa.0.0.ph, 4
  %i.v = or disjoint i64 %i.k, 1                  ; 4 uses
  %5 = icmp ult i64 %i.v, %.val52
  br i1 %5, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !10 ; 6 uses
  %i.y = add i8 %i.x, -65
  %or.cond.i53 = icmp ult i8 %i.y, 6
  br i1 %or.cond.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = add i8 %i.x, -97
  %or.cond1.i54 = icmp ult i8 %i.z, 6
  br i1 %or.cond1.i54, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aa = add nsw i8 %i.x, -55
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ab = add i8 %i.x, -48                        ; 2 uses
  %or.cond2.i55 = icmp ult i8 %i.ab, 10
  br i1 %or.cond2.i55, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ac = add nsw i8 %i.x, -87
  br label %bb.v

.invoke:                                          ; preds = %bb.o, %.lr.ph
  %i.ad = phi i64 [ %i.k, %.lr.ph ], [ %i.v, %bb.o ]
  %i.ae = phi ptr [ @77, %.lr.ph ], [ @78, %bb.o ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ad, i64 noundef %.val52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #35
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.s
  store i32 0, ptr %0, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %.sroa.240.0..sroa_idx, align 4
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 0, ptr %.sroa.341.0..sroa_idx, align 1
  %.sroa.341.sroa.2.0..sroa.341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.341.sroa.2.0..sroa.341.0..sroa_idx.sroa_idx, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.t, %bb.s
  %.sroa.865.sroa.0.0.ph = phi i8 [ %i.ab, %bb.s ], [ %i.ac, %bb.t ], [ %i.aa, %bb.r ]
  %i.af = or i8 %.sroa.865.sroa.0.0.ph, %i.u
  store i8 %i.af, ptr %.sroa.0.092, align 1
  %i.ag = icmp eq ptr %i.i, %i.g
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %bb.n, %bb.u, %bb.f, %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit60" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.z:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex6encode17h21d1b33bf773783dE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @"_ZN32_$LT$T$u20$as$u20$hex..ToHex$GT$10encode_hex17h3fad5ed95bcf3ee5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex6encode17h4a725120b353b169E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1668
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store ptr %1, ptr %i.a, align 8, !noalias !1668
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !noalias !1668
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @74, ptr %i.d, align 8, !noalias !1668
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1114112, ptr %i.e, align 8, !noalias !1668
  call void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hf2f75915284cb744E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1668
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex6encode17hadf0812fe9979ab7E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1672
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store ptr %1, ptr %i.a, align 8, !noalias !1672
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !noalias !1672
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @74, ptr %i.d, align 8, !noalias !1672
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1114112, ptr %i.e, align 8, !noalias !1672
  call void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hf2f75915284cb744E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1672
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex6encode17hed690316f22a464fE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN32_$LT$T$u20$as$u20$hex..ToHex$GT$10encode_hex17haa65a56d8e1ec509E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %1) #33
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3hex6encode17hede4ebcc2778ac76E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1675
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8, !noalias !1675
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !noalias !1675
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @74, ptr %i.d, align 8, !noalias !1675
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1114112, ptr %i.e, align 8, !noalias !1675
  call void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hf2f75915284cb744E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1675
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3nom5error10ParseError2or17h4468f1fc9e11c875E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs11OpenOptions4open17h733d975ccce49cf8E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs11OpenOptions4open17h9bfd6608eff41648E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10
end_hunk_0
