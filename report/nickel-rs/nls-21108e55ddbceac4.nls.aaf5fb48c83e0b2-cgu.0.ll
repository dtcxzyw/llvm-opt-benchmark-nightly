Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN17crossbeam_channel7flavors2at7Channel4recv17hfb40525c482cddd3E:bb.a
  %i.e = icmp samesign ult i32 %3, 1000000000     ; 2 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.c
  %i.f = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0        ; 3 uses
  %i.h = extractvalue { i64, i32 } %i.f, 1        ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noundef !44  ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %.not18.us = icmp slt i64 %i.g, %i.i
  br i1 %.not18.us, label %._crit_edge25, label %.split23.us

._crit_edge25:                                    ; preds = %bb.b
  %.pre26 = load i32, ptr %i.d, align 8, !range !85
  br label %bb.c

.split.us:                                        ; preds = %.preheader.split.us
  %i.k = icmp ult i32 %i.h, 1000000000
  tail call void @llvm.assume(i1 %i.k)
  %i.l = load i32, ptr %i.d, align 8, !range !85, !noundef !44 ; 2 uses
  %.not19.us = icmp samesign ult i32 %i.h, %i.l
  br i1 %.not19.us, label %bb.c, label %.split23.us

bb.c:                                             ; preds = %._crit_edge25, %.split.us
  %i.m = phi i32 [ %.pre26, %._crit_edge25 ], [ %i.l, %.split.us ]
  %i.n = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.i, i32 noundef %i.m, i64 noundef %i.g, i32 noundef %i.h) ; 2 uses
  %i.o = extractvalue { i64, i32 } %i.n, 0
  %i.p = extractvalue { i64, i32 } %i.n, 1
  tail call void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef %i.o, i32 noundef %i.p)
  br label %.preheader.split.us

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN17crossbeam_channel5utils11sleep_until17h266be978569a99aaE(i64 %2, i32 noundef %3)
  store i8 0, ptr %0, align 8
  br label %bb.l

.preheader.split:                                 ; preds = %.preheader, %bb.k
  %i.q = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.r = extractvalue { i64, i32 } %i.q, 0        ; 5 uses
  %i.s = extractvalue { i64, i32 } %i.q, 1        ; 5 uses
  %i.t = load i64, ptr %1, align 8, !noundef !44  ; 6 uses
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %.split, label %bb.e

.split:                                           ; preds = %.preheader.split
  %i.v = icmp ult i32 %i.s, 1000000000
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i32, ptr %i.d, align 8, !range !85, !noundef !44
  %.not19 = icmp samesign ult i32 %i.s, %i.w
  br i1 %.not19, label %bb.f, label %.split23.us

bb.e:                                             ; preds = %.preheader.split
  %.not18 = icmp slt i64 %i.r, %i.t
  br i1 %.not18, label %bb.f, label %.split23.us

bb.f:                                             ; preds = %.split, %bb.e
  %i.x = icmp eq i64 %i.r, %2
  br i1 %i.x, label %.split16, label %bb.g

.split23.us:                                      ; preds = %bb.e, %.split, %bb.b, %.split.us
  %i.y = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.n, !prof !46

.split16:                                         ; preds = %bb.f
  %i.aa = icmp ult i32 %i.s, 1000000000
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.assume(i1 %i.e)
  %.not21 = icmp samesign ult i32 %i.s, %3
  br i1 %.not21, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not20 = icmp slt i64 %i.r, %2
  br i1 %.not20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split16, %bb.g
  %i.ab = icmp eq i64 %2, %i.t
  br i1 %i.ab, label %.split17, label %bb.j

bb.i:                                             ; preds = %.split16, %bb.g
  store i8 0, ptr %0, align 8
  br label %bb.l

.split17:                                         ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.e)
  %i.ac = load i32, ptr %i.d, align 8, !range !85, !noundef !44 ; 2 uses
  %i.ad = icmp samesign ult i32 %3, %i.ac
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.ac)
  %spec.select38 = select i1 %i.ad, i64 %2, i64 %i.t
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp slt i64 %2, %i.t
  br i1 %i.ae, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.d, align 8, !range !85
  br label %bb.k

bb.k:                                             ; preds = %.split17, %._crit_edge, %bb.j
  %.sroa.7.0 = phi i32 [ %spec.select, %.split17 ], [ %3, %bb.j ], [ %.pre, %._crit_edge ]
  %.sroa.09.0 = phi i64 [ %spec.select38, %.split17 ], [ %2, %bb.j ], [ %i.t, %._crit_edge ]
  %i.af = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %.sroa.09.0, i32 noundef %.sroa.7.0, i64 noundef %i.r, i32 noundef %i.s) ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 0
  %i.ah = extractvalue { i64, i32 } %i.af, 1
  tail call void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef %i.ag, i32 noundef %i.ah)
  br label %.preheader.split

bb.l:                                             ; preds = %bb.m, %bb.i, %bb.d
  %.sink = phi i32 [ %i.ak, %bb.m ], [ 1000000000, %bb.i ], [ 1000000000, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.ai, align 8
  ret void

bb.m:                                             ; preds = %.split23.us
  %i.aj = load i64, ptr %1, align 8, !noundef !44
  %i.ak = load i32, ptr %i.d, align 8, !range !85, !noundef !44
  store i64 %i.aj, ptr %0, align 8
  br label %bb.l

bb.n:                                             ; preds = %.split23.us
  tail call void @_ZN17crossbeam_channel5utils11sleep_until17h266be978569a99aaE(i64 undef, i32 noundef 1000000000)
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @648) #75
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN17crossbeam_channel7flavors2at7Channel8try_recv17hbf338cdc66b774c8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0        ; 2 uses
  %i.f = load i64, ptr %1, align 8, !noundef !44  ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.i

