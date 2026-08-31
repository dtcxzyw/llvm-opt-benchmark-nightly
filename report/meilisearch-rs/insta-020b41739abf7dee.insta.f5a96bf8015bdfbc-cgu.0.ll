Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta3env7resolve17h78cdb00d323002e5E:.lr.ph.i
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
  %i.a = alloca [152 x i8], align 8               ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.513.sroa.3.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx, align 8
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
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
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bc, i64 noundef range(i64 1, 0) %i.bd, i64 noundef range(i64 1, 0) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #54
          to label %.noexc.i.invoke.i.cont.i unwind label %.thread89.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i, !noalias !6998

.noexc.i.invoke.i.cont.i:                         ; preds = %.noexc.i.invoke.i.invoke.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.be = sub nuw nsw i64 %.sroa.5.041.i.i.i, %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i, i64 %i.ay
  br label %.noexc29.i.i

.split.i.i.i:                                     ; preds = %bb.h
  %.mask37.i.i.i = and i64 %i.ay, -4294967296
  %i.bg = icmp eq i64 %.mask37.i.i.i, 17179869184
  br i1 %i.bg, label %.thread.i.i.i, label %_ZN3std2io5Write9write_all17h8b0002bbf16be78dE.exit.i.i

.split36.i.i.i:                                   ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !1067, !noalias !6998, !noundef !15
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread.i.i.i, label %_ZN3std2io5Write9write_all17h8b0002bbf16be78dE.exit.thread94.i.i

.split35.i.i.i:                                   ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.aw, i64 15
  %i.bl = load i8, ptr %i.bk, align 8, !range !1067, !noalias !6998, !noundef !15
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %.thread.i.i.i, label %_ZN3std2io5Write9write_all17h8b0002bbf16be78dE.exit.thread94.i.i

bb.l:                                             ; preds = %bb.h
  %i.bn = icmp ult ptr %i.aw, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.bn)
  %.mask.i.i.i = and i64 %i.ay, -4294967296
  %i.bo = icmp eq i64 %.mask.i.i.i, 150323855360
  br i1 %i.bo, label %.thread.i.i.i, label %_ZN3std2io5Write9write_all17h8b0002bbf16be78dE.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.l, %.split35.i.i.i, %.split36.i.i.i, %.split.i.i.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.noexc29.i.i unwind label %.thread89.loopexit.split-lp.loopexit.i.i, !noalias !6998

end_hunk_0
begin_hunk_1_@_ZN7similar10algorithms7compact17shift_diff_ops_up17h867b3ef9f875d0c9E:bb.a
bb.r:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #54
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !22863)
  %i.bi = load i64, ptr %i.j, align 8, !alias.scope !22863, !noalias !22866, !noundef !15 ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 230584300921369396
  call void @llvm.assume(i1 %i.bj)
  %.not.i = icmp ult i64 %i.l, %i.bi
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", label %bb.t, !prof !206

bb.t:                                             ; preds = %bb.s
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @837) #54, !noalias !22869
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit": ; preds = %bb.s
  %i.bk = load ptr, ptr %i.k, align 8, !alias.scope !22863, !noalias !22866, !nonnull !15, !noundef !15
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.l ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.0.0308
  %i.bo = mul nuw nsw i64 %i.bn, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bm, i64 %i.bo, i1 false), !noalias !22870
  %i.bp = add nsw i64 %i.bi, -1
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !22863, !noalias !22866
  br label %bb.am

bb.u:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit.thread142
  %i.bq = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false)
  %i.bs = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %.critedge

.critedge:                                        ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit.thread142, %bb.u
  %i.bu = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = extractvalue { i64, i64 } %i.bu, 1      ; 2 uses
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i144
  %i.by = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.bz = extractvalue { i64, i64 } %i.by, 1
  %i.ca = sub i64 %i.bz, %.sroa.0.0.i144
  %spec.select.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.bw, i64 %i.bv)
  %i.cb = sub i64 %spec.select.i.i, %.sroa.0.0.i144
  call void @llvm.experimental.noalias.scope.decl(metadata !22871)
  %i.cc = load i64, ptr %i.j, align 8, !alias.scope !22871, !noalias !22874, !noundef !15 ; 7 uses
  %i.cd = icmp ult i64 %i.cc, 230584300921369396
  call void @llvm.assume(i1 %i.cd)
  %.not527 = icmp ult i64 %.sroa.0.0308, %i.cc
  br i1 %.not527, label %bb.v, label %bb.w, !prof !206

bb.v:                                             ; preds = %.critedge
  %i.ce = load i64, ptr %0, align 8, !range !62, !alias.scope !22871, !noalias !22874, !noundef !15
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.critedge
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.bd, i64 noundef %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839) #54, !noalias !22877
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839), !noalias !22878
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cg = load ptr, ptr %i.k, align 8, !alias.scope !22871, !noalias !22874, !nonnull !15, !noundef !15
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.bd ; 6 uses
  %i.ci = icmp samesign ult i64 %i.bd, %i.cc
  br i1 %i.ci, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.ck = sub nuw nsw i64 %i.cc, %i.bd
  %i.cl = mul nuw nsw i64 %i.ck, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.ch, i64 %i.cl, i1 false), !noalias !22878
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit": ; preds = %bb.y, %bb.z
  store i64 0, ptr %i.ch, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.bx, ptr %.sroa.4130.0..sroa_idx, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ca, ptr %.sroa.5131.0..sroa_idx, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %i.cb, ptr %.sroa.6132.0..sroa_idx, align 8
  %i.cm = add nuw nsw i64 %i.cc, 1                ; 2 uses
  store i64 %i.cm, ptr %i.j, align 8, !alias.scope !22871, !noalias !22874
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.cn = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.co = icmp ult i64 %i.bd, %i.cn
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.bd
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cq, i64 noundef %.sroa.0.0.i144)
  %.pre464 = load i64, ptr %i.j, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bd, i64 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @838) #54
  unreachable

bb.ad:                                            ; preds = %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"
  %i.cr = phi i64 [ %.pre464, %bb.ab ], [ %i.cm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit" ] ; 2 uses
  %i.cs = icmp ult i64 %.sroa.0.0308, %i.cr
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.ct, i64 %.sroa.0.0308
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %.sroa.0.0.i144)
  %i.cv = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.cw = icmp ult i64 %i.l, %i.cv
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0308, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #54
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.l
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cy, i64 noundef %.sroa.0.0.i144)
  %i.cz = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.da = icmp ult i64 %i.l, %i.cz
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @841) #54
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.l
  %i.dd = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dc)
  br i1 %i.dd, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @842) #54
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !22879)
  %i.de = load i64, ptr %i.j, align 8, !alias.scope !22879, !noalias !22882, !noundef !15 ; 5 uses
  %i.df = icmp ult i64 %i.de, 230584300921369396
  call void @llvm.assume(i1 %i.df)
  %.not.i98 = icmp ult i64 %i.l, %i.de
  br i1 %.not.i98, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", label %bb.al, !prof !206

bb.al:                                            ; preds = %bb.ak
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @843) #54, !noalias !22885
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99": ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.k, align 8, !alias.scope !22879, !noalias !22882, !nonnull !15, !noundef !15
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.l ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = sub nuw nsw i64 %i.de, %.sroa.0.0308
  %i.dk = mul nuw nsw i64 %i.dj, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.di, i64 %i.dk, i1 false), !noalias !22886
  %i.dl = add nsw i64 %i.de, -1
  store i64 %i.dl, ptr %i.j, align 8, !alias.scope !22879, !noalias !22882
  br label %bb.am

bb.am:                                            ; preds = %bb.bp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120", %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126", %bb.bv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102"
  %.sroa.0.1 = phi i64 [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit" ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99" ], [ %.sroa.0.0308, %bb.ai ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102" ], [ %i.l, %bb.bv ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123" ], [ %.sroa.0.0308, %bb.bp ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120" ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126" ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.an:                                            ; preds = %bb.o
  %i.dm = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %i.l
  %i.do = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0
  %i.dq = extractvalue { i64, i64 } %i.do, 1
  %spec.select.i.i100 = call noundef i64 @llvm.usub.sat.i64(i64 %i.dq, i64 %i.dp)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dn, i64 noundef %spec.select.i.i100)
  call void @llvm.experimental.noalias.scope.decl(metadata !22887)
  %i.dr = load i64, ptr %i.j, align 8, !alias.scope !22887, !noalias !22890, !noundef !15 ; 5 uses
  %i.ds = icmp ult i64 %i.dr, 230584300921369396
  call void @llvm.assume(i1 %i.ds)
  %.not.i101 = icmp ult i64 %.sroa.0.0308, %i.dr
  br i1 %.not.i101, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102", label %bb.ao, !prof !206

bb.ao:                                            ; preds = %bb.an
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0308, i64 noundef %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @845) #54, !noalias !22893
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102": ; preds = %bb.an
  %i.dt = load ptr, ptr %i.k, align 8, !alias.scope !22887, !noalias !22890, !nonnull !15, !noundef !15
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %.sroa.0.0308 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = xor i64 %.sroa.0.0308, -1
  %i.dx = add nsw i64 %i.dr, %i.dw
  %i.dy = mul nsw i64 %i.dx, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dv, i64 %i.dy, i1 false), !noalias !22894
  %i.dz = add nsw i64 %i.dr, -1
  store i64 %i.dz, ptr %i.j, align 8, !alias.scope !22887, !noalias !22890
  br label %bb.am

