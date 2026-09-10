Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/mdbook-5c818a28b1b0cc85.mdbook.afaaf51857b3248e-cgu.02?download=true
inline.NumInlined: 903
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE":bb.a
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12 ], [ false, %bb.a ], [ false, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.015, %i.ak             ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h2dcbaee713614fd5E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !4
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax49 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not86.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not86.not, label %.lr.ph89, label %._crit_edge90

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph71 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph71, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax49
  br i1 %exitcond.not, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph93, label %._crit_edge94

.lr.ph89:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.087 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.087, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.h
  %.sroa.2.091 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge90 ]
  %i.ag = add i64 %.sroa.2.091, -1                ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge94
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !537
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !alias.scope !537
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph93
  %i.ak = add i64 %i.ag, %i.n                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph93
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ag, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !4
  %.not = icmp eq i8 %i.an, %i.ap
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ak, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = add i64 %i.j, %i.n                      ; 3 uses
  store i64 %i.aq, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph89
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.087
  %i.as = load i8, ptr %i.ar, align 1, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.au = load i8, ptr %i.at, align 1, !noundef !4
  %.not21 = icmp eq i8 %i.as, %i.au
  br i1 %.not21, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph89
  %i.av = add i64 %.sroa.01.0, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.av)
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #20
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.n, 1
  %i.ax = add i64 %i.aw, %.sroa.02.087
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  store i64 %i.ay, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @108, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 6, 16) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph", label %bb.b

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.m, %bb.b, %bb.o, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %.sroa.0.0 = phi i8 [ %i.cz, %bb.o ], [ 0, %bb.b ], [ %i.cx, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit ], [ %.sroa.015.5.i, %bb.m ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.o, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.f = load i8, ptr %0, align 1, !alias.scope !557, !noalias !558, !noundef !4 ; 2 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = add nsw i64 %1, -4
  br label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i"
  %i.i = icmp ult i64 %i.h, %i.j
  br i1 %i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i": ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph", %bb.c
  %4 = phi i64 [ %1, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph" ], [ %i.j, %bb.c ]
  %i.j = add nsw i64 %4, -1                       ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !557, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.l, %i.f
  br i1 %.not.i.not.i.i.a, label %bb.c, label %bb.d

bb.d:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i"
  %i.m = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.n = icmp ult i64 %3, %i.m
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %bb.e

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 6, 16) %1), !alias.scope !560, !noalias !561
  %i.o = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.o, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.p = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i33 = icmp ugt i64 %1, %i.p
  br i1 %.not28.i.i33, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i"
  %i.q = phi i64 [ %i.t, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ %i.p, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ]
  %.pn.i34 = phi ptr [ %i.r, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ]
  %i.r = getelementptr inbounds nuw i8, ptr %.pn.i34, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 6, 16) %1), !alias.scope !560, !noalias !561
  %i.s = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.s, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.t = add nsw i64 %i.q, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.t
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = insertelement <1 x i8> poison, i8 %i.l, i64 0
  %i.v = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.w = shufflevector <1 x i8> %i.v, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.x = shufflevector <1 x i8> %i.u, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  store ptr %2, ptr %i.a, align 8, !noalias !560
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.z, align 8, !noalias !560
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !560
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ab, align 8, !noalias !560
  %i.ac = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %bb.e
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.e ], [ %.sroa.015.2.3.i, %bb.i ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.bt, %bb.i ] ; 2 uses
  %i.ad = add i64 %.sroa.07.0.lcssa.i, %i.m
  %i.ae = icmp uge i64 %i.ad, %3
  %i.af = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3113.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond3113.i, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.07.0111.i = phi i64 [ %i.bt, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0111.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !558, !noalias !562
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  %.val.i.i = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !558, !noalias !562
  %i.ai = icmp eq <16 x i8> %.val3.i.i, %i.w
  %i.aj = icmp eq <16 x i8> %.val.i.i, %i.x
  %narrow.i.i = select <16 x i1> %i.ai, <16 x i1> %i.aj, <16 x i1> zeroinitializer
  %i.ak = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.al, align 1, !alias.scope !558, !noalias !562
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.j
  %.val.i.1.i = load <16 x i8>, ptr %i.am, align 1, !alias.scope !558, !noalias !562
  %i.an = icmp eq <16 x i8> %.val3.i.1.i, %i.w
  %i.ao = icmp eq <16 x i8> %.val.i.1.i, %i.x
  %narrow.i.1.i = select <16 x i1> %i.an, <16 x i1> %i.ao, <16 x i1> zeroinitializer
  %i.ap = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.aq, align 1, !alias.scope !558, !noalias !562
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.j
  %.val.i.2.i = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !558, !noalias !562
  %i.as = icmp eq <16 x i8> %.val3.i.2.i, %i.w
  %i.at = icmp eq <16 x i8> %.val.i.2.i, %i.x
  %narrow.i.2.i = select <16 x i1> %i.as, <16 x i1> %i.at, <16 x i1> zeroinitializer
  %i.au = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !558, !noalias !562
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.j
  %.val.i.3.i = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !558, !noalias !562
  %i.ax = icmp eq <16 x i8> %.val3.i.3.i, %i.w
  %i.ay = icmp eq <16 x i8> %.val.i.3.i, %i.x
  %narrow.i.3.i = select <16 x i1> %i.ax, <16 x i1> %i.ay, <16 x i1> zeroinitializer
  %i.az = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.ba = icmp eq i16 %i.ak, 0
  br i1 %i.ba, label %.preheader104.1.i, label %bb.j

.preheader104.1.i:                                ; preds = %bb.j, %.lr.ph.i
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.by, %bb.j ] ; 3 uses
  %i.bb = icmp eq i16 %i.ap, 0
  br i1 %i.bb, label %.preheader104.2.i, label %bb.f