.split:                                           ; preds = %bb.b
  %i.h = extractvalue { i64, i32 } %i.d, 1        ; 2 uses
  %i.i = icmp ult i32 %i.h, 1000000000
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !85, !noundef !44
  %i.l = icmp samesign ult i32 %i.h, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.e, %i.f
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %i.n = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.split, %bb.d
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8, !noundef !44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !85, !noundef !44
  store i64 %i.p, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i8 0, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %.sink = phi i32 [ %i.r, %bb.g ], [ 1000000000, %bb.h ], [ 1000000000, %bb.f ], [ 1000000000, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17h075a48154845a5eeE"(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 13 uses
  %.sroa.06.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.06.0.be, %.backedge.backedge ] ; 3 uses
  %.sroa.01.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.01.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.h = add i64 %.sroa.01.0, 2                   ; 2 uses
  %i.i = and i64 %.sroa.01.0, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.backedge
  %i.k = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.k, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.l = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.l, label %.loopexit.i.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.m, %.preheader.i ], [ 0, %bb.c ]
  %i.m = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i = lshr i32 %i.m, %.sroa.0.0
  %i.n = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.n, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.o = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.132 = phi i32 [ %i.o, %.loopexit.i.thread ], [ %.sroa.0.0, %.loopexit.i ]
  %i.p = load atomic i64, ptr %0 acquire, align 128
  %i.q = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit
  %.sroa.0.0.be = phi i32 [ %.sroa.0.132, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %.sroa.0.2, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %spec.select33, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.06.0.be = phi ptr [ %i.q, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ad, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %i.af, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.01.0.be = phi i64 [ %i.p, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ac, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %.sroa.01.0.i, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.01.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.h, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = trunc i64 %i.r to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.b
  %.sroa.09.0 = phi i64 [ %i.h, %bb.b ], [ %spec.select, %bb.e ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.06.0, null
  br i1 %i.v, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.p
  %.sroa.0.1 = phi i1 [ true, %bb.p ], [ false, %bb.f ], [ true, %bb.h ]
  ret i1 %.sroa.0.1

bb.j:                                             ; preds = %bb.g
  %i.x = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.x, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.y = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.y, label %.loopexit.i20.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.z, %.preheader.i21 ], [ 0, %bb.j ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i22, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i23 = lshr i32 %i.z, %.sroa.0.0
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.aa, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ab = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.2 = phi i32 [ %i.ab, %.loopexit.i20.thread ], [ %.sroa.0.0, %.loopexit.i20 ]
  %i.ac = load atomic i64, ptr %0 acquire, align 128
  %i.ad = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.ae = cmpxchg weak ptr %0, i64 %.sroa.01.0, i64 %.sroa.09.0 seq_cst acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.ae, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.ae, 0
  br i1 %.sroa.18.0.in.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.0, i32 6)
  br label %bb.m

_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit: ; preds = %bb.m
  %i.ag = icmp ult i32 %.sroa.0.0, 7
  %i.ah = zext i1 %i.ag to i32
  %spec.select33 = add nuw nsw i32 %.sroa.0.0, %i.ah
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.ai, %bb.m ]
  %i.ai = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i25 = lshr i32 %i.ai, %.sroa.0.0.i.i
  %i.aj = icmp eq i32 %.sroa.0.0.highbits.i25, 0
  br i1 %i.aj, label %bb.m, label %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit

bb.n:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.f, 30
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 3968 ; 2 uses
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17hb40cd5ad7df69fd1E.exit"

.lr.ph.i:                                         ; preds = %bb.o, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i26 = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.ao = icmp ult i32 %.sroa.0.02.i26, 7
  br i1 %i.ao, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.ap = icmp ult i32 %.sroa.0.02.i26, 11
  br i1 %i.ap, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.aq, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.aq = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.aq, %.sroa.0.02.i26
  %i.ar = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ar, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.as = add nuw nsw i32 %.sroa.0.02.i26, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.as, %.loopexit.i.thread.i ], [ %.sroa.0.02.i26, %.loopexit.i.i ]
  %i.at = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17hb40cd5ad7df69fd1E.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17hb40cd5ad7df69fd1E.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.am, %bb.o ], [ %i.at, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ] ; 2 uses
  %i.av = and i64 %.sroa.09.0, -2
  %3 = add i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 3968
  %i.ax = load atomic ptr, ptr %i.aw monotonic, align 8
  %4 = icmp ne ptr %i.ax, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17hb40cd5ad7df69fd1E.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.06.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.az, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17h57d4bf5f8a157311E"(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 13 uses
  %.sroa.06.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.06.0.be, %.backedge.backedge ] ; 4 uses
  %.sroa.01.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.01.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.h = add i64 %.sroa.01.0, 2                   ; 2 uses
  %i.i = and i64 %.sroa.01.0, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.backedge
  %i.k = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.k, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.l = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.l, label %.loopexit.i.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.m, %.preheader.i ], [ 0, %bb.c ]
  %i.m = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i = lshr i32 %i.m, %.sroa.0.0
  %i.n = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.n, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.o = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.132 = phi i32 [ %i.o, %.loopexit.i.thread ], [ %.sroa.0.0, %.loopexit.i ]
  %i.p = load atomic i64, ptr %0 acquire, align 128
  %i.q = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit
  %.sroa.0.0.be = phi i32 [ %.sroa.0.132, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %.sroa.0.2, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %spec.select33, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.06.0.be = phi ptr [ %i.q, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ad, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %i.af, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.01.0.be = phi i64 [ %i.p, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ac, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %.sroa.01.0.i, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.01.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.h, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = trunc i64 %i.r to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.b
  %.sroa.09.0 = phi i64 [ %i.h, %bb.b ], [ %spec.select, %bb.e ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.06.0, null
  br i1 %i.v, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.p
  %.sroa.0.1 = phi i1 [ true, %bb.p ], [ false, %bb.f ], [ true, %bb.h ]
  ret i1 %.sroa.0.1

bb.j:                                             ; preds = %bb.g
  %i.x = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.x, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.y = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.y, label %.loopexit.i20.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.z, %.preheader.i21 ], [ 0, %bb.j ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i22, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i23 = lshr i32 %i.z, %.sroa.0.0
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.aa, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ab = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.2 = phi i32 [ %i.ab, %.loopexit.i20.thread ], [ %.sroa.0.0, %.loopexit.i20 ]
  %i.ac = load atomic i64, ptr %0 acquire, align 128
  %i.ad = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.ae = cmpxchg weak ptr %0, i64 %.sroa.01.0, i64 %.sroa.09.0 seq_cst acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.ae, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.ae, 0
  br i1 %.sroa.18.0.in.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.0, i32 6)
  br label %bb.m

_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit: ; preds = %bb.m
  %i.ag = icmp ult i32 %.sroa.0.0, 7
  %i.ah = zext i1 %i.ag to i32
  %spec.select33 = add nuw nsw i32 %.sroa.0.0, %i.ah
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.ai, %bb.m ]
  %i.ai = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i25 = lshr i32 %i.ai, %.sroa.0.0.i.i
  %i.aj = icmp eq i32 %.sroa.0.0.highbits.i25, 0
  br i1 %i.aj, label %bb.m, label %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit

bb.n:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.f, 30
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = load atomic ptr, ptr %.sroa.06.0 acquire, align 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5c989e022f7256faE.exit"

.lr.ph.i:                                         ; preds = %bb.o, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i26 = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.an = icmp ult i32 %.sroa.0.02.i26, 7
  br i1 %i.an, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.ao = icmp ult i32 %.sroa.0.02.i26, 11
  br i1 %i.ao, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ap, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.ap = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.ap, %.sroa.0.02.i26
  %i.aq = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ar = add nuw nsw i32 %.sroa.0.02.i26, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ar, %.loopexit.i.thread.i ], [ %.sroa.0.02.i26, %.loopexit.i.i ]
  %i.as = load atomic ptr, ptr %.sroa.06.0 acquire, align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5c989e022f7256faE.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5c989e022f7256faE.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.al, %bb.o ], [ %i.as, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ] ; 2 uses
  %i.au = and i64 %.sroa.09.0, -2
  %3 = add i64 %i.au, 2
  %i.av = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %4 = icmp ne ptr %i.av, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5c989e022f7256faE.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.06.0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.ax, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17had773045c7e797f1E"(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.be, %.backedge.backedge ] ; 13 uses
  %.sroa.06.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.06.0.be, %.backedge.backedge ] ; 3 uses
  %.sroa.01.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.01.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.01.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.h = add i64 %.sroa.01.0, 2                   ; 2 uses
  %i.i = and i64 %.sroa.01.0, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.backedge
  %i.k = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.k, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.l = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.l, label %.loopexit.i.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.m, %.preheader.i ], [ 0, %bb.c ]
  %i.m = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i = lshr i32 %i.m, %.sroa.0.0
  %i.n = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.n, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.o = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.132 = phi i32 [ %i.o, %.loopexit.i.thread ], [ %.sroa.0.0, %.loopexit.i ]
  %i.p = load atomic i64, ptr %0 acquire, align 128
  %i.q = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit
  %.sroa.0.0.be = phi i32 [ %.sroa.0.132, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %.sroa.0.2, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %spec.select33, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.06.0.be = phi ptr [ %i.q, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ad, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %i.af, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  %.sroa.01.0.be = phi i64 [ %i.p, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ %i.ac, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24 ], [ %.sroa.01.0.i, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit ]
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.01.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.h, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = trunc i64 %i.r to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.b
  %.sroa.09.0 = phi i64 [ %i.h, %bb.b ], [ %spec.select, %bb.e ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.06.0, null
  br i1 %i.v, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.p
  %.sroa.0.1 = phi i1 [ true, %bb.p ], [ false, %bb.f ], [ true, %bb.h ]
  ret i1 %.sroa.0.1

bb.j:                                             ; preds = %bb.g
  %i.x = icmp ult i32 %.sroa.0.0, 7
  br i1 %i.x, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.y = icmp ult i32 %.sroa.0.0, 11
  br i1 %i.y, label %.loopexit.i20.thread, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.z, %.preheader.i21 ], [ 0, %bb.j ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i22, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i23 = lshr i32 %i.z, %.sroa.0.0
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.aa, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ab = add nuw nsw i32 %.sroa.0.0, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.2 = phi i32 [ %i.ab, %.loopexit.i20.thread ], [ %.sroa.0.0, %.loopexit.i20 ]
  %i.ac = load atomic i64, ptr %0 acquire, align 128
  %i.ad = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.ae = cmpxchg weak ptr %0, i64 %.sroa.01.0, i64 %.sroa.09.0 seq_cst acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.ae, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.ae, 0
  br i1 %.sroa.18.0.in.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.0, i32 6)
  br label %bb.m

_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit: ; preds = %bb.m
  %i.ag = icmp ult i32 %.sroa.0.0, 7
  %i.ah = zext i1 %i.ag to i32
  %spec.select33 = add nuw nsw i32 %.sroa.0.0, %i.ah
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.ai, %bb.m ]
  %i.ai = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i25 = lshr i32 %i.ai, %.sroa.0.0.i.i
  %i.aj = icmp eq i32 %.sroa.0.0.highbits.i25, 0
  br i1 %i.aj, label %bb.m, label %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit

bb.n:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.f, 30
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 3968 ; 2 uses
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h2a719d1489cda629E.exit"

.lr.ph.i:                                         ; preds = %bb.o, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i26 = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.ao = icmp ult i32 %.sroa.0.02.i26, 7
  br i1 %i.ao, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.ap = icmp ult i32 %.sroa.0.02.i26, 11
  br i1 %i.ap, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.aq, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.aq = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.aq, %.sroa.0.02.i26
  %i.ar = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ar, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.as = add nuw nsw i32 %.sroa.0.02.i26, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.as, %.loopexit.i.thread.i ], [ %.sroa.0.02.i26, %.loopexit.i.i ]
  %i.at = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h2a719d1489cda629E.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h2a719d1489cda629E.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.am, %bb.o ], [ %i.at, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ] ; 2 uses
  %i.av = and i64 %.sroa.09.0, -2
  %3 = add i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 3968
  %i.ax = load atomic ptr, ptr %i.aw monotonic, align 8
  %4 = icmp ne ptr %i.ax, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h2a719d1489cda629E.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.06.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.az, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h40bb3b96feaa607cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr %.16.val, i64 %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = icmp eq ptr %.16.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.d = icmp ult i64 %.24.val, 31
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.24.val ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit"