bb.ap:                                            ; preds = %bb.o
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @844) #54
  unreachable

bb.aq:                                            ; preds = %bb.h
  %i.ea = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.eb = extractvalue { i64, i64 } %i.ea, 0      ; 2 uses
  %i.ec = extractvalue { i64, i64 } %i.ea, 1      ; 3 uses
  %i.ed = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 2 uses
  %i.ef = extractvalue { i64, i64 } %i.ed, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22895)
  call void @llvm.experimental.noalias.scope.decl(metadata !22898)
  %i.eg = icmp uge i64 %i.eb, %i.ec
  %i.eh = icmp uge i64 %i.ee, %i.ef
  %or.cond.i103 = or i1 %i.eg, %i.eh
  br i1 %or.cond.i103, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread, label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %bb.aq
  %i.ei = sub nuw i64 %i.ec, %i.eb                ; 2 uses
  %i.ej = sub nuw i64 %i.ef, %i.ee                ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i104
  %i.ek = phi i64 [ %i.ec, %.lr.ph.i.i.i.i104 ], [ %i.en, %bb.av ]
  %.sroa.01.034.i.i.i.i105 = phi i64 [ 0, %.lr.ph.i.i.i.i104 ], [ %i.ev, %bb.av ] ; 4 uses
  %i.el = phi i64 [ %i.ef, %.lr.ph.i.i.i.i104 ], [ %i.em, %bb.av ]
  %i.em = add i64 %i.el, -1                       ; 4 uses
  %exitcond.not.i.i.i.i106 = icmp eq i64 %.sroa.01.034.i.i.i.i105, %i.ei
  br i1 %exitcond.not.i.i.i.i106, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = add i64 %i.ek, -1                       ; 4 uses
  %i.eo = icmp ult i64 %i.em, %4
  br i1 %i.eo, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i107", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.em, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !22900
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i107": ; preds = %bb.as
  %i.ep = icmp ult i64 %i.en, %2
  br i1 %i.ep, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i108", label %bb.au

bb.au:                                            ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i107"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.en, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !22914
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i108": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i107"
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.em ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.en ; 2 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 8
  %.val9.i.i.i.i.i109 = load i64, ptr %i.es, align 8, !alias.scope !22898, !noalias !22917, !noundef !15 ; 2 uses
  %i.et = getelementptr i8, ptr %i.er, i64 8
  %.val11.i.i.i.i.i110 = load i64, ptr %i.et, align 8, !alias.scope !22895, !noalias !22918, !noundef !15
  %.not.i.i.i.i.i.i.i111 = icmp eq i64 %.val9.i.i.i.i.i109, %.val11.i.i.i.i.i110
  br i1 %.not.i.i.i.i.i.i.i111, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i113", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i113": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i108"
  %.val10.i.i.i.i.i114 = load ptr, ptr %i.er, align 8, !alias.scope !22895, !noalias !22918, !nonnull !15, !align !328, !noundef !15
  %.val.i.i.i.i.i115 = load ptr, ptr %i.eq, align 8, !alias.scope !22898, !noalias !22917, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i.i116 = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i115, ptr nonnull readonly align 1 %.val10.i.i.i.i.i114, i64 %.val9.i.i.i.i.i109), !alias.scope !22919, !noalias !22923
  %i.eu = icmp eq i32 %bcmp.i.i.i.i.i.i.i116, 0
  br i1 %i.eu, label %bb.av, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118

bb.av:                                            ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i113"
  %i.ev = add nuw i64 %.sroa.01.034.i.i.i.i105, 1 ; 2 uses
  %exitcond63.not.i.i.i.i117 = icmp eq i64 %i.ev, %i.ej
  br i1 %exitcond63.not.i.i.i.i117, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread151, label %bb.ar

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118: ; preds = %bb.ar, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i108", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i113"
  %.sroa.0.0.i112 = phi i64 [ %i.ei, %bb.ar ], [ %.sroa.01.034.i.i.i.i105, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i108" ], [ %.sroa.01.034.i.i.i.i105, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i113" ] ; 2 uses
  %.not88 = icmp eq i64 %.sroa.0.0.i112, 0
  br i1 %.not88, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread151

bb.aw:                                            ; preds = %bb.h
  %i.ew = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ex = icmp ult i64 %i.l, %i.ew
  br i1 %i.ex, label %bb.bx, label %bb.bz

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread: ; preds = %bb.aq, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118
  %i.ey = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ez = icmp ult i64 %i.l, %i.ey
  br i1 %i.ez, label %bb.ax, label %bb.ay

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread151: ; preds = %bb.av, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118
  %.sroa.0.0.i112154 = phi i64 [ %.sroa.0.0.i112, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118 ], [ %i.ej, %bb.av ] ; 6 uses
  %i.fa = load i64, ptr %i.j, align 8, !noundef !15
  %i.fb = add nuw i64 %.sroa.0.0308, 1            ; 9 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.bb, label %.critedge92

bb.ax:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread
  %i.fd = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fe = getelementptr inbounds nuw [40 x i8], ptr %i.fd, i64 %i.l
  %i.ff = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fe)
  br i1 %i.ff, label %bb.az, label %.thread

bb.ay:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @846) #54
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !22924)
  %i.fg = load i64, ptr %i.j, align 8, !alias.scope !22924, !noalias !22927, !noundef !15 ; 5 uses
  %i.fh = icmp ult i64 %i.fg, 230584300921369396
  call void @llvm.assume(i1 %i.fh)
  %.not.i119 = icmp ult i64 %i.l, %i.fg
  br i1 %.not.i119, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120", label %bb.ba, !prof !206

bb.ba:                                            ; preds = %bb.az
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #54, !noalias !22930
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120": ; preds = %bb.az
  %i.fi = load ptr, ptr %i.k, align 8, !alias.scope !22924, !noalias !22927, !nonnull !15, !noundef !15
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %i.l ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = sub nuw nsw i64 %i.fg, %.sroa.0.0308
  %i.fm = mul nuw nsw i64 %i.fl, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fj, ptr nonnull align 8 %i.fk, i64 %i.fm, i1 false), !noalias !22931
  %i.fn = add nsw i64 %i.fg, -1
  store i64 %i.fn, ptr %i.j, align 8, !alias.scope !22924, !noalias !22927
  br label %bb.am

bb.bb:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread151
  %i.fo = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fp = getelementptr inbounds nuw [40 x i8], ptr %i.fo, i64 %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.fp, i64 40, i1 false)
  %i.fq = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.bh, label %.critedge92

.critedge92:                                      ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit118.thread151, %bb.bb
  %i.fs = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  %i.ft = extractvalue { i64, i64 } %i.fs, 1
  %i.fu = sub i64 %i.ft, %.sroa.0.0.i112154
  %i.fv = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.fw = extractvalue { i64, i64 } %i.fv, 1
  %i.fx = sub i64 %i.fw, %.sroa.0.0.i112154
  call void @llvm.experimental.noalias.scope.decl(metadata !22932)
  %i.fy = load i64, ptr %i.j, align 8, !alias.scope !22932, !noalias !22935, !noundef !15 ; 7 uses
  %i.fz = icmp ult i64 %i.fy, 230584300921369396
  call void @llvm.assume(i1 %i.fz)
  %.not526 = icmp ult i64 %.sroa.0.0308, %i.fy
  br i1 %.not526, label %bb.bc, label %bb.bd, !prof !206

bb.bc:                                            ; preds = %.critedge92
  %i.ga = load i64, ptr %0, align 8, !range !62, !alias.scope !22932, !noalias !22935, !noundef !15
  %i.gb = icmp eq i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %.critedge92
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.fb, i64 noundef %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849) #54, !noalias !22938
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849), !noalias !22939
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.gc = load ptr, ptr %i.k, align 8, !alias.scope !22932, !noalias !22935, !nonnull !15, !noundef !15
  %i.gd = getelementptr inbounds nuw [40 x i8], ptr %i.gc, i64 %i.fb ; 6 uses
  %i.ge = icmp samesign ult i64 %i.fb, %i.fy
  br i1 %i.ge, label %bb.bg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"

bb.bg:                                            ; preds = %bb.bf
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gg = sub nuw nsw i64 %i.fy, %i.fb
  %i.gh = mul nuw nsw i64 %i.gg, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr nonnull align 8 %i.gd, i64 %i.gh, i1 false), !noalias !22939
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121": ; preds = %bb.bf, %bb.bg
  store i64 0, ptr %i.gd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.fu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %i.fx, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i64 %.sroa.0.0.i112154, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gi = add nuw nsw i64 %i.fy, 1                ; 2 uses
  store i64 %i.gi, ptr %i.j, align 8, !alias.scope !22932, !noalias !22935
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bb
  %i.gj = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.gk = icmp ult i64 %i.fb, %i.gj
  br i1 %i.gk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gl = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gm = getelementptr inbounds nuw [40 x i8], ptr %i.gl, i64 %i.fb
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gm, i64 noundef %.sroa.0.0.i112154)
  %.pre = load i64, ptr %i.j, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fb, i64 noundef %i.gj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @848) #54
  unreachable

