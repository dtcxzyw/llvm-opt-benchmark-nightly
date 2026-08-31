Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4d28b1084f4e0dfE:bb.a
  br i1 %i.bb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15606)
  %i.bc = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15606, !noalias !15609, !noundef !13
  %i.bd = load i64, ptr %i.aq, align 8, !alias.scope !15606, !noalias !15609, !noundef !13 ; 4 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = sub nsw i64 %i.bc, %i.bd
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15613)
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !15616, !noalias !15617, !nonnull !13, !noundef !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd
  store i8 125, ptr %i.bj, align 1, !noalias !15619
  %i.bk = add nuw i64 %i.bd, 1
  store i64 %i.bk, ptr %i.aq, align 8, !alias.scope !15616, !noalias !15617
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bl = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !15605 ; 2 uses
  %.not16.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not16.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit", label %bb.m, !prof !341

bb.m:                                             ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i
  %i.bm = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.bl), !noalias !15605
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

bb.n:                                             ; preds = %bb.k
  br i1 %.not.i.not.i.i.i.i.i.i, label %.critedge.i20.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = icmp eq i64 %i.am, 0
  br i1 %i.bn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i.preheader

.lr.ph.i.i51.i.i.i.i.i.i.preheader:               ; preds = %bb.o
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i52.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i54.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i53.i.i.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i51.i.i.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.i.i.i.i.i.i.prol, i64 16912
  %i.bp = add i64 %.sroa.011.014.i.i53.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i54.i.i.i.i.i.i.prol = load ptr, ptr %i.bo, align 8, !noalias !15620, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.i.i.prol, !llvm.loop !15629

.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i54.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i54.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i52.i.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i54.i.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i53.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i51.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i51.i.i.i.i.i.i.prol ]
  %i.bq = icmp ult i64 %i.am, 8
  br i1 %i.bq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i

.lr.ph.i.i51.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i
  %.sroa.012.015.i.i52.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i54.i.i.i.i.i.i.7, %.lr.ph.i.i51.i.i.i.i.i.i ], [ %.sroa.012.015.i.i52.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i53.i.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i51.i.i.i.i.i.i ], [ %.sroa.011.014.i.i53.i.i.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i52.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.1, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.2, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.3, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.4, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.5, i64 16912
  %.sroa.012.0.i.i54.i.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !15620, !nonnull !13, !noundef !13
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i54.i.i.i.i.i.i.6, i64 16912
  %i.bz = add i64 %.sroa.011.014.i.i53.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i54.i.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !15620, !nonnull !13, !noundef !13 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.i, %bb.o
  %.sroa.012.0.lcssa.i.i56.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.o ], [ %.sroa.012.0.i.i54.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i51.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i54.i.i.i.i.i.i.7, %.lr.ph.i.i51.i.i.i.i.i.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i56.i.i.i.i.i.i, i64 16906
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !15630, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i32.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i32.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i", %bb.p
  %.sroa.0.038.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.p ], [ %.sroa.012.0.lcssa.i.i56.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.p ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.0.038.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !15639, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i35.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i35.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i32.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.5.037.i.i.i.i34.i.i.i.i.i.i, 1 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i33.i.i.i.i.i.i, i64 16904
  %i.cg = load i16, ptr %i.cf, align 8, !noalias !15639 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16906
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !15630, !noundef !13
  %i.cj = icmp ult i16 %i.cg, %i.ci
  br i1 %i.cj, label %bb.q, label %.lr.ph.i.i.i.i32.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ck = zext i16 %i.cg to i64                   ; 4 uses
  %i.cl = icmp eq i64 %i.ce, 0
  %i.cm = add nuw nsw i64 %i.ck, 1                ; 2 uses
  br i1 %i.cl, label %.lr.ph.split.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 16912
  %i.co = icmp ult i16 %i.cg, 11
  tail call void @llvm.assume(i1 %i.co), !noalias !15642
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %xtraiter28 = and i64 %i.ce, 7                  ; 2 uses
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.r, %.prol.preheader
  %.pn30.in.i.i.i.i40.i.i.i.i.i.i.prol = phi ptr [ %i.cq, %.prol.preheader ], [ %i.cp, %bb.r ]
  %.pn28.in.i.i.i.i41.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i42.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.ce, %bb.r ]
  %prol.iter30 = phi i64 [ %prol.iter30.next, %.prol.preheader ], [ 0, %bb.r ]
  %.pn28.i.i.i.i42.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i41.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i43.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i40.i.i.i.i.i.i.prol, align 8, !noalias !15643, !nonnull !13, !noundef !13 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter30.next = add i64 %prol.iter30, 1     ; 2 uses
  %prol.iter30.cmp.not = icmp eq i64 %prol.iter30.next, %xtraiter28
  br i1 %prol.iter30.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !15647

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.r
  %.pn30.i.i.i.i43.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.r ], [ %.pn30.i.i.i.i43.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i40.i.i.i.i.i.i.unr = phi ptr [ %i.cp, %bb.r ], [ %i.cq, %.prol.preheader ]
  %.pn28.in.i.i.i.i41.i.i.i.i.i.i.unr = phi i64 [ %i.ce, %bb.r ], [ %.pn28.i.i.i.i42.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cr = icmp ult i64 %.sroa.5.037.i.i.i.i34.i.i.i.i.i.i, 7
  br i1 %i.cr, label %.lr.ph.split.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i40.i.i.i.i.i.i = phi ptr [ %i.da, %.new ], [ %.pn30.in.i.i.i.i40.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i41.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i42.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i41.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i43.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i40.i.i.i.i.i.i, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.1 = load ptr, ptr %i.cs, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.2 = load ptr, ptr %i.ct, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.3 = load ptr, ptr %i.cu, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.4 = load ptr, ptr %i.cv, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.5 = load ptr, ptr %i.cw, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i43.i.i.i.i.i.i.6 = load ptr, ptr %i.cx, align 8, !noalias !15643, !nonnull !13, !noundef !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i42.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i41.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i43.i.i.i.i.i.i.7 = load ptr, ptr %i.cy, align 8, !noalias !15643, !nonnull !13, !noundef !13 ; 2 uses
  %i.cz = icmp eq i64 %.pn28.i.i.i.i42.i.i.i.i.i.i.7, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i43.i.i.i.i.i.i.7, i64 16912
  br i1 %i.cz, label %.lr.ph.split.i.i.i.i.i.i.i.i, label %.new

bb.s:                                             ; preds = %.lr.ph.i.i.i.i32.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i49.i.i.i.i.i.i unwind label %bb.t, !noalias !15648

.noexc.i.i49.i.i.i.i.i.i:                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !15642
  unreachable

.critedge.i20.i.i.i.i.i.i:                        ; preds = %bb.n
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !15649
  unreachable

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.prol.loopexit, %.new, %bb.q, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i39103.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.q ], [ %.sroa.012.0.lcssa.i.i56.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ], [ %i.cd, %.new ], [ %i.cd, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i37102.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.q ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ], [ %i.ck, %.new ], [ %i.ck, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i45.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.q ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i46.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.q ], [ %.sroa.012.0.lcssa.i.i56.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i26.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i43.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i43.i.i.i.i.i.i.7, %.new ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39103.i.i.i.i.i.i, i64 8
  %i.dd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i37102.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dd), !noalias !15642
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.sroa.6.sroa.4.0.ph.i.i.i37102.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i39103.i.i.i.i.i.i, i64 272
  %i.dg = getelementptr inbounds nuw [1512 x i8], ptr %i.df, i64 %.sroa.6.sroa.4.0.ph.i.i.i37102.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i", %.lr.ph.split.i.i.i.i.i.i.i.i
  %.sroa.35.0.in.i.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %.sroa.35.0.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ]
  %.sroa.24.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i45.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.8.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i46.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.dh = phi i1 [ true, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ false, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ]
  %i.di = phi ptr [ %i.de, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %i.ot, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.pn135.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.split.i.i.i.i.i.i.i.i ], [ %i.ov, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i" ] ; 23 uses
  %.sroa.35.0.i.i.i.i.i.i = add i64 %.sroa.35.0.in.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn135.i.i.i.i.i.i) ]
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !15650 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.di, i64 16
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !15650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15656)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15584, !noalias !15659 ; 5 uses
  br i1 %i.dh, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15665)
  %i.dl = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15665, !noalias !15668, !noundef !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !15665, !noalias !15668, !noundef !13 ; 4 uses
  %i.do = icmp sgt i64 %i.dn, -1
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = sub nsw i64 %i.dl, %i.dn
  %i.dq = icmp ugt i64 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15672)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !15675, !noalias !15676, !nonnull !13, !noundef !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dn
  store i8 44, ptr %i.dt, align 1, !noalias !15678
  %i.du = add nuw i64 %i.dn, 1
  store i64 %i.du, ptr %i.dm, align 8, !alias.scope !15675, !noalias !15676
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.dv = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !15659 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w, %bb.u
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15584, !noalias !15659, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  %i.dw = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i), !noalias !15659 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dw, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dx = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !15659
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

bb.x:                                             ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15584, !noalias !15679, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15680)
  %i.dy = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15680, !noalias !15683, !noundef !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !15680, !noalias !15683, !noundef !13 ; 4 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = sub nsw i64 %i.dy, %i.ea
  %i.ed = icmp ugt i64 %i.ec, 1
  br i1 %i.ed, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15687)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !15690, !noalias !15691, !nonnull !13, !noundef !13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ea
  store i8 58, ptr %i.eg, align 1, !noalias !15693
  %i.eh = add nuw i64 %i.ea, 1
  store i64 %i.eh, ptr %i.dz, align 8, !alias.scope !15690, !noalias !15691
  br label %bb.z

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.ei = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !15679 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y, !prof !341

bb.y:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ej = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ei), !noalias !15679
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

bb.z:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15705)
  %i.ek = load i64, ptr %.pn135.i.i.i.i.i.i, align 8, !range !7631, !alias.scope !15707, !noalias !15708, !noundef !13 ; 3 uses
  %i.el = icmp samesign ugt i64 %i.ek, 2
  br i1 %i.el, label %bb.cc, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15720
  %i.em = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1510
  %i.en = load i8, ptr %i.em, align 2, !range !6580, !alias.scope !15721, !noalias !15722, !noundef !13 ; 2 uses
  %i.eo = icmp ne i8 %i.en, 7                     ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.eo to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1232 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !range !631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.er = icmp ne i64 %i.eq, -9223372036854775807 ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.er to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1256 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !range !631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.eu = icmp ne i64 %i.et, -9223372036854775807 ; 2 uses
  %.sroa.09.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.eu to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1509
  %i.ew = load i8, ptr %i.ev, align 1, !range !5618, !alias.scope !15721, !noalias !15722, !noundef !13 ; 2 uses
  %i.ex = icmp ne i8 %i.ew, 4                     ; 2 uses
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.ex to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1280 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !range !631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fa = icmp ne i64 %i.ez, -9223372036854775807 ; 2 uses
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fa to i64
  %i.fb = icmp ne i64 %i.ek, 2                    ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fb to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1508
  %i.fd = load i8, ptr %i.fc, align 4, !range !4130, !alias.scope !15721, !noalias !15722, !noundef !13 ; 2 uses
  %i.fe = icmp ne i8 %i.fd, 3                     ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fe to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1304 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !range !631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fh = icmp ne i64 %i.fg, -9223372036854775807 ; 2 uses
  %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fh to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !1515, !alias.scope !15721, !noalias !15722, !noundef !13 ; 2 uses
  %i.fk = icmp ne i64 %i.fj, 2                    ; 2 uses
  %.sroa.015.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fk to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1328 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !range !631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fn = icmp ne i64 %i.fm, -9223372036854775807 ; 2 uses
  %.sroa.016.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fn to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !range !1515, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fq = icmp ne i64 %i.fp, 2                    ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fq to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !range !1515, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.ft = icmp ne i64 %i.fs, 2                    ; 2 uses
  %.sroa.018.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.ft to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1352 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !range !7656, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fw = icmp ne i64 %i.fv, -9223372036854775802 ; 2 uses
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fw to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1424 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !range !7656, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.fz = icmp ne i64 %i.fy, -9223372036854775802 ; 2 uses
  %.sroa.020.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.fz to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !range !1515, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.gc = icmp ne i64 %i.gb, 2                    ; 2 uses
  %.sroa.021.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.gc to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !range !7631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.gf = icmp ne i64 %i.ge, 4                    ; 2 uses
  %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.gf to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 680 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !range !7631, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.gi = icmp ne i64 %i.gh, 4                    ; 2 uses
  %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.gi to i64
  %i.gj = add nuw nsw i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = add nuw nsw i64 %i.gj, %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = add nuw nsw i64 %i.gk, %.sroa.09.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gm = add nuw nsw i64 %i.gl, %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = add nuw nsw i64 %i.gm, %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = add nuw nsw i64 %i.gn, %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = add nuw nsw i64 %i.go, %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = add nuw nsw i64 %i.gp, %.sroa.015.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = add nuw nsw i64 %i.gq, %.sroa.016.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = add nuw nsw i64 %i.gr, %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = add nuw nsw i64 %i.gs, %.sroa.018.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = add nuw nsw i64 %i.gt, %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = add nuw nsw i64 %i.gu, %.sroa.020.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = add nuw nsw i64 %i.gv, %.sroa.021.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = add nuw nsw i64 %i.gw, %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = add nuw nsw i64 %i.gx, %.sroa.023.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn135.i.i.i.i.i.i, i64 1496 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !range !15723, !alias.scope !15721, !noalias !15722, !noundef !13
  %i.hb = icmp ne i32 %i.ha, 2                    ; 2 uses
  %.sroa.024.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %i.hb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15727)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15730, !noalias !15731, !nonnull !13, !align !25, !noundef !13 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15735)
  %i.hc = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15735, !noalias !15738, !noundef !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !15735, !noalias !15738, !noundef !13 ; 4 uses
  %i.hf = icmp sgt i64 %i.he, -1
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = sub nsw i64 %i.hc, %i.he
  %i.hh = icmp ugt i64 %i.hg, 1
  br i1 %i.hh, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_ZN10serde_core3ser12SerializeMap15serialize_entry17ha4d28b1084f4e0dfE:bb.a
  store ptr %i.jn, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !15868
  %i.ld = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h24949475f6eddb8eE"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1179, i64 noundef 4, float %.val.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !15895 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i"

bb.bx:                                            ; preds = %bb.bw
  %i.le = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h24949475f6eddb8eE"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1180, i64 noundef 5, float %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !15895 ; 2 uses
  %.not21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.by, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i"

bb.by:                                            ; preds = %bb.bx
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !15868
  %i.lf = trunc nuw i8 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.44.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !15868
  %i.lg = icmp eq i8 %.sroa.44.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.lf, i1 true, i1 %i.lg
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !15868, !nonnull !13, !noundef !13
  %.val.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.56.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !15896, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15901), !noalias !15805
  %i.lh = load i64, ptr %.val.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15901, !noalias !15904, !noundef !13
  %i.li = getelementptr inbounds nuw i8, ptr %.val.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !15901, !noalias !15904, !noundef !13 ; 4 uses
  %i.lk = icmp sgt i64 %i.lj, -1
  tail call void @llvm.assume(i1 %i.lk), !noalias !15805
  %i.ll = sub nsw i64 %i.lh, %i.lj
  %i.lm = icmp ugt i64 %i.ll, 1
  br i1 %i.lm, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15908), !noalias !15805
  %i.ln = getelementptr inbounds nuw i8, ptr %.val.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !15911, !noalias !15912, !nonnull !13, !noundef !13
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lj
  store i8 125, ptr %i.lp, align 1, !noalias !15914
  %i.lq = add nuw i64 %i.lj, 1
  store i64 %i.lq, ptr %i.li, align 8, !alias.scope !15911, !noalias !15912
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz
  %i.lr = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !15896 ; 2 uses
  %.not.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i", label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.sink.split.i.i.i.i.i.i.i.i.i.i", !prof !341

bb.ca:                                            ; preds = %bb.bu
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !alias.scope !15851, !noalias !15895, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15915), !noalias !15805
  %i.ls = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15915, !noalias !15918, !noundef !13
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !15915, !noalias !15918, !noundef !13 ; 4 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  tail call void @llvm.assume(i1 %i.lv), !noalias !15805
  %i.lw = sub nsw i64 %i.ls, %i.lu
  %i.lx = icmp ugt i64 %i.lw, 4
  br i1 %i.lx, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15922), !noalias !15805
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !15925, !noalias !15926, !nonnull !13, !noundef !13
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lu
  store i32 1819047278, ptr %i.ma, align 1, !noalias !15928
  %i.mb = add nuw i64 %i.lu, 4
  store i64 %i.mb, ptr %i.lt, align 8, !alias.scope !15925, !noalias !15926
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  %i.mc = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !15929 ; 2 uses
  %.not.i.i.i.i8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i8.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i", label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread5.i.i.i.i.i.i.i.i.i.i", !prof !341

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread5.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.mc), !noalias !15929
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.sink.split.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i9.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lc, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.me = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i9.i.i.i.i.i.i.i.i.i), !noalias !15895
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bx, %bb.bw, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.sink.split.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.me, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.sink.split.i.i.i.i.i.i.i.i.i.i" ], [ %i.le, %bb.bx ], [ %i.ld, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15868
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15868
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"

bb.cb:                                            ; preds = %bb.bo
  %i.mf = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !15930
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cc:                                            ; preds = %bb.z
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15931, !noalias !15932, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15933)
  %i.mg = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15933, !noalias !15936, !noundef !13
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !15933, !noalias !15936, !noundef !13 ; 4 uses
  %i.mj = icmp sgt i64 %i.mi, -1
  tail call void @llvm.assume(i1 %i.mj)
  %i.mk = sub nsw i64 %i.mg, %i.mi
  %i.ml = icmp ugt i64 %i.mk, 4
  br i1 %i.ml, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15940)
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !alias.scope !15943, !noalias !15944, !nonnull !13, !noundef !13
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mi
  store i32 1819047278, ptr %i.mo, align 1, !noalias !15946
  %i.mp = add nuw i64 %i.mi, 4
  store i64 %i.mp, ptr %i.mh, align 8, !alias.scope !15943, !noalias !15944
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cc
  %i.mq = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !15932 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mr = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.mq), !noalias !15932
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aw, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h51bb52ccbbf01013E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aq, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit220.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.am, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit218.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ag, %bb.cb, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread5.i.i.i.i.i.i.i.i.i.i", %bb.bt, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit225.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit223.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h51bb52ccbbf01013E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit220.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit218.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ae, %bb.ab
  %.sroa.0.0.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ia, %bb.ae ], [ %i.hn, %bb.ab ], [ %i.ix, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit223.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.it, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h51bb52ccbbf01013E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.in, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit220.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ii, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit218.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ie, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jd, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit225.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kc, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.mf, %bb.cb ], [ %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread9.i.i.i.i.i.i.i.i.i.i" ], [ %i.md, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.thread5.i.i.i.i.i.i.i.i.i.i" ], [ %i.ko, %bb.bt ], [ %i.jl, %bb.bm ], [ %i.ib, %bb.ag ], [ %i.if, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ij, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit218.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ik, %bb.am ], [ %i.io, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit220.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.iq, %bb.aq ], [ %i.iu, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h51bb52ccbbf01013E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.iy, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ja, %bb.aw ], [ %i.je, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h23382bbe4b8c602dE.exit225.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jf, %bb.ba ], [ %i.jg, %bb.bc ], [ %i.jh, %bb.be ], [ %i.ji, %bb.bg ], [ %i.jj, %bb.bi ], [ %i.jk, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15720
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bn
  %.pre20.i.i.i.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15947)
  br i1 %.pre20.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i.i.i.i.i.i": ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !range !450, !alias.scope !15950, !noalias !15953
  %i.ms = icmp eq i8 %.pre.i.i.i.i.i.i, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15954), !noalias !15955
  br i1 %i.ms, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i._ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i_crit_edge.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i._ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i_crit_edge.i.i.i.i.i": ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !15950, !noalias !15953
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i": ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i._ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i_crit_edge.i.i.i.i.i", %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mt = phi ptr [ %.pre.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i._ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i_crit_edge.i.i.i.i.i" ], [ %i.jn, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jn, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jn, %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hb69e5c7441eb82f0E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mt, align 8, !noalias !15956, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15957), !noalias !15955
  %i.mu = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15957, !noalias !15960, !noundef !13
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !15957, !noalias !15960, !noundef !13 ; 4 uses
  %i.mx = icmp sgt i64 %i.mw, -1
  tail call void @llvm.assume(i1 %i.mx), !noalias !15955
  %i.my = sub nsw i64 %i.mu, %i.mw
  %i.mz = icmp ugt i64 %i.my, 1
  br i1 %i.mz, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15964), !noalias !15955
  %i.na = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !15967, !noalias !15968, !nonnull !13, !noundef !13
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mw
  store i8 125, ptr %i.nc, align 1, !noalias !15970
  %i.nd = add nuw i64 %i.mw, 1
  store i64 %i.nd, ptr %i.mv, align 8, !alias.scope !15967, !noalias !15968
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.thread.i.i.i.i.i.i"
  %i.ne = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !15956 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.i.i.i.i.i.i.i", !prof !341

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.thread.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15720
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i
  %i.nf = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ne), !noalias !15956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15720
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.thread.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ng = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i, 0
  br i1 %i.ng, label %.thread124.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i"

.thread124.i.i.i.i.i.i:                           ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i"
  %.val.i12.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15584, !noalias !15971, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15974)
  %i.nh = load i64, ptr %.val.i12.i.i.i.i.i.i, align 8, !range !26, !alias.scope !15974, !noalias !15977, !noundef !13
  %i.ni = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !15974, !noalias !15977, !noundef !13 ; 4 uses
  %i.nk = icmp sgt i64 %i.nj, -1
  tail call void @llvm.assume(i1 %i.nk)
  %i.nl = sub nsw i64 %i.nh, %i.nj
  %i.nm = icmp ugt i64 %i.nl, 1
  br i1 %i.nm, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i, !prof !220

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha29f60746fb4bfb3E.exit.i.i.i.i.i.i.i.i"
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i, i64 16906
  %i.no = load i16, ptr %i.nn, align 2, !noalias !15981, !noundef !13
  %i.np = zext i16 %i.no to i64
  %i.nq = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i, %i.np
  br i1 %i.nq, label %.thread129.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread129.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i"
  %i.nr = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i", %bb.cd
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ns, %bb.cd ], [ %.sroa.8.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nt, %bb.cd ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h919c09fc297a71ddE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ns = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !15992, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i17.i.i.i.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i.i17.i.i.i.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.nt = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 16904
  %i.nv = load i16, ptr %i.nu, align 8, !noalias !15992 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 16906
  %i.nx = load i16, ptr %i.nw, align 2, !noalias !15981, !noundef !13
  %i.ny = icmp ult i16 %i.nv, %i.nx
  br i1 %i.ny, label %bb.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.nz = zext i16 %i.nv to i64                   ; 4 uses
  %i.oa = icmp eq i64 %i.nt, 0
  %i.ob = add nuw nsw i64 %i.nz, 1                ; 2 uses
  br i1 %i.oa, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 16912
  %i.od = icmp ult i16 %i.nv, 11
  tail call void @llvm.assume(i1 %i.od), !noalias !15642
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.ob ; 2 uses
  %xtraiter35 = and i64 %i.nt, 7                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.prol.loopexit32, label %.prol.preheader31

.prol.preheader31:                                ; preds = %bb.cf, %.prol.preheader31
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.of, %.prol.preheader31 ], [ %i.oe, %bb.cf ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader31 ], [ %i.nt, %bb.cf ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.prol.preheader31 ], [ 0, %bb.cf ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !15995, !nonnull !13, !noundef !13 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.prol.loopexit32, label %.prol.preheader31, !llvm.loop !15999

.prol.loopexit32:                                 ; preds = %.prol.preheader31, %bb.cf
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cf ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader31 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.oe, %bb.cf ], [ %i.of, %.prol.preheader31 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.nt, %bb.cf ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader31 ]
  %i.og = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.og, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i", label %.new33

.new33:                                           ; preds = %.prol.loopexit32, %.new33
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.op, %.new33 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit32 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new33 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit32 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.oh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.oh, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.oi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.oi, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.oj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.oj, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.ok = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ok, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ol, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.om = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.om, align 8, !noalias !15995, !nonnull !13, !noundef !13
  %i.on = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.on, align 8, !noalias !15995, !nonnull !13, !noundef !13 ; 2 uses
  %i.oo = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.op = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.oo, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i", label %.new33

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.ch, !noalias !16000

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !15642
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4576cd12efcf24c7E.exit.i.i.i.i.i.i": ; preds = %.prol.loopexit32, %.new33, %bb.ce, %.thread129.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i134.i.i.i.i.i.i = phi ptr [ %i.ns, %bb.ce ], [ %.sroa.8.1.i.i.i.i.i.i, %.thread129.i.i.i.i.i.i ], [ %i.ns, %.new33 ], [ %i.ns, %.prol.loopexit32 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i133.i.i.i.i.i.i = phi i64 [ %i.nz, %bb.ce ], [ %.sroa.24.1.i.i.i.i.i.i, %.thread129.i.i.i.i.i.i ], [ %i.nz, %.new33 ], [ %i.nz, %.prol.loopexit32 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ob, %bb.ce ], [ %i.nr, %.thread129.i.i.i.i.i.i ], [ 0, %.new33 ], [ 0, %.prol.loopexit32 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ns, %bb.ce ], [ %.sroa.8.1.i.i.i.i.i.i, %.thread129.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit32 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new33 ]
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i134.i.i.i.i.i.i, i64 8
  %i.os = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i133.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.os), !noalias !15642
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.or, i64 %.sroa.6.sroa.4.0.ph.i.i.i133.i.i.i.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i134.i.i.i.i.i.i, i64 272
  %i.ov = getelementptr inbounds nuw [1512 x i8], ptr %i.ou, i64 %.sroa.6.sroa.4.0.ph.i.i.i133.i.i.i.i.i.i
  br label %bb.u

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i: ; preds = %.thread124.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16001)
  %i.ow = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !16004, !noalias !16005, !nonnull !13, !noundef !13
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.nj
  store i8 125, ptr %i.oy, align 1, !noalias !16007
  %i.oz = add nuw i64 %i.nj, 1
  store i64 %i.oz, ptr %i.ni, align 8, !alias.scope !16004, !noalias !16005
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i: ; preds = %.thread124.i.i.i.i.i.i
  %i.pa = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i12.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !15971 ; 2 uses
  %.not.i14.i.i.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i14.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit", label %bb.ci, !prof !341

bb.ci:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i
  %i.pb = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.pa), !noalias !15971
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

bb.cj:                                            ; preds = %bb.h
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15559, !noalias !15561, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16008)
  %i.pc = load i64, ptr %.val.i.i, align 8, !range !26, !alias.scope !16008, !noalias !16011, !noundef !13
  %i.pd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !16008, !noalias !16011, !noundef !13 ; 4 uses
  %i.pf = icmp sgt i64 %i.pe, -1
  tail call void @llvm.assume(i1 %i.pf)
  %i.pg = sub nsw i64 %i.pc, %i.pe
  %i.ph = icmp ugt i64 %i.pg, 4
  br i1 %i.ph, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i: ; preds = %bb.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16015)
  %i.pi = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !16018, !noalias !16019, !nonnull !13, !noundef !13
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pe
  store i32 1819047278, ptr %i.pk, align 1, !noalias !16021
  %i.pl = add nuw i64 %i.pe, 4
  store i64 %i.pl, ptr %i.pd, align 8, !alias.scope !16018, !noalias !16019
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i: ; preds = %bb.cj
  %i.pm = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !15561 ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i8, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit", label %bb.ck, !prof !341

bb.ck:                                            ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i
  %i.pn = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.pm), !noalias !15561
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h3eb81a40929a482fE.exit": ; preds = %bb.ck, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i, %bb.ci, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.m, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i, %bb.j, %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit"
  %.sroa.0.0 = phi ptr [ %i.v, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit" ], [ %i.ah, %bb.g ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i ], [ %i.pn, %bb.ck ], [ %i.ba, %bb.j ], [ %.sroa.0.0.i.i.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mr, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hbd9a14cdb61e8876E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dx, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.nf, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17h28d295c28ef45479E.exit.i.i.i.i.i.i.i" ], [ %i.ej, %bb.y ], [ %i.pb, %bb.ci ], [ %i.bm, %bb.m ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hafec6aadea08ce12E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16022)
  %i.a = load i8, ptr %0, align 8, !range !1013, !alias.scope !16022, !noalias !16025, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1773) #41, !noalias !16027
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16022, !noalias !16025, !nonnull !13, !align !25, !noundef !13 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !450, !alias.scope !16022, !noalias !16025, !noundef !13
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !16027 ; 5 uses
  br i1 %i.g, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16028)
  %i.h = load i64, ptr %.val.i, align 8, !range !26, !alias.scope !16028, !noalias !16031, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !16028, !noalias !16031, !noundef !13 ; 4 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nsw i64 %i.h, %i.j
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i, !prof !220

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16035)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !16038, !noalias !16039, !nonnull !13, !noundef !13
end_hunk_1
begin_hunk_2_@_ZN10serde_core3ser12SerializeMap15serialize_entry17hbc02d6d9cd520169E:bb.a
  %.sroa.011.014.i.i51.i.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i49.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i49.i.i.i.i.i.i.prol ]
  %i.bo = icmp ult i64 %i.ak, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i", label %.lr.ph.i.i49.i.i.i.i.i.i

.lr.ph.i.i49.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i49.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i.i.i
  %.sroa.012.015.i.i50.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i52.i.i.i.i.i.i.7, %.lr.ph.i.i49.i.i.i.i.i.i ], [ %.sroa.012.015.i.i50.i.i.i.i.i.i.unr, %.lr.ph.i.i49.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i51.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i49.i.i.i.i.i.i ], [ %.sroa.011.014.i.i51.i.i.i.i.i.i.unr, %.lr.ph.i.i49.i.i.i.i.i.i.prol.loopexit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i50.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.1 = load ptr, ptr %i.bq, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.1, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.2 = load ptr, ptr %i.br, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.2, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.3 = load ptr, ptr %i.bs, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.3, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.4 = load ptr, ptr %i.bt, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.4, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.5 = load ptr, ptr %i.bu, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.5, i64 544
  %.sroa.012.0.i.i52.i.i.i.i.i.i.6 = load ptr, ptr %i.bv, align 8, !noalias !16957, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i52.i.i.i.i.i.i.6, i64 544
  %i.bx = add i64 %.sroa.011.014.i.i51.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i52.i.i.i.i.i.i.7 = load ptr, ptr %i.bw, align 8, !noalias !16957, !nonnull !13, !noundef !13 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i", label %.lr.ph.i.i49.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i": ; preds = %.lr.ph.i.i49.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i.i.i, %bb.o
  %.sroa.012.0.lcssa.i.i54.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.o ], [ %.sroa.012.0.i.i52.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i49.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i52.i.i.i.i.i.i.7, %.lr.ph.i.i49.i.i.i.i.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i54.i.i.i.i.i.i, i64 538
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !16967, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i30.i.i.i.i.i.i, label %.thread97.i.i.i.i.i.i

.lr.ph.i.i.i.i30.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i", %bb.p
  %.sroa.0.038.i.i.i.i31.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.p ], [ %.sroa.012.0.lcssa.i.i54.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i32.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.p ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ] ; 2 uses
  %i.cb = load ptr, ptr %.sroa.0.038.i.i.i.i31.i.i.i.i.i.i, align 8, !noalias !16976, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i33.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i33.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i30.i.i.i.i.i.i
  %i.cc = add i64 %.sroa.5.037.i.i.i.i32.i.i.i.i.i.i, 1 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i31.i.i.i.i.i.i, i64 536
  %i.ce = load i16, ptr %i.cd, align 8, !noalias !16976 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 538
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !16967, !noundef !13
  %i.ch = icmp ult i16 %i.ce, %i.cg
  br i1 %i.ch, label %bb.q, label %.lr.ph.i.i.i.i30.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ci = zext i16 %i.ce to i64                   ; 4 uses
  %i.cj = icmp eq i64 %i.cc, 0
  %i.ck = add nuw nsw i64 %i.ci, 1                ; 2 uses
  br i1 %i.cj, label %.thread97.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 544
  %i.cm = icmp ult i16 %i.ce, 11
  tail call void @llvm.assume(i1 %i.cm), !noalias !16979
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %xtraiter21 = and i64 %i.cc, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.r, %.prol.preheader
  %.pn30.in.i.i.i.i38.i.i.i.i.i.i.prol = phi ptr [ %i.co, %.prol.preheader ], [ %i.cn, %bb.r ]
  %.pn28.in.i.i.i.i39.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i40.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.cc, %bb.r ]
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.prol.preheader ], [ 0, %bb.r ]
  %.pn28.i.i.i.i40.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i39.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i41.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i38.i.i.i.i.i.i.prol, align 8, !noalias !16980, !nonnull !13, !noundef !13 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16984

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.r
  %.pn30.i.i.i.i41.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.r ], [ %.pn30.i.i.i.i41.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i38.i.i.i.i.i.i.unr = phi ptr [ %i.cn, %bb.r ], [ %i.co, %.prol.preheader ]
  %.pn28.in.i.i.i.i39.i.i.i.i.i.i.unr = phi i64 [ %i.cc, %bb.r ], [ %.pn28.i.i.i.i40.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cp = icmp ult i64 %.sroa.5.037.i.i.i.i32.i.i.i.i.i.i, 7
  br i1 %i.cp, label %.thread97.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i38.i.i.i.i.i.i = phi ptr [ %i.cy, %.new ], [ %.pn30.in.i.i.i.i38.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i39.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i40.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i39.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i41.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i38.i.i.i.i.i.i, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.1 = load ptr, ptr %i.cq, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.2 = load ptr, ptr %i.cr, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.3 = load ptr, ptr %i.cs, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.4 = load ptr, ptr %i.ct, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.5 = load ptr, ptr %i.cu, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i41.i.i.i.i.i.i.6 = load ptr, ptr %i.cv, align 8, !noalias !16980, !nonnull !13, !noundef !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i40.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i39.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i41.i.i.i.i.i.i.7 = load ptr, ptr %i.cw, align 8, !noalias !16980, !nonnull !13, !noundef !13 ; 2 uses
  %i.cx = icmp eq i64 %.pn28.i.i.i.i40.i.i.i.i.i.i.7, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i41.i.i.i.i.i.i.7, i64 544
  br i1 %i.cx, label %.thread97.i.i.i.i.i.i, label %.new

bb.s:                                             ; preds = %.lr.ph.i.i.i.i30.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i47.i.i.i.i.i.i unwind label %bb.t, !noalias !16985

.noexc.i.i47.i.i.i.i.i.i:                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !16979
  unreachable

.critedge.i18.i.i.i.i.i.i:                        ; preds = %bb.n
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !16986
  unreachable

.thread97.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.q, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i37102.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.q ], [ %.sroa.012.0.lcssa.i.i54.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ], [ %i.cb, %.new ], [ %i.cb, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i35101.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.q ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ], [ %i.ci, %.new ], [ %i.ci, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.q ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i44.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.q ], [ %.sroa.012.0.lcssa.i.i54.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i24.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i41.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i41.i.i.i.i.i.i.7, %.new ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i37102.i.i.i.i.i.i, i64 8
  %i.db = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i35101.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.db), !noalias !16979
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.6.sroa.4.0.ph.i.i.i35101.i.i.i.i.i.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i37102.i.i.i.i.i.i, i64 272
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.sroa.6.sroa.4.0.ph.i.i.i35101.i.i.i.i.i.i ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 8
  %.val9.peel.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !16987, !nonnull !13, !noundef !13
  %i.dg = getelementptr i8, ptr %i.dc, i64 16
  %.val10.peel.i.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !16987
  %i.dh = getelementptr i8, ptr %i.de, i64 8
  %.val11.peel.i.i.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !16987 ; 2 uses
  %i.di = getelementptr i8, ptr %i.de, i64 16
  %.val12.peel.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8, !noalias !16987
  %i.dj = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i.i.i.i.i.i, i64 noundef %.val10.peel.i.i.i.i.i.i.i.i), !noalias !16990 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i, label %bb.u, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i", !prof !220

bb.u:                                             ; preds = %.thread97.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16998)
  %i.dk = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !16998, !noalias !17001, !noundef !13
  %i.dl = load i64, ptr %i.ao, align 8, !alias.scope !16998, !noalias !17001, !noundef !13 ; 4 uses
  %i.dm = icmp sgt i64 %i.dl, -1
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = sub nsw i64 %i.dk, %i.dl
  %i.do = icmp ugt i64 %i.dn, 1
  br i1 %i.do, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.dp = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !17005 ; 2 uses
  %.not.i8.i.i.i.peel.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i8.i.i.i.peel.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.peel.i.i.i.i.i.i.i.i", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i: ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17006)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !17009, !noalias !17010, !nonnull !13, !noundef !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dl
  store i8 58, ptr %i.ds, align 1, !noalias !17012
  %i.dt = add nuw i64 %i.dl, 1
  store i64 %i.dt, ptr %i.ao, align 8, !alias.scope !17009, !noalias !17010
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.peel.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.peel.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.peel.i.i.i.i.i.i.i.i) ]
  %i.du = tail call fastcc noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17he958affee8095ae9E(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly %.val11.peel.i.i.i.i.i.i.i.i, i64 %.val12.peel.i.i.i.i.i.i.i.i), !noalias !17013 ; 2 uses
  %.not8.peel.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not8.peel.i.i.i.i.i.i.i.i, label %.split.i.i.preheader.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit"

.split.i.i.preheader.i.i.i.i.i.i:                 ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.peel.i.i.i.i.i.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.sroa.35.0.i.i.i.i.i.i8 = add i64 %.sink.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dw = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i8, 0
  br i1 %i.dw, label %.thread141.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i"

.split.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.i.i.i.i.i.i.i.i"
  %.sroa.35.0.i.i.i.i.i.i = add i64 %.sroa.35.0.i.i.i.i.i.i11, -1 ; 2 uses
  %i.dx = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i, 0
  br i1 %i.dx, label %.thread141.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i", !llvm.loop !17014

