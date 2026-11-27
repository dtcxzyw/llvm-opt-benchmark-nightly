Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE":bb.a
  %i.au = icmp ult i16 %i.am, 11
  tail call void @llvm.assume(i1 %i.au), !noalias !18453
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %xtraiter71 = and i64 %i.ak, 7                  ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i66.i.prol = phi ptr [ %i.aw, %.prol.preheader ], [ %i.av, %bb.g ]
  %.pn28.in.i.i.i.i.i67.i.prol = phi i64 [ %.pn28.i.i.i.i.i68.i.prol, %.prol.preheader ], [ %i.ak, %bb.g ]
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i68.i.prol = add i64 %.pn28.in.i.i.i.i.i67.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i69.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i66.i.prol, align 8, !noalias !18454, !nonnull !69, !noundef !69 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.prol, i64 280 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18353

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i69.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i69.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i66.i.unr = phi ptr [ %i.av, %bb.g ], [ %i.aw, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i67.i.unr = phi i64 [ %i.ak, %bb.g ], [ %.pn28.i.i.i.i.i68.i.prol, %.prol.preheader ]
  %i.ax = icmp ult i64 %.sroa.5.037.i.i.i.i.i60.i, 7
  br i1 %i.ax, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i66.i = phi ptr [ %i.bg, %.new ], [ %.pn30.in.i.i.i.i.i66.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i67.i = phi i64 [ %.pn28.i.i.i.i.i68.i.7, %.new ], [ %.pn28.in.i.i.i.i.i67.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i69.i = load ptr, ptr %.pn30.in.i.i.i.i.i66.i, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i, i64 280
  %.pn30.i.i.i.i.i69.i.1 = load ptr, ptr %i.ay, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.1, i64 280
  %.pn30.i.i.i.i.i69.i.2 = load ptr, ptr %i.az, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.2, i64 280
  %.pn30.i.i.i.i.i69.i.3 = load ptr, ptr %i.ba, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.3, i64 280
  %.pn30.i.i.i.i.i69.i.4 = load ptr, ptr %i.bb, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.4, i64 280
  %.pn30.i.i.i.i.i69.i.5 = load ptr, ptr %i.bc, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.5, i64 280
  %.pn30.i.i.i.i.i69.i.6 = load ptr, ptr %i.bd, align 8, !noalias !18454, !nonnull !69, !noundef !69
  %i.be = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.6, i64 280
  %.pn28.i.i.i.i.i68.i.7 = add i64 %.pn28.in.i.i.i.i.i67.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i69.i.7 = load ptr, ptr %i.be, align 8, !noalias !18454, !nonnull !69, !noundef !69 ; 2 uses
  %i.bf = icmp eq i64 %.pn28.i.i.i.i.i68.i.7, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i69.i.7, i64 280
  br i1 %i.bf, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i58.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i74.i unwind label %bb.i, !noalias !18455

.noexc.i.i.i74.i:                                 ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18453
  unreachable

.critedge.i.i47.i:                                ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hd5586ff0ef5a7fb9E.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !18456
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i71.i = phi i64 [ %i.as, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i72.i = phi ptr [ %i.aj, %bb.f ], [ %.pn30.i.i.i.i.i69.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i69.i.7, %.new ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bj = icmp ult i16 %i.am, 11
  tail call void @llvm.assume(i1 %i.bj), !noalias !18453
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.aq ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val8.peel.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !18457, !nonnull !69, !noundef !69
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  %.val9.peel.i.i.i = load i64, ptr %i.bm, align 8, !noalias !18457
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i.i, i64 noundef %.val9.peel.i.i.i)
  %i.bn = icmp eq i64 %i.s, 0
  br i1 %i.bn, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.thread.i": ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i53.i"
  %i.bo = getelementptr i8, ptr %.sroa.05.0.copyload.i.i.i56.i, i64 16
  %.val8.peel.i.i134.i = load ptr, ptr %i.bo, align 8, !noalias !18457, !nonnull !69, !noundef !69
  %i.bp = getelementptr i8, ptr %.sroa.05.0.copyload.i.i.i56.i, i64 24
  %.val9.peel.i.i135.i = load i64, ptr %i.bp, align 8, !noalias !18457
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i134.i, i64 noundef %.val9.peel.i.i135.i)
  %i.bq = icmp eq i64 %i.s, 0
  br i1 %i.bq, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.thread.i", %.lr.ph.split.i.i.i
  %.sroa.07.0.i.i.i.i72137145151.i = phi ptr [ %.sroa.05.0.copyload.i.i.i56.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.thread.i" ], [ %.sroa.07.0.i.i.i.i72.i, %.lr.ph.split.i.i.i ] ; 4 uses
  %.sroa.7.0.i.i.i.i71136146150.i = phi i64 [ 1, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.thread.i" ], [ %.sroa.7.0.i.i.i.i71.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.br = add i64 %.sroa.5.0.i.i, -2
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i72137145151.i, i64 274
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !18458, !noundef !69
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i71136146150.i, %i.bu
  br i1 %i.bv, label %.thread152.i, label %.lr.ph.i.i.i.i.i24.i

.thread152.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i"
  %i.bw = add nuw nsw i64 %.sroa.7.0.i.i.i.i71136146150.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit75, %.new76, %bb.k, %.thread152.i
  %.sroa.0.0.ph.i.i.i.i179.sink.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i72137145151.i, %.thread152.i ], [ %i.bx, %bb.k ], [ %i.bx, %.new76 ], [ %i.bx, %.prol.loopexit75 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i71136146150.i, %.thread152.i ], [ %i.ce, %bb.k ], [ %i.ce, %.new76 ], [ %i.ce, %.prol.loopexit75 ]
  %.sroa.24.0.i.ph = phi i64 [ %i.bw, %.thread152.i ], [ %i.cg, %bb.k ], [ 0, %.new76 ], [ 0, %.prol.loopexit75 ]
  %.sroa.7.0.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i72137145151.i, %.thread152.i ], [ %i.bx, %bb.k ], [ %.pn30.i.i.i.i.i35.i.lcssa.unr, %.prol.loopexit75 ], [ %.pn30.i.i.i.i.i35.i.7, %.new76 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i.i24.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i", %bb.j
  %.sroa.0.038.i.i.i.i.i25.i = phi ptr [ %i.bx, %bb.j ], [ %.sroa.07.0.i.i.i.i72137145151.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i26.i = phi i64 [ %i.by, %bb.j ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i" ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.0.038.i.i.i.i.i25.i, align 8, !noalias !18459, !noundef !69 ; 8 uses
  %.not.i.i.i.i.i.i27.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i27.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.by = add i64 %.sroa.5.037.i.i.i.i.i26.i, 1   ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i25.i, i64 272
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !18459 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 274
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !18458, !noundef !69
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %bb.k, label %.lr.ph.i.i.i.i.i24.i

bb.k:                                             ; preds = %bb.j
  %i.ce = zext i16 %i.ca to i64                   ; 4 uses
  %i.cf = icmp eq i64 %i.by, 0
  %i.cg = add nuw nsw i64 %i.ce, 1                ; 2 uses
  br i1 %i.cf, label %.peel.next.i.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  %i.ci = icmp ult i16 %i.ca, 11
  tail call void @llvm.assume(i1 %i.ci), !noalias !18453
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg ; 2 uses
  %xtraiter78 = and i64 %i.by, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit75, label %.prol.preheader74

.prol.preheader74:                                ; preds = %bb.l, %.prol.preheader74
  %.pn30.in.i.i.i.i.i32.i.prol = phi ptr [ %i.ck, %.prol.preheader74 ], [ %i.cj, %bb.l ]
  %.pn28.in.i.i.i.i.i33.i.prol = phi i64 [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ], [ %i.by, %bb.l ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader74 ], [ 0, %bb.l ]
  %.pn28.i.i.i.i.i34.i.prol = add i64 %.pn28.in.i.i.i.i.i33.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i35.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i32.i.prol, align 8, !noalias !18460, !nonnull !69, !noundef !69 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.prol, i64 280 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit75, label %.prol.preheader74, !llvm.loop !18373

.prol.loopexit75:                                 ; preds = %.prol.preheader74, %bb.l
  %.pn30.i.i.i.i.i35.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.pn30.i.i.i.i.i35.i.prol, %.prol.preheader74 ]
  %.pn30.in.i.i.i.i.i32.i.unr = phi ptr [ %i.cj, %bb.l ], [ %i.ck, %.prol.preheader74 ]
  %.pn28.in.i.i.i.i.i33.i.unr = phi i64 [ %i.by, %bb.l ], [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ]
  %i.cl = icmp ult i64 %.sroa.5.037.i.i.i.i.i26.i, 7
  br i1 %i.cl, label %.peel.next.i.i.i.preheader, label %.new76

.new76:                                           ; preds = %.prol.loopexit75, %.new76
  %.pn30.in.i.i.i.i.i32.i = phi ptr [ %i.cu, %.new76 ], [ %.pn30.in.i.i.i.i.i32.i.unr, %.prol.loopexit75 ]
  %.pn28.in.i.i.i.i.i33.i = phi i64 [ %.pn28.i.i.i.i.i34.i.7, %.new76 ], [ %.pn28.in.i.i.i.i.i33.i.unr, %.prol.loopexit75 ]
  %.pn30.i.i.i.i.i35.i = load ptr, ptr %.pn30.in.i.i.i.i.i32.i, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i, i64 280
  %.pn30.i.i.i.i.i35.i.1 = load ptr, ptr %i.cm, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.1, i64 280
  %.pn30.i.i.i.i.i35.i.2 = load ptr, ptr %i.cn, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.2, i64 280
  %.pn30.i.i.i.i.i35.i.3 = load ptr, ptr %i.co, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.3, i64 280
  %.pn30.i.i.i.i.i35.i.4 = load ptr, ptr %i.cp, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.4, i64 280
  %.pn30.i.i.i.i.i35.i.5 = load ptr, ptr %i.cq, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.5, i64 280
  %.pn30.i.i.i.i.i35.i.6 = load ptr, ptr %i.cr, align 8, !noalias !18460, !nonnull !69, !noundef !69
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.6, i64 280
  %.pn28.i.i.i.i.i34.i.7 = add i64 %.pn28.in.i.i.i.i.i33.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i35.i.7 = load ptr, ptr %i.cs, align 8, !noalias !18460, !nonnull !69, !noundef !69 ; 2 uses
  %i.ct = icmp eq i64 %.pn28.i.i.i.i.i34.i.7, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.7, i64 280
  br i1 %i.ct, label %.peel.next.i.i.i.preheader, label %.new76

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i40.i unwind label %bb.n, !noalias !18461

.noexc.i.i.i40.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18453
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i.i179.sink.i.ph54 = phi ptr [ %.sroa.0.0.ph.i.i.i.i179.sink.i.ph, %.peel.next.i.i.i.preheader ], [ %i.ei, %.peel.next.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph, %.peel.next.i.i.i.preheader ], [ %i.ep, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.38.0.i.ph = phi i64 [ %i.br, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.24.0.i.ph56 = phi i64 [ %.sroa.24.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.24.0.i.ph56.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.0.i.ph57 = phi ptr [ %.sroa.7.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.7.0.i.ph57.be, %.peel.next.i.i.i.outer.backedge ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i179.sink.i.ph54, i64 8
  %i.cx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55, 11
  tail call void @llvm.assume(i1 %i.cx), !noalias !18453
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i.ph55 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %.val8.i.i.i.peel = load ptr, ptr %i.cz, align 8, !noalias !18457 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %.val9.i.i.i.peel = load i64, ptr %i.da, align 8, !noalias !18457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18465)
  %i.db = load i64, ptr %i.f, align 8, !alias.scope !18466, !noalias !18467, !noundef !69 ; 3 uses
  %i.dc = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18466, !noalias !18467, !noundef !69
  %i.dd = icmp eq i64 %i.dc, %i.db
  br i1 %i.dd, label %bb.o, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel", !prof !67

bb.o:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.db, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18468
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !18469, !noalias !18467
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel": ; preds = %bb.o, %.peel.next.i.i.i.outer
  %i.de = phi i64 [ %i.db, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.o ] ; 3 uses
  %i.df = icmp sgt i64 %i.de, -1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = load ptr, ptr %i.l, align 8, !alias.scope !18469, !noalias !18467, !nonnull !69, !noundef !69
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 44, ptr %i.dh, align 1, !noalias !18470
  %i.di = add nuw i64 %i.de, 1
  store i64 %i.di, ptr %i.f, align 8, !alias.scope !18469, !noalias !18467
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i.peel, i64 noundef %.val9.i.i.i.peel)
  %i.dj = icmp eq i64 %.sroa.38.0.i.ph, 0
  br i1 %i.dj, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel"
  %i.dk = add i64 %.sroa.38.0.i.ph, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.ph57) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 274
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !18471, !noundef !69
  %i.dn = zext i16 %i.dm to i64
  %i.do = icmp ult i64 %.sroa.24.0.i.ph56, %i.dn
  br i1 %i.do, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.ph57, i64 274
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i = phi i64 [ %.sroa.24.0.i.ph56, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.24.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ] ; 3 uses
  %.sroa.38.0.i = phi i64 [ %i.dk, %.peel.next.i.i.i.outer.peel.newph ], [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ] ; 2 uses
  %.sroa.24.0.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i, 11
  tail call void @llvm.assume(i1 %i.dr), !noalias !18453
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i178.sink225.i ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val8.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !18457 ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  %.val9.i.i.i = load i64, ptr %i.du, align 8, !noalias !18457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18475)
  %i.dv = load i64, ptr %i.f, align 8, !alias.scope !18476, !noalias !18467, !noundef !69 ; 3 uses
  %i.dw = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18476, !noalias !18467, !noundef !69
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.p, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i", !prof !67

bb.p:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18477
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18478, !noalias !18467
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i": ; preds = %bb.p, %.peel.next.i.i.i
  %i.dy = phi i64 [ %i.dv, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.l, align 8, !alias.scope !18478, !noalias !18467, !nonnull !69, !noundef !69
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 44, ptr %i.eb, align 1, !noalias !18479
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.f, align 8, !alias.scope !18478, !noalias !18467
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i, i64 noundef %.val9.i.i.i)
  %i.ed = icmp eq i64 %.sroa.38.0.i, 0
  br i1 %i.ed, label %.thread170.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i"
  %i.ee = add i64 %.sroa.38.0.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.ph57) ]
  %i.ef = load i16, ptr %i.dq, align 2, !noalias !18471, !noundef !69
  %i.eg = zext i16 %i.ef to i64
  %i.eh = icmp samesign ult i64 %.sroa.24.0.i, %i.eg
  br i1 %i.eh, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !18414

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"
  %.lcssa = phi i64 [ %i.dk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel" ], [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.q
  %.sroa.0.038.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.q ], [ %.sroa.7.0.i.ph57, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i = phi i64 [ %i.ej, %bb.q ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i, align 8, !noalias !18480, !noundef !69 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ej = add i64 %.sroa.5.037.i.i.i.i.i.i, 1     ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i, i64 272
  %i.el = load i16, ptr %i.ek, align 8, !noalias !18480 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 274
  %i.en = load i16, ptr %i.em, align 2, !noalias !18471, !noundef !69
  %i.eo = icmp ult i16 %i.el, %i.en
  br i1 %i.eo, label %bb.r, label %.lr.ph.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ep = zext i16 %i.el to i64                   ; 2 uses
  %i.eq = icmp eq i64 %i.ej, 0
  %i.er = add nuw nsw i64 %i.ep, 1                ; 2 uses
  br i1 %i.eq, label %.peel.next.i.i.i.outer.backedge, label %bb.s

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit84, %.new85, %bb.r
  %.sroa.24.0.i.ph56.be = phi i64 [ %i.er, %bb.r ], [ 0, %.new85 ], [ 0, %.prol.loopexit84 ]
  %.sroa.7.0.i.ph57.be = phi ptr [ %i.ei, %bb.r ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit84 ], [ %.pn30.i.i.i.i.i.i.7, %.new85 ]
  br label %.peel.next.i.i.i.outer

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 280
  %i.et = icmp ult i16 %i.el, 11
  tail call void @llvm.assume(i1 %i.et), !noalias !18453
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %xtraiter87 = and i64 %i.ej, 7                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.prol.loopexit84, label %.prol.preheader83

.prol.preheader83:                                ; preds = %bb.s, %.prol.preheader83
  %.pn30.in.i.i.i.i.i.i.prol = phi ptr [ %i.ev, %.prol.preheader83 ], [ %i.eu, %bb.s ]
  %.pn28.in.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ], [ %i.ej, %bb.s ]
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.prol.preheader83 ], [ 0, %bb.s ]
  %.pn28.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.prol, align 8, !noalias !18481, !nonnull !69, !noundef !69 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.prol.loopexit84, label %.prol.preheader83, !llvm.loop !18420

.prol.loopexit84:                                 ; preds = %.prol.preheader83, %bb.s
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.s ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.eu, %bb.s ], [ %i.ev, %.prol.preheader83 ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %i.ej, %bb.s ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %i.ew = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i, 7
  br i1 %i.ew, label %.peel.next.i.i.i.outer.backedge, label %.new85

.new85:                                           ; preds = %.prol.loopexit84, %.new85
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.ff, %.new85 ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new85 ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.ex, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.ey, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.ez, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.fa, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.fb, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.fc, align 8, !noalias !18481, !nonnull !69, !noundef !69
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.fd, align 8, !noalias !18481, !nonnull !69, !noundef !69 ; 2 uses
  %i.fe = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.fe, label %.peel.next.i.i.i.outer.backedge, label %.new85, !llvm.loop !18421

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i unwind label %bb.u, !noalias !18482

.noexc.i.i.i.i:                                   ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18453
  unreachable

.thread170.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.thread.i", %.lr.ph.split.i.i.i
  %i.fh = load i64, ptr %i.f, align 8, !alias.scope !18483, !noalias !18484, !noundef !69 ; 3 uses
  %i.fi = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18483, !noalias !18484, !noundef !69
  %i.fj = icmp eq i64 %i.fi, %i.fh
  br i1 %i.fj, label %.thread172.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit, !prof !67

.thread172.sink.split.i:                          ; preds = %.thread170.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.fh, %.thread170.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18485
  %.pre.i.i.i.i.i.i.i12.i = load i64, ptr %i.f, align 8, !noalias !18485
  br label %_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit

_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit: ; preds = %bb.c, %.thread170.i, %.thread172.sink.split.i
  %.sink228.i = phi i64 [ %i.fh, %.thread170.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i12.i, %.thread172.sink.split.i ] ; 3 uses
  %i.fk = icmp sgt i64 %.sink228.i, -1
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = load ptr, ptr %i.l, align 8, !noalias !18485, !nonnull !69, !noundef !69
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sink228.i
  store i8 93, ptr %i.fm, align 1, !noalias !18485
  %storemerge.i = add nuw i64 %.sink228.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !18485
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf95803aa29d2f269E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18660 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18661)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18662, !noundef !69 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.a, null          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18661 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18661
  %.sink.i.i = select i1 %.not.i.not.i, i64 0, i64 %i.e ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18666)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 21 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18667, !noalias !18668, !noundef !69 ; 3 uses
  %i.h = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18667, !noalias !18668, !noundef !69
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18669
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18670, !noalias !18668
  br label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i

_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18670, !noalias !18668, !nonnull !69, !noundef !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 123, ptr %i.n, align 1, !noalias !18671
  %i.o = add nuw i64 %i.j, 1                      ; 4 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !18670, !noalias !18668
  %i.p = icmp eq i64 %.sink.i.i, 0
  br i1 %i.p, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i
  %i.q = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18672, !noalias !18673, !noundef !69
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %.thread167.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit, !prof !67

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i
  br i1 %.not.i.not.i, label %.critedge.i54.i, label %bb.d

bb.d:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i"
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i", label %.lr.ph.i.i85.i.preheader

.lr.ph.i.i85.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i85.i.prol.loopexit, label %.lr.ph.i.i85.i.prol

.lr.ph.i.i85.i.prol:                              ; preds = %.lr.ph.i.i85.i.preheader, %.lr.ph.i.i85.i.prol
  %.sroa.012.015.i.i86.i.prol = phi ptr [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ], [ %i.a, %.lr.ph.i.i85.i.preheader ]
  %.sroa.011.014.i.i87.i.prol = phi i64 [ %i.u, %.lr.ph.i.i85.i.prol ], [ %i.c, %.lr.ph.i.i85.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i85.i.prol ], [ 0, %.lr.ph.i.i85.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i86.i.prol, i64 544
  %i.u = add i64 %.sroa.011.014.i.i87.i.prol, -1  ; 2 uses
  %.sroa.012.0.i.i88.i.prol = load ptr, ptr %i.t, align 8, !noalias !18674, !nonnull !69, !noundef !69 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i85.i.prol.loopexit, label %.lr.ph.i.i85.i.prol, !llvm.loop !18528

.lr.ph.i.i85.i.prol.loopexit:                     ; preds = %.lr.ph.i.i85.i.prol, %.lr.ph.i.i85.i.preheader
  %.sroa.012.0.i.i88.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.012.015.i.i86.i.unr = phi ptr [ %i.a, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.011.014.i.i87.i.unr = phi i64 [ %i.c, %.lr.ph.i.i85.i.preheader ], [ %i.u, %.lr.ph.i.i85.i.prol ]
  %i.v = icmp ult i64 %i.c, 8
  br i1 %i.v, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i", label %.lr.ph.i.i85.i

.lr.ph.i.i85.i:                                   ; preds = %.lr.ph.i.i85.i.prol.loopexit, %.lr.ph.i.i85.i
  %.sroa.012.015.i.i86.i = phi ptr [ %.sroa.012.0.i.i88.i.7, %.lr.ph.i.i85.i ], [ %.sroa.012.015.i.i86.i.unr, %.lr.ph.i.i85.i.prol.loopexit ]
end_hunk_0
begin_hunk_1_@"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf95803aa29d2f269E":bb.a
  %i.aw = icmp ult i64 %.sroa.5.037.i.i.i.i68.i, 7
  br i1 %i.aw, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i74.i = phi ptr [ %i.bf, %.new ], [ %.pn30.in.i.i.i.i74.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i75.i = phi i64 [ %.pn28.i.i.i.i76.i.7, %.new ], [ %.pn28.in.i.i.i.i75.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i77.i = load ptr, ptr %.pn30.in.i.i.i.i74.i, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i, i64 544
  %.pn30.i.i.i.i77.i.1 = load ptr, ptr %i.ax, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.1, i64 544
  %.pn30.i.i.i.i77.i.2 = load ptr, ptr %i.ay, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.2, i64 544
  %.pn30.i.i.i.i77.i.3 = load ptr, ptr %i.az, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.3, i64 544
  %.pn30.i.i.i.i77.i.4 = load ptr, ptr %i.ba, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.4, i64 544
  %.pn30.i.i.i.i77.i.5 = load ptr, ptr %i.bb, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.5, i64 544
  %.pn30.i.i.i.i77.i.6 = load ptr, ptr %i.bc, align 8, !noalias !18678, !nonnull !69, !noundef !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.6, i64 544
  %.pn28.i.i.i.i76.i.7 = add i64 %.pn28.in.i.i.i.i75.i, -8 ; 2 uses
  %.pn30.i.i.i.i77.i.7 = load ptr, ptr %i.bd, align 8, !noalias !18678, !nonnull !69, !noundef !69 ; 2 uses
  %i.be = icmp eq i64 %.pn28.i.i.i.i76.i.7, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.7, i64 544
  br i1 %i.be, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i66.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i83.i unwind label %bb.i, !noalias !18679

.noexc.i.i83.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18677
  unreachable

.critedge.i54.i:                                  ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !18680
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i"
  %.sroa.0.0.ph.i.i.i73136.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %i.ai, %.new ], [ %i.ai, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i71135.i = phi i64 [ %i.ap, %bb.f ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %i.ap, %.new ], [ %i.ap, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i79.i = phi i64 [ %i.ar, %bb.f ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i80.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %.pn30.i.i.i.i77.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i77.i.7, %.new ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i, i64 8
  %i.bi = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i, 11
  tail call void @llvm.assume(i1 %i.bi), !noalias !18677
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73136.i, i64 272
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.6.sroa.4.0.ph.i.i.i71135.i ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val9.peel.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !18681, !nonnull !69, !noundef !69
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %.val10.peel.i.i.i = load i64, ptr %i.bn, align 8, !noalias !18681
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  %.val11.peel.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !18681 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 16
  %.val12.peel.i.i.i = load i64, ptr %i.bp, align 8, !noalias !18681
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i, i64 noundef %.val10.peel.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18685)
  %i.bq = load i64, ptr %i.f, align 8, !alias.scope !18686, !noalias !18687, !noundef !69 ; 3 uses
  %i.br = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18686, !noalias !18687, !noundef !69
  %i.bs = icmp eq i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.j, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i", !prof !67

bb.j:                                             ; preds = %.lr.ph.split.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.bq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18688
  %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18689, !noalias !18687
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i": ; preds = %bb.j, %.lr.ph.split.i.i.i
  %i.bt = phi i64 [ %i.bq, %.lr.ph.split.i.i.i ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i, %bb.j ] ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load ptr, ptr %i.l, align 8, !alias.scope !18689, !noalias !18687, !nonnull !69, !noundef !69
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 58, ptr %i.bw, align 1, !noalias !18690
  %i.bx = add nuw i64 %i.bt, 1
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !18689, !noalias !18687
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.peel.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.peel.i.i.i, i64 noundef %.val12.peel.i.i.i)
  %i.by = icmp eq i64 %.sink.i.i, 1
  br i1 %i.by, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"
  %i.bz = add i64 %.sink.i.i, -2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !18691, !noundef !69
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i, %i.cc
  br i1 %i.cd, label %.thread145.i, label %.lr.ph.i.i.i.i28.i

.thread145.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i"
  %i.ce = add nuw nsw i64 %.sroa.7.0.i.i.i79.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit79, %.new80, %bb.l, %.thread145.i
  %.sroa.0.0.ph.i.i.i174.sink228.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread145.i ], [ %i.cf, %bb.l ], [ %i.cf, %.new80 ], [ %i.cf, %.prol.loopexit79 ]
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i, %.thread145.i ], [ %i.cm, %bb.l ], [ %i.cm, %.new80 ], [ %i.cm, %.prol.loopexit79 ]
  %.sroa.30.1.i.ph = phi i64 [ %i.ce, %.thread145.i ], [ %i.co, %bb.l ], [ 0, %.new80 ], [ 0, %.prol.loopexit79 ]
  %.sroa.7.1.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread145.i ], [ %i.cf, %bb.l ], [ %.pn30.i.i.i.i39.i.lcssa.unr, %.prol.loopexit79 ], [ %.pn30.i.i.i.i39.i.7, %.new80 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i28.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i", %bb.k
  %.sroa.0.038.i.i.i.i29.i = phi ptr [ %i.cf, %bb.k ], [ %.sroa.07.0.i.i.i80.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i = phi i64 [ %i.cg, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i" ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.0.038.i.i.i.i29.i, align 8, !noalias !18692, !noundef !69 ; 8 uses
  %.not.i.i.i.i.i31.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i31.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i28.i
  %i.cg = add i64 %.sroa.5.037.i.i.i.i30.i, 1     ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i, i64 536
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !18692 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 538
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !18691, !noundef !69
  %i.cl = icmp ult i16 %i.ci, %i.ck
  br i1 %i.cl, label %bb.l, label %.lr.ph.i.i.i.i28.i

bb.l:                                             ; preds = %bb.k
  %i.cm = zext i16 %i.ci to i64                   ; 4 uses
  %i.cn = icmp eq i64 %i.cg, 0
  %i.co = add nuw nsw i64 %i.cm, 1                ; 2 uses
  br i1 %i.cn, label %.peel.next.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 544
  %i.cq = icmp ult i16 %i.ci, 11
  tail call void @llvm.assume(i1 %i.cq), !noalias !18677
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %xtraiter82 = and i64 %i.cg, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.prol.loopexit79, label %.prol.preheader78

.prol.preheader78:                                ; preds = %bb.m, %.prol.preheader78
  %.pn30.in.i.i.i.i36.i.prol = phi ptr [ %i.cs, %.prol.preheader78 ], [ %i.cr, %bb.m ]
  %.pn28.in.i.i.i.i37.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ], [ %i.cg, %bb.m ]
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader78 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i38.i.prol = add i64 %.pn28.in.i.i.i.i37.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.prol, align 8, !noalias !18693, !nonnull !69, !noundef !69 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.prol, i64 544 ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit79, label %.prol.preheader78, !llvm.loop !18579

.prol.loopexit79:                                 ; preds = %.prol.preheader78, %bb.m
  %.pn30.i.i.i.i39.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i39.i.prol, %.prol.preheader78 ]
  %.pn30.in.i.i.i.i36.i.unr = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %.prol.preheader78 ]
  %.pn28.in.i.i.i.i37.i.unr = phi i64 [ %i.cg, %bb.m ], [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ]
  %i.ct = icmp ult i64 %.sroa.5.037.i.i.i.i30.i, 7
  br i1 %i.ct, label %.peel.next.i.i.i.preheader, label %.new80

.new80:                                           ; preds = %.prol.loopexit79, %.new80
  %.pn30.in.i.i.i.i36.i = phi ptr [ %i.dc, %.new80 ], [ %.pn30.in.i.i.i.i36.i.unr, %.prol.loopexit79 ]
  %.pn28.in.i.i.i.i37.i = phi i64 [ %.pn28.i.i.i.i38.i.7, %.new80 ], [ %.pn28.in.i.i.i.i37.i.unr, %.prol.loopexit79 ]
  %.pn30.i.i.i.i39.i = load ptr, ptr %.pn30.in.i.i.i.i36.i, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i, i64 544
  %.pn30.i.i.i.i39.i.1 = load ptr, ptr %i.cu, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.1, i64 544
  %.pn30.i.i.i.i39.i.2 = load ptr, ptr %i.cv, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.2, i64 544
  %.pn30.i.i.i.i39.i.3 = load ptr, ptr %i.cw, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.3, i64 544
  %.pn30.i.i.i.i39.i.4 = load ptr, ptr %i.cx, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.4, i64 544
  %.pn30.i.i.i.i39.i.5 = load ptr, ptr %i.cy, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.5, i64 544
  %.pn30.i.i.i.i39.i.6 = load ptr, ptr %i.cz, align 8, !noalias !18693, !nonnull !69, !noundef !69
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.6, i64 544
  %.pn28.i.i.i.i38.i.7 = add i64 %.pn28.in.i.i.i.i37.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.7 = load ptr, ptr %i.da, align 8, !noalias !18693, !nonnull !69, !noundef !69 ; 2 uses
  %i.db = icmp eq i64 %.pn28.i.i.i.i38.i.7, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.7, i64 544
  br i1 %i.db, label %.peel.next.i.i.i.preheader, label %.new80

bb.n:                                             ; preds = %.lr.ph.i.i.i.i28.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i45.i unwind label %bb.o, !noalias !18694

.noexc.i.i45.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18677
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i174.sink228.i.ph58 = phi ptr [ %.sroa.0.0.ph.i.i.i174.sink228.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fo, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fv, %.peel.next.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.ph = phi i64 [ %i.bz, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.ph60 = phi i64 [ %.sroa.30.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.30.1.i.ph60.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.ph61 = phi ptr [ %.sroa.7.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.7.1.i.ph61.be, %.peel.next.i.i.i.outer.backedge ] ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.ph58, i64 8
  %i.df = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59, 11
  tail call void @llvm.assume(i1 %i.df), !noalias !18677
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i174.sink228.i.ph58, i64 272
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i.ph59 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  %.val9.i.i.i.peel = load ptr, ptr %i.dj, align 8, !noalias !18681 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dg, i64 16
  %.val10.i.i.i.peel = load i64, ptr %i.dk, align 8, !noalias !18681
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %.val11.i.i.i.peel = load ptr, ptr %i.dl, align 8, !noalias !18681 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 16
  %.val12.i.i.i.peel = load i64, ptr %i.dm, align 8, !noalias !18681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18698)
  %i.dn = load i64, ptr %i.f, align 8, !alias.scope !18699, !noalias !18700, !noundef !69 ; 3 uses
  %i.do = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18699, !noalias !18700, !noundef !69
  %i.dp = icmp eq i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.p, label %bb.q, !prof !67

bb.p:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18701
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !18702, !noalias !18700
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.peel.next.i.i.i.outer
  %i.dq = phi i64 [ %i.dn, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.p ] ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = load ptr, ptr %i.l, align 8, !alias.scope !18702, !noalias !18700, !nonnull !69, !noundef !69
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 44, ptr %i.dt, align 1, !noalias !18703
  %i.du = add nuw i64 %i.dq, 1
  store i64 %i.du, ptr %i.f, align 8, !alias.scope !18702, !noalias !18700
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.peel, i64 noundef %.val10.i.i.i.peel)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18707)
  %i.dv = load i64, ptr %i.f, align 8, !alias.scope !18708, !noalias !18709, !noundef !69 ; 3 uses
  %i.dw = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18708, !noalias !18709, !noundef !69
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.r, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel", !prof !67

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18710
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !18711, !noalias !18709
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel": ; preds = %bb.r, %bb.q
  %i.dy = phi i64 [ %i.dv, %bb.q ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel, %bb.r ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.l, align 8, !alias.scope !18711, !noalias !18709, !nonnull !69, !noundef !69
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 58, ptr %i.eb, align 1, !noalias !18712
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.f, align 8, !alias.scope !18711, !noalias !18709
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i.peel, i64 noundef %.val12.i.i.i.peel)
  %i.ed = icmp eq i64 %.sroa.44.0.i.ph, 0
  br i1 %i.ed, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel"
  %i.ee = add i64 %.sroa.44.0.i.ph, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.ph61) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 538
  %i.eg = load i16, ptr %i.ef, align 2, !noalias !18713, !noundef !69
  %i.eh = zext i16 %i.eg to i64
  %i.ei = icmp ult i64 %.sroa.30.1.i.ph60, %i.eh
  br i1 %i.ei, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 272
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph61, i64 538
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i = phi i64 [ %.sroa.30.1.i.ph60, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ] ; 4 uses
  %.sroa.44.0.i = phi i64 [ %i.ee, %.peel.next.i.i.i.outer.peel.newph ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ] ; 2 uses
  %.sroa.30.1.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i, 1 ; 2 uses
  %i.em = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i, 11
  tail call void @llvm.assume(i1 %i.em), !noalias !18677
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %.sroa.6.sroa.4.0.ph.i.i.i173.sink227.i ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !18681 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 16
  %.val10.i.i.i = load i64, ptr %i.eq, align 8, !noalias !18681
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.val11.i.i.i = load ptr, ptr %i.er, align 8, !noalias !18681 ; 2 uses
  %i.es = getelementptr i8, ptr %i.eo, i64 16
  %.val12.i.i.i = load i64, ptr %i.es, align 8, !noalias !18681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18717)
  %i.et = load i64, ptr %i.f, align 8, !alias.scope !18718, !noalias !18700, !noundef !69 ; 3 uses
  %i.eu = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18718, !noalias !18700, !noundef !69
  %i.ev = icmp eq i64 %i.eu, %i.et
  br i1 %i.ev, label %bb.s, label %bb.t, !prof !67