bb.bk:                                            ; preds = %bb.bi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"
  %i.gn = phi i64 [ %.pre, %bb.bi ], [ %i.gi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121" ] ; 2 uses
  %i.go = icmp ult i64 %.sroa.0.0308, %i.gn
  br i1 %i.go, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gp = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gq = getelementptr inbounds nuw [40 x i8], ptr %i.gp, i64 %.sroa.0.0308
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gq, i64 noundef %.sroa.0.0.i112154)
  %i.gr = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.gs = icmp ult i64 %i.l, %i.gr
  br i1 %i.gs, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0308, i64 noundef %i.gn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #54
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.gt = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.gt, i64 %i.l
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gu, i64 noundef %.sroa.0.0.i112154)
  %i.gv = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.gw = icmp ult i64 %i.l, %i.gv
  br i1 %i.gw, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @851) #54
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.l
  %i.gz = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gy)
  br i1 %i.gz, label %bb.br, label %bb.am

bb.bq:                                            ; preds = %bb.bn
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.gv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @852) #54
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !22940)
  %i.ha = load i64, ptr %i.j, align 8, !alias.scope !22940, !noalias !22943, !noundef !15 ; 5 uses
  %i.hb = icmp ult i64 %i.ha, 230584300921369396
  call void @llvm.assume(i1 %i.hb)
  %.not.i122 = icmp ult i64 %i.l, %i.ha
  br i1 %.not.i122, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123", label %bb.bs, !prof !206

bb.bs:                                            ; preds = %bb.br
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @853) #54, !noalias !22946
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123": ; preds = %bb.br
  %i.hc = load ptr, ptr %i.k, align 8, !alias.scope !22940, !noalias !22943, !nonnull !15, !noundef !15
  %i.hd = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %i.l ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = sub nuw nsw i64 %i.ha, %.sroa.0.0308
  %i.hg = mul nuw nsw i64 %i.hf, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr nonnull align 8 %i.he, i64 %i.hg, i1 false), !noalias !22947
  %i.hh = add nsw i64 %i.ha, -1
  store i64 %i.hh, ptr %i.j, align 8, !alias.scope !22940, !noalias !22943
  br label %bb.am

bb.bt:                                            ; preds = %bb.p
  %i.hi = icmp ult i64 %.sroa.0.0308, %i.ay
  br i1 %i.hi, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.p
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.hj = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.l ; 2 uses
  %i.hk = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.sroa.0.0308 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.hj, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, ptr noundef nonnull align 8 dereferenceable(40) %i.hk, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.bw:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0308, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bx:                                            ; preds = %bb.aw
  %i.hl = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hm = getelementptr inbounds nuw [40 x i8], ptr %i.hl, i64 %i.l
  %i.hn = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.ho = extractvalue { i64, i64 } %i.hn, 0
  %i.hp = extractvalue { i64, i64 } %i.hn, 1
  %spec.select.i.i124 = call noundef i64 @llvm.usub.sat.i64(i64 %i.hp, i64 %i.ho)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hm, i64 noundef %spec.select.i.i124)
  call void @llvm.experimental.noalias.scope.decl(metadata !22948)
  %i.hq = load i64, ptr %i.j, align 8, !alias.scope !22948, !noalias !22951, !noundef !15 ; 5 uses
  %i.hr = icmp ult i64 %i.hq, 230584300921369396
  call void @llvm.assume(i1 %i.hr)
  %.not.i125 = icmp ult i64 %.sroa.0.0308, %i.hq
  br i1 %.not.i125, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126", label %bb.by, !prof !206

bb.by:                                            ; preds = %bb.bx
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0308, i64 noundef %i.hq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #54, !noalias !22954
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126": ; preds = %bb.bx
  %i.hs = load ptr, ptr %i.k, align 8, !alias.scope !22948, !noalias !22951, !nonnull !15, !noundef !15
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %.sroa.0.0308 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = xor i64 %.sroa.0.0308, -1
  %i.hw = add nsw i64 %i.hq, %i.hv
  %i.hx = mul nsw i64 %i.hw, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr nonnull align 8 %i.hu, i64 %i.hx, i1 false), !noalias !22955
  %i.hy = add nsw i64 %i.hq, -1
  store i64 %i.hy, ptr %i.j, align 8, !alias.scope !22948, !noalias !22951
  br label %bb.am

bb.bz:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @855) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN7similar10algorithms7compact17shift_diff_ops_up17h9847aba0d6159f10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.not332 = icmp eq i64 %3, 0
  br i1 %.not332, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val11.i.i.i.i.i105 = load i64, ptr %i.n, align 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i106 = load i64, ptr %i.q, align 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i107 = load ptr, ptr %i.r, align 8, !nonnull !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val10.i.i.i.i.i108 = load ptr, ptr %i.s, align 8, !nonnull !15 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.am
  %.sroa.0.0333 = phi i64 [ %3, %.lr.ph ], [ %.sroa.0.1, %bb.am ] ; 34 uses
  %i.t = add i64 %.sroa.0.0333, -1                ; 48 uses
  %i.u = load i64, ptr %i.j, align 8, !noundef !15 ; 3 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  %i.y = icmp ult i64 %.sroa.0.0333, %i.u
  br i1 %i.y, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.q, %bb.ax, %bb.am, %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.0333, %bb.b ], [ 0, %bb.am ], [ %.sroa.0.0333, %bb.ax ], [ %.sroa.0.0333, %bb.q ]
  ret i64 %.sroa.0.0.lcssa

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.sroa.0.0333 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false)
  %i.aa = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.ab = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %i.aa, label %bb.f [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ], !prof !715

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0333, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @835) #54
  unreachable

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @858, ptr %i.f, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.453.0..sroa_idx, align 8
  store ptr @860, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.af, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @861) #54
  unreachable

bb.g:                                             ; preds = %bb.d
  switch i8 %i.ab, label %default.unreachable544 [
    i8 0, label %bb.i
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.f
  ], !prof !4924

bb.h:                                             ; preds = %bb.d
  switch i8 %i.ab, label %default.unreachable544 [
    i8 0, label %bb.aq
    i8 1, label %bb.p
    i8 2, label %bb.aw
    i8 3, label %bb.f
  ], !prof !4924

default.unreachable544:                           ; preds = %bb.h, %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 3 uses
  %i.aj = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.aj, 1      ; 3 uses
  %i.am = icmp uge i64 %i.ah, %i.ai
  %i.an = icmp uge i64 %i.ak, %i.al
  %or.cond.i = or i1 %i.am, %i.an
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.ao = sub nuw i64 %i.ai, %i.ah                ; 2 uses
  %i.ap = sub nuw i64 %i.al, %i.ak                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.aq = phi i64 [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.at, %bb.n ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.n ] ; 3 uses
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %i.as, %bb.n ]
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add i64 %i.aq, -1                       ; 2 uses
  %i.au = sub i64 %i.as, %i.m                     ; 3 uses
  %i.av = icmp ult i64 %i.au, %.val11.i.i.i.i.i105
  br i1 %i.av, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.au, i64 noundef %.val11.i.i.i.i.i105, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !22956
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.k
  %i.aw = sub i64 %i.at, %i.p                     ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.val9.i.i.i.i.i106
  br i1 %i.ax, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aw, i64 noundef %.val9.i.i.i.i.i106, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !22970
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i108, i64 %i.au
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i107, i64 %i.aw
  %.val12.i.i.i.i.i = load i32, ptr %i.ay, align 4, !noalias !22973, !noundef !15
  %.val13.i.i.i.i.i = load i32, ptr %i.az, align 4, !noalias !22973, !noundef !15
  %i.ba = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.ba, label %bb.n, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.n:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %i.bb = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.bb, %i.ap
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread141, label %bb.j

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.j, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.j ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i" ] ; 2 uses
  %i.bc = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.bc, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread141

bb.o:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.t, %i.bd
  br i1 %i.be, label %bb.an, label %bb.ap

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.bf = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.bg = load i64, ptr %i.j, align 8, !noundef !15 ; 4 uses
  %i.bh = icmp ult i64 %i.t, %i.bg
  br i1 %i.bh, label %bb.bt, label %bb.bu

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread: ; preds = %bb.i, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  %i.bi = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.bj = icmp ult i64 %i.t, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.r

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread141: ; preds = %bb.n, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  %.sroa.0.0.i143 = phi i64 [ %.sroa.0.0.i, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %i.ap, %bb.n ] ; 6 uses
  %i.bk = load i64, ptr %i.j, align 8, !noundef !15
  %i.bl = add nuw i64 %.sroa.0.0333, 1            ; 9 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
end_hunk_1
begin_hunk_2_@_ZN7similar10algorithms7compact17shift_diff_ops_up17h9847aba0d6159f10E:bb.a
bb.r:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #54
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !22974)
  %i.bq = load i64, ptr %i.j, align 8, !alias.scope !22974, !noalias !22977, !noundef !15 ; 5 uses
  %i.br = icmp ult i64 %i.bq, 230584300921369396
  call void @llvm.assume(i1 %i.br)
  %.not.i = icmp ult i64 %i.t, %i.bq
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", label %bb.t, !prof !206

bb.t:                                             ; preds = %bb.s
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.t, i64 noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @837) #54, !noalias !22980
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit": ; preds = %bb.s
  %i.bs = load ptr, ptr %i.k, align 8, !alias.scope !22974, !noalias !22977, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.t ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = sub nuw nsw i64 %i.bq, %.sroa.0.0333
  %i.bw = mul nuw nsw i64 %i.bv, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.bu, i64 %i.bw, i1 false), !noalias !22981
  %i.bx = add nsw i64 %i.bq, -1
  store i64 %i.bx, ptr %i.j, align 8, !alias.scope !22974, !noalias !22977
  br label %bb.am