.thread141.i.i.i.i.i.i:                           ; preds = %.split.i.i.i.i.i.i.i.i, %.split.i.i.preheader.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17015)
  %i.dy = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !17015, !noalias !17018, !noundef !13
  %i.dz = load i64, ptr %i.ao, align 8, !alias.scope !17015, !noalias !17018, !noundef !13 ; 4 uses
  %i.ea = icmp sgt i64 %i.dz, -1
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = sub nsw i64 %i.dy, %i.dz
  %i.ec = icmp ugt i64 %i.eb, 1
  br i1 %i.ec, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i, !prof !220

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i": ; preds = %.split.i.i.preheader.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %.sroa.35.0.i.i.i.i.i.i11 = phi i64 [ %.sroa.35.0.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i ], [ %.sroa.35.0.i.i.i.i.i.i8, %.split.i.i.preheader.i.i.i.i.i.i ]
  %.sroa.8.1.i.i.i.i.i.i10 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i44.i.i.i.i.i.i, %.split.i.i.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.24.1.i.i.i.i.i.i9 = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i43.i.i.i.i.i.i, %.split.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i10, i64 538
  %i.ee = load i16, ptr %i.ed, align 2, !noalias !17024, !noundef !13
  %i.ef = zext i16 %i.ee to i64
  %i.eg = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i9, %i.ef
  br i1 %i.eg, label %.thread147.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread147.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i"
  %i.eh = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i.i9, 1
  br label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i", %bb.v
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.v ], [ %.sroa.8.1.i.i.i.i.i.i10, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ej, %bb.v ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h511c3302e2c93a35E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17035, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ej = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.el = load i16, ptr %i.ek, align 8, !noalias !17035 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 538
  %i.en = load i16, ptr %i.em, align 2, !noalias !17024, !noundef !13
  %i.eo = icmp ult i16 %i.el, %i.en
  br i1 %i.eo, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ep = zext i16 %i.el to i64                   ; 4 uses
  %i.eq = icmp eq i64 %i.ej, 0
  %i.er = add nuw nsw i64 %i.ep, 1                ; 2 uses
  br i1 %i.eq, label %.loopexit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 544
  %i.et = icmp ult i16 %i.el, 11
  tail call void @llvm.assume(i1 %i.et), !noalias !16979
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %xtraiter28 = and i64 %i.ej, 7                  ; 2 uses
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit25, label %.prol.preheader24

.prol.preheader24:                                ; preds = %bb.x, %.prol.preheader24
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ev, %.prol.preheader24 ], [ %i.eu, %bb.x ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ], [ %i.ej, %bb.x ]
  %prol.iter30 = phi i64 [ %prol.iter30.next, %.prol.preheader24 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !17038, !nonnull !13, !noundef !13 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter30.next = add i64 %prol.iter30, 1     ; 2 uses
  %prol.iter30.cmp.not = icmp eq i64 %prol.iter30.next, %xtraiter28
  br i1 %prol.iter30.cmp.not, label %.prol.loopexit25, label %.prol.preheader24, !llvm.loop !17042

.prol.loopexit25:                                 ; preds = %.prol.preheader24, %bb.x
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.eu, %bb.x ], [ %i.ev, %.prol.preheader24 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ej, %bb.x ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader24 ]
  %i.ew = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ew, label %.loopexit.i.i.i.i.i.i, label %.new26

.new26:                                           ; preds = %.prol.loopexit25, %.new26
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %.new26 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit25 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new26 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit25 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ex, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ey, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ez, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.fa, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fb, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fc, align 8, !noalias !17038, !nonnull !13, !noundef !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fd, align 8, !noalias !17038, !nonnull !13, !noundef !13 ; 2 uses
  %i.fe = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.fe, label %.loopexit.i.i.i.i.i.i, label %.new26

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.z, !noalias !17043

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !16979
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit25, %.new26, %bb.w, %.thread147.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i152.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.w ], [ %.sroa.8.1.i.i.i.i.i.i10, %.thread147.i.i.i.i.i.i ], [ %i.ei, %.new26 ], [ %i.ei, %.prol.loopexit25 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i151.i.i.i.i.i.i = phi i64 [ %i.ep, %bb.w ], [ %.sroa.24.1.i.i.i.i.i.i9, %.thread147.i.i.i.i.i.i ], [ %i.ep, %.new26 ], [ %i.ep, %.prol.loopexit25 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %bb.w ], [ %i.eh, %.thread147.i.i.i.i.i.i ], [ 0, %.new26 ], [ 0, %.prol.loopexit25 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.w ], [ %.sroa.8.1.i.i.i.i.i.i10, %.thread147.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit25 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new26 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i152.i.i.i.i.i.i, i64 8
  %i.fi = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i151.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.fi), !noalias !16979
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.sroa.6.sroa.4.0.ph.i.i.i151.i.i.i.i.i.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i152.i.i.i.i.i.i, i64 272
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %.sroa.6.sroa.4.0.ph.i.i.i151.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fj, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !noalias !16987 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fj, i64 16
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !noalias !16987
  %i.fo = getelementptr i8, ptr %i.fl, i64 8
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !noalias !16987 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 16
  %.val12.i.i.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !noalias !16987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17044)
  %i.fq = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !17044, !noalias !17047, !noundef !13
  %i.fr = load i64, ptr %i.ao, align 8, !alias.scope !17044, !noalias !17047, !noundef !13 ; 4 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = sub nsw i64 %i.fq, %i.fr
  %i.fu = icmp ugt i64 %i.ft, 1
  br i1 %i.fu, label %bb.aa, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.aa:                                            ; preds = %.loopexit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17053)
  %i.fv = load ptr, ptr %i.dv, align 8, !alias.scope !17056, !noalias !17057, !nonnull !13, !noundef !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr
  store i8 44, ptr %i.fw, align 1, !noalias !17059
  %i.fx = add nuw i64 %i.fr, 1
  store i64 %i.fx, ptr %i.ao, align 8, !alias.scope !17056, !noalias !17057
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i
  %i.fy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !17060 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  %i.fz = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i), !noalias !17060 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i", !prof !220

bb.ab:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17061)
  %i.ga = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !17061, !noalias !17063, !noundef !13
  %i.gb = load i64, ptr %i.ao, align 8, !alias.scope !17061, !noalias !17063, !noundef !13 ; 4 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = sub nsw i64 %i.ga, %i.gb
  %i.ge = icmp ugt i64 %i.gd, 1
  br i1 %i.ge, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17064)
  %i.gf = load ptr, ptr %i.dv, align 8, !alias.scope !17066, !noalias !17067, !nonnull !13, !noundef !13
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gb
  store i8 58, ptr %i.gg, align 1, !noalias !17068
  %i.gh = add nuw i64 %i.gb, 1
  store i64 %i.gh, ptr %i.ao, align 8, !alias.scope !17066, !noalias !17067
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.gi = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !17069 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.i.i.i.i.i.i.i.i", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i", !prof !341

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i.i.i.i) ]
  %i.gj = tail call fastcc noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17he958affee8095ae9E(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly %.val11.i.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i.i), !noalias !17070 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit", !llvm.loop !17014

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5444a7c85b92276dE.exit.thread.sink.split.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i, %.thread97.i.i.i.i.i.i
  %.sink.i.i.i.i.sink.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i ], [ %i.dj, %.thread97.i.i.i.i.i.i ], [ %i.fy, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gi, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fz, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gk = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.sink.i.i.i.i.i.i.i.i), !noalias !17069
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i: ; preds = %.thread141.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17071)
  %i.gl = load ptr, ptr %i.dv, align 8, !alias.scope !17074, !noalias !17075, !nonnull !13, !noundef !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.dz
  store i8 125, ptr %i.gm, align 1, !noalias !17077
  %i.gn = add nuw i64 %i.dz, 1
  store i64 %i.gn, ptr %i.ao, align 8, !alias.scope !17074, !noalias !17075
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i: ; preds = %.thread141.i.i.i.i.i.i
  %i.go = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !17078 ; 2 uses
  %.not.i14.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i14.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit", label %bb.ac, !prof !341

bb.ac:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i
  %i.gp = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.go), !noalias !17078
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h655b701ccecd4cd9E.exit"

bb.ad:                                            ; preds = %bb.h
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !16896, !noalias !16898, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17079)
  %i.gq = load i64, ptr %.val.i.i, align 8, !range !26, !alias.scope !17079, !noalias !17082, !noundef !13
end_hunk_2
begin_hunk_3_@_ZN10serde_core3ser12SerializeMap15serialize_entry17hce4a965467285bafE:bb.a
  %.pn28.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i78.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fe, align 8, !noalias !18037, !nonnull !13, !noundef !13 ; 2 uses
  %i.ff = icmp eq i64 %.pn28.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.ff, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i86.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ah, !noalias !18042

.noexc.i.i86.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18036
  unreachable

.critedge.i57.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ab
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !18043
  unreachable

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.prol.loopexit, %.new, %bb.ae, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i63.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i76146.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ej, %bb.ae ], [ %.sroa.012.0.lcssa.i.i93.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i63.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ej, %.new ], [ %i.ej, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i74145.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %bb.ae ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i63.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.eq, %.new ], [ %i.eq, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.es, %bb.ae ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i63.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ej, %bb.ae ], [ %.sroa.012.0.lcssa.i.i93.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i63.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i76146.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i74145.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.fj), !noalias !18036
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %.sroa.6.sroa.4.0.ph.i.i.i74145.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i76146.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 276
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sroa.6.sroa.4.0.ph.i.i.i74145.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr i8, ptr %i.fk, i64 8
  %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fn, align 8, !noalias !18044, !nonnull !13, !noundef !13
  %i.fo = getelementptr i8, ptr %i.fk, i64 16
  %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !18044
  %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fm, align 1, !noalias !18044
  %i.fp = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !18047 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.ai:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18055)
  %i.fq = load i64, ptr %.val10.i8.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !18055, !noalias !18058, !noundef !13
  %i.fr = load i64, ptr %i.cw, align 8, !alias.scope !18055, !noalias !18058, !noundef !13 ; 4 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = sub nsw i64 %i.fq, %i.fr
  %i.fu = icmp ugt i64 %i.ft, 1
  br i1 %i.fu, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.fv = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !18062 ; 2 uses
  %.not.i8.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i8.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !341

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18063)
  %i.fw = getelementptr inbounds nuw i8, ptr %.val10.i8.i.i.i.i.i.i.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !18066, !noalias !18067, !nonnull !13, !noundef !13
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fr
  store i8 58, ptr %i.fy, align 1, !noalias !18069
  %i.fz = add nuw i64 %i.fr, 1
  store i64 %i.fz, ptr %i.cw, align 8, !alias.scope !18066, !noalias !18067
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = trunc nuw i8 %.val11.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ga, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @380, i64 noundef 5), !noalias !18062 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i2.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.al:                                            ; preds = %bb.aj
  %i.gc = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @381, i64 noundef 5), !noalias !18062 ; 2 uses
  %.not.i.i.i.i.i13.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i13.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.al, %bb.ak
  %i.gd = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gd, label %.thread183.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ge = add i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 274
  %i.gg = load i16, ptr %i.gf, align 2, !noalias !18070, !noundef !13
  %i.gh = zext i16 %i.gg to i64
  %i.gi = icmp samesign ult i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gh
  br i1 %i.gi, label %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gj = add nuw nsw i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.am ], [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %bb.am ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i25.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.gk = load ptr, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18081, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = add i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.gn = load i16, ptr %i.gm, align 8, !noalias !18081 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 274
  %i.gp = load i16, ptr %i.go, align 2, !noalias !18070, !noundef !13
  %i.gq = icmp ult i16 %i.gn, %i.gp
  br i1 %i.gq, label %bb.an, label %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.gr = zext i16 %i.gn to i64                   ; 4 uses
  %i.gs = icmp eq i64 %i.gl, 0
  %i.gt = add nuw nsw i64 %i.gr, 1                ; 2 uses
  br i1 %i.gs, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 288
  %i.gv = icmp ult i16 %i.gn, 11
  tail call void @llvm.assume(i1 %i.gv), !noalias !18036
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gt ; 2 uses
  %xtraiter27 = and i64 %i.gl, 7                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit24, label %.prol.preheader23

.prol.preheader23:                                ; preds = %bb.ao, %.prol.preheader23
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.gx, %.prol.preheader23 ], [ %i.gw, %bb.ao ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ], [ %i.gl, %bb.ao ]
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader23 ], [ 0, %bb.ao ]
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !18084, !nonnull !13, !noundef !13 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit24, label %.prol.preheader23, !llvm.loop !18088

.prol.loopexit24:                                 ; preds = %.prol.preheader23, %bb.ao
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ao ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ]
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.gw, %bb.ao ], [ %i.gx, %.prol.preheader23 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.gl, %bb.ao ], [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ]
  %i.gy = icmp ult i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.gy, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.new25

.new25:                                           ; preds = %.prol.loopexit24, %.new25
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hh, %.new25 ], [ %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit24 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new25 ], [ %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit24 ]
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.gz, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ha, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hb, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hc, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.hd, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.he = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.he, align 8, !noalias !18084, !nonnull !13, !noundef !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hf, align 8, !noalias !18084, !nonnull !13, !noundef !13 ; 2 uses
  %i.hg = icmp eq i64 %.pn28.i.i.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.hg, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.new25

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !18089

.noexc.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18036
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.prol.loopexit24, %.new25, %bb.an, %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i38161.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.an ], [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gk, %.new25 ], [ %i.gk, %.prol.loopexit24 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i36160.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.an ], [ %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gr, %.new25 ], [ %i.gr, %.prol.loopexit24 ] ; 3 uses
  %.sroa.7.0.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gt, %bb.an ], [ %i.gj, %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.new25 ], [ 0, %.prol.loopexit24 ]
  %.sroa.07.0.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %bb.an ], [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit24 ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new25 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i38161.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i36160.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.hk), !noalias !18036
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %.sroa.6.sroa.4.0.ph.i.i.i36160.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i38161.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 276
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.sroa.6.sroa.4.0.ph.i.i.i36160.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.val10.i8.i.i.i.i.i.i.i, i64 8 ; 2 uses
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.47.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ge, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ip, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.33.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.hp = phi ptr [ %i.hl, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jw, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.pn193.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hn, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit56.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jy, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn193.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hq, align 8, !noalias !18044 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8, !noalias !18044
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.pn193.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !18044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18090)
  %i.hs = load i64, ptr %.val10.i8.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !18090, !noalias !18093, !noundef !13
  %i.ht = load i64, ptr %i.cw, align 8, !alias.scope !18090, !noalias !18093, !noundef !13 ; 4 uses
  %i.hu = icmp sgt i64 %i.ht, -1
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = sub nsw i64 %i.hs, %i.ht
  %i.hw = icmp ugt i64 %i.hv, 1
  br i1 %i.hw, label %bb.ar, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.ar:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18099)
  %i.hx = load ptr, ptr %i.ho, align 8, !alias.scope !18102, !noalias !18103, !nonnull !13, !noundef !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ht
  store i8 44, ptr %i.hy, align 1, !noalias !18105
  %i.hz = add nuw i64 %i.ht, 1
  store i64 %i.hz, ptr %i.cw, align 8, !alias.scope !18102, !noalias !18103
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !18106 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.ib = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !18106 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.as:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18107)
  %i.ic = load i64, ptr %.val10.i8.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !18107, !noalias !18109, !noundef !13
  %i.id = load i64, ptr %i.cw, align 8, !alias.scope !18107, !noalias !18109, !noundef !13 ; 4 uses
  %i.ie = icmp sgt i64 %i.id, -1
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = sub nsw i64 %i.ic, %i.id
  %i.ig = icmp ugt i64 %i.if, 1
  br i1 %i.ig, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18110)
  %i.ih = load ptr, ptr %i.ho, align 8, !alias.scope !18112, !noalias !18113, !nonnull !13, !noundef !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.id
  store i8 58, ptr %i.ii, align 1, !noalias !18114
  %i.ij = add nuw i64 %i.id, 1
  store i64 %i.ij, ptr %i.cw, align 8, !alias.scope !18112, !noalias !18113
  br label %bb.at

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.ik = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !18115 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !341

bb.at:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.il = trunc nuw i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.il, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.im = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @381, i64 noundef 5), !noalias !18115 ; 2 uses
  %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.av:                                            ; preds = %bb.at
  %i.in = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @380, i64 noundef 5), !noalias !18115 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.au
  %i.io = icmp eq i64 %.sroa.47.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.io, label %.thread183.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ip = add i64 %.sroa.47.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 274
  %i.ir = load i16, ptr %i.iq, align 2, !noalias !18116, !noundef !13
  %i.is = zext i16 %i.ir to i64
  %i.it = icmp ult i64 %.sroa.33.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.is
  br i1 %i.it, label %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.iu = add nuw nsw i64 %.sroa.33.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aw
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %bb.aw ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iw, %bb.aw ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h84af885b13175132E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.iv = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18127, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.iy = load i16, ptr %i.ix, align 8, !noalias !18127 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 274
  %i.ja = load i16, ptr %i.iz, align 2, !noalias !18116, !noundef !13
  %i.jb = icmp ult i16 %i.iy, %i.ja
  br i1 %i.jb, label %bb.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jc = zext i16 %i.iy to i64                   ; 4 uses
  %i.jd = icmp eq i64 %i.iw, 0
  %i.je = add nuw nsw i64 %i.jc, 1                ; 2 uses
  br i1 %i.jd, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 288
  %i.jg = icmp ult i16 %i.iy, 11
  tail call void @llvm.assume(i1 %i.jg), !noalias !18036
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.je ; 2 uses
  %xtraiter34 = and i64 %i.iw, 7                  ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.prol.loopexit31, label %.prol.preheader30

.prol.preheader30:                                ; preds = %bb.ay, %.prol.preheader30
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ji, %.prol.preheader30 ], [ %i.jh, %bb.ay ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ], [ %i.iw, %bb.ay ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.prol.preheader30 ], [ 0, %bb.ay ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !18130, !nonnull !13, !noundef !13 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.prol.loopexit31, label %.prol.preheader30, !llvm.loop !18134

.prol.loopexit31:                                 ; preds = %.prol.preheader30, %bb.ay
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ay ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.jh, %bb.ay ], [ %i.ji, %.prol.preheader30 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.iw, %bb.ay ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader30 ]
  %i.jj = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.jj, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.new32

.new32:                                           ; preds = %.prol.loopexit31, %.new32
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.js, %.new32 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit31 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new32 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit31 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.jk, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.jl, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.jm, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.jn, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.jo, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.jp, align 8, !noalias !18130, !nonnull !13, !noundef !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.jq, align 8, !noalias !18130, !nonnull !13, !noundef !13 ; 2 uses
  %i.jr = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.js = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.jr, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.new32

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ba, !noalias !18135

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18036
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h266d8731ffefb7c9E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.prol.loopexit31, %.new32, %bb.ax, %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i192.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %bb.ax ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %.new32 ], [ %i.iv, %.prol.loopexit31 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i191.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jc, %bb.ax ], [ %.sroa.33.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jc, %.new32 ], [ %i.jc, %.prol.loopexit31 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %bb.ax ], [ %i.iu, %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.new32 ], [ 0, %.prol.loopexit31 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %bb.ax ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread187.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit31 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new32 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i192.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jv = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i191.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.jv), !noalias !18036
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i192.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 276
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !18136

_ZN4core4iter6traits8iterator8Iterator12try_for_each17h5967c1f7183c9682E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al, %bb.ak, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.sink.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.al ], [ %i.fp, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fv, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gb, %bb.ak ], [ %i.ib, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %bb.av ], [ %i.im, %bb.au ], [ %i.ik, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.jz = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.sink.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !18115
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17haaf0eec9741d31f8E.exit.thread9.i"

.thread183.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h29a3b63b9a64470fE.exit.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18137)
  %i.ka = load i64, ptr %.val10.i8.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !18137, !noalias !18140, !noundef !13
  %i.kb = load i64, ptr %i.cw, align 8, !alias.scope !18137, !noalias !18140, !noundef !13 ; 4 uses
  %i.kc = icmp sgt i64 %i.kb, -1
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = sub nsw i64 %i.ka, %i.kb
  %i.ke = icmp ugt i64 %i.kd, 1
  br i1 %i.ke, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread183.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18146)
  %i.kf = getelementptr inbounds nuw i8, ptr %.val10.i8.i.i.i.i.i.i.i, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !alias.scope !18149, !noalias !18150, !nonnull !13, !noundef !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kb
  store i8 125, ptr %i.kh, align 1, !noalias !18152
  %i.ki = add nuw i64 %i.kb, 1
  store i64 %i.ki, ptr %i.cw, align 8, !alias.scope !18149, !noalias !18150
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread183.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !18153 ; 2 uses
  %.not.i14.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not.i14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i", label %bb.bb, !prof !341

bb.bb:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kk = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.kj), !noalias !18153
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17haaf0eec9741d31f8E.exit.thread9.i"

bb.bc:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i8.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18154)
  %i.kl = load i64, ptr %.val10.i8.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !18154, !noalias !18157, !noundef !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val10.i8.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !alias.scope !18154, !noalias !18157, !noundef !13 ; 4 uses
  %i.ko = icmp sgt i64 %i.kn, -1
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = sub nsw i64 %i.kl, %i.kn
  %i.kq = icmp ugt i64 %i.kp, 4
  br i1 %i.kq, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18161)
  %i.kr = getelementptr inbounds nuw i8, ptr %.val10.i8.i.i.i.i.i.i.i, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !18164, !noalias !18165, !nonnull !13, !noundef !13
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kn
  store i32 1819047278, ptr %i.kt, align 1, !noalias !18167
  %i.ku = add nuw i64 %i.kn, 4
  store i64 %i.ku, ptr %i.km, align 8, !alias.scope !18164, !noalias !18165
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.kv = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val10.i8.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !18168 ; 2 uses
  %.not.i.i.i.i9.i.i.i.i.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i9.i.i.i.i.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i", label %bb.bd, !prof !341

bb.bd:                                            ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.kw = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.kv), !noalias !18168
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17haaf0eec9741d31f8E.exit.thread9.i"

bb.be:                                            ; preds = %bb.q
  %i.kx = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !18169
  br label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17haaf0eec9741d31f8E.exit.thread9.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i.i.i.i": ; preds = %bb.p
  %.sroa.438.0.copyload.pre.i.pre.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !noalias !17872
  %i.ky = icmp eq i8 %.sroa.438.0.copyload.pre.i.pre.i.i.i.i, 0
  %i.kz = select i1 %i.bm, i1 true, i1 %i.ky
  br i1 %i.kz, label %"_ZN88_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17haaf0eec9741d31f8E.exit.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i_crit_edge.i_crit_edge.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i_crit_edge.i_crit_edge.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i.i.i.i"
  %.sroa.540.0.copyload.i.pre.i.pre.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !17872
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i.i.i.i.i": ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i_crit_edge.i_crit_edge.i.i.i", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread118.i.i.i.i.i
  %.sroa.540.0.copyload.i.i.i.i.i = phi ptr [ %i.ca, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.540.0.copyload.i.pre.i.pre.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.i._ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h4e2a1d01e3f19fa0E.exit.thread127.i_crit_edge.i_crit_edge.i.i.i" ], [ %i.e, %.thread118.i.i.i.i.i ]
  %.val.i.i31.i.i.i.i.i = load ptr, ptr %.sroa.540.0.copyload.i.i.i.i.i, align 8, !noalias !18170, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18175)
  %i.la = load i64, ptr %.val.i.i31.i.i.i.i.i, align 8, !range !26, !alias.scope !18175, !noalias !18178, !noundef !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i31.i.i.i.i.i, i64 16 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !18175, !noalias !18178, !noundef !13 ; 4 uses
  %i.ld = icmp sgt i64 %i.lc, -1
  tail call void @llvm.assume(i1 %i.ld)
  %i.le = sub nsw i64 %i.la, %i.lc
  %i.lf = icmp ugt i64 %i.le, 1
  br i1 %i.lf, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i35.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i32.i.i.i.i.i, !prof !220

