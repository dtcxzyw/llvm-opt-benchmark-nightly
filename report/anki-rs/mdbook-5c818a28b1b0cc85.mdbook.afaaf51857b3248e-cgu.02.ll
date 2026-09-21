Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/mdbook-5c818a28b1b0cc85.mdbook.afaaf51857b3248e-cgu.02?download=true
inline.NumInlined: 903
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit: ; preds = %bb.c, %.preheader.split
  %.val14.i = load i32, ptr %i.ad, align 1, !alias.scope !532, !noalias !533
  %.val.i = load i32, ptr %i.j, align 1, !alias.scope !533, !noalias !532
  %i.ai = icmp eq i32 %.val14.i, %.val.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
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

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.l, %bb.b, %bb.n, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %.sroa.0.0 = phi i8 [ %i.de, %bb.n ], [ 0, %bb.b ], [ %i.dc, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit ], [ %.sroa.015.5.i, %bb.l ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.n, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.f = load i8, ptr %0, align 1, !alias.scope !557, !noalias !558, !noundef !4 ; 5 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = add nsw i64 %1, -4                       ; 3 uses
  %4 = add nsw i64 %1, -1                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !557, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.j, %i.f
  br i1 %.not.i.not.i.i, label %5, label %bb.c

5:                                                ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph"
  %6 = icmp samesign ult i64 %i.h, %4
  br i1 %6, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1": ; preds = %5
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !557, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.i.1, label %7, label %bb.c

7:                                                ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1"
  %8 = icmp samesign ult i64 %i.h, %i.k
  br i1 %8, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2": ; preds = %7
  %i.n = add nsw i64 %1, -3                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !557, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.p, %i.f
  br i1 %.not.i.not.i.i.2, label %9, label %bb.c

9:                                                ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2"
  %10 = icmp samesign ult i64 %i.h, %i.n
  br i1 %10, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3": ; preds = %9
  %11 = add nsw i64 %1, -4                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !557, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.r, %i.f
  br i1 %.not.i.not.i.i.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph"
  %.lcssa39 = phi i64 [ %4, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph" ], [ %i.k, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1" ], [ %i.n, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2" ], [ %11, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3" ] ; 6 uses
  %.lcssa37 = phi i8 [ %i.j, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.lr.ph" ], [ %i.m, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.1" ], [ %i.p, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.2" ], [ %i.r, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3" ]
  %i.s = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.t = icmp ult i64 %3, %i.s
  br i1 %i.t, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 6, 16) %1), !alias.scope !560, !noalias !561
  %i.u = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.u, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.v = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i33 = icmp ugt i64 %1, %i.v
  br i1 %.not28.i.i33, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i"
  %i.w = phi i64 [ %i.z, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ %i.v, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ]
  %.pn.i34 = phi ptr [ %i.x, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i.preheader" ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i34, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.x, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 6, 16) %1), !alias.scope !560, !noalias !561
  %i.y = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.y, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hf641019bea5e610eE.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.z = add nsw i64 %i.w, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.z
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.d:                                             ; preds = %bb.c
  %12 = insertelement <1 x i8> poison, i8 %.lcssa37, i64 0
  %i.aa = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.ab = shufflevector <1 x i8> %i.aa, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ac = shufflevector <1 x i8> %12, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  store ptr %2, ptr %i.a, align 8, !noalias !560
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ae, align 8, !noalias !560
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %i.af, align 8, !noalias !560
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ag, align 8, !noalias !560
  %i.ah = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.015.2.3.i, %bb.h ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.by, %bb.h ] ; 2 uses
  %i.ai = add i64 %.sroa.07.0.lcssa.i, %i.s
  %i.aj = icmp uge i64 %i.ai, %3
  %i.ak = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3113.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond3113.i, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.07.0111.i = phi i64 [ %i.by, %bb.h ], [ 0, %bb.d ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0111.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.al, align 1, !alias.scope !558, !noalias !562
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.lcssa39
  %.val.i.i = load <16 x i8>, ptr %i.am, align 1, !alias.scope !558, !noalias !562
  %i.an = icmp eq <16 x i8> %.val3.i.i, %i.ab
  %i.ao = icmp eq <16 x i8> %.val.i.i, %i.ac
  %narrow.i.i = select <16 x i1> %i.an, <16 x i1> %i.ao, <16 x i1> zeroinitializer
  %i.ap = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.aq, align 1, !alias.scope !558, !noalias !562
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.lcssa39
  %.val.i.1.i = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !558, !noalias !562
  %i.as = icmp eq <16 x i8> %.val3.i.1.i, %i.ab
  %i.at = icmp eq <16 x i8> %.val.i.1.i, %i.ac
  %narrow.i.1.i = select <16 x i1> %i.as, <16 x i1> %i.at, <16 x i1> zeroinitializer
  %i.au = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !558, !noalias !562
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.lcssa39
  %.val.i.2.i = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !558, !noalias !562
  %i.ax = icmp eq <16 x i8> %.val3.i.2.i, %i.ab
  %i.ay = icmp eq <16 x i8> %.val.i.2.i, %i.ac
  %narrow.i.2.i = select <16 x i1> %i.ax, <16 x i1> %i.ay, <16 x i1> zeroinitializer
  %i.az = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !558, !noalias !562
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.lcssa39
  %.val.i.3.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !558, !noalias !562
  %i.bc = icmp eq <16 x i8> %.val3.i.3.i, %i.ab
  %i.bd = icmp eq <16 x i8> %.val.i.3.i, %i.ac
  %narrow.i.3.i = select <16 x i1> %i.bc, <16 x i1> %i.bd, <16 x i1> zeroinitializer
  %i.be = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.bf = icmp eq i16 %i.ap, 0
  br i1 %i.bf, label %.preheader104.1.i, label %bb.i

.preheader104.1.i:                                ; preds = %bb.i, %.lr.ph.i
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cd, %bb.i ] ; 3 uses
  %i.bg = icmp eq i16 %i.au, 0
  br i1 %i.bg, label %.preheader104.2.i, label %bb.e