.lr.ph.i:                                         ; preds = %bb.c, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.c ] ; 5 uses
  %i.j = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.j, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.k = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.k, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.l, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.l = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.l, %.sroa.0.02.i
  %i.m = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.m, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.n = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.n, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.o = load atomic i64, ptr %i.f acquire, align 8
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit"

"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.r = add nuw nsw i64 %.24.val, 1              ; 2 uses
  %i.s = icmp eq i64 %i.r, 31
  br i1 %i.s, label %.lr.ph.i2, label %bb.e

bb.d:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit", %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit"
  %i.t = atomicrmw or ptr %i.f, i64 2 acq_rel, align 8
  %i.u = and i64 %i.t, 4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit", label %bb.i

.lr.ph.i2:                                        ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit", %bb.h
  %.sroa.01.04.i = phi i64 [ %i.ae, %bb.h ], [ 0, %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h62c1532c892593f8E.exit" ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %.16.val, i64 %.sroa.01.04.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8
  %i.z = and i64 %i.y, 2
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.lr.ph.i2.1

bb.f:                                             ; preds = %.lr.ph.i2
  %i.ab = atomicrmw or ptr %i.x, i64 4 acq_rel, align 8
  %i.ac = and i64 %i.ab, 2
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit", label %.lr.ph.i2.1

.lr.ph.i2.1:                                      ; preds = %bb.f, %.lr.ph.i2
  %i.ae = add nuw nsw i64 %.sroa.01.04.i, 2       ; 2 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %.16.val, i64 %.sroa.01.04.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8
  %i.ai = and i64 %i.ah, 2
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i2.1
  %i.ak = atomicrmw or ptr %i.ag, i64 4 acq_rel, align 8
  %i.al = and i64 %i.ak, 2
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i2.1
  %exitcond.not.i.1 = icmp eq i64 %i.ae, 30
  br i1 %exitcond.not.i.1, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit.sink.split", label %.lr.ph.i2

bb.i:                                             ; preds = %bb.e
  %i.an = icmp samesign ult i64 %.24.val, 29
  br i1 %i.an, label %.lr.ph.i4, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit.sink.split"

.lr.ph.i4:                                        ; preds = %bb.i, %bb.k
  %.sroa.01.04.i5 = phi i64 [ %i.ao, %bb.k ], [ %i.r, %bb.i ] ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.01.04.i5, 1      ; 2 uses
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %.16.val, i64 %.sroa.01.04.i5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = and i64 %i.ar, 2
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i4
  %i.au = atomicrmw or ptr %i.aq, i64 4 acq_rel, align 8
  %i.av = and i64 %i.au, 2
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i4
  %exitcond.not.i6 = icmp eq i64 %i.ao, 30
  br i1 %exitcond.not.i6, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit.sink.split", label %.lr.ph.i4

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit.sink.split": ; preds = %bb.k, %bb.h, %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef 1744, i64 noundef 8) #66
  br label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit": ; preds = %bb.j, %bb.f, %bb.g, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h162220d6e6c6c6f2E.exit.sink.split", %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h5974e3337808ec8dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr %.16.val, i64 %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 2 uses
  %i.b = icmp eq ptr %.16.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.24.val, 31
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.16.val, i64 %.24.val ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h5dbc98aa8c18b7deE.exit"

.lr.ph.i:                                         ; preds = %bb.c, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.c ] ; 5 uses
  %i.i = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.i, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.j = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.j, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.k, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.k = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.k, %.sroa.0.02.i
  %i.l = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.l, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.m = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.m, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.n = load atomic i64, ptr %i.e acquire, align 8
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h5dbc98aa8c18b7deE.exit"

"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17h5dbc98aa8c18b7deE.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false)
  %i.q = add nuw nsw i64 %.24.val, 1              ; 2 uses
  %i.r = icmp eq i64 %i.q, 31
  br i1 %i.r, label %.lr.ph.i2, label %bb.e
