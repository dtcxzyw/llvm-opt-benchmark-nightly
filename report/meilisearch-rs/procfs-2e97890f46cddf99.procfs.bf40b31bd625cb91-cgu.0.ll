Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN11procfs_core10FromReadSI9from_file17hebf6d26f20f682f9E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1042
  %.not = icmp eq i64 %.sroa.02.2, -9223372036854775803
  br i1 %.not, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.b, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit"
  %.sroa.54.4 = phi i64 [ %.sroa.8.sroa.7.0.copyload, %bb.b ], [ %.sroa.54.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.41.4 = phi i64 [ %.sroa.8.sroa.6.0.copyload, %bb.b ], [ %.sroa.41.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.28.4 = phi ptr [ %.sroa.8.sroa.5.0.copyload, %bb.b ], [ %.sroa.28.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.22.4 = phi i32 [ %.sroa.6.0.copyload, %bb.b ], [ %.sroa.22.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.02.4 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.02.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false)
  store i64 %.sroa.02.4, ptr %i.b, align 8, !noalias !1126
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.22.4, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1126
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.28.4, ptr %.sroa.6119.0..sroa_idx, align 8, !noalias !1126
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.41.4, ptr %.sroa.7120.0..sroa_idx, align 8, !noalias !1126
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.54.4, ptr %.sroa.8121.0..sroa_idx, align 8, !noalias !1126
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1125
  br label %bb.dk

bb.dj:                                            ; preds = %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit.thread", %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit"
  %.sroa.22.3147 = phi i32 [ %.sroa.22.8.copyload47, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit.thread" ], [ %.sroa.22.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.28.3146 = phi ptr [ %.sroa.28.8.copyload68, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit.thread" ], [ %.sroa.28.2, %"_ZN45_$LT$T$u20$as$u20$procfs_core..FromReadSI$GT$9from_read17h58c3c391a0e6f9eeE.exit" ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.22.3147, ptr %i.mu, align 8
  %.sroa.6.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.28.3146, ptr %.sroa.6.0..sroa_idx111, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core18from_iter_optional17h8bb3e9fcf7b67c3cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !3, !alias.scope !1163, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1163, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1163, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1165, !noalias !1166, !noundef !4 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1165, !noalias !1166 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i.i
  br i1 %i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !1165, !noalias !1166 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !1165, !noalias !1166 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ad, %bb.e ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.q ; 2 uses
  %i.t = icmp ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1167, !noalias !1168, !noundef !4
  %i.w = icmp eq i8 %i.v, %.pre.i.i.i.i
  br i1 %i.w, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.c
  %i.y = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.r), !noalias !1168 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.aa, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ac = add i64 %i.q, 1
  %i.ad = add i64 %i.ac, %.sroa.4.0.i27.i.i.i.i   ; 7 uses
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !1165, !noalias !1166
  %.not20.i.i.i.i = icmp ult i64 %i.ad, %i.m
  %.not21.i.i.i.i = icmp ugt i64 %i.ad, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not20.i.i.i.i, %.not21.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %.preheader.i.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !1165, !noalias !1166
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.ae = icmp ult i64 %i.h, %i.ad
  br i1 %i.ae, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.af = sub nuw i64 %i.ad, %i.m                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.af
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull %i.j, i64 %i.m), !noalias !1166
  %i.ah = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ah, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i", label %bb.e

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i": ; preds = %bb.f
  %i.ai = load i64, ptr %1, align 8, !alias.scope !1163, !noundef !4 ; 2 uses
  %i.aj = sub nuw i64 %i.af, %i.ai
  store i64 %i.ad, ptr %1, align 8, !alias.scope !1163
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !1169
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !range !3, !alias.scope !1169, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !1169 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1169 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.am, i1 true, i1 %.not.i3.i.i.i
  %i.an = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold, label %bb.s

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i"
  %.sroa.4.1.i.i.i = phi i64 [ %i.aj, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %i.an, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ] ; 8 uses
  %.pn = phi i64 [ %i.ai, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %.pre.i2.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn ; 6 uses
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.ao = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !1170, !noalias !1171, !noundef !4 ; 2 uses
  switch i8 %i.ao, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %select.unfold
  %.pr.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !1170, !noalias !1171
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.ap = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ao, %bb.g ]
  switch i8 %i.ap, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.ar = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.as = icmp ult i64 %.sroa.4.1.i.i.i, 17
  br i1 %i.as, label %.preheader.i, label %.preheader95.i

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.au = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.av = icmp ult i64 %.sroa.4.1.i.i.i, 17
  %.not89109.i = icmp eq i64 %i.au, 0             ; 2 uses
  br i1 %i.av, label %.preheader97.i, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %bb.j
  br i1 %.not89109.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.a

.preheader97.i:                                   ; preds = %bb.j
  br i1 %.not89109.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.k:                                             ; preds = %bb.q
  %i.aw = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %.not90.i = icmp eq i64 %i.bv, 0
  br i1 %.not90.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph102

.preheader99.i:                                   ; preds = %bb.m
  %i.ax = extractvalue { i64, i1 } %i.bi, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader99.i.preheader, %.preheader99.i
  %.sroa.01.2.i97 = phi ptr [ %i.ay, %.preheader99.i ], [ %i.at, %.preheader99.i.preheader ] ; 2 uses
  %.sroa.27.2.i96 = phi i64 [ %i.az, %.preheader99.i ], [ %i.au, %.preheader99.i.preheader ]
  %.sroa.031.2.i95 = phi i64 [ %i.ax, %.preheader99.i ], [ 0, %.preheader99.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i97, i64 1
  %i.az = add i64 %.sroa.27.2.i96, -1             ; 2 uses
  %i.ba = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i95, i64 10) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 0
  %i.bc = load i8, ptr %.sroa.01.2.i97, align 1, !alias.scope !1170, !noalias !1171, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph.a
  %i.bg = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bg, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = zext nneg i32 %i.be to i64
  %i.bi = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bb, i64 %i.bh) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %.loopexit, label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.n
  %.sroa.01.3112.i = phi ptr [ %i.bq, %bb.n ], [ %i.at, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.bp, %bb.n ], [ %i.au, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.bs, %bb.n ], [ 0, %.preheader97.i ]
  %i.bk = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !1170, !noalias !1171, !noundef !4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bo = mul i64 %.sroa.031.4110.i, 10
  %i.bp = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = sub i64 %i.bo, %i.br                    ; 2 uses
  %.not89.i = icmp eq i64 %i.bp, 0
  br i1 %.not89.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.o:                                             ; preds = %bb.h
  %i.bt = icmp ult i64 %.sroa.4.1.i.i.i, 16
  br i1 %i.bt, label %.lr.ph117.i.preheader, label %.preheader95.i

.lr.ph117.i.preheader:                            ; preds = %.preheader.i, %bb.o
  %.sroa.01.1116.i.ph = phi ptr [ %.sroa.0.1.i.i.i, %bb.o ], [ %i.aq, %.preheader.i ]
  %.sroa.27.1115.i.ph = phi i64 [ %.sroa.4.1.i.i.i, %bb.o ], [ %i.ar, %.preheader.i ]
  br label %.lr.ph117.i

.preheader95.i:                                   ; preds = %bb.o, %bb.i
  %.sroa.27.0.ph.i = phi i64 [ %.sroa.4.1.i.i.i, %bb.o ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.o ], [ %i.aq, %bb.i ]
  %.not90.i98 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not90.i98, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph102

.preheader.i:                                     ; preds = %bb.i
  %.not91113.i = icmp eq i64 %i.ar, 0
  br i1 %.not91113.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i.preheader

.lr.ph102:                                        ; preds = %.preheader95.i, %bb.k
  %.sroa.01.0.i101 = phi ptr [ %i.bu, %bb.k ], [ %.sroa.01.0.ph.i, %.preheader95.i ] ; 2 uses
  %.sroa.27.0.i100 = phi i64 [ %i.bv, %bb.k ], [ %.sroa.27.0.ph.i, %.preheader95.i ]
  %.sroa.031.0.i99 = phi i64 [ %i.aw, %bb.k ], [ 0, %.preheader95.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i101, i64 1
  %i.bv = add i64 %.sroa.27.0.i100, -1            ; 2 uses
  %i.bw = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i99, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = load i8, ptr %.sroa.01.0.i101, align 1, !alias.scope !1170, !noalias !1171, !noundef !4
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48                  ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 10
  br i1 %i.cb, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph102
  %i.cc = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.cc, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %.loopexit, label %bb.k

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %bb.r
  %.sroa.01.1116.i = phi ptr [ %i.cm, %bb.r ], [ %.sroa.01.1116.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %.sroa.27.1115.i = phi i64 [ %i.cl, %bb.r ], [ %.sroa.27.1115.i.ph, %.lr.ph117.i.preheader ]
  %.sroa.031.1114.i = phi i64 [ %i.co, %bb.r ], [ 0, %.lr.ph117.i.preheader ]
  %i.cg = load i8, ptr %.sroa.01.1116.i, align 1, !alias.scope !1170, !noalias !1171, !noundef !4
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48                  ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 10
  br i1 %i.cj, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph117.i
  %i.ck = mul i64 %.sroa.031.1114.i, 10
  %i.cl = add nsw i64 %.sroa.27.1115.i, -1        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i, i64 1
  %i.cn = zext nneg i32 %i.ci to i64
  %i.co = add i64 %i.ck, %i.cn                    ; 2 uses
  %.not91.i = icmp eq i64 %i.cl, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i

bb.s:                                             ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cp, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.u

.loopexit:                                        ; preds = %bb.m, %bb.l, %.lr.ph.a, %.lr.ph.i, %.lr.ph102, %bb.p, %bb.q, %.lr.ph117.i, %bb.g, %bb.g, %select.unfold
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1172
  %i.cq = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #42, !noalias !1172 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.t, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit"

bb.t:                                             ; preds = %.loopexit
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !1173
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit": ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cq, ptr noundef nonnull readonly align 1 dereferenceable(40) @5, i64 40, i1 false), !noalias !1174
  store i64 40, ptr %0, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 344, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.u

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit": ; preds = %.preheader99.i, %bb.n, %bb.k, %bb.r, %.preheader99.i.preheader, %.preheader95.i, %.preheader.i, %.preheader97.i
  %.sroa.1414.0 = phi i64 [ %i.co, %bb.r ], [ %i.aw, %bb.k ], [ %i.bs, %bb.n ], [ 0, %.preheader.i ], [ 0, %.preheader97.i ], [ 0, %.preheader95.i ], [ 0, %.preheader99.i.preheader ], [ %i.ax, %.preheader99.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1414.0, ptr %i.ct, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit", %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core18from_iter_optional17h9efa0cc6e09cc792E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !3, !alias.scope !1209, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1209, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1209, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1211, !noalias !1212, !noundef !4 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1211, !noalias !1212 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i.i
  br i1 %i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !1211, !noalias !1212 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !1211, !noalias !1212 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ad, %bb.e ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.q ; 2 uses
  %i.t = icmp ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1213, !noalias !1214, !noundef !4
  %i.w = icmp eq i8 %i.v, %.pre.i.i.i.i
  br i1 %i.w, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.c
  %i.y = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.r), !noalias !1214 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.aa, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ac = add i64 %i.q, 1
  %i.ad = add i64 %i.ac, %.sroa.4.0.i27.i.i.i.i   ; 7 uses
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !1211, !noalias !1212
  %.not20.i.i.i.i = icmp ult i64 %i.ad, %i.m
  %.not21.i.i.i.i = icmp ugt i64 %i.ad, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not20.i.i.i.i, %.not21.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %.preheader.i.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !1211, !noalias !1212
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.ae = icmp ult i64 %i.h, %i.ad
  br i1 %i.ae, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.af = sub nuw i64 %i.ad, %i.m                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.af
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull %i.j, i64 %i.m), !noalias !1212
  %i.ah = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ah, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i", label %bb.e

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i": ; preds = %bb.f
  %i.ai = load i64, ptr %1, align 8, !alias.scope !1209, !noundef !4 ; 2 uses
  %i.aj = sub nuw i64 %i.af, %i.ai
  store i64 %i.ad, ptr %1, align 8, !alias.scope !1209
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !1215
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !range !3, !alias.scope !1215, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !1215 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1215 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.am, i1 true, i1 %.not.i3.i.i.i
  %i.an = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold, label %bb.q

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i"
  %.sroa.4.1.i.i.i = phi i64 [ %i.aj, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %i.an, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ] ; 8 uses
  %.pn = phi i64 [ %i.ai, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %.pre.i2.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn ; 6 uses
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i.i [
    i64 0, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.ao = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !1216, !noundef !4 ; 2 uses
  switch i8 %i.ao, label %bb.h [
    i8 43, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
    i8 45, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  ]

thread-pre-split.i.i:                             ; preds = %select.unfold
  %.pr.i.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !1216
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i, %bb.g
  %i.ap = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.ao, %bb.g ]
  switch i8 %i.ap, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.ar = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.as = icmp ult i64 %.sroa.4.1.i.i.i, 9
  br i1 %i.as, label %.preheader.i.i, label %.preheader102.i.i

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.au = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.av = icmp ult i64 %.sroa.4.1.i.i.i, 9
  %.not91118.i.i = icmp eq i64 %i.au, 0           ; 2 uses
  br i1 %i.av, label %.preheader105.i.i, label %.preheader108.i.i.preheader

.preheader108.i.i.preheader:                      ; preds = %bb.j
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.a

.preheader105.i.i:                                ; preds = %bb.j
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i128, i64 1
  %i.ax = add i64 %.sroa.27.0.i.i127, -1          ; 2 uses
  %i.ay = extractvalue { i32, i1 } %i.ce, 0       ; 2 uses
  %.not92.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not92.i.i, label %.loopexit.i.i, label %.lr.ph129

.preheader108.i.i:                                ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i124, i64 1
  %i.ba = add i64 %.sroa.27.2.i.i123, -1          ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.a

.loopexit.i.i:                                    ; preds = %.preheader108.i.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.i.preheader, %.preheader102.i.i, %.preheader.i.i, %.preheader105.i.i
  %.sroa.033.3.i.i = phi i32 [ %i.bv, %bb.m ], [ %i.cn, %bb.p ], [ %i.ay, %bb.k ], [ 0, %.preheader.i.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader102.i.i ], [ 0, %.preheader108.i.i.preheader ], [ %i.bb, %.preheader108.i.i ]
  %i.bc = zext i32 %.sroa.033.3.i.i to i64
  %i.bd = shl nuw i64 %i.bc, 32
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"

.lr.ph.a:                                         ; preds = %.preheader108.i.i.preheader, %.preheader108.i.i
  %.sroa.03.2.i.i124 = phi ptr [ %i.az, %.preheader108.i.i ], [ %i.at, %.preheader108.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i123 = phi i64 [ %i.ba, %.preheader108.i.i ], [ %i.au, %.preheader108.i.i.preheader ]
  %.sroa.033.2.i.i122 = phi i32 [ %i.bb, %.preheader108.i.i ], [ 0, %.preheader108.i.i.preheader ]
  %i.be = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i122, i32 10) ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  %i.bg = load i8, ptr %.sroa.03.2.i.i124, align 1, !alias.scope !1216, !noundef !4
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, 9                   ; 2 uses
  %brmerge.i.i = select i1 %i.bj, i1 true, i1 %i.bf
  br i1 %brmerge.i.i, label %.loopexit110.split.loop.exit116.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.a
  %i.bk = extractvalue { i32, i1 } %i.be, 0
  %i.bl = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bk, i32 %i.bi) ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.loopexit101.i.i, label %.preheader108.i.i

.loopexit104.split.loop.exit122.i.i:              ; preds = %.lr.ph129
  %.mux97.le.i.i = select i1 %i.cc, i64 256, i64 512
  br label %.loopexit101.i.i

.loopexit110.split.loop.exit116.i.i:              ; preds = %.lr.ph.a
  %.mux.le.i.i = select i1 %i.bj, i64 256, i64 768
  br label %.loopexit101.i.i

.loopexit101.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i, %bb.o, %.lr.ph129.i.i, %.loopexit110.split.loop.exit116.i.i, %.loopexit104.split.loop.exit122.i.i
  %.sroa.12.2.i.i = phi i64 [ 256, %.lr.ph129.i.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i.i ], [ %.mux97.le.i.i, %.loopexit104.split.loop.exit122.i.i ], [ %.mux.le.i.i, %.loopexit110.split.loop.exit116.i.i ], [ 768, %bb.l ]
  %i.bn = or disjoint i64 %.sroa.12.2.i.i, 1
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"

.lr.ph.i.i:                                       ; preds = %.preheader105.i.i, %bb.m
  %.sroa.03.3121.i.i = phi ptr [ %i.bu, %bb.m ], [ %i.at, %.preheader105.i.i ] ; 2 uses
  %.sroa.27.3120.i.i = phi i64 [ %i.bt, %bb.m ], [ %i.au, %.preheader105.i.i ]
  %.sroa.033.4119.i.i = phi i32 [ %i.bv, %bb.m ], [ 0, %.preheader105.i.i ]
  %i.bo = load i8, ptr %.sroa.03.3121.i.i, align 1, !alias.scope !1216, !noundef !4
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.m, label %.loopexit101.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bs = mul i32 %.sroa.033.4119.i.i, 10
  %i.bt = add nsw i64 %.sroa.27.3120.i.i, -1      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i, i64 1
  %i.bv = sub i32 %i.bs, %i.bq                    ; 2 uses
  %.not91.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not91.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.h
  %i.bw = icmp ult i64 %.sroa.4.1.i.i.i, 8
  br i1 %i.bw, label %.lr.ph129.i.i.preheader, label %.preheader102.i.i

.lr.ph129.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.n
  %.sroa.03.1128.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i, %bb.n ], [ %i.aq, %.preheader.i.i ]
  %.sroa.27.1127.i.i.ph = phi i64 [ %.sroa.4.1.i.i.i, %bb.n ], [ %i.ar, %.preheader.i.i ]
  br label %.lr.ph129.i.i

.preheader102.i.i:                                ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i.i = phi i64 [ %.sroa.4.1.i.i.i, %bb.n ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.n ], [ %i.aq, %bb.i ]
  %.not92.i.i125 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not92.i.i125, label %.loopexit.i.i, label %.lr.ph129

.preheader.i.i:                                   ; preds = %bb.i
  %.not93125.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not93125.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i.preheader

.lr.ph129:                                        ; preds = %.preheader102.i.i, %bb.k
  %.sroa.03.0.i.i128 = phi ptr [ %i.aw, %bb.k ], [ %.sroa.03.0.ph.i.i, %.preheader102.i.i ] ; 2 uses
  %.sroa.27.0.i.i127 = phi i64 [ %i.ax, %bb.k ], [ %.sroa.27.0.ph.i.i, %.preheader102.i.i ]
  %.sroa.033.0.i.i126 = phi i32 [ %i.ay, %bb.k ], [ 0, %.preheader102.i.i ]
  %i.bx = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i126, i32 10) ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bx, 1
  %i.bz = load i8, ptr %.sroa.03.0.i.i128, align 1, !alias.scope !1216, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 9                   ; 2 uses
  %brmerge96.i.i = select i1 %i.cc, i1 true, i1 %i.by
  br i1 %brmerge96.i.i, label %.loopexit104.split.loop.exit122.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph129
  %i.cd = extractvalue { i32, i1 } %i.bx, 0
  %i.ce = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cd, i32 %i.cb) ; 2 uses
  %i.cf = extractvalue { i32, i1 } %i.ce, 1
  br i1 %i.cf, label %.loopexit101.i.i, label %bb.k

.lr.ph129.i.i:                                    ; preds = %.lr.ph129.i.i.preheader, %bb.p
  %.sroa.03.1128.i.i = phi ptr [ %i.cm, %bb.p ], [ %.sroa.03.1128.i.i.ph, %.lr.ph129.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i = phi i64 [ %i.cl, %bb.p ], [ %.sroa.27.1127.i.i.ph, %.lr.ph129.i.i.preheader ]
  %.sroa.033.1126.i.i = phi i32 [ %i.cn, %bb.p ], [ 0, %.lr.ph129.i.i.preheader ]
  %i.cg = load i8, ptr %.sroa.03.1128.i.i, align 1, !alias.scope !1216, !noundef !4
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48                  ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 10
  br i1 %i.cj, label %bb.p, label %.loopexit101.i.i

bb.p:                                             ; preds = %.lr.ph129.i.i
  %i.ck = mul i32 %.sroa.033.1126.i.i, 10
  %i.cl = add nsw i64 %.sroa.27.1127.i.i, -1      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i, i64 1
  %i.cn = add i32 %i.ci, %i.ck                    ; 2 uses
  %.not93.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit": ; preds = %.loopexit.i.i, %.loopexit101.i.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.bd, %.loopexit.i.i ], [ %i.bn, %.loopexit101.i.i ] ; 2 uses
  %i.co = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.co, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread", label %bb.s

bb.q:                                             ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cp, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.t

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread": ; preds = %bb.g, %bb.g, %select.unfold, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1217
  %i.cq = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #42, !noalias !1217 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.r, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit"

bb.r:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !1218
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit": ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cq, ptr noundef nonnull readonly align 1 dereferenceable(40) @5, i64 40, i1 false), !noalias !1219
  store i64 40, ptr %0, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 344, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"
  %.sroa.518.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.518.0.extract.trunc = trunc nuw i64 %.sroa.518.0.extract.shift to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.518.0.extract.trunc, ptr %i.ct, align 4
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit", %bb.s, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core18from_iter_optional17he8da4b1ab9b0460fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !3, !alias.scope !1254, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1254, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1254, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1256, !noalias !1257, !noundef !4 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1256, !noalias !1257 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i.i
  br i1 %i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !1256, !noalias !1257 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !1256, !noalias !1257 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ad, %bb.e ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.q ; 2 uses
  %i.t = icmp ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.h, %i.q
end_hunk_0
begin_hunk_1_@_ZN11procfs_core9from_iter17h5087120a4e6cb993E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 326, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit", %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit", %bb.m
  ret void

.loopexit:                                        ; preds = %bb.j, %.lr.ph, %.lr.ph.split.us.i.i, %bb.g, %bb.g, %select.unfold
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3565
  %i.br = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #42, !noalias !3565 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.o, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit"

bb.o:                                             ; preds = %.loopexit
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !3566
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit": ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.br, ptr noundef nonnull readonly align 1 dereferenceable(40) @5, i64 40, i1 false), !noalias !3567
  store i64 40, ptr %0, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 329, ptr %.sroa.620.0..sroa_idx, align 8
  br label %bb.n

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u64$GT$8from_str17h77f6b272fb025c65E.exit": ; preds = %.preheader55.split.us.i.i, %bb.l, %.preheader55.i.i
  %.sroa.1034.0 = phi i64 [ %i.bq, %bb.l ], [ 0, %.preheader55.i.i ], [ %i.bg, %.preheader55.split.us.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1034.0, ptr %i.bt, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core9from_iter17h6b0db19617ff9d59E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !3, !alias.scope !3609, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3609, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !3609, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3610)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3611, !noalias !3612, !noundef !4 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3611, !noalias !3612 ; 2 uses
  %i.m = icmp ult i64 %i.l, %.promoted.i.i.i.i
  br i1 %i.m, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !3611, !noalias !3612 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 4 uses
  %i.r = icmp ult i8 %i.p, 5
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr i8, ptr %i.n, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  tail call void @llvm.assume(i1 %i.r)
  %.pre.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !3611, !noalias !3612 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ah, %bb.e ] ; 4 uses
  %i.v = sub nuw i64 %i.l, %i.u                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.u ; 2 uses
  %i.x = icmp ult i64 %i.v, 16
  br i1 %i.x, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.l, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.05.i.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3613, !noalias !3614, !noundef !4
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i.i
  br i1 %i.aa, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.c
  %i.ac = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.v), !noalias !3614 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.ae, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ag = add i64 %i.u, 1
  %i.ah = add i64 %i.ag, %.sroa.4.0.i27.i.i.i.i   ; 7 uses
  store i64 %i.ah, ptr %i.j, align 8, !alias.scope !3611, !noalias !3612
  %.not20.i.i.i.i = icmp ult i64 %i.ah, %i.q
  %.not21.i.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not20.i.i.i.i, %.not21.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %.preheader.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !3611, !noalias !3612
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.ai = icmp ult i64 %i.l, %i.ah
  br i1 %i.ai, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.aj = sub nuw i64 %i.ah, %i.q                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.n, i64 %i.q), !noalias !3612
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i", label %bb.e

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i": ; preds = %bb.f
  %i.am = load i64, ptr %1, align 8, !alias.scope !3609, !noundef !4 ; 2 uses
  %i.an = sub nuw i64 %i.aj, %i.am
  store i64 %i.ah, ptr %1, align 8, !alias.scope !3609
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.e, align 1, !alias.scope !3615
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !3, !alias.scope !3615, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !3615 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !3615 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold, label %bb.q

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i"
  %.sroa.4.1.i.i.i = phi i64 [ %i.an, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %i.ar, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ] ; 8 uses
  %.pn = phi i64 [ %i.am, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %.pre.i2.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn ; 6 uses
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i.i [
    i64 0, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.as = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !3616, !noundef !4 ; 2 uses
  switch i8 %i.as, label %bb.h [
    i8 43, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
    i8 45, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  ]

thread-pre-split.i.i:                             ; preds = %select.unfold
  %.pr.i.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !3616
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i, %bb.g
  %i.at = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.as, %bb.g ]
  switch i8 %i.at, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.av = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.aw = icmp ult i64 %.sroa.4.1.i.i.i, 9
  br i1 %i.aw, label %.preheader.i.i, label %.preheader102.i.i

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.ay = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.az = icmp ult i64 %.sroa.4.1.i.i.i, 9
  %.not91118.i.i = icmp eq i64 %i.ay, 0           ; 2 uses
  br i1 %i.az, label %.preheader105.i.i, label %.preheader108.i.i.preheader

.preheader108.i.i.preheader:                      ; preds = %bb.j
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.a

.preheader105.i.i:                                ; preds = %bb.j
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i151, i64 1
  %i.bb = add i64 %.sroa.27.0.i.i150, -1          ; 2 uses
  %i.bc = extractvalue { i32, i1 } %i.ci, 0       ; 2 uses
  %.not92.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not92.i.i, label %.loopexit.i.i, label %.lr.ph152

.preheader108.i.i:                                ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i147, i64 1
  %i.be = add i64 %.sroa.27.2.i.i146, -1          ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.bp, 0       ; 2 uses
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.a

.loopexit.i.i:                                    ; preds = %.preheader108.i.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.i.preheader, %.preheader102.i.i, %.preheader.i.i, %.preheader105.i.i
  %.sroa.033.3.i.i = phi i32 [ %i.bz, %bb.m ], [ %i.cr, %bb.p ], [ %i.bc, %bb.k ], [ 0, %.preheader.i.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader102.i.i ], [ 0, %.preheader108.i.i.preheader ], [ %i.bf, %.preheader108.i.i ]
  %i.bg = zext i32 %.sroa.033.3.i.i to i64
  %i.bh = shl nuw i64 %i.bg, 32
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"

.lr.ph.a:                                         ; preds = %.preheader108.i.i.preheader, %.preheader108.i.i
  %.sroa.03.2.i.i147 = phi ptr [ %i.bd, %.preheader108.i.i ], [ %i.ax, %.preheader108.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i146 = phi i64 [ %i.be, %.preheader108.i.i ], [ %i.ay, %.preheader108.i.i.preheader ]
  %.sroa.033.2.i.i145 = phi i32 [ %i.bf, %.preheader108.i.i ], [ 0, %.preheader108.i.i.preheader ]
  %i.bi = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i145, i32 10) ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  %i.bk = load i8, ptr %.sroa.03.2.i.i147, align 1, !alias.scope !3616, !noundef !4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 9                   ; 2 uses
  %brmerge.i.i = select i1 %i.bn, i1 true, i1 %i.bj
  br i1 %brmerge.i.i, label %.loopexit110.split.loop.exit116.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.a
  %i.bo = extractvalue { i32, i1 } %i.bi, 0
  %i.bp = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bo, i32 %i.bm) ; 2 uses
  %i.bq = extractvalue { i32, i1 } %i.bp, 1
  br i1 %i.bq, label %.loopexit101.i.i, label %.preheader108.i.i

.loopexit104.split.loop.exit122.i.i:              ; preds = %.lr.ph152
  %.mux97.le.i.i = select i1 %i.cg, i64 256, i64 512
  br label %.loopexit101.i.i

.loopexit110.split.loop.exit116.i.i:              ; preds = %.lr.ph.a
  %.mux.le.i.i = select i1 %i.bn, i64 256, i64 768
  br label %.loopexit101.i.i

.loopexit101.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i, %bb.o, %.lr.ph129.i.i, %.loopexit110.split.loop.exit116.i.i, %.loopexit104.split.loop.exit122.i.i
  %.sroa.12.2.i.i = phi i64 [ 256, %.lr.ph129.i.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i.i ], [ %.mux97.le.i.i, %.loopexit104.split.loop.exit122.i.i ], [ %.mux.le.i.i, %.loopexit110.split.loop.exit116.i.i ], [ 768, %bb.l ]
  %i.br = or disjoint i64 %.sroa.12.2.i.i, 1
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"

.lr.ph.i.i:                                       ; preds = %.preheader105.i.i, %bb.m
  %.sroa.03.3121.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ax, %.preheader105.i.i ] ; 2 uses
  %.sroa.27.3120.i.i = phi i64 [ %i.bx, %bb.m ], [ %i.ay, %.preheader105.i.i ]
  %.sroa.033.4119.i.i = phi i32 [ %i.bz, %bb.m ], [ 0, %.preheader105.i.i ]
  %i.bs = load i8, ptr %.sroa.03.3121.i.i, align 1, !alias.scope !3616, !noundef !4
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 10
  br i1 %i.bv, label %bb.m, label %.loopexit101.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bw = mul i32 %.sroa.033.4119.i.i, 10
  %i.bx = add nsw i64 %.sroa.27.3120.i.i, -1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i, i64 1
  %i.bz = sub i32 %i.bw, %i.bu                    ; 2 uses
  %.not91.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not91.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.h
  %i.ca = icmp ult i64 %.sroa.4.1.i.i.i, 8
  br i1 %i.ca, label %.lr.ph129.i.i.preheader, label %.preheader102.i.i

.lr.ph129.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.n
  %.sroa.03.1128.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i, %bb.n ], [ %i.au, %.preheader.i.i ]
  %.sroa.27.1127.i.i.ph = phi i64 [ %.sroa.4.1.i.i.i, %bb.n ], [ %i.av, %.preheader.i.i ]
  br label %.lr.ph129.i.i

.preheader102.i.i:                                ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i.i = phi i64 [ %.sroa.4.1.i.i.i, %bb.n ], [ %i.av, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.n ], [ %i.au, %bb.i ]
  %.not92.i.i148 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not92.i.i148, label %.loopexit.i.i, label %.lr.ph152

.preheader.i.i:                                   ; preds = %bb.i
  %.not93125.i.i = icmp eq i64 %i.av, 0
  br i1 %.not93125.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i.preheader

.lr.ph152:                                        ; preds = %.preheader102.i.i, %bb.k
  %.sroa.03.0.i.i151 = phi ptr [ %i.ba, %bb.k ], [ %.sroa.03.0.ph.i.i, %.preheader102.i.i ] ; 2 uses
  %.sroa.27.0.i.i150 = phi i64 [ %i.bb, %bb.k ], [ %.sroa.27.0.ph.i.i, %.preheader102.i.i ]
  %.sroa.033.0.i.i149 = phi i32 [ %i.bc, %bb.k ], [ 0, %.preheader102.i.i ]
  %i.cb = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i149, i32 10) ; 2 uses
  %i.cc = extractvalue { i32, i1 } %i.cb, 1
  %i.cd = load i8, ptr %.sroa.03.0.i.i151, align 1, !alias.scope !3616, !noundef !4
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 9                   ; 2 uses
  %brmerge96.i.i = select i1 %i.cg, i1 true, i1 %i.cc
  br i1 %brmerge96.i.i, label %.loopexit104.split.loop.exit122.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph152
  %i.ch = extractvalue { i32, i1 } %i.cb, 0
  %i.ci = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ch, i32 %i.cf) ; 2 uses
  %i.cj = extractvalue { i32, i1 } %i.ci, 1
  br i1 %i.cj, label %.loopexit101.i.i, label %bb.k

.lr.ph129.i.i:                                    ; preds = %.lr.ph129.i.i.preheader, %bb.p
  %.sroa.03.1128.i.i = phi ptr [ %i.cq, %bb.p ], [ %.sroa.03.1128.i.i.ph, %.lr.ph129.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i = phi i64 [ %i.cp, %bb.p ], [ %.sroa.27.1127.i.i.ph, %.lr.ph129.i.i.preheader ]
  %.sroa.033.1126.i.i = phi i32 [ %i.cr, %bb.p ], [ 0, %.lr.ph129.i.i.preheader ]
  %i.ck = load i8, ptr %.sroa.03.1128.i.i, align 1, !alias.scope !3616, !noundef !4
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.p, label %.loopexit101.i.i

bb.p:                                             ; preds = %.lr.ph129.i.i
  %i.co = mul i32 %.sroa.033.1126.i.i, 10
  %i.cp = add nsw i64 %.sroa.27.1127.i.i, -1      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i, i64 1
  %i.cr = add i32 %i.cm, %i.co                    ; 2 uses
  %.not93.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit": ; preds = %.loopexit.i.i, %.loopexit101.i.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.bh, %.loopexit.i.i ], [ %i.br, %.loopexit101.i.i ] ; 2 uses
  %i.cs = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.cs, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread", label %bb.t

bb.q:                                             ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3617
  store ptr @3, ptr %i.b, align 8, !noalias !3618
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3618
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3618
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3618
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3618
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 326, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit", %bb.t, %bb.q
  ret void

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread": ; preds = %bb.g, %bb.g, %select.unfold, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3619
  %i.ct = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #42, !noalias !3619 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.s, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit"

bb.s:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !3620
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit": ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ct, ptr noundef nonnull readonly align 1 dereferenceable(40) @5, i64 40, i1 false), !noalias !3621
  store i64 40, ptr %0, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 329, ptr %.sroa.624.0..sroa_idx, align 8
  br label %bb.r

bb.t:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit"
  %.sroa.536.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.536.0.extract.trunc = trunc nuw i64 %.sroa.536.0.extract.shift to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.536.0.extract.trunc, ptr %i.cv, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core9from_iter17h6f82463f9b4d2b4aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !3, !alias.scope !3665, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3665, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !3665, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3666)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3667, !noalias !3668, !noundef !4 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3667, !noalias !3668 ; 2 uses
  %i.m = icmp ult i64 %i.l, %.promoted.i.i.i.i
  br i1 %i.m, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !3667, !noalias !3668 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 4 uses
  %i.r = icmp ult i8 %i.p, 5
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr i8, ptr %i.n, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  tail call void @llvm.assume(i1 %i.r)
  %.pre.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !3667, !noalias !3668 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ah, %bb.e ] ; 4 uses
  %i.v = sub nuw i64 %i.l, %i.u                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.u ; 2 uses
  %i.x = icmp ult i64 %i.v, 16
  br i1 %i.x, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.l, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.05.i.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3669, !noalias !3670, !noundef !4
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i.i
  br i1 %i.aa, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.c
  %i.ac = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.v), !noalias !3670 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.ae, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ag = add i64 %i.u, 1
  %i.ah = add i64 %i.ag, %.sroa.4.0.i27.i.i.i.i   ; 7 uses
  store i64 %i.ah, ptr %i.j, align 8, !alias.scope !3667, !noalias !3668
  %.not20.i.i.i.i = icmp ult i64 %i.ah, %i.q
  %.not21.i.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not20.i.i.i.i, %.not21.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %.preheader.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !3667, !noalias !3668
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"

bb.e:                                             ; preds = %bb.f, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.ai = icmp ult i64 %i.l, %i.ah
  br i1 %i.ai, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", label %bb.c

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.aj = sub nuw i64 %i.ah, %i.q                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.n, i64 %i.q), !noalias !3668
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i", label %bb.e

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i": ; preds = %bb.f
  %i.am = load i64, ptr %1, align 8, !alias.scope !3665, !noundef !4 ; 2 uses
  %i.an = sub nuw i64 %i.aj, %i.am
  store i64 %i.ah, ptr %1, align 8, !alias.scope !3665
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.e, align 1, !alias.scope !3671
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !3, !alias.scope !3671, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !3671 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !3671 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold, label %bb.s

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i"
  %.sroa.4.1.i.i.i = phi i64 [ %i.an, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %i.ar, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ] ; 8 uses
  %.pn = phi i64 [ %i.am, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i.i" ], [ %.pre.i2.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i" ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn ; 6 uses
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.as = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !3672, !noalias !3673, !noundef !4 ; 2 uses
  switch i8 %i.as, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %select.unfold
  %.pr.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !3672, !noalias !3673
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.at = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.as, %bb.g ]
  switch i8 %i.at, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.av = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.aw = icmp ult i64 %.sroa.4.1.i.i.i, 17
  br i1 %i.aw, label %.preheader.i, label %.preheader95.i

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  %i.ay = add i64 %.sroa.4.1.i.i.i, -1            ; 3 uses
  %i.az = icmp ult i64 %.sroa.4.1.i.i.i, 17
  %.not89109.i = icmp eq i64 %i.ay, 0             ; 2 uses
  br i1 %i.az, label %.preheader97.i, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %bb.j
  br i1 %.not89109.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.a

.preheader97.i:                                   ; preds = %bb.j
  br i1 %.not89109.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.k:                                             ; preds = %bb.q
  %i.ba = extractvalue { i64, i1 } %i.ci, 0       ; 2 uses
  %.not90.i = icmp eq i64 %i.bz, 0
  br i1 %.not90.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph125