bb.s:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.et, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18719
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18720, !noalias !18700
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.peel.next.i.i.i
  %i.ew = phi i64 [ %i.et, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.l, align 8, !alias.scope !18720, !noalias !18700, !nonnull !69, !noundef !69
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 44, ptr %i.ez, align 1, !noalias !18721
  %i.fa = add nuw i64 %i.ew, 1
  store i64 %i.fa, ptr %i.f, align 8, !alias.scope !18720, !noalias !18700
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i, i64 noundef %.val10.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18725)
  %i.fb = load i64, ptr %i.f, align 8, !alias.scope !18726, !noalias !18709, !noundef !69 ; 3 uses
  %i.fc = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18726, !noalias !18709, !noundef !69
  %i.fd = icmp eq i64 %i.fc, %i.fb
  br i1 %i.fd, label %bb.u, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i", !prof !67

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.fb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18727
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18728, !noalias !18709
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i": ; preds = %bb.u, %bb.t
  %i.fe = phi i64 [ %i.fb, %bb.t ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = load ptr, ptr %i.l, align 8, !alias.scope !18728, !noalias !18709, !nonnull !69, !noundef !69
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 58, ptr %i.fh, align 1, !noalias !18729
  %i.fi = add nuw i64 %i.fe, 1
  store i64 %i.fi, ptr %i.f, align 8, !alias.scope !18728, !noalias !18709
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i, i64 noundef %.val12.i.i.i)
  %i.fj = icmp eq i64 %.sroa.44.0.i, 0
  br i1 %i.fj, label %.thread165.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i"
  %i.fk = add i64 %.sroa.44.0.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.ph61) ]
  %i.fl = load i16, ptr %i.el, align 2, !noalias !18713, !noundef !69
  %i.fm = zext i16 %i.fl to i64
  %i.fn = icmp samesign ult i64 %.sroa.30.1.i, %i.fm
  br i1 %i.fn, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, !llvm.loop !18638

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"
  %.lcssa = phi i64 [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel" ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.v
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.fo, %bb.v ], [ %.sroa.7.1.i.ph61, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.fp, %bb.v ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.fo = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !18730, !noundef !69 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fp = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 536
  %i.fr = load i16, ptr %i.fq, align 8, !noalias !18730 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 538
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !18713, !noundef !69
  %i.fu = icmp ult i16 %i.fr, %i.ft
  br i1 %i.fu, label %bb.w, label %.lr.ph.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fv = zext i16 %i.fr to i64                   ; 2 uses
  %i.fw = icmp eq i64 %i.fp, 0
  %i.fx = add nuw nsw i64 %i.fv, 1                ; 2 uses
  br i1 %i.fw, label %.peel.next.i.i.i.outer.backedge, label %bb.x

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit88, %.new89, %bb.w
  %.sroa.30.1.i.ph60.be = phi i64 [ %i.fx, %bb.w ], [ 0, %.new89 ], [ 0, %.prol.loopexit88 ]
  %.sroa.7.1.i.ph61.be = phi ptr [ %i.fo, %bb.w ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit88 ], [ %.pn30.i.i.i.i.i.7, %.new89 ]
  br label %.peel.next.i.i.i.outer

bb.x:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 544
  %i.fz = icmp ult i16 %i.fr, 11
  tail call void @llvm.assume(i1 %i.fz), !noalias !18677
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx ; 2 uses
  %xtraiter91 = and i64 %i.fp, 7                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.prol.loopexit88, label %.prol.preheader87

.prol.preheader87:                                ; preds = %bb.x, %.prol.preheader87
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.gb, %.prol.preheader87 ], [ %i.ga, %bb.x ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ], [ %i.fp, %bb.x ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.prol.preheader87 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !18731, !nonnull !69, !noundef !69 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.prol.loopexit88, label %.prol.preheader87, !llvm.loop !18644

.prol.loopexit88:                                 ; preds = %.prol.preheader87, %bb.x
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader87 ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.ga, %bb.x ], [ %i.gb, %.prol.preheader87 ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %i.fp, %bb.x ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ]
  %i.gc = icmp ult i64 %.sroa.5.037.i.i.i.i.i, 7
  br i1 %i.gc, label %.peel.next.i.i.i.outer.backedge, label %.new89