end_hunk_0
begin_hunk_1_@"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h5974e3337808ec8dE":bb.a
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i4
  %i.at = atomicrmw or ptr %i.ap, i64 4 acq_rel, align 8
  %i.au = and i64 %i.at, 2
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i4
  %exitcond.not.i6 = icmp eq i64 %i.an, 30
  br i1 %exitcond.not.i6, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit.sink.split", label %.lr.ph.i4

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit.sink.split": ; preds = %bb.k, %bb.h, %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef 3976, i64 noundef 8) #66
  br label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit": ; preds = %bb.j, %bb.f, %bb.g, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h5ecb9caa91e05847E.exit.sink.split", %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h7128a963e189ae46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr %.16.val, i64 %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 2 uses
  %i.b = icmp eq ptr %.16.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.24.val, 31
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.16.val, i64 %.24.val ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit"

.lr.ph.i:                                         ; preds = %bb.c, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ 0, %bb.c ] ; 5 uses
  %i.i = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.i, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  %i.j = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.j, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.k, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.k = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i.i = lshr i32 %i.k, %.sroa.0.02.i
  %i.l = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.l, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.m = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.m, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.n = load atomic i64, ptr %i.e acquire, align 8
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit"

"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false)
  %i.q = add nuw nsw i64 %.24.val, 1              ; 2 uses
  %i.r = icmp eq i64 %i.q, 31
  br i1 %i.r, label %.lr.ph.i2, label %bb.e

bb.d:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit", %bb.b
  ret void

bb.e:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit"
  %i.s = atomicrmw or ptr %i.e, i64 2 acq_rel, align 8
  %i.t = and i64 %i.s, 4
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit", label %bb.i

.lr.ph.i2:                                        ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit", %bb.h
  %.sroa.01.04.i = phi i64 [ %i.ad, %bb.h ], [ 0, %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hbffe668e2cd380b3E.exit" ] ; 3 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %.16.val, i64 %.sroa.01.04.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = and i64 %i.x, 2
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %.lr.ph.i2.1

bb.f:                                             ; preds = %.lr.ph.i2
  %i.aa = atomicrmw or ptr %i.w, i64 4 acq_rel, align 8
  %i.ab = and i64 %i.aa, 2
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit", label %.lr.ph.i2.1

.lr.ph.i2.1:                                      ; preds = %bb.f, %.lr.ph.i2
  %i.ad = add nuw nsw i64 %.sroa.01.04.i, 2       ; 2 uses
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %.16.val, i64 %.sroa.01.04.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 248 ; 2 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8
  %i.ah = and i64 %i.ag, 2
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i2.1
  %i.aj = atomicrmw or ptr %i.af, i64 4 acq_rel, align 8
  %i.ak = and i64 %i.aj, 2
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i2.1
  %exitcond.not.i.1 = icmp eq i64 %i.ad, 30
  br i1 %exitcond.not.i.1, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit.sink.split", label %.lr.ph.i2

bb.i:                                             ; preds = %bb.e
  %i.am = icmp samesign ult i64 %.24.val, 29
  br i1 %i.am, label %.lr.ph.i4, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit.sink.split"

.lr.ph.i4:                                        ; preds = %bb.i, %bb.k
  %.sroa.01.04.i5 = phi i64 [ %i.an, %bb.k ], [ %i.q, %bb.i ] ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.01.04.i5, 1      ; 2 uses
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %.16.val, i64 %.sroa.01.04.i5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8
  %i.ar = and i64 %i.aq, 2
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i4
  %i.at = atomicrmw or ptr %i.ap, i64 4 acq_rel, align 8
  %i.au = and i64 %i.at, 2
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i4
  %exitcond.not.i6 = icmp eq i64 %i.an, 30
  br i1 %exitcond.not.i6, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit.sink.split", label %.lr.ph.i4

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit.sink.split": ; preds = %bb.k, %bb.h, %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef 3976, i64 noundef 8) #66
  br label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit": ; preds = %bb.j, %bb.f, %bb.g, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17heec619c8775a8624E.exit.sink.split", %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4recv17h3de72e331c07dd3bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.422 = alloca [40 x i8], align 8          ; 2 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 1000000000, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 1000000000, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN17crossbeam_channel7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h5ea2a37468d6736fE") ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.023 = phi i32 [ 0, %bb.a ], [ %.sroa.0.023.be, %.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38876)
  %i.s = load atomic i64, ptr %1 acquire, align 128, !noalias !38876
  %i.t = load atomic ptr, ptr %i.o acquire, align 8, !noalias !38876
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.0.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.0.i.be, %.backedge.i.backedge ] ; 13 uses
  %.sroa.06.0.i = phi ptr [ %i.t, %bb.b ], [ %.sroa.06.0.i.be, %.backedge.i.backedge ] ; 9 uses
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.01.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.u = lshr i64 %.sroa.01.0.i, 1                ; 2 uses
  %i.v = and i64 %i.u, 31                         ; 6 uses
  %i.w = icmp eq i64 %i.v, 31
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.01.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.01.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.h

bb.d:                                             ; preds = %.backedge.i
  %i.aa = icmp ult i32 %.sroa.0.0.i, 7
  br i1 %i.aa, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.d
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !38876
  %i.ab = icmp ult i32 %.sroa.0.0.i, 11
  br i1 %i.ab, label %.loopexit.i.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.ac, %.preheader.i.i ], [ 0, %bb.d ]
  %i.ac = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause() #66, !noalias !38876
  %.sroa.0.0.highbits.i.i = lshr i32 %i.ac, %.sroa.0.0.i
  %i.ad = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ad, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ae = add nuw nsw i32 %.sroa.0.0.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.132.i = phi i32 [ %i.ae, %.loopexit.i.thread.i ], [ %.sroa.0.0.i, %.loopexit.i.i ]
  %i.af = load atomic i64, ptr %1 acquire, align 128, !noalias !38876
  %i.ag = load atomic ptr, ptr %i.o acquire, align 8, !noalias !38876
  br label %.backedge.i.backedge

bb.e:                                             ; preds = %bb.c
  fence seq_cst
  %i.ah = load atomic i64, ptr %i.p monotonic, align 128, !noalias !38876 ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.u, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.ah, %.sroa.01.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = trunc i64 %i.ah to i1
  br i1 %i.ak, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit.thread", label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hff51d2811fe731b3E.exit"

bb.h:                                             ; preds = %bb.f, %bb.c
  %.sroa.09.0.i = phi i64 [ %i.x, %bb.c ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = icmp ult i32 %.sroa.0.0.i, 7
  br i1 %i.am, label %.preheader.i21.i, label %.loopexit.i20.i

.loopexit.i20.i:                                  ; preds = %bb.i
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !38876
  %i.an = icmp ult i32 %.sroa.0.0.i, 11
  br i1 %i.an, label %.loopexit.i20.thread.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i

.preheader.i21.i:                                 ; preds = %bb.i, %.preheader.i21.i
  %.sroa.0.03.i22.i = phi i32 [ %i.ao, %.preheader.i21.i ], [ 0, %bb.i ]
  %i.ao = add nuw nsw i32 %.sroa.0.03.i22.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause() #66, !noalias !38876
  %.sroa.0.0.highbits.i23.i = lshr i32 %i.ao, %.sroa.0.0.i
  %i.ap = icmp eq i32 %.sroa.0.0.highbits.i23.i, 0
  br i1 %i.ap, label %.preheader.i21.i, label %.loopexit.i20.thread.i

.loopexit.i20.thread.i:                           ; preds = %.preheader.i21.i, %.loopexit.i20.i
  %i.aq = add nuw nsw i32 %.sroa.0.0.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i: ; preds = %.loopexit.i20.thread.i, %.loopexit.i20.i
  %.sroa.0.2.i = phi i32 [ %i.aq, %.loopexit.i20.thread.i ], [ %.sroa.0.0.i, %.loopexit.i20.i ]
  %i.ar = load atomic i64, ptr %1 acquire, align 128, !noalias !38876
  %i.as = load atomic ptr, ptr %i.o acquire, align 8, !noalias !38876
  br label %.backedge.i.backedge

bb.j:                                             ; preds = %bb.h
  %i.at = cmpxchg weak ptr %1, i64 %.sroa.01.0.i, i64 %.sroa.09.0.i seq_cst acquire, align 8, !noalias !38876 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.at, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.at, 0
  br i1 %.sroa.18.0.in.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load atomic ptr, ptr %i.o acquire, align 8, !noalias !38876
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.0.i, i32 6)
  br label %bb.l