.preheader99.i:                                   ; preds = %bb.m
  %i.bb = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader99.i.preheader, %.preheader99.i
  %.sroa.01.2.i120 = phi ptr [ %i.bc, %.preheader99.i ], [ %i.ax, %.preheader99.i.preheader ] ; 2 uses
  %.sroa.27.2.i119 = phi i64 [ %i.bd, %.preheader99.i ], [ %i.ay, %.preheader99.i.preheader ]
  %.sroa.031.2.i118 = phi i64 [ %i.bb, %.preheader99.i ], [ 0, %.preheader99.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i120, i64 1
  %i.bd = add i64 %.sroa.27.2.i119, -1            ; 2 uses
  %i.be = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i118, i64 10) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = load i8, ptr %.sroa.01.2.i120, align 1, !alias.scope !3672, !noalias !3673, !noundef !4
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph.a
  %i.bk = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bk, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = zext nneg i32 %i.bi to i64
  %i.bm = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bf, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %.loopexit, label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.n
  %.sroa.01.3112.i = phi ptr [ %i.bu, %bb.n ], [ %i.ax, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.bt, %bb.n ], [ %i.ay, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.bw, %bb.n ], [ 0, %.preheader97.i ]
  %i.bo = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !3672, !noalias !3673, !noundef !4
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bs = mul i64 %.sroa.031.4110.i, 10
  %i.bt = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = sub i64 %i.bs, %i.bv                    ; 2 uses
  %.not89.i = icmp eq i64 %i.bt, 0
  br i1 %.not89.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.o:                                             ; preds = %bb.h
  %i.bx = icmp ult i64 %.sroa.4.1.i.i.i, 16
  br i1 %i.bx, label %.lr.ph117.i.preheader, label %.preheader95.i

.lr.ph117.i.preheader:                            ; preds = %.preheader.i, %bb.o
  %.sroa.01.1116.i.ph = phi ptr [ %.sroa.0.1.i.i.i, %bb.o ], [ %i.au, %.preheader.i ]
  %.sroa.27.1115.i.ph = phi i64 [ %.sroa.4.1.i.i.i, %bb.o ], [ %i.av, %.preheader.i ]
  br label %.lr.ph117.i

.preheader95.i:                                   ; preds = %bb.o, %bb.i
  %.sroa.27.0.ph.i = phi i64 [ %.sroa.4.1.i.i.i, %bb.o ], [ %i.av, %bb.i ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.o ], [ %i.au, %bb.i ]
  %.not90.i121 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not90.i121, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph125

.preheader.i:                                     ; preds = %bb.i
  %.not91113.i = icmp eq i64 %i.av, 0
  br i1 %.not91113.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i.preheader

.lr.ph125:                                        ; preds = %.preheader95.i, %bb.k
  %.sroa.01.0.i124 = phi ptr [ %i.by, %bb.k ], [ %.sroa.01.0.ph.i, %.preheader95.i ] ; 2 uses
  %.sroa.27.0.i123 = phi i64 [ %i.bz, %bb.k ], [ %.sroa.27.0.ph.i, %.preheader95.i ]
  %.sroa.031.0.i122 = phi i64 [ %i.ba, %bb.k ], [ 0, %.preheader95.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i124, i64 1
  %i.bz = add i64 %.sroa.27.0.i123, -1            ; 2 uses
  %i.ca = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i122, i64 10) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 0
  %i.cc = load i8, ptr %.sroa.01.0.i124, align 1, !alias.scope !3672, !noalias !3673, !noundef !4
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48                  ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 10
  br i1 %i.cf, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph125
  %i.cg = extractvalue { i64, i1 } %i.ca, 1
  br i1 %i.cg, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = zext nneg i32 %i.ce to i64
  %i.ci = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cb, i64 %i.ch) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.cj, label %.loopexit, label %bb.k

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %bb.r
  %.sroa.01.1116.i = phi ptr [ %i.cq, %bb.r ], [ %.sroa.01.1116.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %.sroa.27.1115.i = phi i64 [ %i.cp, %bb.r ], [ %.sroa.27.1115.i.ph, %.lr.ph117.i.preheader ]
  %.sroa.031.1114.i = phi i64 [ %i.cs, %bb.r ], [ 0, %.lr.ph117.i.preheader ]
  %i.ck = load i8, ptr %.sroa.01.1116.i, align 1, !alias.scope !3672, !noalias !3673, !noundef !4
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph117.i
  %i.co = mul i64 %.sroa.031.1114.i, 10
  %i.cp = add nsw i64 %.sroa.27.1115.i, -1        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i, i64 1
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = add i64 %i.co, %i.cr                    ; 2 uses
  %.not91.i = icmp eq i64 %i.cp, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i

bb.s:                                             ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hd1201be24e0d9131E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.425.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3674
  store ptr @3, ptr %i.b, align 8, !noalias !3675
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3675
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3675
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3675
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3675
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 326, ptr %.sroa.610.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit", %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", %bb.s
  ret void

.loopexit:                                        ; preds = %bb.m, %bb.l, %.lr.ph.a, %.lr.ph.i, %.lr.ph125, %bb.p, %bb.q, %.lr.ph117.i, %bb.g, %bb.g, %select.unfold
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3676
  %i.ct = tail call noundef dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 1) #42, !noalias !3676 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.u, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit"

bb.u:                                             ; preds = %.loopexit
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43, !noalias !3677
  unreachable

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h54b108591e7f5b21E.exit": ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ct, ptr noundef nonnull readonly align 1 dereferenceable(40) @5, i64 40, i1 false), !noalias !3678
  store i64 40, ptr %0, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 40, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 329, ptr %.sroa.620.0..sroa_idx, align 8
  br label %bb.t

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit": ; preds = %.preheader99.i, %bb.n, %bb.k, %bb.r, %.preheader99.i.preheader, %.preheader95.i, %.preheader.i, %.preheader97.i
  %.sroa.1434.0 = phi i64 [ %i.cs, %bb.r ], [ %i.ba, %bb.k ], [ %i.bw, %bb.n ], [ 0, %.preheader.i ], [ 0, %.preheader97.i ], [ 0, %.preheader95.i ], [ 0, %.preheader99.i.preheader ], [ %i.bb, %.preheader99.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1434.0, ptr %i.cv, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN3std2io21default_read_vectored17h5babc89d02026dfcE.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN3std2io21default_read_vectored17h5babc89d02026dfcE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3686, !noalias !3687, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3688, !noalias !3689, !noundef !4
  br label %_ZN3std2io21default_read_vectored17h5babc89d02026dfcE.exit

_ZN3std2io21default_read_vectored17h5babc89d02026dfcE.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  %i.h = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 1 %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !3686
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io4Read14read_buf_exact17hc91743be7f21920fE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3704, !noalias !3705, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !3704, !noalias !3705 ; 5 uses
  %.not41.i = icmp eq i64 %i.b, %.promoted.i
  br i1 %.not41.i, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !3706, !noalias !3707, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted49.i = load i64, ptr %i.e, align 8, !alias.scope !3706, !noalias !3707 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3709)
  %i.f = sub nuw i64 %i.b, %.promoted49.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.promoted49.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.f, i1 false), !noalias !3710
  store i64 %i.b, ptr %i.e, align 8, !alias.scope !3711, !noalias !3707
  %i.h = sub nuw i64 %i.b, %.promoted.i           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.promoted.i
  %i.j = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 1 %i.i, i64 noundef %i.h), !noalias !3711 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 11 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 5 uses
  %i.n = trunc nuw i64 %i.k to i1
  br i1 %i.n, label %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.peel.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i.i.peel.i = icmp ult i64 %i.h, %i.m
  br i1 %.not.i.i.peel.i, label %.loopexit.i, label %bb.f, !prof !8

_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.peel.i: ; preds = %.lr.ph.i
  %.not10.peel.i = icmp eq ptr %i.l, null
  br i1 %.not10.peel.i, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.peel.i
  %i.o = and i64 %i.m, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split.peel.i
    i64 3, label %bb.d
    i64 0, label %.split39.peel.i
    i64 1, label %.split38.peel.i
  ], !prof !19

.split38.peel.i:                                  ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.l, i64 15
  %i.q = load i8, ptr %i.p, align 8, !range !20, !noalias !3704, !noundef !4
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

.split39.peel.i:                                  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !20, !noalias !3704, !noundef !4
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ult ptr %i.l, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.v)
  %.mask.peel.i = and i64 %i.m, -4294967296
  %i.w = icmp eq i64 %.mask.peel.i, 150323855360
  br i1 %i.w, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

.split.peel.i:                                    ; preds = %bb.c
  %.mask40.peel.i = and i64 %i.m, -4294967296
  %i.x = icmp eq i64 %.mask40.peel.i, 17179869184
  br i1 %i.x, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

bb.e:                                             ; preds = %.split.peel.i, %bb.d, %.split39.peel.i, %.split38.peel.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.l), !noalias !3704
  br label %.backedge.peel.i

bb.f:                                             ; preds = %bb.b
  %i.y = add i64 %.promoted.i, %i.m               ; 2 uses
  store i64 %i.y, ptr %i.c, align 8, !alias.scope !3711, !noalias !3712
  %i.z = icmp eq ptr %i.l, null
  br i1 %i.z, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %.backedge.peel.i

.backedge.peel.i:                                 ; preds = %bb.f, %bb.e
  %i.aa = phi i64 [ %i.y, %bb.f ], [ %.promoted.i, %bb.e ] ; 2 uses
  %.not.peel.i = icmp eq i64 %i.b, %i.aa
  br i1 %.not.peel.i, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.backedge.peel.i
  store i64 %i.b, ptr %i.e, align 8, !alias.scope !3706, !noalias !3707
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i, %.peel.next.i
  %i.ab = phi i64 [ %i.aa, %.peel.next.i ], [ %i.am, %.backedge.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.ac = sub nuw i64 %i.b, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  %i.ae = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 1 %i.ad, i64 noundef %i.ac), !noalias !3706 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 11 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 5 uses
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp ult i64 %i.ac, %i.ah
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.j, !prof !8

.loopexit.i:                                      ; preds = %bb.h, %bb.b
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !3706
  unreachable

_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.i: ; preds = %bb.g
  %.not10.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit.i
  %i.aj = and i64 %i.ah, 3
  switch i64 %i.aj, label %.unreachabledefault [
    i64 2, label %.split.i
    i64 3, label %bb.k
    i64 0, label %.split39.i
    i64 1, label %.split38.i
  ], !prof !19

.unreachabledefault:                              ; preds = %bb.i
  unreachable

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ak = add i64 %i.ab, %i.ah                    ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8, !alias.scope !3706, !noalias !3712
  %i.al = icmp eq ptr %i.ag, null
  br i1 %i.al, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %.backedge.i

.backedge.i:                                      ; preds = %bb.l, %bb.j
  %i.am = phi i64 [ %i.ak, %bb.j ], [ %i.ab, %bb.l ] ; 2 uses
  %.not.i = icmp eq i64 %i.b, %i.am
  br i1 %.not.i, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit, label %bb.g, !llvm.loop !3703

.split.i:                                         ; preds = %bb.i
  %.mask40.i = and i64 %i.ah, -4294967296
  %i.an = icmp eq i64 %.mask40.i, 17179869184
  br i1 %i.an, label %bb.l, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

.split39.i:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !range !20, !noalias !3704, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 35
  br i1 %i.aq, label %bb.l, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

.split38.i:                                       ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %i.ag, i64 15
  %i.as = load i8, ptr %i.ar, align 8, !range !20, !noalias !3704, !noundef !4
  %i.at = icmp eq i8 %i.as, 35
  br i1 %i.at, label %bb.l, label %_ZN3std2io22default_read_buf_exact17h616c0053a0080477E.exit

bb.k:                                             ; preds = %bb.i
  %i.au = icmp ult ptr %i.ag, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.au)
end_hunk_1
begin_hunk_2_@"_ZN4core3num20_$LT$impl$u20$u8$GT$16from_ascii_radix17hd972a7659054ce5bE":bb.a
.loopexit59.split.loop.exit65:                    ; preds = %.lr.ph145, %.lr.ph153
  %.us-phi71 = phi i1 [ %i.aq, %.lr.ph153 ], [ %i.p, %.lr.ph145 ]
  %.mux.le = select i1 %.us-phi71, i8 1, i8 2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58.split.us, %bb.e, %bb.h, %.preheader58.split, %.lr.ph.split.us, %bb.g, %bb.i, %.lr.ph.split, %.preheader58.split.us.preheader, %.preheader58.split.preheader, %.loopexit59.split.loop.exit65, %.preheader, %bb.b, %bb.b, %bb.a
  %.sroa.8.0 = phi i8 [ 0, %bb.a ], [ %.mux.le, %.loopexit59.split.loop.exit65 ], [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %.preheader58.split.us.preheader ], [ 0, %.preheader ], [ 0, %.preheader58.split.preheader ], [ 1, %.lr.ph.split ], [ 1, %.lr.ph.split.us ], [ %i.at, %.preheader58.split ], [ %i.bf, %bb.i ], [ %i.ag, %bb.g ], [ 2, %bb.h ], [ 2, %bb.e ], [ %i.s, %.preheader58.split.us ]
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %.loopexit59.split.loop.exit65 ], [ true, %bb.b ], [ true, %bb.b ], [ false, %.preheader58.split.us.preheader ], [ false, %.preheader ], [ false, %.preheader58.split.preheader ], [ %.not.not158, %bb.i ], [ %i.ab, %.lr.ph.split.us ], [ %.not52, %bb.h ], [ %.not.not158, %.lr.ph.split ], [ %i.ab, %bb.g ], [ %.not52, %.preheader58.split ], [ %.not52.us, %bb.e ], [ %.not52.us, %.preheader58.split.us ]
  %i.a = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %.sroa.8.0, 1
  ret { i1, i8 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !noundef !4
  switch i8 %i.c, label %.lr.ph [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  %cond = icmp eq i8 %.pr, 43
  br i1 %cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = add i64 %1, -1                           ; 3 uses
  %i.f = icmp ult i64 %1, 4
  br i1 %i.f, label %.preheader, label %.preheader58

.preheader58:                                     ; preds = %bb.d, %bb.f
  %.sroa.16.0.ph = phi i64 [ %1, %bb.f ], [ %i.e, %bb.d ] ; 3 uses
  %.sroa.02.0.ph = phi ptr [ %0, %bb.f ], [ %i.d, %bb.d ] ; 2 uses
  %i.g = trunc nuw nsw i32 %2 to i8               ; 2 uses
  %i.h = icmp samesign ugt i32 %2, 10
  %.not.not149 = icmp eq i64 %.sroa.16.0.ph, 0    ; 2 uses
  br i1 %i.h, label %.preheader58.split.preheader, label %.preheader58.split.us.preheader

.preheader58.split.us.preheader:                  ; preds = %.preheader58
  br i1 %.not.not149, label %.loopexit, label %.lr.ph145

.preheader58.split.preheader:                     ; preds = %.preheader58
  br i1 %.not.not149, label %.loopexit, label %.lr.ph153

.preheader58.split.us:                            ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.us144, i64 1
  %i.j = add i64 %.sroa.16.0.us143, -1            ; 2 uses
  %.not.us.not = icmp eq i64 %i.j, 0
  br i1 %.not.us.not, label %.loopexit, label %.lr.ph145

.lr.ph145:                                        ; preds = %.preheader58.split.us.preheader, %.preheader58.split.us
  %.sroa.02.0.us144 = phi ptr [ %i.i, %.preheader58.split.us ], [ %.sroa.02.0.ph, %.preheader58.split.us.preheader ] ; 2 uses
  %.sroa.16.0.us143 = phi i64 [ %i.j, %.preheader58.split.us ], [ %.sroa.16.0.ph, %.preheader58.split.us.preheader ]
  %.sroa.018.0.us142 = phi i8 [ %i.s, %.preheader58.split.us ], [ 0, %.preheader58.split.us.preheader ]
  %i.k = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.018.0.us142, i8 %i.g) ; 2 uses
  %i.l = extractvalue { i8, i1 } %i.k, 1
  %i.m = load i8, ptr %.sroa.02.0.us144, align 1, !noundef !4
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9                     ; 2 uses
  %brmerge.us = select i1 %i.p, i1 true, i1 %i.l
  br i1 %brmerge.us, label %.loopexit59.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %.lr.ph145
  %i.q = extractvalue { i8, i1 } %i.k, 0          ; 2 uses
  %i.r = trunc nuw nsw i32 %i.o to i8
  %i.s = add i8 %i.q, %i.r                        ; 3 uses
  %.not52.us = icmp ult i8 %i.s, %i.q             ; 3 uses
  br i1 %.not52.us, label %.loopexit, label %.preheader58.split.us

.preheader58.split:                               ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0152, i64 1
  %i.u = add i64 %.sroa.16.0151, -1               ; 2 uses
  %.not.not = icmp eq i64 %i.u, 0
  br i1 %.not.not, label %.loopexit, label %.lr.ph153

bb.f:                                             ; preds = %bb.c
  %i.v = icmp ult i64 %1, 3
  br i1 %i.v, label %.lr.ph, label %.preheader58

.preheader:                                       ; preds = %bb.d
  %.not5373 = icmp eq i64 %i.e, 0
  br i1 %.not5373, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f, %.preheader
  %.sroa.02.1.ph114 = phi ptr [ %i.d, %.preheader ], [ %0, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %.sroa.16.1.ph113 = phi i64 [ %i.e, %.preheader ], [ %1, %bb.f ], [ 1, %bb.b ] ; 2 uses
  %i.w = icmp samesign ugt i32 %2, 10
  %i.x = trunc nuw nsw i32 %2 to i8               ; 2 uses
  br i1 %i.w, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.02.176.us = phi ptr [ %i.ae, %bb.g ], [ %.sroa.02.1.ph114, %.lr.ph ] ; 2 uses
  %.sroa.16.175.us = phi i64 [ %i.ad, %bb.g ], [ %.sroa.16.1.ph113, %.lr.ph ]
  %.sroa.018.174.us = phi i8 [ %i.ag, %bb.g ], [ 0, %.lr.ph ]
  %i.y = load i8, ptr %.sroa.02.176.us, align 1, !noundef !4
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 9                   ; 3 uses
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ac = mul i8 %.sroa.018.174.us, %i.x
  %i.ad = add nsw i64 %.sroa.16.175.us, -1        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.176.us, i64 1
  %i.af = trunc nuw nsw i32 %i.aa to i8
  %i.ag = add i8 %i.ac, %i.af                     ; 2 uses
  %.not53.us = icmp eq i64 %i.ad, 0
  br i1 %.not53.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph153:                                        ; preds = %.preheader58.split.preheader, %.preheader58.split
  %.sroa.02.0152 = phi ptr [ %i.t, %.preheader58.split ], [ %.sroa.02.0.ph, %.preheader58.split.preheader ] ; 2 uses
  %.sroa.16.0151 = phi i64 [ %i.u, %.preheader58.split ], [ %.sroa.16.0.ph, %.preheader58.split.preheader ]
  %.sroa.018.0150 = phi i8 [ %i.at, %.preheader58.split ], [ 0, %.preheader58.split.preheader ]
  %i.ah = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.018.0150, i8 %i.g) ; 2 uses
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  %i.aj = load i8, ptr %.sroa.02.0152, align 1, !noundef !4 ; 2 uses
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 57
  %i.am = add nsw i32 %i.ak, -65
  %i.an = and i32 %i.am, -33
  %i.ao = add nuw nsw i32 %i.an, 10
  %i.ap = add nsw i32 %i.ak, -48
  %spec.select = select i1 %i.al, i32 %i.ao, i32 %i.ap ; 2 uses
  %i.aq = icmp uge i32 %spec.select, %2           ; 2 uses
  %brmerge = select i1 %i.aq, i1 true, i1 %i.ai
  br i1 %brmerge, label %.loopexit59.split.loop.exit65, label %bb.h

bb.h:                                             ; preds = %.lr.ph153
  %i.ar = extractvalue { i8, i1 } %i.ah, 0        ; 2 uses
  %i.as = trunc nuw nsw i32 %spec.select to i8
  %i.at = add i8 %i.ar, %i.as                     ; 3 uses
  %.not52 = icmp ult i8 %i.at, %i.ar              ; 3 uses
  br i1 %.not52, label %.loopexit, label %.preheader58.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.02.176 = phi ptr [ %i.bd, %bb.i ], [ %.sroa.02.1.ph114, %.lr.ph ] ; 2 uses
  %.sroa.16.175 = phi i64 [ %i.bc, %bb.i ], [ %.sroa.16.1.ph113, %.lr.ph ]
  %.sroa.018.174 = phi i8 [ %i.bf, %bb.i ], [ 0, %.lr.ph ]
  %i.au = load i8, ptr %.sroa.02.176, align 1, !noundef !4 ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp ugt i8 %i.au, 57
  %i.ax = add nsw i32 %i.av, -65
  %i.ay = and i32 %i.ax, -33
  %i.az = add nuw nsw i32 %i.ay, 10
  %i.ba = add nsw i32 %i.av, -48
  %spec.select87 = select i1 %i.aw, i32 %i.az, i32 %i.ba ; 2 uses
  %.not.not158 = icmp uge i32 %spec.select87, %2  ; 3 uses
  br i1 %.not.not158, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bb = mul i8 %.sroa.018.174, %i.x
  %i.bc = add nsw i64 %.sroa.16.175, -1           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.176, i64 1
  %i.be = trunc nuw nsw i32 %spec.select87 to i8
  %i.bf = add i8 %i.bb, %i.be                     ; 2 uses
  %.not53 = icmp eq i64 %i.bc, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph.split
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -4294967295) i64 @"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.c, %bb.c, %bb.a, %.loopexit101, %.loopexit
  %.sroa.12.0.insert.insert = phi i64 [ 1, %bb.a ], [ %i.z, %.loopexit101 ], [ %i.p, %.loopexit ], [ 257, %bb.c ], [ 257, %bb.c ]
  ret i64 %.sroa.12.0.insert.insert

bb.c:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  switch i8 %i.a, label %bb.d [
    i8 43, label %bb.b
    i8 45, label %bb.b
  ]

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.c
  %i.b = phi i8 [ %.pr, %thread-pre-split ], [ %i.a, %bb.c ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = add i64 %1, -1                           ; 3 uses
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.preheader, label %.preheader102

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = add i64 %1, -1                           ; 3 uses
  %i.h = icmp ult i64 %1, 9
  %.not91118 = icmp eq i64 %i.g, 0                ; 2 uses
  br i1 %i.h, label %.preheader105, label %.preheader108.preheader

.preheader108.preheader:                          ; preds = %bb.f
  br i1 %.not91118, label %.loopexit, label %.lr.ph20

.preheader105:                                    ; preds = %bb.f
  br i1 %.not91118, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.k
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.024, i64 1
  %i.j = add i64 %.sroa.27.023, -1                ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.aq, 0        ; 2 uses
  %.not92 = icmp eq i64 %i.j, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph25

.preheader108:                                    ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.219, i64 1
  %i.m = add i64 %.sroa.27.218, -1                ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.x, 0         ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph20

.loopexit:                                        ; preds = %.preheader108, %bb.i, %bb.g, %bb.l, %.preheader108.preheader, %.preheader102, %.preheader105, %.preheader
  %.sroa.033.3 = phi i32 [ %i.ah, %bb.i ], [ %i.az, %bb.l ], [ %i.k, %bb.g ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader102 ], [ 0, %.preheader108.preheader ], [ %i.n, %.preheader108 ]
  %i.o = zext i32 %.sroa.033.3 to i64
  %i.p = shl nuw i64 %i.o, 32
  br label %bb.b

.lr.ph20:                                         ; preds = %.preheader108.preheader, %.preheader108
  %.sroa.03.219 = phi ptr [ %i.l, %.preheader108 ], [ %i.f, %.preheader108.preheader ] ; 2 uses
  %.sroa.27.218 = phi i64 [ %i.m, %.preheader108 ], [ %i.g, %.preheader108.preheader ]
  %.sroa.033.217 = phi i32 [ %i.n, %.preheader108 ], [ 0, %.preheader108.preheader ]
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.217, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.03.219, align 1, !noundef !4
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ugt i32 %i.u, 9                     ; 2 uses
  %brmerge = select i1 %i.v, i1 true, i1 %i.r
  br i1 %brmerge, label %.loopexit110.split.loop.exit116, label %bb.h

bb.h:                                             ; preds = %.lr.ph20
  %i.w = extractvalue { i32, i1 } %i.q, 0
  %i.x = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.w, i32 %i.u) ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit101, label %.preheader108

.loopexit104.split.loop.exit122:                  ; preds = %.lr.ph25
  %.mux97.le = select i1 %i.ao, i64 256, i64 512
  br label %.loopexit101

.loopexit110.split.loop.exit116:                  ; preds = %.lr.ph20
  %.mux.le = select i1 %i.v, i64 256, i64 768
  br label %.loopexit101

.loopexit101:                                     ; preds = %bb.h, %.lr.ph, %bb.k, %.lr.ph129, %.loopexit110.split.loop.exit116, %.loopexit104.split.loop.exit122
  %.sroa.12.2 = phi i64 [ 256, %.lr.ph129 ], [ 512, %bb.k ], [ 256, %.lr.ph ], [ %.mux97.le, %.loopexit104.split.loop.exit122 ], [ %.mux.le, %.loopexit110.split.loop.exit116 ], [ 768, %bb.h ]
  %i.z = or disjoint i64 %.sroa.12.2, 1
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader105, %bb.i
  %.sroa.03.3121 = phi ptr [ %i.ag, %bb.i ], [ %i.f, %.preheader105 ] ; 2 uses
  %.sroa.27.3120 = phi i64 [ %i.af, %bb.i ], [ %i.g, %.preheader105 ]
  %.sroa.033.4119 = phi i32 [ %i.ah, %bb.i ], [ 0, %.preheader105 ]
  %i.aa = load i8, ptr %.sroa.03.3121, align 1, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.i, label %.loopexit101

bb.i:                                             ; preds = %.lr.ph
  %i.ae = mul i32 %.sroa.033.4119, 10
  %i.af = add nsw i64 %.sroa.27.3120, -1          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.3121, i64 1
  %i.ah = sub i32 %i.ae, %i.ac                    ; 2 uses
  %.not91 = icmp eq i64 %i.af, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.d
  %i.ai = icmp ult i64 %1, 8
  br i1 %i.ai, label %.lr.ph129.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.e, %bb.j
  %.sroa.27.0.ph = phi i64 [ %1, %bb.j ], [ %i.d, %bb.e ] ; 2 uses
  %.sroa.03.0.ph = phi ptr [ %0, %bb.j ], [ %i.c, %bb.e ]
  %.not9221 = icmp eq i64 %.sroa.27.0.ph, 0
  br i1 %.not9221, label %.loopexit, label %.lr.ph25

.preheader:                                       ; preds = %bb.e
  %.not93125 = icmp eq i64 %i.d, 0
  br i1 %.not93125, label %.loopexit, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %bb.j, %.preheader
  %.sroa.03.1128.ph = phi ptr [ %0, %bb.j ], [ %i.c, %.preheader ]
  %.sroa.27.1127.ph = phi i64 [ %1, %bb.j ], [ %i.d, %.preheader ]
  br label %.lr.ph129

.lr.ph25:                                         ; preds = %.preheader102, %bb.g
  %.sroa.03.024 = phi ptr [ %i.i, %bb.g ], [ %.sroa.03.0.ph, %.preheader102 ] ; 2 uses
  %.sroa.27.023 = phi i64 [ %i.j, %bb.g ], [ %.sroa.27.0.ph, %.preheader102 ]
  %.sroa.033.022 = phi i32 [ %i.k, %bb.g ], [ 0, %.preheader102 ]
  %i.aj = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.022, i32 10) ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = load i8, ptr %.sroa.03.024, align 1, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 9                   ; 2 uses
  %brmerge96 = select i1 %i.ao, i1 true, i1 %i.ak
  br i1 %brmerge96, label %.loopexit104.split.loop.exit122, label %bb.k

bb.k:                                             ; preds = %.lr.ph25
  %i.ap = extractvalue { i32, i1 } %i.aj, 0
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit101, label %bb.g

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.l
  %.sroa.03.1128 = phi ptr [ %i.ay, %bb.l ], [ %.sroa.03.1128.ph, %.lr.ph129.preheader ] ; 2 uses
  %.sroa.27.1127 = phi i64 [ %i.ax, %bb.l ], [ %.sroa.27.1127.ph, %.lr.ph129.preheader ]
  %.sroa.033.1126 = phi i32 [ %i.az, %bb.l ], [ 0, %.lr.ph129.preheader ]
  %i.as = load i8, ptr %.sroa.03.1128, align 1, !noundef !4
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.l, label %.loopexit101

bb.l:                                             ; preds = %.lr.ph129
  %i.aw = mul i32 %.sroa.033.1126, 10
  %i.ax = add nsw i64 %.sroa.27.1127, -1          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.1128, i64 1
  %i.az = add i32 %i.au, %i.aw                    ; 2 uses
  %.not93 = icmp eq i64 %i.ax, 0
  br i1 %.not93, label %.loopexit, label %.lr.ph129
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.s, %bb.u, %bb.v, %bb.p, %bb.x, %bb.n, %bb.m, %bb.k, %.loopexit, %bb.e, %bb.b
  %.sink = phi i8 [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.p ], [ 1, %bb.x ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.k ], [ 0, %.loopexit ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %1, align 1
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.d ]
  switch i8 %i.d, label %bb.q [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = add i64 %2, -1                           ; 3 uses
  %i.g = icmp ult i64 %2, 17
  br i1 %i.g, label %.preheader, label %.preheader95

bb.h:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.i = add i64 %2, -1                           ; 3 uses
  %i.j = icmp ult i64 %2, 17
  %.not89109 = icmp eq i64 %i.i, 0                ; 2 uses
  br i1 %i.j, label %.preheader97, label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %bb.h
  br i1 %.not89109, label %.loopexit, label %.lr.ph15

.preheader97:                                     ; preds = %bb.h
  br i1 %.not89109, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %bb.t
  %i.k = extractvalue { i64, i1 } %i.ay, 0        ; 2 uses
  %.not90 = icmp eq i64 %i.ao, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph20

.preheader99:                                     ; preds = %bb.l
  %i.l = extractvalue { i64, i1 } %i.y, 0         ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph15

.loopexit:                                        ; preds = %.preheader99, %bb.o, %bb.i, %bb.w, %.preheader99.preheader, %.preheader95, %.preheader97, %.preheader
  %.sroa.031.3 = phi i64 [ %i.ak, %bb.o ], [ %i.bk, %bb.w ], [ %i.k, %bb.i ], [ 0, %.preheader ], [ 0, %.preheader97 ], [ 0, %.preheader95 ], [ 0, %.preheader99.preheader ], [ %i.l, %.preheader99 ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.031.3, ptr %i.m, align 8
  br label %bb.c

.lr.ph15:                                         ; preds = %.preheader99.preheader, %.preheader99
  %.sroa.01.214 = phi ptr [ %i.n, %.preheader99 ], [ %i.h, %.preheader99.preheader ] ; 2 uses
  %.sroa.27.213 = phi i64 [ %i.o, %.preheader99 ], [ %i.i, %.preheader99.preheader ]
  %.sroa.031.212 = phi i64 [ %i.l, %.preheader99 ], [ 0, %.preheader99.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.214, i64 1
  %i.o = add i64 %.sroa.27.213, -1                ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.212, i64 10) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 0
  %i.r = load i8, ptr %.sroa.01.214, align 1, !noundef !4
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -48                    ; 2 uses
  %i.u = icmp ult i32 %i.t, 10
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph15
  %i.v = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.v, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.lr.ph15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %i.t to i64
  %i.y = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.q, i64 %i.x) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.n, label %.preheader99

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.aa, align 1
  br label %bb.c

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ab, align 1
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader97, %bb.o
  %.sroa.01.3112 = phi ptr [ %i.ai, %bb.o ], [ %i.h, %.preheader97 ] ; 2 uses
  %.sroa.27.3111 = phi i64 [ %i.ah, %bb.o ], [ %i.i, %.preheader97 ]
  %.sroa.031.4110 = phi i64 [ %i.ak, %bb.o ], [ 0, %.preheader97 ]
  %i.ac = load i8, ptr %.sroa.01.3112, align 1, !noundef !4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ag = mul i64 %.sroa.031.4110, 10
  %i.ah = add nsw i64 %.sroa.27.3111, -1          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.3112, i64 1
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = sub i64 %i.ag, %i.aj                    ; 2 uses
  %.not89 = icmp eq i64 %i.ah, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.c

bb.q:                                             ; preds = %bb.f
  %i.am = icmp ult i64 %2, 16
  br i1 %i.am, label %.lr.ph117.preheader, label %.preheader95

.preheader95:                                     ; preds = %bb.g, %bb.q
  %.sroa.27.0.ph = phi i64 [ %2, %bb.q ], [ %i.f, %bb.g ] ; 2 uses
  %.sroa.01.0.ph = phi ptr [ %1, %bb.q ], [ %i.e, %bb.g ]
  %.not9016 = icmp eq i64 %.sroa.27.0.ph, 0
  br i1 %.not9016, label %.loopexit, label %.lr.ph20

.preheader:                                       ; preds = %bb.g
  %.not91113 = icmp eq i64 %i.f, 0
  br i1 %.not91113, label %.loopexit, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.q, %.preheader
  %.sroa.01.1116.ph = phi ptr [ %1, %bb.q ], [ %i.e, %.preheader ]
  %.sroa.27.1115.ph = phi i64 [ %2, %bb.q ], [ %i.f, %.preheader ]
  br label %.lr.ph117

.lr.ph20:                                         ; preds = %.preheader95, %bb.i
  %.sroa.01.019 = phi ptr [ %i.an, %bb.i ], [ %.sroa.01.0.ph, %.preheader95 ] ; 2 uses
  %.sroa.27.018 = phi i64 [ %i.ao, %bb.i ], [ %.sroa.27.0.ph, %.preheader95 ]
  %.sroa.031.017 = phi i64 [ %i.k, %bb.i ], [ 0, %.preheader95 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.019, i64 1
  %i.ao = add i64 %.sroa.27.018, -1               ; 2 uses
  %i.ap = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.017, i64 10) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 0
  %i.ar = load i8, ptr %.sroa.01.019, align 1, !noundef !4
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph20
  %i.av = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.av, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aw, align 1
  br label %bb.c

bb.t:                                             ; preds = %bb.r
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aq, i64 %i.ax) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %bb.v, label %bb.i

bb.u:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ba, align 1
  br label %bb.c

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bb, align 1
  br label %bb.c

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.w
  %.sroa.01.1116 = phi ptr [ %i.bi, %bb.w ], [ %.sroa.01.1116.ph, %.lr.ph117.preheader ] ; 2 uses
  %.sroa.27.1115 = phi i64 [ %i.bh, %bb.w ], [ %.sroa.27.1115.ph, %.lr.ph117.preheader ]
  %.sroa.031.1114 = phi i64 [ %i.bk, %bb.w ], [ 0, %.lr.ph117.preheader ]
  %i.bc = load i8, ptr %.sroa.01.1116, align 1, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph117
  %i.bg = mul i64 %.sroa.031.1114, 10
  %i.bh = add nsw i64 %.sroa.27.1115, -1          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.1116, i64 1
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = add i64 %i.bg, %i.bj                    ; 2 uses
  %.not91 = icmp eq i64 %i.bh, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph117

bb.x:                                             ; preds = %.lr.ph117
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bl, align 1
  br label %bb.c
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -4294967295) i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef range(i32 8, 17) %2) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %.loopexit74
    i64 1, label %bb.b
  ]

.loopexit74:                                      ; preds = %bb.f, %bb.e, %bb.i, %bb.j, %.lr.ph.split.us, %.lr.ph.split, %.split.us, %bb.b, %bb.b, %bb.a, %.loopexit
  %.sroa.8.0.insert.insert = phi i64 [ 1, %bb.a ], [ 257, %bb.b ], [ %i.aa, %.loopexit ], [ 257, %bb.b ], [ 257, %.lr.ph.split ], [ %spec.select, %.split.us ], [ 257, %.lr.ph.split.us ], [ 513, %bb.j ], [ 257, %bb.i ], [ 257, %bb.e ], [ 513, %bb.f ]
  ret i64 %.sroa.8.0.insert.insert

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !4
  switch i8 %i.a, label %.lr.ph [
    i8 43, label %.loopexit74
    i8 45, label %.loopexit74
  ]

bb.c:                                             ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  %cond = icmp eq i8 %.pr, 43
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = add i64 %1, -1                           ; 3 uses
  %i.d = icmp ult i64 %1, 10
  br i1 %i.d, label %.preheader, label %.preheader75

.preheader75:                                     ; preds = %bb.d, %bb.g
  %.sroa.16.0.ph = phi i64 [ %1, %bb.g ], [ %i.c, %bb.d ] ; 3 uses
  %.sroa.03.0.ph = phi ptr [ %0, %bb.g ], [ %i.b, %bb.d ] ; 2 uses
  %i.e = icmp samesign ugt i32 %2, 10             ; 2 uses
  %.not169 = icmp eq i64 %.sroa.16.0.ph, 0        ; 2 uses
  br i1 %i.e, label %.preheader75.split.preheader, label %.preheader75.split.us.preheader

.preheader75.split.us.preheader:                  ; preds = %.preheader75
  br i1 %.not169, label %.loopexit, label %.lr.ph168

.preheader75.split.preheader:                     ; preds = %.preheader75
  br i1 %.not169, label %.loopexit, label %.lr.ph173

.preheader75.split.us:                            ; preds = %bb.f
  %.not.us = icmp eq i64 %i.g, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader75.split.us.preheader, %.preheader75.split.us
  %.sroa.03.0.us167 = phi ptr [ %i.f, %.preheader75.split.us ], [ %.sroa.03.0.ph, %.preheader75.split.us.preheader ] ; 3 uses
  %.sroa.16.0.us166 = phi i64 [ %i.g, %.preheader75.split.us ], [ %.sroa.16.0.ph, %.preheader75.split.us.preheader ]
  %.sroa.019.0.us165 = phi i32 [ %i.o, %.preheader75.split.us ], [ 0, %.preheader75.split.us.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us167, i64 1
  %i.g = add i64 %.sroa.16.0.us166, -1            ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us165, i32 %2) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 0         ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.j, label %.split.us, label %bb.e, !prof !8

end_hunk_2
begin_hunk_3_@_ZN6procfs3sys6kernel7Version8from_str17heaad3975f37f1033E:bb.a
.preheader59.i:                                   ; preds = %bb.aj, %bb.ah
  %.sroa.16.0.ph.i183 = phi i64 [ %.sroa.4.1.i134, %bb.aj ], [ %i.fe, %bb.ah ] ; 2 uses
  %.sroa.02.0.ph.i184 = phi ptr [ %.sroa.0.1.i135, %bb.aj ], [ %i.fd, %bb.ah ]
  %.not.us.i443 = icmp eq i64 %.sroa.16.0.ph.i183, 0
  br i1 %.not.us.i443, label %.loopexit.i, label %.lr.ph447