.new89:                                           ; preds = %.prol.loopexit88, %.new89
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.gl, %.new89 ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new89 ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.gd, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.ge, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.gf, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.gg, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.gh, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.gi, align 8, !noalias !18731, !nonnull !69, !noundef !69
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.gj, align 8, !noalias !18731, !nonnull !69, !noundef !69 ; 2 uses
  %i.gk = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.gk, label %.peel.next.i.i.i.outer.backedge, label %.new89, !llvm.loop !18645

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !18732

.noexc.i.i.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18677
  unreachable

.thread165.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"
  %i.gn = load i64, ptr %i.f, align 8, !alias.scope !18733, !noalias !18734, !noundef !69 ; 3 uses
  %i.go = load i64, ptr %.0.val, align 8, !range !71, !alias.scope !18733, !noalias !18734, !noundef !69
  %i.gp = icmp eq i64 %i.go, %i.gn
  br i1 %i.gp, label %.thread167.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit, !prof !67

.thread167.sink.split.i:                          ; preds = %.thread165.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.gn, %.thread165.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18735
  %.pre.i.i.i.i.i.i.i13.i = load i64, ptr %i.f, align 8, !noalias !18735
  br label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit

_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit: ; preds = %bb.c, %.thread165.i, %.thread167.sink.split.i
  %.sink231.i = phi i64 [ %i.gn, %.thread165.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i13.i, %.thread167.sink.split.i ] ; 3 uses
  %i.gq = icmp sgt i64 %.sink231.i, -1
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = load ptr, ptr %i.l, align 8, !noalias !18735, !nonnull !69, !noundef !69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink231.i
  store i8 125, ptr %i.gs, align 1, !noalias !18735
  %storemerge.i = add nuw i64 %.sink231.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !18735
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h4286218b04cf77c9E"(ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18935 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !82, !alias.scope !18936, !noundef !69
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !82, !alias.scope !18936, !noundef !69
  %.not53.i = icmp eq i64 %i.h, -9223372036854775808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18939)
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !18940, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18941)
  %i.i = load i64, ptr %.val.i.i.i, align 8, !range !71, !alias.scope !18941, !noalias !18942, !noundef !69
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !18941, !noalias !18942, !noundef !69 ; 4 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.i, %i.k
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18943)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !18944, !noalias !18945, !nonnull !69, !noundef !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  store i8 123, ptr %i.q, align 1, !noalias !18946
  %i.r = add nuw i64 %i.k, 1
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !18944, !noalias !18945
  br label %bb.c

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i: ; preds = %bb.a
  %i.s = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !18947 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !76