bb.u:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread141
  %i.by = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  %i.ca = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.aa, label %.critedge

.critedge:                                        ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit.thread141, %bb.u
  %i.cc = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.cd = extractvalue { i64, i64 } %i.cc, 0
  %i.ce = extractvalue { i64, i64 } %i.cc, 1      ; 2 uses
  %i.cf = sub i64 %i.ce, %.sroa.0.0.i143
  %i.cg = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.ch = extractvalue { i64, i64 } %i.cg, 1
  %i.ci = sub i64 %i.ch, %.sroa.0.0.i143
  %spec.select.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ce, i64 %i.cd)
  %i.cj = sub i64 %spec.select.i.i, %.sroa.0.0.i143
  call void @llvm.experimental.noalias.scope.decl(metadata !22982)
  %i.ck = load i64, ptr %i.j, align 8, !alias.scope !22982, !noalias !22985, !noundef !15 ; 7 uses
  %i.cl = icmp ult i64 %i.ck, 230584300921369396
  call void @llvm.assume(i1 %i.cl)
  %.not546 = icmp ult i64 %.sroa.0.0333, %i.ck
  br i1 %.not546, label %bb.v, label %bb.w, !prof !206

bb.v:                                             ; preds = %.critedge
  %i.cm = load i64, ptr %0, align 8, !range !62, !alias.scope !22982, !noalias !22985, !noundef !15
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.critedge
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.bl, i64 noundef %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839) #54, !noalias !22988
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839), !noalias !22989
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.co = load ptr, ptr %i.k, align 8, !alias.scope !22982, !noalias !22985, !nonnull !15, !noundef !15
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.bl ; 6 uses
  %i.cq = icmp samesign ult i64 %i.bl, %i.ck
  br i1 %i.cq, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cs = sub nuw nsw i64 %i.ck, %i.bl
  %i.ct = mul nuw nsw i64 %i.cs, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr nonnull align 8 %i.cp, i64 %i.ct, i1 false), !noalias !22989
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit": ; preds = %bb.y, %bb.z
  store i64 0, ptr %i.cp, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cf, ptr %.sroa.4129.0..sroa_idx, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.ci, ptr %.sroa.5130.0..sroa_idx, align 8
  %.sroa.6131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.cj, ptr %.sroa.6131.0..sroa_idx, align 8
  %i.cu = add nuw nsw i64 %i.ck, 1                ; 2 uses
  store i64 %i.cu, ptr %i.j, align 8, !alias.scope !22982, !noalias !22985
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.cv = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.cw = icmp ult i64 %i.bl, %i.cv
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.bl
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cy, i64 noundef %.sroa.0.0.i143)
  %.pre487 = load i64, ptr %i.j, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bl, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @838) #54
  unreachable

bb.ad:                                            ; preds = %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"
  %i.cz = phi i64 [ %.pre487, %bb.ab ], [ %i.cu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit" ] ; 2 uses
  %i.da = icmp ult i64 %.sroa.0.0333, %i.cz
  br i1 %i.da, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %.sroa.0.0333
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dc, i64 noundef %.sroa.0.0.i143)
  %i.dd = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.de = icmp ult i64 %i.t, %i.dd
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0333, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #54
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.t
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dg, i64 noundef %.sroa.0.0.i143)
  %i.dh = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.di = icmp ult i64 %i.t, %i.dh
  br i1 %i.di, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @841) #54
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.t
  %i.dl = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dk)
  br i1 %i.dl, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @842) #54
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !22990)
  %i.dm = load i64, ptr %i.j, align 8, !alias.scope !22990, !noalias !22993, !noundef !15 ; 5 uses
  %i.dn = icmp ult i64 %i.dm, 230584300921369396
  call void @llvm.assume(i1 %i.dn)
  %.not.i98 = icmp ult i64 %i.t, %i.dm
  br i1 %.not.i98, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", label %bb.al, !prof !206

bb.al:                                            ; preds = %bb.ak
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.t, i64 noundef %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @843) #54, !noalias !22996
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99": ; preds = %bb.ak
  %i.do = load ptr, ptr %i.k, align 8, !alias.scope !22990, !noalias !22993, !nonnull !15, !noundef !15
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.do, i64 %i.t ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = sub nuw nsw i64 %i.dm, %.sroa.0.0333
  %i.ds = mul nuw nsw i64 %i.dr, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dq, i64 %i.ds, i1 false), !noalias !22997
  %i.dt = add nsw i64 %i.dm, -1
  store i64 %i.dt, ptr %i.j, align 8, !alias.scope !22990, !noalias !22993
  br label %bb.am

bb.am:                                            ; preds = %bb.bp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit122", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit119", %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit125", %bb.bv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102"
  %.sroa.0.1 = phi i64 [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit" ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99" ], [ %.sroa.0.0333, %bb.ai ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102" ], [ %i.t, %bb.bv ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit122" ], [ %.sroa.0.0333, %bb.bp ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit119" ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit125" ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.an:                                            ; preds = %bb.o
  %i.du = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %i.du, i64 %i.t
  %i.dw = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1
  %spec.select.i.i100 = call noundef i64 @llvm.usub.sat.i64(i64 %i.dy, i64 %i.dx)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dv, i64 noundef %spec.select.i.i100)
  call void @llvm.experimental.noalias.scope.decl(metadata !22998)
  %i.dz = load i64, ptr %i.j, align 8, !alias.scope !22998, !noalias !23001, !noundef !15 ; 5 uses
  %i.ea = icmp ult i64 %i.dz, 230584300921369396
  call void @llvm.assume(i1 %i.ea)
  %.not.i101 = icmp ult i64 %.sroa.0.0333, %i.dz
  br i1 %.not.i101, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102", label %bb.ao, !prof !206

bb.ao:                                            ; preds = %bb.an
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0333, i64 noundef %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @845) #54, !noalias !23004
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102": ; preds = %bb.an
  %i.eb = load ptr, ptr %i.k, align 8, !alias.scope !22998, !noalias !23001, !nonnull !15, !noundef !15
  %i.ec = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %.sroa.0.0333 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = xor i64 %.sroa.0.0333, -1
  %i.ef = add nsw i64 %i.dz, %i.ee
  %i.eg = mul nsw i64 %i.ef, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull align 8 %i.ed, i64 %i.eg, i1 false), !noalias !23005
  %i.eh = add nsw i64 %i.dz, -1
  store i64 %i.eh, ptr %i.j, align 8, !alias.scope !22998, !noalias !23001
  br label %bb.am

bb.ap:                                            ; preds = %bb.o
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @844) #54
  unreachable

bb.aq:                                            ; preds = %bb.h
  %i.ei = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { i64, i64 } %i.ei, 1      ; 3 uses
  %i.el = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.em = extractvalue { i64, i64 } %i.el, 0      ; 2 uses
  %i.en = extractvalue { i64, i64 } %i.el, 1      ; 3 uses
  %i.eo = icmp uge i64 %i.ej, %i.ek
  %i.ep = icmp uge i64 %i.em, %i.en
  %or.cond.i103 = or i1 %i.eo, %i.ep
  br i1 %or.cond.i103, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread, label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %bb.aq
  %i.eq = sub nuw i64 %i.ek, %i.ej                ; 2 uses
  %i.er = sub nuw i64 %i.en, %i.em                ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i104
  %i.es = phi i64 [ %i.ek, %.lr.ph.i.i.i.i104 ], [ %i.ev, %bb.av ]
  %.sroa.01.031.i.i.i.i109 = phi i64 [ 0, %.lr.ph.i.i.i.i104 ], [ %i.fd, %bb.av ] ; 3 uses
  %i.et = phi i64 [ %i.en, %.lr.ph.i.i.i.i104 ], [ %i.eu, %bb.av ]
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  %exitcond.not.i.i.i.i110 = icmp eq i64 %.sroa.01.031.i.i.i.i109, %i.eq
  br i1 %exitcond.not.i.i.i.i110, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = add i64 %i.es, -1                       ; 2 uses
  %i.ew = sub i64 %i.eu, %i.m                     ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %.val11.i.i.i.i.i105
  br i1 %i.ex, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i111", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ew, i64 noundef %.val11.i.i.i.i.i105, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !23006
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i111": ; preds = %bb.as
  %i.ey = sub i64 %i.ev, %i.p                     ; 3 uses
  %i.ez = icmp ult i64 %i.ey, %.val9.i.i.i.i.i106
  br i1 %i.ez, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i112", label %bb.au

bb.au:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i111"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ey, i64 noundef %.val9.i.i.i.i.i106, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !23020
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i112": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i111"
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i108, i64 %i.ew
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i107, i64 %i.ey
  %.val12.i.i.i.i.i113 = load i32, ptr %i.fa, align 4, !noalias !23023, !noundef !15
  %.val13.i.i.i.i.i114 = load i32, ptr %i.fb, align 4, !noalias !23023, !noundef !15
  %i.fc = icmp eq i32 %.val12.i.i.i.i.i113, %.val13.i.i.i.i.i114
  br i1 %i.fc, label %bb.av, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117