.preheader59.split.us.i:                          ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.us.i187446, i64 1
  %i.fh = add i64 %.sroa.16.0.us.i186445, -1      ; 2 uses
  %.not.us.i = icmp eq i64 %i.fh, 0
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph447

.lr.ph447:                                        ; preds = %.preheader59.i, %.preheader59.split.us.i
  %.sroa.02.0.us.i187446 = phi ptr [ %i.fg, %.preheader59.split.us.i ], [ %.sroa.02.0.ph.i184, %.preheader59.i ] ; 2 uses
  %.sroa.16.0.us.i186445 = phi i64 [ %i.fh, %.preheader59.split.us.i ], [ %.sroa.16.0.ph.i183, %.preheader59.i ]
  %.sroa.018.0.us.i185444 = phi i16 [ %i.fq, %.preheader59.split.us.i ], [ 0, %.preheader59.i ]
  %i.fi = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.018.0.us.i185444, i16 10) ; 2 uses
  %i.fj = extractvalue { i16, i1 } %i.fi, 1
  %i.fk = load i8, ptr %.sroa.02.0.us.i187446, align 1, !alias.scope !16784, !noundef !4
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add nsw i32 %i.fl, -48                  ; 2 uses
  %i.fn = icmp ugt i32 %i.fm, 9                   ; 2 uses
  %brmerge.us.i188 = or i1 %i.fj, %i.fn
  br i1 %brmerge.us.i188, label %.loopexit61.split.loop.exit64.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph447
  %i.fo = extractvalue { i16, i1 } %i.fi, 0       ; 2 uses
  %i.fp = trunc nuw nsw i32 %i.fm to i16
  %i.fq = add i16 %i.fo, %i.fp                    ; 3 uses
  %.not52.us.i189 = icmp ult i16 %i.fq, %i.fo
  br i1 %.not52.us.i189, label %.loopexit59.split.loop.exit65.i, label %.preheader59.split.us.i

bb.aj:                                            ; preds = %bb.ag
  %i.fr = icmp ult i64 %.sroa.4.1.i134, 5
  br i1 %i.fr, label %.lr.ph.split.us.i179.preheader, label %.preheader59.i

.lr.ph.split.us.i179.preheader:                   ; preds = %bb.ah, %bb.aj, %bb.af
  %.sroa.02.171.us.i.ph = phi ptr [ %i.fd, %bb.ah ], [ %.sroa.0.1.i135, %bb.aj ], [ %.sroa.0.1.i135, %bb.af ]
  %.sroa.16.170.us.i.ph = phi i64 [ %i.fe, %bb.ah ], [ %.sroa.4.1.i134, %bb.aj ], [ 1, %bb.af ]
  br label %.lr.ph.split.us.i179

.lr.ph.split.us.i179:                             ; preds = %.lr.ph.split.us.i179.preheader, %bb.ak
  %.sroa.02.171.us.i = phi ptr [ %i.fy, %bb.ak ], [ %.sroa.02.171.us.i.ph, %.lr.ph.split.us.i179.preheader ] ; 2 uses
  %.sroa.16.170.us.i = phi i64 [ %i.fx, %bb.ak ], [ %.sroa.16.170.us.i.ph, %.lr.ph.split.us.i179.preheader ]
  %.sroa.018.169.us.i = phi i16 [ %i.ga, %bb.ak ], [ 0, %.lr.ph.split.us.i179.preheader ]
  %i.fs = load i8, ptr %.sroa.02.171.us.i, align 1, !alias.scope !16784, !noundef !4
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.ft, -48                  ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 10
  br i1 %i.fv, label %bb.ak, label %.loopexit59.split.loop.exit65.i

bb.ak:                                            ; preds = %.lr.ph.split.us.i179
  %i.fw = mul i16 %.sroa.018.169.us.i, 10
  %i.fx = add nsw i64 %.sroa.16.170.us.i, -1      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.02.171.us.i, i64 1
  %i.fz = trunc nuw nsw i32 %i.fu to i16
  %i.ga = add i16 %i.fw, %i.fz                    ; 2 uses
  %.not53.us.i180 = icmp eq i64 %i.fx, 0
  br i1 %.not53.us.i180, label %.loopexit.i, label %.lr.ph.split.us.i179

.loopexit.i:                                      ; preds = %.preheader59.split.us.i, %bb.ak, %.preheader59.i
  %.sroa.018.2.i = phi i16 [ %i.ga, %bb.ak ], [ 0, %.preheader59.i ], [ %i.fq, %.preheader59.split.us.i ]
  %i.gb = zext i16 %.sroa.018.2.i to i32
  %i.gc = shl nuw i32 %i.gb, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit": ; preds = %.loopexit61.split.loop.exit64.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %i.gc, %.loopexit.i ], [ %.mux.le.i190, %.loopexit61.split.loop.exit64.i ] ; 2 uses
  %i.gd = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.gd, label %.loopexit59.split.loop.exit65.i, label %bb.al

bb.al:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.581.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16
  %.sroa.766.8.extract.trunc = trunc nuw i32 %.sroa.581.0.extract.shift to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.766.8.extract.trunc, ptr %i.ge, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.8.0.i149, ptr %.sroa.472.0..sroa_idx, align 2
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.8.0.i151, ptr %.sroa.573.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit59.split.loop.exit65.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3sys6kernel7pid_max17h201cce11e9b32dceE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16801
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16802
  call void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @607, i64 noundef 24), !noalias !16803
  %i.h = load i64, ptr %i.d, align 8, !range !10, !noalias !16802, !noundef !4
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %bb.b, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16802
  br label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !16802, !nonnull !4, !noundef !4
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.k), !noalias !16803
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !16802 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16802
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775803
  br i1 %.not.i.i, label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i, label %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i

_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i: ; preds = %bb.b, %.thread.i.i
  %.sroa.7.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16801
  br label %bb.d

_ZN6procfs9read_file17hd683a0ca57460019E.exit.i:  ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !noalias !16802
  %.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16802
  %.sroa.8.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !16802
  call void @"_ZN68_$LT$procfs_core..ProcError$u20$as$u20$procfs_core..ProcErrorExt$GT$10error_path17h863f75f158574cc8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @607, i64 noundef 24), !noalias !16801
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !16801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16801
  %.not.i = icmp eq i64 %.pr.i, -9223372036854775803
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %_ZN6procfs10read_value17h359cac4462293726E.exit

bb.d:                                             ; preds = %_ZN6procfs9read_file17hd683a0ca57460019E.exit.i, %_ZN6procfs9read_file17hd683a0ca57460019E.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !16801 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16801, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !16801
  call void @llvm.experimental.noalias.scope.decl(metadata !16805)
  %i.m = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.52.0.copyload.i), !noalias !16806 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 6 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 8 uses
  switch i64 %i.o, label %thread-pre-split.i.i.i.i [
    i64 0, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i"
    i64 1, label %bb.g
  ]

bb.e:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i"
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.01.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !16807
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i"

bb.g:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.n, align 1, !alias.scope !16808, !noalias !16806, !noundef !4 ; 2 uses
  switch i8 %i.r, label %bb.h [
    i8 43, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i"
    i8 45, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i"
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.d
  %.pr.i.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !16808, !noalias !16806
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i.i.i.i, %bb.g
  %i.s = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.r, %bb.g ]
  switch i8 %i.s, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.u = add i64 %i.o, -1                         ; 3 uses
  %i.v = icmp ult i64 %i.o, 9
  br i1 %i.v, label %.preheader.i.i.i.i, label %.preheader102.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.x = add i64 %i.o, -1                         ; 3 uses
  %i.y = icmp ult i64 %i.o, 9
  %.not91118.i.i.i.i = icmp eq i64 %i.x, 0        ; 2 uses
  br i1 %i.y, label %.preheader105.i.i.i.i, label %.preheader108.i.i.i.i.preheader

.preheader108.i.i.i.i.preheader:                  ; preds = %bb.j
  br i1 %.not91118.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.a

.preheader105.i.i.i.i:                            ; preds = %bb.j
  br i1 %.not91118.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i76, i64 1
  %i.aa = add i64 %.sroa.27.0.i.i.i.i75, -1       ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.bh, 0       ; 2 uses
  %.not92.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not92.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph77

.preheader108.i.i.i.i:                            ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i72, i64 1
  %i.ad = add i64 %.sroa.27.2.i.i.i.i71, -1       ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ao, 0       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.a

.loopexit.i.i.i.i:                                ; preds = %.preheader108.i.i.i.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.i.i.i.preheader, %.preheader102.i.i.i.i, %.preheader.i.i.i.i, %.preheader105.i.i.i.i
  %.sroa.033.3.i.i.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.bq, %bb.p ], [ %i.ab, %bb.k ], [ 0, %.preheader.i.i.i.i ], [ 0, %.preheader105.i.i.i.i ], [ 0, %.preheader102.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ], [ %i.ae, %.preheader108.i.i.i.i ]
  %i.af = zext i32 %.sroa.033.3.i.i.i.i to i64
  %i.ag = shl nuw i64 %i.af, 32
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i"

.lr.ph.a:                                         ; preds = %.preheader108.i.i.i.i.preheader, %.preheader108.i.i.i.i
  %.sroa.03.2.i.i.i.i72 = phi ptr [ %i.ac, %.preheader108.i.i.i.i ], [ %i.w, %.preheader108.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i71 = phi i64 [ %i.ad, %.preheader108.i.i.i.i ], [ %i.x, %.preheader108.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i70 = phi i32 [ %i.ae, %.preheader108.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ]
  %i.ah = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i70, i32 10) ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  %i.aj = load i8, ptr %.sroa.03.2.i.i.i.i72, align 1, !alias.scope !16808, !noalias !16806, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ugt i32 %i.al, 9                   ; 2 uses
  %brmerge.i.i.i.i = select i1 %i.am, i1 true, i1 %i.ai
  br i1 %brmerge.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.a
  %i.an = extractvalue { i32, i1 } %i.ah, 0
  %i.ao = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.an, i32 %i.al) ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  br i1 %i.ap, label %.loopexit101.i.i.i.i, label %.preheader108.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i:          ; preds = %.lr.ph77
  %.mux97.le.i.i.i.i = select i1 %i.bf, i64 256, i64 512
  br label %.loopexit101.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i:          ; preds = %.lr.ph.a
  %.mux.le.i.i.i.i = select i1 %i.am, i64 256, i64 768
  br label %.loopexit101.i.i.i.i

