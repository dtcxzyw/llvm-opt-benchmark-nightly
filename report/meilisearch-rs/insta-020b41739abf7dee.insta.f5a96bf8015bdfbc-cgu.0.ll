Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta3env7resolve17h78cdb00d323002e5E:.lr.ph.i
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i", label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.w = icmp eq ptr %i.q, %i.h
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i": ; preds = %.split.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

.loopexit40:                                      ; preds = %tailrecurse.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i, %.loopexit40
  %.sink = phi i64 [ 24, %.loopexit40 ], [ 40, %tailrecurse.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !6950, !nonnull !15, !noundef !15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !6950, !noundef !15 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ac, 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !6947, !noalias !6961, !noundef !15 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !6947, !noalias !6959, !nonnull !15, !align !328
  br label %bb.j

bb.j:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i", %.lr.ph.i8.i.i
  %i.ai = phi ptr [ %i.aa, %.lr.ph.i8.i.i ], [ %i.aj, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i" ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !6965, !noundef !15
  %.not.i.i9.i.i = icmp eq i64 %i.al, %i.ag
  br i1 %.not.i.i9.i.i, label %.split.i11.i.i, label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

.split.i11.i.i:                                   ; preds = %bb.j
  %i.am = load ptr, ptr %i.ai, align 16, !noalias !6965, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i12.i.i = tail call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %i.ah, i64 %i.ag), !noalias !6965
  %i.an = icmp eq i32 %bcmp.i.i12.i.i, 0
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i": ; preds = %.split.i11.i.i, %bb.j
  %i.ao = icmp eq ptr %i.aj, %i.ad
  br i1 %i.ao, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i": ; preds = %.split.i11.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i"
  %.sroa.0.1.i.i = phi ptr [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i" ]
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6966)
  br label %tailrecurse.i.i.i.1

tailrecurse.i.i.i.1:                              ; preds = %bb.t, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"
  %.tr.i.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i" ], [ %i.cf, %bb.t ] ; 5 uses
  %i.aq = load i8, ptr %.tr.i.i.i.1, align 16, !range !1276, !noalias !6968, !noundef !15
  switch i8 %i.aq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.t
    i8 21, label %bb.s
    i8 22, label %bb.r
    i8 27, label %bb.m
    i8 28, label %bb.k
    i8 29, label %.loopexit
  ]

.loopexit:                                        ; preds = %tailrecurse.i.i.i.1
  br label %bb.k