bb.av:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i112"
  %i.fd = add nuw i64 %.sroa.01.031.i.i.i.i109, 1 ; 2 uses
  %exitcond61.not.i.i.i.i116 = icmp eq i64 %i.fd, %i.er
  br i1 %exitcond61.not.i.i.i.i116, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread150, label %bb.ar

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117: ; preds = %bb.ar, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i112"
  %.sroa.0.0.i115 = phi i64 [ %i.eq, %bb.ar ], [ %.sroa.01.031.i.i.i.i109, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i112" ] ; 2 uses
  %.not88 = icmp eq i64 %.sroa.0.0.i115, 0
  br i1 %.not88, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread150

bb.aw:                                            ; preds = %bb.h
  %i.fe = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ff = icmp ult i64 %i.t, %i.fe
  br i1 %i.ff, label %bb.bx, label %bb.bz

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread: ; preds = %bb.aq, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117
  %i.fg = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.fh = icmp ult i64 %i.t, %i.fg
  br i1 %i.fh, label %bb.ax, label %bb.ay

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread150: ; preds = %bb.av, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117
  %.sroa.0.0.i115153 = phi i64 [ %.sroa.0.0.i115, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117 ], [ %i.er, %bb.av ] ; 6 uses
  %i.fi = load i64, ptr %i.j, align 8, !noundef !15
  %i.fj = add nuw i64 %.sroa.0.0333, 1            ; 9 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  br i1 %i.fk, label %bb.bb, label %.critedge92

bb.ax:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread
  %i.fl = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.t
  %i.fn = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fm)
  br i1 %i.fn, label %bb.az, label %.thread

bb.ay:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @846) #54
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !23024)
  %i.fo = load i64, ptr %i.j, align 8, !alias.scope !23024, !noalias !23027, !noundef !15 ; 5 uses
  %i.fp = icmp ult i64 %i.fo, 230584300921369396
  call void @llvm.assume(i1 %i.fp)
  %.not.i118 = icmp ult i64 %i.t, %i.fo
  br i1 %.not.i118, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit119", label %bb.ba, !prof !206

bb.ba:                                            ; preds = %bb.az
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.t, i64 noundef %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #54, !noalias !23030
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit119": ; preds = %bb.az
  %i.fq = load ptr, ptr %i.k, align 8, !alias.scope !23024, !noalias !23027, !nonnull !15, !noundef !15
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.t ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = sub nuw nsw i64 %i.fo, %.sroa.0.0333
  %i.fu = mul nuw nsw i64 %i.ft, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fs, i64 %i.fu, i1 false), !noalias !23031
  %i.fv = add nsw i64 %i.fo, -1
  store i64 %i.fv, ptr %i.j, align 8, !alias.scope !23024, !noalias !23027
  br label %bb.am

bb.bb:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread150
  %i.fw = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i64 40, i1 false)
  %i.fy = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.bh, label %.critedge92

.critedge92:                                      ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit117.thread150, %bb.bb
  %i.ga = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  %i.gb = extractvalue { i64, i64 } %i.ga, 1
  %i.gc = sub i64 %i.gb, %.sroa.0.0.i115153
  %i.gd = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.ge = extractvalue { i64, i64 } %i.gd, 1
  %i.gf = sub i64 %i.ge, %.sroa.0.0.i115153
  call void @llvm.experimental.noalias.scope.decl(metadata !23032)
  %i.gg = load i64, ptr %i.j, align 8, !alias.scope !23032, !noalias !23035, !noundef !15 ; 7 uses
  %i.gh = icmp ult i64 %i.gg, 230584300921369396
  call void @llvm.assume(i1 %i.gh)
  %.not545 = icmp ult i64 %.sroa.0.0333, %i.gg
  br i1 %.not545, label %bb.bc, label %bb.bd, !prof !206

bb.bc:                                            ; preds = %.critedge92
  %i.gi = load i64, ptr %0, align 8, !range !62, !alias.scope !23032, !noalias !23035, !noundef !15
  %i.gj = icmp eq i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %.critedge92
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.fj, i64 noundef %i.gg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849) #54, !noalias !23038
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849), !noalias !23039
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.gk = load ptr, ptr %i.k, align 8, !alias.scope !23032, !noalias !23035, !nonnull !15, !noundef !15
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %i.gk, i64 %i.fj ; 6 uses
  %i.gm = icmp samesign ult i64 %i.fj, %i.gg
  br i1 %i.gm, label %bb.bg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit120"

bb.bg:                                            ; preds = %bb.bf
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.go = sub nuw nsw i64 %i.gg, %i.fj
  %i.gp = mul nuw nsw i64 %i.go, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.gl, i64 %i.gp, i1 false), !noalias !23039
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit120"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit120": ; preds = %bb.bf, %bb.bg
  store i64 0, ptr %i.gl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.gc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 %i.gf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store i64 %.sroa.0.0.i115153, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gq = add nuw nsw i64 %i.gg, 1                ; 2 uses
  store i64 %i.gq, ptr %i.j, align 8, !alias.scope !23032, !noalias !23035
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bb
  %i.gr = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.gs = icmp ult i64 %i.fj, %i.gr
  br i1 %i.gs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gt = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.gt, i64 %i.fj
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gu, i64 noundef %.sroa.0.0.i115153)
  %.pre = load i64, ptr %i.j, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fj, i64 noundef %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @848) #54
  unreachable

bb.bk:                                            ; preds = %bb.bi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit120"
  %i.gv = phi i64 [ %.pre, %bb.bi ], [ %i.gq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit120" ] ; 2 uses
  %i.gw = icmp ult i64 %.sroa.0.0333, %i.gv
  br i1 %i.gw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %.sroa.0.0333
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gy, i64 noundef %.sroa.0.0.i115153)
  %i.gz = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ha = icmp ult i64 %i.t, %i.gz
  br i1 %i.ha, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0333, i64 noundef %i.gv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #54
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.hb = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %i.t
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hc, i64 noundef %.sroa.0.0.i115153)
  %i.hd = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.he = icmp ult i64 %i.t, %i.hd
  br i1 %i.he, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @851) #54
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.hf = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hf, i64 %i.t
  %i.hh = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hg)
  br i1 %i.hh, label %bb.br, label %bb.am

bb.bq:                                            ; preds = %bb.bn
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.hd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @852) #54
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !23040)
  %i.hi = load i64, ptr %i.j, align 8, !alias.scope !23040, !noalias !23043, !noundef !15 ; 5 uses
  %i.hj = icmp ult i64 %i.hi, 230584300921369396
  call void @llvm.assume(i1 %i.hj)
  %.not.i121 = icmp ult i64 %i.t, %i.hi
  br i1 %.not.i121, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit122", label %bb.bs, !prof !206

bb.bs:                                            ; preds = %bb.br
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.t, i64 noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @853) #54, !noalias !23046
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit122": ; preds = %bb.br
  %i.hk = load ptr, ptr %i.k, align 8, !alias.scope !23040, !noalias !23043, !nonnull !15, !noundef !15
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.t ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = sub nuw nsw i64 %i.hi, %.sroa.0.0333
  %i.ho = mul nuw nsw i64 %i.hn, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hl, ptr nonnull align 8 %i.hm, i64 %i.ho, i1 false), !noalias !23047
  %i.hp = add nsw i64 %i.hi, -1
  store i64 %i.hp, ptr %i.j, align 8, !alias.scope !23040, !noalias !23043
  br label %bb.am

bb.bt:                                            ; preds = %bb.p
  %i.hq = icmp ult i64 %.sroa.0.0333, %i.bg
  br i1 %i.hq, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.p
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.t ; 2 uses
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %.sroa.0.0333 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.hr, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.bw:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0333, i64 noundef %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bx:                                            ; preds = %bb.aw
  %i.ht = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %i.ht, i64 %i.t
  %i.hv = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = extractvalue { i64, i64 } %i.hv, 1
  %spec.select.i.i123 = call noundef i64 @llvm.usub.sat.i64(i64 %i.hx, i64 %i.hw)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hu, i64 noundef %spec.select.i.i123)
  call void @llvm.experimental.noalias.scope.decl(metadata !23048)
  %i.hy = load i64, ptr %i.j, align 8, !alias.scope !23048, !noalias !23051, !noundef !15 ; 5 uses
  %i.hz = icmp ult i64 %i.hy, 230584300921369396
  call void @llvm.assume(i1 %i.hz)
  %.not.i124 = icmp ult i64 %.sroa.0.0333, %i.hy
  br i1 %.not.i124, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit125", label %bb.by, !prof !206

bb.by:                                            ; preds = %bb.bx
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0333, i64 noundef %i.hy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #54, !noalias !23054
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit125": ; preds = %bb.bx
  %i.ia = load ptr, ptr %i.k, align 8, !alias.scope !23048, !noalias !23051, !nonnull !15, !noundef !15
  %i.ib = getelementptr inbounds nuw [40 x i8], ptr %i.ia, i64 %.sroa.0.0333 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.id = xor i64 %.sroa.0.0333, -1
  %i.ie = add nsw i64 %i.hy, %i.id
  %i.if = mul nsw i64 %i.ie, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.ic, i64 %i.if, i1 false), !noalias !23055
  %i.ig = add nsw i64 %i.hy, -1
  store i64 %i.ig, ptr %i.j, align 8, !alias.scope !23048, !noalias !23051
  br label %bb.am