.loopexit101.i.i.i.i:                             ; preds = %bb.l, %.lr.ph.i.i.i.i, %bb.o, %.lr.ph129.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i
  %.sroa.12.2.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i.i.i.i ], [ %.mux97.le.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i ], [ %.mux.le.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i ], [ 768, %bb.l ]
  %i.aq = or disjoint i64 %.sroa.12.2.i.i.i.i, 1
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %.preheader105.i.i.i.i, %bb.m
  %.sroa.03.3121.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %i.w, %.preheader105.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i = phi i64 [ %i.aw, %bb.m ], [ %i.x, %.preheader105.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i = phi i32 [ %i.ay, %bb.m ], [ 0, %.preheader105.i.i.i.i ]
  %i.ar = load i8, ptr %.sroa.03.3121.i.i.i.i, align 1, !alias.scope !16808, !noalias !16806, !noundef !4
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %bb.m, label %.loopexit101.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = mul i32 %.sroa.033.4119.i.i.i.i, 10
  %i.aw = add nsw i64 %.sroa.27.3120.i.i.i.i, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i, i64 1
  %i.ay = sub i32 %i.av, %i.at                    ; 2 uses
  %.not91.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not91.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.h
  %i.az = icmp ult i64 %i.o, 8
  br i1 %i.az, label %.lr.ph129.i.i.i.i.preheader, label %.preheader102.i.i.i.i

.lr.ph129.i.i.i.i.preheader:                      ; preds = %.preheader.i.i.i.i, %bb.n
  %.sroa.03.1128.i.i.i.i.ph = phi ptr [ %i.n, %bb.n ], [ %i.t, %.preheader.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.ph = phi i64 [ %i.o, %bb.n ], [ %i.u, %.preheader.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i

.preheader102.i.i.i.i:                            ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i.i.i.i = phi i64 [ %i.o, %bb.n ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i = phi ptr [ %i.n, %bb.n ], [ %i.t, %bb.i ]
  %.not92.i.i.i.i73 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i, 0
  br i1 %.not92.i.i.i.i73, label %.loopexit.i.i.i.i, label %.lr.ph77

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not93125.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not93125.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph129.i.i.i.i.preheader

.lr.ph77:                                         ; preds = %.preheader102.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i76 = phi ptr [ %i.z, %bb.k ], [ %.sroa.03.0.ph.i.i.i.i, %.preheader102.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i75 = phi i64 [ %i.aa, %bb.k ], [ %.sroa.27.0.ph.i.i.i.i, %.preheader102.i.i.i.i ]
  %.sroa.033.0.i.i.i.i74 = phi i32 [ %i.ab, %bb.k ], [ 0, %.preheader102.i.i.i.i ]
  %i.ba = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i74, i32 10) ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 1
  %i.bc = load i8, ptr %.sroa.03.0.i.i.i.i76, align 1, !alias.scope !16808, !noalias !16806, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 9                   ; 2 uses
  %brmerge96.i.i.i.i = select i1 %i.bf, i1 true, i1 %i.bb
  br i1 %brmerge96.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph77
  %i.bg = extractvalue { i32, i1 } %i.ba, 0
  %i.bh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 %i.be) ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %.loopexit101.i.i.i.i, label %bb.k

.lr.ph129.i.i.i.i:                                ; preds = %.lr.ph129.i.i.i.i.preheader, %bb.p
  %.sroa.03.1128.i.i.i.i = phi ptr [ %i.bp, %bb.p ], [ %.sroa.03.1128.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i = phi i64 [ %i.bo, %bb.p ], [ %.sroa.27.1127.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ 0, %.lr.ph129.i.i.i.i.preheader ]
  %i.bj = load i8, ptr %.sroa.03.1128.i.i.i.i, align 1, !alias.scope !16808, !noalias !16806, !noundef !4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.p, label %.loopexit101.i.i.i.i

bb.p:                                             ; preds = %.lr.ph129.i.i.i.i
  %i.bn = mul i32 %.sroa.033.1126.i.i.i.i, 10
  %i.bo = add nsw i64 %.sroa.27.1127.i.i.i.i, -1  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i, i64 1
  %i.bq = add i32 %i.bl, %i.bn                    ; 2 uses
  %.not93.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not93.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph129.i.i.i.i

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i": ; preds = %.loopexit101.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i = phi i64 [ %i.ag, %.loopexit.i.i.i.i ], [ %i.aq, %.loopexit101.i.i.i.i ] ; 3 uses
  %i.br = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i to i1
  br i1 %i.br, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i", label %bb.q

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i": ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i", %bb.g, %bb.g, %bb.d
  %.sroa.12.0.insert.insert.i.i12.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i" ], [ 257, %bb.g ], [ 257, %bb.g ], [ 1, %bb.d ]
  %.sroa.45.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i12.i.i, 8
  %.sroa.45.0.extract.trunc.i.i = trunc i64 %.sroa.45.0.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16806
  invoke void @"_ZN101_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$core..num..error..ParseIntError$GT$$GT$4from17hef32ae14769ff118E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i8 noundef %.sroa.45.0.extract.trunc.i.i)
          to label %bb.t unwind label %bb.e, !noalias !16806

bb.q:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.i.i"
  %.sroa.67.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i, 32
  %.sroa.67.0.extract.trunc.i.i = trunc nuw i64 %.sroa.67.0.extract.shift.i.i to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.67.0.extract.trunc.i.i, ptr %i.bs, align 8, !alias.scope !16809, !noalias !16810
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !16809, !noalias !16810
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.bt = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %i.bt, label %_ZN6procfs10read_value17h359cac4462293726E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.01.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !16811
  br label %_ZN6procfs10read_value17h359cac4462293726E.exit

bb.t:                                             ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2c60b9a6d2c4efc2E.exit.thread.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !16810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16806
  br label %bb.r

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_ZN6procfs10read_value17h359cac4462293726E.exit:  ; preds = %bb.c, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16801
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs3sys6kernel9BuildInfo14version_number17h68b2de85b72cd858E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 4 uses
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit
  %i.i = phi ptr [ %i.cb, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.j = phi i64 [ %i.cg, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.0.039 = phi ptr [ %.sroa.0.1.ph, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit ], [ %i.d, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 1 ; 3 uses
  %i.l = load i8, ptr %.sroa.0.039, align 1, !noalias !16826, !noundef !4 ; 5 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i": ; preds = %.lr.ph
  %i.n = and i8 %i.l, 31
  %i.o = zext nneg i8 %i.n to i32                 ; 3 uses
  %i.p = icmp ne ptr %i.k, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 2 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !noalias !16826, !noundef !4
  %i.s = shl nuw nsw i32 %i.o, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = icmp samesign ugt i8 %i.l, -33
  br i1 %i.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i", label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.x = zext nneg i8 %i.l to i32
  br label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4ace3d5b33ad209E.exit12.i"
  %i.y = icmp ne ptr %i.q, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.q, align 1, !noalias !16826, !noundef !4
  %i.ab = shl nuw nsw i32 %i.u, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.o, 12
end_hunk_3
begin_hunk_4_@_ZN6procfs6crypto6crypto17haa9be71a4e6f2178E:bb.a
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !6

.thread418.i.i.i:                                 ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17317
  store ptr %i.a, ptr %i.am, align 8, !noalias !17317
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17345
  store ptr @3, ptr %i.ai, align 8, !noalias !17346
  %.sroa.4198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 1, ptr %.sroa.4198.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.5199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.am, ptr %.sroa.5199.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.6200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 1, ptr %.sroa.6200.0..sroa_idx.i.i.i, align 8, !noalias !17346
  %.sroa.7201.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %.sroa.7201.0..sroa_idx.i.i.i, align 8, !noalias !17346
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !17317

bb.ak:                                            ; preds = %.thread418.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !17345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17317
  %.sroa.83.8.copyload7.i = load i64, ptr %i.an, align 8, !noalias !17330
  %.sroa.15.8..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.15.8.copyload15.i = load i64, ptr %.sroa.15.8..sroa_idx14.i, align 8, !noalias !17330 ; 2 uses
  %.sroa.15.sroa.9.0.extract.shift54.i = lshr i64 %.sroa.15.8.copyload15.i, 32
  %.sroa.18.8..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.18.8.copyload23.i = load i64, ptr %.sroa.18.8..sroa_idx22.i, align 8, !noalias !17330
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit162.i.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"
  %i.er = icmp eq i64 %i.ep, 0                    ; 14 uses
  br i1 %i.er, label %bb.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !17347
  %i.es = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ep, i64 noundef range(i64 1, 9) 1) #42, !noalias !17347 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i145.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc155.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !17317

.noexc155.i.i.i:                                  ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.es, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ] ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %i.eo, i64 %i.ep, i1 false), !noalias !17348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %.noexc159.i.i.i unwind label %.split.i.i, !noalias !17317

.noexc159.i.i.i:                                  ; preds = %bb.am
  %i.eu = load i64, ptr %i.ah, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.eu, -9223372036854775803
  %.sroa.0383.0.copyload.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !17349 ; 7 uses
  %.sroa.4384.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4384.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 6 uses
  %.sroa.5385.0.copyload.i.i.i.i = load i64, ptr %.sroa.5385.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc159.i.i.i
  %.sroa.5105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ev = load <2 x i64>, ptr %.sroa.5105.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc256.i.i.i = trunc i64 %.sroa.0383.0.copyload.i.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift271.i.i.i = lshr i64 %.sroa.0383.0.copyload.i.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc272.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift271.i.i.i to i56
  %i.ew = ptrtoint ptr %.sroa.4384.0.copyload.i.i.i.i to i64
  br label %.thread427.i.i.i

bb.ao:                                            ; preds = %.noexc159.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.aq unwind label %bb.ap, !noalias !17317

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i": ; preds = %bb.at, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i", %bb.ap
  %i.ex = phi i1 [ %i.er, %bb.ap ], [ %i.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i" ], [ %i.fd, %bb.at ] ; 2 uses
  %.pn220.i.i.i.i = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %.pn218.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i" ], [ %.pn218.i.i.i.i, %bb.at ] ; 4 uses
  %i.ey = icmp eq i64 %.sroa.0383.0.copyload.i.i.i.i, 0
  br i1 %i.ey, label %bb.ej, label %.split1087.i.i

.split1087.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4384.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4384.0.copyload.i.i.i.i, i64 noundef %.sroa.0383.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17351
  br i1 %i.ex, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit176.i.i.i", label %bb.ek

bb.ap:                                            ; preds = %bb.ao
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"

bb.aq:                                            ; preds = %bb.ao
  %i.fa = load i64, ptr %i.ag, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not201.i.i.i.i = icmp eq i64 %i.fa, -9223372036854775803
  %.sroa.0386.0.copyload.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !17349 ; 7 uses
  %.sroa.4387.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4387.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 6 uses
  %.sroa.5388.0.copyload.i.i.i.i = load i64, ptr %.sroa.5388.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 2 uses
  br i1 %.not201.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.5114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.fb = load <2 x i64>, ptr %.sroa.5114.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc257.i.i.i = trunc i64 %.sroa.0386.0.copyload.i.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift273.i.i.i = lshr i64 %.sroa.0386.0.copyload.i.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc274.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift273.i.i.i to i56
  %i.fc = ptrtoint ptr %.sroa.4387.0.copyload.i.i.i.i to i64
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit294.i.i.i.i"

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.av unwind label %bb.au, !noalias !17317

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i": ; preds = %bb.dd, %bb.dc, %bb.cj, %bb.ci, %bb.cc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i", %bb.bk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i", %bb.au
  %i.fd = phi i1 [ %i.er, %bb.au ], [ %i.er, %bb.cc ], [ %i.er, %bb.bk ], [ %i.er, %bb.cj ], [ %i.er, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i" ], [ %i.er, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i" ], [ %i.er, %bb.ci ], [ false, %bb.dc ], [ false, %bb.dd ] ; 2 uses
  %.pn218.i.i.i.i = phi { ptr, i32 } [ %i.ff, %bb.au ], [ %.pn.i.i.i.i, %bb.cc ], [ %.pn216.i.i.i.i, %bb.bk ], [ %i.jv, %bb.cj ], [ %.pn216.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i" ], [ %.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i" ], [ %i.jv, %bb.ci ], [ %i.li, %bb.dc ], [ %i.li, %bb.dd ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.0386.0.copyload.i.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i", label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4387.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4387.0.copyload.i.i.i.i, i64 noundef %.sroa.0386.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17352
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit224.i.i.i.i"

bb.au:                                            ; preds = %bb.cy, %bb.ct, %.split20.i.i.i, %bb.cs, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i", %bb.as
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.av:                                            ; preds = %bb.as
  %i.fg = load i64, ptr %i.ad, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not203.i.i.i.i = icmp eq i64 %i.fg, -9223372036854775803
  %.sroa.716.i.sroa.0.0.copyload365.i.i.i = load i64, ptr %i.bv, align 8, !noalias !17349 ; 5 uses
  %.sroa.716.i.sroa.7.0.copyload368.i.i.i = load i64, ptr %.sroa.716.i.sroa.7.0..sroa_idx367.i.i.i, align 8, !noalias !17349 ; 3 uses
  %.sroa.716.i.sroa.8.0.copyload372.i.i.i = load i64, ptr %.sroa.716.i.sroa.8.0..sroa_idx371.i.i.i, align 8, !noalias !17349 ; 10 uses
  br i1 %.not203.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.5123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.fh = load <2 x i64>, ptr %.sroa.5123.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc259.i.i.i = trunc i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift277.i.i.i = lshr i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc278.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift277.i.i.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17349
  store i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i, ptr %i.ae, align 8, !noalias !17349
  store i64 %.sroa.716.i.sroa.7.0.copyload368.i.i.i, ptr %.sroa.716.i.sroa.7.0..sroa_idx369.i.i.i, align 8, !noalias !17349
  store i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, ptr %.sroa.716.i.sroa.8.0..sroa_idx373.i.i.i, align 8, !noalias !17349
  store ptr %i.ae, ptr %i.af, align 8, !noalias !17349
  %.cast.i.i.i = inttoptr i64 %.sroa.716.i.sroa.7.0.copyload368.i.i.i to ptr ; 7 uses
  switch i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %.loopexit462.i.i.i.i
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fi = load i8, ptr %.cast.i.i.i, align 1, !alias.scope !17353, !noalias !17354, !noundef !4 ; 2 uses
  switch i8 %i.fi, label %bb.az [
    i8 43, label %.loopexit462.i.i.i.i
    i8 45, label %.loopexit462.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.ax
  %.pr.i.i.i.i.i = load i8, ptr %.cast.i.i.i, align 1, !alias.scope !17353, !noalias !17354
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.ay
  %i.fj = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.fi, %bb.ay ]
  switch i8 %i.fj, label %bb.bg [
    i8 43, label %bb.ba
    i8 45, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw i8, ptr %.cast.i.i.i, i64 1 ; 2 uses
  %i.fl = add i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, -1 ; 3 uses
  %i.fm = icmp ult i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, 17
  br i1 %i.fm, label %.preheader.i.i.i.i.i, label %.preheader95.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fn = getelementptr inbounds nuw i8, ptr %.cast.i.i.i, i64 1 ; 2 uses
  %i.fo = add i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, -1 ; 3 uses
  %i.fp = icmp ult i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, 17
  %.not89109.i.i.i.i.i = icmp eq i64 %i.fo, 0     ; 2 uses
  br i1 %i.fp, label %.preheader97.i.i.i.i.i, label %.preheader99.i.i.i.i.i.preheader

.preheader99.i.i.i.i.i.preheader:                 ; preds = %bb.bb
  br i1 %.not89109.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph.a

.preheader97.i.i.i.i.i:                           ; preds = %bb.bb
  br i1 %.not89109.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph.i.i158.i.i.i

bb.bc:                                            ; preds = %bb.bi
  %i.fq = extractvalue { i64, i1 } %i.gy, 0       ; 2 uses
  %.not90.i.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not90.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph2050

.preheader99.i.i.i.i.i:                           ; preds = %bb.be
  %i.fr = extractvalue { i64, i1 } %i.gc, 0       ; 2 uses
  %.not.i.i157.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i157.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader99.i.i.i.i.i.preheader, %.preheader99.i.i.i.i.i
  %.sroa.01.2.i.i.i.i.i2045 = phi ptr [ %i.fs, %.preheader99.i.i.i.i.i ], [ %i.fn, %.preheader99.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i2044 = phi i64 [ %i.ft, %.preheader99.i.i.i.i.i ], [ %i.fo, %.preheader99.i.i.i.i.i.preheader ]
  %.sroa.031.2.i.i.i.i.i2043 = phi i64 [ %i.fr, %.preheader99.i.i.i.i.i ], [ 0, %.preheader99.i.i.i.i.i.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i.i.i.i.i2045, i64 1
  %i.ft = add i64 %.sroa.27.2.i.i.i.i.i2044, -1   ; 2 uses
  %i.fu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i.i.i.i.i2043, i64 10) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 0
  %i.fw = load i8, ptr %.sroa.01.2.i.i.i.i.i2045, align 1, !alias.scope !17353, !noalias !17354, !noundef !4
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add nsw i32 %i.fx, -48                  ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 10
  br i1 %i.fz, label %bb.bd, label %.loopexit462.i.i.i.i

bb.bd:                                            ; preds = %.lr.ph.a
  %i.ga = extractvalue { i64, i1 } %i.fu, 1
  br i1 %i.ga, label %.loopexit462.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = zext nneg i32 %i.fy to i64
  %i.gc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fv, i64 %i.gb) ; 2 uses
  %i.gd = extractvalue { i64, i1 } %i.gc, 1
  br i1 %i.gd, label %.loopexit462.i.i.i.i, label %.preheader99.i.i.i.i.i

.lr.ph.i.i158.i.i.i:                              ; preds = %.preheader97.i.i.i.i.i, %bb.bf
  %.sroa.01.3112.i.i.i.i.i = phi ptr [ %i.gk, %bb.bf ], [ %i.fn, %.preheader97.i.i.i.i.i ] ; 2 uses
  %.sroa.27.3111.i.i.i.i.i = phi i64 [ %i.gj, %bb.bf ], [ %i.fo, %.preheader97.i.i.i.i.i ]
  %.sroa.031.4110.i.i.i.i.i = phi i64 [ %i.gm, %bb.bf ], [ 0, %.preheader97.i.i.i.i.i ]
  %i.ge = load i8, ptr %.sroa.01.3112.i.i.i.i.i, align 1, !alias.scope !17353, !noalias !17354, !noundef !4
  %i.gf = zext i8 %i.ge to i32
  %i.gg = add nsw i32 %i.gf, -48                  ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 10
  br i1 %i.gh, label %bb.bf, label %.loopexit462.i.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i158.i.i.i
  %i.gi = mul i64 %.sroa.031.4110.i.i.i.i.i, 10
  %i.gj = add nsw i64 %.sroa.27.3111.i.i.i.i.i, -1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i.i.i.i.i, i64 1
  %i.gl = zext nneg i32 %i.gg to i64
  %i.gm = sub i64 %i.gi, %i.gl                    ; 2 uses
  %.not89.i.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not89.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph.i.i158.i.i.i

bb.bg:                                            ; preds = %bb.az
  %i.gn = icmp ult i64 %.sroa.716.i.sroa.8.0.copyload372.i.i.i, 16
  br i1 %i.gn, label %.lr.ph117.i.i.i.i.i.preheader, label %.preheader95.i.i.i.i.i

.lr.ph117.i.i.i.i.i.preheader:                    ; preds = %.preheader.i.i.i.i.i, %bb.bg
  %.sroa.01.1116.i.i.i.i.i.ph = phi ptr [ %.cast.i.i.i, %bb.bg ], [ %i.fk, %.preheader.i.i.i.i.i ]
  %.sroa.27.1115.i.i.i.i.i.ph = phi i64 [ %.sroa.716.i.sroa.8.0.copyload372.i.i.i, %bb.bg ], [ %i.fl, %.preheader.i.i.i.i.i ]
  br label %.lr.ph117.i.i.i.i.i

.preheader95.i.i.i.i.i:                           ; preds = %bb.bg, %bb.ba
  %.sroa.27.0.ph.i.i.i.i.i = phi i64 [ %.sroa.716.i.sroa.8.0.copyload372.i.i.i, %bb.bg ], [ %i.fl, %bb.ba ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i.i = phi ptr [ %.cast.i.i.i, %bb.bg ], [ %i.fk, %bb.ba ]
  %.not90.i.i.i.i.i2046 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i, 0
  br i1 %.not90.i.i.i.i.i2046, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph2050

.preheader.i.i.i.i.i:                             ; preds = %bb.ba
  %.not91113.i.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not91113.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph117.i.i.i.i.i.preheader

.lr.ph2050:                                       ; preds = %.preheader95.i.i.i.i.i, %bb.bc
  %.sroa.01.0.i.i.i.i.i2049 = phi ptr [ %i.go, %bb.bc ], [ %.sroa.01.0.ph.i.i.i.i.i, %.preheader95.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i2048 = phi i64 [ %i.gp, %bb.bc ], [ %.sroa.27.0.ph.i.i.i.i.i, %.preheader95.i.i.i.i.i ]
  %.sroa.031.0.i.i.i.i.i2047 = phi i64 [ %i.fq, %bb.bc ], [ 0, %.preheader95.i.i.i.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i2049, i64 1
  %i.gp = add i64 %.sroa.27.0.i.i.i.i.i2048, -1   ; 2 uses
  %i.gq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i.i.i.i.i2047, i64 10) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 0
  %i.gs = load i8, ptr %.sroa.01.0.i.i.i.i.i2049, align 1, !alias.scope !17353, !noalias !17354, !noundef !4
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nsw i32 %i.gt, -48                  ; 2 uses
  %i.gv = icmp ult i32 %i.gu, 10
  br i1 %i.gv, label %bb.bh, label %.loopexit462.i.i.i.i

bb.bh:                                            ; preds = %.lr.ph2050
  %i.gw = extractvalue { i64, i1 } %i.gq, 1
  br i1 %i.gw, label %.loopexit462.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = zext nneg i32 %i.gu to i64
  %i.gy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.gr, i64 %i.gx) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  br i1 %i.gz, label %.loopexit462.i.i.i.i, label %bb.bc

.lr.ph117.i.i.i.i.i:                              ; preds = %.lr.ph117.i.i.i.i.i.preheader, %bb.bj
  %.sroa.01.1116.i.i.i.i.i = phi ptr [ %i.hg, %bb.bj ], [ %.sroa.01.1116.i.i.i.i.i.ph, %.lr.ph117.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1115.i.i.i.i.i = phi i64 [ %i.hf, %bb.bj ], [ %.sroa.27.1115.i.i.i.i.i.ph, %.lr.ph117.i.i.i.i.i.preheader ]
  %.sroa.031.1114.i.i.i.i.i = phi i64 [ %i.hi, %bb.bj ], [ 0, %.lr.ph117.i.i.i.i.i.preheader ]
  %i.ha = load i8, ptr %.sroa.01.1116.i.i.i.i.i, align 1, !alias.scope !17353, !noalias !17354, !noundef !4
  %i.hb = zext i8 %i.ha to i32
  %i.hc = add nsw i32 %i.hb, -48                  ; 2 uses
  %i.hd = icmp ult i32 %i.hc, 10
  br i1 %i.hd, label %bb.bj, label %.loopexit462.i.i.i.i

bb.bj:                                            ; preds = %.lr.ph117.i.i.i.i.i
  %i.he = mul i64 %.sroa.031.1114.i.i.i.i.i, 10
  %i.hf = add nsw i64 %.sroa.27.1115.i.i.i.i.i, -1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i.i.i.i.i, i64 1
  %i.hh = zext nneg i32 %i.hc to i64
  %i.hi = add i64 %i.he, %i.hh                    ; 2 uses
  %.not91.i.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not91.i.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i", label %.lr.ph117.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i": ; preds = %bb.dn, %bb.dm, %bb.bl
  %.pn216.i.i.i.i = phi { ptr, i32 } [ %i.hk, %bb.bl ], [ %i.lt, %bb.dm ], [ %i.lt, %bb.dn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17355)
  %.val.i225.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !17355, !noalias !17349 ; 2 uses
  %i.hj = icmp eq i64 %.val.i225.i.i.i.i, 0
  br i1 %i.hj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i"
  %.val1.i226.i.i.i.i = load ptr, ptr %.sroa.716.i.sroa.7.0..sroa_idx369.i.i.i, align 8, !alias.scope !17355, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i226.i.i.i.i, i64 noundef %.val.i225.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17356
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.bl:                                            ; preds = %.loopexit462.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit298.i.i.i.i"

.loopexit462.i.i.i.i:                             ; preds = %bb.ay, %bb.ay, %bb.ax, %bb.be, %bb.bd, %.lr.ph.a, %.lr.ph.i.i158.i.i.i, %bb.bi, %bb.bh, %.lr.ph2050, %.lr.ph117.i.i.i.i.i
  %.sroa.2.0.ph.i.i.i.i = phi i8 [ 1, %.lr.ph117.i.i.i.i.i ], [ 1, %.lr.ph.i.i158.i.i.i ], [ 3, %bb.be ], [ 2, %bb.bh ], [ 1, %.lr.ph2050 ], [ 2, %bb.bi ], [ 3, %bb.bd ], [ 1, %.lr.ph.a ], [ 0, %bb.ax ], [ 1, %bb.ay ], [ 1, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17349
  store i8 %.sroa.2.0.ph.i.i.i.i, ptr %i.ac, align 1, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !17349
  store ptr %i.af, ptr %i.y, align 8, !noalias !17349
  %.sroa.4130.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E", ptr %.sroa.4130.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17357
  store ptr @28, ptr %i.i, align 8, !noalias !17358
  %.sroa.4345.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %.sroa.4345.0..sroa_idx.i.i.i.i, align 8, !noalias !17358
  %.sroa.5346.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.y, ptr %.sroa.5346.0..sroa_idx.i.i.i.i, align 8, !noalias !17358
  %.sroa.6347.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.6347.0..sroa_idx.i.i.i.i, align 8, !noalias !17358
  %.sroa.7348.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.7348.0..sroa_idx.i.i.i.i, align 8, !noalias !17358
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.dl unwind label %bb.bl, !noalias !17317

"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i": ; preds = %.preheader99.i.i.i.i.i, %bb.bf, %bb.bc, %bb.bj, %.preheader99.i.i.i.i.i.preheader, %.preheader95.i.i.i.i.i, %.preheader.i.i.i.i.i, %.preheader97.i.i.i.i.i
  %.sroa.13.0.i.i.i.i = phi i64 [ %i.hi, %bb.bj ], [ %i.fq, %bb.bc ], [ %i.gm, %bb.bf ], [ 0, %.preheader.i.i.i.i.i ], [ 0, %.preheader97.i.i.i.i.i ], [ 0, %.preheader95.i.i.i.i.i ], [ 0, %.preheader99.i.i.i.i.i.preheader ], [ %i.fr, %.preheader99.i.i.i.i.i ]
  %i.hl = icmp eq i64 %.sroa.716.i.sroa.0.0.copyload365.i.i.i, 0
  br i1 %i.hl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i", label %bb.bm

bb.bm:                                            ; preds = %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.cast.i.i.i, i64 noundef %.sroa.716.i.sroa.0.0.copyload365.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17359
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i": ; preds = %bb.bm, %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.bn unwind label %bb.au, !noalias !17317

bb.bn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit230.i.i.i.i"
  %i.hm = load i64, ptr %i.u, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not205.i.i.i.i = icmp eq i64 %i.hm, -9223372036854775803
  %.sroa.732.i.sroa.0.0.copyload375.i.i.i = load i64, ptr %i.bw, align 8, !noalias !17349 ; 5 uses
  %.sroa.732.i.sroa.7.0.copyload378.i.i.i = load i64, ptr %.sroa.732.i.sroa.7.0..sroa_idx377.i.i.i, align 8, !noalias !17349 ; 3 uses
  %.sroa.732.i.sroa.8.0.copyload382.i.i.i = load i64, ptr %.sroa.732.i.sroa.8.0..sroa_idx381.i.i.i, align 8, !noalias !17349 ; 10 uses
  br i1 %.not205.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5144.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.hn = load <2 x i64>, ptr %.sroa.5144.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc260.i.i.i = trunc i64 %.sroa.732.i.sroa.0.0.copyload375.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift279.i.i.i = lshr i64 %.sroa.732.i.sroa.0.0.copyload375.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc280.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift279.i.i.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17349
  store i64 %.sroa.732.i.sroa.0.0.copyload375.i.i.i, ptr %i.v, align 8, !noalias !17349
  store i64 %.sroa.732.i.sroa.7.0.copyload378.i.i.i, ptr %.sroa.732.i.sroa.7.0..sroa_idx379.i.i.i, align 8, !noalias !17349
  store i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, ptr %.sroa.732.i.sroa.8.0..sroa_idx383.i.i.i, align 8, !noalias !17349
  store ptr %i.v, ptr %i.w, align 8, !noalias !17349
  %.cast494.i.i.i = inttoptr i64 %.sroa.732.i.sroa.7.0.copyload378.i.i.i to ptr ; 7 uses
  switch i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, label %thread-pre-split.i263.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ho = load i8, ptr %.cast494.i.i.i, align 1, !alias.scope !17360, !noalias !17361, !noundef !4 ; 2 uses
  switch i8 %i.ho, label %bb.br [
    i8 43, label %.loopexit.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i
  ]

thread-pre-split.i263.i.i.i.i:                    ; preds = %bb.bp
  %.pr.i264.i.i.i.i = load i8, ptr %.cast494.i.i.i, align 1, !alias.scope !17360, !noalias !17361
  br label %bb.br

bb.br:                                            ; preds = %thread-pre-split.i263.i.i.i.i, %bb.bq
  %i.hp = phi i8 [ %.pr.i264.i.i.i.i, %thread-pre-split.i263.i.i.i.i ], [ %i.ho, %bb.bq ]
  switch i8 %i.hp, label %bb.by [
    i8 43, label %bb.bs
    i8 45, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hq = getelementptr inbounds nuw i8, ptr %.cast494.i.i.i, i64 1 ; 2 uses
  %i.hr = add i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, -1 ; 3 uses
  %i.hs = icmp ult i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, 17
  br i1 %i.hs, label %.preheader.i253.i.i.i.i, label %.preheader95.i246.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ht = getelementptr inbounds nuw i8, ptr %.cast494.i.i.i, i64 1 ; 2 uses
  %i.hu = add i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, -1 ; 3 uses
  %i.hv = icmp ult i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, 17
  %.not89109.i240.i.i.i.i = icmp eq i64 %i.hu, 0  ; 2 uses
  br i1 %i.hv, label %.preheader97.i239.i.i.i.i, label %.preheader99.i232.i.i.i.i.preheader

.preheader99.i232.i.i.i.i.preheader:              ; preds = %bb.bt
  br i1 %.not89109.i240.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph2056.a

.preheader97.i239.i.i.i.i:                        ; preds = %bb.bt
  br i1 %.not89109.i240.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph.i241.i.i.i.i

bb.bu:                                            ; preds = %bb.ca
  %i.hw = extractvalue { i64, i1 } %i.je, 0       ; 2 uses
  %.not90.i252.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not90.i252.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph2062

.preheader99.i232.i.i.i.i:                        ; preds = %bb.bw
  %i.hx = extractvalue { i64, i1 } %i.ii, 0       ; 2 uses
  %.not.i236.i.i.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i236.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph2056.a

.lr.ph2056.a:                                     ; preds = %.preheader99.i232.i.i.i.i.preheader, %.preheader99.i232.i.i.i.i
  %.sroa.01.2.i235.i.i.i.i2055 = phi ptr [ %i.hy, %.preheader99.i232.i.i.i.i ], [ %i.ht, %.preheader99.i232.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i234.i.i.i.i2054 = phi i64 [ %i.hz, %.preheader99.i232.i.i.i.i ], [ %i.hu, %.preheader99.i232.i.i.i.i.preheader ]
  %.sroa.031.2.i233.i.i.i.i2053 = phi i64 [ %i.hx, %.preheader99.i232.i.i.i.i ], [ 0, %.preheader99.i232.i.i.i.i.preheader ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i235.i.i.i.i2055, i64 1
  %i.hz = add i64 %.sroa.27.2.i234.i.i.i.i2054, -1 ; 2 uses
  %i.ia = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i233.i.i.i.i2053, i64 10) ; 2 uses
  %i.ib = extractvalue { i64, i1 } %i.ia, 0
  %i.ic = load i8, ptr %.sroa.01.2.i235.i.i.i.i2055, align 1, !alias.scope !17360, !noalias !17361, !noundef !4
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nsw i32 %i.id, -48                  ; 2 uses
  %i.if = icmp ult i32 %i.ie, 10
  br i1 %i.if, label %bb.bv, label %.loopexit.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph2056.a
  %i.ig = extractvalue { i64, i1 } %i.ia, 1
  br i1 %i.ig, label %.loopexit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ih = zext nneg i32 %i.ie to i64
  %i.ii = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ib, i64 %i.ih) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  br i1 %i.ij, label %.loopexit.i.i.i.i, label %.preheader99.i232.i.i.i.i

.lr.ph.i241.i.i.i.i:                              ; preds = %.preheader97.i239.i.i.i.i, %bb.bx
  %.sroa.01.3112.i242.i.i.i.i = phi ptr [ %i.iq, %bb.bx ], [ %i.ht, %.preheader97.i239.i.i.i.i ] ; 2 uses
  %.sroa.27.3111.i243.i.i.i.i = phi i64 [ %i.ip, %bb.bx ], [ %i.hu, %.preheader97.i239.i.i.i.i ]
  %.sroa.031.4110.i244.i.i.i.i = phi i64 [ %i.is, %bb.bx ], [ 0, %.preheader97.i239.i.i.i.i ]
  %i.ik = load i8, ptr %.sroa.01.3112.i242.i.i.i.i, align 1, !alias.scope !17360, !noalias !17361, !noundef !4
  %i.il = zext i8 %i.ik to i32
  %i.im = add nsw i32 %i.il, -48                  ; 2 uses
  %i.in = icmp ult i32 %i.im, 10
  br i1 %i.in, label %bb.bx, label %.loopexit.i.i.i.i

bb.bx:                                            ; preds = %.lr.ph.i241.i.i.i.i
  %i.io = mul i64 %.sroa.031.4110.i244.i.i.i.i, 10
  %i.ip = add nsw i64 %.sroa.27.3111.i243.i.i.i.i, -1 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i242.i.i.i.i, i64 1
  %i.ir = zext nneg i32 %i.im to i64
  %i.is = sub i64 %i.io, %i.ir                    ; 2 uses
  %.not89.i245.i.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not89.i245.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph.i241.i.i.i.i

bb.by:                                            ; preds = %bb.br
  %i.it = icmp ult i64 %.sroa.732.i.sroa.8.0.copyload382.i.i.i, 16
  br i1 %i.it, label %.lr.ph117.i258.i.i.i.i.preheader, label %.preheader95.i246.i.i.i.i

.lr.ph117.i258.i.i.i.i.preheader:                 ; preds = %.preheader.i253.i.i.i.i, %bb.by
  %.sroa.01.1116.i259.i.i.i.i.ph = phi ptr [ %.cast494.i.i.i, %bb.by ], [ %i.hq, %.preheader.i253.i.i.i.i ]
  %.sroa.27.1115.i260.i.i.i.i.ph = phi i64 [ %.sroa.732.i.sroa.8.0.copyload382.i.i.i, %bb.by ], [ %i.hr, %.preheader.i253.i.i.i.i ]
  br label %.lr.ph117.i258.i.i.i.i

.preheader95.i246.i.i.i.i:                        ; preds = %bb.by, %bb.bs
  %.sroa.27.0.ph.i247.i.i.i.i = phi i64 [ %.sroa.732.i.sroa.8.0.copyload382.i.i.i, %bb.by ], [ %i.hr, %bb.bs ] ; 2 uses
  %.sroa.01.0.ph.i248.i.i.i.i = phi ptr [ %.cast494.i.i.i, %bb.by ], [ %i.hq, %bb.bs ]
  %.not90.i252.i.i.i.i2058 = icmp eq i64 %.sroa.27.0.ph.i247.i.i.i.i, 0
  br i1 %.not90.i252.i.i.i.i2058, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph2062

.preheader.i253.i.i.i.i:                          ; preds = %bb.bs
  %.not91113.i254.i.i.i.i = icmp eq i64 %i.hr, 0
  br i1 %.not91113.i254.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph117.i258.i.i.i.i.preheader

.lr.ph2062:                                       ; preds = %.preheader95.i246.i.i.i.i, %bb.bu
  %.sroa.01.0.i251.i.i.i.i2061 = phi ptr [ %i.iu, %bb.bu ], [ %.sroa.01.0.ph.i248.i.i.i.i, %.preheader95.i246.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i250.i.i.i.i2060 = phi i64 [ %i.iv, %bb.bu ], [ %.sroa.27.0.ph.i247.i.i.i.i, %.preheader95.i246.i.i.i.i ]
  %.sroa.031.0.i249.i.i.i.i2059 = phi i64 [ %i.hw, %bb.bu ], [ 0, %.preheader95.i246.i.i.i.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i251.i.i.i.i2061, i64 1
  %i.iv = add i64 %.sroa.27.0.i250.i.i.i.i2060, -1 ; 2 uses
  %i.iw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i249.i.i.i.i2059, i64 10) ; 2 uses
  %i.ix = extractvalue { i64, i1 } %i.iw, 0
  %i.iy = load i8, ptr %.sroa.01.0.i251.i.i.i.i2061, align 1, !alias.scope !17360, !noalias !17361, !noundef !4
  %i.iz = zext i8 %i.iy to i32
  %i.ja = add nsw i32 %i.iz, -48                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10
  br i1 %i.jb, label %bb.bz, label %.loopexit.i.i.i.i

bb.bz:                                            ; preds = %.lr.ph2062
  %i.jc = extractvalue { i64, i1 } %i.iw, 1
  br i1 %i.jc, label %.loopexit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jd = zext nneg i32 %i.ja to i64
  %i.je = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ix, i64 %i.jd) ; 2 uses
  %i.jf = extractvalue { i64, i1 } %i.je, 1
  br i1 %i.jf, label %.loopexit.i.i.i.i, label %bb.bu

.lr.ph117.i258.i.i.i.i:                           ; preds = %.lr.ph117.i258.i.i.i.i.preheader, %bb.cb
  %.sroa.01.1116.i259.i.i.i.i = phi ptr [ %i.jm, %bb.cb ], [ %.sroa.01.1116.i259.i.i.i.i.ph, %.lr.ph117.i258.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1115.i260.i.i.i.i = phi i64 [ %i.jl, %bb.cb ], [ %.sroa.27.1115.i260.i.i.i.i.ph, %.lr.ph117.i258.i.i.i.i.preheader ]
  %.sroa.031.1114.i261.i.i.i.i = phi i64 [ %i.jo, %bb.cb ], [ 0, %.lr.ph117.i258.i.i.i.i.preheader ]
  %i.jg = load i8, ptr %.sroa.01.1116.i259.i.i.i.i, align 1, !alias.scope !17360, !noalias !17361, !noundef !4
  %i.jh = zext i8 %i.jg to i32
  %i.ji = add nsw i32 %i.jh, -48                  ; 2 uses
  %i.jj = icmp ult i32 %i.ji, 10
  br i1 %i.jj, label %bb.cb, label %.loopexit.i.i.i.i

bb.cb:                                            ; preds = %.lr.ph117.i258.i.i.i.i
  %i.jk = mul i64 %.sroa.031.1114.i261.i.i.i.i, 10
  %i.jl = add nsw i64 %.sroa.27.1115.i260.i.i.i.i, -1 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i259.i.i.i.i, i64 1
  %i.jn = zext nneg i32 %i.ji to i64
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %.not91.i262.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not91.i262.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i", label %.lr.ph117.i258.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i": ; preds = %bb.dg, %bb.df, %bb.cd
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.jq, %bb.cd ], [ %i.lk, %bb.df ], [ %i.lk, %bb.dg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17362)
  %.val.i266.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !17362, !noalias !17349 ; 2 uses
  %i.jp = icmp eq i64 %.val.i266.i.i.i.i, 0
  br i1 %i.jp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i", label %bb.cc

bb.cc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i"
  %.val1.i267.i.i.i.i = load ptr, ptr %.sroa.732.i.sroa.7.0..sroa_idx379.i.i.i, align 8, !alias.scope !17362, !noalias !17349, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i267.i.i.i.i, i64 noundef %.val.i266.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17363
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.cd:                                            ; preds = %.loopexit.i.i.i.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit285.i.i.i.i"

.loopexit.i.i.i.i:                                ; preds = %bb.bq, %bb.bq, %bb.bp, %bb.bw, %bb.bv, %.lr.ph2056.a, %.lr.ph.i241.i.i.i.i, %bb.ca, %bb.bz, %.lr.ph2062, %.lr.ph117.i258.i.i.i.i
  %.sroa.2351.0.ph.i.i.i.i = phi i8 [ 1, %.lr.ph117.i258.i.i.i.i ], [ 1, %.lr.ph.i241.i.i.i.i ], [ 3, %bb.bw ], [ 2, %bb.bz ], [ 1, %.lr.ph2062 ], [ 2, %bb.ca ], [ 3, %bb.bv ], [ 1, %.lr.ph2056.a ], [ 0, %bb.bp ], [ 1, %bb.bq ], [ 1, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17349
  store i8 %.sroa.2351.0.ph.i.i.i.i, ptr %i.t, align 1, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17349
  store ptr %i.w, ptr %i.p, align 8, !noalias !17349
  %.sroa.4151.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E", ptr %.sroa.4151.0..sroa_idx.i.i.i.i, align 8, !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17364
  store ptr @24, ptr %i.h, align 8, !noalias !17365
  %.sroa.4360.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4360.0..sroa_idx.i.i.i.i, align 8, !noalias !17365
  %.sroa.5361.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.p, ptr %.sroa.5361.0..sroa_idx.i.i.i.i, align 8, !noalias !17365
  %.sroa.6362.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6362.0..sroa_idx.i.i.i.i, align 8, !noalias !17365
  %.sroa.7363.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7363.0..sroa_idx.i.i.i.i, align 8, !noalias !17365
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.de unwind label %bb.cd, !noalias !17317

"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i": ; preds = %.preheader99.i232.i.i.i.i, %bb.bx, %bb.bu, %bb.cb, %.preheader99.i232.i.i.i.i.preheader, %.preheader95.i246.i.i.i.i, %.preheader.i253.i.i.i.i, %.preheader97.i239.i.i.i.i
  %.sroa.13352.0.i.i.i.i = phi i64 [ %i.jo, %bb.cb ], [ %i.hw, %bb.bu ], [ %i.is, %bb.bx ], [ 0, %.preheader.i253.i.i.i.i ], [ 0, %.preheader97.i239.i.i.i.i ], [ 0, %.preheader95.i246.i.i.i.i ], [ 0, %.preheader99.i232.i.i.i.i.preheader ], [ %i.hx, %.preheader99.i232.i.i.i.i ]
  %i.jr = icmp eq i64 %.sroa.732.i.sroa.0.0.copyload375.i.i.i, 0
  br i1 %i.jr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.cast494.i.i.i, i64 noundef %.sroa.732.i.sroa.0.0.copyload375.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17366
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i": ; preds = %bb.ce, %"_ZN4core3num23_$LT$impl$u20$isize$GT$16from_ascii_radix17h48b696861eb79a21E.exit265.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @20, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.cf unwind label %bb.au, !noalias !17317

bb.cf:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit272.i.i.i.i"
  %i.js = load i64, ptr %i.m, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not207.i.i.i.i = icmp eq i64 %i.js, -9223372036854775803
  %.sroa.0389.0.copyload.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !17349 ; 8 uses
  %.sroa.4390.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4390.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 5 uses
  %.sroa.5391.0.copyload.i.i.i.i = load i64, ptr %.sroa.5391.0..sroa_idx.i.i.i.i, align 8, !noalias !17349 ; 2 uses
  br i1 %.not207.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.5165.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.jt = load <2 x i64>, ptr %.sroa.5165.0..sroa_idx.i.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17349
  %.sroa.28.sroa.0.0.extract.trunc258.i.i.i = trunc i64 %.sroa.0389.0.copyload.i.i.i.i to i8
  %.sroa.28.sroa.16.0.extract.shift275.i.i.i = lshr i64 %.sroa.0389.0.copyload.i.i.i.i, 8
  %.sroa.28.sroa.16.0.extract.trunc276.i.i.i = trunc nuw i64 %.sroa.28.sroa.16.0.extract.shift275.i.i.i to i56
  %i.ju = ptrtoint ptr %.sroa.4390.0.copyload.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17349
  invoke void @"_ZN87_$LT$procfs_core..crypto..SelfTest$u20$as$u20$core..convert..TryFrom$LT$$RF$str$GT$$GT$8try_from17h69b85c7e412af113E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4390.0.copyload.i.i.i.i, i64 noundef %.sroa.5391.0.copyload.i.i.i.i)
          to label %bb.ck unwind label %bb.ci, !noalias !17317

bb.ci:                                            ; preds = %bb.ch
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = icmp eq i64 %.sroa.0389.0.copyload.i.i.i.i, 0
  br i1 %i.jw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4390.0.copyload.i.i.i.i, i64 noundef %.sroa.0389.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17367
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit227.i.i.i.i"

bb.ck:                                            ; preds = %bb.ch
  %i.jx = load i64, ptr %i.n, align 8, !range !9, !noalias !17349, !noundef !4 ; 3 uses
  %.not209.i.i.i.i = icmp eq i64 %i.jx, -9223372036854775803
  %i.jy = load i8, ptr %i.by, align 8, !noalias !17349 ; 3 uses
  br i1 %.not209.i.i.i.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.5174.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %.sroa.28.sroa.16.sroa.0.0.copyload.i.i.i = load i56, ptr %.sroa.5174.0..sroa_idx.i.i.i.i, align 1, !noalias !17350 ; 2 uses
  %.sroa.39.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.39.17.copyload.i.i.i = load i64, ptr %.sroa.39.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350 ; 2 uses
  %.sroa.43.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.43.17.copyload.i.i.i = load i64, ptr %.sroa.43.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350 ; 2 uses
  %.sroa.49.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.jz = load <2 x i64>, ptr %.sroa.49.17..sroa.5174.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17349
  %i.ka = icmp eq i64 %.sroa.0389.0.copyload.i.i.i.i, 0
  br i1 %i.ka, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4390.0.copyload.i.i.i.i, i64 noundef %.sroa.0389.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17368
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17349
  %i.kb = icmp eq i64 %.sroa.0389.0.copyload.i.i.i.i, 0
  br i1 %i.kb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i", label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4390.0.copyload.i.i.i.i, i64 noundef %.sroa.0389.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17369
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i": ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto10parse_bool17hb9d6ba5c4e056eaeE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %bb.cp unwind label %bb.au, !noalias !17317

bb.cp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit281.i.i.i.i"
  %i.kc = load i64, ptr %i.l, align 8, !range !9, !noalias !17349, !noundef !4 ; 2 uses
  %.not211.i.i.i.i = icmp eq i64 %i.kc, -9223372036854775803
  %i.kd = load i8, ptr %i.bz, align 8, !noalias !17349 ; 2 uses
  br i1 %.not211.i.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.sroa.5183.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.28.sroa.16.sroa.0.0.copyload282.i.i.i = load i56, ptr %.sroa.5183.0..sroa_idx.i.i.i.i, align 1, !noalias !17350
  %.sroa.39.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.39.17.copyload224.i.i.i = load i64, ptr %.sroa.39.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350
  %.sroa.43.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.43.17.copyload229.i.i.i = load i64, ptr %.sroa.43.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350
  %.sroa.49.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ke = load <2 x i64>, ptr %.sroa.49.17..sroa.5183.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !17350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17349
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17349
  call void @llvm.experimental.noalias.scope.decl(metadata !17370)
  %i.kf = load i64, ptr %i.aq, align 8, !range !15, !alias.scope !17370, !noalias !17371, !noundef !4 ; 2 uses
  %.not.i.i4.i.i = icmp eq i64 %i.kf, -9223372036854775806
  br i1 %.not.i.i4.i.i, label %bb.cs, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i"

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17372
  invoke fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %.noexc8.i.i unwind label %bb.au, !noalias !17318

.noexc8.i.i:                                      ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !17373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17372
  %.pre.i.i.i.i = load i64, ptr %i.aq, align 8, !range !15, !alias.scope !17370, !noalias !17371
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i": ; preds = %.noexc8.i.i, %bb.cr
  %i.kg = phi i64 [ %i.kf, %bb.cr ], [ %.pre.i.i.i.i, %.noexc8.i.i ]
  %switch.i.i.i = icmp slt i64 %i.kg, -9223372036854775806
  br i1 %switch.i.i.i, label %bb.cy, label %.split20.i.i.i

.split20.i.i.i:                                   ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i"
  %.val.i.i5.i.i = load ptr, ptr %.sroa.357.0..sroa_idx.i.i.i, align 8, !alias.scope !17370, !noalias !17371, !nonnull !4, !noundef !4
  %.val7.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !17370, !noalias !17371, !noundef !4
  %i.kh = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i5.i.i, i64 noundef %.val7.i.i.i.i)
          to label %.noexc9.i.i unwind label %bb.au, !noalias !17318

.noexc9.i.i:                                      ; preds = %.split20.i.i.i
  br i1 %i.kh, label %bb.ct, label %bb.cy

bb.ct:                                            ; preds = %.noexc9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17374
  invoke fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
          to label %.noexc10.i.i unwind label %bb.au, !noalias !17318

.noexc10.i.i:                                     ; preds = %bb.ct
  %i.ki = load i64, ptr %i.d, align 8, !range !9, !noalias !17374, !noundef !4 ; 2 uses
  %.not21.i.i.i = icmp eq i64 %i.ki, -9223372036854775803
  %.sroa.041.0.copyload.i.i.i = load i64, ptr %i.ch, align 8, !noalias !17374 ; 5 uses
  %.sroa.542.0.copyload.i.i.i = load ptr, ptr %.sroa.542.0..sroa_idx.i6.i.i, align 8, !noalias !17374 ; 6 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i7.i.i, align 8, !noalias !17374 ; 2 uses
  br i1 %.not21.i.i.i, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %.noexc10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17374
  %.not.i25.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i.i, 3
  br i1 %.not.i25.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i": ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.542.0.copyload.i.i.i) ], !noalias !17325
  %i.kj = load i16, ptr %.sroa.542.0.copyload.i.i.i, align 1
  %i.kk = xor i16 %i.kj, 25977
  %i.kl = getelementptr i8, ptr %.sroa.542.0.copyload.i.i.i, i64 2
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = zext i8 %i.km to i16
  %i.ko = xor i16 %i.kn, 115
  %i.kp = or i16 %i.kk, %i.ko
  %i.kq = icmp ne i16 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.cw, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i", %bb.cu
  %i.kt = icmp eq i64 %.sroa.041.0.copyload.i.i.i, 0
  br i1 %i.kt, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.542.0.copyload.i.i.i) ], !noalias !17325
  br label %.sink.split.i.i

bb.cw:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i.i"
  %i.ku = icmp eq i64 %.sroa.041.0.copyload.i.i.i, 0
  br i1 %i.ku, label %bb.cy, label %.sink.split.i.i

bb.cx:                                            ; preds = %.noexc10.i.i
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.kv = load <2 x i64>, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !17375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17374
  %i.kw = ptrtoint ptr %.sroa.542.0.copyload.i.i.i to i64
  %.sroa.719.8.extract.trunc.i.i = trunc i64 %.sroa.041.0.copyload.i.i.i to i8
  %.sroa.719.9.extract.shift.i.i = lshr i64 %.sroa.041.0.copyload.i.i.i, 8
  %.sroa.719.9.extract.trunc.i.i = trunc nuw i64 %.sroa.719.9.extract.shift.i.i to i56
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit278.i.i.i.i"

.sink.split.i.i:                                  ; preds = %bb.cw, %bb.cv
  %.sroa.719.0.ph.ph.i.i = phi i8 [ 0, %bb.cv ], [ 1, %bb.cw ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.542.0.copyload.i.i.i, i64 noundef %.sroa.041.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17376
  br label %bb.cy

bb.cy:                                            ; preds = %.sink.split.i.i, %bb.cw, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i", %.noexc9.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i"
  %.sroa.719.0.ph.i.i = phi i8 [ 0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h034459433aa6acc8E.exit.i.i.i" ], [ 0, %.noexc9.i.i ], [ 0, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i.i" ], [ 1, %bb.cw ], [ %.sroa.719.0.ph.ph.i.i, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17349
  invoke fastcc void @_ZN11procfs_core6crypto4Type9from_iter17h9b80dfbee3e03beeE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %i.ep)
end_hunk_4
begin_hunk_5_@_ZN6procfs6vmstat17h50c835a30123bfdeE:bb.a
"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he1968b789433d8d3E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.j ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.j ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i, %bb.j ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bu = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.bv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i16 %i.bu, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.ca = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -32
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !17938, !noalias !17939 ; 2 uses
  %i.cc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h1a30a3adbb1b87d7E.exit.i.i.i.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he1968b789433d8d3E.exit.i.i.i.i.i.i.i.i"
  %i.cd = getelementptr i8, ptr %i.bz, i64 -24
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !noalias !17939, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17940
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h1a30a3adbb1b87d7E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h1a30a3adbb1b87d7E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.k, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he1968b789433d8d3E.exit.i.i.i.i.i.i.i.i"
  %i.ce = icmp eq i64 %i.ca, 0
  br i1 %i.ce, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17he1edbca62e14f760E.exit.i.i.i.i.i.i.i, label %bb.j

_ZN9hashbrown3raw13RawTableInner13drop_elements17he1edbca62e14f760E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h1a30a3adbb1b87d7E.exit.i.i.i.i.i.i.i.i", %bb.h
  %i.cf = shl i64 %i.bh, 5                        ; 2 uses
  %i.cg = add i64 %i.cf, 32                       ; 2 uses
  %i.ch = add i64 %i.bh, 17
  %i.ci = add i64 %i.ch, %i.cg                    ; 4 uses
  %i.cj = icmp uge i64 %i.ci, %i.cg
  %i.ck = icmp ult i64 %i.ci, 9223372036854775793
  call void @llvm.assume(i1 %i.cj), !noalias !17925
  call void @llvm.assume(i1 %i.ck), !noalias !17925
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %common.resume.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17he1edbca62e14f760E.exit.i.i.i.i.i.i.i
  %i.cm = load ptr, ptr %i.w, align 8, !alias.scope !17933, !noalias !17918, !nonnull !4, !noundef !4
  %i.cn = sub nuw nsw i64 -32, %i.cf
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !17941
  br label %common.resume.i.i

.loopexit210.i.i.i:                               ; preds = %bb.g
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i"

.loopexit.split-lp.i.i.i:                         ; preds = %bb.p
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i"

bb.m:                                             ; preds = %bb.g
  %i.cp = load i64, ptr %i.u, align 8, !range !17, !noalias !17918, !noundef !4 ; 8 uses
  %.not.i.i.i = icmp eq i64 %i.cp, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !17918 ; 11 uses
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %bb.p, label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17918
  call void @llvm.experimental.noalias.scope.decl(metadata !17942)
  call void @llvm.experimental.noalias.scope.decl(metadata !17943)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !17944, !noalias !17918, !noundef !4 ; 2 uses
  %i.cs = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.cs, label %bb.bq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.val2.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !17944, !noalias !17918, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i, i64 noundef 1) #42, !noalias !17945
  br label %bb.bq

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17918
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noundef nonnull %.sroa.3.0.copyload.i.i.i)
          to label %bb.bh unwind label %.loopexit.split-lp.i.i.i, !noalias !17918

.body.i.i.i:                                      ; preds = %bb.ba, %bb.az, %bb.av, %bb.au, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hk, %bb.au ], [ %i.cu, %bb.r ], [ %i.hk, %bb.av ], [ %i.hn, %bb.az ], [ %i.hn, %bb.ba ] ; 2 uses
  %i.ct = icmp eq i64 %i.cp, 0
  br i1 %i.ct, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %.body.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17946
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i"

bb.r:                                             ; preds = %bb.aj, %.loopexit.i.i.i, %bb.v, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.s:                                             ; preds = %bb.n
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !noalias !17918 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17918
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 %.sroa.4.0.copyload.i.i.i
  store i64 0, ptr %i.t, align 8, !noalias !17918
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.479.0..sroa_idx.i.i.i, align 8, !noalias !17918
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.580.0..sroa_idx.i.i.i, align 8, !noalias !17918
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.580.sroa.4.0..sroa.580.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17918
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.580.sroa.5.0..sroa.580.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17918
  store ptr %i.cv, ptr %.sroa.580.sroa.6.0..sroa.580.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17918
  store i64 0, ptr %.sroa.580.sroa.7.0..sroa.580.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !17918
  store i8 1, ptr %.sroa.681.0..sroa_idx.i.i.i, align 8, !noalias !17918
  store i8 0, ptr %.sroa.782.0..sroa_idx.i.i.i, align 1, !noalias !17918
  %i.cw = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h175cc59bda92894dE(ptr noalias noundef align 8 dereferenceable(64) %i.t) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %.not117.i.i.i = icmp eq ptr %i.cx, null        ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  %.sroa.7.0.i.i.i = select i1 %.not117.i.i.i, i64 undef, i64 %i.cy ; 11 uses
  br i1 %.not117.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17918
  store ptr %i.a, ptr %i.r, align 8, !noalias !17918
  %.sroa.491.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.491.0..sroa_idx.i.i.i, align 8, !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17947
  store ptr @3, ptr %i.f, align 8, !noalias !17948
  %.sroa.4.0..sroa_idx160.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx160.i.i.i, align 8, !noalias !17948
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !17948
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !17948
  %.sroa.7162.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7162.0..sroa_idx.i.i.i, align 8, !noalias !17948
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.bg unwind label %bb.r, !noalias !17918

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17918
  %i.cz = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h175cc59bda92894dE(ptr noalias noundef align 8 dereferenceable(64) %i.t) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 8 uses
  %.not119.i.i.i = icmp eq ptr %i.da, null
  %i.db = extractvalue { ptr, i64 } %i.cz, 1      ; 9 uses
  br i1 %.not119.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17918
  store ptr %i.a, ptr %i.o, align 8, !noalias !17918
  %.sroa.4101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4101.0..sroa_idx.i.i.i, align 8, !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17949
  store ptr @3, ptr %i.e, align 8, !noalias !17950
  %.sroa.4164.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4164.0..sroa_idx.i.i.i, align 8, !noalias !17950
  %.sroa.5165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.o, ptr %.sroa.5165.0..sroa_idx.i.i.i, align 8, !noalias !17950
  %.sroa.6166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6166.0..sroa_idx.i.i.i, align 8, !noalias !17950
  %.sroa.7167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7167.0..sroa_idx.i.i.i, align 8, !noalias !17950
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.bd unwind label %bb.r, !noalias !17918

bb.w:                                             ; preds = %bb.u
  store ptr %i.da, ptr %i.q, align 8, !noalias !17918
  store i64 %i.db, ptr %i.az, align 8, !noalias !17918
  switch i64 %i.db, label %thread-pre-split.i.i.i.i [
    i64 0, label %.loopexit.i.i.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.dc = load i8, ptr %i.da, align 1, !alias.scope !17951, !noalias !17952, !noundef !4 ; 2 uses
  switch i8 %i.dc, label %bb.y [
    i8 43, label %.loopexit.i.i.i
    i8 45, label %.loopexit.i.i.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.w
  %.pr.i.i.i.i = load i8, ptr %i.da, align 1, !alias.scope !17951, !noalias !17952
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i.i.i.i, %bb.x
  %i.dd = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.dc, %bb.x ]
  switch i8 %i.dd, label %bb.af [
    i8 43, label %bb.z
    i8 45, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  %i.df = add i64 %i.db, -1                       ; 3 uses
  %i.dg = icmp ult i64 %i.db, 17
  br i1 %i.dg, label %.preheader.i.i.i.i, label %.preheader95.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  %i.di = add i64 %i.db, -1                       ; 3 uses
  %i.dj = icmp ult i64 %i.db, 17
  %.not89109.i.i.i.i = icmp eq i64 %i.di, 0       ; 2 uses
  br i1 %i.dj, label %.preheader97.i.i.i.i, label %.preheader99.i.i.i.i.preheader

.preheader99.i.i.i.i.preheader:                   ; preds = %bb.aa
  br i1 %.not89109.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph.a

.preheader97.i.i.i.i:                             ; preds = %bb.aa
  br i1 %.not89109.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph.i.i.i.i

bb.ab:                                            ; preds = %bb.ah
  %i.dk = extractvalue { i64, i1 } %i.es, 0       ; 2 uses
  %.not90.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not90.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph239

.preheader99.i.i.i.i:                             ; preds = %bb.ad
  %i.dl = extractvalue { i64, i1 } %i.dw, 0       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader99.i.i.i.i.preheader, %.preheader99.i.i.i.i
  %.sroa.01.2.i.i.i.i234 = phi ptr [ %i.dm, %.preheader99.i.i.i.i ], [ %i.dh, %.preheader99.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i233 = phi i64 [ %i.dn, %.preheader99.i.i.i.i ], [ %i.di, %.preheader99.i.i.i.i.preheader ]
  %.sroa.031.2.i.i.i.i232 = phi i64 [ %i.dl, %.preheader99.i.i.i.i ], [ 0, %.preheader99.i.i.i.i.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i.i.i.i234, i64 1
  %i.dn = add i64 %.sroa.27.2.i.i.i.i233, -1      ; 2 uses
  %i.do = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i.i.i.i232, i64 10) ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.do, 0
  %i.dq = load i8, ptr %.sroa.01.2.i.i.i.i234, align 1, !alias.scope !17951, !noalias !17952, !noundef !4
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.ac, label %.loopexit.i.i.i

bb.ac:                                            ; preds = %.lr.ph.a
  %i.du = extractvalue { i64, i1 } %i.do, 1
  br i1 %i.du, label %.loopexit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = zext nneg i32 %i.ds to i64
  %i.dw = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.dp, i64 %i.dv) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dx, label %.loopexit.i.i.i, label %.preheader99.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader97.i.i.i.i, %bb.ae
  %.sroa.01.3112.i.i.i.i = phi ptr [ %i.ee, %bb.ae ], [ %i.dh, %.preheader97.i.i.i.i ] ; 2 uses
  %.sroa.27.3111.i.i.i.i = phi i64 [ %i.ed, %bb.ae ], [ %i.di, %.preheader97.i.i.i.i ]
  %.sroa.031.4110.i.i.i.i = phi i64 [ %i.eg, %bb.ae ], [ 0, %.preheader97.i.i.i.i ]
  %i.dy = load i8, ptr %.sroa.01.3112.i.i.i.i, align 1, !alias.scope !17951, !noalias !17952, !noundef !4
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ec = mul i64 %.sroa.031.4110.i.i.i.i, 10
  %i.ed = add nsw i64 %.sroa.27.3111.i.i.i.i, -1  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i.i.i.i, i64 1
  %i.ef = zext nneg i32 %i.ea to i64
  %i.eg = sub i64 %i.ec, %i.ef                    ; 2 uses
  %.not89.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not89.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph.i.i.i.i

bb.af:                                            ; preds = %bb.y
  %i.eh = icmp ult i64 %i.db, 16
  br i1 %i.eh, label %.lr.ph117.i.i.i.i.preheader, label %.preheader95.i.i.i.i

.lr.ph117.i.i.i.i.preheader:                      ; preds = %.preheader.i.i.i.i, %bb.af
  %.sroa.01.1116.i.i.i.i.ph = phi ptr [ %i.da, %bb.af ], [ %i.de, %.preheader.i.i.i.i ]
  %.sroa.27.1115.i.i.i.i.ph = phi i64 [ %i.db, %bb.af ], [ %i.df, %.preheader.i.i.i.i ]
  br label %.lr.ph117.i.i.i.i

.preheader95.i.i.i.i:                             ; preds = %bb.af, %bb.z
  %.sroa.27.0.ph.i.i.i.i = phi i64 [ %i.db, %bb.af ], [ %i.df, %bb.z ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i = phi ptr [ %i.da, %bb.af ], [ %i.de, %bb.z ]
  %.not90.i.i.i.i235 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i, 0
  br i1 %.not90.i.i.i.i235, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph239

.preheader.i.i.i.i:                               ; preds = %bb.z
  %.not91113.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not91113.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph117.i.i.i.i.preheader

.lr.ph239:                                        ; preds = %.preheader95.i.i.i.i, %bb.ab
  %.sroa.01.0.i.i.i.i238 = phi ptr [ %i.ei, %bb.ab ], [ %.sroa.01.0.ph.i.i.i.i, %.preheader95.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i237 = phi i64 [ %i.ej, %bb.ab ], [ %.sroa.27.0.ph.i.i.i.i, %.preheader95.i.i.i.i ]
  %.sroa.031.0.i.i.i.i236 = phi i64 [ %i.dk, %bb.ab ], [ 0, %.preheader95.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i238, i64 1
  %i.ej = add i64 %.sroa.27.0.i.i.i.i237, -1      ; 2 uses
  %i.ek = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i.i.i.i236, i64 10) ; 2 uses
  %i.el = extractvalue { i64, i1 } %i.ek, 0
  %i.em = load i8, ptr %.sroa.01.0.i.i.i.i238, align 1, !alias.scope !17951, !noalias !17952, !noundef !4
  %i.en = zext i8 %i.em to i32
  %i.eo = add nsw i32 %i.en, -48                  ; 2 uses
  %i.ep = icmp ult i32 %i.eo, 10
  br i1 %i.ep, label %bb.ag, label %.loopexit.i.i.i

bb.ag:                                            ; preds = %.lr.ph239
  %i.eq = extractvalue { i64, i1 } %i.ek, 1
  br i1 %i.eq, label %.loopexit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = zext nneg i32 %i.eo to i64
  %i.es = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.el, i64 %i.er) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  br i1 %i.et, label %.loopexit.i.i.i, label %bb.ab

.lr.ph117.i.i.i.i:                                ; preds = %.lr.ph117.i.i.i.i.preheader, %bb.ai
  %.sroa.01.1116.i.i.i.i = phi ptr [ %i.fa, %bb.ai ], [ %.sroa.01.1116.i.i.i.i.ph, %.lr.ph117.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1115.i.i.i.i = phi i64 [ %i.ez, %bb.ai ], [ %.sroa.27.1115.i.i.i.i.ph, %.lr.ph117.i.i.i.i.preheader ]
  %.sroa.031.1114.i.i.i.i = phi i64 [ %i.fc, %bb.ai ], [ 0, %.lr.ph117.i.i.i.i.preheader ]
  %i.eu = load i8, ptr %.sroa.01.1116.i.i.i.i, align 1, !alias.scope !17951, !noalias !17952, !noundef !4
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, -48                  ; 2 uses
  %i.ex = icmp ult i32 %i.ew, 10
  br i1 %i.ex, label %bb.ai, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %.lr.ph117.i.i.i.i
  %i.ey = mul i64 %.sroa.031.1114.i.i.i.i, 10
  %i.ez = add nsw i64 %.sroa.27.1115.i.i.i.i, -1  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i.i.i.i, i64 1
  %i.fb = zext nneg i32 %i.ew to i64
  %i.fc = add i64 %i.ey, %i.fb                    ; 2 uses
  %.not91.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not91.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i", label %.lr.ph117.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.x, %bb.x, %bb.w, %bb.ad, %bb.ac, %.lr.ph.a, %.lr.ph.i.i.i.i, %bb.ah, %bb.ag, %.lr.ph239, %.lr.ph117.i.i.i.i
  %.sroa.2.1.ph.i.i.i = phi i8 [ 1, %.lr.ph117.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 2, %bb.ag ], [ 3, %bb.ac ], [ 1, %.lr.ph239 ], [ 2, %bb.ah ], [ 1, %.lr.ph.a ], [ 3, %bb.ad ], [ 0, %bb.w ], [ 1, %bb.x ], [ 1, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17918
  store i8 %.sroa.2.1.ph.i.i.i, ptr %i.n, align 1, !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17918
  store ptr %i.q, ptr %i.j, align 8, !noalias !17918
  %.sroa.4107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.4107.0..sroa_idx.i.i.i, align 8, !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17953
  store ptr @156, ptr %i.d, align 8, !noalias !17954
  %.sroa.4177.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4177.0..sroa_idx.i.i.i, align 8, !noalias !17954
  %.sroa.5178.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %.sroa.5178.0..sroa_idx.i.i.i, align 8, !noalias !17954
  %.sroa.6179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6179.0..sroa_idx.i.i.i, align 8, !noalias !17954
  %.sroa.7180.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7180.0..sroa_idx.i.i.i, align 8, !noalias !17954
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ay unwind label %bb.r, !noalias !17918

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i": ; preds = %.preheader99.i.i.i.i, %bb.ae, %bb.ab, %bb.ai, %.preheader99.i.i.i.i.preheader, %.preheader95.i.i.i.i, %.preheader.i.i.i.i, %.preheader97.i.i.i.i
  %.sroa.13.1.i.i.i = phi i64 [ %i.fc, %bb.ai ], [ %i.dk, %bb.ab ], [ %i.eg, %bb.ae ], [ 0, %.preheader.i.i.i.i ], [ 0, %.preheader97.i.i.i.i ], [ 0, %.preheader95.i.i.i.i ], [ 0, %.preheader99.i.i.i.i.preheader ], [ %i.dl, %.preheader99.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17918
  %i.fd = icmp slt i64 %.sroa.7.0.i.i.i, 0
  br i1 %i.fd, label %bb.aj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i"
  %i.fe = icmp eq i64 %.sroa.7.0.i.i.i, 0         ; 3 uses
  br i1 %i.fe, label %bb.ak, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !17955
  %i.ff = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.7.0.i.i.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !17955 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.7.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc134.i.i.i unwind label %bb.r, !noalias !17918

.noexc134.i.i.i:                                  ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ff, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %i.cx, i64 %.sroa.7.0.i.i.i, i1 false), !noalias !17956
  store i64 %.sroa.7.0.i.i.i, ptr %i.h, align 8, !noalias !17918
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4193.0..sroa_idx.i.i.i, align 8, !noalias !17918
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.5194.0..sroa_idx.i.i.i, align 8, !noalias !17918
  call void @llvm.experimental.noalias.scope.decl(metadata !17957)
  %.val.i135.i.i.i = load i64, ptr %.sroa.461.0..sroa_idx.i.i.i, align 8, !alias.scope !17957, !noalias !17958, !noundef !4
  %.val9.i.i.i.i = load i64, ptr %.sroa.562.0..sroa_idx.i.i.i, align 8, !alias.scope !17957, !noalias !17958, !noundef !4
  %i.fh = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3f0ca1c572c8f3f7E(i64 %.val.i135.i.i.i, i64 %.val9.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !17959 ; 2 uses
  %i.fi = load i64, ptr %i.ba, align 8, !alias.scope !17960, !noalias !17961, !noundef !4
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.al, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i", !prof !8

bb.al:                                            ; preds = %bb.ak
  %i.fk = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hfdd0c5005aa42080E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.461.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i" unwind label %bb.au, !noalias !17958 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i": ; preds = %bb.al, %bb.ak
  %.val.i.i136.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !17962, !noalias !17963, !nonnull !4, !noundef !4 ; 8 uses
  %.val7.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !17962, !noalias !17963, !noundef !4 ; 4 uses
  %i.fl = lshr i64 %i.fh, 57
  %i.fm = trunc nuw nsw i64 %i.fl to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i"
  %.pn.i.i.i.i.i.i = phi i64 [ %i.fh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i" ], [ %i.gm, %bb.ao ]
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i, %bb.ao ]
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i, %bb.ao ]
  %i.fn = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hefa9bdc941c3aba0E.exit.i.i.i.i.i" ], [ %i.gl, %bb.ao ]
  %.sroa.0.017.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %.val7.i.i.i.i.i ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.i136.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.fo, align 1, !noalias !17964 ; 3 uses
  %i.fp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.fq = bitcast <16 x i1> %i.fp to i16          ; 2 uses
  %.not25.i.i.i.i.i.i = icmp eq i16 %i.fq, 0
  br i1 %.not25.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.am, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i.i = phi i16 [ %i.gb, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i" ], [ %i.fq, %bb.am ] ; 3 uses
  %i.fr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i, i1 true)
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = add i64 %.sroa.0.017.i.i.i.i.i.i, %i.fs
  %i.fu = and i64 %i.ft, %.val7.i.i.i.i.i
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [32 x i8], ptr %.val.i.i136.i.i.i, i64 %i.fv ; 3 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !noalias !17965, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7.0.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i", !prof !29

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fy = getelementptr i8, ptr %i.fw, i64 -24
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !noalias !17965, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i, i64 %.sroa.7.0.i.i.i), !alias.scope !17966, !noalias !17965
  %i.fz = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fz, label %bb.ar, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i", !prof !30

._crit_edge.i.i.i.i.i.i:                          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i", %bb.am
  %.not13.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.an, !prof !8

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.thread.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.ga = add i16 %.sroa.05.026.i.i.i.i.i.i, -1
  %i.gb = and i16 %i.ga, %.sroa.05.026.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gc = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, zeroinitializer
  %i.gd = bitcast <16 x i1> %i.gc to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.gd, 0 ; 2 uses
  %i.ge = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gd, i1 true)
  %i.gf = zext nneg i16 %i.ge to i64
  %.sroa.6.0.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i, i64 undef, i64 %i.gf
  %i.gg = add i64 %.sroa.6.0.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i
  %i.gh = and i64 %i.gg, %.val7.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i, label %bb.ao, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i = phi i64 [ %i.gh, %bb.an ], [ %.sroa.6.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.gi = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.gj = bitcast <16 x i1> %i.gi to i16
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %bb.ao, label %bb.ap, !prof !8

bb.ao:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.an
  %.sroa.01.122.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i ], [ 0, %bb.an ]
  %.sroa.6.120.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ undef, %bb.an ]
  %i.gl = add i64 %i.fn, 16                       ; 2 uses
  %i.gm = add i64 %i.gl, %.sroa.0.017.i.i.i.i.i.i
  br label %bb.am

bb.ap:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.i.i136.i.i.i, i64 %.sroa.6.121.i.i.i.i.i.i
  %i.go = load i8, ptr %i.gn, align 1, !noalias !17967, !noundef !4 ; 2 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %bb.aq, label %bb.at, !prof !8

bb.aq:                                            ; preds = %bb.ap
  %.val2.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i136.i.i.i, align 16, !noalias !17967
  %i.gq = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i, zeroinitializer
  %i.gr = bitcast <16 x i1> %i.gq to i16          ; 2 uses
  %i.gs = icmp ne i16 %i.gr, 0
  call void @llvm.assume(i1 %i.gs)
  %i.gt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gr, i1 true)
  %i.gu = zext nneg i16 %i.gt to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i136.i.i.i, i64 %i.gu
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !17968
  br label %bb.at

bb.ar:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc5c30cfd8a62ec0cE.exit.i.i.i.i.i"
  %i.gv = getelementptr inbounds i8, ptr %i.fw, i64 -8
  store i64 %.sroa.13.1.i.i.i, ptr %i.gv, align 8, !noalias !17958
  br i1 %i.fe, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.sroa.7.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17969
  br label %bb.aw

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.gw = phi i8 [ %.pre.i.i.i.i, %bb.aq ], [ %i.go, %bb.ap ]
  %.sroa.3.0.i.ph.i.i.i.i.i = phi i64 [ %i.gu, %bb.aq ], [ %.sroa.6.121.i.i.i.i.i.i, %bb.ap ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17970)
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i136.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i
  %i.gy = and i8 %i.gw, 1
  %i.gz = zext nneg i8 %i.gy to i64
  %i.ha = add i64 %.sroa.3.0.i.ph.i.i.i.i.i, -16
  %i.hb = and i64 %i.ha, %.val7.i.i.i.i.i
  store i8 %i.fm, ptr %i.gx, align 1, !noalias !17968
  %i.hc = getelementptr i8, ptr %.val.i.i136.i.i.i, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  store i8 %i.fm, ptr %i.hd, align 1, !noalias !17968
  %i.he = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !17971, !noalias !17972
  %i.hf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gz, i64 0
  %i.hg = sub <2 x i64> %i.he, %i.hf
  store <2 x i64> %i.hg, ptr %i.ba, align 8, !alias.scope !17971, !noalias !17972
  %i.hh = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i
  %i.hi = getelementptr inbounds [32 x i8], ptr %.val.i.i136.i.i.i, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !17973
  %.sroa.4.0..sroa_idx.i137.i.i.i = getelementptr inbounds i8, ptr %i.hi, i64 -8
  store i64 %.sroa.13.1.i.i.i, ptr %.sroa.4.0..sroa_idx.i137.i.i.i, align 8, !noalias !17974
  br label %bb.aw

bb.au:                                            ; preds = %bb.al
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fe, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.sroa.7.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17975
  br label %.body.i.i.i

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17918
  %i.hl = icmp eq i64 %i.cp, 0
  br i1 %i.hl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit140.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !17976
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit140.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit140.i.i.i": ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17918
  br label %bb.g

bb.ay:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !17918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17918
end_hunk_5
begin_hunk_6_@_ZN6procfs7modules17he29a382cb37bd9fdE:bb.a
  %.sroa.6366.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %.sroa.6366.0..sroa_idx.i.i.i, align 8, !noalias !18960
  %.sroa.7367.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.7367.0..sroa_idx.i.i.i, align 8, !noalias !18960
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.cq unwind label %bb.m, !noalias !18942

bb.r:                                             ; preds = %bb.p
  store ptr %i.cx, ptr %i.ap, align 8, !noalias !18942
  store i64 %i.cy, ptr %i.by, align 8, !noalias !18942
  switch i64 %i.cy, label %bb.t [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i"
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cz = load i8, ptr %i.cx, align 1, !alias.scope !18961, !noalias !18942, !noundef !4
  switch i8 %i.cz, label %.lr.ph.split.us.i.i.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i"
  ]

bb.t:                                             ; preds = %bb.r
  %.pr.i.i.i.i = load i8, ptr %i.cx, align 1, !alias.scope !18961, !noalias !18942
  %cond.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 43
  br i1 %cond.i.i.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %i.db = add i64 %i.cy, -1                       ; 2 uses
  %i.dc = icmp ult i64 %i.cy, 10
  br i1 %i.dc, label %.lr.ph.split.us.i.i.i.i.preheader, label %.preheader75.i.i.i.i

.preheader75.i.i.i.i:                             ; preds = %bb.x, %bb.u
  %.sroa.16.0.ph.i.i.i.i = phi i64 [ %i.cy, %bb.x ], [ %i.db, %bb.u ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i = phi ptr [ %i.cx, %bb.x ], [ %i.da, %bb.u ]
  %.not.us.i.i.i.i566 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i, 0
  br i1 %.not.us.i.i.i.i566, label %.loopexit.i.i.i.i, label %.lr.ph

.preheader75.split.us.i.i.i.i:                    ; preds = %bb.w
  %.not.us.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.us.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75.i.i.i.i, %.preheader75.split.us.i.i.i.i
  %.sroa.03.0.us.i.i.i.i569 = phi ptr [ %i.dd, %.preheader75.split.us.i.i.i.i ], [ %.sroa.03.0.ph.i.i.i.i, %.preheader75.i.i.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i.i.i568 = phi i64 [ %i.de, %.preheader75.split.us.i.i.i.i ], [ %.sroa.16.0.ph.i.i.i.i, %.preheader75.i.i.i.i ]
  %.sroa.019.0.us.i.i.i.i567 = phi i32 [ %i.dm, %.preheader75.split.us.i.i.i.i ], [ 0, %.preheader75.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.us.i.i.i.i569, i64 1
  %i.de = add i64 %.sroa.16.0.us.i.i.i.i568, -1   ; 2 uses
  %i.df = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.us.i.i.i.i567, i32 10) ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.df, 0       ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.df, 1
  %i.di = load i8, ptr %.sroa.03.0.us.i.i.i.i569, align 1, !alias.scope !18961, !noalias !18942, !noundef !4 ; 2 uses
  br i1 %i.dh, label %.split.us.i.i.i.i, label %bb.v, !prof !8

bb.v:                                             ; preds = %.lr.ph
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.w, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i"

bb.w:                                             ; preds = %bb.v
  %i.dm = add i32 %i.dk, %i.dg                    ; 3 uses
  %.not66.us.i.i.i.i = icmp ult i32 %i.dm, %i.dg
  br i1 %.not66.us.i.i.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i", label %.preheader75.split.us.i.i.i.i

bb.x:                                             ; preds = %bb.t
  %i.dn = icmp ult i64 %i.cy, 9
  br i1 %i.dn, label %.lr.ph.split.us.i.i.i.i.preheader, label %.preheader75.i.i.i.i

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %bb.x, %bb.u, %bb.s
  %.sroa.03.188.us.i.i.i.i.ph = phi ptr [ %i.da, %bb.u ], [ %i.cx, %bb.x ], [ %i.cx, %bb.s ]
  %.sroa.16.187.us.i.i.i.i.ph = phi i64 [ %i.db, %bb.u ], [ %i.cy, %bb.x ], [ 1, %bb.s ]
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.y
  %.sroa.03.188.us.i.i.i.i = phi ptr [ %i.du, %bb.y ], [ %.sroa.03.188.us.i.i.i.i.ph, %.lr.ph.split.us.i.i.i.i.preheader ] ; 2 uses
  %.sroa.16.187.us.i.i.i.i = phi i64 [ %i.dt, %bb.y ], [ %.sroa.16.187.us.i.i.i.i.ph, %.lr.ph.split.us.i.i.i.i.preheader ]
  %.sroa.019.186.us.i.i.i.i = phi i32 [ %i.dv, %bb.y ], [ 0, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.do = load i8, ptr %.sroa.03.188.us.i.i.i.i, align 1, !alias.scope !18961, !noalias !18942, !noundef !4
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nsw i32 %i.dp, -48                  ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 10
  br i1 %i.dr, label %bb.y, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i"

bb.y:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ds = mul i32 %.sroa.019.186.us.i.i.i.i, 10
  %i.dt = add nsw i64 %.sroa.16.187.us.i.i.i.i, -1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.188.us.i.i.i.i, i64 1
  %i.dv = add i32 %i.dq, %i.ds                    ; 2 uses
  %.not67.us.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not67.us.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.preheader75.split.us.i.i.i.i, %bb.y, %.preheader75.i.i.i.i
  %.sroa.019.2.i.i.i.i = phi i32 [ %i.dv, %bb.y ], [ 0, %.preheader75.i.i.i.i ], [ %i.dm, %.preheader75.split.us.i.i.i.i ]
  %i.dw = zext i32 %.sroa.019.2.i.i.i.i to i64
  %i.dx = shl nuw i64 %i.dw, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i"

.split.us.i.i.i.i:                                ; preds = %.lr.ph
  %i.dy = add i8 %i.di, -48
  %i.dz = icmp ult i8 %i.dy, 10
  %spec.select.i.i.i.i = select i1 %i.dz, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i": ; preds = %.split.us.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.8.0.insert.insert.i.i.i.i = phi i64 [ %i.dx, %.loopexit.i.i.i.i ], [ %spec.select.i.i.i.i, %.split.us.i.i.i.i ] ; 3 uses
  %.sroa.6251.0.extract.shift.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i.i, 32
  %.sroa.6251.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6251.0.extract.shift.i.i.i to i32
  %i.ea = trunc i64 %.sroa.8.0.insert.insert.i.i.i.i to i1
  br i1 %i.ea, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i", label %bb.z

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i.i.i": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i", %bb.s, %bb.s, %bb.r, %bb.w, %bb.v, %.lr.ph.split.us.i.i.i.i
  %.sroa.8.0.insert.insert.i469.i.i.i = phi i64 [ 257, %bb.v ], [ 257, %.lr.ph.split.us.i.i.i.i ], [ 513, %bb.w ], [ 1, %bb.r ], [ 257, %bb.s ], [ 257, %bb.s ], [ %.sroa.8.0.insert.insert.i.i.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i" ]
  %.sroa.4249.0.extract.shift.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i469.i.i.i, 8
  %.sroa.4249.0.extract.trunc.i.i.i = trunc i64 %.sroa.4249.0.extract.shift.i.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !18942
  store i8 %.sroa.4249.0.extract.trunc.i.i.i, ptr %i.am, align 1, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !18942
  store ptr %i.ap, ptr %i.ai, align 8, !noalias !18942
  %.sroa.4178.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.4178.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18962
  store ptr @529, ptr %i.o, align 8, !noalias !18963
  %.sroa.4376.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 2, ptr %.sroa.4376.0..sroa_idx.i.i.i, align 8, !noalias !18963
  %.sroa.5377.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ai, ptr %.sroa.5377.0..sroa_idx.i.i.i, align 8, !noalias !18963
  %.sroa.6378.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %.sroa.6378.0..sroa_idx.i.i.i, align 8, !noalias !18963
  %.sroa.7379.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.7379.0..sroa_idx.i.i.i, align 8, !noalias !18963
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.cl unwind label %bb.m, !noalias !18942

bb.z:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !18942
  %i.eb = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h175cc59bda92894dE(ptr noalias noundef align 8 dereferenceable(64) %i.as) ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0      ; 8 uses
  %.not262.i.i.i = icmp eq ptr %i.ec, null
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1      ; 9 uses
  br i1 %.not262.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !18942
  store ptr %i.a, ptr %i.ae, align 8, !noalias !18942
  %.sroa.4194.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4194.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !18964
  store ptr @3, ptr %i.n, align 8, !noalias !18965
  %.sroa.4382.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.4382.0..sroa_idx.i.i.i, align 8, !noalias !18965
  %.sroa.5383.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ae, ptr %.sroa.5383.0..sroa_idx.i.i.i, align 8, !noalias !18965
  %.sroa.6384.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6384.0..sroa_idx.i.i.i, align 8, !noalias !18965
  %.sroa.7385.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7385.0..sroa_idx.i.i.i, align 8, !noalias !18965
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.ck unwind label %bb.m, !noalias !18942

bb.ab:                                            ; preds = %bb.z
  store ptr %i.ec, ptr %i.ag, align 8, !noalias !18942
  store i64 %i.ed, ptr %i.bz, align 8, !noalias !18942
  switch i64 %i.ed, label %thread-pre-split.i.i.i.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread.i.i.i"
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load i8, ptr %i.ec, align 1, !alias.scope !18966, !noalias !18942, !noundef !4 ; 2 uses
  switch i8 %i.ee, label %bb.ad [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread.i.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread.i.i.i"
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.ab
  %.pr.i291.i.i.i = load i8, ptr %i.ec, align 1, !alias.scope !18966, !noalias !18942
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.ac
  %i.ef = phi i8 [ %.pr.i291.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.ee, %bb.ac ]
  switch i8 %i.ef, label %bb.aj [
    i8 43, label %bb.ae
    i8 45, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 2 uses
  %i.eh = add i64 %i.ed, -1                       ; 3 uses
  %i.ei = icmp ult i64 %i.ed, 9
  br i1 %i.ei, label %.preheader.i290.i.i.i, label %.preheader102.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 2 uses
  %i.ek = add i64 %i.ed, -1                       ; 3 uses
  %i.el = icmp ult i64 %i.ed, 9
  %.not91118.i.i.i.i = icmp eq i64 %i.ek, 0       ; 2 uses
  br i1 %i.el, label %.preheader105.i.i.i.i, label %.preheader108.i.i.i.i.preheader

.preheader108.i.i.i.i.preheader:                  ; preds = %bb.af
  br i1 %.not91118.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph574

.preheader105.i.i.i.i:                            ; preds = %bb.af
  br i1 %.not91118.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph.i288.i.i.i

bb.ag:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i579, i64 1
  %i.en = add i64 %.sroa.27.0.i.i.i.i578, -1      ; 2 uses
  %i.eo = extractvalue { i32, i1 } %i.fu, 0       ; 2 uses
  %.not92.i.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not92.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph580

.preheader108.i.i.i.i:                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i573, i64 1
  %i.eq = add i64 %.sroa.27.2.i.i.i.i572, -1      ; 2 uses
  %i.er = extractvalue { i32, i1 } %i.fb, 0       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph574

.loopexit.i287.i.i.i:                             ; preds = %.preheader108.i.i.i.i, %bb.ai, %bb.ag, %bb.al, %.preheader108.i.i.i.i.preheader, %.preheader102.i.i.i.i, %.preheader.i290.i.i.i, %.preheader105.i.i.i.i
  %.sroa.033.3.i.i.i.i = phi i32 [ %i.fl, %bb.ai ], [ %i.gd, %bb.al ], [ %i.eo, %bb.ag ], [ 0, %.preheader.i290.i.i.i ], [ 0, %.preheader105.i.i.i.i ], [ 0, %.preheader102.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ], [ %i.er, %.preheader108.i.i.i.i ]
  %i.es = zext i32 %.sroa.033.3.i.i.i.i to i64
  %i.et = shl nuw i64 %i.es, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"

.lr.ph574:                                        ; preds = %.preheader108.i.i.i.i.preheader, %.preheader108.i.i.i.i
  %.sroa.03.2.i.i.i.i573 = phi ptr [ %i.ep, %.preheader108.i.i.i.i ], [ %i.ej, %.preheader108.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i572 = phi i64 [ %i.eq, %.preheader108.i.i.i.i ], [ %i.ek, %.preheader108.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i571 = phi i32 [ %i.er, %.preheader108.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ]
  %i.eu = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i571, i32 10) ; 2 uses
  %i.ev = extractvalue { i32, i1 } %i.eu, 1
  %i.ew = load i8, ptr %.sroa.03.2.i.i.i.i573, align 1, !alias.scope !18966, !noalias !18942, !noundef !4
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -48                  ; 2 uses
  %i.ez = icmp ugt i32 %i.ey, 9                   ; 2 uses
  %brmerge.i.i.i.i = select i1 %i.ez, i1 true, i1 %i.ev
  br i1 %brmerge.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph574
  %i.fa = extractvalue { i32, i1 } %i.eu, 0
  %i.fb = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.fa, i32 %i.ey) ; 2 uses
  %i.fc = extractvalue { i32, i1 } %i.fb, 1
  br i1 %i.fc, label %.loopexit101.i.i.i.i, label %.preheader108.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i:          ; preds = %.lr.ph580
  %.mux97.le.i.i.i.i = select i1 %i.fs, i64 256, i64 512
  br label %.loopexit101.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i:          ; preds = %.lr.ph574
  %.mux.le.i.i.i.i = select i1 %i.ez, i64 256, i64 768
  br label %.loopexit101.i.i.i.i

.loopexit101.i.i.i.i:                             ; preds = %bb.ah, %.lr.ph.i288.i.i.i, %bb.ak, %.lr.ph129.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i
  %.sroa.12.2.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i ], [ 512, %bb.ak ], [ 256, %.lr.ph.i288.i.i.i ], [ %.mux97.le.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i ], [ %.mux.le.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i ], [ 768, %bb.ah ]
  %i.fd = or disjoint i64 %.sroa.12.2.i.i.i.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"

.lr.ph.i288.i.i.i:                                ; preds = %.preheader105.i.i.i.i, %bb.ai
  %.sroa.03.3121.i.i.i.i = phi ptr [ %i.fk, %bb.ai ], [ %i.ej, %.preheader105.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i = phi i64 [ %i.fj, %bb.ai ], [ %i.ek, %.preheader105.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i = phi i32 [ %i.fl, %bb.ai ], [ 0, %.preheader105.i.i.i.i ]
  %i.fe = load i8, ptr %.sroa.03.3121.i.i.i.i, align 1, !alias.scope !18966, !noalias !18942, !noundef !4
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48                  ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.ai, label %.loopexit101.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i288.i.i.i
  %i.fi = mul i32 %.sroa.033.4119.i.i.i.i, 10
  %i.fj = add nsw i64 %.sroa.27.3120.i.i.i.i, -1  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i, i64 1
  %i.fl = sub i32 %i.fi, %i.fg                    ; 2 uses
  %.not91.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not91.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph.i288.i.i.i

bb.aj:                                            ; preds = %bb.ad
  %i.fm = icmp ult i64 %i.ed, 8
  br i1 %i.fm, label %.lr.ph129.i.i.i.i.preheader, label %.preheader102.i.i.i.i

.lr.ph129.i.i.i.i.preheader:                      ; preds = %.preheader.i290.i.i.i, %bb.aj
  %.sroa.03.1128.i.i.i.i.ph = phi ptr [ %i.ec, %bb.aj ], [ %i.eg, %.preheader.i290.i.i.i ]
  %.sroa.27.1127.i.i.i.i.ph = phi i64 [ %i.ed, %bb.aj ], [ %i.eh, %.preheader.i290.i.i.i ]
  br label %.lr.ph129.i.i.i.i

.preheader102.i.i.i.i:                            ; preds = %bb.aj, %bb.ae
  %.sroa.27.0.ph.i.i.i.i = phi i64 [ %i.ed, %bb.aj ], [ %i.eh, %bb.ae ] ; 2 uses
  %.sroa.03.0.ph.i289.i.i.i = phi ptr [ %i.ec, %bb.aj ], [ %i.eg, %bb.ae ]
  %.not92.i.i.i.i576 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i, 0
  br i1 %.not92.i.i.i.i576, label %.loopexit.i287.i.i.i, label %.lr.ph580

.preheader.i290.i.i.i:                            ; preds = %bb.ae
  %.not93125.i.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not93125.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph129.i.i.i.i.preheader

.lr.ph580:                                        ; preds = %.preheader102.i.i.i.i, %bb.ag
  %.sroa.03.0.i.i.i.i579 = phi ptr [ %i.em, %bb.ag ], [ %.sroa.03.0.ph.i289.i.i.i, %.preheader102.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i578 = phi i64 [ %i.en, %bb.ag ], [ %.sroa.27.0.ph.i.i.i.i, %.preheader102.i.i.i.i ]
  %.sroa.033.0.i.i.i.i577 = phi i32 [ %i.eo, %bb.ag ], [ 0, %.preheader102.i.i.i.i ]
  %i.fn = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i577, i32 10) ; 2 uses
  %i.fo = extractvalue { i32, i1 } %i.fn, 1
  %i.fp = load i8, ptr %.sroa.03.0.i.i.i.i579, align 1, !alias.scope !18966, !noalias !18942, !noundef !4
  %i.fq = zext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, -48                  ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, 9                   ; 2 uses
  %brmerge96.i.i.i.i = select i1 %i.fs, i1 true, i1 %i.fo
  br i1 %brmerge96.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph580
  %i.ft = extractvalue { i32, i1 } %i.fn, 0
  %i.fu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ft, i32 %i.fr) ; 2 uses
  %i.fv = extractvalue { i32, i1 } %i.fu, 1
  br i1 %i.fv, label %.loopexit101.i.i.i.i, label %bb.ag

.lr.ph129.i.i.i.i:                                ; preds = %.lr.ph129.i.i.i.i.preheader, %bb.al
  %.sroa.03.1128.i.i.i.i = phi ptr [ %i.gc, %bb.al ], [ %.sroa.03.1128.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i = phi i64 [ %i.gb, %bb.al ], [ %.sroa.27.1127.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i = phi i32 [ %i.gd, %bb.al ], [ 0, %.lr.ph129.i.i.i.i.preheader ]
  %i.fw = load i8, ptr %.sroa.03.1128.i.i.i.i, align 1, !alias.scope !18966, !noalias !18942, !noundef !4
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add nsw i32 %i.fx, -48                  ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 10
  br i1 %i.fz, label %bb.al, label %.loopexit101.i.i.i.i

bb.al:                                            ; preds = %.lr.ph129.i.i.i.i
  %i.ga = mul i32 %.sroa.033.1126.i.i.i.i, 10
  %i.gb = add nsw i64 %.sroa.27.1127.i.i.i.i, -1  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i, i64 1
  %i.gd = add i32 %i.fy, %i.ga                    ; 2 uses
  %.not93.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not93.i.i.i.i, label %.loopexit.i287.i.i.i, label %.lr.ph129.i.i.i.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i": ; preds = %.loopexit101.i.i.i.i, %.loopexit.i287.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i = phi i64 [ %i.et, %.loopexit.i287.i.i.i ], [ %i.fd, %.loopexit101.i.i.i.i ] ; 3 uses
  %.sroa.6255.0.extract.shift.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i, 32
  %.sroa.6255.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6255.0.extract.shift.i.i.i to i32
  %i.ge = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i to i1
  br i1 %i.ge, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread.i.i.i", label %bb.am

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread.i.i.i": ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i", %bb.ac, %bb.ac, %bb.ab
  %.sroa.12.0.insert.insert.i473.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i" ], [ 257, %bb.ac ], [ 257, %bb.ac ], [ 1, %bb.ab ]
  %.sroa.4253.0.extract.shift.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i473.i.i.i, 8
  %.sroa.4253.0.extract.trunc.i.i.i = trunc i64 %.sroa.4253.0.extract.shift.i.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !18942
  store i8 %.sroa.4253.0.extract.trunc.i.i.i, ptr %i.ad, align 1, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !18942
  store ptr %i.ag, ptr %i.z, align 8, !noalias !18942
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18967
  store ptr @699, ptr %i.m, align 8, !noalias !18968
  %.sroa.4394.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 2, ptr %.sroa.4394.0..sroa_idx.i.i.i, align 8, !noalias !18968
  %.sroa.5395.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.z, ptr %.sroa.5395.0..sroa_idx.i.i.i, align 8, !noalias !18968
  %.sroa.6396.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.6396.0..sroa_idx.i.i.i, align 8, !noalias !18968
  %.sroa.7397.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7397.0..sroa_idx.i.i.i, align 8, !noalias !18968
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.cf unwind label %bb.m, !noalias !18942

bb.am:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18942
  %i.gf = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h175cc59bda92894dE(ptr noalias noundef align 8 dereferenceable(64) %i.as) ; 2 uses
  %i.gg = extractvalue { ptr, i64 } %i.gf, 0      ; 3 uses
  %.not264.i.i.i = icmp eq ptr %i.gg, null
  %i.gh = extractvalue { ptr, i64 } %i.gf, 1      ; 4 uses
  br i1 %.not264.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18942
  store ptr %i.a, ptr %i.w, align 8, !noalias !18942
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18969
  store ptr @3, ptr %i.l, align 8, !noalias !18970
  %.sroa.4400.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %.sroa.4400.0..sroa_idx.i.i.i, align 8, !noalias !18970
  %.sroa.5401.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.w, ptr %.sroa.5401.0..sroa_idx.i.i.i, align 8, !noalias !18970
  %.sroa.6402.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.6402.0..sroa_idx.i.i.i, align 8, !noalias !18970
  %.sroa.7403.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.7403.0..sroa_idx.i.i.i, align 8, !noalias !18970
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.ce unwind label %bb.m, !noalias !18942

bb.ao:                                            ; preds = %bb.am
  %i.gi = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h175cc59bda92894dE(ptr noalias noundef align 8 dereferenceable(64) %i.as) ; 2 uses
  %i.gj = extractvalue { ptr, i64 } %i.gi, 0      ; 2 uses
  %.not266.i.i.i = icmp eq ptr %i.gj, null        ; 2 uses
  %i.gk = extractvalue { ptr, i64 } %i.gi, 1
  %.sroa.7114.0.i.i.i = select i1 %.not266.i.i.i, i64 undef, i64 %i.gk ; 7 uses
  br i1 %.not266.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18942
  store ptr %i.a, ptr %i.u, align 8, !noalias !18942
  %.sroa.4226.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4226.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18971
  store ptr @3, ptr %i.k, align 8, !noalias !18972
  %.sroa.4406.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %.sroa.4406.0..sroa_idx.i.i.i, align 8, !noalias !18972
  %.sroa.5407.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.u, ptr %.sroa.5407.0..sroa_idx.i.i.i, align 8, !noalias !18972
  %.sroa.6408.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %.sroa.6408.0..sroa_idx.i.i.i, align 8, !noalias !18972
  %.sroa.7409.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.7409.0..sroa_idx.i.i.i, align 8, !noalias !18972
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.cd unwind label %bb.m, !noalias !18942

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18942
  %i.gl = icmp slt i64 %.sroa.716.0.i.i.i, 0
  br i1 %i.gl, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %i.gm = icmp eq i64 %.sroa.716.0.i.i.i, 0       ; 2 uses
  br i1 %i.gm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i300.thread.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i300.thread.i.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.t, align 8, !noalias !18942
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4442.0..sroa_idx.i.i.i, align 8, !noalias !18942
  store i64 0, ptr %.sroa.5443.0..sroa_idx.i.i.i, align 8, !noalias !18942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18942
end_hunk_6
begin_hunk_7_@_ZN6procfs7process7Process13new_with_root17h077a2d07b3077e5dE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %.val43
  store i8 0, ptr %i.ak, align 1, !noalias !20039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20039
  %i.al = add nuw nsw i64 %.val43, 1
  invoke void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hd9d3fcb195341c68E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, i64 noundef %i.al)
          to label %.noexc47 unwind label %bb.d

.noexc47:                                         ; preds = %bb.f
  %i.am = load i64, ptr %i.j, align 8, !range !18, !noalias !20039, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %.thread206, label %bb.h

bb.g:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..result..Result$LT$procfs..sys..kernel..Version$C$procfs_core..ProcError$GT$$GT$17hd111a6a994d60a99E.exit"
  %i.ao = invoke fastcc i64 @_ZN6rustix4path3arg20with_c_str_slow_path17h6ddf3e3323f44534E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val42, i64 noundef %.val43, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc48 unwind label %bb.d

.thread206:                                       ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.m

bb.h:                                             ; preds = %.noexc47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !20039, !nonnull !4, !align !5, !noundef !4
  %.val.i.i.i.i = load i32, ptr %i.o, align 4, !range !12, !noalias !20041, !noundef !4
  %i.ar = load i32, ptr %i.n, align 4, !noalias !20041, !noundef !4
  %i.as = load i32, ptr %i.m, align 4, !noalias !20041, !noundef !4
  %i.at = or i32 %i.ar, 32768
  %i.au = zext i32 %.val.i.i.i.i to i64
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = zext i32 %i.at to i64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = zext i32 %i.as to i64
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 257 to ptr), ptr %i.av, ptr nonnull readonly align 1 %i.aq, ptr nonnull %i.ax, ptr %i.az) #42, !noalias !20042, !srcloc !31
  %i.bb = extractvalue { ptr, i32, i32 } %i.ba, 0 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = icmp slt ptr %i.bb, null
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = and i64 %i.bc, 4294967295
  %.not.i.i.i.i.i = icmp eq i64 %i.be, 4294967295
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l, !prof !32

bb.j:                                             ; preds = %bb.h
  %i.bf = shl i64 %i.bc, 16
  %i.bg = and i64 %i.bf, 4294901760
  %i.bh = or disjoint i64 %i.bg, 1
  br label %"_ZN6rustix2fs2at6openat28_$u7b$$u7b$closure$u7d$$u7d$17h587573af082717a0E.exit.i.i.i"

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @644, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @692) #43
          to label %.noexc49 unwind label %bb.d

.noexc49:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.bi = shl i64 %i.bc, 32
  br label %"_ZN6rustix2fs2at6openat28_$u7b$$u7b$closure$u7d$$u7d$17h587573af082717a0E.exit.i.i.i"

"_ZN6rustix2fs2at6openat28_$u7b$$u7b$closure$u7d$$u7d$17h587573af082717a0E.exit.i.i.i": ; preds = %bb.l, %bb.j
  %.sroa.3.0.insert.insert.i.i.i.i.i = phi i64 [ %i.bh, %bb.j ], [ %i.bi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20039
  br label %.noexc48

.noexc48:                                         ; preds = %bb.g, %"_ZN6rustix2fs2at6openat28_$u7b$$u7b$closure$u7d$$u7d$17h587573af082717a0E.exit.i.i.i"
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.3.0.insert.insert.i.i.i.i.i, %"_ZN6rustix2fs2at6openat28_$u7b$$u7b$closure$u7d$$u7d$17h587573af082717a0E.exit.i.i.i" ], [ %i.ao, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bj = trunc i64 %.sroa.4.0.i.i.i to i1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread206, %.noexc48
  %.sroa.4.0.i.i.i210 = phi i64 [ 4293525504, %.thread206 ], [ %.sroa.4.0.i.i.i, %.noexc48 ]
  %.sroa.4.0.insert.ext.i.i.i = shl i64 %.sroa.4.0.i.i.i210, 32 ; 2 uses
  %i.bk = ashr i64 %.sroa.4.0.insert.ext.i.i.i, 48
  %.neg.i = mul nsw i64 %i.bk, -4294967296
  %i.bl = or disjoint i64 %.neg.i, 2
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.bm)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.bm)
          to label %"_ZN6rustix2io5errno51_$LT$impl$u20$rustix..backend..io..errno..Errno$GT$4kind17h843bd2255c18e401E.exit" unwind label %bb.d

bb.n:                                             ; preds = %.noexc48
  %.sroa.534.0.extract.shift = lshr i64 %.sroa.4.0.i.i.i, 32
  %.sroa.534.0.extract.trunc = trunc nuw i64 %.sroa.534.0.extract.shift to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val42, i64 noundef %.val43)
          to label %bb.o unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n, %bb.o, %bb.p, %bb.ac, %bb.ad, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i", %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.ek, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i" ], [ %i.ek, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bo = call noundef i32 @close(i32 noundef %.sroa.534.0.extract.trunc) #42 ; 0 uses
  br label %bb.bb

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20043
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4572b55af0ad8c6bE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %bb.o
  %i.bp = load i8, ptr %i.i, align 8, !range !20044, !noalias !20043, !noundef !4 ; 2 uses
  %.not2.i = icmp eq i8 %i.bp, 10
  br i1 %.not2.i, label %.loopexit121.thread, label %.lr.ph.i.preheader

.loopexit121.thread:                              ; preds = %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread93

.lr.ph.i.preheader:                               ; preds = %.noexc52
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc53
  %.sroa.085.0.copyload = phi i8 [ %i.bp, %.lr.ph.i.preheader ], [ %i.bq, %.noexc53 ]
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20043 ; 2 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !20043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20043
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4572b55af0ad8c6bE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %.lr.ph.i
  %i.bq = load i8, ptr %i.i, align 8, !range !20044, !noalias !20043, !noundef !4 ; 2 uses
  %.not.i51 = icmp eq i8 %i.bq, 10
  br i1 %.not.i51, label %.loopexit121, label %.lr.ph.i

.loopexit121:                                     ; preds = %.noexc53
  %i.br = icmp ne i8 %.sroa.085.0.copyload, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not37107 = icmp eq ptr %.sroa.7.0.copyload, null
  %.not37 = select i1 %i.br, i1 true, i1 %.not37107
  br i1 %.not37, label %.thread93, label %bb.p

bb.p:                                             ; preds = %.loopexit121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20045
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.p
  %i.bs = load i64, ptr %i.h, align 8, !range !10, !noalias !20045, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !20045 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !20045 ; 8 uses
  switch i64 %i.bw, label %thread-pre-split.i.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %.noexc55
  %i.bx = load i8, ptr %i.bu, align 1, !alias.scope !20046, !noundef !4 ; 2 uses
  switch i8 %i.bx, label %bb.r [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
  ]

thread-pre-split.i.i:                             ; preds = %.noexc55
  %.pr.i.i = load i8, ptr %i.bu, align 1, !alias.scope !20046
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i, %bb.q
  %i.by = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bx, %bb.q ]
  switch i8 %i.by, label %bb.x [
    i8 43, label %bb.s
    i8 45, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.ca = add i64 %i.bw, -1                       ; 3 uses
  %i.cb = icmp ult i64 %i.bw, 9
  br i1 %i.cb, label %.preheader.i.i, label %.preheader102.i.i

bb.t:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.cd = add i64 %i.bw, -1                       ; 3 uses
  %i.ce = icmp ult i64 %i.bw, 9
  %.not91118.i.i = icmp eq i64 %i.cd, 0           ; 2 uses
  br i1 %i.ce, label %.preheader105.i.i, label %.preheader108.i.i.preheader

.preheader108.i.i.preheader:                      ; preds = %bb.t
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.a

.preheader105.i.i:                                ; preds = %bb.t
  br i1 %.not91118.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i291, i64 1
  %i.cg = add i64 %.sroa.27.0.i.i290, -1          ; 2 uses
  %i.ch = extractvalue { i32, i1 } %i.dn, 0       ; 2 uses
  %.not92.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not92.i.i, label %.loopexit.i.i, label %.lr.ph292

.preheader108.i.i:                                ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i287, i64 1
  %i.cj = add i64 %.sroa.27.2.i.i286, -1          ; 2 uses
  %i.ck = extractvalue { i32, i1 } %i.cu, 0       ; 2 uses
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.a

.loopexit.i.i:                                    ; preds = %.preheader108.i.i, %bb.w, %bb.u, %bb.z, %.preheader108.i.i.preheader, %.preheader102.i.i, %.preheader.i.i, %.preheader105.i.i
  %.sroa.033.3.i.i = phi i32 [ %i.de, %bb.w ], [ %i.dw, %bb.z ], [ %i.ch, %bb.u ], [ 0, %.preheader.i.i ], [ 0, %.preheader105.i.i ], [ 0, %.preheader102.i.i ], [ 0, %.preheader108.i.i.preheader ], [ %i.ck, %.preheader108.i.i ]
  %i.cl = zext i32 %.sroa.033.3.i.i to i64
  %i.cm = shl nuw i64 %i.cl, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"

.lr.ph.a:                                         ; preds = %.preheader108.i.i.preheader, %.preheader108.i.i
  %.sroa.03.2.i.i287 = phi ptr [ %i.ci, %.preheader108.i.i ], [ %i.cc, %.preheader108.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i286 = phi i64 [ %i.cj, %.preheader108.i.i ], [ %i.cd, %.preheader108.i.i.preheader ]
  %.sroa.033.2.i.i285 = phi i32 [ %i.ck, %.preheader108.i.i ], [ 0, %.preheader108.i.i.preheader ]
  %i.cn = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i285, i32 10) ; 2 uses
  %i.co = extractvalue { i32, i1 } %i.cn, 1
  %i.cp = load i8, ptr %.sroa.03.2.i.i287, align 1, !alias.scope !20046, !noundef !4
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, 9                   ; 2 uses
  %brmerge.i.i = select i1 %i.cs, i1 true, i1 %i.co
  br i1 %brmerge.i.i, label %.loopexit110.split.loop.exit116.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.a
  %i.ct = extractvalue { i32, i1 } %i.cn, 0
  %i.cu = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ct, i32 %i.cr) ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 1
  br i1 %i.cv, label %.loopexit101.i.i, label %.preheader108.i.i

.loopexit104.split.loop.exit122.i.i:              ; preds = %.lr.ph292
  %.mux97.le.i.i = select i1 %i.dl, i64 256, i64 512
  br label %.loopexit101.i.i

.loopexit110.split.loop.exit116.i.i:              ; preds = %.lr.ph.a
  %.mux.le.i.i = select i1 %i.cs, i64 256, i64 768
  br label %.loopexit101.i.i

.loopexit101.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i, %bb.y, %.lr.ph129.i.i, %.loopexit110.split.loop.exit116.i.i, %.loopexit104.split.loop.exit122.i.i
  %.sroa.12.2.i.i = phi i64 [ 256, %.lr.ph129.i.i ], [ 512, %bb.y ], [ 256, %.lr.ph.i.i ], [ %.mux97.le.i.i, %.loopexit104.split.loop.exit122.i.i ], [ %.mux.le.i.i, %.loopexit110.split.loop.exit116.i.i ], [ 768, %bb.v ]
  %i.cw = or disjoint i64 %.sroa.12.2.i.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"

.lr.ph.i.i:                                       ; preds = %.preheader105.i.i, %bb.w
  %.sroa.03.3121.i.i = phi ptr [ %i.dd, %bb.w ], [ %i.cc, %.preheader105.i.i ] ; 2 uses
  %.sroa.27.3120.i.i = phi i64 [ %i.dc, %bb.w ], [ %i.cd, %.preheader105.i.i ]
  %.sroa.033.4119.i.i = phi i32 [ %i.de, %bb.w ], [ 0, %.preheader105.i.i ]
  %i.cx = load i8, ptr %.sroa.03.3121.i.i, align 1, !alias.scope !20046, !noundef !4
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.w, label %.loopexit101.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.db = mul i32 %.sroa.033.4119.i.i, 10
  %i.dc = add nsw i64 %.sroa.27.3120.i.i, -1      ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i, i64 1
  %i.de = sub i32 %i.db, %i.cz                    ; 2 uses
  %.not91.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not91.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %bb.r
  %i.df = icmp ult i64 %i.bw, 8
  br i1 %i.df, label %.lr.ph129.i.i.preheader, label %.preheader102.i.i

.lr.ph129.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.x
  %.sroa.03.1128.i.i.ph = phi ptr [ %i.bu, %bb.x ], [ %i.bz, %.preheader.i.i ]
  %.sroa.27.1127.i.i.ph = phi i64 [ %i.bw, %bb.x ], [ %i.ca, %.preheader.i.i ]
  br label %.lr.ph129.i.i

.preheader102.i.i:                                ; preds = %bb.x, %bb.s
  %.sroa.27.0.ph.i.i = phi i64 [ %i.bw, %bb.x ], [ %i.ca, %bb.s ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi ptr [ %i.bu, %bb.x ], [ %i.bz, %bb.s ]
  %.not92.i.i288 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not92.i.i288, label %.loopexit.i.i, label %.lr.ph292

.preheader.i.i:                                   ; preds = %bb.s
  %.not93125.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not93125.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i.preheader

.lr.ph292:                                        ; preds = %.preheader102.i.i, %bb.u
  %.sroa.03.0.i.i291 = phi ptr [ %i.cf, %bb.u ], [ %.sroa.03.0.ph.i.i, %.preheader102.i.i ] ; 2 uses
  %.sroa.27.0.i.i290 = phi i64 [ %i.cg, %bb.u ], [ %.sroa.27.0.ph.i.i, %.preheader102.i.i ]
  %.sroa.033.0.i.i289 = phi i32 [ %i.ch, %bb.u ], [ 0, %.preheader102.i.i ]
  %i.dg = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i289, i32 10) ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 1
  %i.di = load i8, ptr %.sroa.03.0.i.i291, align 1, !alias.scope !20046, !noundef !4
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, 9                   ; 2 uses
  %brmerge96.i.i = select i1 %i.dl, i1 true, i1 %i.dh
  br i1 %brmerge96.i.i, label %.loopexit104.split.loop.exit122.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph292
  %i.dm = extractvalue { i32, i1 } %i.dg, 0
  %i.dn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dm, i32 %i.dk) ; 2 uses
  %i.do = extractvalue { i32, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit101.i.i, label %bb.u

.lr.ph129.i.i:                                    ; preds = %.lr.ph129.i.i.preheader, %bb.z
  %.sroa.03.1128.i.i = phi ptr [ %i.dv, %bb.z ], [ %.sroa.03.1128.i.i.ph, %.lr.ph129.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i = phi i64 [ %i.du, %bb.z ], [ %.sroa.27.1127.i.i.ph, %.lr.ph129.i.i.preheader ]
  %.sroa.033.1126.i.i = phi i32 [ %i.dw, %bb.z ], [ 0, %.lr.ph129.i.i.preheader ]
  %i.dp = load i8, ptr %.sroa.03.1128.i.i, align 1, !alias.scope !20046, !noundef !4
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.z, label %.loopexit101.i.i

bb.z:                                             ; preds = %.lr.ph129.i.i
  %i.dt = mul i32 %.sroa.033.1126.i.i, 10
  %i.du = add nsw i64 %.sroa.27.1127.i.i, -1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i, i64 1
  %i.dw = add i32 %i.dr, %i.dt                    ; 2 uses
  %.not93.i.i = icmp eq i64 %i.du, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph129.i.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i": ; preds = %.loopexit101.i.i, %.loopexit.i.i, %bb.q, %bb.q, %.noexc55
  %.sroa.12.0.insert.insert.i.i = phi i64 [ 1, %.noexc55 ], [ %i.cw, %.loopexit101.i.i ], [ %i.cm, %.loopexit.i.i ], [ 257, %bb.q ], [ 257, %bb.q ] ; 2 uses
  %switch.i = icmp sgt i64 %i.bs, 0
  br i1 %switch.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20047
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i"
  %i.dx = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20045
  br i1 %i.dx, label %.thread93, label %.thread96

.thread93:                                        ; preds = %.loopexit121.thread, %.loopexit121, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 -100, ptr %i.f, align 4, !noalias !20048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20048
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.dy, align 8, !noalias !20048
  store i64 0, ptr %i.e, align 8, !noalias !20049
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !20049
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !20049
  br i1 %i.aj, label %bb.ad, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %.thread93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20050
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %.val42, i64 %.val43, i1 false), !noalias !20051
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %.val43
  store i8 0, ptr %i.dz, align 1, !noalias !20050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20050
  %i.ea = add nuw nsw i64 %.val43, 1
  invoke void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hd9d3fcb195341c68E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.ea)
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ac
  %i.eb = load i64, ptr %i.c, align 8, !range !18, !noalias !20050, !noundef !4
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.thread.i.i, label %bb.ae

bb.ad:                                            ; preds = %.thread93
  invoke fastcc void @_ZN6rustix4path3arg20with_c_str_slow_path17hc18edbd3c160ad52E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val42, i64 noundef %.val43, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.i.i unwind label %.loopexit.split-lp

_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.thread.i.i: ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread102

bb.ae:                                            ; preds = %.noexc58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !20050, !nonnull !4, !align !5, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !20050, !noundef !4
  %.val3.i.i.i.i.i.i = load i32, ptr %i.f, align 4, !range !12, !noalias !20052, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20052
  store i64 0, ptr %i.b, align 8, !noalias !20049
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !20049
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !20049
  invoke void @_ZN6rustix2fs2at11_readlinkat17h041c8269d496bee6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, i32 noundef %.val3.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ee, i64 noundef %i.eg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20050
  br label %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.i.i

_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.i.i: ; preds = %bb.ad, %.noexc60
  %.pr.i.i56 = load ptr, ptr %i.g, align 8        ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.eh = icmp eq ptr %.pr.i.i56, null
  br i1 %i.eh, label %.thread102, label %bb.af

bb.af:                                            ; preds = %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !20053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20053
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pr.i.i56, i64 noundef %i.ej)
          to label %bb.ah unwind label %bb.ag

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.pr.i.i56, i64 noundef %i.ej, i64 noundef 1) #42
  br label %.body

bb.ag:                                            ; preds = %bb.af
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 0, ptr %.pr.i.i56, align 1, !alias.scope !20053
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i.i"

bb.ah:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.a, align 8, !range !10, !noalias !20053, !noundef !4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !20053 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !20053 ; 8 uses
  switch i64 %i.eq, label %thread-pre-split.i.i.i.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.er = load i8, ptr %i.eo, align 1, !alias.scope !20054, !noundef !4 ; 2 uses
  switch i8 %i.er, label %bb.aj [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.ah
  %.pr.i.i.i.i = load i8, ptr %i.eo, align 1, !alias.scope !20054
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.ai
  %i.es = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.er, %bb.ai ]
  switch i8 %i.es, label %bb.ap [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  %i.eu = add i64 %i.eq, -1                       ; 3 uses
  %i.ev = icmp ult i64 %i.eq, 9
  br i1 %i.ev, label %.preheader.i.i.i.i, label %.preheader102.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  %i.ex = add i64 %i.eq, -1                       ; 3 uses
  %i.ey = icmp ult i64 %i.eq, 9
  %.not91118.i.i.i.i = icmp eq i64 %i.ex, 0       ; 2 uses
  br i1 %i.ey, label %.preheader105.i.i.i.i, label %.preheader108.i.i.i.i.preheader

.preheader108.i.i.i.i.preheader:                  ; preds = %bb.al
  br i1 %.not91118.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph298.a

.preheader105.i.i.i.i:                            ; preds = %bb.al
  br i1 %.not91118.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i303, i64 1
  %i.fa = add i64 %.sroa.27.0.i.i.i.i302, -1      ; 2 uses
  %i.fb = extractvalue { i32, i1 } %i.gh, 0       ; 2 uses
  %.not92.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not92.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph304

.preheader108.i.i.i.i:                            ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i297, i64 1
  %i.fd = add i64 %.sroa.27.2.i.i.i.i296, -1      ; 2 uses
  %i.fe = extractvalue { i32, i1 } %i.fo, 0       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph298.a

.loopexit.i.i.i.i:                                ; preds = %.preheader108.i.i.i.i, %bb.ao, %bb.am, %bb.ar, %.preheader108.i.i.i.i.preheader, %.preheader102.i.i.i.i, %.preheader.i.i.i.i, %.preheader105.i.i.i.i
  %.sroa.033.3.i.i.i.i = phi i32 [ %i.fy, %bb.ao ], [ %i.gq, %bb.ar ], [ %i.fb, %bb.am ], [ 0, %.preheader.i.i.i.i ], [ 0, %.preheader105.i.i.i.i ], [ 0, %.preheader102.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ], [ %i.fe, %.preheader108.i.i.i.i ]
  %i.ff = zext i32 %.sroa.033.3.i.i.i.i to i64
  %i.fg = shl nuw i64 %i.ff, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"

.lr.ph298.a:                                      ; preds = %.preheader108.i.i.i.i.preheader, %.preheader108.i.i.i.i
  %.sroa.03.2.i.i.i.i297 = phi ptr [ %i.fc, %.preheader108.i.i.i.i ], [ %i.ew, %.preheader108.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i296 = phi i64 [ %i.fd, %.preheader108.i.i.i.i ], [ %i.ex, %.preheader108.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i295 = phi i32 [ %i.fe, %.preheader108.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.preheader ]
  %i.fh = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i295, i32 10) ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 1
  %i.fj = load i8, ptr %.sroa.03.2.i.i.i.i297, align 1, !alias.scope !20054, !noundef !4
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nsw i32 %i.fk, -48                  ; 2 uses
  %i.fm = icmp ugt i32 %i.fl, 9                   ; 2 uses
  %brmerge.i.i.i.i = select i1 %i.fm, i1 true, i1 %i.fi
  br i1 %brmerge.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph298.a
  %i.fn = extractvalue { i32, i1 } %i.fh, 0
  %i.fo = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.fn, i32 %i.fl) ; 2 uses
  %i.fp = extractvalue { i32, i1 } %i.fo, 1
  br i1 %i.fp, label %.loopexit101.i.i.i.i, label %.preheader108.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i:          ; preds = %.lr.ph304
  %.mux97.le.i.i.i.i = select i1 %i.gf, i64 256, i64 512
  br label %.loopexit101.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i:          ; preds = %.lr.ph298.a
  %.mux.le.i.i.i.i = select i1 %i.fm, i64 256, i64 768
  br label %.loopexit101.i.i.i.i

.loopexit101.i.i.i.i:                             ; preds = %bb.an, %.lr.ph.i.i.i.i, %bb.aq, %.lr.ph129.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i
  %.sroa.12.2.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i ], [ 512, %bb.aq ], [ 256, %.lr.ph.i.i.i.i ], [ %.mux97.le.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i ], [ %.mux.le.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i ], [ 768, %bb.an ]
  %i.fq = or disjoint i64 %.sroa.12.2.i.i.i.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %.preheader105.i.i.i.i, %bb.ao
  %.sroa.03.3121.i.i.i.i = phi ptr [ %i.fx, %bb.ao ], [ %i.ew, %.preheader105.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i = phi i64 [ %i.fw, %bb.ao ], [ %i.ex, %.preheader105.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i = phi i32 [ %i.fy, %bb.ao ], [ 0, %.preheader105.i.i.i.i ]
  %i.fr = load i8, ptr %.sroa.03.3121.i.i.i.i, align 1, !alias.scope !20054, !noundef !4
  %i.fs = zext i8 %i.fr to i32
  %i.ft = add nsw i32 %i.fs, -48                  ; 2 uses
  %i.fu = icmp ult i32 %i.ft, 10
  br i1 %i.fu, label %bb.ao, label %.loopexit101.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fv = mul i32 %.sroa.033.4119.i.i.i.i, 10
  %i.fw = add nsw i64 %.sroa.27.3120.i.i.i.i, -1  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i, i64 1
  %i.fy = sub i32 %i.fv, %i.ft                    ; 2 uses
  %.not91.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not91.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ap:                                            ; preds = %bb.aj
  %i.fz = icmp ult i64 %i.eq, 8
  br i1 %i.fz, label %.lr.ph129.i.i.i.i.preheader, label %.preheader102.i.i.i.i

.lr.ph129.i.i.i.i.preheader:                      ; preds = %.preheader.i.i.i.i, %bb.ap
  %.sroa.03.1128.i.i.i.i.ph = phi ptr [ %i.eo, %bb.ap ], [ %i.et, %.preheader.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.ph = phi i64 [ %i.eq, %bb.ap ], [ %i.eu, %.preheader.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i

.preheader102.i.i.i.i:                            ; preds = %bb.ap, %bb.ak
  %.sroa.27.0.ph.i.i.i.i = phi i64 [ %i.eq, %bb.ap ], [ %i.eu, %bb.ak ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i = phi ptr [ %i.eo, %bb.ap ], [ %i.et, %bb.ak ]
  %.not92.i.i.i.i300 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i, 0
  br i1 %.not92.i.i.i.i300, label %.loopexit.i.i.i.i, label %.lr.ph304

.preheader.i.i.i.i:                               ; preds = %bb.ak
  %.not93125.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not93125.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph129.i.i.i.i.preheader

.lr.ph304:                                        ; preds = %.preheader102.i.i.i.i, %bb.am
  %.sroa.03.0.i.i.i.i303 = phi ptr [ %i.ez, %bb.am ], [ %.sroa.03.0.ph.i.i.i.i, %.preheader102.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i302 = phi i64 [ %i.fa, %bb.am ], [ %.sroa.27.0.ph.i.i.i.i, %.preheader102.i.i.i.i ]
  %.sroa.033.0.i.i.i.i301 = phi i32 [ %i.fb, %bb.am ], [ 0, %.preheader102.i.i.i.i ]
  %i.ga = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i301, i32 10) ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.ga, 1
  %i.gc = load i8, ptr %.sroa.03.0.i.i.i.i303, align 1, !alias.scope !20054, !noundef !4
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ugt i32 %i.ge, 9                   ; 2 uses
  %brmerge96.i.i.i.i = select i1 %i.gf, i1 true, i1 %i.gb
  br i1 %brmerge96.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph304
  %i.gg = extractvalue { i32, i1 } %i.ga, 0
  %i.gh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gg, i32 %i.ge) ; 2 uses
  %i.gi = extractvalue { i32, i1 } %i.gh, 1
  br i1 %i.gi, label %.loopexit101.i.i.i.i, label %bb.am

.lr.ph129.i.i.i.i:                                ; preds = %.lr.ph129.i.i.i.i.preheader, %bb.ar
  %.sroa.03.1128.i.i.i.i = phi ptr [ %i.gp, %bb.ar ], [ %.sroa.03.1128.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i = phi i64 [ %i.go, %bb.ar ], [ %.sroa.27.1127.i.i.i.i.ph, %.lr.ph129.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i = phi i32 [ %i.gq, %bb.ar ], [ 0, %.lr.ph129.i.i.i.i.preheader ]
  %i.gj = load i8, ptr %.sroa.03.1128.i.i.i.i, align 1, !alias.scope !20054, !noundef !4
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, -48                  ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 10
  br i1 %i.gm, label %bb.ar, label %.loopexit101.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph129.i.i.i.i
  %i.gn = mul i32 %.sroa.033.1126.i.i.i.i, 10
  %i.go = add nsw i64 %.sroa.27.1127.i.i.i.i, -1  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i, i64 1
  %i.gq = add i32 %i.gl, %i.gn                    ; 2 uses
  %.not93.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not93.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph129.i.i.i.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i": ; preds = %.loopexit101.i.i.i.i, %.loopexit.i.i.i.i, %bb.ai, %bb.ai, %bb.ah
  %.sroa.12.0.insert.insert.i.i.i.i = phi i64 [ 1, %bb.ah ], [ %i.fq, %.loopexit101.i.i.i.i ], [ %i.fg, %.loopexit.i.i.i.i ], [ 257, %bb.ai ], [ 257, %bb.ai ] ; 2 uses
  %switch.i.i.i = icmp sgt i64 %i.em, 0
  br i1 %switch.i.i.i, label %bb.as, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit16.i.i.i"

bb.as:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20055
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit16.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit16.i.i.i": ; preds = %bb.as, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20053
  store i8 0, ptr %.pr.i.i56, align 1, !alias.scope !20053
  %i.gr = icmp eq i64 %i.ej, 0
  br i1 %i.gr, label %bb.at, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i17.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i17.i.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit16.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.pr.i.i56, i64 noundef %i.ej, i64 noundef 1) #42
  br label %bb.at

.thread102:                                       ; preds = %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.thread.i.i, %_ZN6rustix2fs2at10readlinkat17h767a2f23e8ea9156E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.au

bb.at:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit16.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i17.i.i.i"
  %i.gs = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i to i1
  br i1 %i.gs, label %bb.au, label %.thread96

.thread96:                                        ; preds = %bb.ab, %bb.at
  %.pn1.i101.in.in = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i, %bb.at ], [ %.sroa.12.0.insert.insert.i.i, %bb.ab ]
  %.pn1.i101.in = lshr i64 %.pn1.i101.in.in, 32
  %.pn1.i101 = trunc nuw i64 %.pn1.i101.in to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.534.0.extract.trunc, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.pn1.i101, ptr %.sroa.520.0..sroa_idx, align 4
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit"

bb.au:                                            ; preds = %bb.at, %.thread102
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.gu = call noundef i32 @close(i32 noundef %.sroa.534.0.extract.trunc) #42 ; 0 uses
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit": ; preds = %bb.az, %bb.ay, %bb.au, %.thread96
  ret void

"_ZN6rustix2io5errno51_$LT$impl$u20$rustix..backend..io..errno..Errno$GT$4kind17h843bd2255c18e401E.exit": ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gv = icmp slt i64 %.val43, 0
  br i1 %i.gv, label %bb.av, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %"_ZN6rustix2io5errno51_$LT$impl$u20$rustix..backend..io..errno..Errno$GT$4kind17h843bd2255c18e401E.exit"
  %i.gw = icmp eq i64 %.val43, 0
  br i1 %i.gw, label %bb.aw, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !20056
  %i.gx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val43, i64 noundef range(i64 1, 9) 1) #42, !noalias !20056 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %"_ZN6rustix2io5errno51_$LT$impl$u20$rustix..backend..io..errno..Errno$GT$4kind17h843bd2255c18e401E.exit"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %"_ZN6rustix2io5errno51_$LT$impl$u20$rustix..backend..io..errno..Errno$GT$4kind17h843bd2255c18e401E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val43, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.noexc62 unwind label %bb.d

.noexc62:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.gx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val42, i64 %.val43, i1 false), !noalias !20057
  %sext = ashr exact i64 %.sroa.4.0.insert.ext.i.i.i, 16
  %i.gz = and i64 %sext, -4294967296
  %i.ha = sub nsw i64 2, %i.gz
  %i.hb = inttoptr i64 %i.ha to ptr
  store i64 %.val43, ptr %i.s, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val43, ptr %.sroa.582.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h365738bce7e2a18cE(i8 noundef %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %bb.ax unwind label %bb.d

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noundef nonnull %i.hd)
          to label %bb.ay unwind label %bb.d

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !20058)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !20058 ; 2 uses
  %i.he = icmp eq i64 %.val.i, 0
  br i1 %i.he, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20058
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit"

bb.ba:                                            ; preds = %bb.bc, %bb.bb
  resume { ptr, i32 } %.pn

bb.bb:                                            ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20059)
  %.val.i63 = load i64, ptr %1, align 8, !alias.scope !20059 ; 2 uses
  %i.hf = icmp eq i64 %.val.i63, 0
  br i1 %i.hf, label %bb.ba, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i64 = load ptr, ptr %i.hg, align 8, !alias.scope !20059, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i64, i64 noundef %.val.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20059
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6procfs7process7Process13oom_score_adj17h7aaa2ef7bd1ce5bbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @_ZN6procfs11FileWrapper7open_at17h0092332764eee9acE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @647, i64 noundef 13)
  %i.o = load i64, ptr %i.l, align 8, !range !10, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.r)
  br label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit64"

bb.c:                                             ; preds = %bb.a
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.o, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.s = invoke { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$14read_to_string17h0fc09c39dcb82dfeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.e       ; 2 uses

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit54": ; preds = %bb.x, %bb.w, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.cp, %bb.w ], [ %i.cp, %bb.x ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20100)
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !20100 ; 2 uses
  %i.t = icmp eq i64 %.val.i, 0
  br i1 %i.t, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit54"
  %.val1.i = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !20100, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20100
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.e:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread", %bb.g, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit54"

bb.f:                                             ; preds = %bb.c
  %i.v = extractvalue { i64, ptr } %i.s, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = extractvalue { i64, ptr } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.x)
          to label %bb.ac unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !noundef !4
  %i.aa = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h921eef8f3a0a02baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.z) ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 7 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 9 uses
  store ptr %i.ab, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  switch i64 %i.ac, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.ab, align 1, !alias.scope !20101, !noundef !4 ; 2 uses
  switch i8 %i.ae, label %bb.j [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.h
  %.pr.i = load i8, ptr %i.ab, align 1, !alias.scope !20101
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.af = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ae, %bb.i ]
  switch i8 %i.af, label %bb.p [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ah = add i64 %i.ac, -1                       ; 3 uses
  %i.ai = icmp ult i64 %i.ac, 5
  br i1 %i.ai, label %.preheader.i, label %.preheader101.i

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ak = add i64 %i.ac, -1                       ; 3 uses
  %i.al = icmp ult i64 %i.ac, 5
  %.not90117.i = icmp eq i64 %i.ak, 0             ; 2 uses
  br i1 %i.al, label %.preheader104.i, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %bb.l
  br i1 %.not90117.i, label %.loopexit.i, label %.lr.ph.a

.preheader104.i:                                  ; preds = %bb.l
  br i1 %.not90117.i, label %.loopexit.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i159, i64 1
  %i.an = add i64 %.sroa.27.0.i158, -1            ; 2 uses
  %i.ao = extractvalue { i16, i1 } %i.bx, 0       ; 2 uses
  %.not91.i = icmp eq i64 %i.an, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph160

.preheader107.i:                                  ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i155, i64 1
  %i.aq = add i64 %.sroa.27.2.i154, -1            ; 2 uses
  %i.ar = extractvalue { i16, i1 } %i.bc, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader107.i, %bb.o, %bb.m, %bb.r, %.preheader107.i.preheader, %.preheader101.i, %.preheader.i, %.preheader104.i
  %.sroa.032.3.i = phi i16 [ %i.bn, %bb.o ], [ %i.ch, %bb.r ], [ %i.ao, %bb.m ], [ 0, %.preheader.i ], [ 0, %.preheader104.i ], [ 0, %.preheader101.i ], [ 0, %.preheader107.i.preheader ], [ %i.ar, %.preheader107.i ]
  %i.as = zext i16 %.sroa.032.3.i to i32
  %i.at = shl nuw i32 %i.as, 16
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph.a:                                         ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.sroa.02.2.i155 = phi ptr [ %i.ap, %.preheader107.i ], [ %i.aj, %.preheader107.i.preheader ] ; 2 uses
  %.sroa.27.2.i154 = phi i64 [ %i.aq, %.preheader107.i ], [ %i.ak, %.preheader107.i.preheader ]
  %.sroa.032.2.i153 = phi i16 [ %i.ar, %.preheader107.i ], [ 0, %.preheader107.i.preheader ]
  %i.au = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.2.i153, i16 10) ; 2 uses
  %i.av = extractvalue { i16, i1 } %i.au, 1
  %i.aw = load i8, ptr %.sroa.02.2.i155, align 1, !alias.scope !20101, !noundef !4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 9                   ; 2 uses
  %brmerge.i = select i1 %i.az, i1 true, i1 %i.av
  br i1 %brmerge.i, label %.loopexit109.split.loop.exit115.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.a
  %i.ba = extractvalue { i16, i1 } %i.au, 0
  %i.bb = trunc nuw nsw i32 %i.ay to i16
  %i.bc = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.ba, i16 %i.bb) ; 2 uses
  %i.bd = extractvalue { i16, i1 } %i.bc, 1
  br i1 %i.bd, label %.loopexit100.i, label %.preheader107.i

.loopexit103.split.loop.exit121.i:                ; preds = %.lr.ph160
  %.mux96.le.i = select i1 %i.bu, i32 256, i32 512
  br label %.loopexit100.i

.loopexit109.split.loop.exit115.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.az, i32 256, i32 768
  br label %.loopexit100.i

.loopexit100.i:                                   ; preds = %bb.n, %.lr.ph.i, %bb.q, %.lr.ph128.i, %.loopexit109.split.loop.exit115.i, %.loopexit103.split.loop.exit121.i
  %.sroa.12.2.i = phi i32 [ 256, %.lr.ph128.i ], [ 512, %bb.q ], [ 256, %.lr.ph.i ], [ %.mux96.le.i, %.loopexit103.split.loop.exit121.i ], [ %.mux.le.i, %.loopexit109.split.loop.exit115.i ], [ 768, %bb.n ]
  %i.be = or disjoint i32 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"

.lr.ph.i:                                         ; preds = %.preheader104.i, %bb.o
  %.sroa.02.3120.i = phi ptr [ %i.bl, %bb.o ], [ %i.aj, %.preheader104.i ] ; 2 uses
  %.sroa.27.3119.i = phi i64 [ %i.bk, %bb.o ], [ %i.ak, %.preheader104.i ]
  %.sroa.032.4118.i = phi i16 [ %i.bn, %bb.o ], [ 0, %.preheader104.i ]
  %i.bf = load i8, ptr %.sroa.02.3120.i, align 1, !alias.scope !20101, !noundef !4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.o, label %.loopexit100.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.bj = mul i16 %.sroa.032.4118.i, 10
  %i.bk = add nsw i64 %.sroa.27.3119.i, -1        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.3120.i, i64 1
  %i.bm = trunc nuw nsw i32 %i.bh to i16
  %i.bn = sub i16 %i.bj, %i.bm                    ; 2 uses
  %.not90.i = icmp eq i64 %i.bk, 0
  br i1 %.not90.i, label %.loopexit.i, label %.lr.ph.i

bb.p:                                             ; preds = %bb.j
  %i.bo = icmp ult i64 %i.ac, 4
  br i1 %i.bo, label %.lr.ph128.i.preheader, label %.preheader101.i

.lr.ph128.i.preheader:                            ; preds = %.preheader.i, %bb.p
  %.sroa.02.1127.i.ph = phi ptr [ %i.ab, %bb.p ], [ %i.ag, %.preheader.i ]
  %.sroa.27.1126.i.ph = phi i64 [ %i.ac, %bb.p ], [ %i.ah, %.preheader.i ]
  br label %.lr.ph128.i

.preheader101.i:                                  ; preds = %bb.p, %bb.k
  %.sroa.27.0.ph.i = phi i64 [ %i.ac, %bb.p ], [ %i.ah, %bb.k ] ; 2 uses
  %.sroa.02.0.ph.i = phi ptr [ %i.ab, %bb.p ], [ %i.ag, %bb.k ]
  %.not91.i156 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not91.i156, label %.loopexit.i, label %.lr.ph160

.preheader.i:                                     ; preds = %bb.k
  %.not92124.i = icmp eq i64 %i.ah, 0
  br i1 %.not92124.i, label %.loopexit.i, label %.lr.ph128.i.preheader

.lr.ph160:                                        ; preds = %.preheader101.i, %bb.m
  %.sroa.02.0.i159 = phi ptr [ %i.am, %bb.m ], [ %.sroa.02.0.ph.i, %.preheader101.i ] ; 2 uses
  %.sroa.27.0.i158 = phi i64 [ %i.an, %bb.m ], [ %.sroa.27.0.ph.i, %.preheader101.i ]
  %.sroa.032.0.i157 = phi i16 [ %i.ao, %bb.m ], [ 0, %.preheader101.i ]
  %i.bp = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.032.0.i157, i16 10) ; 2 uses
  %i.bq = extractvalue { i16, i1 } %i.bp, 1
  %i.br = load i8, ptr %.sroa.02.0.i159, align 1, !alias.scope !20101, !noundef !4
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 9                   ; 2 uses
  %brmerge95.i = select i1 %i.bu, i1 true, i1 %i.bq
  br i1 %brmerge95.i, label %.loopexit103.split.loop.exit121.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph160
  %i.bv = extractvalue { i16, i1 } %i.bp, 0
  %i.bw = trunc nuw nsw i32 %i.bt to i16
  %i.bx = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.bv, i16 %i.bw) ; 2 uses
  %i.by = extractvalue { i16, i1 } %i.bx, 1
  br i1 %i.by, label %.loopexit100.i, label %bb.m

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.preheader, %bb.r
  %.sroa.02.1127.i = phi ptr [ %i.cf, %bb.r ], [ %.sroa.02.1127.i.ph, %.lr.ph128.i.preheader ] ; 2 uses
  %.sroa.27.1126.i = phi i64 [ %i.ce, %bb.r ], [ %.sroa.27.1126.i.ph, %.lr.ph128.i.preheader ]
  %.sroa.032.1125.i = phi i16 [ %i.ch, %bb.r ], [ 0, %.lr.ph128.i.preheader ]
  %i.bz = load i8, ptr %.sroa.02.1127.i, align 1, !alias.scope !20101, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.r, label %.loopexit100.i