_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i: ; preds = %bb.l
  %i.av = icmp ult i32 %.sroa.0.0.i, 7
  %i.aw = zext i1 %i.av to i32
  %spec.select33.i = add nuw nsw i32 %.sroa.0.0.i, %i.aw
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i
  %.sroa.0.0.i.be = phi i32 [ %.sroa.0.132.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ %.sroa.0.2.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i ], [ %spec.select33.i, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i ]
  %.sroa.06.0.i.be = phi ptr [ %i.ag, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ %i.as, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i ], [ %i.au, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i ]
  %.sroa.01.0.i.be = phi i64 [ %i.af, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i ], [ %i.ar, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit24.i ], [ %.sroa.01.0.i.i, %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i ]
  br label %.backedge.i

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.k ], [ %i.ax, %bb.l ]
  %i.ax = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause() #66, !noalias !38876
  %.sroa.0.0.highbits.i25.i = lshr i32 %i.ax, %.sroa.0.0.i.i.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i25.i, 0
  br i1 %i.ay, label %bb.l, label %_ZN15crossbeam_utils7backoff7Backoff4spin17h13d77a233f1ae78dE.exit.i

bb.m:                                             ; preds = %bb.j
  %i.az = icmp eq i64 %i.v, 30
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = load atomic ptr, ptr %.sroa.06.0.i acquire, align 8, !noalias !38876 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5ed32310db4a0ba7E.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.n, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i
  %.sroa.0.02.i26.i = phi i32 [ %.sroa.0.1.i.i, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i ], [ 0, %bb.n ] ; 5 uses
  %i.bc = icmp ult i32 %.sroa.0.02.i26.i, 7
  br i1 %i.bc, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !38876
  %i.bd = icmp ult i32 %.sroa.0.02.i26.i, 11
  br i1 %i.bd, label %.loopexit.i.thread.i.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.be, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.be = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause() #66, !noalias !38876
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.be, %.sroa.0.02.i26.i
  %i.bf = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.bf, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.bg = add nuw nsw i32 %.sroa.0.02.i26.i, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bg, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i26.i, %.loopexit.i.i.i ]
  %i.bh = load atomic ptr, ptr %.sroa.06.0.i acquire, align 8, !noalias !38876 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.lr.ph.i.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5ed32310db4a0ba7E.exit.i"

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5ed32310db4a0ba7E.exit.i": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.ba, %bb.n ], [ %i.bh, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i ] ; 2 uses
  %i.bj = and i64 %.sroa.09.0.i, -2
  %5 = add i64 %i.bj, 2
  %i.bk = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !38876
  %6 = icmp ne ptr %i.bk, null
  %7 = zext i1 %6 to i64
  %spec.select19.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.o release, align 8, !noalias !38876
  store atomic i64 %spec.select19.i, ptr %1 release, align 128, !noalias !38876
  br label %bb.o

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hff51d2811fe731b3E.exit": ; preds = %bb.g
  %exitcond = icmp eq i32 %.sroa.0.023, 11
  br i1 %exitcond, label %bb.y, label %bb.w

bb.o:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$9wait_next17h5ed32310db4a0ba7E.exit.i", %bb.m
  store ptr %.sroa.06.0.i, ptr %i.k, align 8, !alias.scope !38876
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !38876
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %i.v ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 3 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8, !noalias !38877
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i2, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i"

.lr.ph.i.i2:                                      ; preds = %bb.o, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5
  %.sroa.0.02.i.i3 = phi i32 [ %.sroa.0.1.i.i6, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5 ], [ 0, %bb.o ] ; 5 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i3, 7
  br i1 %i.br, label %.preheader.i.i.i8, label %.loopexit.i.i.i4

.loopexit.i.i.i4:                                 ; preds = %.lr.ph.i.i2
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !38877
  %i.bs = icmp ult i32 %.sroa.0.02.i.i3, 11
  br i1 %i.bs, label %.loopexit.i.thread.i.i7, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5

.preheader.i.i.i8:                                ; preds = %.lr.ph.i.i2, %.preheader.i.i.i8
  %.sroa.0.03.i.i.i9 = phi i32 [ %i.bt, %.preheader.i.i.i8 ], [ 0, %.lr.ph.i.i2 ]
  %i.bt = add nuw nsw i32 %.sroa.0.03.i.i.i9, 1   ; 2 uses
  call void @llvm.x86.sse2.pause() #66, !noalias !38877
  %.sroa.0.0.highbits.i.i.i10 = lshr i32 %i.bt, %.sroa.0.02.i.i3
  %i.bu = icmp eq i32 %.sroa.0.0.highbits.i.i.i10, 0
  br i1 %i.bu, label %.preheader.i.i.i8, label %.loopexit.i.thread.i.i7

.loopexit.i.thread.i.i7:                          ; preds = %.preheader.i.i.i8, %.loopexit.i.i.i4
  %i.bv = add nuw nsw i32 %.sroa.0.02.i.i3, 1
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5: ; preds = %.loopexit.i.thread.i.i7, %.loopexit.i.i.i4
  %.sroa.0.1.i.i6 = phi i32 [ %i.bv, %.loopexit.i.thread.i.i7 ], [ %.sroa.0.02.i.i3, %.loopexit.i.i.i4 ]
  %i.bw = load atomic i64, ptr %i.bn acquire, align 8, !noalias !38877
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i2, label %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i"

"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i": ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit.i.i5, %bb.o
  %.sroa.021.0.copyload = load i64, ptr %i.bm, align 8, !noalias !38877 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.422, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.422.0..sroa_idx, i64 40, i1 false)
  %i.bz = add nuw nsw i64 %i.v, 1                 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 31
  br i1 %i.ca, label %.lr.ph.i2.i, label %bb.p

bb.p:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i"
  %i.cb = atomicrmw or ptr %i.bn, i64 2 acq_rel, align 8, !noalias !38877
  %i.cc = and i64 %i.cb, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit", label %bb.t