end_hunk_3
begin_hunk_4_@"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE":bb.a
  br i1 %i.as, label %.lr.ph.split.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  %i.av = icmp ult i16 %i.an, 11
  tail call void @llvm.assume(i1 %i.av), !noalias !18741
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %xtraiter71 = and i64 %i.al, 7                  ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i68.i.prol = phi ptr [ %i.ax, %.prol.preheader ], [ %i.aw, %bb.g ]
  %.pn28.in.i.i.i.i.i69.i.prol = phi i64 [ %.pn28.i.i.i.i.i70.i.prol, %.prol.preheader ], [ %i.al, %bb.g ]
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i70.i.prol = add i64 %.pn28.in.i.i.i.i.i69.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i71.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i68.i.prol, align 8, !noalias !18742, !nonnull !13, !noundef !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.prol, i64 280 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18746

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i71.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i71.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i68.i.unr = phi ptr [ %i.aw, %bb.g ], [ %i.ax, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i69.i.unr = phi i64 [ %i.al, %bb.g ], [ %.pn28.i.i.i.i.i70.i.prol, %.prol.preheader ]
  %i.ay = icmp ult i64 %.sroa.5.037.i.i.i.i.i62.i, 7
  br i1 %i.ay, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i68.i = phi ptr [ %i.bh, %.new ], [ %.pn30.in.i.i.i.i.i68.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i69.i = phi i64 [ %.pn28.i.i.i.i.i70.i.7, %.new ], [ %.pn28.in.i.i.i.i.i69.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i71.i = load ptr, ptr %.pn30.in.i.i.i.i.i68.i, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i, i64 280
  %.pn30.i.i.i.i.i71.i.1 = load ptr, ptr %i.az, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.1, i64 280
  %.pn30.i.i.i.i.i71.i.2 = load ptr, ptr %i.ba, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.2, i64 280
  %.pn30.i.i.i.i.i71.i.3 = load ptr, ptr %i.bb, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.3, i64 280
  %.pn30.i.i.i.i.i71.i.4 = load ptr, ptr %i.bc, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.4, i64 280
  %.pn30.i.i.i.i.i71.i.5 = load ptr, ptr %i.bd, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.be = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.5, i64 280
  %.pn30.i.i.i.i.i71.i.6 = load ptr, ptr %i.be, align 8, !noalias !18742, !nonnull !13, !noundef !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.6, i64 280
  %.pn28.i.i.i.i.i70.i.7 = add i64 %.pn28.in.i.i.i.i.i69.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i71.i.7 = load ptr, ptr %i.bf, align 8, !noalias !18742, !nonnull !13, !noundef !13 ; 2 uses
  %i.bg = icmp eq i64 %.pn28.i.i.i.i.i70.i.7, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i71.i.7, i64 280
  br i1 %i.bg, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i60.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i76.i unwind label %bb.i, !noalias !18747

.noexc.i.i.i76.i:                                 ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18741
  unreachable

.critedge.i.i49.i:                                ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hd5586ff0ef5a7fb9E.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !18748
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i73.i = phi i64 [ %i.at, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i74.i = phi ptr [ %i.ak, %bb.f ], [ %.pn30.i.i.i.i.i71.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i71.i.7, %.new ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bk = icmp ult i16 %i.an, 11
  tail call void @llvm.assume(i1 %i.bk), !noalias !18741
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.ar ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 16
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.i": ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.i.thread.i
  %.val9.peel.i.i145.in.i = phi ptr [ %i.bn, %.lr.ph.split.i.i.i ], [ %i.aj, %.lr.ph.split.i.i.thread.i ]
  %.val8.peel.i.i144.in.i = phi ptr [ %i.bm, %.lr.ph.split.i.i.i ], [ %i.ai, %.lr.ph.split.i.i.thread.i ]
  %.sroa.07.0.i.i.i.i74143.i = phi ptr [ %.sroa.07.0.i.i.i.i74.i, %.lr.ph.split.i.i.i ], [ %.sroa.012.0.lcssa.i.i.i83.i, %.lr.ph.split.i.i.thread.i ] ; 4 uses
  %.sroa.7.0.i.i.i.i73142.i = phi i64 [ %.sroa.7.0.i.i.i.i73.i, %.lr.ph.split.i.i.i ], [ 1, %.lr.ph.split.i.i.thread.i ] ; 3 uses
  %.val8.peel.i.i144.i = load ptr, ptr %.val8.peel.i.i144.in.i, align 8, !noalias !18749, !nonnull !13, !noundef !13
  %.val9.peel.i.i145.i = load i64, ptr %.val9.peel.i.i145.in.i, align 8, !noalias !18749
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i144.i, i64 noundef %.val9.peel.i.i145.i)
  %i.bo = icmp eq i64 %.sroa.5.0.i.i, 1
  br i1 %i.bo, label %.thread166.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.i"
  %i.bp = add i64 %.sroa.5.0.i.i, -2
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i74143.i, i64 274
  %i.br = load i16, ptr %i.bq, align 2, !noalias !18752, !noundef !13
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp samesign ult i64 %.sroa.7.0.i.i.i.i73142.i, %i.bs
  br i1 %i.bt, label %.thread146.i, label %.lr.ph.i.i.i.i.i24.i

.thread146.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i"
  %i.bu = add nuw nsw i64 %.sroa.7.0.i.i.i.i73142.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit75, %.new76, %bb.k, %.thread146.i
  %.sroa.0.0.ph.i.i.i.i175.sink.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i74143.i, %.thread146.i ], [ %i.bv, %bb.k ], [ %i.bv, %.new76 ], [ %i.bv, %.prol.loopexit75 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i73142.i, %.thread146.i ], [ %i.cc, %bb.k ], [ %i.cc, %.new76 ], [ %i.cc, %.prol.loopexit75 ]
  %.sroa.27.0.i.ph = phi i64 [ %i.bu, %.thread146.i ], [ %i.ce, %bb.k ], [ 0, %.new76 ], [ 0, %.prol.loopexit75 ]
  %.sroa.10.0.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i74143.i, %.thread146.i ], [ %i.bv, %bb.k ], [ %.pn30.i.i.i.i.i35.i.lcssa.unr, %.prol.loopexit75 ], [ %.pn30.i.i.i.i.i35.i.7, %.new76 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i.i24.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i", %bb.j
  %.sroa.0.038.i.i.i.i.i25.i = phi ptr [ %i.bv, %bb.j ], [ %.sroa.07.0.i.i.i.i74143.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i26.i = phi i64 [ %i.bw, %bb.j ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i19.i" ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.0.038.i.i.i.i.i25.i, align 8, !noalias !18765, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i.i27.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i27.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.bw = add i64 %.sroa.5.037.i.i.i.i.i26.i, 1   ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i25.i, i64 272
  %i.by = load i16, ptr %i.bx, align 8, !noalias !18765 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 274
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !18752, !noundef !13
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %bb.k, label %.lr.ph.i.i.i.i.i24.i

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i16 %i.by to i64                   ; 4 uses
  %i.cd = icmp eq i64 %i.bw, 0
  %i.ce = add nuw nsw i64 %i.cc, 1                ; 2 uses
  br i1 %i.cd, label %.peel.next.i.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 280
  %i.cg = icmp ult i16 %i.by, 11
  tail call void @llvm.assume(i1 %i.cg), !noalias !18741
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  %xtraiter78 = and i64 %i.bw, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit75, label %.prol.preheader74

.prol.preheader74:                                ; preds = %bb.l, %.prol.preheader74
  %.pn30.in.i.i.i.i.i32.i.prol = phi ptr [ %i.ci, %.prol.preheader74 ], [ %i.ch, %bb.l ]
  %.pn28.in.i.i.i.i.i33.i.prol = phi i64 [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ], [ %i.bw, %bb.l ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader74 ], [ 0, %bb.l ]
  %.pn28.i.i.i.i.i34.i.prol = add i64 %.pn28.in.i.i.i.i.i33.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i35.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i32.i.prol, align 8, !noalias !18768, !nonnull !13, !noundef !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.prol, i64 280 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit75, label %.prol.preheader74, !llvm.loop !18772

.prol.loopexit75:                                 ; preds = %.prol.preheader74, %bb.l
  %.pn30.i.i.i.i.i35.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.pn30.i.i.i.i.i35.i.prol, %.prol.preheader74 ]
  %.pn30.in.i.i.i.i.i32.i.unr = phi ptr [ %i.ch, %bb.l ], [ %i.ci, %.prol.preheader74 ]
  %.pn28.in.i.i.i.i.i33.i.unr = phi i64 [ %i.bw, %bb.l ], [ %.pn28.i.i.i.i.i34.i.prol, %.prol.preheader74 ]
  %i.cj = icmp ult i64 %.sroa.5.037.i.i.i.i.i26.i, 7
  br i1 %i.cj, label %.peel.next.i.i.i.preheader, label %.new76

.new76:                                           ; preds = %.prol.loopexit75, %.new76
  %.pn30.in.i.i.i.i.i32.i = phi ptr [ %i.cs, %.new76 ], [ %.pn30.in.i.i.i.i.i32.i.unr, %.prol.loopexit75 ]
  %.pn28.in.i.i.i.i.i33.i = phi i64 [ %.pn28.i.i.i.i.i34.i.7, %.new76 ], [ %.pn28.in.i.i.i.i.i33.i.unr, %.prol.loopexit75 ]
  %.pn30.i.i.i.i.i35.i = load ptr, ptr %.pn30.in.i.i.i.i.i32.i, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i, i64 280
  %.pn30.i.i.i.i.i35.i.1 = load ptr, ptr %i.ck, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.1, i64 280
  %.pn30.i.i.i.i.i35.i.2 = load ptr, ptr %i.cl, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.2, i64 280
  %.pn30.i.i.i.i.i35.i.3 = load ptr, ptr %i.cm, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.3, i64 280
  %.pn30.i.i.i.i.i35.i.4 = load ptr, ptr %i.cn, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.4, i64 280
  %.pn30.i.i.i.i.i35.i.5 = load ptr, ptr %i.co, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.5, i64 280
  %.pn30.i.i.i.i.i35.i.6 = load ptr, ptr %i.cp, align 8, !noalias !18768, !nonnull !13, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.6, i64 280
  %.pn28.i.i.i.i.i34.i.7 = add i64 %.pn28.in.i.i.i.i.i33.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i35.i.7 = load ptr, ptr %i.cq, align 8, !noalias !18768, !nonnull !13, !noundef !13 ; 2 uses
  %i.cr = icmp eq i64 %.pn28.i.i.i.i.i34.i.7, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i35.i.7, i64 280
  br i1 %i.cr, label %.peel.next.i.i.i.preheader, label %.new76

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i24.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i40.i unwind label %bb.n, !noalias !18773

.noexc.i.i.i40.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18741
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i.i175.sink.i.ph54 = phi ptr [ %.sroa.0.0.ph.i.i.i.i175.sink.i.ph, %.peel.next.i.i.i.preheader ], [ %i.eg, %.peel.next.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i.ph55 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i.ph, %.peel.next.i.i.i.preheader ], [ %i.en, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.41.0.i.ph = phi i64 [ %i.bp, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.27.0.i.ph56 = phi i64 [ %.sroa.27.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.27.0.i.ph56.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.10.0.i.ph57 = phi ptr [ %.sroa.10.0.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.10.0.i.ph57.be, %.peel.next.i.i.i.outer.backedge ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i175.sink.i.ph54, i64 8
  %i.cv = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i.ph55, 11
  tail call void @llvm.assume(i1 %i.cv), !noalias !18741
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i.ph55 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val8.i.i.i.peel = load ptr, ptr %i.cx, align 8, !noalias !18749 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  %.val9.i.i.i.peel = load i64, ptr %i.cy, align 8, !noalias !18749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18783)
  %i.cz = load i64, ptr %i.f, align 8, !alias.scope !18786, !noalias !18789, !noundef !13 ; 3 uses
  %i.da = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18786, !noalias !18789, !noundef !13
  %i.db = icmp eq i64 %i.da, %i.cz
  br i1 %i.db, label %bb.o, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel", !prof !11

bb.o:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.cz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18789
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !18798, !noalias !18789
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel": ; preds = %bb.o, %.peel.next.i.i.i.outer
  %i.dc = phi i64 [ %i.cz, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.o ] ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load ptr, ptr %i.l, align 8, !alias.scope !18798, !noalias !18789, !nonnull !13, !noundef !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 44, ptr %i.df, align 1, !noalias !18799
  %i.dg = add nuw i64 %i.dc, 1
  store i64 %i.dg, ptr %i.f, align 8, !alias.scope !18798, !noalias !18789
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i.peel, i64 noundef %.val9.i.i.i.peel)
  %i.dh = icmp eq i64 %.sroa.41.0.i.ph, 0
  br i1 %i.dh, label %.thread166.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel"
  %i.di = add i64 %.sroa.41.0.i.ph, -1            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.ph57, i64 274
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !18800, !noundef !13
  %i.dl = zext i16 %i.dk to i64
  %i.dm = icmp ult i64 %.sroa.27.0.i.ph56, %i.dl
  br i1 %i.dm, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.ph57, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.ph57, i64 274
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i = phi i64 [ %.sroa.27.0.i.ph56, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.27.0.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ] ; 3 uses
  %.sroa.41.0.i = phi i64 [ %i.di, %.peel.next.i.i.i.outer.peel.newph ], [ %i.ec, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ] ; 2 uses
  %.sroa.27.0.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i, 1 ; 2 uses
  %i.dp = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i, 11
  tail call void @llvm.assume(i1 %i.dp), !noalias !18741
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i174.sink221.i ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %.val8.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !18749 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 16
  %.val9.i.i.i = load i64, ptr %i.ds, align 8, !noalias !18749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18819)
  %i.dt = load i64, ptr %i.f, align 8, !alias.scope !18821, !noalias !18789, !noundef !13 ; 3 uses
  %i.du = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18821, !noalias !18789, !noundef !13
  %i.dv = icmp eq i64 %i.du, %i.dt
  br i1 %i.dv, label %bb.p, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i", !prof !11

bb.p:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18789
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18822, !noalias !18789
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i": ; preds = %bb.p, %.peel.next.i.i.i
  %i.dw = phi i64 [ %i.dt, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = load ptr, ptr %i.l, align 8, !alias.scope !18822, !noalias !18789, !nonnull !13, !noundef !13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 44, ptr %i.dz, align 1, !noalias !18823
  %i.ea = add nuw i64 %i.dw, 1
  store i64 %i.ea, ptr %i.f, align 8, !alias.scope !18822, !noalias !18789
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i, i64 noundef %.val9.i.i.i)
  %i.eb = icmp eq i64 %.sroa.41.0.i, 0
  br i1 %i.eb, label %.thread166.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i"
  %i.ec = add i64 %.sroa.41.0.i, -1               ; 2 uses
  %i.ed = load i16, ptr %i.do, align 2, !noalias !18800, !noundef !13
  %i.ee = zext i16 %i.ed to i64
  %i.ef = icmp samesign ult i64 %.sroa.27.0.i, %i.ee
  br i1 %i.ef, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !18824

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel"
  %.lcssa = phi i64 [ %i.di, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i.peel" ], [ %i.ec, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h2c6dd03ce269f324E.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.q
  %.sroa.0.038.i.i.i.i.i.i = phi ptr [ %i.eg, %bb.q ], [ %.sroa.10.0.i.ph57, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.eg = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i, align 8, !noalias !18826, !noundef !13 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eh = add i64 %.sroa.5.037.i.i.i.i.i.i, 1     ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i, i64 272
  %i.ej = load i16, ptr %i.ei, align 8, !noalias !18826 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 274
  %i.el = load i16, ptr %i.ek, align 2, !noalias !18800, !noundef !13
  %i.em = icmp ult i16 %i.ej, %i.el
  br i1 %i.em, label %bb.r, label %.lr.ph.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.en = zext i16 %i.ej to i64                   ; 2 uses
  %i.eo = icmp eq i64 %i.eh, 0
  %i.ep = add nuw nsw i64 %i.en, 1                ; 2 uses
  br i1 %i.eo, label %.peel.next.i.i.i.outer.backedge, label %bb.s

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit84, %.new85, %bb.r
  %.sroa.27.0.i.ph56.be = phi i64 [ %i.ep, %bb.r ], [ 0, %.new85 ], [ 0, %.prol.loopexit84 ]
  %.sroa.10.0.i.ph57.be = phi ptr [ %i.eg, %bb.r ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit84 ], [ %.pn30.i.i.i.i.i.i.7, %.new85 ]
  br label %.peel.next.i.i.i.outer, !llvm.loop !18829

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 280
  %i.er = icmp ult i16 %i.ej, 11
  tail call void @llvm.assume(i1 %i.er), !noalias !18741
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep ; 2 uses
  %xtraiter87 = and i64 %i.eh, 7                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.prol.loopexit84, label %.prol.preheader83

.prol.preheader83:                                ; preds = %bb.s, %.prol.preheader83
  %.pn30.in.i.i.i.i.i.i.prol = phi ptr [ %i.et, %.prol.preheader83 ], [ %i.es, %bb.s ]
  %.pn28.in.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ], [ %i.eh, %bb.s ]
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.prol.preheader83 ], [ 0, %bb.s ]
  %.pn28.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.prol, align 8, !noalias !18830, !nonnull !13, !noundef !13 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.prol.loopexit84, label %.prol.preheader83, !llvm.loop !18834

.prol.loopexit84:                                 ; preds = %.prol.preheader83, %bb.s
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.s ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.es, %bb.s ], [ %i.et, %.prol.preheader83 ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %i.eh, %bb.s ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %i.eu = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i, 7
  br i1 %i.eu, label %.peel.next.i.i.i.outer.backedge, label %.new85

.new85:                                           ; preds = %.prol.loopexit84, %.new85
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.fd, %.new85 ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new85 ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.ev, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.ew, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.ex, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.ey, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.ez, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.fa, align 8, !noalias !18830, !nonnull !13, !noundef !13
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.fb, align 8, !noalias !18830, !nonnull !13, !noundef !13 ; 2 uses
  %i.fc = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.fc, label %.peel.next.i.i.i.outer.backedge, label %.new85, !llvm.loop !18829

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i unwind label %bb.u, !noalias !18835

.noexc.i.i.i.i:                                   ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18741
  unreachable

.thread166.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h2cfd663faccb761bE.exit.peel.i.i.i"
  %i.ff = load i64, ptr %i.f, align 8, !alias.scope !18836, !noalias !18847, !noundef !13 ; 3 uses
  %i.fg = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18836, !noalias !18847, !noundef !13
  %i.fh = icmp eq i64 %i.fg, %i.ff
  br i1 %i.fh, label %.thread168.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit, !prof !11

.thread168.sink.split.i:                          ; preds = %.thread166.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.ff, %.thread166.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18854
  %.pre.i.i.i.i.i.i.i12.i = load i64, ptr %i.f, align 8, !noalias !18854
  br label %_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit

_ZN10serde_core3ser10Serializer11collect_seq17hd7b0ec5b1af0d786E.exit: ; preds = %bb.c, %.thread166.i, %.thread168.sink.split.i
  %.sink224.i = phi i64 [ %i.ff, %.thread166.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i12.i, %.thread168.sink.split.i ] ; 3 uses
  %i.fi = icmp sgt i64 %.sink224.i, -1
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = load ptr, ptr %i.l, align 8, !noalias !18854, !nonnull !13, !noundef !13
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sink224.i
  store i8 93, ptr %i.fk, align 1, !noalias !18854
  %storemerge.i = add nuw i64 %.sink224.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !18854
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf95803aa29d2f269E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18855)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18858, !noalias !18861, !noundef !13 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.a, null          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18855, !noalias !18864 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18855, !noalias !18864
  %.sink.i.i = select i1 %.not.i.not.i, i64 0, i64 %i.e ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18874)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 21 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18877, !noalias !18880, !noundef !13 ; 3 uses
  %i.h = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18877, !noalias !18880, !noundef !13
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18880
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18888, !noalias !18880
  br label %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i

_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18888, !noalias !18880, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 123, ptr %i.n, align 1, !noalias !18889
  %i.o = add nuw i64 %i.j, 1                      ; 4 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !18888, !noalias !18880
  %i.p = icmp eq i64 %.sink.i.i, 0
  br i1 %i.p, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i
  %i.q = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18890, !noalias !18901, !noundef !13
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %.thread171.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit, !prof !11

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
  %.sroa.012.0.i.i88.i.prol = load ptr, ptr %i.t, align 8, !noalias !18906, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i85.i.prol.loopexit, label %.lr.ph.i.i85.i.prol, !llvm.loop !18915

.lr.ph.i.i85.i.prol.loopexit:                     ; preds = %.lr.ph.i.i85.i.prol, %.lr.ph.i.i85.i.preheader
  %.sroa.012.0.i.i88.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.012.015.i.i86.i.unr = phi ptr [ %i.a, %.lr.ph.i.i85.i.preheader ], [ %.sroa.012.0.i.i88.i.prol, %.lr.ph.i.i85.i.prol ]
  %.sroa.011.014.i.i87.i.unr = phi i64 [ %i.c, %.lr.ph.i.i85.i.preheader ], [ %i.u, %.lr.ph.i.i85.i.prol ]
  %i.v = icmp ult i64 %i.c, 8
  br i1 %i.v, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i", label %.lr.ph.i.i85.i

.lr.ph.i.i85.i:                                   ; preds = %.lr.ph.i.i85.i.prol.loopexit, %.lr.ph.i.i85.i
  %.sroa.012.015.i.i86.i = phi ptr [ %.sroa.012.0.i.i88.i.7, %.lr.ph.i.i85.i ], [ %.sroa.012.015.i.i86.i.unr, %.lr.ph.i.i85.i.prol.loopexit ]
end_hunk_4
begin_hunk_5_@"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17hf95803aa29d2f269E":bb.a
  %i.aw = icmp ult i64 %.sroa.5.037.i.i.i.i68.i, 7
  br i1 %i.aw, label %.lr.ph.split.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i74.i = phi ptr [ %i.bf, %.new ], [ %.pn30.in.i.i.i.i74.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i75.i = phi i64 [ %.pn28.i.i.i.i76.i.7, %.new ], [ %.pn28.in.i.i.i.i75.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i77.i = load ptr, ptr %.pn30.in.i.i.i.i74.i, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i, i64 544
  %.pn30.i.i.i.i77.i.1 = load ptr, ptr %i.ax, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.1, i64 544
  %.pn30.i.i.i.i77.i.2 = load ptr, ptr %i.ay, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.2, i64 544
  %.pn30.i.i.i.i77.i.3 = load ptr, ptr %i.az, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.3, i64 544
  %.pn30.i.i.i.i77.i.4 = load ptr, ptr %i.ba, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.4, i64 544
  %.pn30.i.i.i.i77.i.5 = load ptr, ptr %i.bb, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.5, i64 544
  %.pn30.i.i.i.i77.i.6 = load ptr, ptr %i.bc, align 8, !noalias !18929, !nonnull !13, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.6, i64 544
  %.pn28.i.i.i.i76.i.7 = add i64 %.pn28.in.i.i.i.i75.i, -8 ; 2 uses
  %.pn30.i.i.i.i77.i.7 = load ptr, ptr %i.bd, align 8, !noalias !18929, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = icmp eq i64 %.pn28.i.i.i.i76.i.7, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i77.i.7, i64 544
  br i1 %i.be, label %.lr.ph.split.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i66.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i83.i unwind label %bb.i, !noalias !18934

.noexc.i.i83.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18928
  unreachable

.critedge.i54.i:                                  ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41, !noalias !18935
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.prol.loopexit, %.new, %bb.f, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i"
  %.sroa.0.0.ph.i.i.i73137.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %i.ai, %.new ], [ %i.ai, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i71136.i = phi i64 [ %i.ap, %bb.f ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %i.ap, %.new ], [ %i.ap, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i79.i = phi i64 [ %i.ar, %bb.f ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i80.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.0.lcssa.i.i90.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i60.i" ], [ %.pn30.i.i.i.i77.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i77.i.7, %.new ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73137.i, i64 8
  %i.bi = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i71136.i, 11
  tail call void @llvm.assume(i1 %i.bi), !noalias !18928
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.6.sroa.4.0.ph.i.i.i71136.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i73137.i, i64 272
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.6.sroa.4.0.ph.i.i.i71136.i ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val9.peel.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !18936, !nonnull !13, !noundef !13
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %.val10.peel.i.i.i = load i64, ptr %i.bn, align 8, !noalias !18936
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  %.val11.peel.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !18936 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 16
  %.val12.peel.i.i.i = load i64, ptr %i.bp, align 8, !noalias !18936
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.peel.i.i.i, i64 noundef %.val10.peel.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18948)
  %i.bq = load i64, ptr %i.f, align 8, !alias.scope !18951, !noalias !18954, !noundef !13 ; 3 uses
  %i.br = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18951, !noalias !18954, !noundef !13
  %i.bs = icmp eq i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.j, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i", !prof !11

bb.j:                                             ; preds = %.lr.ph.split.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.bq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !18954
  %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18964, !noalias !18954
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i": ; preds = %bb.j, %.lr.ph.split.i.i.i
  %i.bt = phi i64 [ %i.bq, %.lr.ph.split.i.i.i ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.peel.i.i.i, %bb.j ] ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load ptr, ptr %i.l, align 8, !alias.scope !18964, !noalias !18954, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 58, ptr %i.bw, align 1, !noalias !18965
  %i.bx = add nuw i64 %i.bt, 1
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !18964, !noalias !18954
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.peel.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.peel.i.i.i, i64 noundef %.val12.peel.i.i.i)
  %i.by = icmp eq i64 %.sink.i.i, 1
  br i1 %i.by, label %.thread169.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"
  %i.bz = add i64 %.sink.i.i, -2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i, i64 538
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !18966, !noundef !13
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i, %i.cc
  br i1 %i.cd, label %.thread147.i, label %.lr.ph.i.i.i.i28.i

.thread147.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i"
  %i.ce = add nuw nsw i64 %.sroa.7.0.i.i.i79.i, 1
  br label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.prol.loopexit79, %.new80, %bb.l, %.thread147.i
  %.sroa.0.0.ph.i.i.i178.sink232.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread147.i ], [ %i.cf, %bb.l ], [ %i.cf, %.new80 ], [ %i.cf, %.prol.loopexit79 ]
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i, %.thread147.i ], [ %i.cm, %bb.l ], [ %i.cm, %.new80 ], [ %i.cm, %.prol.loopexit79 ]
  %.sroa.33.1.i.ph = phi i64 [ %i.ce, %.thread147.i ], [ %i.co, %bb.l ], [ 0, %.new80 ], [ 0, %.prol.loopexit79 ]
  %.sroa.10.1.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i, %.thread147.i ], [ %i.cf, %bb.l ], [ %.pn30.i.i.i.i39.i.lcssa.unr, %.prol.loopexit79 ], [ %.pn30.i.i.i.i39.i.7, %.new80 ]
  br label %.peel.next.i.i.i.outer

.lr.ph.i.i.i.i28.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i", %bb.k
  %.sroa.0.038.i.i.i.i29.i = phi ptr [ %i.cf, %bb.k ], [ %.sroa.07.0.i.i.i80.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i = phi i64 [ %i.cg, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i22.i" ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.0.038.i.i.i.i29.i, align 8, !noalias !18977, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i31.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i31.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i28.i
  %i.cg = add i64 %.sroa.5.037.i.i.i.i30.i, 1     ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i, i64 536
  %i.ci = load i16, ptr %i.ch, align 8, !noalias !18977 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 538
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !18966, !noundef !13
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
  tail call void @llvm.assume(i1 %i.cq), !noalias !18928
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %xtraiter82 = and i64 %i.cg, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.prol.loopexit79, label %.prol.preheader78

.prol.preheader78:                                ; preds = %bb.m, %.prol.preheader78
  %.pn30.in.i.i.i.i36.i.prol = phi ptr [ %i.cs, %.prol.preheader78 ], [ %i.cr, %bb.m ]
  %.pn28.in.i.i.i.i37.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ], [ %i.cg, %bb.m ]
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader78 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i38.i.prol = add i64 %.pn28.in.i.i.i.i37.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.prol, align 8, !noalias !18980, !nonnull !13, !noundef !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.prol, i64 544 ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit79, label %.prol.preheader78, !llvm.loop !18984

.prol.loopexit79:                                 ; preds = %.prol.preheader78, %bb.m
  %.pn30.i.i.i.i39.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i39.i.prol, %.prol.preheader78 ]
  %.pn30.in.i.i.i.i36.i.unr = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %.prol.preheader78 ]
  %.pn28.in.i.i.i.i37.i.unr = phi i64 [ %i.cg, %bb.m ], [ %.pn28.i.i.i.i38.i.prol, %.prol.preheader78 ]
  %i.ct = icmp ult i64 %.sroa.5.037.i.i.i.i30.i, 7
  br i1 %i.ct, label %.peel.next.i.i.i.preheader, label %.new80

.new80:                                           ; preds = %.prol.loopexit79, %.new80
  %.pn30.in.i.i.i.i36.i = phi ptr [ %i.dc, %.new80 ], [ %.pn30.in.i.i.i.i36.i.unr, %.prol.loopexit79 ]
  %.pn28.in.i.i.i.i37.i = phi i64 [ %.pn28.i.i.i.i38.i.7, %.new80 ], [ %.pn28.in.i.i.i.i37.i.unr, %.prol.loopexit79 ]
  %.pn30.i.i.i.i39.i = load ptr, ptr %.pn30.in.i.i.i.i36.i, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i, i64 544
  %.pn30.i.i.i.i39.i.1 = load ptr, ptr %i.cu, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.1, i64 544
  %.pn30.i.i.i.i39.i.2 = load ptr, ptr %i.cv, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.2, i64 544
  %.pn30.i.i.i.i39.i.3 = load ptr, ptr %i.cw, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.3, i64 544
  %.pn30.i.i.i.i39.i.4 = load ptr, ptr %i.cx, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.4, i64 544
  %.pn30.i.i.i.i39.i.5 = load ptr, ptr %i.cy, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.5, i64 544
  %.pn30.i.i.i.i39.i.6 = load ptr, ptr %i.cz, align 8, !noalias !18980, !nonnull !13, !noundef !13
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.6, i64 544
  %.pn28.i.i.i.i38.i.7 = add i64 %.pn28.in.i.i.i.i37.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.7 = load ptr, ptr %i.da, align 8, !noalias !18980, !nonnull !13, !noundef !13 ; 2 uses
  %i.db = icmp eq i64 %.pn28.i.i.i.i38.i.7, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.7, i64 544
  br i1 %i.db, label %.peel.next.i.i.i.preheader, label %.new80

bb.n:                                             ; preds = %.lr.ph.i.i.i.i28.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i45.i unwind label %bb.o, !noalias !18985

.noexc.i.i45.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18928
  unreachable

.peel.next.i.i.i.outer:                           ; preds = %.peel.next.i.i.i.outer.backedge, %.peel.next.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i178.sink232.i.ph58 = phi ptr [ %.sroa.0.0.ph.i.i.i178.sink232.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fo, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph59 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph, %.peel.next.i.i.i.preheader ], [ %i.fv, %.peel.next.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.47.0.i.ph = phi i64 [ %i.bz, %.peel.next.i.i.i.preheader ], [ %.lcssa, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.33.1.i.ph60 = phi i64 [ %.sroa.33.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.33.1.i.ph60.be, %.peel.next.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.10.1.i.ph61 = phi ptr [ %.sroa.10.1.i.ph, %.peel.next.i.i.i.preheader ], [ %.sroa.10.1.i.ph61.be, %.peel.next.i.i.i.outer.backedge ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink232.i.ph58, i64 8
  %i.df = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph59, 11
  tail call void @llvm.assume(i1 %i.df), !noalias !18928
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph59 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i178.sink232.i.ph58, i64 272
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i.ph59 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dg, i64 8
  %.val9.i.i.i.peel = load ptr, ptr %i.dj, align 8, !noalias !18936 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dg, i64 16
  %.val10.i.i.i.peel = load i64, ptr %i.dk, align 8, !noalias !18936
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %.val11.i.i.i.peel = load ptr, ptr %i.dl, align 8, !noalias !18936 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 16
  %.val12.i.i.i.peel = load i64, ptr %i.dm, align 8, !noalias !18936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18995)
  %i.dn = load i64, ptr %i.f, align 8, !alias.scope !18998, !noalias !19001, !noundef !13 ; 3 uses
  %i.do = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !18998, !noalias !19001, !noundef !13
  %i.dp = icmp eq i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %.peel.next.i.i.i.outer
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dn, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19001
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !19009, !noalias !19001
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.peel.next.i.i.i.outer
  %i.dq = phi i64 [ %i.dn, %.peel.next.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.p ] ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = load ptr, ptr %i.l, align 8, !alias.scope !19009, !noalias !19001, !nonnull !13, !noundef !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 44, ptr %i.dt, align 1, !noalias !19010
  %i.du = add nuw i64 %i.dq, 1
  store i64 %i.du, ptr %i.f, align 8, !alias.scope !19009, !noalias !19001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.peel, i64 noundef %.val10.i.i.i.peel)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19017)
  %i.dv = load i64, ptr %i.f, align 8, !alias.scope !19019, !noalias !19020, !noundef !13 ; 3 uses
  %i.dw = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !19019, !noalias !19020, !noundef !13
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.r, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel", !prof !11

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19020
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel = load i64, ptr %i.f, align 8, !alias.scope !19021, !noalias !19020
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel": ; preds = %bb.r, %bb.q
  %i.dy = phi i64 [ %i.dv, %bb.q ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i.peel, %bb.r ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.l, align 8, !alias.scope !19021, !noalias !19020, !nonnull !13, !noundef !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 58, ptr %i.eb, align 1, !noalias !19022
  %i.ec = add nuw i64 %i.dy, 1
  store i64 %i.ec, ptr %i.f, align 8, !alias.scope !19021, !noalias !19020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.peel) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i.peel, i64 noundef %.val12.i.i.i.peel)
  %i.ed = icmp eq i64 %.sroa.47.0.i.ph, 0
  br i1 %i.ed, label %.thread169.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel"
  %i.ee = add i64 %.sroa.47.0.i.ph, -1            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.ph61, i64 538
  %i.eg = load i16, ptr %i.ef, align 2, !noalias !19023, !noundef !13
  %i.eh = zext i16 %i.eg to i64
  %i.ei = icmp ult i64 %.sroa.33.1.i.ph60, %i.eh
  br i1 %i.ei, label %.peel.next.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.preheader

.peel.next.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.ph61, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.ph61, i64 272
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.ph61, i64 538
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i", %.peel.next.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i = phi i64 [ %.sroa.33.1.i.ph60, %.peel.next.i.i.i.outer.peel.newph ], [ %.sroa.33.1.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ] ; 4 uses
  %.sroa.47.0.i = phi i64 [ %i.ee, %.peel.next.i.i.i.outer.peel.newph ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ] ; 2 uses
  %.sroa.33.1.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i, 1 ; 2 uses
  %i.em = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i, 11
  tail call void @llvm.assume(i1 %i.em), !noalias !18928
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %.sroa.6.sroa.4.0.ph.i.i.i177.sink231.i ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !18936 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 16
  %.val10.i.i.i = load i64, ptr %i.eq, align 8, !noalias !18936
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.val11.i.i.i = load ptr, ptr %i.er, align 8, !noalias !18936 ; 2 uses
  %i.es = getelementptr i8, ptr %i.eo, i64 16
  %.val12.i.i.i = load i64, ptr %i.es, align 8, !noalias !18936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19040)
  %i.et = load i64, ptr %i.f, align 8, !alias.scope !19042, !noalias !19001, !noundef !13 ; 3 uses
  %i.eu = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !19042, !noalias !19001, !noundef !13
  %i.ev = icmp eq i64 %i.eu, %i.et
  br i1 %i.ev, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %.peel.next.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.et, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19001
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !19043, !noalias !19001
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.peel.next.i.i.i
  %i.ew = phi i64 [ %i.et, %.peel.next.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.l, align 8, !alias.scope !19043, !noalias !19001, !nonnull !13, !noundef !13
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 44, ptr %i.ez, align 1, !noalias !19044
  %i.fa = add nuw i64 %i.ew, 1
  store i64 %i.fa, ptr %i.f, align 8, !alias.scope !19043, !noalias !19001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i, i64 noundef %.val10.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19051)
  %i.fb = load i64, ptr %i.f, align 8, !alias.scope !19053, !noalias !19020, !noundef !13 ; 3 uses
  %i.fc = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !19053, !noalias !19020, !noundef !13
  %i.fd = icmp eq i64 %i.fc, %i.fb
  br i1 %i.fd, label %bb.u, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i", !prof !11

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.fb, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19020
  %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !19054, !noalias !19020
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i": ; preds = %bb.u, %bb.t
  %i.fe = phi i64 [ %i.fb, %bb.t ], [ %.pre.i.i.i.i.i.i.i11.i.i.i.i.i.i, %bb.u ] ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = load ptr, ptr %i.l, align 8, !alias.scope !19054, !noalias !19020, !nonnull !13, !noundef !13
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 58, ptr %i.fh, align 1, !noalias !19055
  %i.fi = add nuw i64 %i.fe, 1
  store i64 %i.fi, ptr %i.f, align 8, !alias.scope !19054, !noalias !19020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val11.i.i.i, i64 noundef %.val12.i.i.i)
  %i.fj = icmp eq i64 %.sroa.47.0.i, 0
  br i1 %i.fj, label %.thread169.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i"
  %i.fk = add i64 %.sroa.47.0.i, -1               ; 2 uses
  %i.fl = load i16, ptr %i.el, align 2, !noalias !19023, !noundef !13
  %i.fm = zext i16 %i.fl to i64
  %i.fn = icmp samesign ult i64 %.sroa.33.1.i, %i.fm
  br i1 %i.fn, label %.peel.next.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, !llvm.loop !19056

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel"
  %.lcssa = phi i64 [ %i.ee, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i.peel" ], [ %i.fk, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h98a8d51d82c9a6bfE.exit.i.i" ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.v
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.fo, %bb.v ], [ %.sroa.10.1.i.ph61, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.fp, %bb.v ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.fo = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !19057, !noundef !13 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fp = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 536
  %i.fr = load i16, ptr %i.fq, align 8, !noalias !19057 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 538
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !19023, !noundef !13
  %i.fu = icmp ult i16 %i.fr, %i.ft
  br i1 %i.fu, label %bb.w, label %.lr.ph.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fv = zext i16 %i.fr to i64                   ; 2 uses
  %i.fw = icmp eq i64 %i.fp, 0
  %i.fx = add nuw nsw i64 %i.fv, 1                ; 2 uses
  br i1 %i.fw, label %.peel.next.i.i.i.outer.backedge, label %bb.x

.peel.next.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit88, %.new89, %bb.w
  %.sroa.33.1.i.ph60.be = phi i64 [ %i.fx, %bb.w ], [ 0, %.new89 ], [ 0, %.prol.loopexit88 ]
  %.sroa.10.1.i.ph61.be = phi ptr [ %i.fo, %bb.w ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit88 ], [ %.pn30.i.i.i.i.i.7, %.new89 ]
  br label %.peel.next.i.i.i.outer, !llvm.loop !19060

bb.x:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 544
  %i.fz = icmp ult i16 %i.fr, 11
  tail call void @llvm.assume(i1 %i.fz), !noalias !18928
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx ; 2 uses
  %xtraiter91 = and i64 %i.fp, 7                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.prol.loopexit88, label %.prol.preheader87

.prol.preheader87:                                ; preds = %bb.x, %.prol.preheader87
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.gb, %.prol.preheader87 ], [ %i.ga, %bb.x ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ], [ %i.fp, %bb.x ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.prol.preheader87 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !19061, !nonnull !13, !noundef !13 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.prol.loopexit88, label %.prol.preheader87, !llvm.loop !19065

.prol.loopexit88:                                 ; preds = %.prol.preheader87, %bb.x
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader87 ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.ga, %bb.x ], [ %i.gb, %.prol.preheader87 ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %i.fp, %bb.x ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader87 ]
  %i.gc = icmp ult i64 %.sroa.5.037.i.i.i.i.i, 7
  br i1 %i.gc, label %.peel.next.i.i.i.outer.backedge, label %.new89

.new89:                                           ; preds = %.prol.loopexit88, %.new89
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.gl, %.new89 ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new89 ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit88 ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.gd, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.ge, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.gf, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.gg, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.gh, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.gi, align 8, !noalias !19061, !nonnull !13, !noundef !13
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.gj, align 8, !noalias !19061, !nonnull !13, !noundef !13 ; 2 uses
  %i.gk = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.gk, label %.peel.next.i.i.i.outer.backedge, label %.new89, !llvm.loop !19060

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !19066

.noexc.i.i.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !18928
  unreachable

.thread169.i:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7be09d7562b691b9E.exit.peel.i.i.i"
  %i.gn = load i64, ptr %i.f, align 8, !alias.scope !19067, !noalias !19078, !noundef !13 ; 3 uses
  %i.go = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !19067, !noalias !19078, !noundef !13
  %i.gp = icmp eq i64 %i.go, %i.gn
  br i1 %i.gp, label %.thread171.sink.split.i, label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit, !prof !11

.thread171.sink.split.i:                          ; preds = %.thread169.i, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.c ], [ %i.gn, %.thread169.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.sink.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !19085
  %.pre.i.i.i.i.i.i.i13.i = load i64, ptr %i.f, align 8, !noalias !19085
  br label %_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit

_ZN10serde_core3ser10Serializer11collect_map17h140e96e9679f60b5E.exit: ; preds = %bb.c, %.thread169.i, %.thread171.sink.split.i
  %.sink235.i = phi i64 [ %i.gn, %.thread169.i ], [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i.i13.i, %.thread171.sink.split.i ] ; 3 uses
  %i.gq = icmp sgt i64 %.sink235.i, -1
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = load ptr, ptr %i.l, align 8, !noalias !19085, !nonnull !13, !noundef !13
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink235.i
  store i8 125, ptr %i.gs, align 1, !noalias !19085
  %storemerge.i = add nuw i64 %.sink235.i, 1
  store i64 %storemerge.i, ptr %i.f, align 8, !noalias !19085
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h4286218b04cf77c9E"(ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19089)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !641, !alias.scope !19086, !noalias !19089, !noundef !13
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !641, !alias.scope !19086, !noalias !19089, !noundef !13
  %.not53.i = icmp eq i64 %i.h, -9223372036854775808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19094)
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !19097, !noalias !19098, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19102)
  %i.i = load i64, ptr %.val.i.i.i, align 8, !range !26, !alias.scope !19102, !noalias !19105, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !19102, !noalias !19105, !noundef !13 ; 4 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.i, %i.k
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19109)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19112, !noalias !19113, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  store i8 123, ptr %i.q, align 1, !noalias !19115
  %i.r = add nuw i64 %i.k, 1
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !19112, !noalias !19113
  br label %bb.c

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i: ; preds = %bb.a
  %i.s = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !19116 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !341

bb.b:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i
  %i.t = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.s), !noalias !19116
  br label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i
  store i8 0, ptr %i.d, align 8, !noalias !19117
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !19117
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19117
  br i1 %.not.i, label %bb.d, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i": ; preds = %bb.c
  %i.u = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb38582f298d21f44E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @370, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) ; 2 uses
  %.not55.i = icmp eq ptr %i.u, null
  br i1 %.not55.i, label %bb.d, label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

bb.d:                                             ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit.i", %bb.c
  br i1 %.not53.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.d, align 8, !range !1013, !noalias !19117, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.thread.i", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.thread.i": ; preds = %bb.e
  %i.x = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E(), !noalias !19118
  br label %"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..keys..Key$GT$9serialize17hf0c308bd3609f42bE.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h636e2801807096ecE.exit77.i": ; preds = %bb.e
  %i.y = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb38582f298d21f44E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @344, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %.not57.i = icmp eq ptr %i.y, null
end_hunk_5
begin_hunk_6_@"_ZN4dump6reader2v68V6Reader7batches28_$u7b$$u7b$closure$u7d$$u7d$17h71eb7b00999d5052E":bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74025
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit38"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit38": ; preds = %bb.hc, %bb.hb, %bb.b, %bb.gz, %bb.ha
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit": ; preds = %bb.gx, %.body
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4dump6reader2v68V6Reader7batches28_$u7b$$u7b$closure$u7d$$u7d$17hef69019cd9466c16E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1515, !noundef !13
  %i.b = icmp eq i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !1013
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.g = load ptr, ptr %i.f, align 8, !noundef !13 ; 4 uses
  %.not = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74030)
  %i.l = icmp ne i64 %i.k, 0
  %.not879 = select i1 %.not, i1 %i.l, i1 false
  br i1 %.not879, label %bb.c, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread"

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.k, -1                         ; 4 uses
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270", label %.lr.ph.i.i295.preheader

.lr.ph.i.i295.preheader:                          ; preds = %bb.c
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i295.prol.loopexit, label %.lr.ph.i.i295.prol

.lr.ph.i.i295.prol:                               ; preds = %.lr.ph.i.i295.preheader, %.lr.ph.i.i295.prol
  %.sroa.012.015.i.i296.prol = phi ptr [ %.sroa.012.0.i.i298.prol, %.lr.ph.i.i295.prol ], [ %i.g, %.lr.ph.i.i295.preheader ]
  %.sroa.011.014.i.i297.prol = phi i64 [ %i.p, %.lr.ph.i.i295.prol ], [ %i.i, %.lr.ph.i.i295.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i295.prol ], [ 0, %.lr.ph.i.i295.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i296.prol, i64 72
  %i.p = add i64 %.sroa.011.014.i.i297.prol, -1   ; 2 uses
  %.sroa.012.0.i.i298.prol = load ptr, ptr %i.o, align 8, !noalias !74033, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i295.prol.loopexit, label %.lr.ph.i.i295.prol, !llvm.loop !74038

.lr.ph.i.i295.prol.loopexit:                      ; preds = %.lr.ph.i.i295.prol, %.lr.ph.i.i295.preheader
  %.sroa.012.0.i.i298.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i295.preheader ], [ %.sroa.012.0.i.i298.prol, %.lr.ph.i.i295.prol ]
  %.sroa.012.015.i.i296.unr = phi ptr [ %i.g, %.lr.ph.i.i295.preheader ], [ %.sroa.012.0.i.i298.prol, %.lr.ph.i.i295.prol ]
  %.sroa.011.014.i.i297.unr = phi i64 [ %i.i, %.lr.ph.i.i295.preheader ], [ %i.p, %.lr.ph.i.i295.prol ]
  %i.q = icmp ult i64 %i.i, 8
  br i1 %i.q, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270", label %.lr.ph.i.i295