bb.b:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i
  %i.t = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.s), !noalias !18947
  br label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i
  store i8 0, ptr %i.d, align 8, !noalias !18948
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !18948
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !18948
  br i1 %.not.i, label %bb.d, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i": ; preds = %bb.c
  %i.u = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb38582f298d21f44E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @370, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) ; 2 uses
  %.not55.i = icmp eq ptr %i.u, null
  br i1 %.not55.i, label %bb.d, label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

bb.d:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i", %bb.c
  br i1 %.not53.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.d, align 8, !range !92, !noalias !18948, !noundef !69
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.thread.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.thread.i": ; preds = %bb.e
  %i.x = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !18949
  br label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.i": ; preds = %bb.e
  %i.y = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb38582f298d21f44E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @344, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %.not57.i = icmp eq ptr %i.y, null
end_hunk_1
begin_hunk_2_@_ZN4dump6writer10DumpWriter14create_network17h44710d986e9e796aE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !77933)
  call void @llvm.experimental.noalias.scope.decl(metadata !77934)
  %i.mb = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77935, !noalias !77936, !noundef !69
  %i.mc = icmp eq i64 %i.mb, %i.ma
  br i1 %i.mc, label %bb.bd, label %bb.be, !prof !67

bb.bd:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.ma, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77937

.noexc35.i:                                       ; preds = %bb.bd
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77938, !noalias !77936
  br label %bb.be

bb.be:                                            ; preds = %.noexc35.i, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i
  %i.md = phi i64 [ %i.ma, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc35.i ] ; 3 uses
  %i.me = icmp sgt i64 %i.md, -1
  call void @llvm.assume(i1 %i.me)
  %i.mf = load ptr, ptr %i.jq, align 8, !alias.scope !77938, !noalias !77936, !nonnull !69, !noundef !69
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.md
  store i8 123, ptr %i.mg, align 1, !noalias !77939
  %i.mh = add nuw i64 %i.md, 1
  store i64 %i.mh, ptr %i.jk, align 8, !alias.scope !77938, !noalias !77936
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.i:                                       ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !77940)
  call void @llvm.experimental.noalias.scope.decl(metadata !77941)
  call void @llvm.experimental.noalias.scope.decl(metadata !77942)
  call void @llvm.experimental.noalias.scope.decl(metadata !77943)
  %i.mi = load i64, ptr %i.jk, align 8, !alias.scope !77944, !noalias !77945, !noundef !69 ; 3 uses
  %i.mj = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77944, !noalias !77945, !noundef !69
  %i.mk = icmp eq i64 %i.mj, %i.mi
  br i1 %i.mk, label %bb.bf, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i", !prof !67

bb.bf:                                            ; preds = %.noexc36.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.mi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77946

.noexc37.i:                                       ; preds = %bb.bf
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77947, !noalias !77945
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc37.i, %.noexc36.i
  %i.ml = phi i64 [ %i.mi, %.noexc36.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc37.i ] ; 3 uses
  %i.mm = icmp sgt i64 %i.ml, -1
  call void @llvm.assume(i1 %i.mm)
  %i.mn = load ptr, ptr %i.jq, align 8, !alias.scope !77947, !noalias !77945, !nonnull !69, !noundef !69
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ml
  store i8 58, ptr %i.mo, align 1, !noalias !77948
  %i.mp = add nuw i64 %i.ml, 1
  store i64 %i.mp, ptr %i.jk, align 8, !alias.scope !77947, !noalias !77945
  %i.mq = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lq, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77949 ; 2 uses

.noexc38.i:                                       ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %.loopexit62.i

bb.bg:                                            ; preds = %.noexc38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !77950)
  call void @llvm.experimental.noalias.scope.decl(metadata !77951)
  call void @llvm.experimental.noalias.scope.decl(metadata !77952)
  call void @llvm.experimental.noalias.scope.decl(metadata !77953)
  %i.mr = load i64, ptr %i.jk, align 8, !alias.scope !77954, !noalias !77955, !noundef !69 ; 3 uses
  %i.ms = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77954, !noalias !77955, !noundef !69
  %i.mt = icmp eq i64 %i.ms, %i.mr
  br i1 %i.mt, label %bb.bh, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i", !prof !67

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.mr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77956

.noexc39.i:                                       ; preds = %bb.bh
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77957, !noalias !77955
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc39.i, %bb.bg
  %i.mu = phi i64 [ %i.mr, %bb.bg ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc39.i ] ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, -1
  call void @llvm.assume(i1 %i.mv)
  %i.mw = load ptr, ptr %i.jq, align 8, !alias.scope !77957, !noalias !77955, !nonnull !69, !noundef !69
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 125, ptr %i.mx, align 1, !noalias !77958
  %i.my = add nuw i64 %i.mu, 1                    ; 3 uses
  store i64 %i.my, ptr %i.jk, align 8, !alias.scope !77957, !noalias !77955
  %i.mz = icmp eq i64 %.sink.i.i.i.i.i.i41.i.i.i, 1
  br i1 %i.mz, label %.thread169.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"
  %i.na = add i64 %.sink.i.i.i.i.i.i41.i.i.i, -2
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, i64 538
  %i.nc = load i16, ptr %i.nb, align 2, !noalias !77959, !noundef !69
  %i.nd = zext i16 %i.nc to i64
  %i.ne = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, %i.nd
  br i1 %i.ne, label %.thread145.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i