bb.k:                                             ; preds = %tailrecurse.i.i.i.1, %.loopexit
  %.sink21 = phi i64 [ 40, %.loopexit ], [ 24, %tailrecurse.i.i.i.1 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 %.sink21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !6968, !nonnull !15, !noundef !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !6968, !noundef !15 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %i.av, 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.1
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i.1

.lr.ph.i8.i.i.1:                                  ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6966, !noalias !6961, !noundef !15 ; 2 uses
  %i.ba = load ptr, ptr %.ptr.1, align 8, !alias.scope !6966, !noalias !6959, !nonnull !15, !align !328
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1", %.lr.ph.i8.i.i.1
  %i.bb = phi ptr [ %i.at, %.lr.ph.i8.i.i.1 ], [ %i.bc, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1" ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !6969, !noundef !15
  %.not.i.i9.i.i.1 = icmp eq i64 %i.be, %i.az
  br i1 %.not.i.i9.i.i.1, label %.split.i11.i.i.1, label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1"

.split.i11.i.i.1:                                 ; preds = %bb.l
  %i.bf = load ptr, ptr %i.bb, align 16, !noalias !6969, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i12.i.i.1 = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.ba, i64 %i.az), !noalias !6969
  %i.bg = icmp eq i32 %bcmp.i.i12.i.i.1, 0
  br i1 %i.bg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i.1", label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1": ; preds = %.split.i11.i.i.1, %bb.l
  %i.bh = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bh, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i.1": ; preds = %.split.i11.i.i.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit

bb.m:                                             ; preds = %tailrecurse.i.i.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !6968, !nonnull !15, !noundef !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !6968, !noundef !15 ; 2 uses
  %.idx5.i.i.1 = shl nuw nsw i64 %i.bm, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx5.i.i.1
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.m
  %i.bp = load ptr, ptr %.ptr.1, align 8, !alias.scope !6966, !noalias !6953, !nonnull !15, !align !328, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6966, !noalias !6959 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.backedge.i.i.i.1, %.lr.ph.i.i.i.1
  %i.bs = phi ptr [ %i.bk, %.lr.ph.i.i.i.1 ], [ %i.bw, %.backedge.i.i.i.1 ] ; 3 uses
  br label %tailrecurse.i.i.i.i.i.i.1

tailrecurse.i.i.i.i.i.i.1:                        ; preds = %bb.q, %bb.n
  %.tr.i.i.i.i.i.i.1 = phi ptr [ %i.bs, %bb.n ], [ %i.bv, %bb.q ] ; 4 uses
  %i.bt = load i8, ptr %.tr.i.i.i.i.i.i.1, align 16, !range !1276, !noalias !6970, !noundef !15 ; 2 uses
  switch i8 %i.bt, label %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i.1 [
    i8 17, label %bb.q
    i8 21, label %bb.p
    i8 22, label %bb.o
  ]

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.i.i.1
  br label %bb.q

bb.p:                                             ; preds = %tailrecurse.i.i.i.i.i.i.1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %tailrecurse.i.i.i.i.i.i.1
  %.sink.i.i.i.i.i.i.1 = phi i64 [ 40, %bb.o ], [ 24, %bb.p ], [ 8, %tailrecurse.i.i.i.i.i.i.1 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i.1, i64 %.sink.i.i.i.i.i.i.1
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !6970, !nonnull !15, !align !1222, !noundef !15
  br label %tailrecurse.i.i.i.i.i.i.1

_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i.1: ; preds = %tailrecurse.i.i.i.i.i.i.1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 128 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i8 %i.bt, 14
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i.1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noalias !6970
  %.not6.i.i.i.i.1 = icmp eq i64 %i.by, %i.br
  %or.cond.i.i.1 = select i1 %.not.i.i.i.i.1, i1 %.not6.i.i.i.i.1, i1 false
  br i1 %or.cond.i.i.1, label %.split.i.i.i.1, label %.backedge.i.i.i.1

.split.i.i.i.1:                                   ; preds = %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i.1
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i.1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !6970, !nonnull !15
  %bcmp.i.i.i.i.1 = tail call i32 @bcmp(ptr nonnull %i.ca, ptr nonnull %i.bp, i64 %i.br), !noalias !6970
  %i.cb = icmp eq i32 %bcmp.i.i.i.i.1, 0
  br i1 %i.cb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i.1", label %.backedge.i.i.i.1

.backedge.i.i.i.1:                                ; preds = %.split.i.i.i.1, %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i.1
  %i.cc = icmp eq ptr %i.bw, %i.bn
  br i1 %i.cc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i.1": ; preds = %.split.i.i.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit

bb.r:                                             ; preds = %tailrecurse.i.i.i.1
  br label %bb.t

bb.s:                                             ; preds = %tailrecurse.i.i.i.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %tailrecurse.i.i.i.1
  %.sink.i.i.i.1 = phi i64 [ 40, %bb.r ], [ 24, %bb.s ], [ 8, %tailrecurse.i.i.i.1 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 %.sink.i.i.i.1
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !6968, !nonnull !15, !align !1222, !noundef !15
  br label %tailrecurse.i.i.i.1

_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit: ; preds = %tailrecurse.i.i.i, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i", %.backedge.i.i.i, %tailrecurse.i.i.i.1, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1", %.backedge.i.i.i.1, %bb.d, %bb.i, %bb.k, %bb.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i.1", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i.1"
  %.sroa.0.0.i = phi ptr [ null, %tailrecurse.i.i.i.1 ], [ null, %.backedge.i.i.i ], [ null, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i" ], [ %i.cd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i.1" ], [ null, %.backedge.i.i.i.1 ], [ null, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1" ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.m ], [ null, %bb.k ], [ %i.bi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i.1" ], [ null, %tailrecurse.i.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 65536) i64 @_ZN5insta5utils10term_width17hc96ac73894589751E() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 0, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.3.0..sroa_idx.a, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx.a, align 8
  %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 0, ptr %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx, align 4
  call void @_ZN7console4term4Term10with_inner17h30eff7867d98b308E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = invoke i48 @_ZN7console9unix_term13terminal_size17h2a33d23e3ddf3984E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6971)
  call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  call void @llvm.experimental.noalias.scope.decl(metadata !6977)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !6980, !nonnull !15, !noundef !15
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !6980
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf4af133113e37afaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  call void @llvm.experimental.noalias.scope.decl(metadata !6984)
  call void @llvm.experimental.noalias.scope.decl(metadata !6987)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !6990, !nonnull !15, !noundef !15
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !6990
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit31"

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf4af133113e37afaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit31"

"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit31": ; preds = %bb.d, %bb.e
  %i.l = trunc i48 %i.d to i1
  %.sroa.029.4.extract.shift = lshr i48 %i.d, 32
  %.sroa.029.4.extract.trunc = zext nneg i48 %.sroa.029.4.extract.shift to i64
  %.sroa.026.0 = select i1 %i.l, i64 %.sroa.029.4.extract.trunc, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.026.0

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr40drop_in_place$LT$console..term..Term$GT$17h1c0e978d1be0e426E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta6output15SnapshotPrinter10print_info17ha83a429d3a9fcd79E(ptr nofree readonly captures(address, read_provenance) %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [28 x i8], align 4                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %i.t = alloca [28 x i8], align 4                ; 6 uses
  %i.u = alloca [200 x i8], align 8               ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [56 x i8], align 8               ; 13 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  %i.ag = tail call fastcc noundef i64 @_ZN5insta5utils10term_width17hc96ac73894589751E(), !noalias !6991 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.24.val, i64 120
  %i.ai = load i64, ptr %i.ah, align 8, !range !310, !alias.scope !6991, !noundef !15
  %.not.i = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %.not.i, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.24.val, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !6991, !nonnull !15, !noundef !15 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.24.val, i64 136
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !6991, !noundef !15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6994
  call void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @287, i64 noundef 7), !noalias !6994
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @288, i64 noundef 13)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit.i.i unwind label %bb.c, !noalias !6994

.thread74.i.i:                                    ; preds = %.thread85.i.i, %bb.au, %bb.n, %bb.c
  %.pn9.i.i = phi { ptr, i32 } [ %i.an, %bb.c ], [ %lpad.thr_comm.split-lp.i.i, %bb.n ], [ %eh.lpad-body81.i.i, %.thread85.i.i ], [ %i.dw, %bb.au ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hef1e85d7257766f3E"(ptr noalias noundef align 8 dereferenceable(200) %i.u) #55
          to label %common.resume.i unwind label %bb.ba, !noalias !6998

bb.c:                                             ; preds = %.thread.i.i, %_ZN3std7process7Command6stderr17h6bc038983a7f552cE.exit.i.i, %_ZN3std7process7Command6stdout17h4c6f997261e5d88cE.exit.i.i, %_ZN3std7process7Command5stdin17h75ef8d1b9178ebbbE.exit.i.i, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit23.i.i, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit.i.i, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread74.i.i

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit.i.i: ; preds = %bb.b
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @289, i64 noundef 14)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit23.i.i unwind label %bb.c, !noalias !6998

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit23.i.i: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit.i.i
  invoke void @_ZN3std3sys7process4unix6common7Command5stdin17h1b1f7ab2858489e2E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u, i32 noundef 2, i32 undef)
          to label %_ZN3std7process7Command5stdin17h75ef8d1b9178ebbbE.exit.i.i unwind label %bb.c, !noalias !6998

_ZN3std7process7Command5stdin17h75ef8d1b9178ebbbE.exit.i.i: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit23.i.i
  invoke void @_ZN3std3sys7process4unix6common7Command6stdout17h63af7acfe2898a32E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u, i32 noundef 2, i32 undef)
          to label %_ZN3std7process7Command6stdout17h4c6f997261e5d88cE.exit.i.i unwind label %bb.c, !noalias !6998

_ZN3std7process7Command6stdout17h4c6f997261e5d88cE.exit.i.i: ; preds = %_ZN3std7process7Command5stdin17h75ef8d1b9178ebbbE.exit.i.i
  invoke void @_ZN3std3sys7process4unix6common7Command6stderr17hd7052753016cfca5E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u, i32 noundef 1, i32 undef)
          to label %_ZN3std7process7Command6stderr17h6bc038983a7f552cE.exit.i.i unwind label %bb.c, !noalias !6998

_ZN3std7process7Command6stderr17h6bc038983a7f552cE.exit.i.i: ; preds = %_ZN3std7process7Command6stdout17h4c6f997261e5d88cE.exit.i.i
  invoke void @_ZN3std7process7Command5spawn17h31af5ab98b5a9a4fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.u)
          to label %bb.d unwind label %bb.c, !noalias !6998