bb.e:                                             ; preds = %.preheader104.1.i
  %i.bh = or disjoint i64 %.sroa.07.0111.i, 16
  %i.bi = trunc nuw i8 %.sroa.015.2.i to i1
  %i.bj = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bh, i16 noundef %i.au, i1 noundef zeroext %i.bi)
  %i.bk = zext i1 %i.bj to i8
  %i.bl = or i8 %.sroa.015.2.i, %i.bk
  br label %.preheader104.2.i

.preheader104.2.i:                                ; preds = %bb.e, %.preheader104.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader104.1.i ], [ %i.bl, %bb.e ] ; 3 uses
  %i.bm = icmp eq i16 %i.az, 0
  br i1 %i.bm, label %.preheader104.3.i, label %bb.f

bb.f:                                             ; preds = %.preheader104.2.i
  %i.bn = or disjoint i64 %.sroa.07.0111.i, 32
  %i.bo = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.bp = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.az, i1 noundef zeroext %i.bo)
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.015.2.1.i, %i.bq
  br label %.preheader104.3.i

.preheader104.3.i:                                ; preds = %bb.f, %.preheader104.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader104.2.i ], [ %i.br, %bb.f ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader104.3.i
  %i.bt = or disjoint i64 %.sroa.07.0111.i, 48
  %i.bu = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.bv = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu)
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.015.2.2.i, %i.bw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader104.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader104.3.i ], [ %i.bx, %bb.g ] ; 2 uses
  %i.by = add i64 %.sroa.07.0111.i, 64            ; 3 uses
  %i.bz = add i64 %i.by, %i.ah
  %i.ca = icmp uge i64 %i.bz, %3
  %i.cb = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.cc = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0111.i, i16 noundef %i.ap, i1 noundef zeroext false)
  %i.cd = zext i1 %i.cc to i8
  br label %.preheader104.1.i

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i ], [ %.sroa.015.4.i, %bb.j ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ak, %.preheader.i ], [ %i.cv, %bb.j ]
  %i.ce = sub nuw i64 %3, %i.g
  %i.cf = add i64 %i.ce, -16                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !558, !noalias !563
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.lcssa39
  %.val.i66.i = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !558, !noalias !563
  %i.ci = icmp eq <16 x i8> %.val3.i65.i, %i.ab
  %i.cj = icmp eq <16 x i8> %.val.i66.i, %i.ac
  %narrow.i67.i = select <16 x i1> %i.ci, <16 x i1> %i.cj, <16 x i1> zeroinitializer
  %i.ck = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.l, label %bb.m

.lr.ph115.i:                                      ; preds = %.preheader.i, %bb.j
  %.sroa.07.1114.i = phi i64 [ %i.cs, %bb.j ], [ %.sroa.07.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1114.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !558, !noalias !564
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa39
  %.val.i69.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !558, !noalias !564
  %i.co = icmp eq <16 x i8> %.val3.i68.i, %i.ab
  %i.cp = icmp eq <16 x i8> %.val.i69.i, %i.ac
  %narrow.i70.i = select <16 x i1> %i.co, <16 x i1> %i.cp, <16 x i1> zeroinitializer
  %i.cq = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.lr.ph115.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph115.i ], [ %i.cx, %bb.k ] ; 2 uses
  %i.cs = add i64 %.sroa.07.1114.i, 16            ; 2 uses
  %i.ct = add i64 %i.cs, %i.s
  %i.cu = icmp uge i64 %i.ct, %3
  %i.cv = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cu, %i.cv
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph115.i

bb.k:                                             ; preds = %.lr.ph115.i
  %i.cw = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1114.i, i16 noundef %i.cq, i1 noundef zeroext false)
  %i.cx = zext i1 %i.cw to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.015.5.i = phi i8 [ %.sroa.015.3.lcssa.i, %._crit_edge.i ], [ %i.da, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.m:                                             ; preds = %._crit_edge.i
  %i.cy = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h83d39d4a723b7c2dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.ck, i1 noundef zeroext %.lcssa.i)
  %i.cz = zext i1 %i.cy to i8
  %i.da = or i8 %.sroa.015.3.lcssa.i, %i.cz
  br label %bb.l

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hbdac32fe7b2d441fE.exit.i.i.3", %9, %7, %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.db = load i64, ptr %i.c, align 8, !range !3, !noundef !4
  %i.dc = trunc nuw nsw i64 %i.db to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.n:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dd = icmp eq i32 %bcmp, 0
  %i.de = zext i1 %i.dd to i8
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