.lr.ph.i.i295:                                    ; preds = %.lr.ph.i.i295.prol.loopexit, %.lr.ph.i.i295
  %.sroa.012.015.i.i296 = phi ptr [ %.sroa.012.0.i.i298.7, %.lr.ph.i.i295 ], [ %.sroa.012.015.i.i296.unr, %.lr.ph.i.i295.prol.loopexit ]
  %.sroa.011.014.i.i297 = phi i64 [ %i.z, %.lr.ph.i.i295 ], [ %.sroa.011.014.i.i297.unr, %.lr.ph.i.i295.prol.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i296, i64 72
  %.sroa.012.0.i.i298 = load ptr, ptr %i.r, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298, i64 72
  %.sroa.012.0.i.i298.1 = load ptr, ptr %i.s, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.1, i64 72
  %.sroa.012.0.i.i298.2 = load ptr, ptr %i.t, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.2, i64 72
  %.sroa.012.0.i.i298.3 = load ptr, ptr %i.u, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.3, i64 72
  %.sroa.012.0.i.i298.4 = load ptr, ptr %i.v, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.4, i64 72
  %.sroa.012.0.i.i298.5 = load ptr, ptr %i.w, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.5, i64 72
  %.sroa.012.0.i.i298.6 = load ptr, ptr %i.x, align 8, !noalias !74033, !nonnull !13, !noundef !13
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i298.6, i64 72
  %i.z = add i64 %.sroa.011.014.i.i297, -8        ; 2 uses
  %.sroa.012.0.i.i298.7 = load ptr, ptr %i.y, align 8, !noalias !74033, !nonnull !13, !noundef !13 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270", label %.lr.ph.i.i295

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270": ; preds = %.lr.ph.i.i295.prol.loopexit, %.lr.ph.i.i295, %bb.c
  %.sroa.012.0.lcssa.i.i300 = phi ptr [ %i.g, %bb.c ], [ %.sroa.012.0.i.i298.lcssa.unr, %.lr.ph.i.i295.prol.loopexit ], [ %.sroa.012.0.i.i298.7, %.lr.ph.i.i295 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i300, i64 54
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !74039, !noundef !13
  %.not880 = icmp eq i16 %i.ac, 0
  br i1 %.not880, label %.lr.ph.i.i.i.i276, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301"

.lr.ph.i.i.i.i276:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270", %bb.d
  %.sroa.0.038.i.i.i.i277 = phi ptr [ %i.ad, %bb.d ], [ %.sroa.012.0.lcssa.i.i300, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ] ; 2 uses
  %.sroa.5.037.i.i.i.i278 = phi i64 [ %i.ae, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.038.i.i.i.i277, align 8, !noalias !74048, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i279 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i279, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i276
  %i.ae = add i64 %.sroa.5.037.i.i.i.i278, 1      ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i277, i64 52
  %i.ag = load i16, ptr %i.af, align 4, !noalias !74048 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 54
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !74039, !noundef !13
  %i.aj = icmp ult i16 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %.lr.ph.i.i.i.i276

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i16 %i.ag to i64                   ; 4 uses
  %i.al = icmp eq i64 %i.ae, 0
  %i.am = add nuw nsw i64 %i.ak, 1                ; 2 uses
  br i1 %i.al, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ao = icmp ult i16 %i.ag, 11
  tail call void @llvm.assume(i1 %i.ao), !noalias !74030
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %xtraiter1255 = and i64 %i.ae, 7                ; 2 uses
  %lcmp.mod1256.not = icmp eq i64 %xtraiter1255, 0
  br i1 %lcmp.mod1256.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.pn30.in.i.i.i.i284.prol = phi ptr [ %i.aq, %.prol.preheader ], [ %i.ap, %bb.f ]
  %.pn28.in.i.i.i.i285.prol = phi i64 [ %.pn28.i.i.i.i286.prol, %.prol.preheader ], [ %i.ae, %bb.f ]
  %prol.iter1257 = phi i64 [ %prol.iter1257.next, %.prol.preheader ], [ 0, %bb.f ]
  %.pn28.i.i.i.i286.prol = add i64 %.pn28.in.i.i.i.i285.prol, -1 ; 2 uses
  %.pn30.i.i.i.i287.prol = load ptr, ptr %.pn30.in.i.i.i.i284.prol, align 8, !noalias !74051, !nonnull !13, !noundef !13 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.prol, i64 72 ; 2 uses
  %prol.iter1257.next = add i64 %prol.iter1257, 1 ; 2 uses
  %prol.iter1257.cmp.not = icmp eq i64 %prol.iter1257.next, %xtraiter1255
  br i1 %prol.iter1257.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !74055

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.pn30.i.i.i.i287.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.pn30.i.i.i.i287.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i284.unr = phi ptr [ %i.ap, %bb.f ], [ %i.aq, %.prol.preheader ]
  %.pn28.in.i.i.i.i285.unr = phi i64 [ %i.ae, %bb.f ], [ %.pn28.i.i.i.i286.prol, %.prol.preheader ]
  %i.ar = icmp ult i64 %.sroa.5.037.i.i.i.i278, 7
  br i1 %i.ar, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i284 = phi ptr [ %i.ba, %.new ], [ %.pn30.in.i.i.i.i284.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i285 = phi i64 [ %.pn28.i.i.i.i286.7, %.new ], [ %.pn28.in.i.i.i.i285.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i287 = load ptr, ptr %.pn30.in.i.i.i.i284, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287, i64 72
  %.pn30.i.i.i.i287.1 = load ptr, ptr %i.as, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.1, i64 72
  %.pn30.i.i.i.i287.2 = load ptr, ptr %i.at, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.2, i64 72
  %.pn30.i.i.i.i287.3 = load ptr, ptr %i.au, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.3, i64 72
  %.pn30.i.i.i.i287.4 = load ptr, ptr %i.av, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.4, i64 72
  %.pn30.i.i.i.i287.5 = load ptr, ptr %i.aw, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.5, i64 72
  %.pn30.i.i.i.i287.6 = load ptr, ptr %i.ax, align 8, !noalias !74051, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.6, i64 72
  %.pn28.i.i.i.i286.7 = add i64 %.pn28.in.i.i.i.i285, -8 ; 2 uses
  %.pn30.i.i.i.i287.7 = load ptr, ptr %i.ay, align 8, !noalias !74051, !nonnull !13, !noundef !13 ; 2 uses
  %i.az = icmp eq i64 %.pn28.i.i.i.i286.7, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i287.7, i64 72
  br i1 %i.az, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301", label %.new

bb.g:                                             ; preds = %.lr.ph.i.i.i.i276
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i293 unwind label %bb.h, !noalias !74056

.noexc.i.i293:                                    ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74030
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301": ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270", %bb.e
  %.sroa.0.0.ph.i.i.i283689 = phi ptr [ %i.ad, %bb.e ], [ %.sroa.012.0.lcssa.i.i300, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ], [ %i.ad, %.new ], [ %i.ad, %.prol.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i281688 = phi i64 [ %i.ak, %bb.e ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ], [ %i.ak, %.new ], [ %i.ak, %.prol.loopexit ] ; 2 uses
  %.sroa.7.0.i.i.i289 = phi i64 [ %i.am, %bb.e ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i290 = phi ptr [ %i.ad, %bb.e ], [ %.sroa.012.0.lcssa.i.i300, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i270" ], [ %.pn30.i.i.i.i287.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i287.7, %.new ] ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i281688, 11
  tail call void @llvm.assume(i1 %i.bc), !noalias !74030
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i283689, i64 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.6.sroa.4.0.ph.i.i.i281688 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !74030, !noalias !74057, !nonnull !13, !noundef !13 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !74030, !noalias !74057, !noundef !13 ; 5 uses
  switch i64 %.val1.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i [
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader"
    i64 1, label %.lr.ph.split.us14.i
  ]

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader": ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301"
  %i.bh = icmp eq i64 %i.m, 0
  br i1 %i.bh, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263"
  %.sroa.12.1950 = phi ptr [ %.sroa.07.0.i.i.i252, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263" ], [ %.sroa.07.0.i.i.i290, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader" ] ; 3 uses
  %.sroa.42.1949 = phi i64 [ %.sroa.7.0.i.i.i251, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263" ], [ %.sroa.7.0.i.i.i289, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader" ] ; 2 uses
  %.sroa.59.1948 = phi i64 [ %i.bi, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263" ], [ %i.m, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader" ]
  %i.bi = add i64 %.sroa.59.1948, -1              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.12.1950, i64 54
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !74059, !noundef !13
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp ult i64 %.sroa.42.1949, %i.bl
  br i1 %i.bm, label %.thread824, label %.lr.ph.i.i.i.i238

.thread824:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232"
  %i.bn = add nuw nsw i64 %.sroa.42.1949, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263"

.lr.ph.i.i.i.i238:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232", %bb.i
  %.sroa.0.038.i.i.i.i239 = phi ptr [ %i.bo, %bb.i ], [ %.sroa.12.1950, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232" ] ; 2 uses
  %.sroa.5.037.i.i.i.i240 = phi i64 [ %i.bp, %bb.i ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232" ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.0.038.i.i.i.i239, align 8, !noalias !74070, !noundef !13 ; 5 uses
  %.not.i.i.i.i.i241 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i241, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i238
  %i.bp = add i64 %.sroa.5.037.i.i.i.i240, 1      ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i239, i64 52
  %i.br = load i16, ptr %i.bq, align 4, !noalias !74070 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 54
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !74059, !noundef !13
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %bb.j, label %.lr.ph.i.i.i.i238

bb.j:                                             ; preds = %bb.i
  %i.bv = zext i16 %i.br to i64
  %i.bw = icmp eq i64 %i.bp, 0
  %i.bx = add nuw nsw i64 %i.bv, 1                ; 2 uses
  br i1 %i.bw, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bz = icmp ult i16 %i.br, 11
  tail call void @llvm.assume(i1 %i.bz), !noalias !74030
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %xtraiter1269 = and i64 %i.bp, 7                ; 2 uses
  %lcmp.mod1270.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1270.not, label %.prol.loopexit1266, label %.prol.preheader1265

.prol.preheader1265:                              ; preds = %bb.k, %.prol.preheader1265
  %.pn30.in.i.i.i.i246.prol = phi ptr [ %i.cb, %.prol.preheader1265 ], [ %i.ca, %bb.k ]
  %.pn28.in.i.i.i.i247.prol = phi i64 [ %.pn28.i.i.i.i248.prol, %.prol.preheader1265 ], [ %i.bp, %bb.k ]
  %prol.iter1271 = phi i64 [ %prol.iter1271.next, %.prol.preheader1265 ], [ 0, %bb.k ]
  %.pn28.i.i.i.i248.prol = add i64 %.pn28.in.i.i.i.i247.prol, -1 ; 2 uses
  %.pn30.i.i.i.i249.prol = load ptr, ptr %.pn30.in.i.i.i.i246.prol, align 8, !noalias !74073, !nonnull !13, !noundef !13 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.prol, i64 72 ; 2 uses
  %prol.iter1271.next = add i64 %prol.iter1271, 1 ; 2 uses
  %prol.iter1271.cmp.not = icmp eq i64 %prol.iter1271.next, %xtraiter1269
  br i1 %prol.iter1271.cmp.not, label %.prol.loopexit1266, label %.prol.preheader1265, !llvm.loop !74077

.prol.loopexit1266:                               ; preds = %.prol.preheader1265, %bb.k
  %.pn30.i.i.i.i249.lcssa.unr = phi ptr [ poison, %bb.k ], [ %.pn30.i.i.i.i249.prol, %.prol.preheader1265 ]
  %.pn30.in.i.i.i.i246.unr = phi ptr [ %i.ca, %bb.k ], [ %i.cb, %.prol.preheader1265 ]
  %.pn28.in.i.i.i.i247.unr = phi i64 [ %i.bp, %bb.k ], [ %.pn28.i.i.i.i248.prol, %.prol.preheader1265 ]
  %i.cc = icmp ult i64 %.sroa.5.037.i.i.i.i240, 7
  br i1 %i.cc, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263", label %.new1267

.new1267:                                         ; preds = %.prol.loopexit1266, %.new1267
  %.pn30.in.i.i.i.i246 = phi ptr [ %i.cl, %.new1267 ], [ %.pn30.in.i.i.i.i246.unr, %.prol.loopexit1266 ]
  %.pn28.in.i.i.i.i247 = phi i64 [ %.pn28.i.i.i.i248.7, %.new1267 ], [ %.pn28.in.i.i.i.i247.unr, %.prol.loopexit1266 ]
  %.pn30.i.i.i.i249 = load ptr, ptr %.pn30.in.i.i.i.i246, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249, i64 72
  %.pn30.i.i.i.i249.1 = load ptr, ptr %i.cd, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.1, i64 72
  %.pn30.i.i.i.i249.2 = load ptr, ptr %i.ce, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.2, i64 72
  %.pn30.i.i.i.i249.3 = load ptr, ptr %i.cf, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.3, i64 72
  %.pn30.i.i.i.i249.4 = load ptr, ptr %i.cg, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.4, i64 72
  %.pn30.i.i.i.i249.5 = load ptr, ptr %i.ch, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.5, i64 72
  %.pn30.i.i.i.i249.6 = load ptr, ptr %i.ci, align 8, !noalias !74073, !nonnull !13, !noundef !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.6, i64 72
  %.pn28.i.i.i.i248.7 = add i64 %.pn28.in.i.i.i.i247, -8 ; 2 uses
  %.pn30.i.i.i.i249.7 = load ptr, ptr %i.cj, align 8, !noalias !74073, !nonnull !13, !noundef !13 ; 2 uses
  %i.ck = icmp eq i64 %.pn28.i.i.i.i248.7, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i249.7, i64 72
  br i1 %i.ck, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263", label %.new1267

bb.l:                                             ; preds = %.lr.ph.i.i.i.i238
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i255 unwind label %bb.m, !noalias !74078

.noexc.i.i255:                                    ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74030
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263": ; preds = %.prol.loopexit1266, %.new1267, %.thread824, %bb.j
  %.sroa.7.0.i.i.i251 = phi i64 [ %i.bx, %bb.j ], [ %i.bn, %.thread824 ], [ 0, %.new1267 ], [ 0, %.prol.loopexit1266 ]
  %.sroa.07.0.i.i.i252 = phi ptr [ %i.bo, %bb.j ], [ %.sroa.12.1950, %.thread824 ], [ %.pn30.i.i.i.i249.lcssa.unr, %.prol.loopexit1266 ], [ %.pn30.i.i.i.i249.7, %.new1267 ]
  %i.cn = icmp eq i64 %i.bi, 0
  br i1 %i.cn, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i232"

.lr.ph.split.us14.i:                              ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301"
  %i.co = getelementptr i8, ptr %.val.i.i.i, i64 24
  br label %._crit_edge.i.i.i.i.i.us17.i

._crit_edge.i.i.i.i.i.us17.i:                     ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225", %.lr.ph.split.us14.i
  %.sroa.59.0 = phi i64 [ %i.m, %.lr.ph.split.us14.i ], [ %i.cw, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225" ] ; 2 uses
  %.sroa.42.0 = phi i64 [ %.sroa.7.0.i.i.i289, %.lr.ph.split.us14.i ], [ %.sroa.7.0.i.i.i213, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225" ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %.sroa.07.0.i.i.i290, %.lr.ph.split.us14.i ], [ %.sroa.07.0.i.i.i214, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225" ] ; 4 uses
  %i.cp = phi ptr [ %i.be, %.lr.ph.split.us14.i ], [ %i.ed, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225" ]
  %.val6.us16.i = load i32, ptr %i.cp, align 4, !noalias !74079, !noundef !13 ; 2 uses
  %i.cq = lshr i32 %.val6.us16.i, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %.val20.i.i.i.i.i.us19.i = load i16, ptr %i.co, align 8, !alias.scope !74080, !noalias !74085, !noundef !13
  %i.cs = icmp eq i16 %.val20.i.i.i.i.i.us19.i, %i.cr
  br i1 %i.cs, label %.split.us21.i, label %.backedge.us22.i

.split.us21.i:                                    ; preds = %._crit_edge.i.i.i.i.i.us17.i
  %i.ct = trunc i32 %.val6.us16.i to i16
  %i.cu = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i, i16 noundef %i.ct), !noalias !74079
  br i1 %i.cu, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.us22.i

.backedge.us22.i:                                 ; preds = %.split.us21.i, %._crit_edge.i.i.i.i.i.us17.i
  %i.cv = icmp eq i64 %.sroa.59.0, 0
  br i1 %i.cv, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194": ; preds = %.backedge.us22.i
  %i.cw = add i64 %.sroa.59.0, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 54
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !74087, !noundef !13
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp ult i64 %.sroa.42.0, %i.cz
  br i1 %i.da, label %.thread830, label %.lr.ph.i.i.i.i200

.thread830:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194"
  %i.db = add nuw nsw i64 %.sroa.42.0, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225"

.lr.ph.i.i.i.i200:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194", %bb.n
  %.sroa.0.038.i.i.i.i201 = phi ptr [ %i.dc, %bb.n ], [ %.sroa.12.0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194" ] ; 2 uses
  %.sroa.5.037.i.i.i.i202 = phi i64 [ %i.dd, %bb.n ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i194" ] ; 2 uses
  %i.dc = load ptr, ptr %.sroa.0.038.i.i.i.i201, align 8, !noalias !74098, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i203 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i203, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i200
  %i.dd = add i64 %.sroa.5.037.i.i.i.i202, 1      ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i201, i64 52
  %i.df = load i16, ptr %i.de, align 4, !noalias !74098 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 54
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !74087, !noundef !13
  %i.di = icmp ult i16 %i.df, %i.dh
  br i1 %i.di, label %bb.o, label %.lr.ph.i.i.i.i200

bb.o:                                             ; preds = %bb.n
  %i.dj = zext i16 %i.df to i64                   ; 4 uses
  %i.dk = icmp eq i64 %i.dd, 0
  %i.dl = add nuw nsw i64 %i.dj, 1                ; 2 uses
  br i1 %i.dk, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.dn = icmp ult i16 %i.df, 11
  tail call void @llvm.assume(i1 %i.dn), !noalias !74030
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %xtraiter1262 = and i64 %i.dd, 7                ; 2 uses
  %lcmp.mod1263.not = icmp eq i64 %xtraiter1262, 0
  br i1 %lcmp.mod1263.not, label %.prol.loopexit1259, label %.prol.preheader1258

.prol.preheader1258:                              ; preds = %bb.p, %.prol.preheader1258
  %.pn30.in.i.i.i.i208.prol = phi ptr [ %i.dp, %.prol.preheader1258 ], [ %i.do, %bb.p ]
  %.pn28.in.i.i.i.i209.prol = phi i64 [ %.pn28.i.i.i.i210.prol, %.prol.preheader1258 ], [ %i.dd, %bb.p ]
  %prol.iter1264 = phi i64 [ %prol.iter1264.next, %.prol.preheader1258 ], [ 0, %bb.p ]
  %.pn28.i.i.i.i210.prol = add i64 %.pn28.in.i.i.i.i209.prol, -1 ; 2 uses
  %.pn30.i.i.i.i211.prol = load ptr, ptr %.pn30.in.i.i.i.i208.prol, align 8, !noalias !74101, !nonnull !13, !noundef !13 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.prol, i64 72 ; 2 uses
  %prol.iter1264.next = add i64 %prol.iter1264, 1 ; 2 uses
  %prol.iter1264.cmp.not = icmp eq i64 %prol.iter1264.next, %xtraiter1262
  br i1 %prol.iter1264.cmp.not, label %.prol.loopexit1259, label %.prol.preheader1258, !llvm.loop !74105

.prol.loopexit1259:                               ; preds = %.prol.preheader1258, %bb.p
  %.pn30.i.i.i.i211.lcssa.unr = phi ptr [ poison, %bb.p ], [ %.pn30.i.i.i.i211.prol, %.prol.preheader1258 ]
  %.pn30.in.i.i.i.i208.unr = phi ptr [ %i.do, %bb.p ], [ %i.dp, %.prol.preheader1258 ]
  %.pn28.in.i.i.i.i209.unr = phi i64 [ %i.dd, %bb.p ], [ %.pn28.i.i.i.i210.prol, %.prol.preheader1258 ]
  %i.dq = icmp ult i64 %.sroa.5.037.i.i.i.i202, 7
  br i1 %i.dq, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225", label %.new1260

.new1260:                                         ; preds = %.prol.loopexit1259, %.new1260
  %.pn30.in.i.i.i.i208 = phi ptr [ %i.dz, %.new1260 ], [ %.pn30.in.i.i.i.i208.unr, %.prol.loopexit1259 ]
  %.pn28.in.i.i.i.i209 = phi i64 [ %.pn28.i.i.i.i210.7, %.new1260 ], [ %.pn28.in.i.i.i.i209.unr, %.prol.loopexit1259 ]
  %.pn30.i.i.i.i211 = load ptr, ptr %.pn30.in.i.i.i.i208, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211, i64 72
  %.pn30.i.i.i.i211.1 = load ptr, ptr %i.dr, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.1, i64 72
  %.pn30.i.i.i.i211.2 = load ptr, ptr %i.ds, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.2, i64 72
  %.pn30.i.i.i.i211.3 = load ptr, ptr %i.dt, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.du = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.3, i64 72
  %.pn30.i.i.i.i211.4 = load ptr, ptr %i.du, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.4, i64 72
  %.pn30.i.i.i.i211.5 = load ptr, ptr %i.dv, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.5, i64 72
  %.pn30.i.i.i.i211.6 = load ptr, ptr %i.dw, align 8, !noalias !74101, !nonnull !13, !noundef !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.6, i64 72
  %.pn28.i.i.i.i210.7 = add i64 %.pn28.in.i.i.i.i209, -8 ; 2 uses
  %.pn30.i.i.i.i211.7 = load ptr, ptr %i.dx, align 8, !noalias !74101, !nonnull !13, !noundef !13 ; 2 uses
  %i.dy = icmp eq i64 %.pn28.i.i.i.i210.7, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i211.7, i64 72
  br i1 %i.dy, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225", label %.new1260

bb.q:                                             ; preds = %.lr.ph.i.i.i.i200
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i217 unwind label %bb.r, !noalias !74106

.noexc.i.i217:                                    ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74030
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit225": ; preds = %.prol.loopexit1259, %.new1260, %.thread830, %bb.o
  %.sroa.0.0.ph.i.i.i207835 = phi ptr [ %i.dc, %bb.o ], [ %.sroa.12.0, %.thread830 ], [ %i.dc, %.new1260 ], [ %i.dc, %.prol.loopexit1259 ]
  %.sroa.6.sroa.4.0.ph.i.i.i205834 = phi i64 [ %i.dj, %bb.o ], [ %.sroa.42.0, %.thread830 ], [ %i.dj, %.new1260 ], [ %i.dj, %.prol.loopexit1259 ] ; 2 uses
  %.sroa.7.0.i.i.i213 = phi i64 [ %i.dl, %bb.o ], [ %i.db, %.thread830 ], [ 0, %.new1260 ], [ 0, %.prol.loopexit1259 ]
  %.sroa.07.0.i.i.i214 = phi ptr [ %i.dc, %bb.o ], [ %.sroa.12.0, %.thread830 ], [ %.pn30.i.i.i.i211.lcssa.unr, %.prol.loopexit1259 ], [ %.pn30.i.i.i.i211.7, %.new1260 ]
  %i.eb = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i205834, 11
  tail call void @llvm.assume(i1 %i.eb), !noalias !74030
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i207835, i64 8
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.sroa.6.sroa.4.0.ph.i.i.i205834
  br label %._crit_edge.i.i.i.i.i.us17.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit"
  %.sroa.59.2 = phi i64 [ %i.fb, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit" ], [ %i.m, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301" ] ; 2 uses
  %.sroa.42.2 = phi i64 [ %.sroa.7.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit" ], [ %.sroa.7.0.i.i.i289, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301" ] ; 3 uses
  %.sroa.12.2 = phi ptr [ %.sroa.07.0.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit" ], [ %.sroa.07.0.i.i.i290, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301" ] ; 4 uses
  %i.ee = phi ptr [ %i.gi, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit" ], [ %i.be, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301" ]
  %.val6.i = load i32, ptr %i.ee, align 4, !noalias !74079, !noundef !13 ; 2 uses
  %i.ef = lshr i32 %.val6.i, 16
  %i.eg = trunc nuw i32 %i.ef to i16              ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.loopexit.i:                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eh = icmp ult i64 %i.er, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %i.er ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  %.val20.i.i.i.i.i.i = load i16, ptr %i.ej, align 8, !alias.scope !74080, !noalias !74085, !noundef !13 ; 2 uses
  %i.ek = icmp eq i16 %.val20.i.i.i.i.i.i, %i.eg
  br i1 %i.ek, label %.split.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.01.025.i.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i ], [ %.val1.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.el = lshr i64 %.sroa.01.025.i.i.i.i.i.i, 1   ; 2 uses
  %i.em = add i64 %i.el, %.sroa.05.024.i.i.i.i.i.i ; 3 uses
  %i.en = icmp ult i64 %i.em, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %i.em
  %i.ep = getelementptr i8, ptr %i.eo, i64 24
  %.val22.i.i.i.i.i.i = load i16, ptr %i.ep, align 8, !alias.scope !74080, !noalias !74085, !noundef !13
  %i.eq = icmp ugt i16 %.val22.i.i.i.i.i.i, %i.eg
  %i.er = select i1 %i.eq, i64 %.sroa.05.024.i.i.i.i.i.i, i64 %i.em, !unpredictable !13 ; 4 uses
  %i.es = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i, %i.el ; 2 uses
  %i.et = icmp ugt i64 %i.es, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.loopexit.i

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.i": ; preds = %._crit_edge.i.i.i.i.i.loopexit.i
  %i.eu = icmp ult i16 %.val20.i.i.i.i.i.i, %i.eg
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw i64 %i.er, %i.ev
  %i.ex = icmp ule i64 %i.ew, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ex)
  br label %.backedge.i

.split.i:                                         ; preds = %._crit_edge.i.i.i.i.i.loopexit.i
  %i.ey = trunc i32 %.val6.i to i16
  %i.ez = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ei, i16 noundef %i.ey), !noalias !74079
  br i1 %i.ez, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.i"
  %i.fa = icmp eq i64 %.sroa.59.2, 0
  br i1 %i.fa, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i": ; preds = %.backedge.i
  %i.fb = add i64 %.sroa.59.2, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.12.2, i64 54
  %i.fd = load i16, ptr %i.fc, align 2, !noalias !74107, !noundef !13
  %i.fe = zext i16 %i.fd to i64
  %i.ff = icmp ult i64 %.sroa.42.2, %i.fe
  br i1 %i.ff, label %.thread836, label %.lr.ph.i.i.i.i

.thread836:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i"
  %i.fg = add nuw nsw i64 %.sroa.42.2, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i", %bb.s
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.fh, %bb.s ], [ %.sroa.12.2, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.fi, %bb.s ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h3b66e2b4d4013471E.exit.i" ] ; 2 uses
  %i.fh = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !74118, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fi = add i64 %.sroa.5.037.i.i.i.i, 1         ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 52
  %i.fk = load i16, ptr %i.fj, align 4, !noalias !74118 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 54
  %i.fm = load i16, ptr %i.fl, align 2, !noalias !74107, !noundef !13
  %i.fn = icmp ult i16 %i.fk, %i.fm
  br i1 %i.fn, label %bb.t, label %.lr.ph.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.fo = zext i16 %i.fk to i64                   ; 4 uses
  %i.fp = icmp eq i64 %i.fi, 0
  %i.fq = add nuw nsw i64 %i.fo, 1                ; 2 uses
  br i1 %i.fp, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.fs = icmp ult i16 %i.fk, 11
  tail call void @llvm.assume(i1 %i.fs), !noalias !74030
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq ; 2 uses
  %xtraiter1276 = and i64 %i.fi, 7                ; 2 uses
  %lcmp.mod1277.not = icmp eq i64 %xtraiter1276, 0
  br i1 %lcmp.mod1277.not, label %.prol.loopexit1273, label %.prol.preheader1272

.prol.preheader1272:                              ; preds = %bb.u, %.prol.preheader1272
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.fu, %.prol.preheader1272 ], [ %i.ft, %bb.u ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader1272 ], [ %i.fi, %bb.u ]
  %prol.iter1278 = phi i64 [ %prol.iter1278.next, %.prol.preheader1272 ], [ 0, %bb.u ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !74121, !nonnull !13, !noundef !13 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter1278.next = add i64 %prol.iter1278, 1 ; 2 uses
  %prol.iter1278.cmp.not = icmp eq i64 %prol.iter1278.next, %xtraiter1276
  br i1 %prol.iter1278.cmp.not, label %.prol.loopexit1273, label %.prol.preheader1272, !llvm.loop !74125

.prol.loopexit1273:                               ; preds = %.prol.preheader1272, %bb.u
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.u ], [ %.pn30.i.i.i.i.prol, %.prol.preheader1272 ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.ft, %bb.u ], [ %i.fu, %.prol.preheader1272 ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %i.fi, %bb.u ], [ %.pn28.i.i.i.i.prol, %.prol.preheader1272 ]
  %i.fv = icmp ult i64 %.sroa.5.037.i.i.i.i, 7
  br i1 %i.fv, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit", label %.new1274

.new1274:                                         ; preds = %.prol.loopexit1273, %.new1274
  %.pn30.in.i.i.i.i = phi ptr [ %i.ge, %.new1274 ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit1273 ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new1274 ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit1273 ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 72
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.fw, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 72
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.fx, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 72
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.fy, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 72
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.fz, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 72
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.ga, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 72
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.gb, align 8, !noalias !74121, !nonnull !13, !noundef !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 72
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.gc, align 8, !noalias !74121, !nonnull !13, !noundef !13 ; 2 uses
  %i.gd = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 72
  br i1 %i.gd, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit", label %.new1274

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i unwind label %bb.w, !noalias !74126

.noexc.i.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74030
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit": ; preds = %.prol.loopexit1273, %.new1274, %.thread836, %bb.t
  %.sroa.0.0.ph.i.i.i841 = phi ptr [ %i.fh, %bb.t ], [ %.sroa.12.2, %.thread836 ], [ %i.fh, %.new1274 ], [ %i.fh, %.prol.loopexit1273 ]
  %.sroa.6.sroa.4.0.ph.i.i.i840 = phi i64 [ %i.fo, %bb.t ], [ %.sroa.42.2, %.thread836 ], [ %i.fo, %.new1274 ], [ %i.fo, %.prol.loopexit1273 ] ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %i.fq, %bb.t ], [ %i.fg, %.thread836 ], [ 0, %.new1274 ], [ 0, %.prol.loopexit1273 ]
  %.sroa.07.0.i.i.i = phi ptr [ %i.fh, %bb.t ], [ %.sroa.12.2, %.thread836 ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit1273 ], [ %.pn30.i.i.i.i.7, %.new1274 ]
  %i.gg = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i840, 11
  tail call void @llvm.assume(i1 %i.gg), !noalias !74030
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i841, i64 8
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.sroa.6.sroa.4.0.ph.i.i.i840
  br label %.lr.ph.i.i.i.i.i.preheader.i

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread": ; preds = %.backedge.us22.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit263", %.backedge.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a81c70d42ce29edE.exit.us.i.preheader", %bb.b
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.gk = load ptr, ptr %i.gj, align 8, !noundef !13 ; 4 uses
  %.not114 = icmp ne ptr %i.gk, null
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.gm = load i64, ptr %i.gl, align 8            ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74127)
  %i.gp = icmp ne i64 %i.go, 0
  %.not882 = select i1 %.not114, i1 %i.gp, i1 false
  br i1 %.not882, label %bb.x, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread"

bb.x:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread"
  %i.gq = add i64 %i.go, -1                       ; 4 uses
  %i.gr = icmp eq i64 %i.gm, 0
  br i1 %i.gr, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418", label %.lr.ph.i.i443.preheader

.lr.ph.i.i443.preheader:                          ; preds = %bb.x
  %xtraiter1279 = and i64 %i.gm, 7                ; 2 uses
  %lcmp.mod1280.not = icmp eq i64 %xtraiter1279, 0
  br i1 %lcmp.mod1280.not, label %.lr.ph.i.i443.prol.loopexit, label %.lr.ph.i.i443.prol

.lr.ph.i.i443.prol:                               ; preds = %.lr.ph.i.i443.preheader, %.lr.ph.i.i443.prol
  %.sroa.012.015.i.i444.prol = phi ptr [ %.sroa.012.0.i.i446.prol, %.lr.ph.i.i443.prol ], [ %i.gk, %.lr.ph.i.i443.preheader ]
  %.sroa.011.014.i.i445.prol = phi i64 [ %i.gt, %.lr.ph.i.i443.prol ], [ %i.gm, %.lr.ph.i.i443.preheader ]
  %prol.iter1281 = phi i64 [ %prol.iter1281.next, %.lr.ph.i.i443.prol ], [ 0, %.lr.ph.i.i443.preheader ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i444.prol, i64 72
  %i.gt = add i64 %.sroa.011.014.i.i445.prol, -1  ; 2 uses
  %.sroa.012.0.i.i446.prol = load ptr, ptr %i.gs, align 8, !noalias !74130, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter1281.next = add i64 %prol.iter1281, 1 ; 2 uses
  %prol.iter1281.cmp.not = icmp eq i64 %prol.iter1281.next, %xtraiter1279
  br i1 %prol.iter1281.cmp.not, label %.lr.ph.i.i443.prol.loopexit, label %.lr.ph.i.i443.prol, !llvm.loop !74135

.lr.ph.i.i443.prol.loopexit:                      ; preds = %.lr.ph.i.i443.prol, %.lr.ph.i.i443.preheader
  %.sroa.012.0.i.i446.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i443.preheader ], [ %.sroa.012.0.i.i446.prol, %.lr.ph.i.i443.prol ]
  %.sroa.012.015.i.i444.unr = phi ptr [ %i.gk, %.lr.ph.i.i443.preheader ], [ %.sroa.012.0.i.i446.prol, %.lr.ph.i.i443.prol ]
  %.sroa.011.014.i.i445.unr = phi i64 [ %i.gm, %.lr.ph.i.i443.preheader ], [ %i.gt, %.lr.ph.i.i443.prol ]
  %i.gu = icmp ult i64 %i.gm, 8
  br i1 %i.gu, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418", label %.lr.ph.i.i443

.lr.ph.i.i443:                                    ; preds = %.lr.ph.i.i443.prol.loopexit, %.lr.ph.i.i443
  %.sroa.012.015.i.i444 = phi ptr [ %.sroa.012.0.i.i446.7, %.lr.ph.i.i443 ], [ %.sroa.012.015.i.i444.unr, %.lr.ph.i.i443.prol.loopexit ]
  %.sroa.011.014.i.i445 = phi i64 [ %i.hd, %.lr.ph.i.i443 ], [ %.sroa.011.014.i.i445.unr, %.lr.ph.i.i443.prol.loopexit ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i444, i64 72
  %.sroa.012.0.i.i446 = load ptr, ptr %i.gv, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446, i64 72
  %.sroa.012.0.i.i446.1 = load ptr, ptr %i.gw, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.1, i64 72
  %.sroa.012.0.i.i446.2 = load ptr, ptr %i.gx, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.2, i64 72
  %.sroa.012.0.i.i446.3 = load ptr, ptr %i.gy, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.3, i64 72
  %.sroa.012.0.i.i446.4 = load ptr, ptr %i.gz, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.4, i64 72
  %.sroa.012.0.i.i446.5 = load ptr, ptr %i.ha, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.5, i64 72
  %.sroa.012.0.i.i446.6 = load ptr, ptr %i.hb, align 8, !noalias !74130, !nonnull !13, !noundef !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i446.6, i64 72
  %i.hd = add i64 %.sroa.011.014.i.i445, -8       ; 2 uses
  %.sroa.012.0.i.i446.7 = load ptr, ptr %i.hc, align 8, !noalias !74130, !nonnull !13, !noundef !13 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418", label %.lr.ph.i.i443

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418": ; preds = %.lr.ph.i.i443.prol.loopexit, %.lr.ph.i.i443, %bb.x
  %.sroa.012.0.lcssa.i.i448 = phi ptr [ %i.gk, %bb.x ], [ %.sroa.012.0.i.i446.lcssa.unr, %.lr.ph.i.i443.prol.loopexit ], [ %.sroa.012.0.i.i446.7, %.lr.ph.i.i443 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i448, i64 54
  %i.hg = load i16, ptr %i.hf, align 2, !noalias !74136, !noundef !13
  %.not883 = icmp eq i16 %i.hg, 0
  br i1 %.not883, label %.lr.ph.i.i.i.i424, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449"

.lr.ph.i.i.i.i424:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418", %bb.y
  %.sroa.0.038.i.i.i.i425 = phi ptr [ %i.hh, %bb.y ], [ %.sroa.012.0.lcssa.i.i448, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ] ; 2 uses
  %.sroa.5.037.i.i.i.i426 = phi i64 [ %i.hi, %bb.y ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ] ; 2 uses
  %i.hh = load ptr, ptr %.sroa.0.038.i.i.i.i425, align 8, !noalias !74145, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i427 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i427, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i424
  %i.hi = add i64 %.sroa.5.037.i.i.i.i426, 1      ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i425, i64 52
  %i.hk = load i16, ptr %i.hj, align 4, !noalias !74145 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 54
  %i.hm = load i16, ptr %i.hl, align 2, !noalias !74136, !noundef !13
  %i.hn = icmp ult i16 %i.hk, %i.hm
  br i1 %i.hn, label %bb.z, label %.lr.ph.i.i.i.i424

bb.z:                                             ; preds = %bb.y
  %i.ho = zext i16 %i.hk to i64                   ; 4 uses
  %i.hp = icmp eq i64 %i.hi, 0
  %i.hq = add nuw nsw i64 %i.ho, 1                ; 2 uses
  br i1 %i.hp, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hs = icmp ult i16 %i.hk, 11
  tail call void @llvm.assume(i1 %i.hs), !noalias !74127
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hq ; 2 uses
  %xtraiter1286 = and i64 %i.hi, 7                ; 2 uses
  %lcmp.mod1287.not = icmp eq i64 %xtraiter1286, 0
  br i1 %lcmp.mod1287.not, label %.prol.loopexit1283, label %.prol.preheader1282

.prol.preheader1282:                              ; preds = %bb.aa, %.prol.preheader1282
  %.pn30.in.i.i.i.i432.prol = phi ptr [ %i.hu, %.prol.preheader1282 ], [ %i.ht, %bb.aa ]
  %.pn28.in.i.i.i.i433.prol = phi i64 [ %.pn28.i.i.i.i434.prol, %.prol.preheader1282 ], [ %i.hi, %bb.aa ]
  %prol.iter1288 = phi i64 [ %prol.iter1288.next, %.prol.preheader1282 ], [ 0, %bb.aa ]
  %.pn28.i.i.i.i434.prol = add i64 %.pn28.in.i.i.i.i433.prol, -1 ; 2 uses
  %.pn30.i.i.i.i435.prol = load ptr, ptr %.pn30.in.i.i.i.i432.prol, align 8, !noalias !74148, !nonnull !13, !noundef !13 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.prol, i64 72 ; 2 uses
  %prol.iter1288.next = add i64 %prol.iter1288, 1 ; 2 uses
  %prol.iter1288.cmp.not = icmp eq i64 %prol.iter1288.next, %xtraiter1286
  br i1 %prol.iter1288.cmp.not, label %.prol.loopexit1283, label %.prol.preheader1282, !llvm.loop !74152

.prol.loopexit1283:                               ; preds = %.prol.preheader1282, %bb.aa
  %.pn30.i.i.i.i435.lcssa.unr = phi ptr [ poison, %bb.aa ], [ %.pn30.i.i.i.i435.prol, %.prol.preheader1282 ]
  %.pn30.in.i.i.i.i432.unr = phi ptr [ %i.ht, %bb.aa ], [ %i.hu, %.prol.preheader1282 ]
  %.pn28.in.i.i.i.i433.unr = phi i64 [ %i.hi, %bb.aa ], [ %.pn28.i.i.i.i434.prol, %.prol.preheader1282 ]
  %i.hv = icmp ult i64 %.sroa.5.037.i.i.i.i426, 7
  br i1 %i.hv, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449", label %.new1284

.new1284:                                         ; preds = %.prol.loopexit1283, %.new1284
  %.pn30.in.i.i.i.i432 = phi ptr [ %i.ie, %.new1284 ], [ %.pn30.in.i.i.i.i432.unr, %.prol.loopexit1283 ]
  %.pn28.in.i.i.i.i433 = phi i64 [ %.pn28.i.i.i.i434.7, %.new1284 ], [ %.pn28.in.i.i.i.i433.unr, %.prol.loopexit1283 ]
  %.pn30.i.i.i.i435 = load ptr, ptr %.pn30.in.i.i.i.i432, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435, i64 72
  %.pn30.i.i.i.i435.1 = load ptr, ptr %i.hw, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.1, i64 72
  %.pn30.i.i.i.i435.2 = load ptr, ptr %i.hx, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.2, i64 72
  %.pn30.i.i.i.i435.3 = load ptr, ptr %i.hy, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.3, i64 72
  %.pn30.i.i.i.i435.4 = load ptr, ptr %i.hz, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.4, i64 72
  %.pn30.i.i.i.i435.5 = load ptr, ptr %i.ia, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.ib = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.5, i64 72
  %.pn30.i.i.i.i435.6 = load ptr, ptr %i.ib, align 8, !noalias !74148, !nonnull !13, !noundef !13
  %i.ic = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.6, i64 72
  %.pn28.i.i.i.i434.7 = add i64 %.pn28.in.i.i.i.i433, -8 ; 2 uses
  %.pn30.i.i.i.i435.7 = load ptr, ptr %i.ic, align 8, !noalias !74148, !nonnull !13, !noundef !13 ; 2 uses
  %i.id = icmp eq i64 %.pn28.i.i.i.i434.7, 0
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i435.7, i64 72
  br i1 %i.id, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449", label %.new1284

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i424
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i441 unwind label %bb.ac, !noalias !74153

.noexc.i.i441:                                    ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74127
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449": ; preds = %.prol.loopexit1283, %.new1284, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418", %bb.z
  %.sroa.0.0.ph.i.i.i431736 = phi ptr [ %i.hh, %bb.z ], [ %.sroa.012.0.lcssa.i.i448, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ], [ %i.hh, %.new1284 ], [ %i.hh, %.prol.loopexit1283 ]
  %.sroa.6.sroa.4.0.ph.i.i.i429735 = phi i64 [ %i.ho, %bb.z ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ], [ %i.ho, %.new1284 ], [ %i.ho, %.prol.loopexit1283 ] ; 2 uses
  %.sroa.7.0.i.i.i437 = phi i64 [ %i.hq, %bb.z ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ], [ 0, %.new1284 ], [ 0, %.prol.loopexit1283 ] ; 3 uses
  %.sroa.07.0.i.i.i438 = phi ptr [ %i.hh, %bb.z ], [ %.sroa.012.0.lcssa.i.i448, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i418" ], [ %.pn30.i.i.i.i435.lcssa.unr, %.prol.loopexit1283 ], [ %.pn30.i.i.i.i435.7, %.new1284 ] ; 3 uses
  %i.ig = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i429735, 11
  tail call void @llvm.assume(i1 %i.ig), !noalias !74127
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i431736, i64 8
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.sroa.6.sroa.4.0.ph.i.i.i429735 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i128 = load ptr, ptr %i.ij, align 8, !alias.scope !74127, !noalias !74154, !nonnull !13, !noundef !13 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i129 = load i64, ptr %i.ik, align 8, !alias.scope !74127, !noalias !74154, !noundef !13 ; 5 uses
  switch i64 %.val1.i.i.i129, label %.lr.ph.i.i.i.i.i.preheader.i142 [
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader"
    i64 1, label %.lr.ph.split.us14.i130
  ]

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader": ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449"
  %i.il = icmp eq i64 %i.gq, 0
  br i1 %i.il, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411"
  %.sroa.12625.1953 = phi ptr [ %.sroa.07.0.i.i.i400, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411" ], [ %.sroa.07.0.i.i.i438, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader" ] ; 3 uses
  %.sroa.42630.1952 = phi i64 [ %.sroa.7.0.i.i.i399, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411" ], [ %.sroa.7.0.i.i.i437, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader" ] ; 2 uses
  %.sroa.59642.1951 = phi i64 [ %i.im, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411" ], [ %i.gq, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader" ]
  %i.im = add i64 %.sroa.59642.1951, -1           ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.12625.1953, i64 54
  %i.io = load i16, ptr %i.in, align 2, !noalias !74156, !noundef !13
  %i.ip = zext i16 %i.io to i64
  %i.iq = icmp ult i64 %.sroa.42630.1952, %i.ip
  br i1 %i.iq, label %.thread842, label %.lr.ph.i.i.i.i386

.thread842:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380"
  %i.ir = add nuw nsw i64 %.sroa.42630.1952, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411"

.lr.ph.i.i.i.i386:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380", %bb.ad
  %.sroa.0.038.i.i.i.i387 = phi ptr [ %i.is, %bb.ad ], [ %.sroa.12625.1953, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380" ] ; 2 uses
  %.sroa.5.037.i.i.i.i388 = phi i64 [ %i.it, %bb.ad ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380" ] ; 2 uses
  %i.is = load ptr, ptr %.sroa.0.038.i.i.i.i387, align 8, !noalias !74167, !noundef !13 ; 5 uses
  %.not.i.i.i.i.i389 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i389, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i386
  %i.it = add i64 %.sroa.5.037.i.i.i.i388, 1      ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i387, i64 52
  %i.iv = load i16, ptr %i.iu, align 4, !noalias !74167 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 54
  %i.ix = load i16, ptr %i.iw, align 2, !noalias !74156, !noundef !13
  %i.iy = icmp ult i16 %i.iv, %i.ix
  br i1 %i.iy, label %bb.ae, label %.lr.ph.i.i.i.i386

bb.ae:                                            ; preds = %bb.ad
  %i.iz = zext i16 %i.iv to i64
  %i.ja = icmp eq i64 %i.it, 0
  %i.jb = add nuw nsw i64 %i.iz, 1                ; 2 uses
  br i1 %i.ja, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  %i.jd = icmp ult i16 %i.iv, 11
  tail call void @llvm.assume(i1 %i.jd), !noalias !74127
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jb ; 2 uses
  %xtraiter1300 = and i64 %i.it, 7                ; 2 uses
  %lcmp.mod1301.not = icmp eq i64 %xtraiter1300, 0
  br i1 %lcmp.mod1301.not, label %.prol.loopexit1297, label %.prol.preheader1296

.prol.preheader1296:                              ; preds = %bb.af, %.prol.preheader1296
  %.pn30.in.i.i.i.i394.prol = phi ptr [ %i.jf, %.prol.preheader1296 ], [ %i.je, %bb.af ]
  %.pn28.in.i.i.i.i395.prol = phi i64 [ %.pn28.i.i.i.i396.prol, %.prol.preheader1296 ], [ %i.it, %bb.af ]
  %prol.iter1302 = phi i64 [ %prol.iter1302.next, %.prol.preheader1296 ], [ 0, %bb.af ]
  %.pn28.i.i.i.i396.prol = add i64 %.pn28.in.i.i.i.i395.prol, -1 ; 2 uses
  %.pn30.i.i.i.i397.prol = load ptr, ptr %.pn30.in.i.i.i.i394.prol, align 8, !noalias !74170, !nonnull !13, !noundef !13 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.prol, i64 72 ; 2 uses
  %prol.iter1302.next = add i64 %prol.iter1302, 1 ; 2 uses
  %prol.iter1302.cmp.not = icmp eq i64 %prol.iter1302.next, %xtraiter1300
  br i1 %prol.iter1302.cmp.not, label %.prol.loopexit1297, label %.prol.preheader1296, !llvm.loop !74174

.prol.loopexit1297:                               ; preds = %.prol.preheader1296, %bb.af
  %.pn30.i.i.i.i397.lcssa.unr = phi ptr [ poison, %bb.af ], [ %.pn30.i.i.i.i397.prol, %.prol.preheader1296 ]
  %.pn30.in.i.i.i.i394.unr = phi ptr [ %i.je, %bb.af ], [ %i.jf, %.prol.preheader1296 ]
  %.pn28.in.i.i.i.i395.unr = phi i64 [ %i.it, %bb.af ], [ %.pn28.i.i.i.i396.prol, %.prol.preheader1296 ]
  %i.jg = icmp ult i64 %.sroa.5.037.i.i.i.i388, 7
  br i1 %i.jg, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411", label %.new1298

.new1298:                                         ; preds = %.prol.loopexit1297, %.new1298
  %.pn30.in.i.i.i.i394 = phi ptr [ %i.jp, %.new1298 ], [ %.pn30.in.i.i.i.i394.unr, %.prol.loopexit1297 ]
  %.pn28.in.i.i.i.i395 = phi i64 [ %.pn28.i.i.i.i396.7, %.new1298 ], [ %.pn28.in.i.i.i.i395.unr, %.prol.loopexit1297 ]
  %.pn30.i.i.i.i397 = load ptr, ptr %.pn30.in.i.i.i.i394, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397, i64 72
  %.pn30.i.i.i.i397.1 = load ptr, ptr %i.jh, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.1, i64 72
  %.pn30.i.i.i.i397.2 = load ptr, ptr %i.ji, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.2, i64 72
  %.pn30.i.i.i.i397.3 = load ptr, ptr %i.jj, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.3, i64 72
  %.pn30.i.i.i.i397.4 = load ptr, ptr %i.jk, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.4, i64 72
  %.pn30.i.i.i.i397.5 = load ptr, ptr %i.jl, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.5, i64 72
  %.pn30.i.i.i.i397.6 = load ptr, ptr %i.jm, align 8, !noalias !74170, !nonnull !13, !noundef !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.6, i64 72
  %.pn28.i.i.i.i396.7 = add i64 %.pn28.in.i.i.i.i395, -8 ; 2 uses
  %.pn30.i.i.i.i397.7 = load ptr, ptr %i.jn, align 8, !noalias !74170, !nonnull !13, !noundef !13 ; 2 uses
  %i.jo = icmp eq i64 %.pn28.i.i.i.i396.7, 0
  %i.jp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i397.7, i64 72
  br i1 %i.jo, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411", label %.new1298

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i386
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i403 unwind label %bb.ah, !noalias !74175

.noexc.i.i403:                                    ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74127
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411": ; preds = %.prol.loopexit1297, %.new1298, %.thread842, %bb.ae
  %.sroa.7.0.i.i.i399 = phi i64 [ %i.jb, %bb.ae ], [ %i.ir, %.thread842 ], [ 0, %.new1298 ], [ 0, %.prol.loopexit1297 ]
  %.sroa.07.0.i.i.i400 = phi ptr [ %i.is, %bb.ae ], [ %.sroa.12625.1953, %.thread842 ], [ %.pn30.i.i.i.i397.lcssa.unr, %.prol.loopexit1297 ], [ %.pn30.i.i.i.i397.7, %.new1298 ]
  %i.jr = icmp eq i64 %i.im, 0
  br i1 %i.jr, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i380"

.lr.ph.split.us14.i130:                           ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449"
  %i.js = getelementptr i8, ptr %.val.i.i.i128, i64 24
  br label %._crit_edge.i.i.i.i.i.us17.i131

._crit_edge.i.i.i.i.i.us17.i131:                  ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373", %.lr.ph.split.us14.i130
  %.sroa.59642.0 = phi i64 [ %i.gq, %.lr.ph.split.us14.i130 ], [ %i.ka, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373" ] ; 2 uses
  %.sroa.42630.0 = phi i64 [ %.sroa.7.0.i.i.i437, %.lr.ph.split.us14.i130 ], [ %.sroa.7.0.i.i.i361, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373" ] ; 3 uses
  %.sroa.12625.0 = phi ptr [ %.sroa.07.0.i.i.i438, %.lr.ph.split.us14.i130 ], [ %.sroa.07.0.i.i.i362, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373" ] ; 4 uses
  %i.jt = phi ptr [ %i.ii, %.lr.ph.split.us14.i130 ], [ %i.lh, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373" ]
  %.val6.us16.i132 = load i32, ptr %i.jt, align 4, !noalias !74176, !noundef !13 ; 2 uses
  %i.ju = lshr i32 %.val6.us16.i132, 16
  %i.jv = trunc nuw i32 %i.ju to i16
  %.val20.i.i.i.i.i.us19.i133 = load i16, ptr %i.js, align 8, !alias.scope !74177, !noalias !74182, !noundef !13
  %i.jw = icmp eq i16 %.val20.i.i.i.i.i.us19.i133, %i.jv
  br i1 %i.jw, label %.split.us21.i138, label %.backedge.us22.i134

.split.us21.i138:                                 ; preds = %._crit_edge.i.i.i.i.i.us17.i131
  %i.jx = trunc i32 %.val6.us16.i132 to i16
  %i.jy = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i128, i16 noundef %i.jx), !noalias !74176
  br i1 %i.jy, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.us22.i134

.backedge.us22.i134:                              ; preds = %.split.us21.i138, %._crit_edge.i.i.i.i.i.us17.i131
  %i.jz = icmp eq i64 %.sroa.59642.0, 0
  br i1 %i.jz, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342": ; preds = %.backedge.us22.i134
  %i.ka = add i64 %.sroa.59642.0, -1
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.12625.0, i64 54
  %i.kc = load i16, ptr %i.kb, align 2, !noalias !74184, !noundef !13
  %i.kd = zext i16 %i.kc to i64
  %i.ke = icmp ult i64 %.sroa.42630.0, %i.kd
  br i1 %i.ke, label %.thread848, label %.lr.ph.i.i.i.i348

.thread848:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342"
  %i.kf = add nuw nsw i64 %.sroa.42630.0, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373"

.lr.ph.i.i.i.i348:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342", %bb.ai
  %.sroa.0.038.i.i.i.i349 = phi ptr [ %i.kg, %bb.ai ], [ %.sroa.12625.0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342" ] ; 2 uses
  %.sroa.5.037.i.i.i.i350 = phi i64 [ %i.kh, %bb.ai ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i342" ] ; 2 uses
  %i.kg = load ptr, ptr %.sroa.0.038.i.i.i.i349, align 8, !noalias !74195, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i351 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i.i351, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i348
  %i.kh = add i64 %.sroa.5.037.i.i.i.i350, 1      ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i349, i64 52
  %i.kj = load i16, ptr %i.ki, align 4, !noalias !74195 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 54
  %i.kl = load i16, ptr %i.kk, align 2, !noalias !74184, !noundef !13
  %i.km = icmp ult i16 %i.kj, %i.kl
  br i1 %i.km, label %bb.aj, label %.lr.ph.i.i.i.i348

bb.aj:                                            ; preds = %bb.ai
  %i.kn = zext i16 %i.kj to i64                   ; 4 uses
  %i.ko = icmp eq i64 %i.kh, 0
  %i.kp = add nuw nsw i64 %i.kn, 1                ; 2 uses
  br i1 %i.ko, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.kr = icmp ult i16 %i.kj, 11
  tail call void @llvm.assume(i1 %i.kr), !noalias !74127
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kp ; 2 uses
  %xtraiter1293 = and i64 %i.kh, 7                ; 2 uses
  %lcmp.mod1294.not = icmp eq i64 %xtraiter1293, 0
  br i1 %lcmp.mod1294.not, label %.prol.loopexit1290, label %.prol.preheader1289

.prol.preheader1289:                              ; preds = %bb.ak, %.prol.preheader1289
  %.pn30.in.i.i.i.i356.prol = phi ptr [ %i.kt, %.prol.preheader1289 ], [ %i.ks, %bb.ak ]
  %.pn28.in.i.i.i.i357.prol = phi i64 [ %.pn28.i.i.i.i358.prol, %.prol.preheader1289 ], [ %i.kh, %bb.ak ]
  %prol.iter1295 = phi i64 [ %prol.iter1295.next, %.prol.preheader1289 ], [ 0, %bb.ak ]
  %.pn28.i.i.i.i358.prol = add i64 %.pn28.in.i.i.i.i357.prol, -1 ; 2 uses
  %.pn30.i.i.i.i359.prol = load ptr, ptr %.pn30.in.i.i.i.i356.prol, align 8, !noalias !74198, !nonnull !13, !noundef !13 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.prol, i64 72 ; 2 uses
  %prol.iter1295.next = add i64 %prol.iter1295, 1 ; 2 uses
  %prol.iter1295.cmp.not = icmp eq i64 %prol.iter1295.next, %xtraiter1293
  br i1 %prol.iter1295.cmp.not, label %.prol.loopexit1290, label %.prol.preheader1289, !llvm.loop !74202

.prol.loopexit1290:                               ; preds = %.prol.preheader1289, %bb.ak
  %.pn30.i.i.i.i359.lcssa.unr = phi ptr [ poison, %bb.ak ], [ %.pn30.i.i.i.i359.prol, %.prol.preheader1289 ]
  %.pn30.in.i.i.i.i356.unr = phi ptr [ %i.ks, %bb.ak ], [ %i.kt, %.prol.preheader1289 ]
  %.pn28.in.i.i.i.i357.unr = phi i64 [ %i.kh, %bb.ak ], [ %.pn28.i.i.i.i358.prol, %.prol.preheader1289 ]
  %i.ku = icmp ult i64 %.sroa.5.037.i.i.i.i350, 7
  br i1 %i.ku, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373", label %.new1291

.new1291:                                         ; preds = %.prol.loopexit1290, %.new1291
  %.pn30.in.i.i.i.i356 = phi ptr [ %i.ld, %.new1291 ], [ %.pn30.in.i.i.i.i356.unr, %.prol.loopexit1290 ]
  %.pn28.in.i.i.i.i357 = phi i64 [ %.pn28.i.i.i.i358.7, %.new1291 ], [ %.pn28.in.i.i.i.i357.unr, %.prol.loopexit1290 ]
  %.pn30.i.i.i.i359 = load ptr, ptr %.pn30.in.i.i.i.i356, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359, i64 72
  %.pn30.i.i.i.i359.1 = load ptr, ptr %i.kv, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.kw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.1, i64 72
  %.pn30.i.i.i.i359.2 = load ptr, ptr %i.kw, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.kx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.2, i64 72
  %.pn30.i.i.i.i359.3 = load ptr, ptr %i.kx, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.ky = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.3, i64 72
  %.pn30.i.i.i.i359.4 = load ptr, ptr %i.ky, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.kz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.4, i64 72
  %.pn30.i.i.i.i359.5 = load ptr, ptr %i.kz, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.la = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.5, i64 72
  %.pn30.i.i.i.i359.6 = load ptr, ptr %i.la, align 8, !noalias !74198, !nonnull !13, !noundef !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.6, i64 72
  %.pn28.i.i.i.i358.7 = add i64 %.pn28.in.i.i.i.i357, -8 ; 2 uses
  %.pn30.i.i.i.i359.7 = load ptr, ptr %i.lb, align 8, !noalias !74198, !nonnull !13, !noundef !13 ; 2 uses
  %i.lc = icmp eq i64 %.pn28.i.i.i.i358.7, 0
  %i.ld = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i359.7, i64 72
  br i1 %i.lc, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373", label %.new1291

bb.al:                                            ; preds = %.lr.ph.i.i.i.i348
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i365 unwind label %bb.am, !noalias !74203

.noexc.i.i365:                                    ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74127
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit373": ; preds = %.prol.loopexit1290, %.new1291, %.thread848, %bb.aj
  %.sroa.0.0.ph.i.i.i355853 = phi ptr [ %i.kg, %bb.aj ], [ %.sroa.12625.0, %.thread848 ], [ %i.kg, %.new1291 ], [ %i.kg, %.prol.loopexit1290 ]
  %.sroa.6.sroa.4.0.ph.i.i.i353852 = phi i64 [ %i.kn, %bb.aj ], [ %.sroa.42630.0, %.thread848 ], [ %i.kn, %.new1291 ], [ %i.kn, %.prol.loopexit1290 ] ; 2 uses
  %.sroa.7.0.i.i.i361 = phi i64 [ %i.kp, %bb.aj ], [ %i.kf, %.thread848 ], [ 0, %.new1291 ], [ 0, %.prol.loopexit1290 ]
  %.sroa.07.0.i.i.i362 = phi ptr [ %i.kg, %bb.aj ], [ %.sroa.12625.0, %.thread848 ], [ %.pn30.i.i.i.i359.lcssa.unr, %.prol.loopexit1290 ], [ %.pn30.i.i.i.i359.7, %.new1291 ]
  %i.lf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i353852, 11
  tail call void @llvm.assume(i1 %i.lf), !noalias !74127
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i355853, i64 8
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %.sroa.6.sroa.4.0.ph.i.i.i353852
  br label %._crit_edge.i.i.i.i.i.us17.i131

.lr.ph.i.i.i.i.i.preheader.i142:                  ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit"
  %.sroa.59642.2 = phi i64 [ %i.mf, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit" ], [ %i.gq, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449" ] ; 2 uses
  %.sroa.42630.2 = phi i64 [ %.sroa.7.0.i.i.i324, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit" ], [ %.sroa.7.0.i.i.i437, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449" ] ; 3 uses
  %.sroa.12625.2 = phi ptr [ %.sroa.07.0.i.i.i325, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit" ], [ %.sroa.07.0.i.i.i438, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449" ] ; 4 uses
  %i.li = phi ptr [ %i.nm, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit" ], [ %i.ii, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449" ]
  %.val6.i143 = load i32, ptr %i.li, align 4, !noalias !74176, !noundef !13 ; 2 uses
  %i.lj = lshr i32 %.val6.i143, 16
  %i.lk = trunc nuw i32 %i.lj to i16              ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i144

._crit_edge.i.i.i.i.i.loopexit.i148:              ; preds = %.lr.ph.i.i.i.i.i.i144
  %i.ll = icmp ult i64 %i.lv, %.val1.i.i.i129
  tail call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i128, i64 %i.lv ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 24
  %.val20.i.i.i.i.i.i149 = load i16, ptr %i.ln, align 8, !alias.scope !74177, !noalias !74182, !noundef !13 ; 2 uses
  %i.lo = icmp eq i16 %.val20.i.i.i.i.i.i149, %i.lk
  br i1 %i.lo, label %.split.i154, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.i"

.lr.ph.i.i.i.i.i.i144:                            ; preds = %.lr.ph.i.i.i.i.i.i144, %.lr.ph.i.i.i.i.i.preheader.i142
  %.sroa.01.025.i.i.i.i.i.i145 = phi i64 [ %i.lw, %.lr.ph.i.i.i.i.i.i144 ], [ %.val1.i.i.i129, %.lr.ph.i.i.i.i.i.preheader.i142 ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i146 = phi i64 [ %i.lv, %.lr.ph.i.i.i.i.i.i144 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i142 ] ; 2 uses
  %i.lp = lshr i64 %.sroa.01.025.i.i.i.i.i.i145, 1 ; 2 uses
  %i.lq = add i64 %i.lp, %.sroa.05.024.i.i.i.i.i.i146 ; 3 uses
  %i.lr = icmp ult i64 %i.lq, %.val1.i.i.i129
  tail call void @llvm.assume(i1 %i.lr)
  %i.ls = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i128, i64 %i.lq
  %i.lt = getelementptr i8, ptr %i.ls, i64 24
  %.val22.i.i.i.i.i.i147 = load i16, ptr %i.lt, align 8, !alias.scope !74177, !noalias !74182, !noundef !13
  %i.lu = icmp ugt i16 %.val22.i.i.i.i.i.i147, %i.lk
  %i.lv = select i1 %i.lu, i64 %.sroa.05.024.i.i.i.i.i.i146, i64 %i.lq, !unpredictable !13 ; 4 uses
  %i.lw = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i145, %i.lp ; 2 uses
  %i.lx = icmp ugt i64 %i.lw, 1
  br i1 %i.lx, label %.lr.ph.i.i.i.i.i.i144, label %._crit_edge.i.i.i.i.i.loopexit.i148

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.i": ; preds = %._crit_edge.i.i.i.i.i.loopexit.i148
  %i.ly = icmp ult i16 %.val20.i.i.i.i.i.i149, %i.lk
  %i.lz = zext i1 %i.ly to i64
  %i.ma = add nuw i64 %i.lv, %i.lz
  %i.mb = icmp ule i64 %i.ma, %.val1.i.i.i129
  tail call void @llvm.assume(i1 %i.mb)
  br label %.backedge.i150

.split.i154:                                      ; preds = %._crit_edge.i.i.i.i.i.loopexit.i148
  %i.mc = trunc i32 %.val6.i143 to i16
  %i.md = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lm, i16 noundef %i.mc), !noalias !74176
  br i1 %i.md, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.i150

.backedge.i150:                                   ; preds = %.split.i154, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.i"
  %i.me = icmp eq i64 %.sroa.59642.2, 0
  br i1 %i.me, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i": ; preds = %.backedge.i150
  %i.mf = add i64 %.sroa.59642.2, -1
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.12625.2, i64 54
  %i.mh = load i16, ptr %i.mg, align 2, !noalias !74204, !noundef !13
  %i.mi = zext i16 %i.mh to i64
  %i.mj = icmp ult i64 %.sroa.42630.2, %i.mi
  br i1 %i.mj, label %.thread854, label %.lr.ph.i.i.i.i312

.thread854:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i"
  %i.mk = add nuw nsw i64 %.sroa.42630.2, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit"

.lr.ph.i.i.i.i312:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i", %bb.an
  %.sroa.0.038.i.i.i.i313 = phi ptr [ %i.ml, %bb.an ], [ %.sroa.12625.2, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i314 = phi i64 [ %i.mm, %bb.an ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h16c3cd5f118c8d0dE.exit.i" ] ; 2 uses
  %i.ml = load ptr, ptr %.sroa.0.038.i.i.i.i313, align 8, !noalias !74215, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i315 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.i.i315, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i312
  %i.mm = add i64 %.sroa.5.037.i.i.i.i314, 1      ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i313, i64 52
  %i.mo = load i16, ptr %i.mn, align 4, !noalias !74215 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 54
  %i.mq = load i16, ptr %i.mp, align 2, !noalias !74204, !noundef !13
  %i.mr = icmp ult i16 %i.mo, %i.mq
  br i1 %i.mr, label %bb.ao, label %.lr.ph.i.i.i.i312

bb.ao:                                            ; preds = %bb.an
  %i.ms = zext i16 %i.mo to i64                   ; 4 uses
  %i.mt = icmp eq i64 %i.mm, 0
  %i.mu = add nuw nsw i64 %i.ms, 1                ; 2 uses
  br i1 %i.mt, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 72
  %i.mw = icmp ult i16 %i.mo, 11
  tail call void @llvm.assume(i1 %i.mw), !noalias !74127
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mu ; 2 uses
  %xtraiter1307 = and i64 %i.mm, 7                ; 2 uses
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1307, 0
  br i1 %lcmp.mod1308.not, label %.prol.loopexit1304, label %.prol.preheader1303

.prol.preheader1303:                              ; preds = %bb.ap, %.prol.preheader1303
  %.pn30.in.i.i.i.i320.prol = phi ptr [ %i.my, %.prol.preheader1303 ], [ %i.mx, %bb.ap ]
  %.pn28.in.i.i.i.i321.prol = phi i64 [ %.pn28.i.i.i.i322.prol, %.prol.preheader1303 ], [ %i.mm, %bb.ap ]
  %prol.iter1309 = phi i64 [ %prol.iter1309.next, %.prol.preheader1303 ], [ 0, %bb.ap ]
  %.pn28.i.i.i.i322.prol = add i64 %.pn28.in.i.i.i.i321.prol, -1 ; 2 uses
  %.pn30.i.i.i.i323.prol = load ptr, ptr %.pn30.in.i.i.i.i320.prol, align 8, !noalias !74218, !nonnull !13, !noundef !13 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.prol, i64 72 ; 2 uses
  %prol.iter1309.next = add i64 %prol.iter1309, 1 ; 2 uses
  %prol.iter1309.cmp.not = icmp eq i64 %prol.iter1309.next, %xtraiter1307
  br i1 %prol.iter1309.cmp.not, label %.prol.loopexit1304, label %.prol.preheader1303, !llvm.loop !74222

.prol.loopexit1304:                               ; preds = %.prol.preheader1303, %bb.ap
  %.pn30.i.i.i.i323.lcssa.unr = phi ptr [ poison, %bb.ap ], [ %.pn30.i.i.i.i323.prol, %.prol.preheader1303 ]
  %.pn30.in.i.i.i.i320.unr = phi ptr [ %i.mx, %bb.ap ], [ %i.my, %.prol.preheader1303 ]
  %.pn28.in.i.i.i.i321.unr = phi i64 [ %i.mm, %bb.ap ], [ %.pn28.i.i.i.i322.prol, %.prol.preheader1303 ]
  %i.mz = icmp ult i64 %.sroa.5.037.i.i.i.i314, 7
  br i1 %i.mz, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit", label %.new1305

.new1305:                                         ; preds = %.prol.loopexit1304, %.new1305
  %.pn30.in.i.i.i.i320 = phi ptr [ %i.ni, %.new1305 ], [ %.pn30.in.i.i.i.i320.unr, %.prol.loopexit1304 ]
  %.pn28.in.i.i.i.i321 = phi i64 [ %.pn28.i.i.i.i322.7, %.new1305 ], [ %.pn28.in.i.i.i.i321.unr, %.prol.loopexit1304 ]
  %.pn30.i.i.i.i323 = load ptr, ptr %.pn30.in.i.i.i.i320, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323, i64 72
  %.pn30.i.i.i.i323.1 = load ptr, ptr %i.na, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.1, i64 72
  %.pn30.i.i.i.i323.2 = load ptr, ptr %i.nb, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.2, i64 72
  %.pn30.i.i.i.i323.3 = load ptr, ptr %i.nc, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.nd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.3, i64 72
  %.pn30.i.i.i.i323.4 = load ptr, ptr %i.nd, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.ne = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.4, i64 72
  %.pn30.i.i.i.i323.5 = load ptr, ptr %i.ne, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.nf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.5, i64 72
  %.pn30.i.i.i.i323.6 = load ptr, ptr %i.nf, align 8, !noalias !74218, !nonnull !13, !noundef !13
  %i.ng = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.6, i64 72
  %.pn28.i.i.i.i322.7 = add i64 %.pn28.in.i.i.i.i321, -8 ; 2 uses
  %.pn30.i.i.i.i323.7 = load ptr, ptr %i.ng, align 8, !noalias !74218, !nonnull !13, !noundef !13 ; 2 uses
  %i.nh = icmp eq i64 %.pn28.i.i.i.i322.7, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i323.7, i64 72
  br i1 %i.nh, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit", label %.new1305

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i312
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i328 unwind label %bb.ar, !noalias !74223

.noexc.i.i328:                                    ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74127
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit": ; preds = %.prol.loopexit1304, %.new1305, %.thread854, %bb.ao
  %.sroa.0.0.ph.i.i.i319859 = phi ptr [ %i.ml, %bb.ao ], [ %.sroa.12625.2, %.thread854 ], [ %i.ml, %.new1305 ], [ %i.ml, %.prol.loopexit1304 ]
  %.sroa.6.sroa.4.0.ph.i.i.i317858 = phi i64 [ %i.ms, %bb.ao ], [ %.sroa.42630.2, %.thread854 ], [ %i.ms, %.new1305 ], [ %i.ms, %.prol.loopexit1304 ] ; 2 uses
  %.sroa.7.0.i.i.i324 = phi i64 [ %i.mu, %bb.ao ], [ %i.mk, %.thread854 ], [ 0, %.new1305 ], [ 0, %.prol.loopexit1304 ]
  %.sroa.07.0.i.i.i325 = phi ptr [ %i.ml, %bb.ao ], [ %.sroa.12625.2, %.thread854 ], [ %.pn30.i.i.i.i323.lcssa.unr, %.prol.loopexit1304 ], [ %.pn30.i.i.i.i323.7, %.new1305 ]
  %i.nk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i317858, 11
  tail call void @llvm.assume(i1 %i.nk), !noalias !74127
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i319859, i64 8
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.6.sroa.4.0.ph.i.i.i317858
  br label %.lr.ph.i.i.i.i.i.preheader.i142

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread": ; preds = %.backedge.us22.i134, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit411", %.backedge.i150, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hb26ed8af02bf544dE.exit.us.i.preheader", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd665e65d01ea2e16E.exit301.thread"
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.no = load ptr, ptr %i.nn, align 8, !noundef !13 ; 4 uses
  %.not115 = icmp ne ptr %i.no, null
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.nq = load i64, ptr %i.np, align 8            ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.ns = load i64, ptr %i.nr, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74224)
  %i.nt = icmp ne i64 %i.ns, 0
  %.not885 = select i1 %.not115, i1 %i.nt, i1 false
  br i1 %.not885, label %bb.as, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit

bb.as:                                            ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread"
  %i.nu = add i64 %i.ns, -1                       ; 4 uses
  %i.nv = icmp eq i64 %i.nq, 0
  br i1 %i.nv, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566", label %.lr.ph.i.i591.preheader

.lr.ph.i.i591.preheader:                          ; preds = %bb.as
  %xtraiter1310 = and i64 %i.nq, 7                ; 2 uses
  %lcmp.mod1311.not = icmp eq i64 %xtraiter1310, 0
  br i1 %lcmp.mod1311.not, label %.lr.ph.i.i591.prol.loopexit, label %.lr.ph.i.i591.prol

.lr.ph.i.i591.prol:                               ; preds = %.lr.ph.i.i591.preheader, %.lr.ph.i.i591.prol
  %.sroa.012.015.i.i592.prol = phi ptr [ %.sroa.012.0.i.i594.prol, %.lr.ph.i.i591.prol ], [ %i.no, %.lr.ph.i.i591.preheader ]
  %.sroa.011.014.i.i593.prol = phi i64 [ %i.nx, %.lr.ph.i.i591.prol ], [ %i.nq, %.lr.ph.i.i591.preheader ]
  %prol.iter1312 = phi i64 [ %prol.iter1312.next, %.lr.ph.i.i591.prol ], [ 0, %.lr.ph.i.i591.preheader ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i592.prol, i64 320
  %i.nx = add i64 %.sroa.011.014.i.i593.prol, -1  ; 2 uses
  %.sroa.012.0.i.i594.prol = load ptr, ptr %i.nw, align 8, !noalias !74227, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter1312.next = add i64 %prol.iter1312, 1 ; 2 uses
  %prol.iter1312.cmp.not = icmp eq i64 %prol.iter1312.next, %xtraiter1310
  br i1 %prol.iter1312.cmp.not, label %.lr.ph.i.i591.prol.loopexit, label %.lr.ph.i.i591.prol, !llvm.loop !74232

.lr.ph.i.i591.prol.loopexit:                      ; preds = %.lr.ph.i.i591.prol, %.lr.ph.i.i591.preheader
  %.sroa.012.0.i.i594.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i591.preheader ], [ %.sroa.012.0.i.i594.prol, %.lr.ph.i.i591.prol ]
  %.sroa.012.015.i.i592.unr = phi ptr [ %i.no, %.lr.ph.i.i591.preheader ], [ %.sroa.012.0.i.i594.prol, %.lr.ph.i.i591.prol ]
  %.sroa.011.014.i.i593.unr = phi i64 [ %i.nq, %.lr.ph.i.i591.preheader ], [ %i.nx, %.lr.ph.i.i591.prol ]
  %i.ny = icmp ult i64 %i.nq, 8
  br i1 %i.ny, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566", label %.lr.ph.i.i591

.lr.ph.i.i591:                                    ; preds = %.lr.ph.i.i591.prol.loopexit, %.lr.ph.i.i591
  %.sroa.012.015.i.i592 = phi ptr [ %.sroa.012.0.i.i594.7, %.lr.ph.i.i591 ], [ %.sroa.012.015.i.i592.unr, %.lr.ph.i.i591.prol.loopexit ]
  %.sroa.011.014.i.i593 = phi i64 [ %i.oh, %.lr.ph.i.i591 ], [ %.sroa.011.014.i.i593.unr, %.lr.ph.i.i591.prol.loopexit ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i592, i64 320
  %.sroa.012.0.i.i594 = load ptr, ptr %i.nz, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594, i64 320
  %.sroa.012.0.i.i594.1 = load ptr, ptr %i.oa, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.1, i64 320
  %.sroa.012.0.i.i594.2 = load ptr, ptr %i.ob, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.2, i64 320
  %.sroa.012.0.i.i594.3 = load ptr, ptr %i.oc, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.3, i64 320
  %.sroa.012.0.i.i594.4 = load ptr, ptr %i.od, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.4, i64 320
  %.sroa.012.0.i.i594.5 = load ptr, ptr %i.oe, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.5, i64 320
  %.sroa.012.0.i.i594.6 = load ptr, ptr %i.of, align 8, !noalias !74227, !nonnull !13, !noundef !13
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i594.6, i64 320
  %i.oh = add i64 %.sroa.011.014.i.i593, -8       ; 2 uses
  %.sroa.012.0.i.i594.7 = load ptr, ptr %i.og, align 8, !noalias !74227, !nonnull !13, !noundef !13 ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566", label %.lr.ph.i.i591

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566": ; preds = %.lr.ph.i.i591.prol.loopexit, %.lr.ph.i.i591, %bb.as
  %.sroa.012.0.lcssa.i.i596 = phi ptr [ %i.no, %bb.as ], [ %.sroa.012.0.i.i594.lcssa.unr, %.lr.ph.i.i591.prol.loopexit ], [ %.sroa.012.0.i.i594.7, %.lr.ph.i.i591 ] ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i596, i64 318
  %i.ok = load i16, ptr %i.oj, align 2, !noalias !74233, !noundef !13
  %.not886 = icmp eq i16 %i.ok, 0
  br i1 %.not886, label %.lr.ph.i.i.i.i572, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597"

.lr.ph.i.i.i.i572:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566", %bb.at
  %.sroa.0.038.i.i.i.i573 = phi ptr [ %i.ol, %bb.at ], [ %.sroa.012.0.lcssa.i.i596, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ] ; 2 uses
  %.sroa.5.037.i.i.i.i574 = phi i64 [ %i.om, %bb.at ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ] ; 2 uses
  %i.ol = load ptr, ptr %.sroa.0.038.i.i.i.i573, align 8, !noalias !74242, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i575 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i.i575, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i572
  %i.om = add i64 %.sroa.5.037.i.i.i.i574, 1      ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i573, i64 316
  %i.oo = load i16, ptr %i.on, align 4, !noalias !74242 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 318
  %i.oq = load i16, ptr %i.op, align 2, !noalias !74233, !noundef !13
  %i.or = icmp ult i16 %i.oo, %i.oq
  br i1 %i.or, label %bb.au, label %.lr.ph.i.i.i.i572

bb.au:                                            ; preds = %bb.at
  %i.os = zext i16 %i.oo to i64                   ; 4 uses
  %i.ot = icmp eq i64 %i.om, 0
  %i.ou = add nuw nsw i64 %i.os, 1                ; 2 uses
  br i1 %i.ot, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 320
  %i.ow = icmp ult i16 %i.oo, 11
  tail call void @llvm.assume(i1 %i.ow), !noalias !74224
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.ou ; 2 uses
  %xtraiter1317 = and i64 %i.om, 7                ; 2 uses
  %lcmp.mod1318.not = icmp eq i64 %xtraiter1317, 0
  br i1 %lcmp.mod1318.not, label %.prol.loopexit1314, label %.prol.preheader1313

.prol.preheader1313:                              ; preds = %bb.av, %.prol.preheader1313
  %.pn30.in.i.i.i.i580.prol = phi ptr [ %i.oy, %.prol.preheader1313 ], [ %i.ox, %bb.av ]
  %.pn28.in.i.i.i.i581.prol = phi i64 [ %.pn28.i.i.i.i582.prol, %.prol.preheader1313 ], [ %i.om, %bb.av ]
  %prol.iter1319 = phi i64 [ %prol.iter1319.next, %.prol.preheader1313 ], [ 0, %bb.av ]
  %.pn28.i.i.i.i582.prol = add i64 %.pn28.in.i.i.i.i581.prol, -1 ; 2 uses
  %.pn30.i.i.i.i583.prol = load ptr, ptr %.pn30.in.i.i.i.i580.prol, align 8, !noalias !74245, !nonnull !13, !noundef !13 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.prol, i64 320 ; 2 uses
  %prol.iter1319.next = add i64 %prol.iter1319, 1 ; 2 uses
  %prol.iter1319.cmp.not = icmp eq i64 %prol.iter1319.next, %xtraiter1317
  br i1 %prol.iter1319.cmp.not, label %.prol.loopexit1314, label %.prol.preheader1313, !llvm.loop !74249

.prol.loopexit1314:                               ; preds = %.prol.preheader1313, %bb.av
  %.pn30.i.i.i.i583.lcssa.unr = phi ptr [ poison, %bb.av ], [ %.pn30.i.i.i.i583.prol, %.prol.preheader1313 ]
  %.pn30.in.i.i.i.i580.unr = phi ptr [ %i.ox, %bb.av ], [ %i.oy, %.prol.preheader1313 ]
  %.pn28.in.i.i.i.i581.unr = phi i64 [ %i.om, %bb.av ], [ %.pn28.i.i.i.i582.prol, %.prol.preheader1313 ]
  %i.oz = icmp ult i64 %.sroa.5.037.i.i.i.i574, 7
  br i1 %i.oz, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597", label %.new1315

.new1315:                                         ; preds = %.prol.loopexit1314, %.new1315
  %.pn30.in.i.i.i.i580 = phi ptr [ %i.pi, %.new1315 ], [ %.pn30.in.i.i.i.i580.unr, %.prol.loopexit1314 ]
  %.pn28.in.i.i.i.i581 = phi i64 [ %.pn28.i.i.i.i582.7, %.new1315 ], [ %.pn28.in.i.i.i.i581.unr, %.prol.loopexit1314 ]
  %.pn30.i.i.i.i583 = load ptr, ptr %.pn30.in.i.i.i.i580, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583, i64 320
  %.pn30.i.i.i.i583.1 = load ptr, ptr %i.pa, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.1, i64 320
  %.pn30.i.i.i.i583.2 = load ptr, ptr %i.pb, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.2, i64 320
  %.pn30.i.i.i.i583.3 = load ptr, ptr %i.pc, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.3, i64 320
  %.pn30.i.i.i.i583.4 = load ptr, ptr %i.pd, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.4, i64 320
  %.pn30.i.i.i.i583.5 = load ptr, ptr %i.pe, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.5, i64 320
  %.pn30.i.i.i.i583.6 = load ptr, ptr %i.pf, align 8, !noalias !74245, !nonnull !13, !noundef !13
  %i.pg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.6, i64 320
  %.pn28.i.i.i.i582.7 = add i64 %.pn28.in.i.i.i.i581, -8 ; 2 uses
  %.pn30.i.i.i.i583.7 = load ptr, ptr %i.pg, align 8, !noalias !74245, !nonnull !13, !noundef !13 ; 2 uses
  %i.ph = icmp eq i64 %.pn28.i.i.i.i582.7, 0
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i583.7, i64 320
  br i1 %i.ph, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597", label %.new1315

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i572
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i589 unwind label %bb.ax, !noalias !74250

.noexc.i.i589:                                    ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74224
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597": ; preds = %.prol.loopexit1314, %.new1315, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566", %bb.au
  %.sroa.0.0.ph.i.i.i579783 = phi ptr [ %i.ol, %bb.au ], [ %.sroa.012.0.lcssa.i.i596, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ], [ %i.ol, %.new1315 ], [ %i.ol, %.prol.loopexit1314 ]
  %.sroa.6.sroa.4.0.ph.i.i.i577782 = phi i64 [ %i.os, %bb.au ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ], [ %i.os, %.new1315 ], [ %i.os, %.prol.loopexit1314 ] ; 2 uses
  %.sroa.7.0.i.i.i585 = phi i64 [ %i.ou, %bb.au ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ], [ 0, %.new1315 ], [ 0, %.prol.loopexit1314 ] ; 3 uses
  %.sroa.07.0.i.i.i586 = phi ptr [ %i.ol, %bb.au ], [ %.sroa.012.0.lcssa.i.i596, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i566" ], [ %.pn30.i.i.i.i583.lcssa.unr, %.prol.loopexit1314 ], [ %.pn30.i.i.i.i583.7, %.new1315 ] ; 3 uses
  %i.pk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i577782, 11
  tail call void @llvm.assume(i1 %i.pk), !noalias !74224
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i579783, i64 272
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %.sroa.6.sroa.4.0.ph.i.i.i577782 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i160 = load ptr, ptr %i.pn, align 8, !alias.scope !74224, !noalias !74251, !nonnull !13, !noundef !13 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i161 = load i64, ptr %i.po, align 8, !alias.scope !74224, !noalias !74251, !noundef !13 ; 5 uses
  switch i64 %.val1.i.i.i161, label %.lr.ph.i.i.i.i.i.preheader.i174 [
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader"
    i64 1, label %.lr.ph.split.us14.i162
  ]

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader": ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597"
  %i.pp = icmp eq i64 %i.nu, 0
  br i1 %i.pp, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559"
  %.sroa.11.1956 = phi ptr [ %.sroa.07.0.i.i.i548, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559" ], [ %.sroa.07.0.i.i.i586, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader" ] ; 3 uses
  %.sroa.41.1955 = phi i64 [ %.sroa.7.0.i.i.i547, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559" ], [ %.sroa.7.0.i.i.i585, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader" ] ; 2 uses
  %.sroa.58670.1954 = phi i64 [ %i.pq, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559" ], [ %i.nu, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader" ]
  %i.pq = add i64 %.sroa.58670.1954, -1           ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.11.1956, i64 318
  %i.ps = load i16, ptr %i.pr, align 2, !noalias !74253, !noundef !13
  %i.pt = zext i16 %i.ps to i64
  %i.pu = icmp ult i64 %.sroa.41.1955, %i.pt
  br i1 %i.pu, label %.thread860, label %.lr.ph.i.i.i.i534

.thread860:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528"
  %i.pv = add nuw nsw i64 %.sroa.41.1955, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559"

.lr.ph.i.i.i.i534:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528", %bb.ay
  %.sroa.0.038.i.i.i.i535 = phi ptr [ %i.pw, %bb.ay ], [ %.sroa.11.1956, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528" ] ; 2 uses
  %.sroa.5.037.i.i.i.i536 = phi i64 [ %i.px, %bb.ay ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528" ] ; 2 uses
  %i.pw = load ptr, ptr %.sroa.0.038.i.i.i.i535, align 8, !noalias !74264, !noundef !13 ; 5 uses
  %.not.i.i.i.i.i537 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i.i537, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i534
  %i.px = add i64 %.sroa.5.037.i.i.i.i536, 1      ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i535, i64 316
  %i.pz = load i16, ptr %i.py, align 4, !noalias !74264 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 318
  %i.qb = load i16, ptr %i.qa, align 2, !noalias !74253, !noundef !13
  %i.qc = icmp ult i16 %i.pz, %i.qb
  br i1 %i.qc, label %bb.az, label %.lr.ph.i.i.i.i534

bb.az:                                            ; preds = %bb.ay
  %i.qd = zext i16 %i.pz to i64
  %i.qe = icmp eq i64 %i.px, 0
  %i.qf = add nuw nsw i64 %i.qd, 1                ; 2 uses
  br i1 %i.qe, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 320
  %i.qh = icmp ult i16 %i.pz, 11
  tail call void @llvm.assume(i1 %i.qh), !noalias !74224
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qf ; 2 uses
  %xtraiter1331 = and i64 %i.px, 7                ; 2 uses
  %lcmp.mod1332.not = icmp eq i64 %xtraiter1331, 0
  br i1 %lcmp.mod1332.not, label %.prol.loopexit1328, label %.prol.preheader1327

.prol.preheader1327:                              ; preds = %bb.ba, %.prol.preheader1327
  %.pn30.in.i.i.i.i542.prol = phi ptr [ %i.qj, %.prol.preheader1327 ], [ %i.qi, %bb.ba ]
  %.pn28.in.i.i.i.i543.prol = phi i64 [ %.pn28.i.i.i.i544.prol, %.prol.preheader1327 ], [ %i.px, %bb.ba ]
  %prol.iter1333 = phi i64 [ %prol.iter1333.next, %.prol.preheader1327 ], [ 0, %bb.ba ]
  %.pn28.i.i.i.i544.prol = add i64 %.pn28.in.i.i.i.i543.prol, -1 ; 2 uses
  %.pn30.i.i.i.i545.prol = load ptr, ptr %.pn30.in.i.i.i.i542.prol, align 8, !noalias !74267, !nonnull !13, !noundef !13 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.prol, i64 320 ; 2 uses
  %prol.iter1333.next = add i64 %prol.iter1333, 1 ; 2 uses
  %prol.iter1333.cmp.not = icmp eq i64 %prol.iter1333.next, %xtraiter1331
  br i1 %prol.iter1333.cmp.not, label %.prol.loopexit1328, label %.prol.preheader1327, !llvm.loop !74271

.prol.loopexit1328:                               ; preds = %.prol.preheader1327, %bb.ba
  %.pn30.i.i.i.i545.lcssa.unr = phi ptr [ poison, %bb.ba ], [ %.pn30.i.i.i.i545.prol, %.prol.preheader1327 ]
  %.pn30.in.i.i.i.i542.unr = phi ptr [ %i.qi, %bb.ba ], [ %i.qj, %.prol.preheader1327 ]
  %.pn28.in.i.i.i.i543.unr = phi i64 [ %i.px, %bb.ba ], [ %.pn28.i.i.i.i544.prol, %.prol.preheader1327 ]
  %i.qk = icmp ult i64 %.sroa.5.037.i.i.i.i536, 7
  br i1 %i.qk, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559", label %.new1329

.new1329:                                         ; preds = %.prol.loopexit1328, %.new1329
  %.pn30.in.i.i.i.i542 = phi ptr [ %i.qt, %.new1329 ], [ %.pn30.in.i.i.i.i542.unr, %.prol.loopexit1328 ]
  %.pn28.in.i.i.i.i543 = phi i64 [ %.pn28.i.i.i.i544.7, %.new1329 ], [ %.pn28.in.i.i.i.i543.unr, %.prol.loopexit1328 ]
  %.pn30.i.i.i.i545 = load ptr, ptr %.pn30.in.i.i.i.i542, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.ql = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545, i64 320
  %.pn30.i.i.i.i545.1 = load ptr, ptr %i.ql, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.1, i64 320
  %.pn30.i.i.i.i545.2 = load ptr, ptr %i.qm, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.2, i64 320
  %.pn30.i.i.i.i545.3 = load ptr, ptr %i.qn, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.3, i64 320
  %.pn30.i.i.i.i545.4 = load ptr, ptr %i.qo, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.4, i64 320
  %.pn30.i.i.i.i545.5 = load ptr, ptr %i.qp, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.5, i64 320
  %.pn30.i.i.i.i545.6 = load ptr, ptr %i.qq, align 8, !noalias !74267, !nonnull !13, !noundef !13
  %i.qr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.6, i64 320
  %.pn28.i.i.i.i544.7 = add i64 %.pn28.in.i.i.i.i543, -8 ; 2 uses
  %.pn30.i.i.i.i545.7 = load ptr, ptr %i.qr, align 8, !noalias !74267, !nonnull !13, !noundef !13 ; 2 uses
  %i.qs = icmp eq i64 %.pn28.i.i.i.i544.7, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i545.7, i64 320
  br i1 %i.qs, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559", label %.new1329

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i534
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i551 unwind label %bb.bc, !noalias !74272

.noexc.i.i551:                                    ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74224
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559": ; preds = %.prol.loopexit1328, %.new1329, %.thread860, %bb.az
  %.sroa.7.0.i.i.i547 = phi i64 [ %i.qf, %bb.az ], [ %i.pv, %.thread860 ], [ 0, %.new1329 ], [ 0, %.prol.loopexit1328 ]
  %.sroa.07.0.i.i.i548 = phi ptr [ %i.pw, %bb.az ], [ %.sroa.11.1956, %.thread860 ], [ %.pn30.i.i.i.i545.lcssa.unr, %.prol.loopexit1328 ], [ %.pn30.i.i.i.i545.7, %.new1329 ]
  %i.qv = icmp eq i64 %i.pq, 0
  br i1 %i.qv, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i528"

.lr.ph.split.us14.i162:                           ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597"
  %i.qw = getelementptr i8, ptr %.val.i.i.i160, i64 24
  br label %._crit_edge.i.i.i.i.i.us17.i163

._crit_edge.i.i.i.i.i.us17.i163:                  ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521", %.lr.ph.split.us14.i162
  %.sroa.58670.0 = phi i64 [ %i.nu, %.lr.ph.split.us14.i162 ], [ %i.re, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521" ] ; 2 uses
  %.sroa.41.0 = phi i64 [ %.sroa.7.0.i.i.i585, %.lr.ph.split.us14.i162 ], [ %.sroa.7.0.i.i.i509, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521" ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %.sroa.07.0.i.i.i586, %.lr.ph.split.us14.i162 ], [ %.sroa.07.0.i.i.i510, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521" ] ; 4 uses
  %i.qx = phi ptr [ %i.pm, %.lr.ph.split.us14.i162 ], [ %i.sl, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521" ]
  %.val6.us16.i164 = load i32, ptr %i.qx, align 4, !noalias !74273, !noundef !13 ; 2 uses
  %i.qy = lshr i32 %.val6.us16.i164, 16
  %i.qz = trunc nuw i32 %i.qy to i16
  %.val20.i.i.i.i.i.us19.i165 = load i16, ptr %i.qw, align 8, !alias.scope !74274, !noalias !74279, !noundef !13
  %i.ra = icmp eq i16 %.val20.i.i.i.i.i.us19.i165, %i.qz
  br i1 %i.ra, label %.split.us21.i170, label %.backedge.us22.i166

.split.us21.i170:                                 ; preds = %._crit_edge.i.i.i.i.i.us17.i163
  %i.rb = trunc i32 %.val6.us16.i164 to i16
  %i.rc = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i160, i16 noundef %i.rb), !noalias !74273
  br i1 %i.rc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.us22.i166

.backedge.us22.i166:                              ; preds = %.split.us21.i170, %._crit_edge.i.i.i.i.i.us17.i163
  %i.rd = icmp eq i64 %.sroa.58670.0, 0
  br i1 %i.rd, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490": ; preds = %.backedge.us22.i166
  %i.re = add i64 %.sroa.58670.0, -1
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 318
  %i.rg = load i16, ptr %i.rf, align 2, !noalias !74281, !noundef !13
  %i.rh = zext i16 %i.rg to i64
  %i.ri = icmp ult i64 %.sroa.41.0, %i.rh
  br i1 %i.ri, label %.thread866, label %.lr.ph.i.i.i.i496

.thread866:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490"
  %i.rj = add nuw nsw i64 %.sroa.41.0, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521"

.lr.ph.i.i.i.i496:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490", %bb.bd
  %.sroa.0.038.i.i.i.i497 = phi ptr [ %i.rk, %bb.bd ], [ %.sroa.11.0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490" ] ; 2 uses
  %.sroa.5.037.i.i.i.i498 = phi i64 [ %i.rl, %bb.bd ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i490" ] ; 2 uses
  %i.rk = load ptr, ptr %.sroa.0.038.i.i.i.i497, align 8, !noalias !74292, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i499 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i499, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i496
  %i.rl = add i64 %.sroa.5.037.i.i.i.i498, 1      ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i497, i64 316
  %i.rn = load i16, ptr %i.rm, align 4, !noalias !74292 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 318
  %i.rp = load i16, ptr %i.ro, align 2, !noalias !74281, !noundef !13
  %i.rq = icmp ult i16 %i.rn, %i.rp
  br i1 %i.rq, label %bb.be, label %.lr.ph.i.i.i.i496

bb.be:                                            ; preds = %bb.bd
  %i.rr = zext i16 %i.rn to i64                   ; 4 uses
  %i.rs = icmp eq i64 %i.rl, 0
  %i.rt = add nuw nsw i64 %i.rr, 1                ; 2 uses
  br i1 %i.rs, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rk, i64 320
  %i.rv = icmp ult i16 %i.rn, 11
  tail call void @llvm.assume(i1 %i.rv), !noalias !74224
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rt ; 2 uses
  %xtraiter1324 = and i64 %i.rl, 7                ; 2 uses
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1324, 0
  br i1 %lcmp.mod1325.not, label %.prol.loopexit1321, label %.prol.preheader1320

.prol.preheader1320:                              ; preds = %bb.bf, %.prol.preheader1320
  %.pn30.in.i.i.i.i504.prol = phi ptr [ %i.rx, %.prol.preheader1320 ], [ %i.rw, %bb.bf ]
  %.pn28.in.i.i.i.i505.prol = phi i64 [ %.pn28.i.i.i.i506.prol, %.prol.preheader1320 ], [ %i.rl, %bb.bf ]
  %prol.iter1326 = phi i64 [ %prol.iter1326.next, %.prol.preheader1320 ], [ 0, %bb.bf ]
  %.pn28.i.i.i.i506.prol = add i64 %.pn28.in.i.i.i.i505.prol, -1 ; 2 uses
  %.pn30.i.i.i.i507.prol = load ptr, ptr %.pn30.in.i.i.i.i504.prol, align 8, !noalias !74295, !nonnull !13, !noundef !13 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.prol, i64 320 ; 2 uses
  %prol.iter1326.next = add i64 %prol.iter1326, 1 ; 2 uses
  %prol.iter1326.cmp.not = icmp eq i64 %prol.iter1326.next, %xtraiter1324
  br i1 %prol.iter1326.cmp.not, label %.prol.loopexit1321, label %.prol.preheader1320, !llvm.loop !74299

.prol.loopexit1321:                               ; preds = %.prol.preheader1320, %bb.bf
  %.pn30.i.i.i.i507.lcssa.unr = phi ptr [ poison, %bb.bf ], [ %.pn30.i.i.i.i507.prol, %.prol.preheader1320 ]
  %.pn30.in.i.i.i.i504.unr = phi ptr [ %i.rw, %bb.bf ], [ %i.rx, %.prol.preheader1320 ]
  %.pn28.in.i.i.i.i505.unr = phi i64 [ %i.rl, %bb.bf ], [ %.pn28.i.i.i.i506.prol, %.prol.preheader1320 ]
  %i.ry = icmp ult i64 %.sroa.5.037.i.i.i.i498, 7
  br i1 %i.ry, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521", label %.new1322

.new1322:                                         ; preds = %.prol.loopexit1321, %.new1322
  %.pn30.in.i.i.i.i504 = phi ptr [ %i.sh, %.new1322 ], [ %.pn30.in.i.i.i.i504.unr, %.prol.loopexit1321 ]
  %.pn28.in.i.i.i.i505 = phi i64 [ %.pn28.i.i.i.i506.7, %.new1322 ], [ %.pn28.in.i.i.i.i505.unr, %.prol.loopexit1321 ]
  %.pn30.i.i.i.i507 = load ptr, ptr %.pn30.in.i.i.i.i504, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.rz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507, i64 320
  %.pn30.i.i.i.i507.1 = load ptr, ptr %i.rz, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.sa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.1, i64 320
  %.pn30.i.i.i.i507.2 = load ptr, ptr %i.sa, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.sb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.2, i64 320
  %.pn30.i.i.i.i507.3 = load ptr, ptr %i.sb, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.sc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.3, i64 320
  %.pn30.i.i.i.i507.4 = load ptr, ptr %i.sc, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.sd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.4, i64 320
  %.pn30.i.i.i.i507.5 = load ptr, ptr %i.sd, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.se = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.5, i64 320
  %.pn30.i.i.i.i507.6 = load ptr, ptr %i.se, align 8, !noalias !74295, !nonnull !13, !noundef !13
  %i.sf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.6, i64 320
  %.pn28.i.i.i.i506.7 = add i64 %.pn28.in.i.i.i.i505, -8 ; 2 uses
  %.pn30.i.i.i.i507.7 = load ptr, ptr %i.sf, align 8, !noalias !74295, !nonnull !13, !noundef !13 ; 2 uses
  %i.sg = icmp eq i64 %.pn28.i.i.i.i506.7, 0
  %i.sh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i507.7, i64 320
  br i1 %i.sg, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521", label %.new1322

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i496
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i513 unwind label %bb.bh, !noalias !74300

.noexc.i.i513:                                    ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74224
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit521": ; preds = %.prol.loopexit1321, %.new1322, %.thread866, %bb.be
  %.sroa.0.0.ph.i.i.i503871 = phi ptr [ %i.rk, %bb.be ], [ %.sroa.11.0, %.thread866 ], [ %i.rk, %.new1322 ], [ %i.rk, %.prol.loopexit1321 ]
  %.sroa.6.sroa.4.0.ph.i.i.i501870 = phi i64 [ %i.rr, %bb.be ], [ %.sroa.41.0, %.thread866 ], [ %i.rr, %.new1322 ], [ %i.rr, %.prol.loopexit1321 ] ; 2 uses
  %.sroa.7.0.i.i.i509 = phi i64 [ %i.rt, %bb.be ], [ %i.rj, %.thread866 ], [ 0, %.new1322 ], [ 0, %.prol.loopexit1321 ]
  %.sroa.07.0.i.i.i510 = phi ptr [ %i.rk, %bb.be ], [ %.sroa.11.0, %.thread866 ], [ %.pn30.i.i.i.i507.lcssa.unr, %.prol.loopexit1321 ], [ %.pn30.i.i.i.i507.7, %.new1322 ]
  %i.sj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i501870, 11
  tail call void @llvm.assume(i1 %i.sj), !noalias !74224
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i503871, i64 272
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.sroa.6.sroa.4.0.ph.i.i.i501870
  br label %._crit_edge.i.i.i.i.i.us17.i163

.lr.ph.i.i.i.i.i.preheader.i174:                  ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit"
  %.sroa.58670.2 = phi i64 [ %i.tj, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit" ], [ %i.nu, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597" ] ; 2 uses
  %.sroa.41.2 = phi i64 [ %.sroa.7.0.i.i.i472, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit" ], [ %.sroa.7.0.i.i.i585, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597" ] ; 3 uses
  %.sroa.11.2 = phi ptr [ %.sroa.07.0.i.i.i473, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit" ], [ %.sroa.07.0.i.i.i586, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597" ] ; 4 uses
  %i.sm = phi ptr [ %i.uq, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit" ], [ %i.pm, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit597" ]
  %.val6.i175 = load i32, ptr %i.sm, align 4, !noalias !74273, !noundef !13 ; 2 uses
  %i.sn = lshr i32 %.val6.i175, 16
  %i.so = trunc nuw i32 %i.sn to i16              ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i176

._crit_edge.i.i.i.i.i.loopexit.i180:              ; preds = %.lr.ph.i.i.i.i.i.i176
  %i.sp = icmp ult i64 %i.sz, %.val1.i.i.i161
  tail call void @llvm.assume(i1 %i.sp)
  %i.sq = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i160, i64 %i.sz ; 2 uses
  %i.sr = getelementptr i8, ptr %i.sq, i64 24
  %.val20.i.i.i.i.i.i181 = load i16, ptr %i.sr, align 8, !alias.scope !74274, !noalias !74279, !noundef !13 ; 2 uses
  %i.ss = icmp eq i16 %.val20.i.i.i.i.i.i181, %i.so
  br i1 %i.ss, label %.split.i186, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.i"

.lr.ph.i.i.i.i.i.i176:                            ; preds = %.lr.ph.i.i.i.i.i.i176, %.lr.ph.i.i.i.i.i.preheader.i174
  %.sroa.01.025.i.i.i.i.i.i177 = phi i64 [ %i.ta, %.lr.ph.i.i.i.i.i.i176 ], [ %.val1.i.i.i161, %.lr.ph.i.i.i.i.i.preheader.i174 ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i178 = phi i64 [ %i.sz, %.lr.ph.i.i.i.i.i.i176 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i174 ] ; 2 uses
  %i.st = lshr i64 %.sroa.01.025.i.i.i.i.i.i177, 1 ; 2 uses
  %i.su = add i64 %i.st, %.sroa.05.024.i.i.i.i.i.i178 ; 3 uses
  %i.sv = icmp ult i64 %i.su, %.val1.i.i.i161
  tail call void @llvm.assume(i1 %i.sv)
  %i.sw = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i160, i64 %i.su
  %i.sx = getelementptr i8, ptr %i.sw, i64 24
  %.val22.i.i.i.i.i.i179 = load i16, ptr %i.sx, align 8, !alias.scope !74274, !noalias !74279, !noundef !13
  %i.sy = icmp ugt i16 %.val22.i.i.i.i.i.i179, %i.so
  %i.sz = select i1 %i.sy, i64 %.sroa.05.024.i.i.i.i.i.i178, i64 %i.su, !unpredictable !13 ; 4 uses
  %i.ta = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i177, %i.st ; 2 uses
  %i.tb = icmp ugt i64 %i.ta, 1
  br i1 %i.tb, label %.lr.ph.i.i.i.i.i.i176, label %._crit_edge.i.i.i.i.i.loopexit.i180

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.i": ; preds = %._crit_edge.i.i.i.i.i.loopexit.i180
  %i.tc = icmp ult i16 %.val20.i.i.i.i.i.i181, %i.so
  %i.td = zext i1 %i.tc to i64
  %i.te = add nuw i64 %i.sz, %i.td
  %i.tf = icmp ule i64 %i.te, %.val1.i.i.i161
  tail call void @llvm.assume(i1 %i.tf)
  br label %.backedge.i182

.split.i186:                                      ; preds = %._crit_edge.i.i.i.i.i.loopexit.i180
  %i.tg = trunc i32 %.val6.i175 to i16
  %i.th = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.sq, i16 noundef %i.tg), !noalias !74273
  br i1 %i.th, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %.backedge.i182

.backedge.i182:                                   ; preds = %.split.i186, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.i"
  %i.ti = icmp eq i64 %.sroa.58670.2, 0
  br i1 %i.ti, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i": ; preds = %.backedge.i182
  %i.tj = add i64 %.sroa.58670.2, -1
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.11.2, i64 318
  %i.tl = load i16, ptr %i.tk, align 2, !noalias !74301, !noundef !13
  %i.tm = zext i16 %i.tl to i64
  %i.tn = icmp ult i64 %.sroa.41.2, %i.tm
  br i1 %i.tn, label %.thread872, label %.lr.ph.i.i.i.i460

.thread872:                                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i"
  %i.to = add nuw nsw i64 %.sroa.41.2, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit"

.lr.ph.i.i.i.i460:                                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i", %bb.bi
  %.sroa.0.038.i.i.i.i461 = phi ptr [ %i.tp, %bb.bi ], [ %.sroa.11.2, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i462 = phi i64 [ %i.tq, %bb.bi ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h9ecf94459d9f0159E.exit.i" ] ; 2 uses
  %i.tp = load ptr, ptr %.sroa.0.038.i.i.i.i461, align 8, !noalias !74312, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i463 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i.i463, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i460
  %i.tq = add i64 %.sroa.5.037.i.i.i.i462, 1      ; 5 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i461, i64 316
  %i.ts = load i16, ptr %i.tr, align 4, !noalias !74312 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 318
  %i.tu = load i16, ptr %i.tt, align 2, !noalias !74301, !noundef !13
  %i.tv = icmp ult i16 %i.ts, %i.tu
  br i1 %i.tv, label %bb.bj, label %.lr.ph.i.i.i.i460

bb.bj:                                            ; preds = %bb.bi
  %i.tw = zext i16 %i.ts to i64                   ; 4 uses
  %i.tx = icmp eq i64 %i.tq, 0
  %i.ty = add nuw nsw i64 %i.tw, 1                ; 2 uses
  br i1 %i.tx, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 320
  %i.ua = icmp ult i16 %i.ts, 11
  tail call void @llvm.assume(i1 %i.ua), !noalias !74224
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ty ; 2 uses
  %xtraiter1338 = and i64 %i.tq, 7                ; 2 uses
  %lcmp.mod1339.not = icmp eq i64 %xtraiter1338, 0
  br i1 %lcmp.mod1339.not, label %.prol.loopexit1335, label %.prol.preheader1334

.prol.preheader1334:                              ; preds = %bb.bk, %.prol.preheader1334
  %.pn30.in.i.i.i.i468.prol = phi ptr [ %i.uc, %.prol.preheader1334 ], [ %i.ub, %bb.bk ]
  %.pn28.in.i.i.i.i469.prol = phi i64 [ %.pn28.i.i.i.i470.prol, %.prol.preheader1334 ], [ %i.tq, %bb.bk ]
  %prol.iter1340 = phi i64 [ %prol.iter1340.next, %.prol.preheader1334 ], [ 0, %bb.bk ]
  %.pn28.i.i.i.i470.prol = add i64 %.pn28.in.i.i.i.i469.prol, -1 ; 2 uses
  %.pn30.i.i.i.i471.prol = load ptr, ptr %.pn30.in.i.i.i.i468.prol, align 8, !noalias !74315, !nonnull !13, !noundef !13 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.prol, i64 320 ; 2 uses
  %prol.iter1340.next = add i64 %prol.iter1340, 1 ; 2 uses
  %prol.iter1340.cmp.not = icmp eq i64 %prol.iter1340.next, %xtraiter1338
  br i1 %prol.iter1340.cmp.not, label %.prol.loopexit1335, label %.prol.preheader1334, !llvm.loop !74319

.prol.loopexit1335:                               ; preds = %.prol.preheader1334, %bb.bk
  %.pn30.i.i.i.i471.lcssa.unr = phi ptr [ poison, %bb.bk ], [ %.pn30.i.i.i.i471.prol, %.prol.preheader1334 ]
  %.pn30.in.i.i.i.i468.unr = phi ptr [ %i.ub, %bb.bk ], [ %i.uc, %.prol.preheader1334 ]
  %.pn28.in.i.i.i.i469.unr = phi i64 [ %i.tq, %bb.bk ], [ %.pn28.i.i.i.i470.prol, %.prol.preheader1334 ]
  %i.ud = icmp ult i64 %.sroa.5.037.i.i.i.i462, 7
  br i1 %i.ud, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit", label %.new1336

.new1336:                                         ; preds = %.prol.loopexit1335, %.new1336
  %.pn30.in.i.i.i.i468 = phi ptr [ %i.um, %.new1336 ], [ %.pn30.in.i.i.i.i468.unr, %.prol.loopexit1335 ]
  %.pn28.in.i.i.i.i469 = phi i64 [ %.pn28.i.i.i.i470.7, %.new1336 ], [ %.pn28.in.i.i.i.i469.unr, %.prol.loopexit1335 ]
  %.pn30.i.i.i.i471 = load ptr, ptr %.pn30.in.i.i.i.i468, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.ue = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471, i64 320
  %.pn30.i.i.i.i471.1 = load ptr, ptr %i.ue, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.uf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.1, i64 320
  %.pn30.i.i.i.i471.2 = load ptr, ptr %i.uf, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.2, i64 320
  %.pn30.i.i.i.i471.3 = load ptr, ptr %i.ug, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.uh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.3, i64 320
  %.pn30.i.i.i.i471.4 = load ptr, ptr %i.uh, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.ui = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.4, i64 320
  %.pn30.i.i.i.i471.5 = load ptr, ptr %i.ui, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.uj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.5, i64 320
  %.pn30.i.i.i.i471.6 = load ptr, ptr %i.uj, align 8, !noalias !74315, !nonnull !13, !noundef !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.6, i64 320
  %.pn28.i.i.i.i470.7 = add i64 %.pn28.in.i.i.i.i469, -8 ; 2 uses
  %.pn30.i.i.i.i471.7 = load ptr, ptr %i.uk, align 8, !noalias !74315, !nonnull !13, !noundef !13 ; 2 uses
  %i.ul = icmp eq i64 %.pn28.i.i.i.i470.7, 0
  %i.um = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i471.7, i64 320
  br i1 %i.ul, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit", label %.new1336

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i460
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i476 unwind label %bb.bm, !noalias !74320

.noexc.i.i476:                                    ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.un = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !74224
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit": ; preds = %.prol.loopexit1335, %.new1336, %.thread872, %bb.bj
  %.sroa.0.0.ph.i.i.i467877 = phi ptr [ %i.tp, %bb.bj ], [ %.sroa.11.2, %.thread872 ], [ %i.tp, %.new1336 ], [ %i.tp, %.prol.loopexit1335 ]
  %.sroa.6.sroa.4.0.ph.i.i.i465876 = phi i64 [ %i.tw, %bb.bj ], [ %.sroa.41.2, %.thread872 ], [ %i.tw, %.new1336 ], [ %i.tw, %.prol.loopexit1335 ] ; 2 uses
  %.sroa.7.0.i.i.i472 = phi i64 [ %i.ty, %bb.bj ], [ %i.to, %.thread872 ], [ 0, %.new1336 ], [ 0, %.prol.loopexit1335 ]
  %.sroa.07.0.i.i.i473 = phi ptr [ %i.tp, %bb.bj ], [ %.sroa.11.2, %.thread872 ], [ %.pn30.i.i.i.i471.lcssa.unr, %.prol.loopexit1335 ], [ %.pn30.i.i.i.i471.7, %.new1336 ]
  %i.uo = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i465876, 11
  tail call void @llvm.assume(i1 %i.uo), !noalias !74224
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i467877, i64 272
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %.sroa.6.sroa.4.0.ph.i.i.i465876
  br label %.lr.ph.i.i.i.i.i.preheader.i174

_ZN4core4iter6traits8iterator8Iterator8try_fold17h271d9ccf7ce71c9cE.exit: ; preds = %.split.us21.i, %.split.i, %.split.us21.i138, %.split.i154, %.split.us21.i170, %.backedge.us22.i166, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559", %.split.i186, %.backedge.i182, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread", %bb.a
  %.sroa.0.0 = phi i1 [ true, %.split.us21.i138 ], [ true, %bb.a ], [ true, %.split.i154 ], [ false, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h32fc93afeb7f1a05E.exit559" ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hd56a8688f592dba7E.exit.us.i.preheader" ], [ false, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9e2b0b50c66e3857E.exit449.thread" ], [ true, %.split.i ], [ false, %.backedge.us22.i166 ], [ false, %.backedge.i182 ], [ true, %.split.i186 ], [ true, %.split.us21.i170 ], [ true, %.split.us21.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6reader2v68V6Reader7indexes17h183754d00dd62df9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(448) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %i.f, align 8, !noundef !13
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @268, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !74321)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74324
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !74321, !noalias !74326, !nonnull !13, !noundef !13 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !74321, !noalias !74326, !noundef !13
  invoke void @_ZN3std3sys2fs8read_dir17hd192aa9267736d08E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.d unwind label %bb.b, !noalias !74324

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.c, align 8, !range !26, !alias.scope !74327, !noalias !74326, !noundef !13 ; 2 uses
  %i.k = icmp eq i64 %.val4.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74330
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !450, !noalias !74324, !noundef !13 ; 3 uses
  %.sink7.i = load ptr, ptr %i.a, align 8, !noalias !74324, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74324
  %.val2.i = load i64, ptr %i.c, align 8, !range !26, !alias.scope !74327, !noalias !74326, !noundef !13 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %_ZN3std2fs8read_dir17h6401fee102d36ad5E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74333
  br label %_ZN3std2fs8read_dir17h6401fee102d36ad5E.exit

common.resume:                                    ; preds = %bb.j, %bb.i, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN3std2fs8read_dir17h6401fee102d36ad5E.exit:     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = icmp eq i8 %i.m, 2
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3std2fs8read_dir17h6401fee102d36ad5E.exit
  store i32 11, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink7.i, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %_ZN3std2fs8read_dir17h6401fee102d36ad5E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sink7.i, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.m, ptr %i.p, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.q = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #42 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb3989edf6a9efe50E.exit", !prof !694

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = atomicrmw sub ptr %.sink7.i, i64 1 release, align 8, !noalias !74336
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.k

end_hunk_6
begin_hunk_7_@_ZN4dump6writer10DumpWriter14create_network17h44710d986e9e796aE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !76942, !noalias !76943, !nonnull !13, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  store i8 123, ptr %i.bc, align 1, !noalias !76944
  %i.bd = add nuw i64 %i.ay, 1                    ; 4 uses
  store i64 %i.bd, ptr %i.au, align 8, !alias.scope !76942, !noalias !76943
  %i.be = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %bb.k, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !76945)
  call void @llvm.experimental.noalias.scope.decl(metadata !76948)
  call void @llvm.experimental.noalias.scope.decl(metadata !76951)
  call void @llvm.experimental.noalias.scope.decl(metadata !76954)
  %i.bf = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !76957, !noalias !76960, !noundef !13
  %i.bg = icmp eq i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.l, label %.thread.i.i.i, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bd, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc8.i:                                        ; preds = %bb.l
  %.pre.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !76965, !noalias !76960
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.noexc8.i, %bb.k
  %i.bh = phi i64 [ %i.bd, %bb.k ], [ %.pre.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, %.noexc8.i ] ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load ptr, ptr %i.ba, align 8, !alias.scope !76965, !noalias !76960, !nonnull !13, !noundef !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 125, ptr %i.bk, align 1, !noalias !76966
  %i.bl = add nuw i64 %i.bh, 1
  store i64 %i.bl, ptr %i.au, align 8, !alias.scope !76965, !noalias !76960
  br label %bb.aq

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h347afe77415afce2E.exit.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.critedge.i54.i.i.i.i.i.i.i.invoke.i, label %bb.m

bb.m:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h9343d2d27d3141ddE.exit.i.i.i.i.i.i.i.i"
  %i.bm = icmp eq i64 %i.ar, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.m
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ], [ %i.ap, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.prol, i64 1160
  %i.bo = add i64 %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bn, align 8, !noalias !76967, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol, !llvm.loop !76976

.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ap, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.ar, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i

.lr.ph.i.i47.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i47.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i47.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i47.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i48.i.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.br, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bs, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bt, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bu, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bv, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bw, align 8, !noalias !76967, !nonnull !13, !noundef !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.6, i64 1160
  %i.by = add i64 %.sroa.011.014.i.i49.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bx, align 8, !noalias !76967, !nonnull !13, !noundef !13 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i", label %.lr.ph.i.i47.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i47.i.i.i.i.i.i.i.i, %bb.m
  %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.m ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i47.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i50.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i47.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i, i64 1154
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !76977, !noundef !13
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i", %bb.n
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.n ], [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.n ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i, i64 880
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !76986, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i.i.i.i, i64 1152
  %i.cg = load i16, ptr %i.cf, align 8, !noalias !76986 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1154
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !76977, !noundef !13
  %i.cj = icmp ult i16 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ck = zext i16 %i.cg to i64                   ; 4 uses
  %i.cl = icmp eq i64 %i.ce, 0
  %i.cm = add nuw nsw i64 %i.ck, 1                ; 2 uses
  br i1 %i.cl, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 1160
  %i.co = icmp ult i16 %i.cg, 11
  call void @llvm.assume(i1 %i.co), !noalias !76989
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %xtraiter250 = and i64 %i.ce, 7                 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.p, %.prol.preheader
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cq, %.prol.preheader ], [ %i.cp, %bb.p ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.ce, %bb.p ]
  %prol.iter252 = phi i64 [ %prol.iter252.next, %.prol.preheader ], [ 0, %bb.p ]
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.prol, align 8, !noalias !76990, !nonnull !13, !noundef !13 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76994

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.p
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.p ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cp, %bb.p ], [ %i.cq, %.prol.preheader ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ce, %bb.p ], [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cr = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i.i.i.i, 7
  br i1 %i.cr, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i = phi ptr [ %i.da, %.new ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i.i.i.i, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cs, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ct, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cu, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cv, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cw, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cx, align 8, !noalias !76990, !nonnull !13, !noundef !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cy, align 8, !noalias !76990, !nonnull !13, !noundef !13 ; 2 uses
  %i.cz = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i.i.i.i.7, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.cz, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i, label %.new

bb.q:                                             ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i45.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !76995

.noexc.i.i45.i.i.i.i.i.i.i.i:                     ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !76989
  unreachable

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.prol.loopexit, %.new, %bb.o, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i3594.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.o ], [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ], [ %i.cd, %.new ], [ %i.cd, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i3393.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.o ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ], [ %i.ck, %.new ], [ %i.ck, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i41.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.o ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i42.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.o ], [ %.sroa.012.0.lcssa.i.i52.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i22.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i39.i.i.i.i.i.i.i.i.7, %.new ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i3594.i.i.i.i.i.i.i.i, i64 888
  %i.dd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i3393.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.dd), !noalias !76989
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.sroa.6.sroa.4.0.ph.i.i.i3393.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i3594.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i3393.i.i.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i", %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %.sroa.35.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.35.0.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.24.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i41.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.8.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i42.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.dg = phi i1 [ true, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ]
  %i.dh = phi ptr [ %i.de, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %i.ic, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.pn126.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ], [ %i.id, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.35.0.i.i.i.i.i.i.i.i = add i64 %.sroa.35.0.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn126.i.i.i.i.i.i.i.i) ]
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !76996 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dj, align 8, !noalias !76996
  call void @llvm.experimental.noalias.scope.decl(metadata !76999)
  call void @llvm.experimental.noalias.scope.decl(metadata !77002)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77005, !noalias !77006 ; 6 uses
  br i1 %i.dg, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77012)
  call void @llvm.experimental.noalias.scope.decl(metadata !77015)
  call void @llvm.experimental.noalias.scope.decl(metadata !77018)
  call void @llvm.experimental.noalias.scope.decl(metadata !77021)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !77024, !noalias !77027, !noundef !13 ; 3 uses
  %i.dm = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77024, !noalias !77027, !noundef !13
  %i.dn = icmp eq i64 %i.dm, %i.dl
  br i1 %i.dn, label %bb.u, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.dl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc10.i:                                       ; preds = %bb.u
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !77032, !noalias !77027
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc10.i, %bb.t
  %i.do = phi i64 [ %i.dl, %bb.t ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.i ] ; 3 uses
  %i.dp = icmp sgt i64 %i.do, -1
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !77032, !noalias !77027, !nonnull !13, !noundef !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 44, ptr %i.ds, align 1, !noalias !77033
  %i.dt = add nuw i64 %i.do, 1
  store i64 %i.dt, ptr %i.dk, align 8, !alias.scope !77032, !noalias !77027
  %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77005, !noalias !77006
  br label %bb.v

bb.v:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.s
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.val10.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i

.noexc11.i:                                       ; preds = %bb.v
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77005, !noalias !77034, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77035)
  call void @llvm.experimental.noalias.scope.decl(metadata !77038)
  call void @llvm.experimental.noalias.scope.decl(metadata !77041)
  call void @llvm.experimental.noalias.scope.decl(metadata !77044)
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !77047, !noalias !77050, !noundef !13 ; 3 uses
  %i.dw = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77047, !noalias !77050, !noundef !13
  %i.dx = icmp eq i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.w, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !11

bb.w:                                             ; preds = %.noexc11.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc12.i:                                       ; preds = %bb.w
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !77055, !noalias !77050
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i, %.noexc11.i
  %i.dy = phi i64 [ %i.dv, %.noexc11.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc12.i ] ; 3 uses
  %i.dz = icmp sgt i64 %i.dy, -1
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !77055, !noalias !77050, !nonnull !13, !noundef !13
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dy
  store i8 58, ptr %i.ec, align 1, !noalias !77056
  %i.ed = add nuw i64 %i.dy, 1
  store i64 %i.ed, ptr %i.du, align 8, !alias.scope !77055, !noalias !77050
  call void @llvm.experimental.noalias.scope.decl(metadata !77057)
  call void @llvm.experimental.noalias.scope.decl(metadata !77060)
  call void @llvm.experimental.noalias.scope.decl(metadata !77063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77065
  call void @llvm.experimental.noalias.scope.decl(metadata !77066)
  call void @llvm.experimental.noalias.scope.decl(metadata !77069)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77072, !noalias !77073, !nonnull !13, !align !25, !noundef !13 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77076)
  call void @llvm.experimental.noalias.scope.decl(metadata !77079)
  call void @llvm.experimental.noalias.scope.decl(metadata !77082)
  call void @llvm.experimental.noalias.scope.decl(metadata !77085)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !77088, !noalias !77091, !noundef !13 ; 3 uses
  %i.eg = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77088, !noalias !77091, !noundef !13
  %i.eh = icmp eq i64 %i.eg, %i.ef
  br i1 %i.eh, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ef, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc13.i:                                       ; preds = %bb.x
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !77096, !noalias !77091
  br label %bb.y

bb.y:                                             ; preds = %.noexc13.i, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = phi i64 [ %i.ef, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc13.i ] ; 3 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !77096, !noalias !77091, !nonnull !13, !noundef !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  store i8 123, ptr %i.em, align 1, !noalias !77097
  %i.en = add nuw i64 %i.ei, 1
  store i64 %i.en, ptr %i.ee, align 8, !alias.scope !77096, !noalias !77091
  store i8 0, ptr %i.b, align 8, !noalias !77098
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !77098
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn126.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !77099, !noalias !77100 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn126.i.i.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !77099, !noalias !77100
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !77098
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @265, i64 noundef range(i64 3, 16) 3)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.i

.noexc14.i:                                       ; preds = %bb.y
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77101, !noalias !77102, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77109)
  call void @llvm.experimental.noalias.scope.decl(metadata !77112)
  call void @llvm.experimental.noalias.scope.decl(metadata !77115)
  call void @llvm.experimental.noalias.scope.decl(metadata !77118)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !77121, !noalias !77124, !noundef !13 ; 3 uses
  %i.es = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77121, !noalias !77124, !noundef !13
  %i.et = icmp eq i64 %i.es, %i.er
  br i1 %i.et, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %.noexc14.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.er, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc15.i:                                       ; preds = %bb.z
  %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !77129, !noalias !77124
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc15.i, %.noexc14.i
  %i.eu = phi i64 [ %i.er, %.noexc14.i ], [ %.pre.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i ] ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !77129, !noalias !77124, !nonnull !13, !noundef !13
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu
  store i8 58, ptr %i.ey, align 1, !noalias !77130
  %i.ez = add nuw i64 %i.eu, 1
  store i64 %i.ez, ptr %i.eq, align 8, !alias.scope !77129, !noalias !77124
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77101, !noalias !77102, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.i

.noexc16.i:                                       ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn126.i.i.i.i.i.i.i.i, i64 24
  %i.fb = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb74e49aa8a102c0aE"(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @702, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc16.i
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h3de57f64d7e7693bE.exit.i.i.i.i.i.i"

bb.ab:                                            ; preds = %.noexc17.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn126.i.i.i.i.i.i.i.i, i64 48
  %i.fd = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb74e49aa8a102c0aE"(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @703, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795 ; 2 uses

.noexc18.i:                                       ; preds = %bb.ab
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h3de57f64d7e7693bE.exit.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc18.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn126.i.i.i.i.i.i.i.i, i64 72
  %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fe, align 8, !alias.scope !77099, !noalias !77100
  %i.ff = load i8, ptr %i.b, align 8, !range !1013, !noalias !77098, !noundef !13
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdea7ed574ad11324E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !77098, !nonnull !13, !align !25, !noundef !13 ; 5 uses
  %i.fi = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !range !450, !noalias !77098, !noundef !13
  %i.fj = icmp eq i8 %i.fi, 1
  %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !noalias !77131 ; 6 uses
  br i1 %i.fj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77139)
  call void @llvm.experimental.noalias.scope.decl(metadata !77142)
  call void @llvm.experimental.noalias.scope.decl(metadata !77145)
  call void @llvm.experimental.noalias.scope.decl(metadata !77148)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !77151, !noalias !77154, !noundef !13 ; 3 uses
  %i.fm = load i64, ptr %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77151, !noalias !77154, !noundef !13
  %i.fn = icmp eq i64 %i.fm, %i.fl
  br i1 %i.fn, label %bb.af, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc19.i:                                       ; preds = %bb.af
  %.pre.i.i.i.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !77159, !noalias !77154
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc19.i, %bb.ae
  %i.fo = phi i64 [ %i.fl, %bb.ae ], [ %.pre.i.i.i.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc19.i ] ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !77159, !noalias !77154, !nonnull !13, !noundef !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fo
  store i8 44, ptr %i.fs, align 1, !noalias !77160
  %i.ft = add nuw i64 %i.fo, 1
  store i64 %i.ft, ptr %i.fk, align 8, !alias.scope !77159, !noalias !77154
  %.val9.pre.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !noalias !77131
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ad
  %.val9.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad ], [ %.val9.pre.i.i.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @281, i64 noundef range(i64 3, 27) 6)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.i

.noexc20.i:                                       ; preds = %bb.ag
  %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !noalias !77161, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77162)
  call void @llvm.experimental.noalias.scope.decl(metadata !77165)
  call void @llvm.experimental.noalias.scope.decl(metadata !77168)
  call void @llvm.experimental.noalias.scope.decl(metadata !77171)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !77174, !noalias !77177, !noundef !13 ; 3 uses
  %i.fw = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77174, !noalias !77177, !noundef !13
  %i.fx = icmp eq i64 %i.fw, %i.fv
  br i1 %i.fx, label %bb.ah, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !11

bb.ah:                                            ; preds = %.noexc20.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc21.i:                                       ; preds = %bb.ah
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !77182, !noalias !77177
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i, %.noexc20.i
  %i.fy = phi i64 [ %i.fv, %.noexc20.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i ] ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, -1
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !77182, !noalias !77177, !nonnull !13, !noundef !13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fy
  store i8 58, ptr %i.gc, align 1, !noalias !77183
  %i.gd = add nuw i64 %i.fy, 1
  store i64 %i.gd, ptr %i.fu, align 8, !alias.scope !77182, !noalias !77177
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !noalias !77161, !nonnull !13, !noundef !13
  %i.ge = trunc nuw i8 %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %..i = select i1 %i.ge, ptr @708, ptr @707
  %.215.i = select i1 %i.ge, i64 11, i64 9
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i, i64 noundef %.215.i)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.i

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdea7ed574ad11324E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ac
  %i.gf = invoke noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
          to label %"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h3de57f64d7e7693bE.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc22.i:                                       ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !noalias !77184, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77189), !noalias !77060
  call void @llvm.experimental.noalias.scope.decl(metadata !77192), !noalias !77060
  call void @llvm.experimental.noalias.scope.decl(metadata !77195), !noalias !77060
  call void @llvm.experimental.noalias.scope.decl(metadata !77198), !noalias !77060
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !77201, !noalias !77204, !noundef !13 ; 3 uses
  %i.gi = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77201, !noalias !77204, !noundef !13
  %i.gj = icmp eq i64 %i.gi, %i.gh
  br i1 %i.gj, label %bb.ai, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17heb38f8dfb45ba490E.exit.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.ai:                                            ; preds = %.noexc22.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !76795

.noexc25.i:                                       ; preds = %bb.ai
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gg, align 8, !alias.scope !77209, !noalias !77204
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17heb38f8dfb45ba490E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17heb38f8dfb45ba490E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i, %.noexc22.i
  %i.gk = phi i64 [ %i.gh, %.noexc22.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc25.i ] ; 3 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl), !noalias !77060
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !77209, !noalias !77204, !nonnull !13, !noundef !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk
  store i8 125, ptr %i.go, align 1, !noalias !77210
  %i.gp = add nuw i64 %i.gk, 1
  store i64 %i.gp, ptr %i.gg, align 8, !alias.scope !77209, !noalias !77204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77065
  %i.gq = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.gq, label %.thread116.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i"

.thread116.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17heb38f8dfb45ba490E.exit.i.i.i.i.i.i.i.i.i.i"
  %.val.i11.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !77005, !noalias !77211, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77214)
  call void @llvm.experimental.noalias.scope.decl(metadata !77217)
  call void @llvm.experimental.noalias.scope.decl(metadata !77220)
  call void @llvm.experimental.noalias.scope.decl(metadata !77223)
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !77226, !noalias !77229, !noundef !13 ; 3 uses
  %i.gt = load i64, ptr %.val.i11.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !77226, !noalias !77229, !noundef !13
  %i.gu = icmp eq i64 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ao, label %bb.ap, !prof !11

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17heb38f8dfb45ba490E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i.i.i, i64 1154
  %i.gw = load i16, ptr %i.gv, align 2, !noalias !77234, !noundef !13
  %i.gx = zext i16 %i.gw to i64
  %i.gy = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i.i.i, %i.gx
  br i1 %i.gy, label %.thread120.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.thread120.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i"
  %i.gz = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i", %bb.aj
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.aj ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hc, %bb.aj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1b514df5cd688608E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !77245, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.he = load i16, ptr %i.hd, align 8, !noalias !77245 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1154
  %i.hg = load i16, ptr %i.hf, align 2, !noalias !77234, !noundef !13
  %i.hh = icmp ult i16 %i.he, %i.hg
  br i1 %i.hh, label %bb.ak, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.hi = zext i16 %i.he to i64                   ; 4 uses
  %i.hj = icmp eq i64 %i.hc, 0
  %i.hk = add nuw nsw i64 %i.hi, 1                ; 2 uses
  br i1 %i.hj, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 1160
  %i.hm = icmp ult i16 %i.he, 11
  call void @llvm.assume(i1 %i.hm), !noalias !76989
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  %xtraiter257 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.prol.loopexit254, label %.prol.preheader253

.prol.preheader253:                               ; preds = %bb.al, %.prol.preheader253
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ho, %.prol.preheader253 ], [ %i.hn, %bb.al ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader253 ], [ %i.hc, %bb.al ]
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.prol.preheader253 ], [ 0, %bb.al ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !77248, !nonnull !13, !noundef !13 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.prol.loopexit254, label %.prol.preheader253, !llvm.loop !77252

.prol.loopexit254:                                ; preds = %.prol.preheader253, %bb.al
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.al ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader253 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.hn, %bb.al ], [ %i.ho, %.prol.preheader253 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.hc, %bb.al ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader253 ]
  %i.hp = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.hp, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i", label %.new255

.new255:                                          ; preds = %.prol.loopexit254, %.new255
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hy, %.new255 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit254 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new255 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit254 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.hq, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.hr, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hs, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.ht = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ht, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.hu, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hv, align 8, !noalias !77248, !nonnull !13, !noundef !13
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hw, align 8, !noalias !77248, !nonnull !13, !noundef !13 ; 2 uses
  %i.hx = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.hx, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i", label %.new255

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.an, !noalias !77253

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !76989
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h007bae9df040e759E.exit.i.i.i.i.i.i.i.i": ; preds = %.prol.loopexit254, %.new255, %bb.ak, %.thread120.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i125.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.ak ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %.thread120.i.i.i.i.i.i.i.i ], [ %i.hb, %.new255 ], [ %i.hb, %.prol.loopexit254 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i124.i.i.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.ak ], [ %.sroa.24.1.i.i.i.i.i.i.i.i, %.thread120.i.i.i.i.i.i.i.i ], [ %i.hi, %.new255 ], [ %i.hi, %.prol.loopexit254 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hk, %bb.ak ], [ %i.gz, %.thread120.i.i.i.i.i.i.i.i ], [ 0, %.new255 ], [ 0, %.prol.loopexit254 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.ak ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %.thread120.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit254 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new255 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i125.i.i.i.i.i.i.i.i, i64 888
  %i.ib = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i124.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ib), !noalias !76989
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %.sroa.6.sroa.4.0.ph.i.i.i124.i.i.i.i.i.i.i.i
  %i.id = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i125.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i124.i.i.i.i.i.i.i.i
  br label %bb.s

bb.ao:                                            ; preds = %.thread116.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i.i, i64 noundef %i.gs, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc26.i:                                       ; preds = %bb.ao
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %i.gr, align 8, !alias.scope !77254, !noalias !77229
  br label %bb.ap

"_ZN10serde_core3ser5impls110_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$9serialize17h3de57f64d7e7693bE.exit.i.i.i.i.i.i": ; preds = %.noexc18.i, %.noexc17.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdea7ed574ad11324E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hdea7ed574ad11324E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fd, %.noexc18.i ], [ %i.fb, %.noexc17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77065
  br label %.loopexit62.i

bb.ap:                                            ; preds = %.noexc26.i, %.thread116.i.i.i.i.i.i.i.i
  %i.ie = phi i64 [ %i.gs, %.thread116.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i, %.noexc26.i ] ; 3 uses
  %i.if = icmp sgt i64 %i.ie, -1
  call void @llvm.assume(i1 %i.if)
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i11.i.i.i.i.i.i.i.i, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !77254, !noalias !77229, !nonnull !13, !noundef !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ie
  store i8 125, ptr %i.ii, align 1, !noalias !77255
  %i.ij = add nuw i64 %i.ie, 1
  store i64 %i.ij, ptr %i.gr, align 8, !alias.scope !77254, !noalias !77229
  call void @llvm.experimental.noalias.scope.decl(metadata !77256)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !77259)
  %.val.i.i.i34.i.i.i = load ptr, ptr %i.s, align 8, !noalias !77262, !nonnull !13, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77268)
  call void @llvm.experimental.noalias.scope.decl(metadata !77271)
  call void @llvm.experimental.noalias.scope.decl(metadata !77274)
  call void @llvm.experimental.noalias.scope.decl(metadata !77277)
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i.i34.i.i.i, i64 16 ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !77280, !noalias !77283, !noundef !13 ; 3 uses
  %i.in = load i64, ptr %.val.i.i.i34.i.i.i, align 8, !range !26, !alias.scope !77280, !noalias !77283, !noundef !13
  %i.io = icmp eq i64 %i.in, %i.im
  br i1 %i.io, label %bb.ar, label %bb.as, !prof !11

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i34.i.i.i, i64 noundef %i.im, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc28.i:                                       ; preds = %bb.ar
  %.pre.i.i.i.i.i.i.i.i.i77.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !77288, !noalias !77283
  br label %bb.as

bb.as:                                            ; preds = %.noexc28.i, %bb.aq
  %i.ip = phi i64 [ %i.im, %bb.aq ], [ %.pre.i.i.i.i.i.i.i.i.i77.i.i.i, %.noexc28.i ] ; 3 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw i8, ptr %.val.i.i.i34.i.i.i, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !77288, !noalias !77283, !nonnull !13, !noundef !13
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ip
  store i8 44, ptr %i.it, align 1, !noalias !77289
  %i.iu = add nuw i64 %i.ip, 1
  store i64 %i.iu, ptr %i.il, align 8, !alias.scope !77288, !noalias !77283
  %.val9.pre.i.i.i36.i.i.i = load ptr, ptr %i.s, align 8, !noalias !77262
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !76836
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.pre.i.i.i36.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @705, i64 noundef range(i64 3, 27) 6)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc29.i:                                       ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !77290)
  %.val.i5.i.i38.i.i.i = load ptr, ptr %i.s, align 8, !noalias !77293, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77294)
  call void @llvm.experimental.noalias.scope.decl(metadata !77297)
  call void @llvm.experimental.noalias.scope.decl(metadata !77300)
  call void @llvm.experimental.noalias.scope.decl(metadata !77303)
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i5.i.i38.i.i.i, i64 16 ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !77306, !noalias !77309, !noundef !13 ; 3 uses
  %i.ix = load i64, ptr %.val.i5.i.i38.i.i.i, align 8, !range !26, !alias.scope !77306, !noalias !77309, !noundef !13
  %i.iy = icmp eq i64 %i.ix, %i.iw
  br i1 %i.iy, label %bb.at, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i39.i.i.i, !prof !11

bb.at:                                            ; preds = %.noexc29.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i38.i.i.i, i64 noundef %i.iw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc30.i:                                       ; preds = %bb.at
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i = load i64, ptr %i.iv, align 8, !alias.scope !77314, !noalias !77309
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i39.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i39.i.i.i: ; preds = %.noexc30.i, %.noexc29.i
  %i.iz = phi i64 [ %i.iw, %.noexc29.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i, %.noexc30.i ] ; 3 uses
  %i.ja = icmp sgt i64 %i.iz, -1
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i5.i.i38.i.i.i, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !77314, !noalias !77309, !nonnull !13, !noundef !13
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iz
  store i8 58, ptr %i.jd, align 1, !noalias !77315
end_hunk_7
begin_hunk_8_@_ZN4dump6writer10DumpWriter14create_network17h44710d986e9e796aE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !77446)
  call void @llvm.experimental.noalias.scope.decl(metadata !77449)
  %i.mb = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77452, !noalias !77455, !noundef !13
  %i.mc = icmp eq i64 %i.mb, %i.ma
  br i1 %i.mc, label %bb.bd, label %bb.be, !prof !11

bb.bd:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.ma, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc35.i:                                       ; preds = %bb.bd
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77469, !noalias !77455
  br label %bb.be

bb.be:                                            ; preds = %.noexc35.i, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i
  %i.md = phi i64 [ %i.ma, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc35.i ] ; 3 uses
  %i.me = icmp sgt i64 %i.md, -1
  call void @llvm.assume(i1 %i.me)
  %i.mf = load ptr, ptr %i.jq, align 8, !alias.scope !77469, !noalias !77455, !nonnull !13, !noundef !13
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.md
  store i8 123, ptr %i.mg, align 1, !noalias !77470
  %i.mh = add nuw i64 %i.md, 1
  store i64 %i.mh, ptr %i.jk, align 8, !alias.scope !77469, !noalias !77455
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc36.i:                                       ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !77471)
  call void @llvm.experimental.noalias.scope.decl(metadata !77474)
  call void @llvm.experimental.noalias.scope.decl(metadata !77477)
  call void @llvm.experimental.noalias.scope.decl(metadata !77480)
  %i.mi = load i64, ptr %i.jk, align 8, !alias.scope !77483, !noalias !77486, !noundef !13 ; 3 uses
  %i.mj = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77483, !noalias !77486, !noundef !13
  %i.mk = icmp eq i64 %i.mj, %i.mi
  br i1 %i.mk, label %bb.bf, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.bf:                                            ; preds = %.noexc36.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.mi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc37.i:                                       ; preds = %bb.bf
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77499, !noalias !77486
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc37.i, %.noexc36.i
  %i.ml = phi i64 [ %i.mi, %.noexc36.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc37.i ] ; 3 uses
  %i.mm = icmp sgt i64 %i.ml, -1
  call void @llvm.assume(i1 %i.mm)
  %i.mn = load ptr, ptr %i.jq, align 8, !alias.scope !77499, !noalias !77486, !nonnull !13, !noundef !13
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ml
  store i8 58, ptr %i.mo, align 1, !noalias !77500
  %i.mp = add nuw i64 %i.ml, 1
  store i64 %i.mp, ptr %i.jk, align 8, !alias.scope !77499, !noalias !77486
  %i.mq = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lq, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795 ; 2 uses

.noexc38.i:                                       ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %.loopexit62.i

bb.bg:                                            ; preds = %.noexc38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !77501)
  call void @llvm.experimental.noalias.scope.decl(metadata !77504)
  call void @llvm.experimental.noalias.scope.decl(metadata !77507)
  call void @llvm.experimental.noalias.scope.decl(metadata !77510)
  %i.mr = load i64, ptr %i.jk, align 8, !alias.scope !77513, !noalias !77516, !noundef !13 ; 3 uses
  %i.ms = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77513, !noalias !77516, !noundef !13
  %i.mt = icmp eq i64 %i.ms, %i.mr
  br i1 %i.mt, label %bb.bh, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.mr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc39.i:                                       ; preds = %bb.bh
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77525, !noalias !77516
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc39.i, %bb.bg
  %i.mu = phi i64 [ %i.mr, %bb.bg ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %.noexc39.i ] ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, -1
  call void @llvm.assume(i1 %i.mv)
  %i.mw = load ptr, ptr %i.jq, align 8, !alias.scope !77525, !noalias !77516, !nonnull !13, !noundef !13
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 125, ptr %i.mx, align 1, !noalias !77526
  %i.my = add nuw i64 %i.mu, 1                    ; 3 uses
  store i64 %i.my, ptr %i.jk, align 8, !alias.scope !77525, !noalias !77516
  %i.mz = icmp eq i64 %.sink.i.i.i.i.i.i41.i.i.i, 1
  br i1 %i.mz, label %.thread173.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"
  %i.na = add i64 %.sink.i.i.i.i.i.i41.i.i.i, -2
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, i64 538
  %i.nc = load i16, ptr %i.nb, align 2, !noalias !77527, !noundef !13
  %i.nd = zext i16 %i.nc to i64
  %i.ne = icmp samesign ult i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, %i.nd
  br i1 %i.ne, label %.thread147.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i

.thread147.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i"
  %i.nf = add nuw nsw i64 %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.prol.loopexit271, %.new272, %bb.bj, %.thread147.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i182.sink264.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %.thread147.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.bj ], [ %i.ng, %.new272 ], [ %i.ng, %.prol.loopexit271 ]
  %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i79.i.i.i.i.i.i.i.i, %.thread147.i.i.i.i.i.i.i.i ], [ %i.nn, %bb.bj ], [ %i.nn, %.new272 ], [ %i.nn, %.prol.loopexit271 ]
  %.sroa.33.1.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.nf, %.thread147.i.i.i.i.i.i.i.i ], [ %i.np, %bb.bj ], [ 0, %.new272 ], [ 0, %.prol.loopexit271 ]
  %.sroa.10.1.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %.thread147.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.bj ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.lcssa.unr, %.prol.loopexit271 ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7, %.new272 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i:               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i", %bb.bi
  %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i = phi ptr [ %i.ng, %bb.bi ], [ %.sroa.07.0.i.i.i80.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i = phi i64 [ %i.nh, %bb.bi ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i22.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ng = load ptr, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i, align 8, !noalias !77538, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i31.i.i.i.i.i50.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i31.i.i.i.i.i50.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i
  %i.nh = add i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i, 1 ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i29.i.i.i.i.i48.i.i.i, i64 536
  %i.nj = load i16, ptr %i.ni, align 8, !noalias !77538 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 538
  %i.nl = load i16, ptr %i.nk, align 2, !noalias !77527, !noundef !13
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
  call void @llvm.assume(i1 %i.nr), !noalias !77401
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.np ; 2 uses
  %xtraiter274 = and i64 %i.nh, 7                 ; 2 uses
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.prol.loopexit271, label %.prol.preheader270

.prol.preheader270:                               ; preds = %bb.bk, %.prol.preheader270
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.prol = phi ptr [ %i.nt, %.prol.preheader270 ], [ %i.ns, %bb.bk ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol, %.prol.preheader270 ], [ %i.nh, %bb.bk ]
  %prol.iter276 = phi i64 [ %prol.iter276.next, %.prol.preheader270 ], [ 0, %bb.bk ]
  %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.prol, align 8, !noalias !77541, !nonnull !13, !noundef !13 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter276.next = add i64 %prol.iter276, 1   ; 2 uses
  %prol.iter276.cmp.not = icmp eq i64 %prol.iter276.next, %xtraiter274
  br i1 %prol.iter276.cmp.not, label %.prol.loopexit271, label %.prol.preheader270, !llvm.loop !77545

.prol.loopexit271:                                ; preds = %.prol.preheader270, %bb.bk
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bk ], [ %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.prol, %.prol.preheader270 ]
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.ns, %bb.bk ], [ %i.nt, %.prol.preheader270 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.unr = phi i64 [ %i.nh, %bb.bk ], [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.prol, %.prol.preheader270 ]
  %i.nu = icmp ult i64 %.sroa.5.037.i.i.i.i30.i.i.i.i.i49.i.i.i, 7
  br i1 %i.nu, label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader, label %.new272

.new272:                                          ; preds = %.prol.loopexit271, %.new272
  %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i = phi ptr [ %i.od, %.new272 ], [ %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i.unr, %.prol.loopexit271 ]
  %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i = phi i64 [ %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7, %.new272 ], [ %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i.unr, %.prol.loopexit271 ]
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i36.i.i.i.i.i51.i.i.i, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.nv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.1 = load ptr, ptr %i.nv, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.1, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.2 = load ptr, ptr %i.nw, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.2, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.3 = load ptr, ptr %i.nx, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.3, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.4 = load ptr, ptr %i.ny, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.4, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.5 = load ptr, ptr %i.nz, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.5, i64 544
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.6 = load ptr, ptr %i.oa, align 8, !noalias !77541, !nonnull !13, !noundef !13
  %i.ob = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.6, i64 544
  %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7 = add i64 %.pn28.in.i.i.i.i37.i.i.i.i.i52.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7 = load ptr, ptr %i.ob, align 8, !noalias !77541, !nonnull !13, !noundef !13 ; 2 uses
  %i.oc = icmp eq i64 %.pn28.i.i.i.i38.i.i.i.i.i53.i.i.i.7, 0
  %i.od = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i39.i.i.i.i.i54.i.i.i.7, i64 544
  br i1 %i.oc, label %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader, label %.new272

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i28.i.i.i.i.i47.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i45.i.i.i.i.i75.i.i.i unwind label %bb.bm, !noalias !77546

.noexc.i.i45.i.i.i.i.i75.i.i.i:                   ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !77401
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.i.outer:             ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i182.sink264.i.i.i.i.i.i.i.i.ph220 = phi ptr [ %.sroa.0.0.ph.i.i.i182.sink264.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.sg, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph221 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.sn, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph = phi i64 [ %i.my, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa227, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.47.0.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.na, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa228, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.33.1.i.i.i.i.i.i.i.i.ph222 = phi i64 [ %.sroa.33.1.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.33.1.i.i.i.i.i.i.i.i.ph222.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.10.1.i.i.i.i.i.i.i.i.ph223 = phi ptr [ %.sroa.10.1.i.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.ph223.be, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i182.sink264.i.i.i.i.i.i.i.i.ph220, i64 8
  %i.og = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph221, 11
  call void @llvm.assume(i1 %i.og), !noalias !77401
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph221 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i182.sink264.i.i.i.i.i.i.i.i.ph220, i64 272
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i.ph221
  %i.ok = getelementptr i8, ptr %i.oh, i64 8
  %.val9.i.i.i.i.i.i.i57.i.i.i.peel = load ptr, ptr %i.ok, align 8, !noalias !77408 ; 2 uses
  %i.ol = getelementptr i8, ptr %i.oh, i64 16
  %.val10.i.i.i.i.i.i.i58.i.i.i.peel = load i64, ptr %i.ol, align 8, !noalias !77408
  call void @llvm.experimental.noalias.scope.decl(metadata !77547)
  call void @llvm.experimental.noalias.scope.decl(metadata !77550)
  call void @llvm.experimental.noalias.scope.decl(metadata !77553)
  call void @llvm.experimental.noalias.scope.decl(metadata !77556)
  %i.om = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77559, !noalias !77562, !noundef !13
  %i.on = icmp eq i64 %i.om, %.ph
  br i1 %i.on, label %bb.bn, label %bb.bo, !prof !11

bb.bn:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.outer
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %.ph, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795

.noexc40.i.peel:                                  ; preds = %bb.bn
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77570, !noalias !77562
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc40.i.peel, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer
  %i.oo = phi i64 [ %.ph, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.peel, %.noexc40.i.peel ] ; 3 uses
  %i.op = icmp sgt i64 %i.oo, -1
  call void @llvm.assume(i1 %i.op)
  %i.oq = load ptr, ptr %i.jq, align 8, !alias.scope !77570, !noalias !77562, !nonnull !13, !noundef !13
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 44, ptr %i.or, align 1, !noalias !77571
  %i.os = add nuw i64 %i.oo, 1
  store i64 %i.os, ptr %i.jk, align 8, !alias.scope !77570, !noalias !77562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i57.i.i.i.peel) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i57.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i58.i.i.i.peel)
          to label %.noexc41.i.peel unwind label %.loopexit.i.loopexit.split-lp

.noexc41.i.peel:                                  ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !77572)
  call void @llvm.experimental.noalias.scope.decl(metadata !77574)
  call void @llvm.experimental.noalias.scope.decl(metadata !77576)
  call void @llvm.experimental.noalias.scope.decl(metadata !77578)
  %i.ot = load i64, ptr %i.jk, align 8, !alias.scope !77580, !noalias !77581, !noundef !13 ; 3 uses
  %i.ou = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77580, !noalias !77581, !noundef !13
  %i.ov = icmp eq i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.bp, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel, !prof !11

bb.bp:                                            ; preds = %.noexc41.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.ot, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc42.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795

.noexc42.i.peel:                                  ; preds = %bb.bp
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77582, !noalias !77581
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel: ; preds = %.noexc42.i.peel, %.noexc41.i.peel
  %i.ow = phi i64 [ %i.ot, %.noexc41.i.peel ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc42.i.peel ] ; 3 uses
  %i.ox = icmp sgt i64 %i.ow, -1
  call void @llvm.assume(i1 %i.ox)
  %i.oy = load ptr, ptr %i.jq, align 8, !alias.scope !77582, !noalias !77581, !nonnull !13, !noundef !13
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store i8 58, ptr %i.oz, align 1, !noalias !77583
  %i.pa = add nuw i64 %i.ow, 1                    ; 4 uses
  store i64 %i.pa, ptr %i.jk, align 8, !alias.scope !77582, !noalias !77581
  call void @llvm.experimental.noalias.scope.decl(metadata !77584)
  call void @llvm.experimental.noalias.scope.decl(metadata !77586)
  call void @llvm.experimental.noalias.scope.decl(metadata !77588)
  call void @llvm.experimental.noalias.scope.decl(metadata !77590)
  %i.pb = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77592, !noalias !77593, !noundef !13
  %i.pc = icmp eq i64 %i.pb, %i.pa
  br i1 %i.pc, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pa, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795

.noexc43.i.peel:                                  ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77594, !noalias !77593
  br label %bb.br

bb.br:                                            ; preds = %.noexc43.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel
  %i.pd = phi i64 [ %i.pa, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i.peel ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i.peel, %.noexc43.i.peel ] ; 3 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  call void @llvm.assume(i1 %i.pe)
  %i.pf = load ptr, ptr %i.jq, align 8, !alias.scope !77594, !noalias !77593, !nonnull !13, !noundef !13
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pd
  store i8 123, ptr %i.pg, align 1, !noalias !77595
  %i.ph = add nuw i64 %i.pd, 1
  store i64 %i.ph, ptr %i.jk, align 8, !alias.scope !77594, !noalias !77593
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc44.i.peel unwind label %.loopexit.i.loopexit.split-lp

.noexc44.i.peel:                                  ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !77596)
  call void @llvm.experimental.noalias.scope.decl(metadata !77598)
  call void @llvm.experimental.noalias.scope.decl(metadata !77600)
  call void @llvm.experimental.noalias.scope.decl(metadata !77602)
  %i.pi = load i64, ptr %i.jk, align 8, !alias.scope !77604, !noalias !77605, !noundef !13 ; 3 uses
  %i.pj = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77604, !noalias !77605, !noundef !13
  %i.pk = icmp eq i64 %i.pj, %i.pi
  br i1 %i.pk, label %bb.bs, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", !prof !11

bb.bs:                                            ; preds = %.noexc44.i.peel
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795

.noexc45.i.peel:                                  ; preds = %bb.bs
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77606, !noalias !77605
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc45.i.peel, %.noexc44.i.peel
  %i.pl = phi i64 [ %i.pi, %.noexc44.i.peel ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.peel, %.noexc45.i.peel ] ; 3 uses
  %i.pm = icmp sgt i64 %i.pl, -1
  call void @llvm.assume(i1 %i.pm)
  %i.pn = load ptr, ptr %i.jq, align 8, !alias.scope !77606, !noalias !77605, !nonnull !13, !noundef !13
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pl
  store i8 58, ptr %i.po, align 1, !noalias !77607
  %i.pp = add nuw i64 %i.pl, 1
  store i64 %i.pp, ptr %i.jk, align 8, !alias.scope !77606, !noalias !77605
  %i.pq = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oj, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc46.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795 ; 2 uses

.noexc46.i.peel:                                  ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.bt, label %.loopexit62.i

bb.bt:                                            ; preds = %.noexc46.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !77608)
  call void @llvm.experimental.noalias.scope.decl(metadata !77610)
  call void @llvm.experimental.noalias.scope.decl(metadata !77612)
  call void @llvm.experimental.noalias.scope.decl(metadata !77614)
  %i.pr = load i64, ptr %i.jk, align 8, !alias.scope !77616, !noalias !77617, !noundef !13 ; 3 uses
  %i.ps = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77616, !noalias !77617, !noundef !13
  %i.pt = icmp eq i64 %i.ps, %i.pr
  br i1 %i.pt, label %bb.bu, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel", !prof !11

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.pr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.i.peel unwind label %.loopexit.i.loopexit.split-lp, !noalias !76795

.noexc47.i.peel:                                  ; preds = %bb.bu
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.jk, align 8, !alias.scope !77618, !noalias !77617
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %.noexc47.i.peel, %bb.bt
  %i.pu = phi i64 [ %i.pr, %bb.bt ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.noexc47.i.peel ] ; 3 uses
  %i.pv = icmp sgt i64 %i.pu, -1
  call void @llvm.assume(i1 %i.pv)
  %i.pw = load ptr, ptr %i.jq, align 8, !alias.scope !77618, !noalias !77617, !nonnull !13, !noundef !13
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pu
  store i8 125, ptr %i.px, align 1, !noalias !77619
  %i.py = add nuw i64 %i.pu, 1                    ; 4 uses
  store i64 %i.py, ptr %i.jk, align 8, !alias.scope !77618, !noalias !77617
  %i.pz = icmp eq i64 %.sroa.47.0.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.pz, label %.thread173.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel"
  %i.qa = add i64 %.sroa.47.0.i.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.i.ph223, i64 538
  %i.qc = load i16, ptr %i.qb, align 2, !noalias !77620, !noundef !13
  %i.qd = zext i16 %i.qc to i64
  %i.qe = icmp ult i64 %.sroa.33.1.i.i.i.i.i.i.i.i.ph222, %i.qd
  br i1 %i.qe, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph:  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.i.ph223, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.i.ph223, i64 272
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.i.ph223, i64 538
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.33.1.i.i.i.i.i.i.i.i.ph222, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.33.1.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.qi = phi i64 [ %i.py, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.47.0.i.i.i.i.i.i.i.i = phi i64 [ %i.qa, %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.sc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.33.1.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.qj), !noalias !77401
  %i.qk = getelementptr inbounds nuw [24 x i8], ptr %i.qf, i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i ; 2 uses
  %i.ql = getelementptr inbounds nuw [24 x i8], ptr %i.qg, i64 %.sroa.6.sroa.4.0.ph.i.i.i181.sink263.i.i.i.i.i.i.i.i
  %i.qm = getelementptr i8, ptr %i.qk, i64 8
  %.val9.i.i.i.i.i.i.i57.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !77408 ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qk, i64 16
  %.val10.i.i.i.i.i.i.i58.i.i.i = load i64, ptr %i.qn, align 8, !noalias !77408
  call void @llvm.experimental.noalias.scope.decl(metadata !77631)
  call void @llvm.experimental.noalias.scope.decl(metadata !77633)
  call void @llvm.experimental.noalias.scope.decl(metadata !77635)
  call void @llvm.experimental.noalias.scope.decl(metadata !77637)
  %i.qo = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77639, !noalias !77562, !noundef !13
  %i.qp = icmp eq i64 %i.qo, %i.qi
  br i1 %i.qp, label %bb.bv, label %bb.bw, !prof !11

bb.bv:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.qi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.i unwind label %.loopexit.i.loopexit, !noalias !76795

.noexc40.i:                                       ; preds = %bb.bv
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77640, !noalias !77562
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc40.i, %.peel.next.i.i.i.i.i.i.i.i.i.i
  %i.qq = phi i64 [ %i.qi, %.peel.next.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i, %.noexc40.i ] ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, -1
  call void @llvm.assume(i1 %i.qr)
  %i.qs = load ptr, ptr %i.jq, align 8, !alias.scope !77640, !noalias !77562, !nonnull !13, !noundef !13
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qq
  store i8 44, ptr %i.qt, align 1, !noalias !77641
  %i.qu = add nuw i64 %i.qq, 1
  store i64 %i.qu, ptr %i.jk, align 8, !alias.scope !77640, !noalias !77562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i57.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i57.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i58.i.i.i)
          to label %.noexc41.i unwind label %.loopexit.i.loopexit

.noexc41.i:                                       ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !77642)
  call void @llvm.experimental.noalias.scope.decl(metadata !77644)
  call void @llvm.experimental.noalias.scope.decl(metadata !77646)
  call void @llvm.experimental.noalias.scope.decl(metadata !77648)
  %i.qv = load i64, ptr %i.jk, align 8, !alias.scope !77650, !noalias !77581, !noundef !13 ; 3 uses
  %i.qw = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77650, !noalias !77581, !noundef !13
  %i.qx = icmp eq i64 %i.qw, %i.qv
  br i1 %i.qx, label %bb.bx, label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i, !prof !11

bb.bx:                                            ; preds = %.noexc41.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.qv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc42.i unwind label %.loopexit.i.loopexit, !noalias !76795

.noexc42.i:                                       ; preds = %bb.bx
  %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77651, !noalias !77581
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i: ; preds = %.noexc42.i, %.noexc41.i
  %i.qy = phi i64 [ %i.qv, %.noexc41.i ], [ %.pre.i.i.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc42.i ] ; 3 uses
  %i.qz = icmp sgt i64 %i.qy, -1
  call void @llvm.assume(i1 %i.qz)
  %i.ra = load ptr, ptr %i.jq, align 8, !alias.scope !77651, !noalias !77581, !nonnull !13, !noundef !13
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qy
  store i8 58, ptr %i.rb, align 1, !noalias !77652
  %i.rc = add nuw i64 %i.qy, 1                    ; 4 uses
  store i64 %i.rc, ptr %i.jk, align 8, !alias.scope !77651, !noalias !77581
  call void @llvm.experimental.noalias.scope.decl(metadata !77653)
  call void @llvm.experimental.noalias.scope.decl(metadata !77655)
  call void @llvm.experimental.noalias.scope.decl(metadata !77657)
  call void @llvm.experimental.noalias.scope.decl(metadata !77659)
  %i.rd = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77661, !noalias !77593, !noundef !13
  %i.re = icmp eq i64 %i.rd, %i.rc
  br i1 %i.re, label %bb.by, label %bb.bz, !prof !11

bb.by:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rc, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc43.i unwind label %.loopexit.i.loopexit, !noalias !76795

.noexc43.i:                                       ; preds = %bb.by
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77662, !noalias !77593
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc43.i, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i
  %i.rf = phi i64 [ %i.rc, %_ZN10serde_json3ser9Formatter18begin_object_value17he44b525f2292cca0E.exit.i.i.i.i.i.i.i.i.i.i.i59.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i73.i.i.i, %.noexc43.i ] ; 3 uses
  %i.rg = icmp sgt i64 %i.rf, -1
  call void @llvm.assume(i1 %i.rg)
  %i.rh = load ptr, ptr %i.jq, align 8, !alias.scope !77662, !noalias !77593, !nonnull !13, !noundef !13
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rf
  store i8 123, ptr %i.ri, align 1, !noalias !77663
  %i.rj = add nuw i64 %i.rf, 1
  store i64 %i.rj, ptr %i.jk, align 8, !alias.scope !77662, !noalias !77593
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i6.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @701, i64 noundef range(i64 3, 27) 7)
          to label %.noexc44.i unwind label %.loopexit.i.loopexit