bb.r:                                             ; preds = %.lr.ph128.i
  %i.cd = mul i16 %.sroa.032.1125.i, 10
  %i.ce = add nsw i64 %.sroa.27.1126.i, -1        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.1127.i, i64 1
  %i.cg = trunc nuw nsw i32 %i.cb to i16
  %i.ch = add i16 %i.cd, %i.cg                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ce, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph128.i

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit": ; preds = %.loopexit100.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i32 [ %i.at, %.loopexit.i ], [ %i.be, %.loopexit100.i ] ; 3 uses
  %i.ci = trunc i32 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.ci, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread", label %bb.s

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread": ; preds = %bb.i, %bb.i, %bb.h, %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  %.sroa.12.0.insert.insert.i82 = phi i32 [ %.sroa.12.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit" ], [ 257, %bb.i ], [ 257, %bb.i ], [ 1, %bb.h ]
  %.sroa.442.0.extract.shift = lshr i32 %.sroa.12.0.insert.insert.i82, 8
  %.sroa.442.0.extract.trunc = trunc i32 %.sroa.442.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.442.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c2bcc7e49b274a4E", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20102
  store ptr @650, ptr %i.b, align 8, !noalias !20103
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.476.0..sroa_idx, align 8, !noalias !20103
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !20103
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.678.0..sroa_idx, align 8, !noalias !20103
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.779.0..sroa_idx, align 8, !noalias !20103
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.v unwind label %bb.e