.thread145.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i"
  %i.nf = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.prol.loopexit283, %.new284, %bb.bj, %.thread145.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.bj ], [ %i.ng, %.new284 ], [ %i.ng, %.prol.loopexit283 ]
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i ], [ %i.nn, %bb.bj ], [ %i.nn, %.new284 ], [ %i.nn, %.prol.loopexit283 ]
  %.sroa.30.1.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.nf, %.thread145.i.i.i.i.i.i.i.i ], [ %i.np, %bb.bj ], [ 0, %.new284 ], [ 0, %.prol.loopexit283 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %.thread145.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.bj ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.lcssa.unr, %.prol.loopexit283 ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7, %.new284 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i:               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i", %bb.bi
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i = phi ptr [ %i.ng, %bb.bi ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i = phi i64 [ %i.nh, %bb.bi ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ng = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i, align 8, !noalias !77960, !noundef !69 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i50.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i50.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i
  %i.nh = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i, 1 ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i, i64 536
  %i.nj = load i16, ptr %i.ni, align 8, !noalias !77960 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 538
  %i.nl = load i16, ptr %i.nk, align 2, !noalias !77959, !noundef !69
  %i.nm = icmp ult i16 %i.nj, %i.nl
  br i1 %i.nm, label %bb.bj, label %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.nn = zext i16 %i.nj to i64                   ; 4 uses
  %i.no = icmp eq i64 %i.nh, 0
  %i.np = add nuw nsw i64 %i.nn, 1                ; 2 uses
  br i1 %i.no, label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 544
  %i.nr = icmp ult i16 %i.nj, 11
  call void @llvm.assume(i1 %i.nr), !noalias !77917
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.np ; 2 uses
  %xtraiter286 = and i64 %i.nh, 7                 ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.prol.loopexit283, label %.prol.preheader282

.prol.preheader282:                               ; preds = %bb.bk, %.prol.preheader282
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.prol = phi ptr [ %i.nt, %.prol.preheader282 ], [ %i.ns, %bb.bk ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol, %.prol.preheader282 ], [ %i.nh, %bb.bk ]
  %prol.iter288 = phi i64 [ %prol.iter288.next, %.prol.preheader282 ], [ 0, %bb.bk ]
  %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.prol, align 8, !noalias !77961, !nonnull !69, !noundef !69 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %.prol.loopexit283, label %.prol.preheader282, !llvm.loop !77488

.prol.loopexit283:                                ; preds = %.prol.preheader282, %bb.bk
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bk ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol, %.prol.preheader282 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.ns, %bb.bk ], [ %i.nt, %.prol.preheader282 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.unr = phi i64 [ %i.nh, %bb.bk ], [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol, %.prol.preheader282 ]
  %i.nu = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i, 7
  br i1 %i.nu, label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader, label %.new284

.new284:                                          ; preds = %.prol.loopexit283, %.new284
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i = phi ptr [ %i.od, %.new284 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.unr, %.prol.loopexit283 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7, %.new284 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.unr, %.prol.loopexit283 ]
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.nv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.1 = load ptr, ptr %i.nv, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.1, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.2 = load ptr, ptr %i.nw, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.2, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.3 = load ptr, ptr %i.nx, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.3, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.4 = load ptr, ptr %i.ny, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.4, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.5 = load ptr, ptr %i.nz, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.5, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.6 = load ptr, ptr %i.oa, align 8, !noalias !77961, !nonnull !69, !noundef !69
  %i.ob = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.6, i64 544
  %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7 = load ptr, ptr %i.ob, align 8, !noalias !77961, !nonnull !69, !noundef !69 ; 2 uses
  %i.oc = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7, 0
  %i.od = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7, i64 544
  br i1 %i.oc, label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader, label %.new284

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i45.i.i.i.i.i75.i.i.i unwind label %bb.bm, !noalias !77962

.noexc.i.i45.i.i.i.i.i75.i.i.i:                   ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !77917
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.i.outer:             ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.i.i.i.ph229 = phi ptr [ %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.sg, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph230 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.sn, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph = phi i64 [ %i.my, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa236, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.na, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa237, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i.ph231 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.i.ph231.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.i.ph232 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.ph232.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.i.i.i.ph229, i64 8
  %i.og = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph230, 11
  call void @llvm.assume(i1 %i.og), !noalias !77917
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph230 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink260.i.i.i.i.i.i.i.i.ph229, i64 272
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i.ph230
  %i.ok = getelementptr i8, ptr %i.oh, i64 8
  %.val9.i.i.i.i.i.i.i57.i.i.i.peel = load ptr, ptr %i.ok, align 8, !noalias !77921 ; 2 uses
  %i.ol = getelementptr i8, ptr %i.oh, i64 16
  %.val10.i.i.i.i.i.i.i58.i.i.i.peel = load i64, ptr %i.ol, align 8, !noalias !77921
  call void @llvm.experimental.noalias.scope.decl(metadata !77963)
  call void @llvm.experimental.noalias.scope.decl(metadata !77964)
  call void @llvm.experimental.noalias.scope.decl(metadata !77965)
  call void @llvm.experimental.noalias.scope.decl(metadata !77966)
  %i.om = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77967, !noalias !77968, !noundef !69
  %i.on = icmp eq i64 %i.om, %.ph
  br i1 %i.on, label %bb.bn, label %bb.bo, !prof !67

bb.bn:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.outer
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %.ph, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77969

.noexc40.i.peel:                                  ; preds = %bb.bn
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77970, !noalias !77968
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc40.i.peel, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer
  %i.oo = phi i64 [ %.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.peel, %.noexc40.i.peel ] ; 3 uses
  %i.op = icmp sgt i64 %i.oo, -1
  call void @llvm.assume(i1 %i.op)
  %i.oq = load ptr, ptr %i.jq, align 8, !alias.scope !77970, !noalias !77968, !nonnull !69, !noundef !69
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 44, ptr %i.or, align 1, !noalias !77971
  %i.os = add nuw i64 %i.oo, 1
  store i64 %i.os, ptr %i.jk, align 8, !alias.scope !77970, !noalias !77968
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i57.i.i.i.peel) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i57.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i58.i.i.i.peel)
          to label %.noexc41.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41.i.peel:                                  ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !77972)
  call void @llvm.experimental.noalias.scope.decl(metadata !77973)
  call void @llvm.experimental.noalias.scope.decl(metadata !77974)
  call void @llvm.experimental.noalias.scope.decl(metadata !77975)
  %i.ot = load i64, ptr %i.jk, align 8, !alias.scope !77976, !noalias !77977, !noundef !69 ; 3 uses
  %i.ou = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77976, !noalias !77977, !noundef !69
  %i.ov = icmp eq i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.bp, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel, !prof !67

bb.bp:                                            ; preds = %.noexc41.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.ot, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc42.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77978

.noexc42.i.peel:                                  ; preds = %bb.bp
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77979, !noalias !77977
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel: ; preds = %.noexc42.i.peel, %.noexc41.i.peel
  %i.ow = phi i64 [ %i.ot, %.noexc41.i.peel ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc42.i.peel ] ; 3 uses
  %i.ox = icmp sgt i64 %i.ow, -1
  call void @llvm.assume(i1 %i.ox)
  %i.oy = load ptr, ptr %i.jq, align 8, !alias.scope !77979, !noalias !77977, !nonnull !69, !noundef !69
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store i8 58, ptr %i.oz, align 1, !noalias !77980
  %i.pa = add nuw i64 %i.ow, 1                    ; 4 uses
  store i64 %i.pa, ptr %i.jk, align 8, !alias.scope !77979, !noalias !77977
  call void @llvm.experimental.noalias.scope.decl(metadata !77981)
  call void @llvm.experimental.noalias.scope.decl(metadata !77982)
  call void @llvm.experimental.noalias.scope.decl(metadata !77983)
  call void @llvm.experimental.noalias.scope.decl(metadata !77984)
  %i.pb = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77985, !noalias !77986, !noundef !69
  %i.pc = icmp eq i64 %i.pb, %i.pa
  br i1 %i.pc, label %bb.bq, label %bb.br, !prof !67

bb.bq:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pa, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77987

.noexc43.i.peel:                                  ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77988, !noalias !77986
  br label %bb.br

bb.br:                                            ; preds = %.noexc43.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel
  %i.pd = phi i64 [ %i.pa, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i.peel, %.noexc43.i.peel ] ; 3 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  call void @llvm.assume(i1 %i.pe)
  %i.pf = load ptr, ptr %i.jq, align 8, !alias.scope !77988, !noalias !77986, !nonnull !69, !noundef !69
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pd
  store i8 123, ptr %i.pg, align 1, !noalias !77989
  %i.ph = add nuw i64 %i.pd, 1
  store i64 %i.ph, ptr %i.jk, align 8, !alias.scope !77988, !noalias !77986
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc44.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44.i.peel:                                  ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !77990)
  call void @llvm.experimental.noalias.scope.decl(metadata !77991)
  call void @llvm.experimental.noalias.scope.decl(metadata !77992)
  call void @llvm.experimental.noalias.scope.decl(metadata !77993)
  %i.pi = load i64, ptr %i.jk, align 8, !alias.scope !77994, !noalias !77995, !noundef !69 ; 3 uses
  %i.pj = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !77994, !noalias !77995, !noundef !69
  %i.pk = icmp eq i64 %i.pj, %i.pi
  br i1 %i.pk, label %bb.bs, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !67

bb.bs:                                            ; preds = %.noexc44.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77996

.noexc45.i.peel:                                  ; preds = %bb.bs
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77997, !noalias !77995
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc45.i.peel, %.noexc44.i.peel
  %i.pl = phi i64 [ %i.pi, %.noexc44.i.peel ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.peel, %.noexc45.i.peel ] ; 3 uses
  %i.pm = icmp sgt i64 %i.pl, -1
  call void @llvm.assume(i1 %i.pm)
  %i.pn = load ptr, ptr %i.jq, align 8, !alias.scope !77997, !noalias !77995, !nonnull !69, !noundef !69
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pl
  store i8 58, ptr %i.po, align 1, !noalias !77998
  %i.pp = add nuw i64 %i.pl, 1
  store i64 %i.pp, ptr %i.jk, align 8, !alias.scope !77997, !noalias !77995
  %i.pq = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oj, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc46.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77999 ; 2 uses

.noexc46.i.peel:                                  ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.bt, label %.loopexit62.i

bb.bt:                                            ; preds = %.noexc46.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !78000)
  call void @llvm.experimental.noalias.scope.decl(metadata !78001)
  call void @llvm.experimental.noalias.scope.decl(metadata !78002)
  call void @llvm.experimental.noalias.scope.decl(metadata !78003)
  %i.pr = load i64, ptr %i.jk, align 8, !alias.scope !78004, !noalias !78005, !noundef !69 ; 3 uses
  %i.ps = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78004, !noalias !78005, !noundef !69
  %i.pt = icmp eq i64 %i.ps, %i.pr
  br i1 %i.pt, label %bb.bu, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel", !prof !67

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78006

.noexc47.i.peel:                                  ; preds = %bb.bu
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !78007, !noalias !78005
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc47.i.peel, %bb.bt
  %i.pu = phi i64 [ %i.pr, %bb.bt ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc47.i.peel ] ; 3 uses
  %i.pv = icmp sgt i64 %i.pu, -1
  call void @llvm.assume(i1 %i.pv)
  %i.pw = load ptr, ptr %i.jq, align 8, !alias.scope !78007, !noalias !78005, !nonnull !69, !noundef !69
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pu
  store i8 125, ptr %i.px, align 1, !noalias !78008
  %i.py = add nuw i64 %i.pu, 1                    ; 4 uses
  store i64 %i.py, ptr %i.jk, align 8, !alias.scope !78007, !noalias !78005
  %i.pz = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.pz, label %.thread169.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel"
  %i.qa = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232) ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232, i64 538
  %i.qc = load i16, ptr %i.qb, align 2, !noalias !78009, !noundef !69
  %i.qd = zext i16 %i.qc to i64
  %i.qe = icmp ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i.ph231, %i.qd
  br i1 %i.qe, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph:  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232, i64 272
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232, i64 538
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.i.ph231, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.30.1.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.qi = phi i64 [ %i.py, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.i = phi i64 [ %i.qa, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.sc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.qj), !noalias !77917
  %i.qk = getelementptr inbounds nuw [24 x i8], ptr %i.qf, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i ; 2 uses
  %i.ql = getelementptr inbounds nuw [24 x i8], ptr %i.qg, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink259.i.i.i.i.i.i.i.i
  %i.qm = getelementptr i8, ptr %i.qk, i64 8
  %.val9.i.i.i.i.i.i.i57.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !77921 ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qk, i64 16
  %.val10.i.i.i.i.i.i.i58.i.i.i = load i64, ptr %i.qn, align 8, !noalias !77921
  call void @llvm.experimental.noalias.scope.decl(metadata !78010)
  call void @llvm.experimental.noalias.scope.decl(metadata !78011)
  call void @llvm.experimental.noalias.scope.decl(metadata !78012)
  call void @llvm.experimental.noalias.scope.decl(metadata !78013)
  %i.qo = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78014, !noalias !77968, !noundef !69
  %i.qp = icmp eq i64 %i.qo, %i.qi
  br i1 %i.qp, label %bb.bv, label %bb.bw, !prof !67

bb.bv:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.qi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78015

.noexc40.i:                                       ; preds = %bb.bv
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !78016, !noalias !77968
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc40.i, %.peel.next.i.i.i.i.i.i.i.i.i.i
  %i.qq = phi i64 [ %i.qi, %.peel.next.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i, %.noexc40.i ] ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, -1
  call void @llvm.assume(i1 %i.qr)
  %i.qs = load ptr, ptr %i.jq, align 8, !alias.scope !78016, !noalias !77968, !nonnull !69, !noundef !69
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qq
  store i8 44, ptr %i.qt, align 1, !noalias !78017
  %i.qu = add nuw i64 %i.qq, 1
  store i64 %i.qu, ptr %i.jk, align 8, !alias.scope !78016, !noalias !77968
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i57.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i57.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i58.i.i.i)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41.i:                                       ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !78018)
  call void @llvm.experimental.noalias.scope.decl(metadata !78019)
  call void @llvm.experimental.noalias.scope.decl(metadata !78020)
  call void @llvm.experimental.noalias.scope.decl(metadata !78021)
  %i.qv = load i64, ptr %i.jk, align 8, !alias.scope !78022, !noalias !77977, !noundef !69 ; 3 uses
  %i.qw = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78022, !noalias !77977, !noundef !69
  %i.qx = icmp eq i64 %i.qw, %i.qv
  br i1 %i.qx, label %bb.bx, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i, !prof !67

bb.bx:                                            ; preds = %.noexc41.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.qv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78023

.noexc42.i:                                       ; preds = %bb.bx
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !78024, !noalias !77977
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i: ; preds = %.noexc42.i, %.noexc41.i
  %i.qy = phi i64 [ %i.qv, %.noexc41.i ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc42.i ] ; 3 uses
  %i.qz = icmp sgt i64 %i.qy, -1
  call void @llvm.assume(i1 %i.qz)
  %i.ra = load ptr, ptr %i.jq, align 8, !alias.scope !78024, !noalias !77977, !nonnull !69, !noundef !69
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qy
  store i8 58, ptr %i.rb, align 1, !noalias !78025
  %i.rc = add nuw i64 %i.qy, 1                    ; 4 uses
  store i64 %i.rc, ptr %i.jk, align 8, !alias.scope !78024, !noalias !77977
  call void @llvm.experimental.noalias.scope.decl(metadata !78026)
  call void @llvm.experimental.noalias.scope.decl(metadata !78027)
  call void @llvm.experimental.noalias.scope.decl(metadata !78028)
  call void @llvm.experimental.noalias.scope.decl(metadata !78029)
  %i.rd = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78030, !noalias !77986, !noundef !69
  %i.re = icmp eq i64 %i.rd, %i.rc
  br i1 %i.re, label %bb.by, label %bb.bz, !prof !67