bb.d:                                             ; preds = %_ZN3std7process7Command6stderr17h6bc038983a7f552cE.exit.i.i
  %i.ao = load i32, ptr %i.v, align 8, !range !6999, !noalias !6994, !noundef !15
  %i.ap = trunc nuw i32 %i.ao to i1
  br i1 %i.ap, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6994
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, ptr noundef nonnull align 4 dereferenceable(28) %i.aq, i64 28, i1 false), !noalias !6994
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !6994, !noundef !15
  %.not.i.i = icmp eq i32 %i.as, -1
  br i1 %.not.i.i, label %bb.m, label %bb.f, !prof !169

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.noexc29.i.i, %bb.f
  %.sroa.0.042.i.i.i = phi ptr [ @292, %bb.f ], [ %.sroa.0.116.i.i.i, %.noexc29.i.i ] ; 3 uses
  %.sroa.5.041.i.i.i = phi i64 [ 13, %bb.f ], [ %.sroa.5.114.i.i.i, %.noexc29.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7000
  %i.au = invoke { i64, ptr } @"_ZN59_$LT$std..process..ChildStdin$u20$as$u20$std..io..Write$GT$5write17h4402b9ed06c6a6f0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.i.i, i64 noundef %.sroa.5.041.i.i.i)
          to label %.noexc27.i.i unwind label %.thread89.loopexit.split-lp.loopexit.i.i, !noalias !6998 ; 2 uses

.noexc27.i.i:                                     ; preds = %bb.g
  %i.av = extractvalue { i64, ptr } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 11 uses
  store i64 %i.av, ptr %i.k, align 8, !noalias !7000
  store ptr %i.aw, ptr %i.at, align 8, !noalias !7000
  %i.ax = trunc nuw i64 %i.av to i1
  %i.ay = ptrtoint ptr %i.aw to i64               ; 7 uses
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc27.i.i
  %i.az = and i64 %i.ay, 3
  switch i64 %i.az, label %.unreachabledefault [
    i64 2, label %.split.i.i.i
    i64 3, label %bb.l
    i64 0, label %.split36.i.i.i
    i64 1, label %.split35.i.i.i
  ], !prof !1035

.unreachabledefault:                              ; preds = %bb.h
  unreachable

default.unreachable:                              ; preds = %bb.u, %bb.ae
  unreachable

bb.i:                                             ; preds = %.noexc27.i.i
  %i.ba = icmp eq ptr %i.aw, null
  br i1 %i.ba, label %_ZN3std2io5Write9write_all17h8b0002bbf16be78dE.exit.thread94.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp ult i64 %.sroa.5.041.i.i.i, %i.ay
  br i1 %i.bb, label %.noexc.i.invoke.i.invoke.i, label %bb.k, !prof !169

.noexc.i.invoke.i.invoke.i:                       ; preds = %bb.j, %bb.w, %bb.ag
  %i.bc = phi i64 [ %i.by, %bb.w ], [ %i.cv, %bb.ag ], [ %i.ay, %bb.j ]
  %i.bd = phi i64 [ %.sroa.5.041.i.i, %bb.w ], [ %.sroa.5.041.i31.i.i, %bb.ag ], [ %.sroa.5.041.i.i.i, %bb.j ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5insta7content4yaml8vendored7emitter11YamlEmitter8emit_val17h809b24787919c119E:bb.a
  store ptr @462, ptr %i.g, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !15, !nonnull !15
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull align 1 %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.at, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @340, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !15, !nonnull !15 ; 2 uses
  %i.bd = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 1 %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bd, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !15 ; 4 uses
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12833)
  %i.bh = icmp ugt i64 %i.bf, 9223372036854775806
  br i1 %i.bh, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !12833, !noundef !15 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %exitcond.not.i30 = icmp eq i64 %i.bj, 0
  br label %bb.i

.loopexit.i:                                      ; preds = %bb.j, %bb.i
  %exitcond9.not.i = icmp eq i64 %.sroa.01.07.i, %i.bf
  br i1 %exitcond9.not.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.sroa.01.07.i = phi i64 [ 0, %.preheader.i ], [ %i.bo, %.loopexit.i ] ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.01.07.i, 1
  br i1 %exitcond.not.i30, label %.loopexit.i, label %.lr.ph33

bb.j:                                             ; preds = %.lr.ph33
  %i.bp = add i64 %.sroa.03.0.i31, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.bj
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i, %bb.j
  %.sroa.03.0.i31 = phi i64 [ %i.bp, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12833
  store ptr @462, ptr %i.b, align 8, !noalias !12833
  store i64 1, ptr %i.bk, align 8, !noalias !12833
  store ptr null, ptr %i.bl, align 8, !noalias !12833
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8, !noalias !12833
  store i64 0, ptr %i.bn, align 8, !noalias !12833
  %i.bq = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 1 %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !12833, !inline_history !12832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12833
  br i1 %i.bq, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.j

.loopexit:                                        ; preds = %.loopexit.i, %bb.h
  store i64 %i.bf, ptr %i.be, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.loopexit
  %i.br = phi i64 [ %.pre, %._crit_edge ], [ %i.ah, %.loopexit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !15, !noundef !15
  %i.bu = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter10emit_array17h1ab67e8141058c97E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.br)
  br label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit

_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit: ; preds = %.lr.ph, %.lr.ph33, %bb.b, %bb.l, %bb.m, %bb.f, %bb.g, %bb.r, %bb.q, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.l ], [ %i.cv, %bb.r ], [ true, %bb.b ], [ %i.bu, %bb.k ], [ true, %bb.m ], [ true, %bb.g ], [ true, %.lr.ph33 ], [ %i.cu, %bb.q ], [ true, %bb.f ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @462, ptr %i.e, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.af, align 8, !invariant.load !15, !nonnull !15
  %i.ca = call noundef zeroext i1 %i.bz(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ca, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.q

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @340, ptr %i.d, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.af, align 8, !invariant.load !15, !nonnull !15 ; 2 uses
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cg, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !15 ; 4 uses
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12836)
  %i.ck = icmp ugt i64 %i.ci, 9223372036854775806
  br i1 %i.ck, label %.loopexit21, label %.preheader.i10

.preheader.i10:                                   ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !12836, !noundef !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %exitcond.not.i1327 = icmp eq i64 %i.cm, 0
  br label %bb.o

.loopexit.i15:                                    ; preds = %bb.p, %bb.o
  %exitcond9.not.i16 = icmp eq i64 %.sroa.01.07.i11, %i.ci
  br i1 %exitcond9.not.i16, label %.loopexit21, label %bb.o

bb.o:                                             ; preds = %.loopexit.i15, %.preheader.i10
  %.sroa.01.07.i11 = phi i64 [ 0, %.preheader.i10 ], [ %i.cr, %.loopexit.i15 ] ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.01.07.i11, 1
  br i1 %exitcond.not.i1327, label %.loopexit.i15, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.cs = add i64 %.sroa.03.0.i1228, 1            ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.cs, %i.cm
  br i1 %exitcond.not.i13, label %.loopexit.i15, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.03.0.i1228 = phi i64 [ %i.cs, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12836
  store ptr @462, ptr %i.a, align 8, !noalias !12836
  store i64 1, ptr %i.cn, align 8, !noalias !12836
  store ptr null, ptr %i.co, align 8, !noalias !12836
  store ptr inttoptr (i64 8 to ptr), ptr %i.cp, align 8, !noalias !12836
  store i64 0, ptr %i.cq, align 8, !noalias !12836
  %i.ct = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !12836, !inline_history !12832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12836
  br i1 %i.ct, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.p

.loopexit21:                                      ; preds = %.loopexit.i15, %bb.n
  store i64 %i.ci, ptr %i.ch, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %.loopexit21
  %i.cu = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_hash17hb985dba2d4002895E(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v)
  br label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit

bb.r:                                             ; preds = %bb.b
  %i.cv = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_node17hccd0f2a14f6a185aE(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2)
  br label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_hash17hb985dba2d4002895E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.631 = alloca [8 x i8], align 8           ; 7 uses
  %.sroa.9 = alloca [8 x i8], align 8             ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !15
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !309, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !15, !nonnull !15
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 1 %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 2)
  br i1 %i.p, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !15
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noundef !15 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.j
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !noundef !15
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.018.0 = phi ptr [ %i.x, %bb.e ], [ null, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.v, %bb.f
  %.sroa.11.0 = phi i64 [ 0, %bb.f ], [ %.sroa.11.1, %bb.v ] ; 3 uses
  %.sroa.0.032 = phi ptr [ %.sroa.018.0, %bb.f ], [ %.sroa.0.1, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !12839)
  %i.bc = icmp eq ptr %.sroa.0.032, %i.u
  br i1 %i.bc, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb343d0fcdca947E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !12842, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 72
  %i.bg = add i64 %.sroa.11.0, 1
  store ptr %.sroa.0.032, ptr %.sroa.631, align 8, !alias.scope !12839, !noalias !12846
  %i.bh = icmp eq i64 %.sroa.11.0, 0
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb343d0fcdca947E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb343d0fcdca947E.exit": ; preds = %bb.g, %bb.h
  %.sroa.030.0 = phi i1 [ undef, %bb.g ], [ %i.bh, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.g ], [ %i.bg, %bb.h ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.032, %bb.g ], [ %i.be, %bb.h ]
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.631, %bb.g ], [ %.sroa.9, %bb.h ]
  %.sink.i = phi ptr [ null, %bb.g ], [ %i.bf, %bb.h ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !12839, !noalias !12846
  %.sroa.631.0..sroa.631.0..sroa.631.0..sroa.631.8. = load ptr, ptr %.sroa.631, align 8 ; 4 uses
  %.not = icmp eq ptr %.sroa.631.0..sroa.631.0..sroa.631.0..sroa.631.8., null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb343d0fcdca947E.exit"
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16. = load ptr, ptr %.sroa.9, align 8 ; 2 uses
  %i.bi = load i8, ptr %.sroa.631.0..sroa.631.0..sroa.631.0..sroa.631.8., align 8, !range !14, !noundef !15
  %i.bj = and i8 %i.bi, 6
  %switch = icmp eq i8 %i.bj, 4                   ; 2 uses
  br i1 %switch, label %bb.m, label %bb.l

bb.j:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb343d0fcdca947E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.bk = load i64, ptr %i.q, align 8, !noundef !15
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.q, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.b, %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, %bb.d
  %.sroa.0.0 = phi i1 [ true, %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.sroa.0.0

bb.l:                                             ; preds = %bb.i
  br i1 %.sroa.030.0, label %bb.p, label %bb.n

bb.m:                                             ; preds = %bb.i
  br i1 %.sroa.030.0, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %0, align 8
  %.pre40 = load ptr, ptr %i.y, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre40, i64 40
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !invariant.load !15
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15 ; 3 uses
  %i.bn = load ptr, ptr %i.y, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @340, ptr %i.g, align 8
  store i64 1, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8
  store i64 0, ptr %i.ac, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !15, !nonnull !15 ; 3 uses
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 1 %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.bq, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge, %.loopexit36
  %i.br = phi ptr [ %.pre41, %._crit_edge ], [ %i.bp, %.loopexit36 ]
  %i.bs = phi ptr [ %.pre, %._crit_edge ], [ %i.bm, %.loopexit36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @465, ptr %i.f, align 8
  store i64 1, ptr %i.am, align 8
  store ptr null, ptr %i.an, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  store i64 0, ptr %i.ap, align 8
  %i.bt = call noundef zeroext i1 %i.br(ptr noundef nonnull align 1 %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bt, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.w

bb.p:                                             ; preds = %bb.l, %.loopexit36
  %i.bu = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_node17hccd0f2a14f6a185aE(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.631.0..sroa.631.0..sroa.631.0..sroa.631.8.)
  br i1 %i.bu, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.t

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !12847)
  %i.bv = load i64, ptr %i.q, align 8, !alias.scope !12847, !noundef !15 ; 2 uses
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %.loopexit36, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.bx = load i64, ptr %i.ad, align 8, !alias.scope !12847, !noundef !15 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.bx, 0
  br label %bb.r

.loopexit.i:                                      ; preds = %bb.s, %bb.r
  %exitcond9.not.i = icmp eq i64 %i.by, %i.bv
  br i1 %exitcond9.not.i, label %.loopexit36, label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %.preheader.i
  %.sroa.01.07.i = phi i64 [ 0, %.preheader.i ], [ %i.by, %.loopexit.i ]
  %i.by = add nuw nsw i64 %.sroa.01.07.i, 1       ; 2 uses
  br i1 %exitcond.not.i51, label %.loopexit.i, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bz = add i64 %.sroa.03.0.i52, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %i.bx
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.03.0.i52 = phi i64 [ %i.bz, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12847
  store ptr @462, ptr %i.b, align 8, !noalias !12847
  store i64 1, ptr %i.ae, align 8, !noalias !12847
  store ptr null, ptr %i.af, align 8, !noalias !12847
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !noalias !12847
  store i64 0, ptr %i.ah, align 8, !noalias !12847
  %i.ca = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 1 %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !12847, !inline_history !12832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12847
  br i1 %i.ca, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.s

.loopexit36:                                      ; preds = %.loopexit.i, %bb.q
  br i1 %switch, label %bb.o, label %bb.p

bb.t:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15
  %i.cc = load ptr, ptr %i.y, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @358, ptr %i.c, align 8
  store i64 1, ptr %i.ai, align 8
  store ptr null, ptr %i.aj, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  store i64 0, ptr %i.al, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !15, !nonnull !15
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 1 %i.cb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.cf, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter8emit_val17h809b24787919c119E(ptr noalias noundef align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.)
  br i1 %i.cg, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.g

bb.w:                                             ; preds = %bb.o
  %i.ch = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter8emit_val17h809b24787919c119E(ptr noalias noundef align 8 dereferenceable(40) %0, i1 noundef zeroext true, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.631.0..sroa.631.0..sroa.631.0..sroa.631.8.)
  br i1 %i.ch, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15 ; 3 uses
  %i.cj = load ptr, ptr %i.y, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @340, ptr %i.e, align 8
  store i64 1, ptr %i.aq, align 8
  store ptr null, ptr %i.ar, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8
  store i64 0, ptr %i.at, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !15, !nonnull !15 ; 3 uses
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cm, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !12850)
  %i.cn = load i64, ptr %i.q, align 8, !alias.scope !12850, !noundef !15 ; 2 uses
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %.loopexit, label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.y
  %i.cp = load i64, ptr %i.ad, align 8, !alias.scope !12850, !noundef !15 ; 2 uses
  %exitcond.not.i2454 = icmp eq i64 %i.cp, 0
  br label %bb.z

.loopexit.i26:                                    ; preds = %bb.aa, %bb.z
  %exitcond9.not.i27 = icmp eq i64 %i.cq, %i.cn
  br i1 %exitcond9.not.i27, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %.loopexit.i26, %.preheader.i21
  %.sroa.01.07.i22 = phi i64 [ 0, %.preheader.i21 ], [ %i.cq, %.loopexit.i26 ]
  %i.cq = add nuw nsw i64 %.sroa.01.07.i22, 1     ; 2 uses
  br i1 %exitcond.not.i2454, label %.loopexit.i26, label %.lr.ph57

bb.aa:                                            ; preds = %.lr.ph57
  %i.cr = add i64 %.sroa.03.0.i2355, 1            ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %i.cr, %i.cp
  br i1 %exitcond.not.i24, label %.loopexit.i26, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.z, %bb.aa
  %.sroa.03.0.i2355 = phi i64 [ %i.cr, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12850
  store ptr @462, ptr %i.a, align 8, !noalias !12850
  store i64 1, ptr %i.au, align 8, !noalias !12850
  store ptr null, ptr %i.av, align 8, !noalias !12850
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !noalias !12850
  store i64 0, ptr %i.ax, align 8, !noalias !12850
  %i.cs = call noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !12850, !inline_history !12832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12850
  br i1 %i.cs, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.aa

.loopexit:                                        ; preds = %.loopexit.i26, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @358, ptr %i.d, align 8
  store i64 1, ptr %i.ay, align 8
  store ptr null, ptr %i.az, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  store i64 0, ptr %i.bb, align 8
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ct, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.cu = call fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter8emit_val17h809b24787919c119E(ptr noalias noundef align 8 dereferenceable(40) %0, i1 noundef zeroext true, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.)
  br i1 %i.cu, label %_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit, label %bb.v

_ZN5insta7content4yaml8vendored7emitter11YamlEmitter12write_indent17hd4878a08a6000af4E.exit: ; preds = %bb.n, %bb.ab, %.loopexit, %bb.x, %bb.w, %bb.o, %bb.u, %bb.t, %bb.p, %.lr.ph, %.lr.ph57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN5insta7content4yaml8vendored7emitter11YamlEmitter9emit_node17hccd0f2a14f6a185aE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = load i8, ptr %1, align 8, !range !14, !noundef !15
  switch i8 %i.m, label %default.unreachable250 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.p
  ]

default.unreachable250:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.f, align 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h46b179d48ada2aaeE", ptr %.sroa.410.0..sroa_idx, align 8
  store ptr @305, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !15, !nonnull !15
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 1 %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !15
  store i64 %i.z, ptr %i.i, align 8
  %i.aa = load ptr, ptr %0, align 8, !nonnull !15, !align !328, !noundef !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !15, !align !309, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.414.0..sroa_idx, align 8
  store ptr @305, ptr %i.h, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !15, !nonnull !15
  %i.aj = call noundef zeroext i1 %i.ai(ptr noundef nonnull align 1 %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ak, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !15, !noundef !15 ; 48 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noundef !15 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12853)
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %rhsc.i.i = load i8, ptr %i.am, align 1, !alias.scope !12856 ; 12 uses
  %i.aq = icmp eq i8 %rhsc.i.i, 32
  br i1 %i.aq, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes18need_quotes_spaces17h18e9224bd32e84a8E.exit.i

_ZN5insta7content4yaml8vendored7emitter11need_quotes18need_quotes_spaces17h18e9224bd32e84a8E.exit.i: ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.ao  ; 5 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %rhsc4.i.i = load i8, ptr %i.as, align 1, !alias.scope !12856
  %i.at = icmp eq i8 %rhsc4.i.i, 32
  br i1 %i.at, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5insta7content4yaml8vendored7emitter11need_quotes18need_quotes_spaces17h18e9224bd32e84a8E.exit.i
  %i.au = icmp sgt i8 %rhsc.i.i, -1
  br i1 %i.au, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i": ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.aw = and i8 %rhsc.i.i, 31
  %i.ax = zext nneg i8 %i.aw to i32               ; 3 uses
  %i.ay = icmp samesign ne i64 %i.ao, 1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.av, align 1, !alias.scope !12859, !noalias !12862, !noundef !15
  %i.ba = shl nuw nsw i32 %i.ax, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %rhsc.i.i, -33
  br i1 %i.be, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i", label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i8 %rhsc.i.i to i32
  br label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i"
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bh = icmp samesign ne i64 %i.ao, 2
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bg, align 1, !alias.scope !12859, !noalias !12862, !noundef !15
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.ax, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %rhsc.i.i, -17
  br i1 %i.bp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.br = icmp samesign ne i64 %i.ao, 3
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i8, ptr %i.bq, align 1, !alias.scope !12859, !noalias !12862, !noundef !15
  %i.bt = shl nuw nsw i32 %i.ax, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %bb.h

bb.h:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i", %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i"
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i.i.i" ], [ %i.bz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i.i.i.i" ], [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i" ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ca = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ca)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8720a5ac07268b9aE.exit.i.i.i" [
    i32 38, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 42, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 63, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 124, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 45, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 60, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 62, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 61, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 33, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 37, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
    i32 64, label %_ZN5insta7content4yaml8vendored7emitter11need_quotes17h24b7878748c88a97E.exit.thread
  ]

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8720a5ac07268b9aE.exit.i.i.i": ; preds = %bb.h, %bb.l
  %i.cb = phi ptr [ %i.dk, %bb.l ], [ %i.am, %bb.h ] ; 6 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.cb, %i.ar
  br i1 %.not.not.not.i.not.i, label %.lr.ph.i.preheader.i, label %bb.i

.lr.ph.i.preheader.i:                             ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8720a5ac07268b9aE.exit.i.i.i"
  switch i64 %i.ao, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h6c5ff204cdf94026E.exit.backedge.i.21.i" [
    i64 3, label %.split.i.i
    i64 2, label %.split.i.3.i
    i64 4, label %.split.i.6.i
    i64 5, label %.split.i.9.i
end_hunk_1
begin_hunk_2_@_ZN5insta8snapshot8Snapshot13matches_fully17h91b29bf7e00380adE:bb.a
  %i.aw = phi ptr [ %i.am, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %i.ar, %bb.l ] ; 11 uses
  %i.ax = phi ptr [ %i.an, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %i.as, %bb.l ] ; 2 uses
  %.sroa.0.0.i.sroa.sel21.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel21.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel21.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.ay = load i32, ptr %.sroa.0.0.i.sroa.sel21.v.sroa.sel.v.sroa.sel, align 16, !range !6999, !alias.scope !18426, !noalias !18427, !noundef !15
  %.sroa.0.0.i.sroa.sel24.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel24.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel24.v.sroa.sel.v.sroa.sel.v, i64 68
  %i.az = trunc nuw i32 %i.ay to i1
  %.sroa.01.0.i.sroa.sel62.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel62.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel62.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.ba = load i32, ptr %.sroa.01.0.i.sroa.sel62.v.sroa.sel.v.sroa.sel, align 16, !range !6999, !alias.scope !18411, !noalias !18413, !noundef !15
  %i.bb = trunc nuw i32 %i.ba to i1               ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.bb, label %.split.i.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", label %bb.q

.split.i.i:                                       ; preds = %bb.o
  %.sroa.01.0.i.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 68
  %i.bc = load i32, ptr %.sroa.0.0.i.sroa.sel24.v.sroa.sel.v.sroa.sel, align 4, !alias.scope !18426, !noalias !18427, !noundef !15
  %i.bd = load i32, ptr %.sroa.01.0.i.sroa.sel92.v.sroa.sel.v.sroa.sel, align 4, !alias.scope !18411, !noalias !18413, !noundef !15
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.q, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.q:                                             ; preds = %.split.i.i, %bb.p
  %.sroa.0.0.i.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 96
  %i.bf = load i64, ptr %.sroa.0.0.i.sroa.sel27.v.sroa.sel.v.sroa.sel, align 16, !range !310, !alias.scope !18426, !noalias !18427, !noundef !15
  %.not7.i.i = icmp eq i64 %i.bf, -9223372036854775808
  %.sroa.01.0.i.sroa.sel65.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel65.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel65.v.sroa.sel.v.sroa.sel.v, i64 96
  %i.bg = load i64, ptr %.sroa.01.0.i.sroa.sel65.v.sroa.sel.v.sroa.sel, align 16, !range !310, !alias.scope !18411, !noalias !18413, !noundef !15
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808 ; 2 uses
  br i1 %.not7.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bh, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.bh, label %bb.u, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.t:                                             ; preds = %bb.r
  %.sroa.0.0.i.sroa.sel30.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel30.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel30.v.sroa.sel.v.sroa.sel.v, i64 112
  %.val23.i.i = load i64, ptr %.sroa.0.0.i.sroa.sel30.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18427, !noundef !15 ; 2 uses
  %.sroa.01.0.i.sroa.sel68.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel68.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel68.v.sroa.sel.v.sroa.sel.v, i64 112
  %.val25.i.i = load i64, ptr %.sroa.01.0.i.sroa.sel68.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18413, !noundef !15
  %.not.i.i30.i.i = icmp eq i64 %.val23.i.i, %.val25.i.i
  br i1 %.not.i.i30.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i", label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i": ; preds = %bb.t
  %.sroa.01.0.i.sroa.sel71.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel71.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel71.v.sroa.sel.v.sroa.sel.v, i64 104
  %.val24.i.i = load ptr, ptr %.sroa.01.0.i.sroa.sel71.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18413, !nonnull !15, !noundef !15
  %.sroa.0.0.i.sroa.sel33.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel33.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel33.v.sroa.sel.v.sroa.sel.v, i64 104
  %.val22.i.i = load ptr, ptr %.sroa.0.0.i.sroa.sel33.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18427, !nonnull !15, !noundef !15
  %bcmp.i.i32.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val22.i.i, ptr nonnull readonly align 1 %.val24.i.i, i64 %.val23.i.i), !alias.scope !18433, !noalias !18432
  %i.bi = icmp eq i32 %bcmp.i.i32.i.i, 0
  br i1 %i.bi, label %bb.u, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.u:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i", %bb.s
  %.sroa.0.0.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel36.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel36.v.sroa.sel.v.sroa.sel.v, i64 120
  %i.bj = load i64, ptr %.sroa.0.0.i.sroa.sel36.v.sroa.sel.v.sroa.sel, align 8, !range !310, !alias.scope !18426, !noalias !18427, !noundef !15
  %.not9.i.i = icmp eq i64 %i.bj, -9223372036854775808
  %.sroa.01.0.i.sroa.sel74.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel74.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel74.v.sroa.sel.v.sroa.sel.v, i64 120
  %i.bk = load i64, ptr %.sroa.01.0.i.sroa.sel74.v.sroa.sel.v.sroa.sel, align 8, !range !310, !alias.scope !18411, !noalias !18413, !noundef !15
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808 ; 2 uses
  br i1 %.not9.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.bl, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", label %bb.x

bb.w:                                             ; preds = %bb.u
  br i1 %i.bl, label %bb.y, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.i.sroa.sel39.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel39.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel39.v.sroa.sel.v.sroa.sel.v, i64 136
  %.val19.i.i = load i64, ptr %.sroa.0.0.i.sroa.sel39.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18427, !noundef !15 ; 2 uses
  %.sroa.01.0.i.sroa.sel77.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel77.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel77.v.sroa.sel.v.sroa.sel.v, i64 136
  %.val21.i.i = load i64, ptr %.sroa.01.0.i.sroa.sel77.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18413, !noundef !15
  %.not.i.i34.i.i = icmp eq i64 %.val19.i.i, %.val21.i.i
  br i1 %.not.i.i34.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i", label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i": ; preds = %bb.x
  %.sroa.01.0.i.sroa.sel80.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel80.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel80.v.sroa.sel.v.sroa.sel.v, i64 128
  %.val20.i.i = load ptr, ptr %.sroa.01.0.i.sroa.sel80.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18413, !nonnull !15, !noundef !15
  %.sroa.0.0.i.sroa.sel42.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel42.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel42.v.sroa.sel.v.sroa.sel.v, i64 128
  %.val18.i.i = load ptr, ptr %.sroa.0.0.i.sroa.sel42.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18427, !nonnull !15, !noundef !15
  %bcmp.i.i36.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val18.i.i, ptr nonnull readonly align 1 %.val20.i.i, i64 %.val19.i.i), !alias.scope !18437, !noalias !18432
  %i.bm = icmp eq i32 %bcmp.i.i36.i.i, 0
  br i1 %i.bm, label %bb.y, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.y:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i", %bb.w
  %i.bn = load i8, ptr %.sroa.0.0.i154164193, align 16, !range !910, !alias.scope !18426, !noalias !18427, !noundef !15
  %.not11.i.i = icmp eq i8 %i.bn, 30
  %i.bo = load i8, ptr %i.ax, align 16, !range !910, !alias.scope !18411, !noalias !18413, !noundef !15
  %i.bp = icmp eq i8 %i.bo, 30                    ; 2 uses
  br i1 %.not11.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.bp, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", label %.split45.i.i

bb.aa:                                            ; preds = %bb.y
  br i1 %i.bp, label %bb.ab, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

.split45.i.i:                                     ; preds = %bb.z
  %i.bq = call fastcc noundef zeroext i1 @"_ZN64_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdfe33e7aa0ed1a32E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %.sroa.0.0.i154164193, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ax)
  br i1 %i.bq, label %bb.ab, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

bb.ab:                                            ; preds = %.split45.i.i, %bb.aa
  %.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %.sroa.0.0.i.sroa.sel45 = select i1 %.not.i6152166189, ptr %.sroa.gep43, ptr %i.av
  %i.br = load i64, ptr %.sroa.0.0.i.sroa.sel45, align 16, !range !310, !alias.scope !18426, !noalias !18411, !noundef !15
  %.not13.i.i = icmp eq i64 %i.br, -9223372036854775808 ; 2 uses
  %.sroa.01.0.i.sroa.sel83.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel83.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel83.v.sroa.sel.v, i64 144
  %i.bs = load i64, ptr %.sroa.01.0.i.sroa.sel83.v.sroa.sel, align 16, !range !310, !alias.scope !18411, !noalias !18426, !noundef !15
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808 ; 2 uses
  %brmerge.i.i = or i1 %.not13.i.i, %i.bt
  %.mux.i.i = and i1 %.not13.i.i, %i.bt
  br i1 %brmerge.i.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0.0.i.sroa.sel48.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel48.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel48.v.sroa.sel.v.sroa.sel.v, i64 160
  %.val15.i.i = load i64, ptr %.sroa.0.0.i.sroa.sel48.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18411, !noundef !15 ; 2 uses
  %.sroa.01.0.i.sroa.sel86.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel86.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel86.v.sroa.sel.v.sroa.sel.v, i64 160
  %.val17.i.i = load i64, ptr %.sroa.01.0.i.sroa.sel86.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18426, !noundef !15
  %.not.i.i38.i.i = icmp eq i64 %.val15.i.i, %.val17.i.i
  br i1 %.not.i.i38.i.i, label %.split196, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"

.split196:                                        ; preds = %bb.ac
  %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel.v = select i1 %.not2.i150168185, ptr %i.aw, ptr %i.c
  %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel.v, i64 152
  %.val16.i.i = load ptr, ptr %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18426, !nonnull !15, !noundef !15
  %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v, i64 152
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18411, !nonnull !15, !noundef !15
  %bcmp.i.i40.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val16.i.i, i64 %.val15.i.i), !alias.scope !18441
  %i.bu = icmp eq i32 %bcmp.i.i40.i.i, 0          ; 2 uses
  br i1 %.not2.i150168185, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", label %bb.ad

"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit": ; preds = %bb.ac, %bb.ab, %.split45.i.i, %bb.aa, %bb.z, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i", %bb.x, %bb.w, %bb.v, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i", %bb.t, %bb.s, %bb.r, %.split.i.i, %bb.p, %bb.o, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i", %bb.m, %bb.l, %bb.k
  %.not.i6152166192 = phi i1 [ %.not.i6152166189, %.split45.i.i ], [ %.not.i6152166191, %bb.l ], [ %.not.i6152166189, %bb.x ], [ %.not.i6152166189, %bb.z ], [ %.not.i6152166189, %bb.v ], [ %.not.i6152166189, %bb.r ], [ %.not.i6152166189, %bb.o ], [ %.not.i6152166190, %bb.k ], [ %.not.i6152166189, %bb.aa ], [ %.not.i6152166189, %bb.w ], [ %.not.i6152166189, %bb.s ], [ %.not.i6152166189, %bb.p ], [ %.not.i6152166189, %bb.ab ], [ %.not.i6152166190, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %.not.i6152166189, %bb.ac ], [ %.not.i6152166189, %.split.i.i ], [ %.not.i6152166189, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ %.not.i6152166190, %bb.m ], [ %.not.i6152166189, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ %.not.i6152166189, %bb.t ] ; 2 uses
  %.not2.i150168186 = phi i1 [ %.not2.i150168185, %.split45.i.i ], [ %.not2.i150168188, %bb.l ], [ %.not2.i150168185, %bb.x ], [ %.not2.i150168185, %bb.z ], [ %.not2.i150168185, %bb.v ], [ %.not2.i150168185, %bb.r ], [ %.not2.i150168185, %bb.o ], [ %.not2.i150168187, %bb.k ], [ %.not2.i150168185, %bb.aa ], [ %.not2.i150168185, %bb.w ], [ %.not2.i150168185, %bb.s ], [ %.not2.i150168185, %bb.p ], [ %.not2.i150168185, %bb.ab ], [ %.not2.i150168187, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %.not2.i150168185, %bb.ac ], [ %.not2.i150168185, %.split.i.i ], [ %.not2.i150168185, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ %.not2.i150168187, %bb.m ], [ %.not2.i150168185, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ %.not2.i150168185, %bb.t ]
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %.split45.i.i ], [ false, %bb.l ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.p ], [ %.mux.i.i, %bb.ab ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ false, %bb.ac ], [ false, %.split.i.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ false, %bb.m ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ false, %bb.t ] ; 2 uses
  br i1 %.not2.i150168186, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", label %bb.ad

bb.ad:                                            ; preds = %.split196, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"
  %.sroa.0.0.shrunk.i.i199 = phi i1 [ %i.bu, %.split196 ], [ %.sroa.0.0.shrunk.i.i, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ]
  %.not.i6152166192197 = phi i1 [ %.not.i6152166189, %.split196 ], [ %.not.i6152166192, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(176) %i.c)
          to label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10" unwind label %bb.h

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10": ; preds = %.split196, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", %bb.ad
  %.sroa.0.0.shrunk.i.i200 = phi i1 [ %i.bu, %.split196 ], [ %.sroa.0.0.shrunk.i.i, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ], [ %.sroa.0.0.shrunk.i.i199, %bb.ad ]
  %.not.i6152166192198 = phi i1 [ %.not.i6152166189, %.split196 ], [ %.not.i6152166192, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ], [ %.not.i6152166192197, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i6152166192198, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10"
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(176) %i.d)
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11"

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11": ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.af:                                            ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit": ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18save_with_metadata17h11e7974a9e7efef8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [176 x i8], align 16              ; 9 uses
  %.sroa.5 = alloca [136 x i8], align 8           ; 4 uses
  %.sroa.719 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.9 = alloca [8 x i8], align 8             ; 6 uses
  %.sroa.15 = alloca [8 x i8], align 8            ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = tail call { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18445
  store i32 511, ptr %i.b, align 4, !noalias !18445
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 1, ptr %i.l, align 4, !noalias !18445
  %i.m = call noundef ptr @_ZN3std2fs10DirBuilder7_create17h70f652d231a39496E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.k) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18445
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not18 = icmp eq ptr %3, null                  ; 2 uses
  %. = select i1 %.not18, i64 %2, i64 %4
  %.28 = select i1 %.not18, ptr %1, ptr %3
  invoke void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.28, i64 noundef %.)
          to label %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit unwind label %.thread33

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.n = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #55
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.aa, %bb.af, %.thread, %bb.ai, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.aq, %bb.af ], [ %i.al, %bb.aa ], [ %i.al, %bb.z ], [ %.pn2629, %.thread ], [ %.pn2629, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29": ; preds = %bb.d
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", %bb.ah, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29"
  ret void

.thread33:                                        ; preds = %bb.c, %bb.y
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit: ; preds = %bb.c
  %i.t = load i64, ptr %i.g, align 8, !range !310, !noundef !15 ; 7 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.u, label %bb.y, label %bb.i

bb.i:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  %.sroa.7.0.copyload = load ptr, ptr %i.v, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719)
  call void @llvm.experimental.noalias.scope.decl(metadata !18448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i32, ptr %i.w, align 16, !range !6999, !alias.scope !18448, !noalias !18451, !noundef !15
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.thread37, label %bb.j

.thread37:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.then

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN64_$LT$insta..snapshot..MetaData$u20$as$u20$core..clone..Clone$GT$5clone17hd54e3f735c5063b6E"(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.p, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.ac, %bb.p ] ; 2 uses
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18453
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.aa, align 16, !noalias !18456
  %.sroa.013.0.copyload14 = load ptr, ptr %i.a, align 16, !noalias !18448
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx15, i64 136, i1 false), !noalias !18448
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.516.0.copyload18 = load i64, ptr %.sroa.516.0..sroa_idx17, align 16, !noalias !18448 ; 2 uses
  %.sroa.719.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx20, i64 24, i1 false), !noalias !18448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not19 = icmp eq i64 %.sroa.516.0.copyload18, -9223372036854775807
  br i1 %.not19, label %.then, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.013.0.copyload14, ptr %i.f, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, i64 136, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i64 %.sroa.516.0.copyload18, ptr %.sroa.516.0..sroa_idx, align 16
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.f)
          to label %bb.q unwind label %bb.p