bb.bz:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.t, i64 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @855) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN7similar10algorithms7compact17shift_diff_ops_up17hf76df6ac74547e35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.not185 = icmp eq i64 %1, 0
  br i1 %.not185, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.am
  %.sroa.0.0186 = phi i64 [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.am ] ; 34 uses
  %i.l = add i64 %.sroa.0.0186, -1                ; 48 uses
  %i.m = load i64, ptr %i.j, align 8, !noundef !15 ; 3 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.q = icmp ult i64 %.sroa.0.0186, %i.m
  br i1 %i.q, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.q, %bb.ax, %bb.am, %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.0186, %bb.b ], [ 0, %bb.am ], [ %.sroa.0.0186, %bb.ax ], [ %.sroa.0.0186, %bb.q ]
  ret i64 %.sroa.0.0.lcssa

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.0186 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.s = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.t = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %i.s, label %bb.f [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ], !prof !715

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0186, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @835) #54
  unreachable

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @858, ptr %i.f, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.453.0..sroa_idx, align 8
  store ptr @860, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.x, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @861) #54
  unreachable

bb.g:                                             ; preds = %bb.d
  switch i8 %i.t, label %default.unreachable401 [
    i8 0, label %bb.i
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.f
  ], !prof !4924

bb.h:                                             ; preds = %bb.d
  switch i8 %i.t, label %default.unreachable401 [
    i8 0, label %bb.aq
    i8 1, label %bb.p
    i8 2, label %bb.aw
    i8 3, label %bb.f
  ], !prof !4924

default.unreachable401:                           ; preds = %bb.h, %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 3 uses
  %i.ab = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 3 uses
  %i.ae = icmp uge i64 %i.z, %i.aa
  %i.af = icmp uge i64 %i.ac, %i.ad
  %or.cond.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.ag = sub nuw i64 %i.aa, %i.z                 ; 2 uses
  %i.ah = sub nuw i64 %i.ad, %i.ac                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.ai = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.al, %bb.n ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.n ] ; 4 uses
  %i.aj = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.n ]
  %i.ak = add i64 %i.aj, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add i64 %i.ai, -1                       ; 4 uses
  %i.am = icmp ult i64 %i.ak, %.16.val3
  br i1 %i.am, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ak, i64 noundef %.16.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !23056
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.k
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.8.val1, i64 %i.ak ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !23068, !nonnull !15, !align !328, !noundef !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !23068, !noundef !15 ; 2 uses
  %i.ar = icmp ult i64 %i.al, %.16.val
  br i1 %i.ar, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.16.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !23056
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.al ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !23071, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aq, %i.au
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.av = load ptr, ptr %i.as, align 8, !noalias !23071, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %i.ao, ptr nonnull readonly align 1 %i.av, i64 %i.aq), !alias.scope !23074, !noalias !23078
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %bb.n, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.n:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.ax = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.ax, %i.ah
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread20, label %bb.j

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.j, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %.sroa.0.0.i = phi i64 [ %i.ag, %bb.j ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ] ; 2 uses
  %i.ay = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ay, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread20

bb.o:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ba = icmp ult i64 %i.l, %i.az
  br i1 %i.ba, label %bb.an, label %bb.ap

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.bb = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.bc = load i64, ptr %i.j, align 8, !noundef !15 ; 4 uses
  %i.bd = icmp ult i64 %i.l, %i.bc
  br i1 %i.bd, label %bb.bt, label %bb.bu

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread: ; preds = %bb.i, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  %i.be = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.bf = icmp ult i64 %i.l, %i.be
  br i1 %i.bf, label %bb.q, label %bb.r

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread20: ; preds = %bb.n, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  %.sroa.0.0.i22 = phi i64 [ %.sroa.0.0.i, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %i.ah, %bb.n ] ; 6 uses
  %i.bg = load i64, ptr %i.j, align 8, !noundef !15
  %i.bh = add nuw i64 %.sroa.0.0186, 1            ; 9 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bi, label %bb.u, label %.critedge

bb.q:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread
  %i.bj = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.l
end_hunk_2
begin_hunk_3_@_ZN7similar10algorithms7compact17shift_diff_ops_up17hf76df6ac74547e35E:bb.a
bb.r:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #54
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !23082)
  %i.bm = load i64, ptr %i.j, align 8, !alias.scope !23082, !noalias !23085, !noundef !15 ; 5 uses
  %i.bn = icmp ult i64 %i.bm, 230584300921369396
  call void @llvm.assume(i1 %i.bn)
  %.not.i = icmp ult i64 %i.l, %i.bm
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", label %bb.t, !prof !206

bb.t:                                             ; preds = %bb.s
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @837) #54, !noalias !23088
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit": ; preds = %bb.s
  %i.bo = load ptr, ptr %i.k, align 8, !alias.scope !23082, !noalias !23085, !nonnull !15, !noundef !15
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.l ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = sub nuw nsw i64 %i.bm, %.sroa.0.0186
  %i.bs = mul nuw nsw i64 %i.br, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.bq, i64 %i.bs, i1 false), !noalias !23089
  %i.bt = add nsw i64 %i.bm, -1
  store i64 %i.bt, ptr %i.j, align 8, !alias.scope !23082, !noalias !23085
  br label %bb.am

bb.u:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread20
  %i.bu = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i64 40, i1 false)
  %i.bw = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.aa, label %.critedge

.critedge:                                        ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit.thread20, %bb.u
  %i.by = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0
  %i.ca = extractvalue { i64, i64 } %i.by, 1      ; 2 uses
  %i.cb = sub i64 %i.ca, %.sroa.0.0.i22
  %i.cc = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.cd = extractvalue { i64, i64 } %i.cc, 1
  %i.ce = sub i64 %i.cd, %.sroa.0.0.i22
  %spec.select.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %i.bz)
  %i.cf = sub i64 %spec.select.i.i, %.sroa.0.0.i22
  call void @llvm.experimental.noalias.scope.decl(metadata !23090)
  %i.cg = load i64, ptr %i.j, align 8, !alias.scope !23090, !noalias !23093, !noundef !15 ; 7 uses
  %i.ch = icmp ult i64 %i.cg, 230584300921369396
  call void @llvm.assume(i1 %i.ch)
  %.not403 = icmp ult i64 %.sroa.0.0186, %i.cg
  br i1 %.not403, label %bb.v, label %bb.w, !prof !206

bb.v:                                             ; preds = %.critedge
  %i.ci = load i64, ptr %0, align 8, !range !62, !alias.scope !23090, !noalias !23093, !noundef !15
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.critedge
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.bh, i64 noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839) #54, !noalias !23096
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @839), !noalias !23097
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ck = load ptr, ptr %i.k, align 8, !alias.scope !23090, !noalias !23093, !nonnull !15, !noundef !15
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.bh ; 6 uses
  %i.cm = icmp samesign ult i64 %i.bh, %i.cg
  br i1 %i.cm, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.co = sub nuw nsw i64 %i.cg, %i.bh
  %i.cp = mul nuw nsw i64 %i.co, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cl, i64 %i.cp, i1 false), !noalias !23097
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit": ; preds = %bb.y, %bb.z
  store i64 0, ptr %i.cl, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.cb, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ce, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.cf, ptr %.sroa.610.0..sroa_idx, align 8
  %i.cq = add nuw nsw i64 %i.cg, 1                ; 2 uses
  store i64 %i.cq, ptr %i.j, align 8, !alias.scope !23090, !noalias !23093
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.cr = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.cs = icmp ult i64 %i.bh, %i.cr
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.ct, i64 %i.bh
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %.sroa.0.0.i22)
  %.pre342 = load i64, ptr %i.j, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bh, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @838) #54
  unreachable

bb.ad:                                            ; preds = %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit"
  %i.cv = phi i64 [ %.pre342, %bb.ab ], [ %i.cq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit" ] ; 2 uses
  %i.cw = icmp ult i64 %.sroa.0.0186, %i.cv
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %.sroa.0.0186
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cy, i64 noundef %.sroa.0.0.i22)
  %i.cz = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.da = icmp ult i64 %i.l, %i.cz
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0186, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #54
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.l
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dc, i64 noundef %.sroa.0.0.i22)
  %i.dd = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.de = icmp ult i64 %i.l, %i.dd
  br i1 %i.de, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @841) #54
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.df = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.l
  %i.dh = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dg)
  br i1 %i.dh, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %bb.ag
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @842) #54
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !23098)
  %i.di = load i64, ptr %i.j, align 8, !alias.scope !23098, !noalias !23101, !noundef !15 ; 5 uses
  %i.dj = icmp ult i64 %i.di, 230584300921369396
  call void @llvm.assume(i1 %i.dj)
  %.not.i98 = icmp ult i64 %i.l, %i.di
  br i1 %.not.i98, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", label %bb.al, !prof !206

bb.al:                                            ; preds = %bb.ak
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @843) #54, !noalias !23104
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99": ; preds = %bb.ak
  %i.dk = load ptr, ptr %i.k, align 8, !alias.scope !23098, !noalias !23101, !nonnull !15, !noundef !15
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.l ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = sub nuw nsw i64 %i.di, %.sroa.0.0186
  %i.do = mul nuw nsw i64 %i.dn, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dm, i64 %i.do, i1 false), !noalias !23105
  %i.dp = add nsw i64 %i.di, -1
  store i64 %i.dp, ptr %i.j, align 8, !alias.scope !23098, !noalias !23101
  br label %bb.am