.lr.ph.i2.i:                                      ; preds = %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i", %bb.s
  %.sroa.01.04.i.i = phi i64 [ %i.cm, %bb.s ], [ 0, %"_ZN17crossbeam_channel7flavors4list13Slot$LT$T$GT$10wait_write17hba823de7ba36a18bE.exit.i" ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.0.i, i64 %.sroa.01.04.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56 ; 2 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8, !noalias !38877
  %i.ch = and i64 %i.cg, 2
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.q, label %.lr.ph.i2.i.1

bb.q:                                             ; preds = %.lr.ph.i2.i
  %i.cj = atomicrmw or ptr %i.cf, i64 4 acq_rel, align 8, !noalias !38877
  %i.ck = and i64 %i.cj, 2
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit", label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.q, %.lr.ph.i2.i
  %i.cm = add nuw nsw i64 %.sroa.01.04.i.i, 2     ; 2 uses
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.0.i, i64 %.sroa.01.04.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 112 ; 2 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8, !noalias !38877
  %i.cq = and i64 %i.cp, 2
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i2.i.1
  %i.cs = atomicrmw or ptr %i.co, i64 4 acq_rel, align 8, !noalias !38877
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit", label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i2.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.cm, 30
  br i1 %exitcond.not.i.i.1, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h03ccbfebb189644fE.exit.sink.split.i", label %.lr.ph.i2.i

bb.t:                                             ; preds = %bb.p
  %i.cv = icmp samesign ult i64 %i.v, 29
  br i1 %i.cv, label %.lr.ph.i4.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h03ccbfebb189644fE.exit.sink.split.i"

.lr.ph.i4.i:                                      ; preds = %bb.t, %bb.v
  %.sroa.01.04.i5.i = phi i64 [ %i.cw, %bb.v ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.01.04.i5.i, 1    ; 2 uses
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.0.i, i64 %.sroa.01.04.i5.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56 ; 2 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !noalias !38877
  %i.da = and i64 %i.cz, 2
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i4.i
  %i.dc = atomicrmw or ptr %i.cy, i64 4 acq_rel, align 8, !noalias !38877
  %i.dd = and i64 %i.dc, 2
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit", label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cw, 30
  br i1 %exitcond.not.i6.i, label %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h03ccbfebb189644fE.exit.sink.split.i", label %.lr.ph.i4.i

"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h03ccbfebb189644fE.exit.sink.split.i": ; preds = %bb.v, %bb.s, %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.i, i64 noundef 1744, i64 noundef 8) #66, !noalias !38877
  br label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit"

"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit": ; preds = %bb.u, %bb.q, %bb.r, %bb.p, %"_ZN17crossbeam_channel7flavors4list14Block$LT$T$GT$7destroy17h03ccbfebb189644fE.exit.sink.split.i"
  %i.df = icmp eq i64 %.sroa.021.0.copyload, -9223372036854775807
  br i1 %i.df, label %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4read17h2e3f659e916ba4e7E.exit.thread", label %bb.aq

bb.w:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hff51d2811fe731b3E.exit"
  %i.dg = icmp samesign ult i32 %.sroa.0.023, 7
  br i1 %i.dg, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
  br label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.dh, %.preheader.i ], [ 0, %bb.w ]
  %i.dh = add nuw nsw i32 %.sroa.0.03.i, 1        ; 2 uses
  call void @llvm.x86.sse2.pause() #66
  %.sroa.0.0.highbits.i = lshr i32 %i.dh, %.sroa.0.023
  %i.di = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.di, label %.preheader.i, label %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit

_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit: ; preds = %.preheader.i, %bb.x
  %i.dj = add nuw nsw i32 %.sroa.0.023, 1
  br label %.backedge

.backedge:                                        ; preds = %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit, %_ZN17crossbeam_channel7context7Context4with17hd297d3416678cc37E.exit
  %.sroa.0.023.be = phi i32 [ %i.dj, %_ZN15crossbeam_utils7backoff7Backoff6snooze17h37f3776f9cf746f3E.exit ], [ 0, %_ZN17crossbeam_channel7context7Context4with17hd297d3416678cc37E.exit ]
  br label %bb.b

bb.y:                                             ; preds = %"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$10start_recv17hff51d2811fe731b3E.exit"
  %i.dk = load i32, ptr %i.i, align 8, !range !86, !noundef !44 ; 2 uses
  %.not = icmp eq i32 %i.dk, 1000000000
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load i64, ptr %i.h, align 8, !noundef !44 ; 2 uses
  %i.dm = call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.dn = extractvalue { i64, i32 } %i.dm, 0      ; 2 uses
  %i.do = icmp eq i64 %i.dn, %i.dl
  br i1 %i.do, label %.split, label %bb.an

bb.aa:                                            ; preds = %.split, %bb.an, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38878
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dp = load i8, ptr %i.r, align 8, !range !82, !noalias !38879, !noundef !44
  %i.dq = icmp eq i8 %i.dp, 1
  br i1 %i.dq, label %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.i.i, !prof !46

_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.i.i: ; preds = %bb.aa
  %i.dr = call fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h5d7f282fc2d1d920E"(ptr noundef nonnull align 8 %i.q, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !38878 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5f1259d9b9b3811dE.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.i.i, %bb.aa
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dr, %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.i.i ], [ %i.q, %bb.aa ] ; 4 uses
  %i.dt = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !38878, !noundef !44 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !38878
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.ah, !prof !49

bb.ab:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h74237b363c1125f0E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38878
  %i.du = call noundef nonnull ptr @_ZN17crossbeam_channel7context7Context3new17h772d8fa5a3664e78E(), !noalias !38878 ; 2 uses
  store ptr %i.du, ptr %i.e, align 8, !noalias !38878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38878
  store ptr %i.g, ptr %i.c, align 8, !noalias !38878
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN17crossbeam_channel7flavors4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h4a530218c70088b9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.du)
          to label %bb.ae unwind label %bb.ac, !noalias !38878

bb.ac:                                            ; preds = %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38880)
end_hunk_1
begin_hunk_2_@"_ZN92_$LT$std..sync..mpsc..TryIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae1a05ecc9f44400E":bb.a
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.j
  %xtraiter141 = and i32 %i.an, 5                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter145 = and i32 %i.an, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod143.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter142 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter142.next, %.lr.ph.i12.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !116040

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter146 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i12.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %niter146.next.7 = add i32 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = and i64 %i.aj, %i.ai
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN4core3ptr165drop_in_place$LT$core..result..Result$LT$$LP$nickel_lang_core..error..warning..Warning$C$nickel_lang_parser..files..Files$RP$$C$std..sync..mpsc..TryRecvError$GT$$GT$17hdda8a19f8a20f361E.exit", label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i"

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.n, %._crit_edge.loopexit.i.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.ah, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i ], [ 1, %bb.n ], [ %i.ay, %._crit_edge.loopexit.i20.i.i.i ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.j ]
  %i.as = load atomic i64, ptr %.val1 monotonic, align 16, !noalias !116105
  br label %bb.c

bb.l:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.h, align 8, !noalias !116105, !noundef !44
  %i.au = add i64 %i.at, %i.r
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.sroa.09.0.i.i.i = phi i64 [ %i.au, %bb.l ], [ %i.x, %bb.e ]
  %i.av = cmpxchg weak ptr %.val1, i64 %.sroa.01.0.i.i.i, i64 %.sroa.09.0.i.i.i seq_cst monotonic, align 8, !noalias !116105
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %i.aw = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.n
  %xtraiter147 = and i32 %i.aw, 5                 ; 3 uses
  %i.ax = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ax, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter151 = and i32 %i.aw, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod149.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod149.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod150 = icmp ne i32 %xtraiter147, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter148 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter148.next, %.lr.ph.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %epil.iter148.next = add i32 %epil.iter148, 1   ; 2 uses
  %epil.iter148.cmp.not = icmp eq i32 %epil.iter148.next, %xtraiter147
  br i1 %epil.iter148.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !116041

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.ay = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter152 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter152.next.7, %.lr.ph.i17.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116105
  %niter152.next.7 = add i32 %niter152, 8         ; 2 uses
  %niter152.ncmp.7 = icmp eq i32 %niter152.next.7, %unroll_iter151
  br i1 %niter152.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i": ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ba = load i64, ptr %i.h, align 8, !noalias !116105, !noundef !44
  %i.bb = add i64 %i.ba, %.sroa.01.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !noalias !116106
  store atomic i64 %i.bb, ptr %i.az release, align 8, !noalias !116106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !116106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.bc)
          to label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" unwind label %bb.p, !noalias !116106

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116107)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116110)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !116111, !noalias !116106, !noundef !44 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !116112, !noundef !44
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bf, align 8, !noalias !116112
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %common.resume.i unwind label %bb.s, !noalias !116106