.then:                                            ; preds = %.thread37, %bb.n
  store ptr %i.h, ptr %.sroa.9, align 8
  br label %.cont

.cont:                                            ; preds = %7, %.then
  %i.ab = phi ptr [ %i.h, %.then ], [ %8, %7 ]    ; 6 uses
  %.sroa.05.04958 = phi i64 [ -9223372036854775808, %.then ], [ %.sroa.05.0.copyload, %7 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719)
  %.not20 = icmp eq i64 %.sroa.05.04958, -9223372036854775808 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.015.0.sroa.sel = select i1 %.not20, ptr %.sroa.gep, ptr %.sroa.15
  %6 = load i64, ptr %.sroa.015.0.sroa.sel, align 8, !noundef !15
  %.not.i44 = icmp eq i64 %.sroa.11.0.copyload, %6
  br i1 %.not.i44, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f) #55
          to label %bb.k unwind label %bb.x

bb.q:                                             ; preds = %bb.o
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  store i64 %.sroa.15.0.copyload, ptr %.sroa.15, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f)
          to label %7 unwind label %bb.m

7:                                                ; preds = %bb.q
  %8 = inttoptr i64 %.sroa.9.0.copyload to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.cont

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %.cont
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.015.0.sroa.sel4 = select i1 %.not20, ptr %.sroa.gep2, ptr %.sroa.9
  %9 = load ptr, ptr %.sroa.015.0.sroa.sel4, align 8, !nonnull !15, !noundef !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %9, i64 %.sroa.11.0.copyload)
  %i.ad = icmp eq i32 %bcmp.i, 0
  br i1 %i.ad, label %bb.s, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread": ; preds = %.cont, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  switch i64 %.sroa.05.04958, label %bb.r [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  ]