.noexc44.i:                                       ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !77664)
  call void @llvm.experimental.noalias.scope.decl(metadata !77666)
  call void @llvm.experimental.noalias.scope.decl(metadata !77668)
  call void @llvm.experimental.noalias.scope.decl(metadata !77670)
  %i.rk = load i64, ptr %i.jk, align 8, !alias.scope !77672, !noalias !77605, !noundef !13 ; 3 uses
  %i.rl = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77672, !noalias !77605, !noundef !13
  %i.rm = icmp eq i64 %i.rl, %i.rk
  br i1 %i.rm, label %bb.ca, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.ca:                                            ; preds = %.noexc44.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i unwind label %.loopexit.i.loopexit, !noalias !76795

.noexc45.i:                                       ; preds = %bb.ca
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77673, !noalias !77605
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc45.i, %.noexc44.i
  %i.rn = phi i64 [ %i.rk, %.noexc44.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i72.i.i.i, %.noexc45.i ] ; 3 uses
  %i.ro = icmp sgt i64 %i.rn, -1
  call void @llvm.assume(i1 %i.ro)
  %i.rp = load ptr, ptr %i.jq, align 8, !alias.scope !77673, !noalias !77605, !nonnull !13, !noundef !13
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rn
  store i8 58, ptr %i.rq, align 1, !noalias !77674
  %i.rr = add nuw i64 %i.rn, 1
  store i64 %i.rr, ptr %i.jk, align 8, !alias.scope !77673, !noalias !77605
  %i.rs = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls106_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..collections..btree..set..BTreeSet$LT$T$GT$$GT$9serialize17h96b01beb75d1939cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql, ptr nonnull %.val9.i6.i.i.i.i.i)
          to label %.noexc46.i unwind label %.loopexit.i.loopexit, !noalias !76795 ; 2 uses