bb.s:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !116106
  unreachable

common.resume.i:                                  ; preds = %bb.ci, %bb.bt, %bb.bs, %bb.be, %bb.r, %bb.q, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bd, %bb.r ], [ %i.bd, %bb.q ], [ %i.fg, %bb.be ], [ %lpad.phi.i.i, %bb.bt ], [ %i.if, %bb.ci ], [ %lpad.phi.i.i, %bb.bs ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i": ; preds = %bb.o
  %.sroa.02.0.copyload3.i.i = load i32, ptr %i.d, align 8, !noalias !116113 ; 2 uses
  %.sroa.64.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.64.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.64.0..sroa_idx5.i.i, align 4, !noalias !116113
  %.sroa.64.i.i.sroa.5.0..sroa.64.0..sroa_idx5.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5.0..sroa.64.0..sroa_idx5.i.i.sroa_idx, i64 59, i1 false), !noalias !116113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !116106
  %i.bl = icmp eq i32 %.sroa.02.0.copyload3.i.i, 3
  br i1 %i.bl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.64.i.i.sroa.5, i64 59, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i", %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i", %bb.t
  %.sroa.10.0 = phi i8 [ %.sroa.64.i.i.sroa.0.0.copyload, %bb.t ], [ 1, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" ], [ 1, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i" ]
  %.sroa.02.0.copyload3.sink.i.i = phi i32 [ %.sroa.02.0.copyload3.i.i, %bb.t ], [ 3, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.i.i" ], [ 3, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17h923d58c0622f6d0fE.exit.thread.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i.i.sroa.5)
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i.sroa.4)
  %i.bm = load atomic i64, ptr %.val1 acquire, align 8, !noalias !116114
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.bo = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !116114
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i.i, %bb.v
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.v ], [ %.sroa.0.034.be.i.i.i, %.backedge.i.i.i ] ; 16 uses
  %.sroa.06.0.i.i.i = phi ptr [ %i.bo, %bb.v ], [ %i.cb, %.backedge.i.i.i ] ; 8 uses
  %.sroa.01.0.i.i1.i = phi i64 [ %i.bm, %bb.v ], [ %i.ca, %.backedge.i.i.i ] ; 5 uses
  %i.bq = lshr i64 %.sroa.01.0.i.i1.i, 1          ; 2 uses
  %i.br = and i64 %i.bq, 31                       ; 5 uses
  %i.bs = icmp eq i64 %i.br, 31
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add i64 %.sroa.01.0.i.i1.i, 2           ; 2 uses
  %i.bu = and i64 %.sroa.01.0.i.i1.i, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ab, label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.bw = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.bw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i7.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i7.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.preheader

.lr.ph.i.i.i8.i.preheader:                        ; preds = %bb.aa
  %i.bx = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter117 = and i32 %i.bx, 7                 ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.by, label %.lr.ph.i.i.i8.i.epil.preheader, label %.lr.ph.i.i.i8.i.preheader.new

.lr.ph.i.i.i8.i.preheader.new:                    ; preds = %.lr.ph.i.i.i8.i.preheader
  %unroll_iter121 = and i32 %i.bx, 56
  br label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i8.i:                                  ; preds = %.lr.ph.i.i.i8.i, %.lr.ph.i.i.i8.i.preheader.new
  %niter122 = phi i32 [ 0, %.lr.ph.i.i.i8.i.preheader.new ], [ %niter122.next.7, %.lr.ph.i.i.i8.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter122.next.7 = add i32 %niter122, 8         ; 2 uses
  %niter122.ncmp.7 = icmp eq i32 %niter122.next.7, %unroll_iter121
  br i1 %niter122.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i
  %lcmp.mod119.not = icmp eq i32 %xtraiter117, 0
  br i1 %lcmp.mod119.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil.preheader

.lr.ph.i.i.i8.i.epil.preheader:                   ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.preheader
  %lcmp.mod120 = icmp ne i32 %xtraiter117, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.i.i8.i.epil

.lr.ph.i.i.i8.i.epil:                             ; preds = %.lr.ph.i.i.i8.i.epil, %.lr.ph.i.i.i8.i.epil.preheader
  %epil.iter118 = phi i32 [ 0, %.lr.ph.i.i.i8.i.epil.preheader ], [ %epil.iter118.next, %.lr.ph.i.i.i8.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter118.next = add i32 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i32 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil, !llvm.loop !116060

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.epil, %bb.aa, %bb.z
  %i.bz = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %._crit_edge.loopexit.i.i.i5.i, %bb.aj, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i
  %.sroa.0.034.be.i.i.i = phi i32 [ %i.bz, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i6.i ], [ %i.cl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i ], [ %i.cp, %._crit_edge.loopexit.i.i.i5.i ], [ 1, %bb.aj ]
  %i.ca = load atomic i64, ptr %.val1 acquire, align 8, !noalias !116114
  %i.cb = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !116114
  br label %bb.w

bb.ab:                                            ; preds = %bb.x
  fence seq_cst
  %i.cc = load atomic i64, ptr %i.bp monotonic, align 8, !noalias !116114 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.bq, %i.cd
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.unshifted.i.i.i = xor i64 %i.cc, %.sroa.01.0.i.i1.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %1 = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.bt, %1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cf = and i64 %i.cc, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i"

bb.ae:                                            ; preds = %bb.ac, %bb.x
  %.sroa.09.0.i.i2.i = phi i64 [ %i.bt, %bb.x ], [ %spec.select.i.i.i, %bb.ac ] ; 2 uses
  %i.ch = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.ch, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ci = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.ci, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i

bb.ah:                                            ; preds = %bb.af
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.ah
  %i.cj = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter111 = and i32 %i.cj, 7                 ; 3 uses
  %i.ck = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ck, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter115 = and i32 %i.cj, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i19.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter116.next.7 = add i32 %niter116, 8         ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i19.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !116061

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %bb.ah, %bb.ag
  %i.cl = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.cm = cmpxchg weak ptr %.val1, i64 %.sroa.01.0.i.i1.i, i64 %.sroa.09.0.i.i2.i seq_cst acquire, align 8, !noalias !116114
  %.sroa.18.0.in.i.i.i3.i = extractvalue { i64, i1 } %i.cm, 1
  br i1 %.sroa.18.0.in.i.i.i3.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.i.i.i.i4.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.cn = mul nuw nsw i32 %.sroa.0.0.i.i.i.i4.i, %.sroa.0.0.i.i.i.i4.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.aj
  %xtraiter105 = and i32 %i.cn, 5                 ; 3 uses
  %i.co = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.co, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter109 = and i32 %i.cn, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i5.i.unr-lcssa:          ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i.i5.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i5.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i24.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i.i5.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !116062

._crit_edge.loopexit.i.i.i5.i:                    ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i5.i.unr-lcssa
  %i.cp = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i24.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.i5.i.unr-lcssa, label %.lr.ph.i24.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.cq = icmp eq i64 %i.br, 30
  br i1 %i.cq, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cr = load atomic ptr, ptr %.sroa.06.0.i.i.i acquire, align 8, !noalias !116114 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.lr.ph.i27.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i"

.lr.ph.i27.i.i.i:                                 ; preds = %bb.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.cw, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i ], [ 0, %bb.al ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.ct, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i27.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116114
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.an
  %i.cu = mul nuw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter123 = and i32 %i.cu, 7                 ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter127 = and i32 %i.cu, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter128 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter128.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %niter128.next.7 = add i32 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i32 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod126 = icmp ne i32 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter124 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter124.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116114
  %epil.iter124.next = add i32 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !116063

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.an, %bb.am
  %i.cw = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.cx = load atomic ptr, ptr %.sroa.06.0.i.i.i acquire, align 8, !noalias !116114 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.lr.ph.i27.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, %bb.al
  %.lcssa.i.i.i.i = phi ptr [ %i.cr, %bb.al ], [ %i.cx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i ] ; 2 uses
  %i.cz = and i64 %.sroa.09.0.i.i2.i, -2
  %2 = add i64 %i.cz, 2
  %i.da = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !116114
  %3 = icmp ne ptr %i.da, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.bn release, align 8, !noalias !116114
  store atomic i64 %spec.select17.i.i.i, ptr %.val1 release, align 8, !noalias !116114
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h9b1328182533da9bE.exit.i.i.i", %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dc = getelementptr inbounds nuw [72 x i8], ptr %i.db, i64 %i.br ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64 ; 3 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8, !noalias !116115
  %i.df = and i64 %i.de, 1
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i3.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"

.lr.ph.i.i3.i.i:                                  ; preds = %bb.ao, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.dk, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i ], [ 0, %bb.ao ] ; 6 uses
  %i.dh = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.dh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i3.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !116115
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.aq
  %i.di = mul nuw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter129 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter133 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter134 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter134.next.7, %.lr.ph.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  %niter134.next.7 = add i32 %niter134, 8         ; 2 uses
  %niter134.ncmp.7 = icmp eq i32 %niter134.next.7, %unroll_iter133
  br i1 %niter134.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod131.not = icmp eq i32 %xtraiter129, 0
  br i1 %lcmp.mod131.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod132 = icmp ne i32 %xtraiter129, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter130 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter130.next, %.lr.ph.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #66, !noalias !116115
  %epil.iter130.next = add i32 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i32 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !116066

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.aq, %bb.ap
  %i.dk = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.dl = load atomic i64, ptr %i.dd acquire, align 8, !noalias !116115
  %i.dm = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i3.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i5.i.i, %bb.ao
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.dc, align 8, !noalias !116115 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.sroa.416.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.416.0..sroa_idx.i.i, align 4, !noalias !116116
  %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4.0..sroa.416.0..sroa_idx.i.i.sroa_idx, i64 59, i1 false), !noalias !116116
  %i.do = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.dp = icmp eq i64 %i.do, 31
  br i1 %i.dp, label %.lr.ph.i2.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i"
  %i.dq = atomicrmw or ptr %i.dd, i64 2 acq_rel, align 8, !noalias !116115
  %i.dr = and i64 %i.dq, 4
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.av