bb.s:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit"
  %.sroa.543.0.extract.shift = lshr i32 %.sroa.12.0.insert.insert.i, 16
  %.sroa.543.0.extract.trunc = trunc nuw i32 %.sroa.543.0.extract.shift to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.543.0.extract.trunc, ptr %i.cj, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !20104)
  %.val.i47 = load i64, ptr %i.k, align 8, !alias.scope !20104 ; 2 uses
  %i.ck = icmp eq i64 %.val.i47, 0
  br i1 %i.ck, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit49", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20104
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit49"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit54"
  call void @"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #44
  resume { ptr, i32 } %.pn

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit49": ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !20105)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val.i50 = load i32, ptr %i.cl, align 8, !range !12, !alias.scope !20105, !noundef !4
  %i.cm = call noundef i32 @close(i32 noundef %.val.i50) #42, !noalias !20105 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20106)
  %.val.i1.i = load i64, ptr %i.m, align 8, !alias.scope !20107 ; 2 uses
  %i.cn = icmp eq i64 %.val.i1.i, 0
  br i1 %i.cn, label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit64", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit49"
  %.val1.i2.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !20107, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !20107
  br label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit64"

"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit64": ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit49", %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit67", %bb.ae, %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.v:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h2a1fdb6d18830b23E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.434.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.co, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20108
  store ptr @26, ptr %i.a, align 8, !noalias !20109
  %.sroa.4.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx72, align 8, !noalias !20109
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !20109
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20109
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20109
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
end_hunk_7
begin_hunk_8_@"_ZN73_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h84c0b71509e99156E":bb.a

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h43d0758a197edd7bE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u16$GT$3fmt17h67f4e3110ad583bbE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN73_$LT$procfs..sys..kernel..SysRq$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hfbf793a870c74323E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23785)
  switch i64 %2, label %bb.c [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
    i64 1, label %bb.b
  ]