.noexc46.i:                                       ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h971946969a8624e4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cb, label %.loopexit62.i

bb.cb:                                            ; preds = %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !77675)
  call void @llvm.experimental.noalias.scope.decl(metadata !77677)
  call void @llvm.experimental.noalias.scope.decl(metadata !77679)
  call void @llvm.experimental.noalias.scope.decl(metadata !77681)
  %i.rt = load i64, ptr %i.jk, align 8, !alias.scope !77683, !noalias !77617, !noundef !13 ; 3 uses
  %i.ru = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77683, !noalias !77617, !noundef !13
  %i.rv = icmp eq i64 %i.ru, %i.rt
  br i1 %i.rv, label %bb.cc, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i", !prof !11

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %i.rt, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.i unwind label %.loopexit.i.loopexit, !noalias !76795

.noexc47.i:                                       ; preds = %bb.cc
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jk, align 8, !alias.scope !77684, !noalias !77617
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc47.i, %bb.cb
  %i.rw = phi i64 [ %i.rt, %bb.cb ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc47.i ] ; 3 uses
  %i.rx = icmp sgt i64 %i.rw, -1
  call void @llvm.assume(i1 %i.rx)
  %i.ry = load ptr, ptr %i.jq, align 8, !alias.scope !77684, !noalias !77617, !nonnull !13, !noundef !13
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  store i8 125, ptr %i.rz, align 1, !noalias !77685
  %i.sa = add nuw i64 %i.rw, 1                    ; 4 uses
  store i64 %i.sa, ptr %i.jk, align 8, !alias.scope !77684, !noalias !77617
  %i.sb = icmp eq i64 %.sroa.47.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.sb, label %.thread173.i.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.sc = add i64 %.sroa.47.0.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.sd = load i16, ptr %i.qh, align 2, !noalias !77620, !noundef !13
  %i.se = zext i16 %i.sd to i64
  %i.sf = icmp samesign ult i64 %.sroa.33.1.i.i.i.i.i.i.i.i, %i.se
  br i1 %i.sf, label %.peel.next.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader, !llvm.loop !77686

