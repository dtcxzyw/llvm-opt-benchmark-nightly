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
  %narrow = select i1 %i.l, i48 %.sroa.029.4.extract.shift, i48 80
  %.sroa.026.0 = zext nneg i48 %narrow to i64
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