bb.r:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %.sroa.05.04958, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18457
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"

bb.s:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  switch i64 %.sroa.05.04958, label %bb.t [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %.sroa.05.04958, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18460
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45": ; preds = %bb.r, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %i.af = icmp eq i64 %i.t, 0
  br i1 %i.af, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18463
  br label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46": ; preds = %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  %i.ag = icmp eq i64 %i.t, 0
  br i1 %i.ag, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18466
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46", %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !18469)
  %.val.i53 = load i64, ptr %i.h, align 8, !alias.scope !18469 ; 2 uses
  %i.ah = icmp eq i64 %.val.i53, 0
  br i1 %i.ah, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i54 = load ptr, ptr %i.ai, align 8, !alias.scope !18469, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18469
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

bb.x:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.y:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit" unwind label %.thread33

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit": ; preds = %bb.y, %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.023.0.copyload = load i64, ptr %i.h, align 8 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ak = invoke noundef ptr @_ZN3std2fs5write5inner17ha8f0a95daa2fc383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.524.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.ab unwind label %bb.z, !noalias !18472 ; 3 uses

bb.z:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.am, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.023.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18475
  br label %common.resume

bb.ab:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.an = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.an, label %_ZN3std2fs5write17h20164edb742951e2E.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.023.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18478
  br label %_ZN3std2fs5write17h20164edb742951e2E.exit

_ZN3std2fs5write17h20164edb742951e2E.exit:        ; preds = %bb.ac, %bb.ab
  %.not25 = icmp eq ptr %i.ak, null
  br i1 %.not25, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ak, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.ao = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.ae, label %.critedge, !prof !49

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc61 unwind label %bb.af

.noexc61:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #55
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ah:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.as, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.critedge:                                        ; preds = %bb.ad
  store ptr %i.ak, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ao, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.at, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55": ; preds = %bb.w, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.thread:                                          ; preds = %bb.k, %bb.l, %.thread33
  %.pn2629 = phi { ptr, i32 } [ %i.s, %.thread33 ], [ %.pn, %bb.l ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18481)
  %.val.i63 = load i64, ptr %i.h, align 8, !alias.scope !18481 ; 2 uses
  %i.au = icmp eq i64 %.val.i63, 0
  br i1 %i.au, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i64 = load ptr, ptr %i.av, align 8, !alias.scope !18481, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i64, i64 noundef %.val.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18481
  br label %common.resume
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN5insta8snapshot8MetaData10as_content17hfe8b43a31fe3ba27E(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %1)
  invoke fastcc void @_ZN5insta7content4yaml9to_string17h0ad0e741aa783539E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit" unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18484)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !18484 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !18484, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18484
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !18487)
  call void @llvm.experimental.noalias.scope.decl(metadata !18490)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !18493, !noundef !15 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !range !62, !alias.scope !18493, !noundef !15
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.g, label %bb.h, !prof !169

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.g, align 8, !alias.scope !18496
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  %i.l = phi i64 [ %i.h, %bb.f ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !18496, !nonnull !15, !noundef !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i32 170732845, ptr %i.p, align 1, !noalias !18496
  %i.q = add nuw i64 %i.l, 4                      ; 4 uses
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !18496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.232.val) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.232.val, i64 %.240.val ; 4 uses
  %i.s = icmp samesign eq i64 %.240.val, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.backedge.i.i.i.i.i
  %i.t = phi i64 [ %i.bi, %.backedge.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.u = phi ptr [ %i.be, %.backedge.i.i.i.i.i ], [ %.232.val, %bb.h ] ; 6 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.u, align 1, !alias.scope !18497, !noalias !18500, !noundef !15 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i.i.i.i.i.i"

end_hunk_2