.loopexit61.split.loop.exit64.i.i:                ; preds = %.lr.ph
  %.mux.le.i.i = select i1 %i.l, i32 257, i32 513
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !23786, !noalias !23784, !noundef !4
  switch i8 %i.a, label %.lr.ph.split.us.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"
  ]

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %1, align 1, !alias.scope !23786, !noalias !23784
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = icmp ult i64 %2, 6
  br i1 %i.d, label %.lr.ph.split.us.i.i.preheader, label %.preheader59.i.i

.preheader59.i.i:                                 ; preds = %bb.f, %bb.d
  %.sroa.16.0.ph.i.i = phi i64 [ %2, %bb.f ], [ %i.c, %bb.d ] ; 2 uses
  %.sroa.02.0.ph.i.i = phi ptr [ %1, %bb.f ], [ %i.b, %bb.d ]
  %.not.us.i.i29 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.us.i.i29, label %.loopexit.i.i, label %.lr.ph

.preheader59.split.us.i.i:                        ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.02.0.us.i.i32, i64 1
  %i.f = add i64 %.sroa.16.0.us.i.i31, -1         ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.us.i.i, label %.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59.i.i, %.preheader59.split.us.i.i
  %.sroa.02.0.us.i.i32 = phi ptr [ %i.e, %.preheader59.split.us.i.i ], [ %.sroa.02.0.ph.i.i, %.preheader59.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i31 = phi i64 [ %i.f, %.preheader59.split.us.i.i ], [ %.sroa.16.0.ph.i.i, %.preheader59.i.i ]
  %.sroa.018.0.us.i.i30 = phi i16 [ %i.o, %.preheader59.split.us.i.i ], [ 0, %.preheader59.i.i ]
  %i.g = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.018.0.us.i.i30, i16 10) ; 2 uses
  %i.h = extractvalue { i16, i1 } %i.g, 1
  %i.i = load i8, ptr %.sroa.02.0.us.i.i32, align 1, !alias.scope !23786, !noalias !23784, !noundef !4
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9                     ; 2 uses
  %brmerge.us.i.i = or i1 %i.h, %i.l
  br i1 %brmerge.us.i.i, label %.loopexit61.split.loop.exit64.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = extractvalue { i16, i1 } %i.g, 0         ; 2 uses
  %i.n = trunc nuw nsw i32 %i.k to i16
  %i.o = add i16 %i.m, %i.n                       ; 3 uses
  %.not52.us.i.i = icmp ult i16 %i.o, %i.m
  br i1 %.not52.us.i.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", label %.preheader59.split.us.i.i

bb.f:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %2, 5
  br i1 %i.p, label %.lr.ph.split.us.i.i.preheader, label %.preheader59.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.02.171.us.i.i.ph = phi ptr [ %i.b, %bb.d ], [ %1, %bb.f ], [ %1, %bb.b ]
  %.sroa.16.170.us.i.i.ph = phi i64 [ %i.c, %bb.d ], [ %2, %bb.f ], [ 1, %bb.b ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.g
  %.sroa.02.171.us.i.i = phi ptr [ %i.w, %bb.g ], [ %.sroa.02.171.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %.sroa.16.170.us.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.16.170.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ]
  %.sroa.018.169.us.i.i = phi i16 [ %i.y, %bb.g ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.q = load i8, ptr %.sroa.02.171.us.i.i, align 1, !alias.scope !23786, !noalias !23784, !noundef !4
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %bb.g, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i"

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.u = mul i16 %.sroa.018.169.us.i.i, 10
  %i.v = add nsw i64 %.sroa.16.170.us.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.171.us.i.i, i64 1
  %i.x = trunc nuw nsw i32 %i.s to i16
  %i.y = add i16 %i.u, %i.x                       ; 2 uses
  %.not53.us.i.i = icmp eq i64 %i.v, 0
  br i1 %.not53.us.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i

.loopexit.i.i:                                    ; preds = %.preheader59.split.us.i.i, %bb.g, %.preheader59.i.i
  %.sroa.018.2.i.i = phi i16 [ %i.y, %bb.g ], [ 0, %.preheader59.i.i ], [ %i.o, %.preheader59.split.us.i.i ]
  %i.z = zext i16 %.sroa.018.2.i.i to i32
  %i.aa = shl nuw i32 %i.z, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i": ; preds = %.loopexit.i.i, %.loopexit61.split.loop.exit64.i.i
  %.sroa.8.0.insert.insert.i.i = phi i32 [ %i.aa, %.loopexit.i.i ], [ %.mux.le.i.i, %.loopexit61.split.loop.exit64.i.i ] ; 3 uses
  %.sroa.55.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i.i, 16
  %.sroa.55.0.extract.trunc.i = trunc nuw i32 %.sroa.55.0.extract.shift.i to i16 ; 3 uses
  %i.ab = trunc i32 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.ab, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", label %bb.h

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i": ; preds = %bb.e, %.lr.ph.split.us.i.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i", %bb.b, %bb.b, %bb.a
  %.sroa.8.0.insert.insert.i9.i = phi i32 [ %.sroa.8.0.insert.insert.i.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i" ], [ 257, %.lr.ph.split.us.i.i ], [ 1, %bb.a ], [ 257, %bb.b ], [ 257, %bb.b ], [ 513, %bb.e ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i9.i, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  tail call void @"_ZN101_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$core..num..error..ParseIntError$GT$$GT$4from17hef32ae14769ff118E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, i8 noundef %.sroa.4.0.extract.trunc.i), !noalias !23785
  br label %_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit

bb.h:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.i"
  switch i16 %.sroa.55.0.extract.trunc.i, label %bb.i [
    i16 0, label %bb.j
    i16 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = and i16 %.sroa.55.0.extract.trunc.i, -511
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.ae, align 8, !alias.scope !23784, !noalias !23785
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !23784, !noalias !23785
  br label %_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.af, align 8, !alias.scope !23784, !noalias !23785
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !23784, !noalias !23785
  br label %_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit

bb.l:                                             ; preds = %bb.i
  tail call void @"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @589, i64 noundef 13), !noalias !23785
  br label %_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit

bb.m:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.ag, align 8, !alias.scope !23784, !noalias !23785
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.55.0.extract.trunc.i, ptr %i.ah, align 2, !alias.scope !23784, !noalias !23785
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !23784, !noalias !23785
  br label %_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit

_ZN6procfs3sys6kernel5SysRq8from_str17hbb1860f36843937dE.exit: ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread.i", %bb.j, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN73_$LT$procfs..sys..vm..DropCache$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb489e84b3d7dfe3bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #21 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !23789, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !23789
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 9
  br i1 %i.e, label %.preheader.i, label %.preheader102.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 9
  %.not91118.i = icmp eq i64 %i.g, 0              ; 2 uses
  br i1 %i.h, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.e
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.a

.preheader105.i:                                  ; preds = %bb.e
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.j
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i83, i64 1
  %i.j = add i64 %.sroa.27.0.i82, -1              ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.aq, 0        ; 2 uses
  %.not92.i = icmp eq i64 %i.j, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph84

.preheader108.i:                                  ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i79, i64 1
  %i.m = add i64 %.sroa.27.2.i78, -1              ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.x, 0         ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.h, %bb.f, %bb.k, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.ah, %bb.h ], [ %i.az, %bb.k ], [ %i.k, %bb.f ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.n, %.preheader108.i ]
  %i.o = zext i32 %.sroa.033.3.i to i64
  %i.p = shl nuw i64 %i.o, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.a:                                         ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i79 = phi ptr [ %i.l, %.preheader108.i ], [ %i.f, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i78 = phi i64 [ %i.m, %.preheader108.i ], [ %i.g, %.preheader108.i.preheader ]
  %.sroa.033.2.i77 = phi i32 [ %i.n, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i77, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.03.2.i79, align 1, !alias.scope !23789, !noundef !4
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ugt i32 %i.u, 9                     ; 2 uses
  %brmerge.i = select i1 %i.v, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.w = extractvalue { i32, i1 } %i.q, 0
  %i.x = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.w, i32 %i.u) ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph84
  %.mux97.le.i = select i1 %i.ao, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.v, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.j ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.g ]
  %i.z = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.h
  %.sroa.03.3121.i = phi ptr [ %i.ag, %bb.h ], [ %i.f, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.af, %bb.h ], [ %i.g, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.ah, %bb.h ], [ 0, %.preheader105.i ]
  %i.aa = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !23789, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %.loopexit101.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = mul i32 %.sroa.033.4119.i, 10
  %i.af = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.ah = sub i32 %i.ae, %i.ac                    ; 2 uses
  %.not91.i = icmp eq i64 %i.af, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %2, 8
  br i1 %i.ai, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.03.1128.i.ph = phi ptr [ %1, %bb.i ], [ %i.c, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %2, %bb.i ], [ %i.d, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %1, %bb.i ], [ %i.c, %bb.d ]
  %.not92.i80 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i80, label %.loopexit.i, label %.lr.ph84

.preheader.i:                                     ; preds = %bb.d
  %.not93125.i = icmp eq i64 %i.d, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph84:                                         ; preds = %.preheader102.i, %bb.f
  %.sroa.03.0.i83 = phi ptr [ %i.i, %bb.f ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i82 = phi i64 [ %i.j, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i81 = phi i32 [ %i.k, %bb.f ], [ 0, %.preheader102.i ]
  %i.aj = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i81, i32 10) ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = load i8, ptr %.sroa.03.0.i83, align 1, !alias.scope !23789, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.ao, i1 true, i1 %i.ak
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph84
  %i.ap = extractvalue { i32, i1 } %i.aj, 0
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit101.i, label %bb.f

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.k
  %.sroa.03.1128.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.ax, %bb.k ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.az, %bb.k ], [ 0, %.lr.ph129.i.preheader ]
  %i.as = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !23789, !noundef !4
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.k, label %.loopexit101.i

bb.k:                                             ; preds = %.lr.ph129.i
  %i.aw = mul i32 %.sroa.033.1126.i, 10
  %i.ax = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.az = add i32 %i.au, %i.aw                    ; 2 uses
  %.not93.i = icmp eq i64 %i.ax, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit.i, %.loopexit101.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.z, %.loopexit101.i ] ; 2 uses
  %i.ba = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.ba, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.l

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.b, %bb.b, %bb.a, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  store ptr @708, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 24, ptr %i.bb, align 8
  br label %bb.s

bb.l:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.sroa.56.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  switch i32 %.sroa.56.0.extract.trunc, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  store ptr @707, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 24, ptr %i.bc, align 8
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bd, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.bf, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.bh, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$procfs..process.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17hb7ba3daf0dc764c3E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u16$GT$3fmt17h4d15c251d4fbbf20E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN74_$LT$procfs_core..process..stat..Stat$u20$as$u20$procfs_core..FromRead$GT$9from_read17h555460a6da1ef1b4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(480) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
end_hunk_8
begin_hunk_9_@"_ZN81_$LT$procfs_core..process..status..Status$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17hd0101db748282003E":bb.a

bb.y:                                             ; preds = %bb.x
  %i.qg = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val1.i32.i = load ptr, ptr %i.qg, align 8, !alias.scope !25982, !noalias !25969, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i32.i, i64 noundef %.val.i31.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25983
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit33.i"

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !25980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25969
  call void @llvm.experimental.noalias.scope.decl(metadata !25984)
  %.val.i34.i = load i64, ptr %i.br, align 8, !alias.scope !25984, !noalias !25969 ; 2 uses
  %i.qh = icmp eq i64 %.val.i34.i, 0
  br i1 %i.qh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qi = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val1.i35.i = load ptr, ptr %i.qi, align 8, !alias.scope !25984, !noalias !25969, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i35.i, i64 noundef %.val.i34.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25985
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36.i": ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25969
  %.sroa.05679.0.copyload = load i64, ptr %i.bs, align 8, !noalias !25968 ; 2 uses
  %.sroa.55680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.qj = load <2 x i32>, ptr %.sroa.55680.0..sroa_idx, align 8, !noalias !25968
  %.sroa.55680.0.copyload = load i32, ptr %.sroa.55680.0..sroa_idx, align 8, !noalias !25968
  %.sroa.85682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.85682.0.copyload = load i64, ptr %.sroa.85682.0..sroa_idx, align 8, !noalias !25968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25969
  call void @llvm.experimental.noalias.scope.decl(metadata !25986)
  %.val.i37.i = load i64, ptr %i.cy, align 8, !alias.scope !25987, !noalias !25970 ; 2 uses
  %i.qk = icmp eq i64 %.val.i37.i, 0
  br i1 %i.qk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36.i"
  %.val1.i38.i = load ptr, ptr %i.ov, align 8, !alias.scope !25987, !noalias !25970, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i38.i, i64 noundef %.val.i37.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25988
  br label %bb.ac

.thread6182:                                      ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nl)
  br label %bb.ag

bb.ac:                                            ; preds = %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nl)
  switch i64 %.sroa.05679.0.copyload, label %bb.ae [
    i64 -9223372036854775802, label %bb.ag
    i64 -9223372036854775803, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05679.0.copyload, ptr %i.ql, align 8
  %.sroa.21367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.qj, ptr %.sroa.21367.0..sroa_idx, align 8
  %.sroa.41369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.85682.0.copyload, ptr %.sroa.41369.0..sroa_idx, align 8
  %.sroa.41369.sroa.2.0..sroa.41369.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @92, ptr %.sroa.41369.sroa.2.0..sroa.41369.0..sroa_idx.sroa_idx, align 8
  %.sroa.41369.sroa.3.0..sroa.41369.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 109, ptr %.sroa.41369.sroa.3.0..sroa.41369.0..sroa_idx.sroa_idx, align 8
  %.sroa.41369.sroa.4.0..sroa.41369.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 197, ptr %.sroa.41369.sroa.4.0..sroa.41369.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.qm = icmp eq i64 %i.os, 0
  br i1 %i.qm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5117", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41348.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41348.sroa.0.0.copyload, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25989
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5117"

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %.thread6176, %.thread6182
  %.sroa.10.0.ph = phi i32 [ undef, %.thread6176 ], [ undef, %bb.ac ], [ %.sroa.625.0.extract.trunc.i, %.thread6182 ], [ %.sroa.55680.0.copyload, %bb.ad ]
  %.sroa.776.0.ph = phi i32 [ 0, %.thread6176 ], [ 0, %bb.ac ], [ 1, %.thread6182 ], [ 1, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nk)
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h4032e9bab409629dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.nk, ptr noalias noundef align 8 dereferenceable(48) %i.nw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @821, i64 noundef 5)
  %i.qn = load i64, ptr %i.nk, align 8, !range !10, !noundef !4 ; 224 uses
  %.not2324 = icmp eq i64 %i.qn, -9223372036854775808
  br i1 %.not2324, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ni)
  store ptr %i.a, ptr %i.ni, align 8
  %.sroa.41375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.41375.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !25990
  store ptr @3, ptr %i.bl, align 8, !noalias !25991
  %.sroa.45227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 1, ptr %.sroa.45227.0..sroa_idx, align 8, !noalias !25991
  %.sroa.55228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.ni, ptr %.sroa.55228.0..sroa_idx, align 8, !noalias !25991
  %.sroa.65229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 1, ptr %.sroa.65229.0..sroa_idx, align 8, !noalias !25991
  %.sroa.75230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr null, ptr %.sroa.75230.0..sroa_idx, align 8, !noalias !25991
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bl)
          to label %bb.akj unwind label %bb.ake

bb.ai:                                            ; preds = %bb.ag
  %.sroa.41371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %.sroa.41371.sroa.0.0.copyload = load ptr, ptr %.sroa.41371.0..sroa_idx, align 8 ; 223 uses
  %.sroa.41371.sroa.4.0..sroa.41371.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %.sroa.41371.sroa.4.0.copyload = load i64, ptr %.sroa.41371.sroa.4.0..sroa.41371.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ng)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nf)
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h4032e9bab409629dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.nf, ptr noalias noundef align 8 dereferenceable(48) %i.nw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @822, i64 noundef 4)
  %i.qo = load i64, ptr %i.nf, align 8, !range !10, !noundef !4 ; 4 uses
  %.not2325 = icmp eq i64 %i.qo, -9223372036854775808
  br i1 %.not2325, label %bb.al, label %bb.am

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3701": ; preds = %bb.ax, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5102", %bb.ak
  %.pn2930 = phi { ptr, i32 } [ %i.qq, %bb.ak ], [ %.pn2928, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5102" ], [ %.pn2928, %bb.ax ] ; 2 uses
  %i.qp = icmp eq i64 %i.qn, 0
  br i1 %i.qp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3695", label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3701"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41371.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41371.sroa.0.0.copyload, i64 noundef %i.qn, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25992
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3695"

bb.ak:                                            ; preds = %bb.al, %bb.bb
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3701"

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nd)
  store ptr %i.a, ptr %i.nd, align 8
  %.sroa.41383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.41383.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !25993
  store ptr @3, ptr %i.bk, align 8, !noalias !25994
  %.sroa.45233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 1, ptr %.sroa.45233.0..sroa_idx, align 8, !noalias !25994
  %.sroa.55234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.nd, ptr %.sroa.55234.0..sroa_idx, align 8, !noalias !25994
  %.sroa.65235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 1, ptr %.sroa.65235.0..sroa_idx, align 8, !noalias !25994
  %.sroa.75236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr null, ptr %.sroa.75236.0..sroa_idx, align 8, !noalias !25994
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bk)
          to label %bb.akg unwind label %bb.ak

bb.am:                                            ; preds = %bb.ai
  %.sroa.41379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.41379.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf)
  store i64 %i.qo, ptr %i.ng, align 8
  store ptr %i.ng, ptr %i.nh, align 8
  %i.qr = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.qt = load i64, ptr %i.qs, align 8, !noundef !4 ; 8 uses
  switch i64 %i.qt, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.qu = load i8, ptr %i.qr, align 1, !alias.scope !25995, !noundef !4 ; 2 uses
  switch i8 %i.qu, label %bb.ao [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.am
  %.pr.i = load i8, ptr %i.qr, align 1, !alias.scope !25995
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i, %bb.an
  %i.qv = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.qu, %bb.an ]
  switch i8 %i.qv, label %bb.au [
    i8 43, label %bb.ap
    i8 45, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 1 ; 2 uses
  %i.qx = add i64 %i.qt, -1                       ; 3 uses
  %i.qy = icmp ult i64 %i.qt, 9
  br i1 %i.qy, label %.preheader.i, label %.preheader102.i

bb.aq:                                            ; preds = %bb.ao
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1 ; 2 uses
  %i.ra = add i64 %i.qt, -1                       ; 3 uses
  %i.rb = icmp ult i64 %i.qt, 9
  %.not91118.i = icmp eq i64 %i.ra, 0             ; 2 uses
  br i1 %i.rb, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.aq
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.a

.preheader105.i:                                  ; preds = %bb.aq
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i3698

bb.ar:                                            ; preds = %bb.av
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17640, i64 1
  %i.rd = add i64 %.sroa.27.0.i17639, -1          ; 2 uses
  %i.re = extractvalue { i32, i1 } %i.sk, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.rd, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph17641

.preheader108.i:                                  ; preds = %bb.as
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i17636, i64 1
  %i.rg = add i64 %.sroa.27.2.i17635, -1          ; 2 uses
  %i.rh = extractvalue { i32, i1 } %i.rr, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.rg, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.at, %bb.ar, %bb.aw, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.sb, %bb.at ], [ %i.st, %bb.aw ], [ %i.re, %bb.ar ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.rh, %.preheader108.i ]
  %i.ri = zext i32 %.sroa.033.3.i to i64
  %i.rj = shl nuw i64 %i.ri, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.a:                                         ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i17636 = phi ptr [ %i.rf, %.preheader108.i ], [ %i.qz, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i17635 = phi i64 [ %i.rg, %.preheader108.i ], [ %i.ra, %.preheader108.i.preheader ]
  %.sroa.033.2.i17634 = phi i32 [ %i.rh, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.rk = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i17634, i32 10) ; 2 uses
  %i.rl = extractvalue { i32, i1 } %i.rk, 1
  %i.rm = load i8, ptr %.sroa.03.2.i17636, align 1, !alias.scope !25995, !noundef !4
  %i.rn = zext i8 %i.rm to i32
  %i.ro = add nsw i32 %i.rn, -48                  ; 2 uses
  %i.rp = icmp ugt i32 %i.ro, 9                   ; 2 uses
  %brmerge.i = select i1 %i.rp, i1 true, i1 %i.rl
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.a
  %i.rq = extractvalue { i32, i1 } %i.rk, 0
  %i.rr = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.rq, i32 %i.ro) ; 2 uses
  %i.rs = extractvalue { i32, i1 } %i.rr, 1
  br i1 %i.rs, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph17641
  %.mux97.le.i = select i1 %i.si, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.rp, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.as, %.lr.ph.i3698, %bb.av, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.av ], [ 256, %.lr.ph.i3698 ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.as ]
  %i.rt = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i3698:                                     ; preds = %.preheader105.i, %bb.at
  %.sroa.03.3121.i = phi ptr [ %i.sa, %bb.at ], [ %i.qz, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.rz, %bb.at ], [ %i.ra, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.sb, %bb.at ], [ 0, %.preheader105.i ]
  %i.ru = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !25995, !noundef !4
  %i.rv = zext i8 %i.ru to i32
  %i.rw = add nsw i32 %i.rv, -48                  ; 2 uses
  %i.rx = icmp ult i32 %i.rw, 10
  br i1 %i.rx, label %bb.at, label %.loopexit101.i

bb.at:                                            ; preds = %.lr.ph.i3698
  %i.ry = mul i32 %.sroa.033.4119.i, 10
  %i.rz = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.sb = sub i32 %i.ry, %i.rw                    ; 2 uses
  %.not91.i = icmp eq i64 %i.rz, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i3698

bb.au:                                            ; preds = %bb.ao
  %i.sc = icmp ult i64 %i.qt, 8
  br i1 %i.sc, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.au
  %.sroa.03.1128.i.ph = phi ptr [ %i.qr, %bb.au ], [ %i.qw, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.qt, %bb.au ], [ %i.qx, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.au, %bb.ap
  %.sroa.27.0.ph.i = phi i64 [ %i.qt, %bb.au ], [ %i.qx, %bb.ap ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.qr, %bb.au ], [ %i.qw, %bb.ap ]
  %.not92.i17637 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i17637, label %.loopexit.i, label %.lr.ph17641

.preheader.i:                                     ; preds = %bb.ap
  %.not93125.i = icmp eq i64 %i.qx, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph17641:                                      ; preds = %.preheader102.i, %bb.ar
  %.sroa.03.0.i17640 = phi ptr [ %i.rc, %bb.ar ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i17639 = phi i64 [ %i.rd, %bb.ar ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i17638 = phi i32 [ %i.re, %bb.ar ], [ 0, %.preheader102.i ]
  %i.sd = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i17638, i32 10) ; 2 uses
  %i.se = extractvalue { i32, i1 } %i.sd, 1
  %i.sf = load i8, ptr %.sroa.03.0.i17640, align 1, !alias.scope !25995, !noundef !4
  %i.sg = zext i8 %i.sf to i32
  %i.sh = add nsw i32 %i.sg, -48                  ; 2 uses
  %i.si = icmp ugt i32 %i.sh, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.si, i1 true, i1 %i.se
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph17641
  %i.sj = extractvalue { i32, i1 } %i.sd, 0
  %i.sk = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.sj, i32 %i.sh) ; 2 uses
  %i.sl = extractvalue { i32, i1 } %i.sk, 1
  br i1 %i.sl, label %.loopexit101.i, label %bb.ar

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.aw
  %.sroa.03.1128.i = phi ptr [ %i.ss, %bb.aw ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.sr, %bb.aw ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.st, %bb.aw ], [ 0, %.lr.ph129.i.preheader ]
  %i.sm = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !25995, !noundef !4
  %i.sn = zext i8 %i.sm to i32
  %i.so = add nsw i32 %i.sn, -48                  ; 2 uses
  %i.sp = icmp ult i32 %i.so, 10
  br i1 %i.sp, label %bb.aw, label %.loopexit101.i

bb.aw:                                            ; preds = %.lr.ph129.i
  %i.sq = mul i32 %.sroa.033.1126.i, 10
  %i.sr = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.st = add i32 %i.so, %i.sq                    ; 2 uses
  %.not93.i = icmp eq i64 %i.sr, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5102": ; preds = %bb.ajy, %bb.ajx, %bb.ay
  %.pn2928 = phi { ptr, i32 } [ %i.sv, %bb.ay ], [ %i.bnt, %bb.ajx ], [ %i.bnt, %bb.ajy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25996)
  %.val.i3699 = load i64, ptr %i.ng, align 8, !alias.scope !25996 ; 2 uses
  %i.su = icmp eq i64 %.val.i3699, 0
  br i1 %i.su, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3701", label %bb.ax

bb.ax:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5102"
  %.val1.i3700 = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !alias.scope !25996, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3700, i64 noundef %.val.i3699, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25996
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3701"

bb.ay:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit5102"

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit101.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.rj, %.loopexit.i ], [ %i.rt, %.loopexit101.i ] ; 3 uses
  %.sroa.62301.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.62301.0.extract.trunc = trunc nuw i64 %.sroa.62301.0.extract.shift to i32
  %i.sw = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.sw, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.az

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.an, %bb.an, %bb.am, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.sroa.12.0.insert.insert.i6552 = phi i64 [ %.sroa.12.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit" ], [ 257, %bb.an ], [ 257, %bb.an ], [ 1, %bb.am ]
  %.sroa.42299.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i6552, 8
  %.sroa.42299.0.extract.trunc = trunc i64 %.sroa.42299.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nc)
  store i8 %.sroa.42299.0.extract.trunc, ptr %i.nc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.na)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.my)
  store ptr %i.nh, ptr %i.my, align 8
  %.sroa.41389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E", ptr %.sroa.41389.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !25997
  store ptr @901, ptr %i.bj, align 8, !noalias !25998
  %.sroa.45245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 2, ptr %.sroa.45245.0..sroa_idx, align 8, !noalias !25998
  %.sroa.55246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.my, ptr %.sroa.55246.0..sroa_idx, align 8, !noalias !25998
  %.sroa.65247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 1, ptr %.sroa.65247.0..sroa_idx, align 8, !noalias !25998
  %.sroa.75248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr null, ptr %.sroa.75248.0..sroa_idx, align 8, !noalias !25998
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.mz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bj)
          to label %bb.ajw unwind label %bb.ay

bb.az:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %i.sx = icmp eq i64 %i.qo, 0
  br i1 %i.sx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3706", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qr, i64 noundef %i.qo, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !25999
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3706"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3706": ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8164.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw)
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h4032e9bab409629dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.mw, ptr noalias noundef align 8 dereferenceable(48) %i.nw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @823, i64 noundef 4)
  %i.sy = load i64, ptr %i.mw, align 8, !range !10, !noundef !4
  %.not2326 = icmp eq i64 %i.sy, -9223372036854775808
  br i1 %.not2326, label %.thread6553, label %bb.bb

.thread6553:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3706"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw)
  br label %bb.bf

bb.bb:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit3706"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.mw, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  invoke fastcc void @"_ZN81_$LT$procfs_core..process..status..Status$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read28_$u7b$$u7b$closure$u7d$$u7d$17h52c6ea92f9a68604E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.cx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cw)
          to label %bb.bc unwind label %bb.ak

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %.sroa.0158.0.copyload = load i64, ptr %i.cx, align 8 ; 2 uses
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.sz = load <2 x i32>, ptr %.sroa.7161.0..sroa_idx, align 8
  %.sroa.7161.0.copyload = load i32, ptr %.sroa.7161.0..sroa_idx, align 8
  %.sroa.8164.sroa.4.0..sroa.8164.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8164.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8164.sroa.4.0..sroa.8164.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw)
  switch i64 %.sroa.0158.0.copyload, label %bb.be [
    i64 -9223372036854775802, label %bb.bf
    i64 -9223372036854775803, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.sroa.41413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_9
begin_hunk_10_@"_ZN81_$LT$procfs_core..process..status..Status$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read28_$u7b$$u7b$closure$u7d$$u7d$17h49ba26a018e205bbE":bb.a
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.ah = mul i64 %.sroa.017.166.us.i, 10
  %i.ai = add nsw i64 %.sroa.16.167.us.i, -1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.168.us.i, i64 1
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = add i64 %i.ah, %i.ak                    ; 2 uses
  %.not51.us.i = icmp eq i64 %i.ai, 0
  br i1 %.not51.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph.split.us.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27": ; preds = %bb.m, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ar, %bb.l ], [ %i.ar, %bb.m ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26493)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !26493 ; 2 uses
  %i.am = icmp eq i64 %.val.i, 0
  br i1 %i.am, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27"
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !26493, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26493
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.i:                                             ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27"

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %.lr.ph.split.us.i, %bb.b, %bb.b, %bb.a
  %.sroa.2.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.split.us.i ], [ 1, %.lr.ph ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.2.0.ph, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E", ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26494
  store ptr @903, ptr %i.b, align 8, !noalias !26495
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.437.0..sroa_idx, align 8, !noalias !26495
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.538.0..sroa_idx, align 8, !noalias !26495
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.639.0..sroa_idx, align 8, !noalias !26495
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.740.0..sroa_idx, align 8, !noalias !26495
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.k unwind label %bb.i

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit": ; preds = %.preheader55.split.us.i, %bb.g, %.preheader55.i
  %.sroa.9.0 = phi i64 [ %i.al, %bb.g ], [ 0, %.preheader55.i ], [ %i.ab, %.preheader55.split.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %i.ao, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26496)
  %.val.i21 = load i64, ptr %1, align 8, !alias.scope !26496 ; 2 uses
  %i.ap = icmp eq i64 %.val.i21, 0
  br i1 %i.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit23", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.val.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26496
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit23"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit23": ; preds = %bb.p, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit30", %bb.j, %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit"
  ret void

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.413.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %i.aq, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.417.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26497
  store ptr @26, ptr %i.a, align 8, !noalias !26498
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !26498
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !26498
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !26498
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26498
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26499)
  %.val.i25 = load i64, ptr %i.f, align 8, !alias.scope !26499 ; 2 uses
  %i.as = icmp eq i64 %.val.i25, 0
  br i1 %i.as, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i26 = load ptr, ptr %i.at, align 8, !alias.scope !26499, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i26, i64 noundef %.val.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26499
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27"

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !26500)
  %.val.i28 = load i64, ptr %i.f, align 8, !alias.scope !26500 ; 2 uses
  %i.au = icmp eq i64 %.val.i28, 0
  br i1 %i.au, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit30", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i29 = load ptr, ptr %i.av, align 8, !alias.scope !26500, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i29, i64 noundef %.val.i28, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26500
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit30"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit30": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @92, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 109, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 265, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !26501)
  %.val.i31 = load i64, ptr %1, align 8, !alias.scope !26501 ; 2 uses
  %i.aw = icmp eq i64 %.val.i31, 0
  br i1 %i.aw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit23", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit30"
  %.val1.i32 = load ptr, ptr %i.j, align 8, !alias.scope !26501, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i32, i64 noundef %.val.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26501
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit23"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit27"
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN81_$LT$procfs_core..process..status..Status$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read28_$u7b$$u7b$closure$u7d$$u7d$17h52c6ea92f9a68604E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 8 uses
  switch i64 %i.m, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.k, align 1, !alias.scope !26528, !noundef !4 ; 2 uses
  switch i8 %i.n, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %i.k, align 1, !alias.scope !26528
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.o = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.n, %bb.b ]
  switch i8 %i.o, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.q = add i64 %i.m, -1                         ; 3 uses
  %i.r = icmp ult i64 %i.m, 9
  br i1 %i.r, label %.preheader.i, label %.preheader102.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.t = add i64 %i.m, -1                         ; 3 uses
  %i.u = icmp ult i64 %i.m, 9
  %.not91118.i = icmp eq i64 %i.t, 0              ; 2 uses
  br i1 %i.u, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.e
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.a

.preheader105.i:                                  ; preds = %bb.e
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i123, i64 1
  %i.w = add i64 %.sroa.27.0.i122, -1             ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.bd, 0        ; 2 uses
  %.not92.i = icmp eq i64 %i.w, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph124

.preheader108.i:                                  ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i119, i64 1
  %i.z = add i64 %.sroa.27.2.i118, -1             ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.ak, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.h, %bb.f, %bb.k, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.au, %bb.h ], [ %i.bm, %bb.k ], [ %i.x, %bb.f ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.aa, %.preheader108.i ]
  %i.ab = zext i32 %.sroa.033.3.i to i64
  %i.ac = shl nuw i64 %i.ab, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.a:                                         ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i119 = phi ptr [ %i.y, %.preheader108.i ], [ %i.s, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i118 = phi i64 [ %i.z, %.preheader108.i ], [ %i.t, %.preheader108.i.preheader ]
  %.sroa.033.2.i117 = phi i32 [ %i.aa, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.ad = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i117, i32 10) ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  %i.af = load i8, ptr %.sroa.03.2.i119, align 1, !alias.scope !26528, !noundef !4
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 9                   ; 2 uses
  %brmerge.i = select i1 %i.ai, i1 true, i1 %i.ae
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.aj = extractvalue { i32, i1 } %i.ad, 0
  %i.ak = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.aj, i32 %i.ah) ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  br i1 %i.al, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph124
  %.mux97.le.i = select i1 %i.bb, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.ai, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.j ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.g ]
  %i.am = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.h
  %.sroa.03.3121.i = phi ptr [ %i.at, %bb.h ], [ %i.s, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.as, %bb.h ], [ %i.t, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.au, %bb.h ], [ 0, %.preheader105.i ]
  %i.an = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !26528, !noundef !4
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 10
  br i1 %i.aq, label %bb.h, label %.loopexit101.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ar = mul i32 %.sroa.033.4119.i, 10
  %i.as = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.au = sub i32 %i.ar, %i.ap                    ; 2 uses
  %.not91.i = icmp eq i64 %i.as, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.av = icmp ult i64 %i.m, 8
  br i1 %i.av, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.03.1128.i.ph = phi ptr [ %i.k, %bb.i ], [ %i.p, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.m, %bb.i ], [ %i.q, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %i.m, %bb.i ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.k, %bb.i ], [ %i.p, %bb.d ]
  %.not92.i120 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i120, label %.loopexit.i, label %.lr.ph124

.preheader.i:                                     ; preds = %bb.d
  %.not93125.i = icmp eq i64 %i.q, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph124:                                        ; preds = %.preheader102.i, %bb.f
  %.sroa.03.0.i123 = phi ptr [ %i.v, %bb.f ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i122 = phi i64 [ %i.w, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i121 = phi i32 [ %i.x, %bb.f ], [ 0, %.preheader102.i ]
  %i.aw = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i121, i32 10) ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.aw, 1
  %i.ay = load i8, ptr %.sroa.03.0.i123, align 1, !alias.scope !26528, !noundef !4
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.bb, i1 true, i1 %i.ax
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph124
  %i.bc = extractvalue { i32, i1 } %i.aw, 0
  %i.bd = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bc, i32 %i.ba) ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %.loopexit101.i, label %bb.f

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.k
  %.sroa.03.1128.i = phi ptr [ %i.bl, %bb.k ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.bk, %bb.k ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.bm, %bb.k ], [ 0, %.lr.ph129.i.preheader ]
  %i.bf = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !26528, !noundef !4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.k, label %.loopexit101.i