bb.by:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rc, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78031

.noexc43.i:                                       ; preds = %bb.by
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !78032, !noalias !77986
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc43.i, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i
  %i.rf = phi i64 [ %i.rc, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i, %.noexc43.i ] ; 3 uses
  %i.rg = icmp sgt i64 %i.rf, -1
  call void @llvm.assume(i1 %i.rg)
  %i.rh = load ptr, ptr %i.jq, align 8, !alias.scope !78032, !noalias !77986, !nonnull !69, !noundef !69
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rf
  store i8 123, ptr %i.ri, align 1, !noalias !78033
  %i.rj = add nuw i64 %i.rf, 1
  store i64 %i.rj, ptr %i.jk, align 8, !alias.scope !78032, !noalias !77986
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44.i:                                       ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !78034)
  call void @llvm.experimental.noalias.scope.decl(metadata !78035)
  call void @llvm.experimental.noalias.scope.decl(metadata !78036)
  call void @llvm.experimental.noalias.scope.decl(metadata !78037)
  %i.rk = load i64, ptr %i.jk, align 8, !alias.scope !78038, !noalias !77995, !noundef !69 ; 3 uses
  %i.rl = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78038, !noalias !77995, !noundef !69
  %i.rm = icmp eq i64 %i.rl, %i.rk
  br i1 %i.rm, label %bb.ca, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !67

bb.ca:                                            ; preds = %.noexc44.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78039

.noexc45.i:                                       ; preds = %bb.ca
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !78040, !noalias !77995
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc45.i, %.noexc44.i
  %i.rn = phi i64 [ %i.rk, %.noexc44.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i, %.noexc45.i ] ; 3 uses
  %i.ro = icmp sgt i64 %i.rn, -1
  call void @llvm.assume(i1 %i.ro)
  %i.rp = load ptr, ptr %i.jq, align 8, !alias.scope !78040, !noalias !77995, !nonnull !69, !noundef !69
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rn
  store i8 58, ptr %i.rq, align 1, !noalias !78041
  %i.rr = add nuw i64 %i.rn, 1
  store i64 %i.rr, ptr %i.jk, align 8, !alias.scope !78040, !noalias !77995
  %i.rs = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77999 ; 2 uses

.noexc46.i:                                       ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cb, label %.loopexit62.i

bb.cb:                                            ; preds = %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !78042)
  call void @llvm.experimental.noalias.scope.decl(metadata !78043)
  call void @llvm.experimental.noalias.scope.decl(metadata !78044)
  call void @llvm.experimental.noalias.scope.decl(metadata !78045)
  %i.rt = load i64, ptr %i.jk, align 8, !alias.scope !78046, !noalias !78005, !noundef !69 ; 3 uses
  %i.ru = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78046, !noalias !78005, !noundef !69
  %i.rv = icmp eq i64 %i.ru, %i.rt
  br i1 %i.rv, label %bb.cc, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i", !prof !67

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rt, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78047

.noexc47.i:                                       ; preds = %bb.cc
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !78048, !noalias !78005
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc47.i, %bb.cb
  %i.rw = phi i64 [ %i.rt, %bb.cb ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc47.i ] ; 3 uses
  %i.rx = icmp sgt i64 %i.rw, -1
  call void @llvm.assume(i1 %i.rx)
  %i.ry = load ptr, ptr %i.jq, align 8, !alias.scope !78048, !noalias !78005, !nonnull !69, !noundef !69
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  store i8 125, ptr %i.rz, align 1, !noalias !78049
  %i.sa = add nuw i64 %i.rw, 1                    ; 4 uses
  store i64 %i.sa, ptr %i.jk, align 8, !alias.scope !78048, !noalias !78005
  %i.sb = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.sb, label %.thread169.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.sc = add i64 %.sroa.44.0.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.i.ph232) ]
  %i.sd = load i16, ptr %i.qh, align 2, !noalias !78009, !noundef !69
  %i.se = zext i16 %i.sd to i64
  %i.sf = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i.i, %i.se
  br i1 %i.sf, label %.peel.next.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader, !llvm.loop !77607

.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa237 = phi i64 [ %i.qa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel" ], [ %i.sc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ]
  %.lcssa236 = phi i64 [ %i.py, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel" ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader, %bb.cd
  %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i = phi ptr [ %i.sg, %bb.cd ], [ %.sroa.7.1.i.i.i.i.i.i.i.i.ph232, %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i = phi i64 [ %i.sh, %bb.cd ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader ] ; 2 uses
  %i.sg = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i, align 8, !noalias !78050, !noundef !69 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i63.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i63.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i
  %i.sh = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i, 1 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i, i64 536
  %i.sj = load i16, ptr %i.si, align 8, !noalias !78050 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 538
  %i.sl = load i16, ptr %i.sk, align 2, !noalias !78009, !noundef !69
  %i.sm = icmp ult i16 %i.sj, %i.sl
  br i1 %i.sm, label %bb.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.sn = zext i16 %i.sj to i64                   ; 2 uses
  %i.so = icmp eq i64 %i.sh, 0
  %i.sp = add nuw nsw i64 %i.sn, 1                ; 2 uses
  br i1 %i.so, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.cf

.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge:    ; preds = %.prol.loopexit297, %.new298, %bb.ce
  %.sroa.30.1.i.i.i.i.i.i.i.i.ph231.be = phi i64 [ %i.sp, %bb.ce ], [ 0, %.new298 ], [ 0, %.prol.loopexit297 ]
  %.sroa.7.1.i.i.i.i.i.i.i.i.ph232.be = phi ptr [ %i.sg, %bb.ce ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.lcssa.unr, %.prol.loopexit297 ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7, %.new298 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer

bb.cf:                                            ; preds = %bb.ce
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sg, i64 544
  %i.sr = icmp ult i16 %i.sj, 11
  call void @llvm.assume(i1 %i.sr), !noalias !77917
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sp ; 2 uses
  %xtraiter300 = and i64 %i.sh, 7                 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %.prol.loopexit297, label %.prol.preheader296

.prol.preheader296:                               ; preds = %bb.cf, %.prol.preheader296
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.prol = phi ptr [ %i.st, %.prol.preheader296 ], [ %i.ss, %bb.cf ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol, %.prol.preheader296 ], [ %i.sh, %bb.cf ]
  %prol.iter302 = phi i64 [ %prol.iter302.next, %.prol.preheader296 ], [ 0, %bb.cf ]
  %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.prol, align 8, !noalias !78051, !nonnull !69, !noundef !69 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %.prol.loopexit297, label %.prol.preheader296, !llvm.loop !77613

.prol.loopexit297:                                ; preds = %.prol.preheader296, %bb.cf
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cf ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol, %.prol.preheader296 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.unr = phi ptr [ %i.ss, %bb.cf ], [ %i.st, %.prol.preheader296 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.unr = phi i64 [ %i.sh, %bb.cf ], [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol, %.prol.preheader296 ]
  %i.su = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i, 7
  br i1 %i.su, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new298

.new298:                                          ; preds = %.prol.loopexit297, %.new298
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i = phi ptr [ %i.td, %.new298 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.unr, %.prol.loopexit297 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7, %.new298 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.unr, %.prol.loopexit297 ]
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.sv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.1 = load ptr, ptr %i.sv, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.sw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.2 = load ptr, ptr %i.sw, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.3 = load ptr, ptr %i.sx, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.4 = load ptr, ptr %i.sy, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.5 = load ptr, ptr %i.sz, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.6 = load ptr, ptr %i.ta, align 8, !noalias !78051, !nonnull !69, !noundef !69
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7 = load ptr, ptr %i.tb, align 8, !noalias !78051, !nonnull !69, !noundef !69 ; 2 uses
  %i.tc = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7, 0
  %i.td = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7, i64 544
  br i1 %i.tc, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new298, !llvm.loop !77614

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i70.i.i.i unwind label %bb.ch, !noalias !78052

.noexc.i.i.i.i.i.i.i70.i.i.i:                     ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !77917
  unreachable

.thread169.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"
  %i.tf = phi i64 [ %i.my, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i" ], [ %i.sa, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.py, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.tg = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !71, !alias.scope !78053, !noalias !78054, !noundef !69
  %i.th = icmp eq i64 %i.tg, %i.tf
  br i1 %i.th, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i", label %bb.ci, !prof !67

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i": ; preds = %.thread169.i.i.i.i.i.i.i.i, %bb.av
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.jt, %bb.av ], [ %i.tf, %.thread169.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc48.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78055

.noexc48.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i71.i.i.i = load i64, ptr %i.jk, align 8, !noalias !78055
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc48.i, %.thread169.i.i.i.i.i.i.i.i, %bb.av
  %.sink263.i.i.i.i.i.i.i.i = phi i64 [ %i.tf, %.thread169.i.i.i.i.i.i.i.i ], [ %i.jt, %bb.av ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i71.i.i.i, %.noexc48.i ] ; 3 uses
  %i.ti = icmp sgt i64 %.sink263.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ti)
  %i.tj = load ptr, ptr %i.jq, align 8, !noalias !78055, !nonnull !69, !noundef !69
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.sink263.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.tk, align 1, !noalias !78055
  %storemerge.i.i.i.i.i.i.i.i = add nuw i64 %.sink263.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.jk, align 8, !noalias !78055
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tm = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb74e49aa8a102c0aE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @706, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tl)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !77718 ; 2 uses

.noexc49.i:                                       ; preds = %bb.ci
  %.not32.i.i.i = icmp eq ptr %i.tm, null
  br i1 %.not32.i.i.i, label %bb.cj, label %.loopexit62.i

bb.cj:                                            ; preds = %.noexc49.i
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !78056)
  call void @llvm.experimental.noalias.scope.decl(metadata !78057)
  %i.to = load i8, ptr %i.c, align 8, !range !92, !alias.scope !78056, !noalias !77708, !noundef !69
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc02beaa1101f9627E.exit.i.invoke.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !78058)
  call void @llvm.experimental.noalias.scope.decl(metadata !78059)
  call void @llvm.experimental.noalias.scope.decl(metadata !78060)
  %i.tq = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !78061, !noalias !77708, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  %i.tr = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !range !78, !alias.scope !78061, !noalias !77708, !noundef !69
  %i.ts = icmp eq i8 %i.tr, 1
  %.val.i.i.i1.i.i = load ptr, ptr %i.tq, align 8, !noalias !78062 ; 6 uses
  br i1 %i.ts, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i1.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !78063)
  call void @llvm.experimental.noalias.scope.decl(metadata !78064)
  call void @llvm.experimental.noalias.scope.decl(metadata !78065)
  call void @llvm.experimental.noalias.scope.decl(metadata !78066)
  %i.tt = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 16 ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !78067, !noalias !78068, !noundef !69 ; 3 uses
  %i.tv = load i64, ptr %.val.i.i.i1.i.i, align 8, !range !71, !alias.scope !78067, !noalias !78068, !noundef !69
  %i.tw = icmp eq i64 %i.tv, %i.tu
  br i1 %i.tw, label %bb.cm, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i", !prof !67

bb.cm:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i1.i.i, i64 noundef %i.tu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !78069

.noexc50.i:                                       ; preds = %bb.cm
  %.pre.i.i.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.tt, align 8, !alias.scope !78070, !noalias !78068
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i": ; preds = %.noexc50.i, %bb.cl
  %i.tx = phi i64 [ %i.tu, %bb.cl ], [ %.pre.i.i.i.i.i.i.i.i.i4.i.i, %.noexc50.i ] ; 3 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty)
  %i.tz = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !alias.scope !78070, !noalias !78068, !nonnull !69, !noundef !69
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.tx
  store i8 44, ptr %i.ub, align 1, !noalias !78071
  %i.uc = add nuw i64 %i.tx, 1
  store i64 %i.uc, ptr %i.tt, align 8, !alias.scope !78070, !noalias !78068
  %.val9.pre.i.i.i.i.i = load ptr, ptr %i.tq, align 8, !noalias !78062
  br label %bb.cn

