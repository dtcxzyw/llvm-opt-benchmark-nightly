Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types10versioning13parse_version17h26fefa75a3416efaE:.lr.ph.split.i.i.i.i.i.i.i
  %.sroa.16481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 1, ptr %.sroa.16481.0..sroa_idx, align 8, !noalias !4721
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1, !noalias !4721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4725)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %.promoted8.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4726, !noalias !4717 ; 4 uses
  %i.ar = trunc nuw i8 %.sroa.17.0 to i1
  br i1 %i.ar, label %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i.i.i"
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !4727, !noalias !4717, !nonnull !21, !align !37, !noundef !21 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !4727, !noalias !4717, !noundef !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !4728, !noalias !4717, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.av, %.val1.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !alias.scope !4726, !noalias !4717 ; 2 uses
  %i.az = zext nneg i8 %i.ay to i64               ; 4 uses
  %i.ba = icmp ult i8 %i.ay, 5
  %i.bb = getelementptr i8, ptr %i.aw, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !range !35, !alias.scope !4726, !noalias !4717
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre2.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4726, !noalias !4717 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.preheader.i.i.i

.lr.ph.split.i.i.i.preheader.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.promoted14.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !4728, !noalias !4717
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i3.i.i.us.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i.i, %.promoted8.i.i.i.i.i.i
  %or.cond.not.i.i.i.us.i.i.i.i.i.i = select i1 %i.bf, i1 true, i1 %.not.i3.i.i.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4731)
  br i1 %or.cond.not.i.i.i.us.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread, label %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363

_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread: ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %.sroa.0.1.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.promoted8.i.i.i.i.i.i
  %i.bh = sub nuw i64 %.pre2.i.i.i.i.i.i.i.i.i, %.promoted8.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !4732
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.bh, ptr %i.bj, align 8, !noalias !4732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4717
  br label %.sink.split

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.noexc13.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i
  %i.bk = phi ptr [ %i.cm, %.noexc13.i.i.i.i ], [ %i.an, %.lr.ph.split.i.i.i.preheader.i.i.i ]
  %i.bl = phi i64 [ %i.cp, %.noexc13.i.i.i.i ], [ 1, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 6 uses
  %i.bm = phi i64 [ %i.ch, %.noexc13.i.i.i.i ], [ %.promoted14.i.i.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 3 uses
  %.pre.i2.i.i1011.i.i.i.i.i.i = phi i64 [ %.pre.i2.i.i9.i.i.i.i.i.i, %.noexc13.i.i.i.i ], [ %.promoted8.i.i.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4731)
  %i.bn = icmp ult i64 %i.av, %i.bm
  br i1 %i.bn, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ba)
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bc, align 1, !alias.scope !4728, !noalias !4717 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.h ] ; 4 uses
  %i.bp = sub nuw i64 %i.av, %i.bo                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.br = icmp ult i64 %i.bp, 16
  br i1 %i.br, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, %i.bo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !4733, !noalias !4734, !noundef !21
  %i.bu = icmp eq i8 %i.bt, %.pre.i.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bv = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bw = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.bp)
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4717 ; 2 uses

.noexc12.i.i.i.i:                                 ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i
  %i.bx = extractvalue { i64, i64 } %i.bw, 0
  %i.by = extractvalue { i64, i64 } %i.bw, 1
  %i.bz = trunc nuw i64 %i.bx to i1
  br i1 %i.bz, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.noexc12.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ca = add i64 %i.bo, 1
  %i.cb = add i64 %i.ca, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i ; 8 uses
  %.not20.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cb, %i.az
  %.not21.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.cb, %.val1.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not20.i.i.i.i.i.i.i.i.i, %.not21.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i
  %i.cc = icmp ult i64 %i.av, %i.cb
  br i1 %i.cc, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i", label %bb.f