.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader:       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel"
  %.lcssa228 = phi i64 [ %i.qa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel" ], [ %i.sc, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ]
  %.lcssa227 = phi i64 [ %i.py, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i.peel" ], [ %i.sa, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hbacbe06b68e6d180E.exit.i.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader, %bb.cd
  %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i = phi ptr [ %i.sg, %bb.cd ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.ph223, %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i = phi i64 [ %i.sh, %bb.cd ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i.preheader ] ; 2 uses
  %i.sg = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i, align 8, !noalias !77687, !noundef !13 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i63.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i63.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i
  %i.sh = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i, 1 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i61.i.i.i, i64 536
  %i.sj = load i16, ptr %i.si, align 8, !noalias !77687 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 538
  %i.sl = load i16, ptr %i.sk, align 2, !noalias !77620, !noundef !13
  %i.sm = icmp ult i16 %i.sj, %i.sl
  br i1 %i.sm, label %bb.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.sn = zext i16 %i.sj to i64                   ; 2 uses
  %i.so = icmp eq i64 %i.sh, 0
  %i.sp = add nuw nsw i64 %i.sn, 1                ; 2 uses
  br i1 %i.so, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.cf

.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge:    ; preds = %.prol.loopexit283, %.new284, %bb.ce
  %.sroa.33.1.i.i.i.i.i.i.i.i.ph222.be = phi i64 [ %i.sp, %bb.ce ], [ 0, %.new284 ], [ 0, %.prol.loopexit283 ]
  %.sroa.10.1.i.i.i.i.i.i.i.i.ph223.be = phi ptr [ %i.sg, %bb.ce ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.lcssa.unr, %.prol.loopexit283 ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7, %.new284 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer, !llvm.loop !77690

bb.cf:                                            ; preds = %bb.ce
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sg, i64 544
  %i.sr = icmp ult i16 %i.sj, 11
  call void @llvm.assume(i1 %i.sr), !noalias !77401
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sp ; 2 uses
  %xtraiter286 = and i64 %i.sh, 7                 ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.prol.loopexit283, label %.prol.preheader282

.prol.preheader282:                               ; preds = %bb.cf, %.prol.preheader282
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.prol = phi ptr [ %i.st, %.prol.preheader282 ], [ %i.ss, %bb.cf ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol, %.prol.preheader282 ], [ %i.sh, %bb.cf ]
  %prol.iter288 = phi i64 [ %prol.iter288.next, %.prol.preheader282 ], [ 0, %bb.cf ]
  %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.prol, align 8, !noalias !77691, !nonnull !13, !noundef !13 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %.prol.loopexit283, label %.prol.preheader282, !llvm.loop !77695

.prol.loopexit283:                                ; preds = %.prol.preheader282, %bb.cf
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cf ], [ %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.prol, %.prol.preheader282 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.unr = phi ptr [ %i.ss, %bb.cf ], [ %i.st, %.prol.preheader282 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.unr = phi i64 [ %i.sh, %bb.cf ], [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.prol, %.prol.preheader282 ]
  %i.su = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i62.i.i.i, 7
  br i1 %i.su, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new284

.new284:                                          ; preds = %.prol.loopexit283, %.new284
  %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i = phi ptr [ %i.td, %.new284 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i.unr, %.prol.loopexit283 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7, %.new284 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i.unr, %.prol.loopexit283 ]
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i64.i.i.i, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.sv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.1 = load ptr, ptr %i.sv, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.sw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.2 = load ptr, ptr %i.sw, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.3 = load ptr, ptr %i.sx, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.4 = load ptr, ptr %i.sy, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.5 = load ptr, ptr %i.sz, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.6 = load ptr, ptr %i.ta, align 8, !noalias !77691, !nonnull !13, !noundef !13
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i65.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7 = load ptr, ptr %i.tb, align 8, !noalias !77691, !nonnull !13, !noundef !13 ; 2 uses
  %i.tc = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i66.i.i.i.7, 0
  %i.td = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i67.i.i.i.7, i64 544
  br i1 %i.tc, label %.peel.next.i.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new284, !llvm.loop !77690

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i70.i.i.i unwind label %bb.ch, !noalias !77696

.noexc.i.i.i.i.i.i.i70.i.i.i:                     ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !77401
  unreachable

.thread173.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i"
  %i.tf = phi i64 [ %i.my, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.peel.i.i.i.i.i.i.i.i.i.i" ], [ %i.sa, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.py, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1616aa7eccb0c5b0E.exit.i.i.i.i.i.i.i.i.i.i.peel" ] ; 3 uses
  %i.tg = load i64, ptr %.val9.i6.i.i.i.i.i, align 8, !range !26, !alias.scope !77697, !noalias !77708, !noundef !13
  %i.th = icmp eq i64 %i.tg, %i.tf
  br i1 %i.th, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i", label %bb.ci, !prof !11

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i": ; preds = %.thread173.i.i.i.i.i.i.i.i, %bb.av
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.jt, %bb.av ], [ %i.tf, %.thread173.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc48.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc48.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3898550735a3eb2cE.exit.sink.split.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i13.i.i.i.i.i71.i.i.i = load i64, ptr %i.jk, align 8, !noalias !77715
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc48.i, %.thread173.i.i.i.i.i.i.i.i, %bb.av
  %.sink267.i.i.i.i.i.i.i.i = phi i64 [ %i.tf, %.thread173.i.i.i.i.i.i.i.i ], [ %i.jt, %bb.av ], [ %.pre.i.i.i.i.i.i.i13.i.i.i.i.i71.i.i.i, %.noexc48.i ] ; 3 uses
  %i.ti = icmp sgt i64 %.sink267.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ti)
  %i.tj = load ptr, ptr %i.jq, align 8, !noalias !77715, !nonnull !13, !noundef !13
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.sink267.i.i.i.i.i.i.i.i
  store i8 125, ptr %i.tk, align 1, !noalias !77715
  %storemerge.i.i.i.i.i.i.i.i = add nuw i64 %.sink267.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.jk, align 8, !noalias !77715
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tm = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb74e49aa8a102c0aE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @706, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tl)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76838 ; 2 uses

.noexc49.i:                                       ; preds = %bb.ci
  %.not32.i.i.i = icmp eq ptr %i.tm, null
  br i1 %.not32.i.i.i, label %bb.cj, label %.loopexit62.i

bb.cj:                                            ; preds = %.noexc49.i
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !77716)
  call void @llvm.experimental.noalias.scope.decl(metadata !77719)
  %i.to = load i8, ptr %i.c, align 8, !range !1013, !alias.scope !77716, !noalias !77721, !noundef !13
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc02beaa1101f9627E.exit.i.invoke.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !77722)
  call void @llvm.experimental.noalias.scope.decl(metadata !77725)
  call void @llvm.experimental.noalias.scope.decl(metadata !77727)
  %i.tq = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !77730, !noalias !77731, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  %i.tr = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !range !450, !alias.scope !77730, !noalias !77731, !noundef !13
  %i.ts = icmp eq i8 %i.tr, 1
  %.val.i.i.i1.i.i = load ptr, ptr %i.tq, align 8, !noalias !77733 ; 6 uses
  br i1 %i.ts, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i1.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77734)
  call void @llvm.experimental.noalias.scope.decl(metadata !77737)
  call void @llvm.experimental.noalias.scope.decl(metadata !77740)
  call void @llvm.experimental.noalias.scope.decl(metadata !77743)
  %i.tt = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 16 ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !77746, !noalias !77749, !noundef !13 ; 3 uses
  %i.tv = load i64, ptr %.val.i.i.i1.i.i, align 8, !range !26, !alias.scope !77746, !noalias !77749, !noundef !13
  %i.tw = icmp eq i64 %i.tv, %i.tu
  br i1 %i.tw, label %bb.cm, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i", !prof !11