bb.cn:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i", %bb.ck
  %.val9.i.i.i.i.i = phi ptr [ %.val.i.i.i1.i.i, %bb.ck ], [ %.val9.pre.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i" ]
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !78061, !noalias !77708
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @424, i64 noundef range(i64 3, 27) 7)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51.i:                                       ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !78072)
  %.val.i5.i.i.i.i = load ptr, ptr %i.tq, align 8, !noalias !78073, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78074)
  call void @llvm.experimental.noalias.scope.decl(metadata !78075)
  call void @llvm.experimental.noalias.scope.decl(metadata !78076)
  call void @llvm.experimental.noalias.scope.decl(metadata !78077)
  %i.ud = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i, i64 16 ; 3 uses
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !78078, !noalias !78079, !noundef !69 ; 3 uses
  %i.uf = load i64, ptr %.val.i5.i.i.i.i, align 8, !range !71, !alias.scope !78078, !noalias !78079, !noundef !69
  %i.ug = icmp eq i64 %i.uf, %i.ue
end_hunk_2
begin_hunk_3_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8787eeaa52ae8c9bE":bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %bb.w, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149415)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !149416, !noalias !149413, !nonnull !69, !noundef !69
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx
  store i8 123, ptr %i.ee, align 1, !noalias !149417
  %i.ef = add nuw i64 %i.dx, 1
  store i64 %i.ef, ptr %i.dw, align 8, !alias.scope !149416, !noalias !149413
  br label %bb.w

bb.w:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.a, align 8, !noalias !149408
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149408
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149408
  %i.eg = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.df), !noalias !149418 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i11.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %bb.x, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !149408
  %i.eh = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149408
  %i.ei = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149408, !nonnull !69, !noundef !69
  %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !149419, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149420)
  %i.ej = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149420, !noalias !149421, !noundef !69
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !149420, !noalias !149421, !noundef !69 ; 4 uses
  %i.em = icmp sgt i64 %i.el, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = sub nsw i64 %i.ej, %i.el
  %i.eo = icmp ugt i64 %i.en, 1
  br i1 %i.eo, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.ep = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !149419 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149422)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !149423, !noalias !149421, !nonnull !69, !noundef !69
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el
  store i8 125, ptr %i.es, align 1, !noalias !149424
  %i.et = add nuw i64 %i.el, 1
  store i64 %i.et, ptr %i.ek, align 8, !alias.scope !149423, !noalias !149421
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149408
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.u
  %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149425, !noalias !149394, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149426)
  %i.eu = load i64, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149426, !noalias !149427, !noundef !69
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !149426, !noalias !149427, !noundef !69 ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = sub nsw i64 %i.eu, %i.ew
  %i.ez = icmp ugt i64 %i.ey, 4
  br i1 %i.ez, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.fa = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !149428 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i1.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149429)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !149430, !noalias !149427, !nonnull !69, !noundef !69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ew
  store i32 1819047278, ptr %i.fd, align 1, !noalias !149431
  %i.fe = add nuw i64 %i.ew, 4
  store i64 %i.fe, ptr %i.ev, align 8, !alias.scope !149430, !noalias !149427
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"
  %i.ff = icmp eq i64 %.sink.i.i.i.i.i.i.i.i, 1
  br i1 %i.ff, label %.thread178.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"
  %i.fg = add i64 %.sink.i.i.i.i.i.i.i.i, -2
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, i64 1066
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !149432, !noundef !69
  %i.fj = zext i16 %i.fi to i64
  %i.fk = icmp samesign ult i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, %i.fj
  br i1 %i.fk, label %.thread154.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i

.thread154.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i"
  %i.fl = add nuw nsw i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.prol.loopexit109, %.new110, %bb.ab, %.thread154.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i188.sink259.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %.thread154.i.i.i.i.i.i.i ], [ %i.fm, %bb.ab ], [ %i.fm, %.new110 ], [ %i.fm, %.prol.loopexit109 ]
  %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, %.thread154.i.i.i.i.i.i.i ], [ %i.ft, %bb.ab ], [ %i.ft, %.new110 ], [ %i.ft, %.prol.loopexit109 ]
  %.sroa.30.1.i.i.i.i.i.i.i.ph = phi i64 [ %i.fl, %.thread154.i.i.i.i.i.i.i ], [ %i.fv, %bb.ab ], [ 0, %.new110 ], [ 0, %.prol.loopexit109 ]
  %.sroa.7.1.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %.thread154.i.i.i.i.i.i.i ], [ %i.fm, %bb.ab ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit109 ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7, %.new110 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i31.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i", %bb.aa
  %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i = phi ptr [ %i.fm, %bb.aa ], [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i = phi i64 [ %i.fn, %bb.aa ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fm = load ptr, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i, align 8, !noalias !149433, !noundef !69 ; 8 uses
  %.not.i.i.i.i.i34.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i34.i.i.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i
  %i.fn = add i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i, i64 1064
  %i.fp = load i16, ptr %i.fo, align 8, !noalias !149433 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1066
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !149432, !noundef !69
  %i.fs = icmp ult i16 %i.fp, %i.fr
  br i1 %i.fs, label %bb.ab, label %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ft = zext i16 %i.fp to i64                   ; 4 uses
  %i.fu = icmp eq i64 %i.fn, 0
  %i.fv = add nuw nsw i64 %i.ft, 1                ; 2 uses
  br i1 %i.fu, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 1072
  %i.fx = icmp ult i16 %i.fp, 11
  tail call void @llvm.assume(i1 %i.fx), !noalias !149384
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %xtraiter112 = and i64 %i.fn, 7                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit109, label %.prol.preheader108

.prol.preheader108:                               ; preds = %bb.ac, %.prol.preheader108
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.prol = phi ptr [ %i.fz, %.prol.preheader108 ], [ %i.fy, %bb.ac ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol, %.prol.preheader108 ], [ %i.fn, %bb.ac ]
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.prol.preheader108 ], [ 0, %bb.ac ]
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.prol, align 8, !noalias !149434, !nonnull !69, !noundef !69 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.prol.loopexit109, label %.prol.preheader108, !llvm.loop !149211

.prol.loopexit109:                                ; preds = %.prol.preheader108, %bb.ac
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ac ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol, %.prol.preheader108 ]
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.unr = phi ptr [ %i.fy, %bb.ac ], [ %i.fz, %.prol.preheader108 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.unr = phi i64 [ %i.fn, %bb.ac ], [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol, %.prol.preheader108 ]
  %i.ga = icmp ult i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i, 7
  br i1 %i.ga, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new110

.new110:                                          ; preds = %.prol.loopexit109, %.new110
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.new110 ], [ %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.unr, %.prol.loopexit109 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7, %.new110 ], [ %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.unr, %.prol.loopexit109 ]
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.1 = load ptr, ptr %i.gb, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.2 = load ptr, ptr %i.gc, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.3 = load ptr, ptr %i.gd, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ge, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.5 = load ptr, ptr %i.gf, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.6 = load ptr, ptr %i.gg, align 8, !noalias !149434, !nonnull !69, !noundef !69
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7 = load ptr, ptr %i.gh, align 8, !noalias !149434, !nonnull !69, !noundef !69 ; 2 uses
  %i.gi = icmp eq i64 %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.gi, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new110

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i48.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !149435

.noexc.i.i48.i.i.i.i.i.i.i:                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !149384
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.outer:               ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i188.sink259.i.i.i.i.i.i.i.ph85 = phi ptr [ %.sroa.0.0.ph.i.i.i188.sink259.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mf, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph86 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mm, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.44.0.i.i.i.i.i.i.i.ph = phi i64 [ %i.fg, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa91, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.30.1.i.i.i.i.i.i.i.ph87 = phi i64 [ %.sroa.30.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.30.1.i.i.i.i.i.i.i.ph87.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i.i.i.ph88 = phi ptr [ %.sroa.7.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.i.i.i.i.i.ph88.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i188.sink259.i.i.i.i.i.i.i.ph85, i64 8
  %i.gm = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph86, 11
  tail call void @llvm.assume(i1 %i.gm), !noalias !149384
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph86 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i188.sink259.i.i.i.i.i.i.i.ph85, i64 272
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.go, i64 %.sroa.6.sroa.4.0.ph.i.i.i187.sink258.i.i.i.i.i.i.i.ph86 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gn, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.gq, align 8, !noalias !149388 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gn, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gr, align 8, !noalias !149388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149437)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149438, !nonnull !69, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149439)
  %i.gs = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !71, !alias.scope !149439, !noalias !149440, !noundef !69
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !149439, !noalias !149440, !noundef !69 ; 4 uses
  %i.gv = icmp sgt i64 %i.gu, -1
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = sub nsw i64 %i.gs, %i.gu
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %bb.af, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !74

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer
  %i.gy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !149441 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

bb.af:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149442)
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !149443, !noalias !149440, !nonnull !69, !noundef !69
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gu
  store i8 44, ptr %i.hb, align 1, !noalias !149444
  %i.hc = add nuw i64 %i.gu, 1
  store i64 %i.hc, ptr %i.gt, align 8, !alias.scope !149443, !noalias !149440
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.af, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149438, !nonnull !69, !align !70, !noundef !69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.peel) ]
  %i.hd = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.peel), !noalias !149441 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ag, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !74

bb.ag:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149445, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149446)
  %i.he = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !71, !alias.scope !149446, !noalias !149447, !noundef !69
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !149446, !noalias !149447, !noundef !69 ; 4 uses
  %i.hh = icmp sgt i64 %i.hg, -1
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = sub nsw i64 %i.he, %i.hg
  %i.hj = icmp ugt i64 %i.hi, 1
  br i1 %i.hj, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !74

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ag
  %i.hk = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !149448 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hk, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ah, label %.loopexit20.i.i.i.i.i.i.i.i.i, !prof !76

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149449)
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !149450, !noalias !149447, !nonnull !69, !noundef !69
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hg
  store i8 58, ptr %i.hn, align 1, !noalias !149451
  %i.ho = add nuw i64 %i.hg, 1
  store i64 %i.ho, ptr %i.hf, align 8, !alias.scope !149450, !noalias !149447
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149454)
  %i.hp = load i64, ptr %i.gp, align 8, !range !90, !alias.scope !149455, !noalias !149456, !noundef !69
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq i64 %i.hp, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149461)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !149462, !noalias !149445, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149463)
  %i.hq = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !71, !alias.scope !149463, !noalias !149464, !noundef !69
  %i.hr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !149463, !noalias !149464, !noundef !69 ; 4 uses
  %i.ht = icmp sgt i64 %i.hs, -1
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = sub nsw i64 %i.hq, %i.hs
  %i.hv = icmp ugt i64 %i.hu, 1
  br i1 %i.hv, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !74

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ai
  %i.hw = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !149465 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.aj, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149466)
  %i.hx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !149467, !noalias !149464, !nonnull !69, !noundef !69
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hs
  store i8 123, ptr %i.hz, align 1, !noalias !149468
  %i.ia = add nuw i64 %i.hs, 1
  store i64 %i.ia, ptr %i.hr, align 8, !alias.scope !149467, !noalias !149464
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  store i8 0, ptr %i.a, align 8, !noalias !149459
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149459
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149459
  %i.ib = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gp), !noalias !149469 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ak, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.aj
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.a, align 8, !noalias !149459
  %i.ic = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149459
  %i.id = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149459, !nonnull !69, !noundef !69
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !noalias !149470, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149471)
  %i.ie = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !71, !alias.scope !149471, !noalias !149472, !noundef !69
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !149471, !noalias !149472, !noundef !69 ; 4 uses
  %i.ih = icmp sgt i64 %i.ig, -1
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = sub nsw i64 %i.ie, %i.ig
  %i.ij = icmp ugt i64 %i.ii, 1
  br i1 %i.ij, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !74

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.al
  %i.ik = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !149470 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.ik, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149473)
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !149474, !noalias !149472, !nonnull !69, !noundef !69
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ig
  store i8 125, ptr %i.in, align 1, !noalias !149475
  %i.io = add nuw i64 %i.ig, 1
  store i64 %i.io, ptr %i.if, align 8, !alias.scope !149474, !noalias !149472
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149459
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"