bb.i:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i
  %i.cd = sub nuw i64 %i.cb, %i.az                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.cd
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ce, ptr nonnull %i.aw, i64 %i.az), !noalias !4735
  %i.cf = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %select.unfold.i.i.i.i.i.i, label %bb.h

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.h, %.noexc12.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.g, %.lr.ph.split.i.i.i.i.i.i
  %i.cg = phi i64 [ %i.bm, %.lr.ph.split.i.i.i.i.i.i ], [ %i.av, %bb.g ], [ %i.av, %.noexc12.i.i.i.i ], [ %i.av, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.h ]
  store i8 1, ptr %i.aq, align 1, !alias.scope !4736, !noalias !4717
  %.not.i3.i.i.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i.i, %.pre.i2.i.i1011.i.i.i.i.i.i
  %or.cond.not.i.i.i.i.i.i.i.i.i = select i1 %i.bf, i1 true, i1 %.not.i3.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i"
  %i.ch = phi i64 [ %i.cg, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i" ], [ %i.cb, %bb.i ]
  %.pre.i2.i.i9.i.i.i.i.i.i = phi i64 [ %.pre.i2.i.i1011.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i" ], [ %i.cb, %bb.i ]
  %i.ci = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i" ], [ false, %bb.i ]
  %.pn.i.i.i.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i" ], [ %i.cd, %bb.i ]
  %.sroa.4.1.i.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i.i.i, %.pre.i2.i.i1011.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.pre.i2.i.i1011.i.i.i.i.i.i
  %i.cj = icmp samesign ult i64 %i.bl, 576460752303423488
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = load i64, ptr %i.f, align 8, !range !22, !alias.scope !4737, !noalias !4717, !noundef !21
  %i.cl = icmp eq i64 %i.bl, %i.ck
  br i1 %i.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i", label %.noexc13.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i": ; preds = %select.unfold.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bl, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i..noexc13_crit_edge.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4717

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i..noexc13_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4737, !noalias !4717
  br label %.noexc13.i.i.i.i

.noexc13.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i..noexc13_crit_edge.i.i.i.i", %select.unfold.i.i.i.i.i.i
  %i.cm = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i..noexc13_crit_edge.i.i.i.i" ], [ %i.bk, %select.unfold.i.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.bl ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i.i.i.i.i, ptr %i.cn, align 8, !noalias !4732
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i.i.i.i, ptr %i.co, align 8, !noalias !4732
  %i.cp = add nuw nsw i64 %i.bl, 1                ; 3 uses
  store i64 %i.cp, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4737, !noalias !4717
  br i1 %i.ci, label %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit, label %.lr.ph.split.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"
  %lpad.loopexit.split-lp469 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !4717 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cq, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4717, !nonnull !21, !noundef !21
  %i.cr = shl nuw i64 %.val.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4717
  br label %common.resume

common.resume:                                    ; preds = %bb.v, %bb.w, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp469, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp469, %bb.j ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i.i.i", %.lr.ph.split.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4717
  %.sroa.0.0.copyload365 = load i64, ptr %i.f, align 8, !noalias !4738
  %.sroa.8199.0.copyload366 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4738
  br label %.sink.split

_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit: ; preds = %.noexc13.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i"
  %.sroa.13.0.copyload = phi i64 [ %i.bl, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf22c41614ac10e0fE.exit.i.i.i.i.i.i.i.i" ], [ %i.cp, %.noexc13.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4717
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !noalias !4738 ; 7 uses
  %.sroa.8199.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4738 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4717
  %i.cs = icmp eq i64 %.sroa.13.0.copyload, 3
  br i1 %i.cs, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit
  %i.ct = load ptr, ptr %.sroa.8199.0.copyload, align 8, !nonnull !21, !align !37, !noundef !21 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !21 ; 7 uses
  switch i64 %i.cv, label %bb.m [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.cw = load i8, ptr %i.ct, align 1, !alias.scope !4739, !noundef !21
  switch i8 %i.cw, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.n, %bb.p, %bb.l
  %.sroa.03.182.i.ph = phi ptr [ %i.cx, %bb.n ], [ %i.ct, %bb.p ], [ %i.ct, %bb.l ]
  %.sroa.16.181.i.ph = phi i64 [ %i.cy, %bb.n ], [ %i.cv, %bb.p ], [ 1, %bb.l ]
  br label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  %.pr.i = load i8, ptr %i.ct, align 1, !alias.scope !4739
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  %i.cy = add i64 %i.cv, -1                       ; 2 uses
  %i.cz = icmp ult i64 %i.cv, 10
  br i1 %i.cz, label %.lr.ph.i.preheader, label %.preheader71.i

.preheader71.i:                                   ; preds = %bb.p, %bb.n
  %.sroa.16.0.ph.i = phi i64 [ %i.cv, %bb.p ], [ %i.cy, %bb.n ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.ct, %bb.p ], [ %i.cx, %bb.n ]
  %.not.i433 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i433, label %.loopexit.i, label %.lr.ph

bb.o:                                             ; preds = %bb.s
  %.not.i = icmp eq i64 %i.de, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.da = icmp ult i64 %i.cv, 9
  br i1 %i.da, label %.lr.ph.i.preheader, label %.preheader71.i

.loopexit.i:                                      ; preds = %bb.o, %bb.t, %.preheader71.i
  %.sroa.019.2.i = phi i32 [ %i.dw, %bb.t ], [ 0, %.preheader71.i ], [ %i.do, %bb.o ]
  %i.db = zext i32 %.sroa.019.2.i to i64
  %i.dc = shl nuw i64 %i.db, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph:                                           ; preds = %.preheader71.i, %bb.o
  %.sroa.03.0.i436 = phi ptr [ %i.dd, %bb.o ], [ %.sroa.03.0.ph.i, %.preheader71.i ] ; 2 uses
  %.sroa.16.0.i435 = phi i64 [ %i.de, %bb.o ], [ %.sroa.16.0.ph.i, %.preheader71.i ]
  %.sroa.019.0.i434 = phi i32 [ %i.do, %bb.o ], [ 0, %.preheader71.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i436, i64 1
  %i.de = add i64 %.sroa.16.0.i435, -1            ; 2 uses
  %i.df = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i434, i32 10) ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.df, 0       ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.df, 1
  %i.di = load i8, ptr %.sroa.03.0.i436, align 1, !alias.scope !4739, !noundef !21 ; 2 uses
  br i1 %i.dh, label %bb.r, label %bb.q, !prof !23

bb.q:                                             ; preds = %.lr.ph
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.s, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.r:                                             ; preds = %.lr.ph
  %i.dm = add i8 %i.di, -48
  %i.dn = icmp ult i8 %i.dm, 10
  %spec.select.i = select i1 %i.dn, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

bb.s:                                             ; preds = %bb.q
  %i.do = add i32 %i.dk, %i.dg                    ; 3 uses
  %.not66.i = icmp ult i32 %i.do, %i.dg
  br i1 %.not66.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.o

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.t
  %.sroa.03.182.i = phi ptr [ %i.dv, %bb.t ], [ %.sroa.03.182.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.181.i = phi i64 [ %i.du, %bb.t ], [ %.sroa.16.181.i.ph, %.lr.ph.i.preheader ]
  %.sroa.019.180.i = phi i32 [ %i.dw, %bb.t ], [ 0, %.lr.ph.i.preheader ]
  %i.dp = load i8, ptr %.sroa.03.182.i, align 1, !alias.scope !4739, !noundef !21
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.t, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.t:                                             ; preds = %.lr.ph.i
  %i.dt = mul i32 %.sroa.019.180.i, 10
  %i.du = add nsw i64 %.sroa.16.181.i, -1         ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i, i64 1
  %i.dw = add i32 %i.dr, %i.dt                    ; 2 uses
  %.not67.i = icmp eq i64 %i.du, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.i

.sink.split:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363
  %.sroa.8199.0.copyload243.ph = phi ptr [ %.sroa.8199.0.copyload366, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363 ], [ %i.an, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread ]
  %.sroa.0.0.copyload239.ph = phi i64 [ %.sroa.0.0.copyload365, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363 ], [ 4, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread ]
  %.sroa.13.0.copyload237.ph = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread363 ], [ 2, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4717
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit
  %.sroa.8199.0.copyload243 = phi ptr [ %.sroa.8199.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit ], [ %.sroa.8199.0.copyload243.ph, %.sink.split ] ; 2 uses
  %.sroa.0.0.copyload239 = phi i64 [ %.sroa.0.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit ], [ %.sroa.0.0.copyload239.ph, %.sink.split ] ; 2 uses
  %.sroa.13.0.copyload237 = phi i64 [ %.sroa.13.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h23191e8e6367d7c7E.exit ], [ %.sroa.13.0.copyload237.ph, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.13.0.copyload237, ptr %i.p, align 8
  %i.dx = icmp ult i64 %.sroa.13.0.copyload237, 576460752303423488
  tail call void @llvm.assume(i1 %i.dx)
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.4123.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4740
  store ptr @128, ptr %i.d, align 8, !noalias !4741
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4204.0..sroa_idx, align 8, !noalias !4741
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.q, ptr %.sroa.5205.0..sroa_idx, align 8, !noalias !4741
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6206.0..sroa_idx, align 8, !noalias !4741
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7207.0..sroa_idx, align 8, !noalias !4741
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.aw unwind label %bb.v

bb.v:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", %bb.u
  %.sroa.8199.0.copyload242 = phi ptr [ %.sroa.8199.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread" ], [ %.sroa.8199.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread" ], [ %.sroa.8199.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread" ], [ %.sroa.8199.0.copyload243, %bb.u ] ; 2 uses
  %.sroa.0.0.copyload238 = phi i64 [ %.sroa.0.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread" ], [ %.sroa.0.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread" ], [ %.sroa.0.0.copyload, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread" ], [ %.sroa.0.0.copyload239, %bb.u ] ; 2 uses
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = icmp eq i64 %.sroa.0.0.copyload238, 0
  br i1 %i.dz, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = shl nuw i64 %.sroa.0.0.copyload238, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8199.0.copyload242) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8199.0.copyload242, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %common.resume

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %bb.r, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.dc, %.loopexit.i ], [ %spec.select.i, %bb.r ] ; 3 uses
  %i.eb = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.eb, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %.thread

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.s, %bb.q, %.lr.ph.i, %bb.l, %bb.l, %bb.k, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i247 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 256, %bb.l ], [ 256, %.lr.ph.i ], [ %i.cv, %bb.k ], [ 256, %bb.l ], [ 256, %bb.q ], [ 512, %bb.s ]
  %.sroa.4128.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i247, 8
  %.sroa.4128.0.extract.trunc = trunc i64 %.sroa.4128.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %.sroa.4128.0.extract.trunc, ptr %i.o, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.472.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4742
  store ptr @121, ptr %i.c, align 8, !noalias !4743
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4217.0..sroa_idx, align 8, !noalias !4743
  %.sroa.5.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx218, align 8, !noalias !4743
  %.sroa.6219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6219.0..sroa_idx, align 8, !noalias !4743
  %.sroa.7220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7220.0..sroa_idx, align 8, !noalias !4743
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.x unwind label %bb.v

.thread:                                          ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.6130.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6130.0.extract.trunc = trunc nuw i64 %.sroa.6130.0.extract.shift to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !21, !align !37, !noundef !21 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !21 ; 7 uses
  switch i64 %i.ef, label %bb.z [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.383.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.y:                                             ; preds = %.thread
  %i.eg = load i8, ptr %i.ed, align 1, !alias.scope !4744, !noundef !21
  switch i8 %i.eg, label %.lr.ph.i149.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"
  ]

.lr.ph.i149.preheader:                            ; preds = %bb.aa, %bb.ac, %bb.y
  %.sroa.03.182.i150.ph = phi ptr [ %i.eh, %bb.aa ], [ %i.ed, %bb.ac ], [ %i.ed, %bb.y ]
  %.sroa.16.181.i151.ph = phi i64 [ %i.ei, %bb.aa ], [ %i.ef, %bb.ac ], [ 1, %bb.y ]
  br label %.lr.ph.i149

bb.z:                                             ; preds = %.thread
  %.pr.i156 = load i8, ptr %i.ed, align 1, !alias.scope !4744
  %cond.i157 = icmp eq i8 %.pr.i156, 43
  br i1 %cond.i157, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  %i.ei = add i64 %i.ef, -1                       ; 2 uses
  %i.ej = icmp ult i64 %i.ef, 10
  br i1 %i.ej, label %.lr.ph.i149.preheader, label %.preheader71.i158

.preheader71.i158:                                ; preds = %bb.ac, %bb.aa
  %.sroa.16.0.ph.i159 = phi i64 [ %i.ef, %bb.ac ], [ %i.ei, %bb.aa ] ; 2 uses
  %.sroa.03.0.ph.i160 = phi ptr [ %i.ed, %bb.ac ], [ %i.eh, %bb.aa ]
  %.not.i164437 = icmp eq i64 %.sroa.16.0.ph.i159, 0
  br i1 %.not.i164437, label %.loopexit.i154, label %.lr.ph441

bb.ab:                                            ; preds = %bb.af
  %.not.i164 = icmp eq i64 %i.eo, 0
  br i1 %.not.i164, label %.loopexit.i154, label %.lr.ph441

bb.ac:                                            ; preds = %bb.z
  %i.ek = icmp ult i64 %i.ef, 9
  br i1 %i.ek, label %.lr.ph.i149.preheader, label %.preheader71.i158

.loopexit.i154:                                   ; preds = %bb.ab, %bb.ag, %.preheader71.i158
  %.sroa.019.2.i155 = phi i32 [ %i.fg, %bb.ag ], [ 0, %.preheader71.i158 ], [ %i.ey, %bb.ab ]
  %i.el = zext i32 %.sroa.019.2.i155 to i64
  %i.em = shl nuw i64 %i.el, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169"

.lr.ph441:                                        ; preds = %.preheader71.i158, %bb.ab
  %.sroa.03.0.i163440 = phi ptr [ %i.en, %bb.ab ], [ %.sroa.03.0.ph.i160, %.preheader71.i158 ] ; 2 uses
  %.sroa.16.0.i162439 = phi i64 [ %i.eo, %bb.ab ], [ %.sroa.16.0.ph.i159, %.preheader71.i158 ]
  %.sroa.019.0.i161438 = phi i32 [ %i.ey, %bb.ab ], [ 0, %.preheader71.i158 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i163440, i64 1
  %i.eo = add i64 %.sroa.16.0.i162439, -1         ; 2 uses
  %i.ep = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i161438, i32 10) ; 2 uses
  %i.eq = extractvalue { i32, i1 } %i.ep, 0       ; 2 uses
  %i.er = extractvalue { i32, i1 } %i.ep, 1
  %i.es = load i8, ptr %.sroa.03.0.i163440, align 1, !alias.scope !4744, !noundef !21 ; 2 uses
  br i1 %i.er, label %bb.ae, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %.lr.ph441
  %i.et = zext i8 %i.es to i32
  %i.eu = add nsw i32 %i.et, -48                  ; 2 uses
  %i.ev = icmp ult i32 %i.eu, 10
  br i1 %i.ev, label %bb.af, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"

bb.ae:                                            ; preds = %.lr.ph441
  %i.ew = add i8 %i.es, -48
  %i.ex = icmp ult i8 %i.ew, 10
  %spec.select.i166 = select i1 %i.ex, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169"

bb.af:                                            ; preds = %bb.ad
  %i.ey = add i32 %i.eu, %i.eq                    ; 3 uses
  %.not66.i165 = icmp ult i32 %i.ey, %i.eq
  br i1 %.not66.i165, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread", label %bb.ab

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.preheader, %bb.ag
  %.sroa.03.182.i150 = phi ptr [ %i.ff, %bb.ag ], [ %.sroa.03.182.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.sroa.16.181.i151 = phi i64 [ %i.fe, %bb.ag ], [ %.sroa.16.181.i151.ph, %.lr.ph.i149.preheader ]
  %.sroa.019.180.i152 = phi i32 [ %i.fg, %bb.ag ], [ 0, %.lr.ph.i149.preheader ]
  %i.ez = load i8, ptr %.sroa.03.182.i150, align 1, !alias.scope !4744, !noundef !21
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, -48                  ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 10
  br i1 %i.fc, label %bb.ag, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"

bb.ag:                                            ; preds = %.lr.ph.i149
  %i.fd = mul i32 %.sroa.019.180.i152, 10
  %i.fe = add nsw i64 %.sroa.16.181.i151, -1      ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i150, i64 1
  %i.fg = add i32 %i.fb, %i.fd                    ; 2 uses
  %.not67.i153 = icmp eq i64 %i.fe, 0
  br i1 %.not67.i153, label %.loopexit.i154, label %.lr.ph.i149

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169": ; preds = %bb.ae, %.loopexit.i154
  %.sroa.8.0.insert.insert.i145 = phi i64 [ %i.em, %.loopexit.i154 ], [ %spec.select.i166, %bb.ae ] ; 3 uses
  %i.fh = trunc i64 %.sroa.8.0.insert.insert.i145 to i1
  br i1 %i.fh, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread", label %.thread253

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread": ; preds = %bb.af, %bb.ad, %.lr.ph.i149, %bb.y, %bb.y, %.thread, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169"
  %.sroa.8.0.insert.insert.i145252 = phi i64 [ %.sroa.8.0.insert.insert.i145, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169" ], [ 256, %bb.y ], [ 256, %.lr.ph.i149 ], [ %i.ef, %.thread ], [ 256, %bb.y ], [ 256, %bb.ad ], [ 512, %bb.af ]
  %.sroa.4132.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i145252, 8
  %.sroa.4132.0.extract.trunc = trunc i64 %.sroa.4132.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %.sroa.4132.0.extract.trunc, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.490.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4745
  store ptr @123, ptr %i.b, align 8, !noalias !4746
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4223.0..sroa_idx, align 8, !noalias !4746
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.5224.0..sroa_idx, align 8, !noalias !4746
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6225.0..sroa_idx, align 8, !noalias !4746
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7226.0..sroa_idx, align 8, !noalias !4746
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.ah unwind label %bb.v

.thread253:                                       ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169"
  %.sroa.6134.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i145, 32
  %.sroa.6134.0.extract.trunc = trunc nuw i64 %.sroa.6134.0.extract.shift to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !21, !align !37, !noundef !21 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.8199.0.copyload, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !21 ; 7 uses
  switch i64 %i.fl, label %bb.aj [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
    i64 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit169.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.3101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.ai:                                            ; preds = %.thread253
  %i.fm = load i8, ptr %i.fj, align 1, !alias.scope !4747, !noundef !21
  switch i8 %i.fm, label %.lr.ph.i175.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
  ]

.lr.ph.i175.preheader:                            ; preds = %bb.ak, %bb.am, %bb.ai
  %.sroa.03.182.i176.ph = phi ptr [ %i.fn, %bb.ak ], [ %i.fj, %bb.am ], [ %i.fj, %bb.ai ]
  %.sroa.16.181.i177.ph = phi i64 [ %i.fo, %bb.ak ], [ %i.fl, %bb.am ], [ 1, %bb.ai ]
  br label %.lr.ph.i175

bb.aj:                                            ; preds = %.thread253
  %.pr.i182 = load i8, ptr %i.fj, align 1, !alias.scope !4747
  %cond.i183 = icmp eq i8 %.pr.i182, 43
  br i1 %cond.i183, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  %i.fo = add i64 %i.fl, -1                       ; 2 uses
  %i.fp = icmp ult i64 %i.fl, 10
  br i1 %i.fp, label %.lr.ph.i175.preheader, label %.preheader71.i184

.preheader71.i184:                                ; preds = %bb.am, %bb.ak
  %.sroa.16.0.ph.i185 = phi i64 [ %i.fl, %bb.am ], [ %i.fo, %bb.ak ] ; 2 uses
  %.sroa.03.0.ph.i186 = phi ptr [ %i.fj, %bb.am ], [ %i.fn, %bb.ak ]
  %.not.i190443 = icmp eq i64 %.sroa.16.0.ph.i185, 0
  br i1 %.not.i190443, label %.loopexit.i180, label %.lr.ph447

bb.al:                                            ; preds = %bb.ap
  %.not.i190 = icmp eq i64 %i.fu, 0
  br i1 %.not.i190, label %.loopexit.i180, label %.lr.ph447

bb.am:                                            ; preds = %bb.aj
  %i.fq = icmp ult i64 %i.fl, 9
  br i1 %i.fq, label %.lr.ph.i175.preheader, label %.preheader71.i184

.loopexit.i180:                                   ; preds = %bb.al, %bb.aq, %.preheader71.i184
  %.sroa.019.2.i181 = phi i32 [ %i.gm, %bb.aq ], [ 0, %.preheader71.i184 ], [ %i.ge, %bb.al ]
  %i.fr = zext i32 %.sroa.019.2.i181 to i64
  %i.fs = shl nuw i64 %i.fr, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"

.lr.ph447:                                        ; preds = %.preheader71.i184, %bb.al
  %.sroa.03.0.i189446 = phi ptr [ %i.ft, %bb.al ], [ %.sroa.03.0.ph.i186, %.preheader71.i184 ] ; 2 uses
  %.sroa.16.0.i188445 = phi i64 [ %i.fu, %bb.al ], [ %.sroa.16.0.ph.i185, %.preheader71.i184 ]
  %.sroa.019.0.i187444 = phi i32 [ %i.ge, %bb.al ], [ 0, %.preheader71.i184 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i189446, i64 1
  %i.fu = add i64 %.sroa.16.0.i188445, -1         ; 2 uses
  %i.fv = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i187444, i32 10) ; 2 uses
  %i.fw = extractvalue { i32, i1 } %i.fv, 0       ; 2 uses
  %i.fx = extractvalue { i32, i1 } %i.fv, 1
  %i.fy = load i8, ptr %.sroa.03.0.i189446, align 1, !alias.scope !4747, !noundef !21 ; 2 uses
  br i1 %i.fx, label %bb.ao, label %bb.an, !prof !23

bb.an:                                            ; preds = %.lr.ph447
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -48                  ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 10
  br i1 %i.gb, label %bb.ap, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"

bb.ao:                                            ; preds = %.lr.ph447
  %i.gc = add i8 %i.fy, -48
  %i.gd = icmp ult i8 %i.gc, 10
  %spec.select.i192 = select i1 %i.gd, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"

bb.ap:                                            ; preds = %bb.an
  %i.ge = add i32 %i.ga, %i.fw                    ; 3 uses
  %.not66.i191 = icmp ult i32 %i.ge, %i.fw
  br i1 %.not66.i191, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread", label %bb.al

.lr.ph.i175:                                      ; preds = %.lr.ph.i175.preheader, %bb.aq
  %.sroa.03.182.i176 = phi ptr [ %i.gl, %bb.aq ], [ %.sroa.03.182.i176.ph, %.lr.ph.i175.preheader ] ; 2 uses
  %.sroa.16.181.i177 = phi i64 [ %i.gk, %bb.aq ], [ %.sroa.16.181.i177.ph, %.lr.ph.i175.preheader ]
  %.sroa.019.180.i178 = phi i32 [ %i.gm, %bb.aq ], [ 0, %.lr.ph.i175.preheader ]
  %i.gf = load i8, ptr %.sroa.03.182.i176, align 1, !alias.scope !4747, !noundef !21
  %i.gg = zext i8 %i.gf to i32
  %i.gh = add nsw i32 %i.gg, -48                  ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 10
  br i1 %i.gi, label %bb.aq, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"

bb.aq:                                            ; preds = %.lr.ph.i175
  %i.gj = mul i32 %.sroa.019.180.i178, 10
  %i.gk = add nsw i64 %.sroa.16.181.i177, -1      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i176, i64 1
  %i.gm = add i32 %i.gh, %i.gj                    ; 2 uses
  %.not67.i179 = icmp eq i64 %i.gk, 0
  br i1 %.not67.i179, label %.loopexit.i180, label %.lr.ph.i175

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195": ; preds = %bb.ao, %.loopexit.i180
  %.sroa.8.0.insert.insert.i171 = phi i64 [ %i.fs, %.loopexit.i180 ], [ %spec.select.i192, %bb.ao ] ; 3 uses
  %i.gn = trunc i64 %.sroa.8.0.insert.insert.i171 to i1
  br i1 %i.gn, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread", label %.thread259

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread": ; preds = %bb.ap, %bb.an, %.lr.ph.i175, %bb.ai, %bb.ai, %.thread253, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"
  %.sroa.8.0.insert.insert.i171258 = phi i64 [ %.sroa.8.0.insert.insert.i171, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195" ], [ 256, %bb.ai ], [ 256, %.lr.ph.i175 ], [ %i.fl, %.thread253 ], [ 256, %bb.ai ], [ 256, %bb.an ], [ 512, %bb.ap ]
  %.sroa.4136.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i171258, 8
  %.sroa.4136.0.extract.trunc = trunc i64 %.sroa.4136.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.4136.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4748
  store ptr @125, ptr %i.a, align 8, !noalias !4749
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !4749
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !4749
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !4749
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7232.0..sroa_idx, align 8, !noalias !4749
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ar unwind label %bb.v

.thread259:                                       ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195"
  %.sroa.6138.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i171, 32
  %.sroa.6138.0.extract.trunc = trunc nuw i64 %.sroa.6138.0.extract.shift to i32
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6130.0.extract.trunc, ptr %i.go, align 4
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6134.0.extract.trunc, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6138.0.extract.trunc, ptr %.sroa.559.0..sroa_idx, align 4
  store i32 7, ptr %0, align 8
  %i.gp = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.gp, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197", label %bb.as

bb.ar:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit195.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.at

bb.as:                                            ; preds = %.thread259
  %i.gq = shl nuw i64 %.sroa.0.0.copyload, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8199.0.copyload, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197": ; preds = %bb.av, %bb.au, %bb.as, %.thread259
  ret void

bb.at:                                            ; preds = %bb.ah, %bb.ar, %bb.x
  store i32 1, ptr %0, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.sroa.8199.0.copyload244 = phi ptr [ %.sroa.8199.0.copyload243, %bb.aw ], [ %.sroa.8199.0.copyload, %bb.at ] ; 2 uses
  %.sroa.0.0.copyload240 = phi i64 [ %.sroa.0.0.copyload239, %bb.aw ], [ %.sroa.0.0.copyload, %bb.at ] ; 2 uses
  %i.gr = icmp eq i64 %.sroa.0.0.copyload240, 0
  br i1 %i.gr, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gs = shl nuw i64 %.sroa.0.0.copyload240, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8199.0.copyload244) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8199.0.copyload244, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit197"

bb.aw:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.456.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.456, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.456.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i32 1, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.456, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.456)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_ZN17meilisearch_types10versioning19create_version_file17h2a2e1462d1959992E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.0109 = alloca [24 x i8], align 8         ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [15 x i8], align 1           ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 16 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [4 x i8], align 4                 ; 2 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  %i.z = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.z, align 4
  store i32 %3, ptr %i.y, align 4
  store i32 %4, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 6, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @129, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i8 0, ptr %i.af, align 8
  store i32 0, ptr %i.s, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 49 ; 2 uses
  store i8 0, ptr %i.ag, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4840)
  call void @llvm.experimental.noalias.scope.decl(metadata !4841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4842
  %i.ah = invoke noundef zeroext i1 @_ZN3std4path4Path11is_absolute17hf19889a9c7aed189E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4843

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ab, %bb.n, %.loopexit.split-lp.loopexit.split-lp.i.i
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.2.i.i, %bb.n ], [ %.sroa.7.2.i.i, %bb.ac ], [ %.sroa.7.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.7.2.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.061.0.i.i = phi i64 [ %.sroa.061.2.i.i, %bb.ab ], [ %.sroa.061.2.i.i, %bb.n ], [ %.sroa.061.2.i.i, %bb.ac ], [ %.sroa.061.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.061.2.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.017.0.i.i = phi i8 [ %.sroa.017.2.i.i, %bb.ab ], [ %.sroa.017.2.i.i, %bb.n ], [ %.sroa.017.2.i.i, %bb.ac ], [ %.sroa.017.1.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.017.2.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i.i = phi { ptr, i32 } [ %i.cs, %bb.ab ], [ %lpad.thr_comm.i.i.i.i, %bb.n ], [ %i.cs, %bb.ac ], [ %lpad.loopexit.split-lp86.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ai = trunc nuw i8 %.sroa.017.0.i.i to i1
  %i.aj = icmp ne i64 %.sroa.061.0.i.i, 0
  %or.cond82.not.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond82.not.i.i, label %bb.al, label %bb.by

.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.aj, %_ZN3std4path4Path4join17hf0a2c10ae0280e75E.exit.i.i, %bb.z, %_ZN9getrandom8backends27linux_android_with_fallback10fill_inner17h2253fd23c107375eE.exit.i.i.i, %bb.v, %bb.s
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i", %bb.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i", %bb.c, %bb.a
  %.sroa.7.1.ph.ph.i.i = phi ptr [ undef, %bb.a ], [ %.sroa.7.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.7.2.i.i, %bb.j ], [ %.sroa.7.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ undef, %bb.c ]
  %.sroa.061.1.ph.ph.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.061.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.061.2.i.i, %bb.j ], [ %.sroa.061.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ undef, %bb.c ]
  %.sroa.017.1.ph.ph.i.i = phi i8 [ 0, %bb.a ], [ %.sroa.017.2.i.i, %"_ZN111_$LT$core..result..Result$LT$T$C$std..io..error..Error$GT$$u20$as$u20$tempfile..error..IoResultExt$LT$T$GT$$GT$13with_err_path28_$u7b$$u7b$closure$u7d$$u7d$17h4a5884ff49e5228aE.exit.i.i.i" ], [ %.sroa.017.2.i.i, %bb.j ], [ %.sroa.017.2.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcb591fdf512ce350E.exit.i.i.i" ], [ 0, %bb.c ]
  %lpad.loopexit.split-lp86.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.ah, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h120abe093600ea3bE.exit45.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4844
  invoke void @_ZN3std3env11current_dir17hc9190a9b245afa63E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4845

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.q, align 8, !range !25, !noalias !4844, !noundef !21 ; 5 uses
  %i.al = icmp eq i64 %i.ak, -9223372036854775808
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !4844 ; 5 uses
  br i1 %i.al, label %.critedge.i.i, label %bb.e

.critedge.i.i:                                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4844
  br label %.thread121

bb.e:                                             ; preds = %bb.d
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.622.0.copyload.i.i = load i64, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !4844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4844
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %.sroa.622.0.copyload.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %_ZN3std4path4Path4join17h7b6716b4007ff40aE.exit.i.i unwind label %bb.f, !noalias !4845

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.ak, 0
  br i1 %i.ap, label %bb.by, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
end_hunk_0