bb.k:                                             ; preds = %.lr.ph129.i
  %i.bj = mul i32 %.sroa.033.1126.i, 10
  %i.bk = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.bm = add i32 %i.bh, %i.bj                    ; 2 uses
  %.not93.i = icmp eq i64 %i.bk, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit33": ; preds = %bb.r, %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bt, %bb.q ], [ %i.bt, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26529)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !26529 ; 2 uses
  %i.bn = icmp eq i64 %.val.i, 0
  br i1 %i.bn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit33"
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !26529, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26529
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit"

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit33"

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit101.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.ac, %.loopexit.i ], [ %i.am, %.loopexit101.i ] ; 3 uses
  %i.bp = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.bp, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.n

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.b, %bb.b, %bb.a, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.sroa.12.0.insert.insert.i47 = phi i64 [ %.sroa.12.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit" ], [ 257, %bb.b ], [ 257, %bb.b ], [ 1, %bb.a ]
  %.sroa.423.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i47, 8
  %.sroa.423.0.extract.trunc = trunc i64 %.sroa.423.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.423.0.extract.trunc, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd82d960556626fe9E", ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26530
  store ptr @904, ptr %i.b, align 8, !noalias !26531
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.441.0..sroa_idx, align 8, !noalias !26531
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !26531
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.643.0..sroa_idx, align 8, !noalias !26531
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.744.0..sroa_idx, align 8, !noalias !26531
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.sroa.625.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.625.0.extract.trunc, ptr %i.bq, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26532)
  %.val.i27 = load i64, ptr %1, align 8, !alias.scope !26532 ; 2 uses
  %i.br = icmp eq i64 %.val.i27, 0
  br i1 %i.br, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit29", label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.val.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26532
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit29"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit29": ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit36", %bb.o, %bb.n
  ret void

bb.p:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.415.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %i.bs, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.419.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26533
  store ptr @26, ptr %i.a, align 8, !noalias !26534
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !26534
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !26534
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !26534
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26534
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26535)
  %.val.i31 = load i64, ptr %i.f, align 8, !alias.scope !26535 ; 2 uses
  %i.bu = icmp eq i64 %.val.i31, 0
end_hunk_10
begin_hunk_11_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h7a62add5da8aad4bE":bb.a
  br i1 %.not.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !26969
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = add i64 %i.i, %i.am
  store i64 %i.ao, ptr %i.h, align 8, !alias.scope !26969, !noalias !26972
  br label %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %.sroa.612.015 = phi i64 [ %i.aa, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.y, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.ap = inttoptr i64 %.sroa.612.015 to ptr
  br label %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread21: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %i.aq = phi i64 [ %i.aa, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.y, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.ar = phi i64 [ %i.b, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26973)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !26973, !noalias !26974, !noundef !4
  %i.av = sub i64 %i.au, %i.m
  %.sroa.0.0.i.i10 = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.av) ; 3 uses
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !26973, !noalias !26975, !nonnull !4, !align !5, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.as, i64 %.sroa.0.0.i.i10, i1 false), !alias.scope !26976, !noalias !26977
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !26973, !noalias !26975, !noundef !4
  %i.ba = add i64 %.sroa.0.0.i.i10, %i.m          ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %i.az)
  store i64 %.sroa.0.0.i.i.i, ptr %i.ay, align 8, !alias.scope !26973, !noalias !26975
  store i64 %i.ba, ptr %i.n, align 8, !alias.scope !26973, !noalias !26975
  %i.bb = load i64, ptr %i.a, align 8, !noundef !4
  %i.bc = add i64 %i.bb, %.sroa.0.0.i.i10
  %i.bd = load i64, ptr %i.c, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bc)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  br label %_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit

_ZN3std2io4Read8read_buf17hb0f078c967ef930dE.exit: ; preds = %bb.j, %bb.g, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread21
  %.sroa.05.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread21 ], [ %i.ap, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread ], [ null, %bb.j ], [ %i.al, %bb.g ]
  ret ptr %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$procfs..process..FDsIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h833fbabf2d8ed247E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [256 x i8], align 1               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [256 x i8], align 1               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [256 x i8], align 1               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.721.i = alloca [32 x i8], align 8        ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 13 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.z = load i64, ptr %i.y, align 8, !range !18, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %.sroa.827.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.235.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.336.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9145.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.368.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit45"
  %i.au = load ptr, ptr %i.ab, align 8, !noundef !4 ; 8 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit45", %bb.a
  store i64 -9223372036854775802, ptr %0, align 8
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit34"

"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit34": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i33", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit32", %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aw = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !noundef !4
  %i.ax = sext i16 %i.aw to i64
  %.neg = mul nsw i64 %i.ax, -4294967296
  %i.ay = or disjoint i64 %.neg, 2
  %i.az = inttoptr i64 %i.ay to ptr
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.az)
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit34"

bb.d:                                             ; preds = %bb.b
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %.sroa.8.0.copyload)
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit": ; preds = %.body, %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.e ], [ %eh.lpad-body, %bb.r ], [ %eh.lpad-body, %.body ]
  store i8 0, ptr %i.au, align 1
  %i.ba = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.ba, label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %.sroa.8.0.copyload, i64 noundef 1) #42
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit"

bb.e:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.f:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.ac, align 8, !nonnull !4 ; 12 uses
  %i.bd = load i64, ptr %i.ad, align 8            ; 14 uses
  switch i64 %i.bd, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %i.bc, align 1, !alias.scope !27063, !noundef !4 ; 2 uses
  switch i8 %i.be, label %bb.h [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %i.bc, align 1, !alias.scope !27063
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.bf = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.be, %bb.g ]
  switch i8 %i.bf, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bh = add i64 %i.bd, -1                       ; 3 uses
  %i.bi = icmp ult i64 %i.bd, 9
  br i1 %i.bi, label %.preheader.i, label %.preheader102.i

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bk = add i64 %i.bd, -1                       ; 3 uses
  %i.bl = icmp ult i64 %i.bd, 9
  %.not91118.i = icmp eq i64 %i.bk, 0             ; 2 uses
  br i1 %i.bl, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph319

.preheader105.i:                                  ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i323, i64 1
  %i.bn = add i64 %.sroa.27.0.i322, -1            ; 2 uses
  %i.bo = extractvalue { i32, i1 } %i.cu, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.bn, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph324

.preheader108.i:                                  ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i318, i64 1
  %i.bq = add i64 %.sroa.27.2.i317, -1            ; 2 uses
  %i.br = extractvalue { i32, i1 } %i.cb, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph319

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.cl, %bb.m ], [ %i.dd, %bb.p ], [ %i.bo, %bb.k ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.br, %.preheader108.i ]
  %i.bs = zext i32 %.sroa.033.3.i to i64
  %i.bt = shl nuw i64 %i.bs, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph319:                                        ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i318 = phi ptr [ %i.bp, %.preheader108.i ], [ %i.bj, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i317 = phi i64 [ %i.bq, %.preheader108.i ], [ %i.bk, %.preheader108.i.preheader ]
  %.sroa.033.2.i316 = phi i32 [ %i.br, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.bu = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i316, i32 10) ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1
  %i.bw = load i8, ptr %.sroa.03.2.i318, align 1, !alias.scope !27063, !noundef !4
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 9                   ; 2 uses
  %brmerge.i = select i1 %i.bz, i1 true, i1 %i.bv
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph319
  %i.ca = extractvalue { i32, i1 } %i.bu, 0
  %i.cb = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ca, i32 %i.by) ; 2 uses
  %i.cc = extractvalue { i32, i1 } %i.cb, 1
  br i1 %i.cc, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph324
  %.mux97.le.i = select i1 %i.cs, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph319
  %.mux.le.i = select i1 %i.bz, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.l, %.lr.ph.i, %bb.o, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.l ]
  %i.cd = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.m
  %.sroa.03.3121.i = phi ptr [ %i.ck, %bb.m ], [ %i.bj, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.cj, %bb.m ], [ %i.bk, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.cl, %bb.m ], [ 0, %.preheader105.i ]
  %i.ce = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !27063, !noundef !4
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 10
  br i1 %i.ch, label %bb.m, label %.loopexit101.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ci = mul i32 %.sroa.033.4119.i, 10
  %i.cj = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.cl = sub i32 %i.ci, %i.cg                    ; 2 uses
  %.not91.i = icmp eq i64 %i.cj, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.h
  %i.cm = icmp ult i64 %i.bd, 8
  br i1 %i.cm, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.n
  %.sroa.03.1128.i.ph = phi ptr [ %i.bc, %bb.n ], [ %i.bg, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.bd, %bb.n ], [ %i.bh, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i = phi i64 [ %i.bd, %bb.n ], [ %i.bh, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.bc, %bb.n ], [ %i.bg, %bb.i ]
  %.not92.i320 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i320, label %.loopexit.i, label %.lr.ph324

.preheader.i:                                     ; preds = %bb.i
  %.not93125.i = icmp eq i64 %i.bh, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph324:                                        ; preds = %.preheader102.i, %bb.k
  %.sroa.03.0.i323 = phi ptr [ %i.bm, %bb.k ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i322 = phi i64 [ %i.bn, %bb.k ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i321 = phi i32 [ %i.bo, %bb.k ], [ 0, %.preheader102.i ]
  %i.cn = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i321, i32 10) ; 2 uses
  %i.co = extractvalue { i32, i1 } %i.cn, 1
  %i.cp = load i8, ptr %.sroa.03.0.i323, align 1, !alias.scope !27063, !noundef !4
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.cs, i1 true, i1 %i.co
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph324
  %i.ct = extractvalue { i32, i1 } %i.cn, 0
  %i.cu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ct, i32 %i.cr) ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 1
  br i1 %i.cv, label %.loopexit101.i, label %bb.k

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.p
  %.sroa.03.1128.i = phi ptr [ %i.dc, %bb.p ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.db, %bb.p ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.dd, %bb.p ], [ 0, %.lr.ph129.i.preheader ]
  %i.cw = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !27063, !noundef !4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.p, label %.loopexit101.i

bb.p:                                             ; preds = %.lr.ph129.i
  %i.da = mul i32 %.sroa.033.1126.i, 10
  %i.db = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.dd = add i32 %i.cy, %i.da                    ; 2 uses
  %.not93.i = icmp eq i64 %i.db, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

bb.q:                                             ; preds = %bb.bm, %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.x, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.q ], [ %.pn83.i, %bb.x ], [ %.pn83.i, %bb.w ] ; 2 uses
  %.val20 = load i64, ptr %i.x, align 8, !range !10, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val20, 0
  br i1 %switch, label %bb.r, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.r:                                             ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !27064
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit101.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.bt, %.loopexit.i ], [ %i.cd, %.loopexit101.i ] ; 2 uses
  %.sroa.512.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.512.0.extract.trunc = trunc nuw i64 %.sroa.512.0.extract.shift to i32
  %i.df = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.df, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.t

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.g, %bb.g, %bb.f, %"_ZN4core3ptr97drop_in_place$LT$core..result..Result$LT$procfs..process..FDInfo$C$procfs_core..ProcError$GT$$GT$17h90ab59bd58947e32E.exit43", %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.val18 = load i64, ptr %i.x, align 8, !range !10, !noundef !4 ; 2 uses
  %switch49 = icmp sgt i64 %.val18, 0
  br i1 %switch49, label %bb.s, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit28"

bb.s:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %.val18, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !27065
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit28"

bb.t:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dg = load i32, ptr %i.ae, align 8, !range !12, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !27066)
  call void @llvm.experimental.noalias.scope.decl(metadata !27067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !27068
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !27067, !noalias !27069, !nonnull !4, !noundef !4
  %.val1.i.i = load i64, ptr %i.ag, align 8, !alias.scope !27067, !noalias !27069, !noundef !4
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.bd)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !27068
  call void @llvm.experimental.noalias.scope.decl(metadata !27070)
  %i.dh = load atomic i32, ptr @_ZN6procfs3sys6kernel7Version6cached6KERNEL17had4cd194a200e515E.0 monotonic, align 4, !noalias !27071 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !27071
  invoke void @_ZN6procfs3sys6kernel7Version7current17h1d16e5e271d72513E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m)
          to label %.noexc.i unwind label %.loopexit, !noalias !27072

.noexc.i:                                         ; preds = %bb.u
  %i.dj = load i64, ptr %i.m, align 8, !range !9, !noalias !27071, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dj, -9223372036854775803
  %.sroa.016.0.copyload.i.i = load i16, ptr %i.ah, align 8, !noalias !27071 ; 2 uses
  %.sroa.517.0.copyload.i.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i, align 2, !noalias !27071 ; 2 uses
  %.sroa.618.0.copyload.i.i = load i8, ptr %.sroa.618.0..sroa_idx.i.i, align 1, !noalias !27071 ; 2 uses
  br i1 %.not.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27071
  %.sroa.016.0.copyload.zext.i.i = zext i16 %.sroa.016.0.copyload.i.i to i32
  %.sroa.633.0.insert.shift.i.i = shl nuw i32 %.sroa.016.0.copyload.zext.i.i, 16
  %.sroa.431.0.insert.ext.i.i = zext i8 %.sroa.618.0.copyload.i.i to i32
  %.sroa.431.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.431.0.insert.ext.i.i, 8
  %.sroa.030.0.insert.ext.i.i = zext i8 %.sroa.517.0.copyload.i.i to i32
  %.sroa.431.0.insert.insert.i.i = or disjoint i32 %.sroa.633.0.insert.shift.i.i, %.sroa.030.0.insert.ext.i.i
  %.sroa.030.0.insert.insert.i.i = or disjoint i32 %.sroa.431.0.insert.insert.i.i, %.sroa.431.0.insert.shift.i.i ; 2 uses
  store atomic i32 %.sroa.030.0.insert.insert.i.i, ptr @_ZN6procfs3sys6kernel7Version6cached6KERNEL17had4cd194a200e515E.0 release, align 4, !noalias !27071
  br label %.thread.i

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body.i
  %.pn83.i = phi { ptr, i32 } [ %.pn81.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27073)
  %.val.i106.i = load i64, ptr %i.v, align 8, !alias.scope !27073, !noalias !27068 ; 2 uses
  %i.dk = icmp eq i64 %.val.i106.i, 0
  br i1 %i.dk, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i107.i = load ptr, ptr %i.ar, align 8, !alias.scope !27073, !noalias !27068, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i107.i, i64 noundef %.val.i106.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !27074
  br label %.body

.loopexit:                                        ; preds = %bb.u, %bb.y, %bb.z, %bb.aa, %bb.ag, %bb.ai, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.ae, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.thread.i:                                        ; preds = %bb.v, %.noexc
  %.sroa.0.0.i.i = phi i32 [ %.sroa.030.0.insert.insert.i.i, %bb.v ], [ %i.dh, %.noexc ] ; 2 uses
end_hunk_11
begin_hunk_12_@"_ZN84_$LT$procfs_core..process..schedstat..Schedstat$u20$as$u20$procfs_core..FromRead$GT$9from_read17h74579bb9ba7ac913E":bb.a

bb.w:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #44
          to label %bb.b unwind label %bb.v

bb.x:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @920, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 112, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 32, ptr %.sroa.620.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef align 8 dereferenceable(48) %i.k)
          to label %bb.y unwind label %bb.d

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.z:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef align 8 dereferenceable(48) %i.o) #44
          to label %bb.b unwind label %bb.v

bb.aa:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @920, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 112, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 31, ptr %.sroa.610.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h07c28042ff914719E"(ptr noalias noundef align 8 dereferenceable(48) %i.o)
          to label %bb.ab unwind label %bb.d

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.u

bb.ac:                                            ; preds = %bb.ae, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !28340)
  %.val.i82 = load i64, ptr %i.r, align 8, !alias.scope !28340 ; 2 uses
  %i.au = icmp eq i64 %.val.i82, 0
  br i1 %i.au, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit84", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i83 = load ptr, ptr %.sroa.433.0..sroa_idx, align 8, !alias.scope !28340, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i83, i64 noundef %.val.i82, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28340
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit84"

bb.ae:                                            ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit84": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !28341)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i85 = load i32, ptr %i.av, align 8, !range !12, !alias.scope !28341, !noundef !4
  %i.aw = call noundef i32 @close(i32 noundef %.val.i85) #42, !noalias !28341 ; 0 uses
  %.val.i1.i86 = load i64, ptr %1, align 8, !alias.scope !28342 ; 2 uses
  %i.ax = icmp eq i64 %.val.i1.i86, 0
  br i1 %i.ax, label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit", label %"_ZN4core3ptr40drop_in_place$LT$procfs..FileWrapper$GT$17hc0e045d5bd7d3969E.exit.sink.split"
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$procfs..process..TasksIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e46186d8d03c34eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 1               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.n = load i64, ptr %i.m, align 8, !range !18, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit38"
  %i.af = load ptr, ptr %i.p, align 8, !noundef !4 ; 8 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit38", %bb.a
  store i64 -9223372036854775802, ptr %0, align 8
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit31"

"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit31": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i30", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit29", %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ah = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !noundef !4
  %i.ai = sext i16 %i.ah to i64
  %.neg = mul nsw i64 %i.ai, -4294967296
  %i.aj = or disjoint i64 %.neg, 2
  %i.ak = inttoptr i64 %i.aj to ptr
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.ak)
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit31"

bb.d:                                             ; preds = %bb.b
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %.sroa.8.0.copyload)
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit": ; preds = %.body, %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.am, %bb.e ], [ %eh.lpad-body, %bb.r ], [ %eh.lpad-body, %.body ]
  store i8 0, ptr %i.af, align 1
  %i.al = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.al, label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %.sroa.8.0.copyload, i64 noundef 1) #42
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit"

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.q, align 8, !nonnull !4 ; 9 uses
  %i.ao = load i64, ptr %i.r, align 8             ; 8 uses
  switch i64 %i.ao, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.an, align 1, !alias.scope !28385, !noundef !4 ; 2 uses
  switch i8 %i.ap, label %bb.h [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %i.an, align 1, !alias.scope !28385
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.aq = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ap, %bb.g ]
  switch i8 %i.aq, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.as = add i64 %i.ao, -1                       ; 3 uses
  %i.at = icmp ult i64 %i.ao, 9
  br i1 %i.at, label %.preheader.i, label %.preheader102.i

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.av = add i64 %i.ao, -1                       ; 3 uses
  %i.aw = icmp ult i64 %i.ao, 9
  %.not91118.i = icmp eq i64 %i.av, 0             ; 2 uses
  br i1 %i.aw, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph270

.preheader105.i:                                  ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i274, i64 1
  %i.ay = add i64 %.sroa.27.0.i273, -1            ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.cf, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.ay, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph275

.preheader108.i:                                  ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i269, i64 1
  %i.bb = add i64 %.sroa.27.2.i268, -1            ; 2 uses
  %i.bc = extractvalue { i32, i1 } %i.bm, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph270

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.bw, %bb.m ], [ %i.co, %bb.p ], [ %i.az, %bb.k ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.bc, %.preheader108.i ]
  %i.bd = zext i32 %.sroa.033.3.i to i64
  %i.be = shl nuw i64 %i.bd, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph270:                                        ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i269 = phi ptr [ %i.ba, %.preheader108.i ], [ %i.au, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i268 = phi i64 [ %i.bb, %.preheader108.i ], [ %i.av, %.preheader108.i.preheader ]
  %.sroa.033.2.i267 = phi i32 [ %i.bc, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.bf = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i267, i32 10) ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1
  %i.bh = load i8, ptr %.sroa.03.2.i269, align 1, !alias.scope !28385, !noundef !4
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, 9                   ; 2 uses
  %brmerge.i = select i1 %i.bk, i1 true, i1 %i.bg
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph270
  %i.bl = extractvalue { i32, i1 } %i.bf, 0
  %i.bm = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bl, i32 %i.bj) ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph275
  %.mux97.le.i = select i1 %i.cd, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph270
  %.mux.le.i = select i1 %i.bk, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.l, %.lr.ph.i, %bb.o, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.l ]
  %i.bo = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.m
  %.sroa.03.3121.i = phi ptr [ %i.bv, %bb.m ], [ %i.au, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.bu, %bb.m ], [ %i.av, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.bw, %bb.m ], [ 0, %.preheader105.i ]
  %i.bp = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !28385, !noundef !4
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %i.bs = icmp ult i32 %i.br, 10
  br i1 %i.bs, label %bb.m, label %.loopexit101.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bt = mul i32 %.sroa.033.4119.i, 10
  %i.bu = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.bw = sub i32 %i.bt, %i.br                    ; 2 uses
  %.not91.i = icmp eq i64 %i.bu, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.h
  %i.bx = icmp ult i64 %i.ao, 8
  br i1 %i.bx, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.n
  %.sroa.03.1128.i.ph = phi ptr [ %i.an, %bb.n ], [ %i.ar, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.ao, %bb.n ], [ %i.as, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i = phi i64 [ %i.ao, %bb.n ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.an, %bb.n ], [ %i.ar, %bb.i ]
  %.not92.i271 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i271, label %.loopexit.i, label %.lr.ph275

.preheader.i:                                     ; preds = %bb.i
  %.not93125.i = icmp eq i64 %i.as, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph275:                                        ; preds = %.preheader102.i, %bb.k
  %.sroa.03.0.i274 = phi ptr [ %i.ax, %bb.k ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i273 = phi i64 [ %i.ay, %bb.k ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i272 = phi i32 [ %i.az, %bb.k ], [ 0, %.preheader102.i ]
  %i.by = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i272, i32 10) ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 1
  %i.ca = load i8, ptr %.sroa.03.0.i274, align 1, !alias.scope !28385, !noundef !4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.cd, i1 true, i1 %i.bz
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph275
  %i.ce = extractvalue { i32, i1 } %i.by, 0
  %i.cf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ce, i32 %i.cc) ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 1
  br i1 %i.cg, label %.loopexit101.i, label %bb.k

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.p
  %.sroa.03.1128.i = phi ptr [ %i.cn, %bb.p ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.cm, %bb.p ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.co, %bb.p ], [ 0, %.lr.ph129.i.preheader ]
  %i.ch = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !28385, !noundef !4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.p, label %.loopexit101.i

bb.p:                                             ; preds = %.lr.ph129.i
  %i.cl = mul i32 %.sroa.033.1126.i, 10
  %i.cm = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.co = add i32 %i.cj, %i.cl                    ; 2 uses
  %.not93.i = icmp eq i64 %i.cm, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

bb.q:                                             ; preds = %bb.ao, %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i", %bb.v, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cp, %bb.q ], [ %.pn.i, %bb.v ], [ %.pn.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i" ] ; 2 uses
  %.val17 = load i64, ptr %i.l, align 8, !range !10, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val17, 0
  br i1 %switch, label %bb.r, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.r:                                             ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28386
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit101.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.be, %.loopexit.i ], [ %i.bo, %.loopexit101.i ] ; 2 uses
  %.sroa.510.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.510.0.extract.trunc = trunc nuw i64 %.sroa.510.0.extract.shift to i32 ; 2 uses
  %i.cq = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.cq, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.t

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.g, %bb.g, %bb.f, %"_ZN4core3ptr101drop_in_place$LT$core..result..Result$LT$procfs..process..task..Task$C$procfs_core..ProcError$GT$$GT$17hdcda3bdf6a2e0254E.exit36", %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.val15 = load i64, ptr %i.l, align 8, !range !10, !noundef !4 ; 2 uses
  %switch44 = icmp sgt i64 %.val15, 0
  br i1 %switch44, label %bb.s, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit26"

bb.s:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.val15, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28387
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit26"

bb.t:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cr = load i32, ptr %i.s, align 8, !range !12, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, i32 %.sroa.510.0.extract.trunc)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t
  %i.cs = load i32, ptr %i.t, align 4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !28388)
  call void @llvm.experimental.noalias.scope.decl(metadata !28389)
  call void @llvm.experimental.noalias.scope.decl(metadata !28390)
  %.val20.i = load ptr, ptr %i.u, align 8, !alias.scope !28390, !noalias !28391, !nonnull !4, !noundef !4 ; 5 uses
  %.val21.i = load i64, ptr %i.v, align 8, !alias.scope !28390, !noalias !28391, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28392
  %.val.i23.i = load ptr, ptr %i.w, align 8, !alias.scope !28389, !noalias !28393, !nonnull !4, !noundef !4
  %.val1.i24.i = load i64, ptr %i.x, align 8, !alias.scope !28389, !noalias !28393, !noundef !4
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i23.i, i64 noundef %.val1.i24.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val20.i, i64 noundef %.val21.i)
          to label %_ZN3std4path4Path4join17h3f656695f7439093E.exit.i unwind label %bb.w, !noalias !28392

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i": ; preds = %bb.af, %bb.ae, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.cu, %bb.w ], [ %lpad.phi, %bb.ae ], [ %lpad.phi, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28394)
  %.val.i.i = load i64, ptr %i.j, align 8, !alias.scope !28395, !noalias !28391 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i, 0
  br i1 %i.ct, label %.body, label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28396
  br label %.body

bb.w:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h6c9b0e7a1d081e2bE.exit.i"

_ZN3std4path4Path4join17h3f656695f7439093E.exit.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28392
  store i32 %i.cr, ptr %i.f, align 4, !noalias !28397
  store i32 2686976, ptr %i.e, align 4, !noalias !28397
  store i32 0, ptr %i.d, align 4, !noalias !28397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28397
  store ptr %i.f, ptr %i.c, align 8, !noalias !28397
  store ptr %i.e, ptr %i.y, align 8, !noalias !28397
  store ptr %i.d, ptr %i.z, align 8, !noalias !28397
  %i.cv = icmp ugt i64 %.val21.i, 255
  br i1 %i.cv, label %bb.y, label %bb.x, !prof !8

bb.x:                                             ; preds = %_ZN3std4path4Path4join17h3f656695f7439093E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28398
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %.val20.i, i64 %.val21.i, i1 false), !noalias !28399
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %.val21.i
  store i8 0, ptr %i.cw, align 1, !noalias !28398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28398
  %i.cx = add nuw nsw i64 %.val21.i, 1
  invoke void @_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hd9d3fcb195341c68E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.cx)
          to label %.noexc.i unwind label %.loopexit, !noalias !28392

.noexc.i:                                         ; preds = %bb.x
  %i.cy = load i64, ptr %i.a, align 8, !range !18, !noalias !28398, !noundef !4
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %.thread.i, label %bb.z

bb.y:                                             ; preds = %_ZN3std4path4Path4join17h3f656695f7439093E.exit.i
  %i.da = invoke fastcc i64 @_ZN6rustix4path3arg20with_c_str_slow_path17hea509bcc799bf35aE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val20.i, i64 noundef %.val21.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
end_hunk_12
begin_hunk_13_@"_ZN88_$LT$procfs..sys..fs..binfmt_misc.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h57d2befff73403f1E":.peel.begin
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i.i.2 = load i8, ptr %i.ag, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.ah = and i8 %.val.i.i.2, %i.e
  %i.ai = icmp eq i8 %i.ah, %.val.i.i.2
  %i.aj = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.ak = icmp ne i8 %i.aj, 0
  %or.cond.i.i.2 = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.af, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @927, i64 %i.af ; 2 uses
  %i.am = or disjoint i64 %.sroa.7.0.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val.i.i.3 = load i8, ptr %i.an, align 8, !noalias !28494, !noundef !4 ; 4 uses
  %i.ao = and i8 %.val.i.i.3, %i.e
  %i.ap = icmp eq i8 %i.ao, %.val.i.i.3
  %i.aq = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.ar = icmp ne i8 %i.aq, 0
  %or.cond.i.i.3 = and i1 %i.ar, %i.ap
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.q, %.lr.ph.split.i.i ], [ %i.x, %.lr.ph.split.i.i.1 ], [ %i.ae, %.lr.ph.split.i.i.2 ], [ %i.al, %.lr.ph.split.i.i.3 ]
  %.lcssa = phi i64 [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ], [ %i.am, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.as = xor i8 %.val.i.i.lcssa, -1
  %i.at = and i8 %.sroa.13.0.i, %i.as
  %i.au = load ptr, ptr %.lcssa56, align 8, !noalias !28494, !nonnull !4, !align !5, !noundef !4
  %i.av = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.av, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28493
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !28493
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @929, i64 noundef 3)
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ax = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 2)
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28493
  store ptr %i.d, ptr %i.c, align 8, !noalias !28496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28496
  store ptr %i.c, ptr %i.b, align 8, !noalias !28496
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h8b4338ae57529e35E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !28496
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !28497, !noalias !28498
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !28497, !noalias !28498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28499
  store ptr @70, ptr %i.a, align 8, !noalias !28496
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !28496
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !28496
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !28496
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !28496
  %i.az = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28493
  br i1 %i.az, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28493
  br label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit

bb.h:                                             ; preds = %bb.b
  %i.ba = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef 1)
  br i1 %i.ba, label %_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit, label %.peel.newph, !llvm.loop !28492

_ZN8bitflags6parser9to_writer17h590e89c9094588a6E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$procfs..process..ProcessesIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce8a9a3006e74b07E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN6rustix7backend2fs3dir3Dir4read17hfeacc9ed2f9c01baE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.g = load i64, ptr %i.e, align 8, !range !18, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28"
  %i.l = load ptr, ptr %i.i, align 8, !noundef !4 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit28", %bb.a
  store i64 -9223372036854775802, ptr %0, align 8
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26"

"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i25", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24", %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !noundef !4
  %i.o = sext i16 %i.n to i64
  %.neg = mul nsw i64 %i.o, -4294967296
  %i.p = or disjoint i64 %.neg, 2
  %i.q = inttoptr i64 %i.p to ptr
  call void @"_ZN91_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h941382f9de96e267E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.q)
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26"

bb.d:                                             ; preds = %bb.b
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %.sroa.8.0.copyload)
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit": ; preds = %.body, %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %eh.lpad-body, %bb.r ], [ %eh.lpad-body, %.body ]
  store i8 0, ptr %i.l, align 1
  %i.r = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.r, label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.sroa.8.0.copyload, i64 noundef 1) #42
  br label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit"

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !range !10, !noundef !4 ; 6 uses
  %i.u = load ptr, ptr %i.j, align 8              ; 12 uses
  %i.v = load i64, ptr %i.k, align 8              ; 8 uses
  switch i64 %i.v, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !alias.scope !28517, !noundef !4 ; 2 uses
  switch i8 %i.w, label %bb.h [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %i.u, align 1, !alias.scope !28517
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.x = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.w, %bb.g ]
  switch i8 %i.x, label %bb.n [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.z = add i64 %i.v, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.v, 9
  br i1 %i.aa, label %.preheader.i, label %.preheader102.i

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.ac = add i64 %i.v, -1                        ; 3 uses
  %i.ad = icmp ult i64 %i.v, 9
  %.not91118.i = icmp eq i64 %i.ac, 0             ; 2 uses
  br i1 %i.ad, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph151

.preheader105.i:                                  ; preds = %bb.j
  br i1 %.not91118.i, label %.loopexit.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i155, i64 1
  %i.af = add i64 %.sroa.27.0.i154, -1            ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.bm, 0       ; 2 uses
  %.not92.i = icmp eq i64 %i.af, 0
  br i1 %.not92.i, label %.loopexit.i, label %.lr.ph156

.preheader108.i:                                  ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i150, i64 1
  %i.ai = add i64 %.sroa.27.2.i149, -1            ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph151

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.m, %bb.k, %bb.p, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.033.3.i = phi i32 [ %i.bd, %bb.m ], [ %i.bv, %bb.p ], [ %i.ag, %bb.k ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.aj, %.preheader108.i ]
  %i.ak = zext i32 %.sroa.033.3.i to i64
  %i.al = shl nuw i64 %i.ak, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph151:                                        ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.03.2.i150 = phi ptr [ %i.ah, %.preheader108.i ], [ %i.ab, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i149 = phi i64 [ %i.ai, %.preheader108.i ], [ %i.ac, %.preheader108.i.preheader ]
  %.sroa.033.2.i148 = phi i32 [ %i.aj, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.am = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i148, i32 10) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  %i.ao = load i8, ptr %.sroa.03.2.i150, align 1, !alias.scope !28517, !noundef !4
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9                   ; 2 uses
  %brmerge.i = select i1 %i.ar, i1 true, i1 %i.an
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph151
  %i.as = extractvalue { i32, i1 } %i.am, 0
  %i.at = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.au, label %.loopexit101.i, label %.preheader108.i

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph156
  %.mux97.le.i = select i1 %i.bk, i64 256, i64 512
  br label %.loopexit101.i

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph151
  %.mux.le.i = select i1 %i.ar, i64 256, i64 768
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %bb.l, %.lr.ph.i, %bb.o, %.lr.ph129.i, %.loopexit110.split.loop.exit116.i, %.loopexit104.split.loop.exit122.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph129.i ], [ 512, %bb.o ], [ 256, %.lr.ph.i ], [ %.mux97.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 768, %bb.l ]
  %i.av = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.m
  %.sroa.03.3121.i = phi ptr [ %i.bc, %bb.m ], [ %i.ab, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.bb, %bb.m ], [ %i.ac, %.preheader105.i ]
  %.sroa.033.4119.i = phi i32 [ %i.bd, %bb.m ], [ 0, %.preheader105.i ]
  %i.aw = load i8, ptr %.sroa.03.3121.i, align 1, !alias.scope !28517, !noundef !4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.m, label %.loopexit101.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ba = mul i32 %.sroa.033.4119.i, 10
  %i.bb = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i, i64 1
  %i.bd = sub i32 %i.ba, %i.ay                    ; 2 uses
  %.not91.i = icmp eq i64 %i.bb, 0
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.h
  %i.be = icmp ult i64 %i.v, 8
  br i1 %i.be, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.n
  %.sroa.03.1128.i.ph = phi ptr [ %i.u, %bb.n ], [ %i.y, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %i.v, %bb.n ], [ %i.z, %.preheader.i ]
  br label %.lr.ph129.i

.preheader102.i:                                  ; preds = %bb.n, %bb.i
  %.sroa.27.0.ph.i = phi i64 [ %i.v, %bb.n ], [ %i.z, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.u, %bb.n ], [ %i.y, %bb.i ]
  %.not92.i152 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not92.i152, label %.loopexit.i, label %.lr.ph156

.preheader.i:                                     ; preds = %bb.i
  %.not93125.i = icmp eq i64 %i.z, 0
  br i1 %.not93125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph156:                                        ; preds = %.preheader102.i, %bb.k
  %.sroa.03.0.i155 = phi ptr [ %i.ae, %bb.k ], [ %.sroa.03.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i154 = phi i64 [ %i.af, %bb.k ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.033.0.i153 = phi i32 [ %i.ag, %bb.k ], [ 0, %.preheader102.i ]
  %i.bf = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i153, i32 10) ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1
  %i.bh = load i8, ptr %.sroa.03.0.i155, align 1, !alias.scope !28517, !noundef !4
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, 9                   ; 2 uses
  %brmerge96.i = select i1 %i.bk, i1 true, i1 %i.bg
  br i1 %brmerge96.i, label %.loopexit104.split.loop.exit122.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph156
  %i.bl = extractvalue { i32, i1 } %i.bf, 0
  %i.bm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bl, i32 %i.bj) ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %.loopexit101.i, label %bb.k

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.p
  %.sroa.03.1128.i = phi ptr [ %i.bu, %bb.p ], [ %.sroa.03.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.bt, %bb.p ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.033.1126.i = phi i32 [ %i.bv, %bb.p ], [ 0, %.lr.ph129.i.preheader ]
  %i.bo = load i8, ptr %.sroa.03.1128.i, align 1, !alias.scope !28517, !noundef !4
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.p, label %.loopexit101.i

bb.p:                                             ; preds = %.lr.ph129.i
  %i.bs = mul i32 %.sroa.033.1126.i, 10
  %i.bt = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i, i64 1
  %i.bv = add i32 %i.bq, %i.bs                    ; 2 uses
  %.not93.i = icmp eq i64 %i.bt, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph129.i

bb.q:                                             ; preds = %bb.t, %_ZN3std4path4Path4join17h9f68b230b187a36aE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.w, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %i.ce, %bb.w ], [ %i.ce, %bb.v ] ; 2 uses
  %switch = icmp sgt i64 %i.t, 0
  br i1 %switch, label %bb.r, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

bb.r:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28518
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit"

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit": ; preds = %.loopexit101.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.al, %.loopexit.i ], [ %i.av, %.loopexit101.i ] ; 2 uses
  %i.bx = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.bx, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread", label %bb.t

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread": ; preds = %bb.g, %bb.g, %bb.f, %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %switch32 = icmp sgt i64 %i.t, 0
  br i1 %switch32, label %bb.s, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit22"

bb.s:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28519
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit22"

bb.t:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hcbc7a36f56bd7621E.exit"
  %.sroa.58.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.58.0.extract.trunc = trunc nuw i64 %.sroa.58.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i32 %.sroa.58.0.extract.trunc)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !28520)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.cc, align 8, !alias.scope !28520, !noalias !28521, !nonnull !4, !noundef !4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i = load i64, ptr %i.cd, align 8, !alias.scope !28520, !noalias !28521, !noundef !4
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bz, i64 noundef %i.cb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.x unwind label %bb.v, !noalias !28520

bb.v:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28522)
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !28523, !noalias !28521 ; 2 uses
  %i.cf = icmp eq i64 %.val.i.i, 0
  br i1 %i.cf, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28524
  br label %.body

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !28525)
  %.val.i2.i = load i64, ptr %i.a, align 8, !alias.scope !28526, !noalias !28521 ; 2 uses
  %i.cg = icmp eq i64 %.val.i2.i, 0
  br i1 %i.cg, label %_ZN3std4path4Path4join17h9f68b230b187a36aE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28527
  br label %_ZN3std4path4Path4join17h9f68b230b187a36aE.exit

_ZN3std4path4Path4join17h9f68b230b187a36aE.exit:  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN6procfs7process7Process13new_with_root17h077a2d07b3077e5dE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %_ZN3std4path4Path4join17h9f68b230b187a36aE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %switch34 = icmp sgt i64 %i.t, 0
  br i1 %switch34, label %bb.aa, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24"

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !28528
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24": ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.l, align 1
  %i.ch = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.ch, label %"_ZN4core3ptr55drop_in_place$LT$rustix..backend..fs..dir..DirEntry$GT$17h76b45181ea98fc6bE.exit26", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i25"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i25": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hb36a89c275f96c37E.exit24"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.sroa.8.0.copyload, i64 noundef 1) #42
end_hunk_13