.lr.ph.i2.i.i.i:                                  ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i", %bb.au
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.eb, %bb.au ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h3e9fc871baf75718E.exit.i.i.i" ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72 ; 2 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8, !noalias !116115
  %i.dw = and i64 %i.dv, 2
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.as, label %.lr.ph.i2.i.i.i.1

bb.as:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.dy = atomicrmw or ptr %i.du, i64 4 acq_rel, align 8, !noalias !116115
  %i.dz = and i64 %i.dy, 2
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.as, %.lr.ph.i2.i.i.i
  %i.eb = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.ec = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 144 ; 2 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8, !noalias !116115
  %i.ef = and i64 %i.ee, 2
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.eh = atomicrmw or ptr %i.ed, i64 4 acq_rel, align 8, !noalias !116115
  %i.ei = and i64 %i.eh, 2
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.eb, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", label %.lr.ph.i2.i.i.i

bb.av:                                            ; preds = %bb.ar
  %i.ek = icmp samesign ult i64 %i.br, 29
  br i1 %i.ek, label %.lr.ph.i4.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i"

.lr.ph.i4.i.i.i:                                  ; preds = %bb.av, %bb.ax
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.el, %bb.ax ], [ %i.do, %bb.av ] ; 2 uses
  %i.el = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %.sroa.06.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72 ; 2 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8, !noalias !116115
  %i.ep = and i64 %i.eo, 2
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.er = atomicrmw or ptr %i.en, i64 4 acq_rel, align 8, !noalias !116115
  %i.es = and i64 %i.er, 2
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.el, 30
  br i1 %exitcond.not.i6.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", label %.lr.ph.i4.i.i.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i": ; preds = %bb.ax, %bb.au, %bb.av
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.i.i.i, i64 noundef 2240, i64 noundef 8) #66, !noalias !116115
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i": ; preds = %bb.aw, %bb.as, %bb.at, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h08e67f8b728e4b22E.exit.sink.split.i.i.i", %bb.ar
  %i.eu = icmp eq i32 %.sroa.015.0.copyload.i.i, 3
  br i1 %i.eu, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i", label %bb.ay

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i", %bb.ad
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i"

bb.ay:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.738.i.i.sroa.5, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.416.i.i.sroa.4, i64 59, i1 false)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$8try_recv17h4bd5ca792a39b2f7E.exit.i": ; preds = %bb.ad, %bb.ay, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i"
  %.sroa.10.1 = phi i8 [ %.sroa.416.i.i.sroa.0.0.copyload, %bb.ay ], [ 1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i" ], [ 0, %bb.ad ]
  %storemerge.i.i = phi i32 [ %.sroa.015.0.copyload.i.i, %bb.ay ], [ 3, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17hd3eba0b744f5b208E.exit.thread.i.i" ], [ 3, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i.sroa.4)
  br label %"_ZN3std4sync4mpmc17Receiver$LT$T$GT$8try_recv17h1b153a0b1fd1a217E.exit"

bb.az:                                            ; preds = %bb.a
  %i.ev = cmpxchg ptr %.val1, i32 0, i32 1 acquire monotonic, align 4, !noalias !116117
  %i.ew = extractvalue { i32, i1 } %i.ev, 1
  br i1 %i.ew, label %bb.bb, label %bb.ba, !prof !46

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.val1), !noalias !116117
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ex = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !116117
  %i.ey = and i64 %i.ex, 9223372036854775807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i", label %bb.bc, !prof !46

bb.bc:                                            ; preds = %bb.bb
  %i.fa = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !116117
  %i.fb = xor i1 %i.fa, true
  %i.fc = zext i1 %i.fb to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i": ; preds = %bb.bc, %bb.bb
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.fc, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1, i64 4 ; 3 uses
  %i.fe = load atomic i8, ptr %i.fd monotonic, align 1, !noalias !116117
  %.not50.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not50.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h430117330b8c131cE.exit.i.i", label %bb.bd, !prof !46

bb.bd:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h6cb3c499e3cd334fE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116118
  store ptr %.val1, ptr %i.a, align 8, !noalias !116118
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_2