bb.am:                                            ; preds = %bb.ah
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !149476, !noalias !149445, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149477)
  %i.ip = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !71, !alias.scope !149477, !noalias !149478, !noundef !69
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !149477, !noalias !149478, !noundef !69 ; 4 uses
  %i.is = icmp sgt i64 %i.ir, -1
  tail call void @llvm.assume(i1 %i.is)
  %i.it = sub nsw i64 %i.ip, %i.ir
  %i.iu = icmp ugt i64 %i.it, 4
  br i1 %i.iu, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !74

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.am
  %i.iv = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !149479 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.iv, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149480)
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !149481, !noalias !149478, !nonnull !69, !noundef !69
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ir
  store i32 1819047278, ptr %i.iy, align 1, !noalias !149482
  %i.iz = add nuw i64 %i.ir, 4
  store i64 %i.iz, ptr %i.iq, align 8, !alias.scope !149481, !noalias !149478
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.ja = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i.ph, 0
  br i1 %i.ja, label %.thread178.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"
  %i.jb = add i64 %.sroa.44.0.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.ph88) ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i.i.i.i.ph88, i64 1066
  %i.jd = load i16, ptr %i.jc, align 2, !noalias !149483, !noundef !69
  %i.je = zext i16 %i.jd to i64
  %i.jf = icmp ult i64 %.sroa.30.1.i.i.i.i.i.i.i.ph87, %i.je
  br i1 %i.jf, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

end_hunk_3
begin_hunk_4_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8787eeaa52ae8c9bE":bb.a
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = sub nsw i64 %i.jo, %i.jq
  %i.jt = icmp ugt i64 %i.js, 1
  br i1 %i.jt, label %bb.an, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !74

bb.an:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149489)
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !149490, !noalias !149488, !nonnull !69, !noundef !69
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jq
  store i8 44, ptr %i.jw, align 1, !noalias !149491
  %i.jx = add nuw i64 %i.jq, 1
  store i64 %i.jx, ptr %i.jp, align 8, !alias.scope !149490, !noalias !149488
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i
  %i.jy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !149492 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149486, !nonnull !69, !align !70, !noundef !69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  %i.jz = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i), !noalias !149492 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !74

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.split.i.i.i.i.i.i.i.i.i ], [ %i.jy, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hd, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ], [ %i.gy, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.ka = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !149492
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.ao:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149493, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149494)
  %i.kb = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149494, !noalias !149495, !noundef !69
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !149494, !noalias !149495, !noundef !69 ; 4 uses
  %i.ke = icmp sgt i64 %i.kd, -1
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = sub nsw i64 %i.kb, %i.kd
  %i.kg = icmp ugt i64 %i.kf, 1
  br i1 %i.kg, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149496)
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !149497, !noalias !149495, !nonnull !69, !noundef !69
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kd
  store i8 58, ptr %i.kj, align 1, !noalias !149498
  %i.kk = add nuw i64 %i.kd, 1
  store i64 %i.kk, ptr %i.kc, align 8, !alias.scope !149497, !noalias !149495
  br label %bb.ap

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.kl = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !149499 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %.loopexit20.i.i.i.i.i.i.i.i.i, !prof !76

.loopexit20.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.kl, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hk, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.km = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.lcssa.i.i.i.i.i.i.i.i.i), !noalias !149499
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.ap:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149502)
  %i.kn = load i64, ptr %i.jl, align 8, !range !90, !alias.scope !149503, !noalias !149504, !noundef !69
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kn, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149509)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149510, !noalias !149493, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149511)
  %i.ko = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149511, !noalias !149512, !noundef !69
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !149511, !noalias !149512, !noundef !69 ; 4 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  tail call void @llvm.assume(i1 %i.kr)
  %i.ks = sub nsw i64 %i.ko, %i.kq
  %i.kt = icmp ugt i64 %i.ks, 1
  br i1 %i.kt, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149513)
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !149514, !noalias !149512, !nonnull !69, !noundef !69
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kq
  store i8 123, ptr %i.kw, align 1, !noalias !149515
  %i.kx = add nuw i64 %i.kq, 1
  store i64 %i.kx, ptr %i.kp, align 8, !alias.scope !149514, !noalias !149512
  br label %bb.ar

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ky = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !149516 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

bb.ar:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.a, align 8, !noalias !149507
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149507
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149507
  %i.kz = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jl), !noalias !149517 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %bb.ar
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !149507
  %i.la = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !149507
  %i.lb = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.la, i1 true, i1 %i.lb
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149507, !nonnull !69, !noundef !69
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149518, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149519)
  %i.lc = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149519, !noalias !149520, !noundef !69
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !149519, !noalias !149520, !noundef !69 ; 4 uses
  %i.lf = icmp sgt i64 %i.le, -1
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = sub nsw i64 %i.lc, %i.le
  %i.lh = icmp ugt i64 %i.lg, 1
  br i1 %i.lh, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149521)
  %i.li = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !alias.scope !149522, !noalias !149520, !nonnull !69, !noundef !69
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.le
  store i8 125, ptr %i.lk, align 1, !noalias !149523
  %i.ll = add nuw i64 %i.le, 1
  store i64 %i.ll, ptr %i.ld, align 8, !alias.scope !149522, !noalias !149520
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.lm = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !149518 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

bb.au:                                            ; preds = %bb.ap
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149524, !noalias !149493, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149525)
  %i.ln = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149525, !noalias !149526, !noundef !69
  %i.lo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !149525, !noalias !149526, !noundef !69 ; 4 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = sub nsw i64 %i.ln, %i.lp
  %i.ls = icmp ugt i64 %i.lr, 4
  br i1 %i.ls, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149527)
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !149528, !noalias !149526, !nonnull !69, !noundef !69
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lp
  store i32 1819047278, ptr %i.lv, align 1, !noalias !149529
  %i.lw = add nuw i64 %i.lp, 4
  store i64 %i.lw, ptr %i.lo, align 8, !alias.scope !149528, !noalias !149526
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.lx = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !149530 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !76

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.lcssa18.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fa, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.lx, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.ly = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.lcssa18.i.i.i.i.i.i.i.i.i), !noalias !149530
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149507
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.sink.i10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.ep, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.lm, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ky, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ik, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ], [ %i.hw, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.lz = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i10.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !149531
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ar, %bb.aj, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lz, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.eg, %bb.w ], [ %i.kz, %bb.ar ], [ %i.ib, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149507
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ma = icmp eq i64 %.sroa.44.0.i.i.i.i.i.i.i, 0
  br i1 %i.ma, label %.thread178.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"
  %i.mb = add i64 %.sroa.44.0.i.i.i.i.i.i.i, -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i.i.i.ph88) ]
  %i.mc = load i16, ptr %i.ji, align 2, !noalias !149483, !noundef !69
  %i.md = zext i16 %i.mc to i64
  %i.me = icmp samesign ult i64 %.sroa.30.1.i.i.i.i.i.i.i, %i.md
  br i1 %i.me, label %.peel.next.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !149314

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel"
  %.lcssa91 = phi i64 [ %i.jb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel" ], [ %i.mb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.av
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.av ], [ %.sroa.7.1.i.i.i.i.i.i.i.ph88, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mg, %bb.av ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mf = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149532, !noundef !69 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mg = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.mi = load i16, ptr %i.mh, align 8, !noalias !149532 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 1066
  %i.mk = load i16, ptr %i.mj, align 2, !noalias !149483, !noundef !69
  %i.ml = icmp ult i16 %i.mi, %i.mk
  br i1 %i.ml, label %bb.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.mm = zext i16 %i.mi to i64                   ; 2 uses
  %i.mn = icmp eq i64 %i.mg, 0
  %i.mo = add nuw nsw i64 %i.mm, 1                ; 2 uses
  br i1 %i.mn, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.ax

.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge:      ; preds = %.prol.loopexit128, %.new129, %bb.aw
  %.sroa.30.1.i.i.i.i.i.i.i.ph87.be = phi i64 [ %i.mo, %bb.aw ], [ 0, %.new129 ], [ 0, %.prol.loopexit128 ]
  %.sroa.7.1.i.i.i.i.i.i.i.ph88.be = phi ptr [ %i.mf, %bb.aw ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit128 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, %.new129 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer

bb.ax:                                            ; preds = %bb.aw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1072
  %i.mq = icmp ult i16 %i.mi, 11
  tail call void @llvm.assume(i1 %i.mq), !noalias !149384
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %xtraiter131 = and i64 %i.mg, 7                 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.prol.loopexit128, label %.prol.preheader127

.prol.preheader127:                               ; preds = %bb.ax, %.prol.preheader127
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ms, %.prol.preheader127 ], [ %i.mr, %bb.ax ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ], [ %i.mg, %bb.ax ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.prol.preheader127 ], [ 0, %bb.ax ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !149533, !nonnull !69, !noundef !69 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.prol.loopexit128, label %.prol.preheader127, !llvm.loop !149320

.prol.loopexit128:                                ; preds = %.prol.preheader127, %bb.ax
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ax ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mr, %bb.ax ], [ %i.ms, %.prol.preheader127 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.mg, %bb.ax ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ]
  %i.mt = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.mt, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new129

.new129:                                          ; preds = %.prol.loopexit128, %.new129
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nc, %.new129 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit128 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, %.new129 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit128 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.mu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mu, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mv, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.mw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mw, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.mx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mx, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.my, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mz, align 8, !noalias !149533, !nonnull !69, !noundef !69
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.na, align 8, !noalias !149533, !nonnull !69, !noundef !69 ; 2 uses
  %i.nb = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.nb, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new129, !llvm.loop !149321

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !149534

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !149384
  unreachable

.thread178.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"
  %.val.i12.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149391, !noalias !149535, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149536)
  %i.ne = load i64, ptr %.val.i12.i.i.i.i.i.i.i, align 8, !range !71, !alias.scope !149536, !noalias !149537, !noundef !69
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !149536, !noalias !149537, !noundef !69 ; 4 uses
  %i.nh = icmp sgt i64 %i.ng, -1
  tail call void @llvm.assume(i1 %i.nh)
  %i.ni = sub nsw i64 %i.ne, %i.ng
  %i.nj = icmp ugt i64 %i.ni, 1
  br i1 %i.nj, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i: ; preds = %.thread178.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149538)
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i.i, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !149539, !noalias !149537, !nonnull !69, !noundef !69
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ng
  store i8 125, ptr %i.nm, align 1, !noalias !149540
  %i.nn = add nuw i64 %i.ng, 1
  store i64 %i.nn, ptr %i.nf, align 8, !alias.scope !149539, !noalias !149537
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i: ; preds = %.thread178.i.i.i.i.i.i.i
  %i.no = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i12.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !149541 ; 2 uses
  %.not.i14.i.i.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i14.i.i.i.i.i.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit, label %bb.ba, !prof !76

bb.ba:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i
  %i.np = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.no), !noalias !149541
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.bb:                                            ; preds = %bb.g
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !149356, !noalias !149349, !nonnull !69, !align !70, !noundef !69 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149542)
  %i.nq = load i64, ptr %.val.i.i.i, align 8, !range !71, !alias.scope !149542, !noalias !149543, !noundef !69
  %i.nr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !alias.scope !149542, !noalias !149543, !noundef !69 ; 4 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  tail call void @llvm.assume(i1 %i.nt)
  %i.nu = sub nsw i64 %i.nq, %i.ns
  %i.nv = icmp ugt i64 %i.nu, 4
  br i1 %i.nv, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i, !prof !74

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i: ; preds = %bb.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149544)
  %i.nw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !149545, !noalias !149543, !nonnull !69, !noundef !69
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ns
  store i32 1819047278, ptr %i.ny, align 1, !noalias !149546
  %i.nz = add nuw i64 %i.ns, 4
  store i64 %i.nz, ptr %i.nr, align 8, !alias.scope !149545, !noalias !149543
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.oa = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !149547 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i8.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit, label %bb.bc, !prof !76

bb.bc:                                            ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i
  %i.ob = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.oa), !noalias !149547
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit: ; preds = %bb.bc, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i, %bb.ba, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit20.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.l, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i, %bb.i, %bb.f, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i", %bb.bd
  %.sroa.0.0 = phi ptr [ %i.oc, %bb.bd ], [ %i.u, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i" ], [ %i.ag, %bb.f ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i ], [ %i.ob, %bb.bc ], [ %i.az, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ly, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.km, %.loopexit20.i.i.i.i.i.i.i.i.i ], [ %i.ka, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.np, %bb.ba ], [ %i.bl, %bb.l ]
  ret ptr %.sroa.0.0

bb.bd:                                            ; preds = %bb.a
  %i.oc = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9111656dc00d6c48E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 19, 21) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !149626 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !92, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149629)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !149630, !nonnull !69, !align !70, !noundef !69 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !78, !alias.scope !149630, !noundef !69
  %i.h = icmp eq i8 %i.g, 1
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !149631 ; 6 uses
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149635)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !149636, !noalias !149637, !noundef !69 ; 3 uses
  %i.k = load i64, ptr %.val.i.i, align 8, !range !71, !alias.scope !149636, !noalias !149637, !noundef !69
  %i.l = icmp eq i64 %i.k, %i.j
end_hunk_4