bb.am:                                            ; preds = %bb.bp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120", %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126", %bb.bv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102"
  %.sroa.0.1 = phi i64 [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit" ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit99" ], [ %.sroa.0.0186, %bb.ai ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102" ], [ %i.l, %bb.bv ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123" ], [ %.sroa.0.0186, %bb.bp ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120" ], [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126" ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.an:                                            ; preds = %bb.o
  %i.dq = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.l
  %i.ds = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1
  %spec.select.i.i100 = call noundef i64 @llvm.usub.sat.i64(i64 %i.du, i64 %i.dt)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dr, i64 noundef %spec.select.i.i100)
  call void @llvm.experimental.noalias.scope.decl(metadata !23106)
  %i.dv = load i64, ptr %i.j, align 8, !alias.scope !23106, !noalias !23109, !noundef !15 ; 5 uses
  %i.dw = icmp ult i64 %i.dv, 230584300921369396
  call void @llvm.assume(i1 %i.dw)
  %.not.i101 = icmp ult i64 %.sroa.0.0186, %i.dv
  br i1 %.not.i101, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102", label %bb.ao, !prof !206

bb.ao:                                            ; preds = %bb.an
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0186, i64 noundef %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @845) #54, !noalias !23112
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit102": ; preds = %bb.an
  %i.dx = load ptr, ptr %i.k, align 8, !alias.scope !23106, !noalias !23109, !nonnull !15, !noundef !15
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %.sroa.0.0186 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = xor i64 %.sroa.0.0186, -1
  %i.eb = add nsw i64 %i.dv, %i.ea
  %i.ec = mul nsw i64 %i.eb, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dz, i64 %i.ec, i1 false), !noalias !23113
  %i.ed = add nsw i64 %i.dv, -1
  store i64 %i.ed, ptr %i.j, align 8, !alias.scope !23106, !noalias !23109
  br label %bb.am

bb.ap:                                            ; preds = %bb.o
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @844) #54
  unreachable

bb.aq:                                            ; preds = %bb.h
  %i.ee = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.ef = extractvalue { i64, i64 } %i.ee, 0      ; 2 uses
  %i.eg = extractvalue { i64, i64 } %i.ee, 1      ; 3 uses
  %i.eh = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.eh, 1      ; 3 uses
  %i.ek = icmp uge i64 %i.ef, %i.eg
  %i.el = icmp uge i64 %i.ei, %i.ej
  %or.cond.i103 = or i1 %i.ek, %i.el
  br i1 %or.cond.i103, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread, label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %bb.aq
  %i.em = sub nuw i64 %i.eg, %i.ef                ; 2 uses
  %i.en = sub nuw i64 %i.ej, %i.ei                ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i104
  %i.eo = phi i64 [ %i.eg, %.lr.ph.i.i.i.i104 ], [ %i.er, %bb.av ]
  %.sroa.01.032.i.i.i.i109 = phi i64 [ 0, %.lr.ph.i.i.i.i104 ], [ %i.fd, %bb.av ] ; 4 uses
  %i.ep = phi i64 [ %i.ej, %.lr.ph.i.i.i.i104 ], [ %i.eq, %bb.av ]
  %i.eq = add i64 %i.ep, -1                       ; 4 uses
  %exitcond.not.i.i.i.i110 = icmp eq i64 %.sroa.01.032.i.i.i.i109, %i.em
  br i1 %exitcond.not.i.i.i.i110, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = add i64 %i.eo, -1                       ; 4 uses
  %i.es = icmp ult i64 %i.eq, %.16.val3
  br i1 %i.es, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i111", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eq, i64 noundef %.16.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !23114
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i111": ; preds = %bb.as
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %.8.val1, i64 %i.eq ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !23126, !nonnull !15, !align !328, !noundef !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !23126, !noundef !15 ; 2 uses
  %i.ex = icmp ult i64 %i.er, %.16.val
  br i1 %i.ex, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i112", label %bb.au

bb.au:                                            ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i111"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.er, i64 noundef %.16.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !23114
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i112": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i111"
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.er ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !23129, !noundef !15
  %.not.i.i.i.i.i.i113 = icmp eq i64 %i.ew, %i.fa
  br i1 %.not.i.i.i.i.i.i113, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i115", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i115": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i112"
  %i.fb = load ptr, ptr %i.ey, align 8, !noalias !23129, !nonnull !15, !align !328, !noundef !15
  %bcmp.i.i.i.i.i.i116 = call i32 @bcmp(ptr nonnull readonly align 1 %i.eu, ptr nonnull readonly align 1 %i.fb, i64 %i.ew), !alias.scope !23132, !noalias !23136
  %i.fc = icmp eq i32 %bcmp.i.i.i.i.i.i116, 0
  br i1 %i.fc, label %bb.av, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118

bb.av:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i115"
  %i.fd = add nuw i64 %.sroa.01.032.i.i.i.i109, 1 ; 2 uses
  %exitcond59.not.i.i.i.i117 = icmp eq i64 %i.fd, %i.en
  br i1 %exitcond59.not.i.i.i.i117, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread29, label %bb.ar

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118: ; preds = %bb.ar, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i112", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i115"
  %.sroa.0.0.i114 = phi i64 [ %i.em, %bb.ar ], [ %.sroa.01.032.i.i.i.i109, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i112" ], [ %.sroa.01.032.i.i.i.i109, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i115" ] ; 2 uses
  %.not88 = icmp eq i64 %.sroa.0.0.i114, 0
  br i1 %.not88, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread29

bb.aw:                                            ; preds = %bb.h
  %i.fe = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ff = icmp ult i64 %i.l, %i.fe
  br i1 %i.ff, label %bb.bx, label %bb.bz

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread: ; preds = %bb.aq, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118
  %i.fg = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.fh = icmp ult i64 %i.l, %i.fg
  br i1 %i.fh, label %bb.ax, label %bb.ay

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread29: ; preds = %bb.av, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118
  %.sroa.0.0.i11432 = phi i64 [ %.sroa.0.0.i114, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118 ], [ %i.en, %bb.av ] ; 6 uses
  %i.fi = load i64, ptr %i.j, align 8, !noundef !15
  %i.fj = add nuw i64 %.sroa.0.0186, 1            ; 9 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  br i1 %i.fk, label %bb.bb, label %.critedge92

bb.ax:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread
  %i.fl = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.l
  %i.fn = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fm)
  br i1 %i.fn, label %bb.az, label %.thread

bb.ay:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @846) #54
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !23140)
  %i.fo = load i64, ptr %i.j, align 8, !alias.scope !23140, !noalias !23143, !noundef !15 ; 5 uses
  %i.fp = icmp ult i64 %i.fo, 230584300921369396
  call void @llvm.assume(i1 %i.fp)
  %.not.i119 = icmp ult i64 %i.l, %i.fo
  br i1 %.not.i119, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120", label %bb.ba, !prof !206

bb.ba:                                            ; preds = %bb.az
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #54, !noalias !23146
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit120": ; preds = %bb.az
  %i.fq = load ptr, ptr %i.k, align 8, !alias.scope !23140, !noalias !23143, !nonnull !15, !noundef !15
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.l ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = sub nuw nsw i64 %i.fo, %.sroa.0.0186
  %i.fu = mul nuw nsw i64 %i.ft, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fs, i64 %i.fu, i1 false), !noalias !23147
  %i.fv = add nsw i64 %i.fo, -1
  store i64 %i.fv, ptr %i.j, align 8, !alias.scope !23140, !noalias !23143
  br label %bb.am

bb.bb:                                            ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread29
  %i.fw = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i64 40, i1 false)
  %i.fy = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.bh, label %.critedge92

.critedge92:                                      ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit118.thread29, %bb.bb
  %i.ga = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  %i.gb = extractvalue { i64, i64 } %i.ga, 1
  %i.gc = sub i64 %i.gb, %.sroa.0.0.i11432
  %i.gd = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  %i.ge = extractvalue { i64, i64 } %i.gd, 1
  %i.gf = sub i64 %i.ge, %.sroa.0.0.i11432
  call void @llvm.experimental.noalias.scope.decl(metadata !23148)
  %i.gg = load i64, ptr %i.j, align 8, !alias.scope !23148, !noalias !23151, !noundef !15 ; 7 uses
  %i.gh = icmp ult i64 %i.gg, 230584300921369396
  call void @llvm.assume(i1 %i.gh)
  %.not402 = icmp ult i64 %.sroa.0.0186, %i.gg
  br i1 %.not402, label %bb.bc, label %bb.bd, !prof !206

bb.bc:                                            ; preds = %.critedge92
  %i.gi = load i64, ptr %0, align 8, !range !62, !alias.scope !23148, !noalias !23151, !noundef !15
  %i.gj = icmp eq i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %.critedge92
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut13assert_failed17h18b4beef3172cb24E"(i64 noundef %i.fj, i64 noundef %i.gg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849) #54, !noalias !23154
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @849), !noalias !23155
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.gk = load ptr, ptr %i.k, align 8, !alias.scope !23148, !noalias !23151, !nonnull !15, !noundef !15
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %i.gk, i64 %i.fj ; 6 uses
  %i.gm = icmp samesign ult i64 %i.fj, %i.gg
  br i1 %i.gm, label %bb.bg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"

bb.bg:                                            ; preds = %bb.bf
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.go = sub nuw nsw i64 %i.gg, %i.fj
  %i.gp = mul nuw nsw i64 %i.go, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.gl, i64 %i.gp, i1 false), !noalias !23155
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121": ; preds = %bb.bf, %bb.bg
  store i64 0, ptr %i.gl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.gc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 %i.gf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store i64 %.sroa.0.0.i11432, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gq = add nuw nsw i64 %i.gg, 1                ; 2 uses
  store i64 %i.gq, ptr %i.j, align 8, !alias.scope !23148, !noalias !23151
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bb
  %i.gr = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.gs = icmp ult i64 %i.fj, %i.gr
  br i1 %i.gs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gt = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.gt, i64 %i.fj
  call void @_ZN7similar5types6DiffOp9grow_left17h198e22dd9bfb7b95E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gu, i64 noundef %.sroa.0.0.i11432)
  %.pre = load i64, ptr %i.j, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fj, i64 noundef %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @848) #54
  unreachable