bb.f:                                             ; preds = %.preheader104.1.i
  %i.bc = or disjoint i64 %.sroa.07.0111.i, 16
  %i.bd = trunc nuw i8 %.sroa.015.2.i to i1
  %i.be = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bc, i16 noundef %i.ap, i1 noundef zeroext %i.bd)
  %i.bf = zext i1 %i.be to i8
  %i.bg = or i8 %.sroa.015.2.i, %i.bf
  br label %.preheader104.2.i

.preheader104.2.i:                                ; preds = %bb.f, %.preheader104.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader104.1.i ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bh = icmp eq i16 %i.au, 0
  br i1 %i.bh, label %.preheader104.3.i, label %bb.g

bb.g:                                             ; preds = %.preheader104.2.i
  %i.bi = or disjoint i64 %.sroa.07.0111.i, 32
  %i.bj = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.bk = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bi, i16 noundef %i.au, i1 noundef zeroext %i.bj)
  %i.bl = zext i1 %i.bk to i8
  %i.bm = or i8 %.sroa.015.2.1.i, %i.bl
  br label %.preheader104.3.i

.preheader104.3.i:                                ; preds = %bb.g, %.preheader104.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader104.2.i ], [ %i.bm, %bb.g ] ; 3 uses
  %i.bn = icmp eq i16 %i.az, 0
  br i1 %i.bn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader104.3.i
  %i.bo = or disjoint i64 %.sroa.07.0111.i, 48
  %i.bp = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.bq = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bo, i16 noundef %i.az, i1 noundef zeroext %i.bp)
  %i.br = zext i1 %i.bq to i8
  %i.bs = or i8 %.sroa.015.2.2.i, %i.br
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader104.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader104.3.i ], [ %i.bs, %bb.h ] ; 2 uses
  %i.bt = add i64 %.sroa.07.0111.i, 64            ; 3 uses
  %i.bu = add i64 %i.bt, %i.ac
  %i.bv = icmp uge i64 %i.bu, %3
  %i.bw = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bx = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0111.i, i16 noundef %i.ak, i1 noundef zeroext false)
  %i.by = zext i1 %i.bx to i8
  br label %.preheader104.1.i

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i ], [ %.sroa.015.4.i, %bb.k ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.af, %.preheader.i ], [ %i.cq, %bb.k ]
  %i.bz = sub nuw i64 %3, %i.g
  %i.ca = add i64 %i.bz, -16                      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.cb, align 1, !alias.scope !558, !noalias !563
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.j
  %.val.i66.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !558, !noalias !563
  %i.cd = icmp eq <16 x i8> %.val3.i65.i, %i.w
  %i.ce = icmp eq <16 x i8> %.val.i66.i, %i.x
  %narrow.i67.i = select <16 x i1> %i.cd, <16 x i1> %i.ce, <16 x i1> zeroinitializer
  %i.cf = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.n

.lr.ph115.i:                                      ; preds = %.preheader.i, %bb.k
  %.sroa.07.1114.i = phi i64 [ %i.cn, %bb.k ], [ %.sroa.07.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1114.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !558, !noalias !564
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.j
  %.val.i69.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !558, !noalias !564
  %i.cj = icmp eq <16 x i8> %.val3.i68.i, %i.w
  %i.ck = icmp eq <16 x i8> %.val.i69.i, %i.x
  %narrow.i70.i = select <16 x i1> %i.cj, <16 x i1> %i.ck, <16 x i1> zeroinitializer
  %i.cl = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.lr.ph115.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph115.i ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cn = add i64 %.sroa.07.1114.i, 16            ; 2 uses
  %i.co = add i64 %i.cn, %i.m
  %i.cp = icmp uge i64 %i.co, %3
  %i.cq = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cp, %i.cq
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph115.i

bb.l:                                             ; preds = %.lr.ph115.i
  %i.cr = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1114.i, i16 noundef %i.cl, i1 noundef zeroext false)
  %i.cs = zext i1 %i.cr to i8
  br label %bb.k

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.015.5.i = phi i8 [ %.sroa.015.3.lcssa.i, %._crit_edge.i ], [ %i.cv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.n:                                             ; preds = %._crit_edge.i
  %i.ct = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ca, i16 noundef %i.cf, i1 noundef zeroext %.lcssa.i)
  %i.cu = zext i1 %i.ct to i8
  %i.cv = or i8 %.sroa.015.3.lcssa.i, %i.cu
  br label %bb.m

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.cw = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.o:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.cy = icmp eq i32 %bcmp, 0
  %i.cz = zext i1 %i.cy to i8
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !567, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h690aab39e9366a01E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !567, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !567, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !567
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc90346a54c402309E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE(i64 noundef range(i64 0, 49) %0, i64 noundef range(i64 1, 9) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit

_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit: ; preds = %bb.a
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.c = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) %0, i64 noundef range(i64 1, 9) %1) #23 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef %1, i64 noundef %0) #20
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h3e9a757a6022460fE.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE"(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN5regex5regex6string5Regex11captures_at17h2b3edc011c614189E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
._crit_edge.i:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
end_hunk_0