bb.cm:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i1.i.i, i64 noundef %i.tu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !76795

.noexc50.i:                                       ; preds = %bb.cm
  %.pre.i.i.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.tt, align 8, !alias.scope !77754, !noalias !77749
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i": ; preds = %.noexc50.i, %bb.cl
  %i.tx = phi i64 [ %i.tu, %bb.cl ], [ %.pre.i.i.i.i.i.i.i.i.i4.i.i, %.noexc50.i ] ; 3 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty)
  %i.tz = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !alias.scope !77754, !noalias !77749, !nonnull !13, !noundef !13
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.tx
  store i8 44, ptr %i.ub, align 1, !noalias !77755
  %i.uc = add nuw i64 %i.tx, 1
  store i64 %i.uc, ptr %i.tt, align 8, !alias.scope !77754, !noalias !77749
  %.val9.pre.i.i.i.i.i = load ptr, ptr %i.tq, align 8, !noalias !77733
  br label %bb.cn

bb.cn:                                            ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i", %bb.ck
  %.val9.i.i.i.i.i = phi ptr [ %.val.i.i.i1.i.i, %bb.ck ], [ %.val9.pre.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE.exit.i.i.i.i.i.i" ]
  store i8 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !77730, !noalias !77731
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17ha54f8722ac753d23E"(ptr nonnull %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @424, i64 noundef range(i64 3, 27) 7)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc51.i:                                       ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !77756)
  %.val.i5.i.i.i.i = load ptr, ptr %i.tq, align 8, !noalias !77759, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77760)
  call void @llvm.experimental.noalias.scope.decl(metadata !77763)
  call void @llvm.experimental.noalias.scope.decl(metadata !77766)
  call void @llvm.experimental.noalias.scope.decl(metadata !77769)
  %i.ud = getelementptr inbounds nuw i8, ptr %.val.i5.i.i.i.i, i64 16 ; 3 uses
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !77772, !noalias !77775, !noundef !13 ; 3 uses
  %i.uf = load i64, ptr %.val.i5.i.i.i.i, align 8, !range !26, !alias.scope !77772, !noalias !77775, !noundef !13
  %i.ug = icmp eq i64 %i.uf, %i.ue
end_hunk_8
begin_hunk_9_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8787eeaa52ae8c9bE":bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %bb.w, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150694)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !150697, !noalias !150698, !nonnull !13, !noundef !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx
  store i8 123, ptr %i.ee, align 1, !noalias !150700
  %i.ef = add nuw i64 %i.dx, 1
  store i64 %i.ef, ptr %i.dw, align 8, !alias.scope !150697, !noalias !150698
  br label %bb.w

bb.w:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.a, align 8, !noalias !150672
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150672
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150672
  %i.eg = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.df), !noalias !150701 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i11.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %bb.x, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !150672
  %i.eh = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150672
  %i.ei = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150672, !nonnull !13, !noundef !13
  %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !150702, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150707)
  %i.ej = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150707, !noalias !150710, !noundef !13
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !150707, !noalias !150710, !noundef !13 ; 4 uses
  %i.em = icmp sgt i64 %i.el, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = sub nsw i64 %i.ej, %i.el
  %i.eo = icmp ugt i64 %i.en, 1
  br i1 %i.eo, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.ep = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !150702 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150714)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !150717, !noalias !150718, !nonnull !13, !noundef !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el
  store i8 125, ptr %i.es, align 1, !noalias !150720
  %i.et = add nuw i64 %i.el, 1
  store i64 %i.et, ptr %i.ek, align 8, !alias.scope !150717, !noalias !150718
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150672
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.u
  %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150721, !noalias !150722, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150723)
  %i.eu = load i64, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150723, !noalias !150726, !noundef !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !150723, !noalias !150726, !noundef !13 ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = sub nsw i64 %i.eu, %i.ew
  %i.ez = icmp ugt i64 %i.ey, 4
  br i1 %i.ez, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.fa = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !150730 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i1.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150731)
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !150734, !noalias !150735, !nonnull !13, !noundef !13
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ew
  store i32 1819047278, ptr %i.fd, align 1, !noalias !150737
  %i.fe = add nuw i64 %i.ew, 4
  store i64 %i.fe, ptr %i.ev, align 8, !alias.scope !150734, !noalias !150735
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.peel.i.i.i.i.i.i.i.i.i"
  %i.ff = icmp eq i64 %.sink.i.i.i.i.i.i.i.i, 1
  br i1 %i.ff, label %.thread182.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"
  %i.fg = add i64 %.sink.i.i.i.i.i.i.i.i, -2
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, i64 1066
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !150738, !noundef !13
  %i.fj = zext i16 %i.fi to i64
  %i.fk = icmp samesign ult i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, %i.fj
  br i1 %i.fk, label %.thread156.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i

.thread156.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i"
  %i.fl = add nuw nsw i64 %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, 1
  br label %.peel.next.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.prol.loopexit109, %.new110, %bb.ab, %.thread156.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i192.sink263.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i ], [ %i.fm, %bb.ab ], [ %i.fm, %.new110 ], [ %i.fm, %.prol.loopexit109 ]
  %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i82.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i ], [ %i.ft, %bb.ab ], [ %i.ft, %.new110 ], [ %i.ft, %.prol.loopexit109 ]
  %.sroa.33.1.i.i.i.i.i.i.i.ph = phi i64 [ %i.fl, %.thread156.i.i.i.i.i.i.i ], [ %i.fv, %bb.ab ], [ 0, %.new110 ], [ 0, %.prol.loopexit109 ]
  %.sroa.10.1.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %.thread156.i.i.i.i.i.i.i ], [ %i.fm, %bb.ab ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit109 ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7, %.new110 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer

.lr.ph.i.i.i.i31.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i", %bb.aa
  %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i = phi ptr [ %i.fm, %bb.aa ], [ %.sroa.07.0.i.i.i83.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i = phi i64 [ %i.fn, %bb.aa ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i25.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fm = load ptr, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i, align 8, !noalias !150749, !noundef !13 ; 8 uses
  %.not.i.i.i.i.i34.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i34.i.i.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i
  %i.fn = add i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i32.i.i.i.i.i.i.i, i64 1064
  %i.fp = load i16, ptr %i.fo, align 8, !noalias !150749 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1066
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !150738, !noundef !13
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
  tail call void @llvm.assume(i1 %i.fx), !noalias !150617
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %xtraiter112 = and i64 %i.fn, 7                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.prol.loopexit109, label %.prol.preheader108

.prol.preheader108:                               ; preds = %bb.ac, %.prol.preheader108
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.prol = phi ptr [ %i.fz, %.prol.preheader108 ], [ %i.fy, %bb.ac ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol, %.prol.preheader108 ], [ %i.fn, %bb.ac ]
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.prol.preheader108 ], [ 0, %bb.ac ]
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.prol, align 8, !noalias !150752, !nonnull !13, !noundef !13 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.prol.loopexit109, label %.prol.preheader108, !llvm.loop !150756

.prol.loopexit109:                                ; preds = %.prol.preheader108, %bb.ac
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ac ], [ %.pn30.i.i.i.i42.i.i.i.i.i.i.i.prol, %.prol.preheader108 ]
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.unr = phi ptr [ %i.fy, %bb.ac ], [ %i.fz, %.prol.preheader108 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.unr = phi i64 [ %i.fn, %bb.ac ], [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.prol, %.prol.preheader108 ]
  %i.ga = icmp ult i64 %.sroa.5.037.i.i.i.i33.i.i.i.i.i.i.i, 7
  br i1 %i.ga, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new110

.new110:                                          ; preds = %.prol.loopexit109, %.new110
  %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.new110 ], [ %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i.unr, %.prol.loopexit109 ]
  %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7, %.new110 ], [ %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i.unr, %.prol.loopexit109 ]
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i39.i.i.i.i.i.i.i, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.1 = load ptr, ptr %i.gb, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.2 = load ptr, ptr %i.gc, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.3 = load ptr, ptr %i.gd, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ge, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.5 = load ptr, ptr %i.gf, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.6 = load ptr, ptr %i.gg, align 8, !noalias !150752, !nonnull !13, !noundef !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i40.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7 = load ptr, ptr %i.gh, align 8, !noalias !150752, !nonnull !13, !noundef !13 ; 2 uses
  %i.gi = icmp eq i64 %.pn28.i.i.i.i41.i.i.i.i.i.i.i.7, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i42.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.gi, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %.new110

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i31.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i48.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !150757

.noexc.i.i48.i.i.i.i.i.i.i:                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !150617
  unreachable

.peel.next.i.i.i.i.i.i.i.i.i.outer:               ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, %.peel.next.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i192.sink263.i.i.i.i.i.i.i.ph85 = phi ptr [ %.sroa.0.0.ph.i.i.i192.sink263.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mf, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph86 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mm, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.47.0.i.i.i.i.i.i.i.ph = phi i64 [ %i.fg, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.lcssa91, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.33.1.i.i.i.i.i.i.i.ph87 = phi i64 [ %.sroa.33.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.33.1.i.i.i.i.i.i.i.ph87.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.10.1.i.i.i.i.i.i.i.ph88 = phi ptr [ %.sroa.10.1.i.i.i.i.i.i.i.ph, %.peel.next.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.10.1.i.i.i.i.i.i.i.ph88.be, %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i192.sink263.i.i.i.i.i.i.i.ph85, i64 8
  %i.gm = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph86, 11
  tail call void @llvm.assume(i1 %i.gm), !noalias !150617
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph86 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i192.sink263.i.i.i.i.i.i.i.ph85, i64 272
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.go, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i.ph86 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gn, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.gq, align 8, !noalias !150625 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gn, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.gr, align 8, !noalias !150625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150760)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150762, !nonnull !13, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150765)
  %i.gs = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !26, !alias.scope !150765, !noalias !150768, !noundef !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !150765, !noalias !150768, !noundef !13 ; 4 uses
  %i.gv = icmp sgt i64 %i.gu, -1
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = sub nsw i64 %i.gs, %i.gu
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %bb.af, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !220

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer
  %i.gy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !150762 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

bb.af:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.outer
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150772)
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !150775, !noalias !150776, !nonnull !13, !noundef !13
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gu
  store i8 44, ptr %i.hb, align 1, !noalias !150778
  %i.hc = add nuw i64 %i.gu, 1
  store i64 %i.hc, ptr %i.gt, align 8, !alias.scope !150775, !noalias !150776
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.af, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150762, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i.peel) ]
  %i.hd = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i.peel, i64 noundef %.val10.i.i.i.i.i.i.i.i.i.peel), !noalias !150762 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ag, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !220

bb.ag:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150779, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150780)
  %i.he = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !26, !alias.scope !150780, !noalias !150782, !noundef !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !150780, !noalias !150782, !noundef !13 ; 4 uses
  %i.hh = icmp sgt i64 %i.hg, -1
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = sub nsw i64 %i.he, %i.hg
  %i.hj = icmp ugt i64 %i.hi, 1
  br i1 %i.hj, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ag
  %i.hk = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !150779 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hk, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ah, label %.loopexit20.i.i.i.i.i.i.i.i.i, !prof !341

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150783)
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !150785, !noalias !150786, !nonnull !13, !noundef !13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hg
  store i8 58, ptr %i.hn, align 1, !noalias !150787
  %i.ho = add nuw i64 %i.hg, 1
  store i64 %i.ho, ptr %i.hf, align 8, !alias.scope !150785, !noalias !150786
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150792)
  %i.hp = load i64, ptr %i.gp, align 8, !range !1067, !alias.scope !150794, !noalias !150795, !noundef !13
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq i64 %i.hp, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150803)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !150805, !noalias !150806, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150807)
  %i.hq = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !26, !alias.scope !150807, !noalias !150809, !noundef !13
  %i.hr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !150807, !noalias !150809, !noundef !13 ; 4 uses
  %i.ht = icmp sgt i64 %i.hs, -1
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = sub nsw i64 %i.hq, %i.hs
  %i.hv = icmp ugt i64 %i.hu, 1
  br i1 %i.hv, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ai
  %i.hw = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !150810 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.aj, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150811)
  %i.hx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !150813, !noalias !150814, !nonnull !13, !noundef !13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hs
  store i8 123, ptr %i.hz, align 1, !noalias !150815
  %i.ia = add nuw i64 %i.hs, 1
  store i64 %i.ia, ptr %i.hr, align 8, !alias.scope !150813, !noalias !150814
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel
  store i8 0, ptr %i.a, align 8, !noalias !150800
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150800
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150800
  %i.ib = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.gp), !noalias !150816 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %bb.ak, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.aj
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %i.a, align 8, !noalias !150800
  %i.ic = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150800
  %i.id = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150800, !nonnull !13, !noundef !13
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !noalias !150817, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150818)
  %i.ie = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !26, !alias.scope !150818, !noalias !150820, !noundef !13
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !150818, !noalias !150820, !noundef !13 ; 4 uses
  %i.ih = icmp sgt i64 %i.ig, -1
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = sub nsw i64 %i.ie, %i.ig
  %i.ij = icmp ugt i64 %i.ii, 1
  br i1 %i.ij, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.al
  %i.ik = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !150817 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.ik, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150821)
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !150823, !noalias !150824, !nonnull !13, !noundef !13
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ig
  store i8 125, ptr %i.in, align 1, !noalias !150825
  %i.io = add nuw i64 %i.ig, 1
  store i64 %i.io, ptr %i.if, align 8, !alias.scope !150823, !noalias !150824
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150800
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"

bb.am:                                            ; preds = %bb.ah
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !150826, !noalias !150827, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150828)
  %i.ip = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, align 8, !range !26, !alias.scope !150828, !noalias !150830, !noundef !13
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 16 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !150828, !noalias !150830, !noundef !13 ; 4 uses
  %i.is = icmp sgt i64 %i.ir, -1
  tail call void @llvm.assume(i1 %i.is)
  %i.it = sub nsw i64 %i.ip, %i.ir
  %i.iu = icmp ugt i64 %i.it, 4
  br i1 %i.iu, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.am
  %i.iv = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !150831 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel = icmp eq ptr %i.iv, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel: ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150832)
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !150834, !noalias !150835, !nonnull !13, !noundef !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ir
  store i32 1819047278, ptr %i.iy, align 1, !noalias !150836
  %i.iz = add nuw i64 %i.ir, 4
  store i64 %i.iz, ptr %i.iq, align 8, !alias.scope !150834, !noalias !150835
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i.peel"
  %i.ja = icmp eq i64 %.sroa.47.0.i.i.i.i.i.i.i.ph, 0
  br i1 %i.ja, label %.thread182.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel"
  %i.jb = add i64 %.sroa.47.0.i.i.i.i.i.i.i.ph, -1 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.ph88, i64 1066
  %i.jd = load i16, ptr %i.jc, align 2, !noalias !150837, !noundef !13
  %i.je = zext i16 %i.jd to i64
  %i.jf = icmp ult i64 %.sroa.33.1.i.i.i.i.i.i.i.ph87, %i.je
  br i1 %i.jf, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph:    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel"
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.ph88, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.ph88, i64 272
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i.i.i.i.i.ph88, i64 1066
  br label %.peel.next.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i", %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i = phi i64 [ %.sroa.33.1.i.i.i.i.i.i.i.ph87, %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %.sroa.33.1.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.47.0.i.i.i.i.i.i.i = phi i64 [ %i.jb, %.peel.next.i.i.i.i.i.i.i.i.i.outer.peel.newph ], [ %i.mb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.33.1.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jj = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.jj), !noalias !150617
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i ; 2 uses
  %i.jl = getelementptr inbounds nuw [72 x i8], ptr %i.jh, i64 %.sroa.6.sroa.4.0.ph.i.i.i191.sink262.i.i.i.i.i.i.i ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jk, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jm, align 8, !noalias !150625 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jk, i64 16
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jn, align 8, !noalias !150625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150850)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150852, !nonnull !13, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150853)
  %i.jo = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150853, !noalias !150855, !noundef !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !150853, !noalias !150855, !noundef !13 ; 4 uses
  %i.jr = icmp sgt i64 %i.jq, -1
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = sub nsw i64 %i.jo, %i.jq
  %i.jt = icmp ugt i64 %i.js, 1
  br i1 %i.jt, label %bb.an, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

bb.an:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150856)
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !150858, !noalias !150859, !nonnull !13, !noundef !13
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jq
  store i8 44, ptr %i.jw, align 1, !noalias !150860
  %i.jx = add nuw i64 %i.jq, 1
  store i64 %i.jx, ptr %i.jp, align 8, !alias.scope !150858, !noalias !150859
  br label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i
  %i.jy = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 1), !noalias !150852 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150852, !nonnull !13, !align !25, !noundef !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  %i.jz = tail call fastcc noundef ptr @_ZN10serde_json3ser18format_escaped_str17h6748dc9d0f30c4fbE(ptr nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val10.i.i.i.i.i.i.i.i.i), !noalias !150852 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !220

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.split.i.i.i.i.i.i.i.i.i ], [ %i.jy, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hd, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ], [ %i.gy, %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.ka = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !150852
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.ao:                                            ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h5ce675cac41967c2E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150861, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150862)
  %i.kb = load i64, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150862, !noalias !150864, !noundef !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !150862, !noalias !150864, !noundef !13 ; 4 uses
  %i.ke = icmp sgt i64 %i.kd, -1
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = sub nsw i64 %i.kb, %i.kd
  %i.kg = icmp ugt i64 %i.kf, 1
  br i1 %i.kg, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150865)
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !150867, !noalias !150868, !nonnull !13, !noundef !13
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kd
  store i8 58, ptr %i.kj, align 1, !noalias !150869
  %i.kk = add nuw i64 %i.kd, 1
  store i64 %i.kk, ptr %i.kc, align 8, !alias.scope !150867, !noalias !150868
  br label %bb.ap

_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.kl = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i7.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 1), !noalias !150861 ; 2 uses
  %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %.loopexit20.i.i.i.i.i.i.i.i.i, !prof !341

.loopexit20.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.kl, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hk, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.km = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.lcssa.i.i.i.i.i.i.i.i.i), !noalias !150861
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.ap:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h0099d4c1cd5e3434E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150874)
  %i.kn = load i64, ptr %i.jl, align 8, !range !1067, !alias.scope !150876, !noalias !150877, !noundef !13
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kn, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150885)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150887, !noalias !150888, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150889)
  %i.ko = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150889, !noalias !150891, !noundef !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !150889, !noalias !150891, !noundef !13 ; 4 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  tail call void @llvm.assume(i1 %i.kr)
  %i.ks = sub nsw i64 %i.ko, %i.kq
  %i.kt = icmp ugt i64 %i.ks, 1
  br i1 %i.kt, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150892)
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !150894, !noalias !150895, !nonnull !13, !noundef !13
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kq
  store i8 123, ptr %i.kw, align 1, !noalias !150896
  %i.kx = add nuw i64 %i.kq, 1
  store i64 %i.kx, ptr %i.kp, align 8, !alias.scope !150894, !noalias !150895
  br label %bb.ar

_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ky = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 1), !noalias !150897 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

bb.ar:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.a, align 8, !noalias !150882
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150882
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150882
  %i.kz = call fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hea27c0c10dfe9d21E"(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @848, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jl), !noalias !150816 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %bb.ar
  %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !150882
  %i.la = trunc nuw i8 %.sroa.022.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !150882
  %i.lb = icmp eq i8 %.sroa.423.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.la, i1 true, i1 %i.lb
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150882, !nonnull !13, !noundef !13
  %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.525.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150898, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150899)
  %i.lc = load i64, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150899, !noalias !150901, !noundef !13
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !150899, !noalias !150901, !noundef !13 ; 4 uses
  %i.lf = icmp sgt i64 %i.le, -1
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = sub nsw i64 %i.lc, %i.le
  %i.lh = icmp ugt i64 %i.lg, 1
  br i1 %i.lh, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150902)
  %i.li = getelementptr inbounds nuw i8, ptr %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !alias.scope !150904, !noalias !150905, !nonnull !13, !noundef !13
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.le
  store i8 125, ptr %i.lk, align 1, !noalias !150906
  %i.ll = add nuw i64 %i.le, 1
  store i64 %i.ll, ptr %i.ld, align 8, !alias.scope !150904, !noalias !150905
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.lm = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !150898 ; 2 uses
  %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

bb.au:                                            ; preds = %bb.ap
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150907, !noalias !150908, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150909)
  %i.ln = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150909, !noalias !150911, !noundef !13
  %i.lo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !150909, !noalias !150911, !noundef !13 ; 4 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = sub nsw i64 %i.ln, %i.lp
  %i.ls = icmp ugt i64 %i.lr, 4
  br i1 %i.ls, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150912)
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !150914, !noalias !150915, !nonnull !13, !noundef !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lp
  store i32 1819047278, ptr %i.lv, align 1, !noalias !150916
  %i.lw = add nuw i64 %i.lp, 4
  store i64 %i.lw, ptr %i.lo, align 8, !alias.scope !150914, !noalias !150915
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.lx = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !150917 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !341

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.lcssa18.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fa, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.lx, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.ly = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.lcssa18.i.i.i.i.i.i.i.i.i), !noalias !150917
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150882
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i
  %.sink.i10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.ep, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.lm, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ky, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ik, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ], [ %i.hw, %_ZN10serde_json3ser9Formatter12begin_object17h2adac97cfd4e7df5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.peel ]
  %i.lz = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink.i10.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !150918
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ar, %bb.aj, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lz, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.eg, %bb.w ], [ %i.kz, %bb.ar ], [ %i.ib, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150882
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread11.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ma = icmp eq i64 %.sroa.47.0.i.i.i.i.i.i.i, 0
  br i1 %i.ma, label %.thread182.i.i.i.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i"
  %i.mb = add i64 %.sroa.47.0.i.i.i.i.i.i.i, -1   ; 2 uses
  %i.mc = load i16, ptr %i.ji, align 2, !noalias !150837, !noundef !13
  %i.md = zext i16 %i.mc to i64
  %i.me = icmp samesign ult i64 %.sroa.33.1.i.i.i.i.i.i.i, %i.md
  br i1 %i.me, label %.peel.next.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !150919

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel"
  %.lcssa91 = phi i64 [ %i.jb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i.peel" ], [ %i.mb, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h886d519c77253d2dE.exit.i.i.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.av
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.av ], [ %.sroa.10.1.i.i.i.i.i.i.i.ph88, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mg, %bb.av ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mf = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150920, !noundef !13 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mg = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, i64 1064
  %i.mi = load i16, ptr %i.mh, align 8, !noalias !150920 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 1066
  %i.mk = load i16, ptr %i.mj, align 2, !noalias !150837, !noundef !13
  %i.ml = icmp ult i16 %i.mi, %i.mk
  br i1 %i.ml, label %bb.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.mm = zext i16 %i.mi to i64                   ; 2 uses
  %i.mn = icmp eq i64 %i.mg, 0
  %i.mo = add nuw nsw i64 %i.mm, 1                ; 2 uses
  br i1 %i.mn, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %bb.ax

.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge:      ; preds = %.prol.loopexit128, %.new129, %bb.aw
  %.sroa.33.1.i.i.i.i.i.i.i.ph87.be = phi i64 [ %i.mo, %bb.aw ], [ 0, %.new129 ], [ 0, %.prol.loopexit128 ]
  %.sroa.10.1.i.i.i.i.i.i.i.ph88.be = phi ptr [ %i.mf, %bb.aw ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit128 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, %.new129 ]
  br label %.peel.next.i.i.i.i.i.i.i.i.i.outer, !llvm.loop !150923

bb.ax:                                            ; preds = %bb.aw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1072
  %i.mq = icmp ult i16 %i.mi, 11
  tail call void @llvm.assume(i1 %i.mq), !noalias !150617
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %xtraiter131 = and i64 %i.mg, 7                 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.prol.loopexit128, label %.prol.preheader127

.prol.preheader127:                               ; preds = %bb.ax, %.prol.preheader127
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ms, %.prol.preheader127 ], [ %i.mr, %bb.ax ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ], [ %i.mg, %bb.ax ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.prol.preheader127 ], [ 0, %bb.ax ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !150924, !nonnull !13, !noundef !13 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.prol.loopexit128, label %.prol.preheader127, !llvm.loop !150928

.prol.loopexit128:                                ; preds = %.prol.preheader127, %bb.ax
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ax ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mr, %bb.ax ], [ %i.ms, %.prol.preheader127 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.mg, %bb.ax ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader127 ]
  %i.mt = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.mt, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new129

.new129:                                          ; preds = %.prol.loopexit128, %.new129
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nc, %.new129 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit128 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, %.new129 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit128 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.mu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mu, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mv, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.mw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mw, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.mx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mx, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.my = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.my, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mz, align 8, !noalias !150924, !nonnull !13, !noundef !13
  %i.na = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.na, align 8, !noalias !150924, !nonnull !13, !noundef !13 ; 2 uses
  %i.nb = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, i64 1072
  br i1 %i.nb, label %.peel.next.i.i.i.i.i.i.i.i.i.outer.backedge, label %.new129, !llvm.loop !150923

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !150929

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !150617
  unreachable

.thread182.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.i.i.i.i.i.i.i.i.i.peel", %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc603d794fe8b673eE.exit.peel.i.i.i.i.i.i.i.i.i"
  %.val.i12.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150634, !noalias !150930, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150933)
  %i.ne = load i64, ptr %.val.i12.i.i.i.i.i.i.i, align 8, !range !26, !alias.scope !150933, !noalias !150936, !noundef !13
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !150933, !noalias !150936, !noundef !13 ; 4 uses
  %i.nh = icmp sgt i64 %i.ng, -1
  tail call void @llvm.assume(i1 %i.nh)
  %i.ni = sub nsw i64 %i.ne, %i.ng
  %i.nj = icmp ugt i64 %i.ni, 1
  br i1 %i.nj, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i: ; preds = %.thread182.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150940)
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.i12.i.i.i.i.i.i.i, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !150943, !noalias !150944, !nonnull !13, !noundef !13
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ng
  store i8 125, ptr %i.nm, align 1, !noalias !150946
  %i.nn = add nuw i64 %i.ng, 1
  store i64 %i.nn, ptr %i.nf, align 8, !alias.scope !150943, !noalias !150944
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i: ; preds = %.thread182.i.i.i.i.i.i.i
  %i.no = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i12.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !150930 ; 2 uses
  %.not.i14.i.i.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i14.i.i.i.i.i.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit, label %bb.ba, !prof !341

bb.ba:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i
  %i.np = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.no), !noalias !150930
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

bb.bb:                                            ; preds = %bb.g
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !150533, !noalias !150947, !nonnull !13, !align !25, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150948)
  %i.nq = load i64, ptr %.val.i.i.i, align 8, !range !26, !alias.scope !150948, !noalias !150951, !noundef !13
  %i.nr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !alias.scope !150948, !noalias !150951, !noundef !13 ; 4 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  tail call void @llvm.assume(i1 %i.nt)
  %i.nu = sub nsw i64 %i.nq, %i.ns
  %i.nv = icmp ugt i64 %i.nu, 4
  br i1 %i.nv, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i, label %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i, !prof !220

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i: ; preds = %bb.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150955)
  %i.nw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !150958, !noalias !150959, !nonnull !13, !noundef !13
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ns
  store i32 1819047278, ptr %i.ny, align 1, !noalias !150961
  %i.nz = add nuw i64 %i.ns, 4
  store i64 %i.nz, ptr %i.nr, align 8, !alias.scope !150958, !noalias !150959
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.oa = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 4), !noalias !150947 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i8.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit, label %bb.bc, !prof !341

bb.bc:                                            ; preds = %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i
  %i.ob = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.oa), !noalias !150947
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit: ; preds = %bb.bc, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i, %bb.ba, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit20.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.l, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i, %bb.i, %bb.f, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i", %bb.bd
  %.sroa.0.0 = phi ptr [ %i.oc, %bb.bd ], [ %i.u, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hfdaf05a4245b2870E.exit.i" ], [ %i.ag, %bb.f ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10write_null17h2710070a1d3ee822E.exit.thread.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i13.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.thread.i15.i.i.i.i.i.i.i ], [ null, %_ZN10serde_json3ser9Formatter10end_object17hc923bbabf77e8dfeE.exit.i.i.i.i.i.i.i.i ], [ %i.ob, %bb.bc ], [ %i.az, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ly, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc9d06afd39fb8689E.exit.thread7.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.km, %.loopexit20.i.i.i.i.i.i.i.i.i ], [ %i.ka, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hcfa0f4f96b175a0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.np, %bb.ba ], [ %i.bl, %bb.l ]
  ret ptr %.sroa.0.0

bb.bd:                                            ; preds = %bb.a
  %i.oc = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17hfbf680a237d2d4e2E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9111656dc00d6c48E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 19, 21) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !1013, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150967)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !150970, !noalias !150971, !nonnull !13, !align !25, !noundef !13 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !450, !alias.scope !150970, !noalias !150971, !noundef !13
  %i.h = icmp eq i8 %i.g, 1
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !150974 ; 6 uses
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150984)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !150987, !noalias !150990, !noundef !13 ; 3 uses
  %i.k = load i64, ptr %.val.i.i, align 8, !range !26, !alias.scope !150987, !noalias !150990, !noundef !13
  %i.l = icmp eq i64 %i.k, %i.j
end_hunk_9