bb.bk:                                            ; preds = %bb.bi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121"
  %i.gv = phi i64 [ %.pre, %bb.bi ], [ %i.gq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17h851c2fc3496767e7E.exit121" ] ; 2 uses
  %i.gw = icmp ult i64 %.sroa.0.0186, %i.gv
  br i1 %i.gw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gx = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %.sroa.0.0186
  call void @_ZN7similar5types6DiffOp10shift_left17h05f67b2cf96a6ff2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gy, i64 noundef %.sroa.0.0.i11432)
  %i.gz = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.ha = icmp ult i64 %i.l, %i.gz
  br i1 %i.ha, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0186, i64 noundef %i.gv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #54
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.hb = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %i.l
  call void @_ZN7similar5types6DiffOp11shrink_left17h32a6f354b5c46253E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hc, i64 noundef %.sroa.0.0.i11432)
  %i.hd = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.he = icmp ult i64 %i.l, %i.hd
  br i1 %i.he, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @851) #54
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.hf = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hf, i64 %i.l
  %i.hh = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hg)
  br i1 %i.hh, label %bb.br, label %bb.am

bb.bq:                                            ; preds = %bb.bn
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.hd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @852) #54
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !23156)
  %i.hi = load i64, ptr %i.j, align 8, !alias.scope !23156, !noalias !23159, !noundef !15 ; 5 uses
  %i.hj = icmp ult i64 %i.hi, 230584300921369396
  call void @llvm.assume(i1 %i.hj)
  %.not.i122 = icmp ult i64 %i.l, %i.hi
  br i1 %.not.i122, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123", label %bb.bs, !prof !206

bb.bs:                                            ; preds = %bb.br
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.l, i64 noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @853) #54, !noalias !23162
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit123": ; preds = %bb.br
  %i.hk = load ptr, ptr %i.k, align 8, !alias.scope !23156, !noalias !23159, !nonnull !15, !noundef !15
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.l ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = sub nuw nsw i64 %i.hi, %.sroa.0.0186
  %i.ho = mul nuw nsw i64 %i.hn, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hl, ptr nonnull align 8 %i.hm, i64 %i.ho, i1 false), !noalias !23163
  %i.hp = add nsw i64 %i.hi, -1
  store i64 %i.hp, ptr %i.j, align 8, !alias.scope !23156, !noalias !23159
  br label %bb.am

bb.bt:                                            ; preds = %bb.p
  %i.hq = icmp ult i64 %.sroa.0.0186, %i.bc
  br i1 %i.hq, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.p
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.l ; 2 uses
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %.sroa.0.0186 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.hr, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.bw:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.0186, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #54
  unreachable

bb.bx:                                            ; preds = %bb.aw
  %i.ht = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %i.ht, i64 %i.l
  %i.hv = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = extractvalue { i64, i64 } %i.hv, 1
  %spec.select.i.i124 = call noundef i64 @llvm.usub.sat.i64(i64 %i.hx, i64 %i.hw)
  call void @_ZN7similar5types6DiffOp10grow_right17h6b15907097eb2c5bE(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hu, i64 noundef %spec.select.i.i124)
  call void @llvm.experimental.noalias.scope.decl(metadata !23164)
  %i.hy = load i64, ptr %i.j, align 8, !alias.scope !23164, !noalias !23167, !noundef !15 ; 5 uses
  %i.hz = icmp ult i64 %i.hy, 230584300921369396
  call void @llvm.assume(i1 %i.hz)
  %.not.i125 = icmp ult i64 %.sroa.0.0186, %i.hy
  br i1 %.not.i125, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126", label %bb.by, !prof !206

bb.by:                                            ; preds = %bb.bx
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.0.0186, i64 noundef %i.hy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #54, !noalias !23170
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc160d1bb141ce9b7E.exit126": ; preds = %bb.bx
  %i.ia = load ptr, ptr %i.k, align 8, !alias.scope !23164, !noalias !23167, !nonnull !15, !noundef !15
  %i.ib = getelementptr inbounds nuw [40 x i8], ptr %i.ia, i64 %.sroa.0.0186 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.id = xor i64 %.sroa.0.0186, -1
  %i.ie = add nsw i64 %i.hy, %i.id
  %i.if = mul nsw i64 %i.ie, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.ic, i64 %i.if, i1 false), !noalias !23171
  %i.ig = add nsw i64 %i.hy, -1
  store i64 %i.ig, ptr %i.j, align 8, !alias.scope !23164, !noalias !23167
  br label %bb.am

bb.bz:                                            ; preds = %bb.aw
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.l, i64 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @855) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN7similar10algorithms7compact19shift_diff_ops_down17h4757dc5305edc038E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %.not379 = icmp eq i64 %3, -1
  br i1 %.not379, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val11.i.i.i.i.i105 = load i64, ptr %i.n, align 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i107 = load i64, ptr %i.r, align 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i108 = load ptr, ptr %i.s, align 8, !nonnull !15 ; 2 uses
  %.val10.i.i.i.i.i109 = load ptr, ptr %i.o, align 8, !nonnull !15 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0.0380 = phi i64 [ %3, %.lr.ph ], [ %.sroa.0.2, %bb.al ] ; 38 uses
  %i.t = add nuw i64 %.sroa.0.0380, 1             ; 26 uses
  %i.u = load i64, ptr %i.j, align 8, !noundef !15
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.o, %bb.aw, %bb.al, %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ -1, %bb.a ], [ %.sroa.0.0380, %bb.b ], [ -1, %bb.al ], [ %.sroa.0.0380, %bb.aw ], [ %.sroa.0.0380, %bb.o ]
  ret i64 %.sroa.0.0.lcssa

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.sroa.0.0380 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.z = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.aa = call noundef i8 @_ZN7similar5types6DiffOp3tag17hc7db2f1fec6ae9cbE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %i.z, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.f
  ], !prof !715

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @858, ptr %i.f, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.455.0..sroa_idx, align 8
  store ptr @860, ptr %i.g, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %i.ae, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @883) #54
  unreachable

bb.e:                                             ; preds = %bb.c
  switch i8 %i.aa, label %default.unreachable616 [
    i8 0, label %bb.g
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.d
  ], !prof !4924

bb.f:                                             ; preds = %bb.c
  switch i8 %i.aa, label %default.unreachable616 [
    i8 0, label %bb.ap
    i8 1, label %bb.n
    i8 2, label %bb.av
    i8 3, label %bb.d
  ], !prof !4924

default.unreachable616:                           ; preds = %bb.f, %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = call { i64, i64 } @_ZN7similar5types6DiffOp9old_range17hc51d3edc16e54f93E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = call { i64, i64 } @_ZN7similar5types6DiffOp9new_range17hf604190d58711f64E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.al = icmp uge i64 %i.ag, %i.ah
  %i.am = icmp uge i64 %i.aj, %i.ak
  %or.cond.i = or i1 %i.al, %i.am
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select.i.i.i.i.i = sub nuw i64 %i.ak, %i.aj
  %spec.select.i.i4.i.i.i = sub nuw i64 %i.ah, %i.ag
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %invariant.op.i.i.i.i = sub i64 %i.aj, %i.m     ; 2 uses
  %invariant.op.i = sub i64 %i.ag, %i.q           ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.an, %bb.l ] ; 5 uses
  %i.an = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.ao = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i105
  br i1 %i.ao, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %umax.i = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i105, i64 %invariant.op.i.i.i.i)
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i105, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !23172
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.i
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.ap = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i107
  br i1 %i.ap, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i107, i64 %invariant.op.i)
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i107, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !23186
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i109, i64 %.reass.i.i.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i108, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.aq, align 4, !noalias !23189, !noundef !15
  %.val13.i.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !23189, !noundef !15
  %i.as = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.as, label %bb.l, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.l:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.an, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread144, label %bb.i

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not85 = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not85, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread144

bb.m:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.au = icmp ult i64 %.sroa.0.0380, %i.at
  br i1 %i.au, label %bb.am, label %bb.ao

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.av = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.aw = load i64, ptr %i.j, align 8, !noundef !15 ; 4 uses
  %i.ax = icmp ult i64 %.sroa.0.0380, %i.aw
  br i1 %i.ax, label %bb.bt, label %bb.bu

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.h, %bb.g, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %i.ay = load i64, ptr %i.j, align 8, !noundef !15 ; 2 uses
  %i.az = icmp ult i64 %i.t, %i.ay
  br i1 %i.az, label %bb.o, label %bb.p

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread144: ; preds = %bb.l, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i147 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.l ] ; 4 uses
  %.not86 = icmp eq i64 %.sroa.0.0380, 0
  %i.ba = add i64 %.sroa.0.0380, -1               ; 5 uses
  br i1 %.not86, label %.critedge, label %bb.s

bb.o:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.bb = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.t
  %i.bd = call noundef zeroext i1 @_ZN7similar5types6DiffOp8is_empty17he62f08d7ccfd33c5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bc)
  br i1 %i.bd, label %bb.q, label %.thread

bb.p:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
end_hunk_3
