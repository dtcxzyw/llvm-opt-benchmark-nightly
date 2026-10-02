Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN19nickel_lang_package4lock8LockFile5write17h28615ea916e3b88aE:bb.a
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc7.i, %_ZN10serde_json3ser6indent17h98efc83fda5d62f7E.exit.i.i.i.i.i.i.i.i.i.i
  %i.bh = phi i64 [ %i.be, %_ZN10serde_json3ser6indent17h98efc83fda5d62f7E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, %.noexc7.i ] ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load ptr, ptr %i.bb, align 8, !alias.scope !31984, !noalias !31979, !nonnull !41, !noundef !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 125, ptr %i.bk, align 1, !noalias !31985
  %i.bl = add nuw i64 %i.bh, 1
  store i64 %i.bl, ptr %i.av, align 8, !alias.scope !31984, !noalias !31979
  br label %.loopexit.i.i.i

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$12begin_object17hb7cd0b6dce7b874bE.exit.i.i.i.i.i.i.i.i.i"
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.critedge.i14.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.i.i.i.i.i.i.i.i"
  %i.bm = icmp eq i64 %i.ao, 0
  br i1 %i.bm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.g
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i.prol, i64 2568
  %i.bo = add i64 %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bn, align 8, !noalias !31986, !nonnull !41, !noundef !41 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol, !llvm.loop !31419

.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.ao, 8
  br i1 %i.bp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i.i.i.i.i

.lr.ph.i.i45.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i45.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i45.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i46.i.i.i.i.i.i.i.i, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.br, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.1, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bs, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.2, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bt, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.3, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bu, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.4, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bv, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.5, i64 2568
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bw, align 8, !noalias !31986, !nonnull !41, !noundef !41
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.6, i64 2568
  %i.by = add i64 %.sroa.011.014.i.i47.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bx, align 8, !noalias !31986, !nonnull !41, !noundef !41 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.012.0.lcssa.i.i50.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i45.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i48.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i45.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i50.i.i.i.i.i.i.i.i, i64 2562
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !31987, !noundef !41
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i", %bb.h
  %.sroa.0.038.i.i.i.i27.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.h ], [ %.sroa.012.0.lcssa.i.i50.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i28.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.h ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i27.i.i.i.i.i.i.i.i, i64 352
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !31988, !noundef !41 ; 8 uses
  %.not.i.i.i.i.i29.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i29.i.i.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.5.037.i.i.i.i28.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i27.i.i.i.i.i.i.i.i, i64 2560
  %i.cg = load i16, ptr %i.cf, align 8, !noalias !31988 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2562
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !31987, !noundef !41
  %i.cj = icmp ult i16 %i.cg, %i.ci
  br i1 %i.cj, label %bb.i, label %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i16 %i.cg to i64                   ; 4 uses
  %i.cl = icmp eq i64 %i.ce, 0
  %i.cm = add nuw nsw i64 %i.ck, 1                ; 2 uses
  br i1 %i.cl, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 2568
  %i.co = icmp ult i16 %i.cg, 11
  call void @llvm.assume(i1 %i.co), !noalias !31989
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %xtraiter186 = and i64 %i.ce, 7                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j, %.prol.preheader
  %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cq, %.prol.preheader ], [ %i.cp, %bb.j ]
  %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.ce, %bb.j ]
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.prol.preheader ], [ 0, %bb.j ]
  %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i.prol, align 8, !noalias !31990, !nonnull !41, !noundef !41 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.prol, i64 2568 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31433

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.j
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.j ], [ %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cp, %bb.j ], [ %i.cq, %.prol.preheader ]
  %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ce, %bb.j ], [ %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cr = icmp ult i64 %.sroa.5.037.i.i.i.i28.i.i.i.i.i.i.i.i, 7
  br i1 %i.cr, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i = phi ptr [ %i.da, %.new ], [ %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i34.i.i.i.i.i.i.i.i, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cs, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.1, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ct, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.2, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cu, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.3, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cv, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.4, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cw, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.5, i64 2568
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cx, align 8, !noalias !31990, !nonnull !41, !noundef !41
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.6, i64 2568
  %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i35.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cy, align 8, !noalias !31990, !nonnull !41, !noundef !41 ; 2 uses
  %i.cz = icmp eq i64 %.pn28.i.i.i.i36.i.i.i.i.i.i.i.i.7, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.7, i64 2568
  br i1 %i.cz, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i", label %.new

bb.k:                                             ; preds = %.lr.ph.i.i.i.i26.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i43.i.i.i.i.i.i.i.i unwind label %bb.l, !noalias !31991

.noexc.i.i43.i.i.i.i.i.i.i.i:                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !31989
  unreachable

.critedge.i14.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #73
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !31918

.noexc8.i:                                        ; preds = %.critedge.i14.i.i.i.i.i.i.i.i
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i": ; preds = %.prol.loopexit, %.new, %bb.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i3378.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.i ], [ %.sroa.012.0.lcssa.i.i50.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ], [ %i.cd, %.new ], [ %i.cd, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i3177.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %bb.i ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ], [ %i.ck, %.new ], [ %i.ck, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i39.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.i ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i40.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.i ], [ %.sroa.012.0.lcssa.i.i50.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i20.i.i.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i37.i.i.i.i.i.i.i.i.7, %.new ]
  %i.dc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i3177.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.dc), !noalias !31989
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.i.i.i3378.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i3177.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i3378.i.i.i.i.i.i.i.i, i64 360
  %i.df = getelementptr inbounds nuw [200 x i8], ptr %i.de, i64 %.sroa.6.sroa.4.0.ph.i.i.i3177.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i.i12.i.i.i, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i12.i.i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i", %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i"
  %.sroa.35.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ %.sroa.35.0.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ]
  %.sroa.24.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i39.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.8.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i40.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %i.dz = phi i1 [ true, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ false, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ]
  %i.ea = phi ptr [ %i.dd, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ %i.ps, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ]
  %.pn106.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit51.i.i.i.i.i.i.i.i" ], [ %i.pu, %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i" ] ; 15 uses
  %.sroa.35.0.i.i.i.i.i.i.i.i = add i64 %.sroa.35.0.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn106.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31992)
  call void @llvm.experimental.noalias.scope.decl(metadata !31993)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i12.i.i.i, align 8, !alias.scope !31994, !noalias !31995, !nonnull !41, !noundef !41 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31996)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 7 uses
  br i1 %i.dz, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !31997)
  call void @llvm.experimental.noalias.scope.decl(metadata !31998)
  call void @llvm.experimental.noalias.scope.decl(metadata !31999)
  call void @llvm.experimental.noalias.scope.decl(metadata !32000)
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !32001, !noalias !32002, !noundef !41 ; 3 uses
  %i.ed = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32001, !noalias !32002, !noundef !41
  %i.ee = sub i64 %i.ed, %i.ec
  %i.ef = icmp ult i64 %i.ee, 2
  br i1 %i.ef, label %bb.n, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !44

bb.n:                                             ; preds = %.split6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ec, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc9.i:                                        ; preds = %bb.n
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !32003, !noalias !32002
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc9.i, %.split6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = phi i64 [ %i.ec, %.split6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i ] ; 3 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !32003, !noalias !32002, !nonnull !41, !noundef !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg
  store i16 2604, ptr %i.ek, align 1, !noalias !32004
  %i.el = add nuw i64 %i.eg, 2
  br label %bb.p

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !32005)
  call void @llvm.experimental.noalias.scope.decl(metadata !32006)
  call void @llvm.experimental.noalias.scope.decl(metadata !32007)
  call void @llvm.experimental.noalias.scope.decl(metadata !32008)
  %i.em = load i64, ptr %i.eb, align 8, !alias.scope !32009, !noalias !32010, !noundef !41 ; 3 uses
  %i.en = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32009, !noalias !32010, !noundef !41
  %i.eo = icmp eq i64 %i.en, %i.em
  br i1 %i.eo, label %bb.o, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !44

bb.o:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.em, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc10.i:                                       ; preds = %bb.o
  %.pre.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !32011, !noalias !32010
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc10.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = phi i64 [ %i.em, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.i ] ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !32011, !noalias !32010, !nonnull !41, !noundef !41
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  store i8 10, ptr %i.et, align 1, !noalias !32012
  %i.eu = add nuw i64 %i.ep, 1
  br label %bb.p

bb.p:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.eu, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  store i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eb, align 8, !noalias !32013
  %i.ev = load i64, ptr %i.ar, align 8, !alias.scope !32014, !noalias !32015, !noundef !41 ; 2 uses
  %i.ew = load ptr, ptr %i.dx, align 8, !alias.scope !32014, !noalias !32015, !nonnull !41, !align !46, !noundef !41
  %i.ex = load i64, ptr %i.dy, align 8, !alias.scope !32014, !noalias !32015, !noundef !41 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hce3c0efab7f66888E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fi, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.04.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fa, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.fa = add nuw i64 %.sroa.04.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32016)
  call void @llvm.experimental.noalias.scope.decl(metadata !32017)
  call void @llvm.experimental.noalias.scope.decl(metadata !32018)
  call void @llvm.experimental.noalias.scope.decl(metadata !32019)
  %i.fb = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32020, !noalias !32021, !noundef !41
  %i.fc = sub i64 %i.fb, %i.ez
  %i.fd = icmp ugt i64 %i.ex, %i.fc
  br i1 %i.fd, label %bb.r, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !44

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ez, i64 noundef %i.ex, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !31918

.noexc11.i:                                       ; preds = %bb.r
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !32022, !noalias !32021
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc11.i, %bb.q
  %i.fe = phi i64 [ %i.ez, %bb.q ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i ] ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load ptr, ptr %i.ey, align 8, !alias.scope !32022, !noalias !32021, !nonnull !41, !noundef !41
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull readonly align 1 %i.ew, i64 %i.ex, i1 false), !noalias !32023
  %i.fi = add i64 %i.fe, %i.ex                    ; 2 uses
  store i64 %i.fi, ptr %i.eb, align 8, !alias.scope !32022, !noalias !32021
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fa, %i.ev
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hce3c0efab7f66888E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.q

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hce3c0efab7f66888E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h8c79f09bf3064275E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32024
  store ptr %i.ea, ptr %i.o, align 8, !noalias !32025
  %i.fj = invoke fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$11collect_str17hd284ab1ec87f770eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i.i12.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918 ; 2 uses

.noexc12.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hce3c0efab7f66888E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32024
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %.loopexit55.i

bb.s:                                             ; preds = %.noexc12.i
  %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i12.i.i.i, align 8, !alias.scope !31994, !noalias !32026, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32027)
  call void @llvm.experimental.noalias.scope.decl(metadata !32028)
  call void @llvm.experimental.noalias.scope.decl(metadata !32029)
  call void @llvm.experimental.noalias.scope.decl(metadata !32030)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !32031, !noalias !32032, !noundef !41 ; 3 uses
  %i.fm = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32031, !noalias !32032, !noundef !41
  %i.fn = sub i64 %i.fm, %i.fl
  %i.fo = icmp ult i64 %i.fn, 2
  br i1 %i.fo, label %bb.t, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !44

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fl, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc13.i:                                       ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !32033, !noalias !32032
  br label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc13.i, %bb.s
  %i.fp = phi i64 [ %i.fl, %bb.s ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc13.i ] ; 3 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !32033, !noalias !32032, !nonnull !41, !noundef !41
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp
  store i16 8250, ptr %i.ft, align 1, !noalias !32034
  %i.fu = add nuw i64 %i.fp, 2
  store i64 %i.fu, ptr %i.fk, align 8, !alias.scope !32033, !noalias !32032
  call void @llvm.experimental.noalias.scope.decl(metadata !32035)
  call void @llvm.experimental.noalias.scope.decl(metadata !32036)
  call void @llvm.experimental.noalias.scope.decl(metadata !32037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32038
  call void @llvm.experimental.noalias.scope.decl(metadata !32039)
  call void @llvm.experimental.noalias.scope.decl(metadata !32040)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i12.i.i.i, align 8, !alias.scope !32041, !noalias !32042, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32043)
  %i.fv = load i64, ptr %i.ar, align 8, !alias.scope !32044, !noalias !32042, !noundef !41
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.ar, align 8, !alias.scope !32044, !noalias !32042
  store i8 0, ptr %i.au, align 8, !alias.scope !32044, !noalias !32042
  call void @llvm.experimental.noalias.scope.decl(metadata !32045)
  call void @llvm.experimental.noalias.scope.decl(metadata !32046)
  call void @llvm.experimental.noalias.scope.decl(metadata !32047)
  call void @llvm.experimental.noalias.scope.decl(metadata !32048)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !32049, !noalias !32050, !noundef !41 ; 3 uses
  %i.fz = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32049, !noalias !32050, !noundef !41
  %i.ga = icmp eq i64 %i.fz, %i.fy
  br i1 %i.ga, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fy, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc14.i:                                       ; preds = %bb.u
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !32051, !noalias !32052
  br label %bb.v

bb.v:                                             ; preds = %.noexc14.i, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gb = phi i64 [ %i.fy, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc14.i ] ; 3 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !32051, !noalias !32052, !nonnull !41, !noundef !41
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb
  store i8 123, ptr %i.gf, align 1, !noalias !32053
  %i.gg = add nuw i64 %i.gb, 1
  store i64 %i.gg, ptr %i.fx, align 8, !alias.scope !32051, !noalias !32052
  store ptr %.val.i.i12.i.i.i, ptr %i.n, align 8, !noalias !32038
end_hunk_0
begin_hunk_1_@_ZN19nickel_lang_package4lock8LockFile5write17h28615ea916e3b88aE:bb.a
bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32149
  call void @llvm.experimental.noalias.scope.decl(metadata !32223)
  call void @llvm.experimental.noalias.scope.decl(metadata !32224)
  call void @llvm.experimental.noalias.scope.decl(metadata !32225)
  %.val.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !32226, !noalias !32133 ; 2 uses
  %i.mv = icmp eq i64 %.val.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !32227
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !32228)
  call void @llvm.experimental.noalias.scope.decl(metadata !32229)
  %.val.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !32230, !noalias !32133 ; 2 uses
  %i.mw = icmp eq i64 %.val.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !32231
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !32232)
  call void @llvm.experimental.noalias.scope.decl(metadata !32233)
  call void @llvm.experimental.noalias.scope.decl(metadata !32234)
  %.val.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !32235, !noalias !32133 ; 2 uses
  %i.mx = icmp eq i64 %.val.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val1.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !32235, !noalias !32133, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !32236
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32133
  store i8 1, ptr %i.jz, align 8, !alias.scope !32237, !noalias !32122
  call void @llvm.experimental.noalias.scope.decl(metadata !32238)
  call void @llvm.experimental.noalias.scope.decl(metadata !32239)
  call void @llvm.experimental.noalias.scope.decl(metadata !32240)
  call void @llvm.experimental.noalias.scope.decl(metadata !32241)
  invoke fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hafadff03b7335eb5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @53, i64 noundef 7)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.i

.noexc33.i:                                       ; preds = %bb.be
  %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !32242, !noalias !32243, !nonnull !41, !align !42, !noundef !41 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32244)
  %.val.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32245, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32246)
  call void @llvm.experimental.noalias.scope.decl(metadata !32247)
  call void @llvm.experimental.noalias.scope.decl(metadata !32248)
  call void @llvm.experimental.noalias.scope.decl(metadata !32249)
  %i.my = getelementptr inbounds nuw i8, ptr %.val.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !32250, !noalias !32251, !noundef !41 ; 3 uses
  %i.na = load i64, ptr %.val.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32250, !noalias !32251, !noundef !41
  %i.nb = sub i64 %i.na, %i.mz
  %i.nc = icmp ult i64 %i.nb, 2
  br i1 %i.nc, label %bb.bf, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !44

bb.bf:                                            ; preds = %.noexc33.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.mz, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc34.i:                                       ; preds = %bb.bf
  %.pre.i.i.i.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.my, align 8, !alias.scope !32252, !noalias !32251
  br label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc34.i, %.noexc33.i
  %i.nd = phi i64 [ %i.mz, %.noexc33.i ], [ %.pre.i.i.i.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc34.i ] ; 3 uses
  %i.ne = icmp sgt i64 %i.nd, -1
  call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !32252, !noalias !32251, !nonnull !41, !noundef !41
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nd
  store i16 8250, ptr %i.nh, align 1, !noalias !32253
  %i.ni = add nuw i64 %i.nd, 2
  store i64 %i.ni, ptr %i.my, align 8, !alias.scope !32252, !noalias !32251
  call void @llvm.experimental.noalias.scope.decl(metadata !32254)
  call void @llvm.experimental.noalias.scope.decl(metadata !32255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32256
  call void @llvm.experimental.noalias.scope.decl(metadata !32257)
  call void @llvm.experimental.noalias.scope.decl(metadata !32258)
  %.val.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !32259, !noalias !32260, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32261)
  %i.nj = getelementptr inbounds nuw i8, ptr %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !32262, !noalias !32260, !noundef !41
  %i.nl = add i64 %i.nk, 1
  store i64 %i.nl, ptr %i.nj, align 8, !alias.scope !32262, !noalias !32260
  %i.nm = getelementptr inbounds nuw i8, ptr %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  store i8 0, ptr %i.nm, align 8, !alias.scope !32262, !noalias !32260
  call void @llvm.experimental.noalias.scope.decl(metadata !32263)
  call void @llvm.experimental.noalias.scope.decl(metadata !32264)
  call void @llvm.experimental.noalias.scope.decl(metadata !32265)
  call void @llvm.experimental.noalias.scope.decl(metadata !32266)
  %i.nn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.no = load i64, ptr %i.nn, align 8, !alias.scope !32267, !noalias !32268, !noundef !41 ; 3 uses
  %i.np = load i64, ptr %.val.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !43, !alias.scope !32267, !noalias !32268, !noundef !41
  %i.nq = icmp eq i64 %i.np, %i.no
  br i1 %i.nq, label %bb.bg, label %bb.bh, !prof !44

bb.bg:                                            ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.no, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !31918

.noexc35.i:                                       ; preds = %bb.bg
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nn, align 8, !alias.scope !32269, !noalias !32268
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc35.i, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.nr = phi i64 [ %i.no, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc35.i ] ; 3 uses
  %i.ns = icmp sgt i64 %i.nr, -1
  call void @llvm.assume(i1 %i.ns)
  %i.nt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !32269, !noalias !32268, !nonnull !41, !noundef !41
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nr
  store i8 123, ptr %i.nv, align 1, !noalias !32270
  %i.nw = add nuw i64 %i.nr, 1
  store i64 %i.nw, ptr %i.nn, align 8, !alias.scope !32269, !noalias !32268
  store ptr %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !32256
  store i8 1, ptr %i.du, align 8, !noalias !32256
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 104
  %.val18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nx, align 8, !alias.scope !32271, !noalias !32272
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd314e59ff219f1bcE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @721, i64 %.val18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.i

.noexc36.i:                                       ; preds = %bb.bh
  %i.ny = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 112
  %.val19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ny, align 8, !alias.scope !32271, !noalias !32272
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd314e59ff219f1bcE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @722, i64 %.val19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.i

.noexc37.i:                                       ; preds = %.noexc36.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 120
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nz, align 8, !alias.scope !32271, !noalias !32272
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd314e59ff219f1bcE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @723, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.i

.noexc38.i:                                       ; preds = %.noexc37.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 88
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oa, align 8, !alias.scope !32271, !noalias !32272
  %i.ob = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 96
  %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ob, align 8, !alias.scope !32271, !noalias !32272
  invoke fastcc void @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hf92de38fdf5c011aE"(ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @724, i64 noundef 3, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.i

.noexc39.i:                                       ; preds = %.noexc38.i
  %i.oc = load ptr, ptr %i.c, align 8, !noalias !32256, !nonnull !41, !align !42, !noundef !41
  %i.od = load i8, ptr %i.du, align 8, !range !76, !noalias !32256, !noundef !41
  invoke fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hdb40c1d092f89321E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.oc, i8 noundef range(i8 0, 3) %i.od)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.i

.noexc40.i:                                       ; preds = %.noexc39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32256
  store i8 1, ptr %i.nm, align 8, !alias.scope !32273, !noalias !32245
  %i.oe = load i8, ptr %i.di, align 8, !range !76, !noalias !32075, !noundef !41
  invoke fastcc void @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$3end17h8ad0b64d2fa92c12E"(ptr noalias noundef align 8 dereferenceable(40) %.val.i.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 noundef %i.oe)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.i

.noexc41.i:                                       ; preds = %.noexc40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32075
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc21.i
  %i.of = load ptr, ptr %i.j, align 8, !noalias !32075, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32075
  br label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h22861140d06f6cb8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bj:                                            ; preds = %.noexc41.i, %.noexc29.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17h674dacfb9a7e12c5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.og = getelementptr inbounds nuw i8, ptr %.val.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  store i8 1, ptr %i.og, align 8, !alias.scope !32274, !noalias !32275
  %i.oh = getelementptr inbounds nuw i8, ptr %.pn106.i.i.i.i.i.i.i.i, i64 176
  %i.oi = invoke fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1897994ead81a787E"(ptr noalias noundef align 8 dereferenceable(16) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oh)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc42.i:                                       ; preds = %bb.bj
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h8f654ee2811a9d9eE.exit.i.i.i.i.i.i.i.i.i.i", label %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h22861140d06f6cb8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h22861140d06f6cb8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc42.i, %bb.bi, %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hfb5fa0591da66487E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hfb5fa0591da66487E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.of, %bb.bi ], [ %i.oi, %.noexc42.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32038
  br label %.loopexit55.i

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h8f654ee2811a9d9eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc42.i
  %i.oj = load ptr, ptr %i.n, align 8, !noalias !32038, !nonnull !41, !align !42, !noundef !41
  %i.ok = load i8, ptr %i.dg, align 8, !range !76, !noalias !32038, !noundef !41
  invoke fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hdb40c1d092f89321E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.oj, i8 noundef range(i8 0, 3) %i.ok)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.i

.noexc43.i:                                       ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h8f654ee2811a9d9eE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32038
  store i8 1, ptr %i.au, align 8, !alias.scope !32276, !noalias !32026
  %i.ol = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ol, label %.loopexit.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc43.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i.i.i.i.i.i.i.i) ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i.i.i, i64 2562
  %i.on = load i16, ptr %i.om, align 2, !noalias !32277, !noundef !41
  %i.oo = zext i16 %i.on to i64
  %i.op = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i.i.i, %i.oo
  br i1 %i.op, label %.thread100.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.thread100.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i"
  %i.oq = add nuw nsw i64 %.sroa.24.1.i.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i", %bb.bk
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.os, %bb.bk ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ot, %bb.bk ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6e4503f4ebefb7d4E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 352
  %i.os = load ptr, ptr %i.or, align 8, !noalias !32278, !noundef !41 ; 8 uses
  %.not.i.i.i.i.i12.i.i.i.i.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i12.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ot = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i, i64 2560
  %i.ov = load i16, ptr %i.ou, align 8, !noalias !32278 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 2562
  %i.ox = load i16, ptr %i.ow, align 2, !noalias !32277, !noundef !41
  %i.oy = icmp ult i16 %i.ov, %i.ox
  br i1 %i.oy, label %bb.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.oz = zext i16 %i.ov to i64                   ; 4 uses
  %i.pa = icmp eq i64 %i.ot, 0
  %i.pb = add nuw nsw i64 %i.oz, 1                ; 2 uses
  br i1 %i.pa, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 2568
  %i.pd = icmp ult i16 %i.ov, 11
  call void @llvm.assume(i1 %i.pd), !noalias !31989
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pb ; 2 uses
  %xtraiter193 = and i64 %i.ot, 7                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.prol.loopexit190, label %.prol.preheader189

.prol.preheader189:                               ; preds = %bb.bm, %.prol.preheader189
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.pf, %.prol.preheader189 ], [ %i.pe, %bb.bm ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader189 ], [ %i.ot, %bb.bm ]
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.prol.preheader189 ], [ 0, %bb.bm ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !32279, !nonnull !41, !noundef !41 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 2568 ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.prol.loopexit190, label %.prol.preheader189, !llvm.loop !31892

.prol.loopexit190:                                ; preds = %.prol.preheader189, %bb.bm
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bm ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader189 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.pe, %bb.bm ], [ %i.pf, %.prol.preheader189 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ot, %bb.bm ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader189 ]
  %i.pg = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.pg, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i", label %.new191

.new191:                                          ; preds = %.prol.loopexit190, %.new191
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pp, %.new191 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit190 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new191 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit190 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.ph = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ph, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.pi, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.pj, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.pk, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.pl, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 2568
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.pm, align 8, !noalias !32279, !nonnull !41, !noundef !41
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 2568
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.pn, align 8, !noalias !32279, !nonnull !41, !noundef !41 ; 2 uses
  %i.po = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 2568
  br i1 %i.po, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i", label %.new191

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.bo, !noalias !32280

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.pq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !31989
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0536c9b44aaa864eE.exit.i.i.i.i.i.i.i.i": ; preds = %.prol.loopexit190, %.new191, %bb.bl, %.thread100.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i105.i.i.i.i.i.i.i.i = phi ptr [ %i.os, %bb.bl ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i ], [ %i.os, %.new191 ], [ %i.os, %.prol.loopexit190 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i104.i.i.i.i.i.i.i.i = phi i64 [ %i.oz, %bb.bl ], [ %.sroa.24.1.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i ], [ %i.oz, %.new191 ], [ %i.oz, %.prol.loopexit190 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pb, %bb.bl ], [ %i.oq, %.thread100.i.i.i.i.i.i.i.i ], [ 0, %.new191 ], [ 0, %.prol.loopexit190 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.os, %bb.bl ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit190 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new191 ]
  %i.pr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i104.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.pr), !noalias !31989
  %i.ps = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.i.i.i105.i.i.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i104.i.i.i.i.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i105.i.i.i.i.i.i.i.i, i64 360
  %i.pu = getelementptr inbounds nuw [200 x i8], ptr %i.pt, i64 %.sroa.6.sroa.4.0.ph.i.i.i104.i.i.i.i.i.i.i.i
  br label %bb.m

.loopexit.i.i.i:                                  ; preds = %.noexc43.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.thread.i.i.i.i.i.i.i.i"
  %.sroa.6.0.ph.i.i.i.i.i.i.i.i = phi i8 [ 0, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h5c3a4e7d4253b2f2E.exit.thread.i.i.i.i.i.i.i.i" ], [ 2, %.noexc43.i ]
  invoke fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hdb40c1d092f89321E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i.i12.i.i.i, i8 noundef %.sroa.6.0.ph.i.i.i.i.i.i.i.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc44.i:                                       ; preds = %.loopexit.i.i.i
  store i8 1, ptr %i.au, align 8, !alias.scope !32281, !noalias !31945
  %i.pv = load i8, ptr %i.y, align 8, !range !76, !noalias !31925, !noundef !41
  invoke fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hdb40c1d092f89321E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i.i12.i.i.i, i8 noundef range(i8 0, 3) %i.pv)
          to label %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ah, %.noexc40.i, %.noexc38.i, %bb.bh, %.noexc36.i, %.noexc37.i, %bb.bj, %.noexc39.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h8f654ee2811a9d9eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.v, %bb.ad, %.noexc24.i, %bb.ai, %bb.be, %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h072410507154a4ecE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN10serde_json3ser9Formatter12begin_string17h216f34073ad73167E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.y, %bb.ac, %bb.bg, %bb.bf, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aj, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.t, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hce3c0efab7f66888E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.o, %bb.n
  %lpad.loopexit52.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i", %.loopexit.i.i.i, %.noexc44.i, %bb.c, %.critedge.i14.i.i.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp53.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.az, %bb.ak, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mu, %bb.az ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit52.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp53.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32282)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !32282, !noalias !31918 ; 2 uses
  %i.pw = icmp eq i64 %.val.i.i, 0
  br i1 %i.pw, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %.body.i
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !32282, !noalias !31918, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !32283
  br label %common.resume

.loopexit55.i:                                    ; preds = %.noexc12.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h22861140d06f6cb8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc3.i
  %.sroa.0.0.i.i.ph.i = phi ptr [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h22861140d06f6cb8E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.z, %.noexc3.i ], [ %i.fj, %.noexc12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !31925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !31922
  call void @llvm.experimental.noalias.scope.decl(metadata !32284)
  %.val.i46.i = load i64, ptr %i.r, align 8, !alias.scope !32284, !noalias !31918 ; 2 uses
  %i.px = icmp eq i64 %.val.i46.i, 0
  br i1 %i.px, label %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %.loopexit55.i
  %.val1.i47.i = load ptr, ptr %i.v, align 8, !alias.scope !32284, !noalias !31918, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i47.i, i64 noundef %.val.i46.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !32285
  br label %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit.thread

common.resume:                                    ; preds = %bb.ca, %bb.bv, %bb.bw, %bb.bs, %.body.i, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.qc, %bb.bv ], [ %eh.lpad-body.i, %.body.i ], [ %i.pz, %bb.bs ], [ %eh.lpad-body.i, %bb.bp ], [ %i.qc, %bb.bw ], [ %i.qf, %bb.ca ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit.thread: ; preds = %.loopexit55.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !31918
  br label %bb.br

_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit: ; preds = %.noexc44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !31925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !31922
  %.sroa.04.0.copyload5 = load i64, ptr %i.r, align 8, !noalias !31917 ; 5 uses
  %.sroa.76.0.copyload8 = load ptr, ptr %i.v, align 8, !noalias !31917 ; 5 uses
  %.sroa.99.0.copyload11 = load i64, ptr %i.w, align 8, !noalias !31917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !31918
  %i.py = icmp eq i64 %.sroa.04.0.copyload5, -9223372036854775808
  br i1 %i.py, label %bb.br, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hafe0014d87ef7a37E.exit"

bb.br:                                            ; preds = %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit, %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit.thread
  %.sroa.76.039 = phi ptr [ %.sroa.0.0.i.i.ph.i, %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit.thread ], [ %.sroa.76.0.copyload8, %_ZN10serde_json3ser13to_vec_pretty17h6a8febf625eea87eE.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.039) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !32286
  store ptr %.sroa.76.039, ptr %i.s, align 8, !noalias !32286
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1206, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @757) #73
          to label %bb.bt unwind label %bb.bs, !noalias !32286

bb.bs:                                            ; preds = %bb.br
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #75
          to label %common.resume unwind label %bb.bu, !noalias !32286

bb.bt:                                            ; preds = %bb.br
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !32286
  unreachable
end_hunk_1
begin_hunk_2_@_ZN19nickel_lang_package7resolve17resolve_with_lock17ha237c6efd297d4faE:bb.a
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gi, i64 -40
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !37508
  %.sroa.614.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gi, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !37507
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ]
  %i.gk = icmp eq i64 %.sroa.04.i.sroa.4.176.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.gk, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.04.i.sroa.4.176.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !37509
  br label %.critedge.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.aj, %bb.ai
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.k) #75, !noalias !37501
  br label %.thread234

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4c1a7deaa7bce5a6E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.gl = load ptr, ptr %i.l, align 8, !alias.scope !37497, !noalias !37498, !nonnull !41, !noundef !41
  %i.gm = getelementptr inbounds [224 x i8], ptr %i.gl, i64 %i.ev ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -48 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !noalias !37510 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gm, i64 -40 ; 2 uses
  %.sroa.510.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !37510 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gm, i64 -32
  store i64 %.sroa.04.i.sroa.4.176.copyload.i.i.i.i.i.i.i, ptr %i.gn, align 8, !noalias !37511
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !37511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !37507
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.k), !noalias !37501
  switch i64 %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i, label %bb.ak [
    i64 -9223372036854775808, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i"
  ]

bb.ak:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4c1a7deaa7bce5a6E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !37512
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i": ; preds = %bb.ak, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4c1a7deaa7bce5a6E.exit.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4c1a7deaa7bce5a6E.exit.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h4c1a7deaa7bce5a6E.exit.thread.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37486
  br label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d3658d91e38b198E.exit.i.i.i.i.i.i"

"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d3658d91e38b198E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h25b504c59d51be71E.exit.i.i.i.i.i.i.i", %"_ZN19nickel_lang_package7resolve17resolve_with_lock28_$u7b$$u7b$closure$u7d$$u7d$17h277c2383d24c4846E.exit.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  %i.go = icmp eq i64 %i.bf, 0
  br i1 %i.go, label %.loopexit284, label %bb.d

.loopexit.i.i:                                    ; preds = %bb.k
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread234

.thread234:                                       ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i.i.i.i", %bb.l, %.body.i.i.i.i.i.i.i.i, %bb.z, %.critedge.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.ef, %bb.z ], [ %lpad.loopexit.i.i, %.loopexit.i.i ]
  call fastcc void @"_ZN4core3ptr137drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$$GT$17hf260a7bdbce13d8fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l), !noalias !37441
  br label %bb.cc

bb.al:                                            ; preds = %bb.ca
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_package..snapshot..Snapshot$GT$17h4997b6519d2f5761E"(ptr noalias noundef align 8 dereferenceable(144) %i.gs) #75
  br label %.thread

.thread239:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i"
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit284:                                     ; preds = %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d3658d91e38b198E.exit.i.i.i.i.i.i", %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37441
  %i.gr = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.gr, ptr noundef nonnull align 8 dereferenceable(888) %4, i64 888, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.gs, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 -9223372036854775808, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.0.0.copyload141, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.6.0.copyload143, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.7.0.copyload145, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store <2 x i64> %i.z, ptr %.sroa.7146.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8
  invoke fastcc void @_ZN7pubgrub6solver7resolve17h4c785bb80adccd0fE(ptr noalias noundef align 8 captures(address) dereferenceable(592) %i.u, ptr noundef nonnull align 8 %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.an unwind label %bb.am

.body:                                            ; preds = %bb.au, %bb.aq, %bb.am, %bb.bz
  %.pn93 = phi { ptr, i32 } [ %i.gx, %bb.aq ], [ %i.mp, %bb.bz ], [ %i.gt, %bb.am ], [ %.pn89.pn, %bb.au ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_package..resolve..PackageRegistry$GT$17hd2745bf8592d8015E"(ptr noalias noundef align 8 dereferenceable(1080) %i.w) #75
          to label %.thread unwind label %bb.bu

bb.am:                                            ; preds = %.loopexit284
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.loopexit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.gu = load i64, ptr %i.u, align 8, !range !140, !noundef !41
  %.not83 = icmp eq i64 %i.gu, -9223372036854775796
  br i1 %.not83, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.n, ptr noundef nonnull align 8 dereferenceable(592) %i.u, i64 592, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !37513
  %i.gv = call noundef align 8 dereferenceable_or_null(592) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 592, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !37513 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.ap, label %bb.ca, !prof !49

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 592) #73
          to label %.noexc105 unwind label %bb.aq

.noexc105:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$pubgrub..error..PubGrubError$LT$nickel_lang_package..resolve..PackageRegistry$GT$$GT$17h2a99629a032bc6e3E"(ptr noalias noundef nonnull align 8 dereferenceable(592) %i.n) #75
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.gz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.056.0.copyload = load ptr, ptr %i.gz, align 8 ; 8 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.463.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.557.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %.sroa.056.0.copyload, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ha = load i8, ptr %i.al, align 8, !range !47, !noalias !37514, !noundef !41
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i", !prof !48

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i: ; preds = %bb.as
  %.pre.i.i = load i64, ptr %i.ak, align 8, !noalias !37515
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !37515
  br label %bb.at

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i": ; preds = %bb.as
  %i.hc = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc106 unwind label %bb.bz ; 2 uses

.noexc106:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i"
  %i.hd = extractvalue { i64, i64 } %i.hc, 0
  %i.he = extractvalue { i64, i64 } %i.hc, 1      ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !noalias !37516
  store i8 1, ptr %i.al, align 8, !noalias !37516
  br label %bb.at

bb.at:                                            ; preds = %.noexc106, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i
  %.pre-phi372 = phi i64 [ %i.he, %.noexc106 ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.hd, %.noexc106 ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i ] ; 2 uses
  %i.hg = add i64 %.pre-phi, 1
  store i64 %i.hg, ptr %i.ak, align 8, !noalias !37515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.pre-phi, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.pre-phi372, ptr %.sroa.574.0..sroa_idx, align 8
  %.sroa.2227.0.copyload = load i64, ptr %.sroa.463.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.3229.0.copyload = load i64, ptr %.sroa.3229.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.056.0.copyload) ]
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.056.0.copyload, align 16, !noalias !37517
  %i.hh = icmp eq i64 %.sroa.2227.0.copyload, 0   ; 2 uses
  br i1 %i.hh, label %bb.aw, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.at
  %i.hi = mul i64 %.sroa.2227.0.copyload, 224     ; 2 uses
  %6 = add i64 %i.hi, 224                         ; 2 uses
  %7 = add i64 %.sroa.2227.0.copyload, 17
  %i.hj = add i64 %7, %6                          ; 3 uses
  %8 = icmp uge i64 %i.hj, %6
  call void @llvm.assume(i1 %8)
  %9 = icmp ult i64 %i.hj, 9223372036854775793
  call void @llvm.assume(i1 %9)
  %10 = sub i64 -224, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.sroa.056.0.copyload, i64 %10
  br label %bb.aw

bb.au:                                            ; preds = %bb.ay, %bb.av
  %.pn89.pn = phi { ptr, i32 } [ %eh.lpad-body129, %bb.ay ], [ %i.hl, %bb.av ]
  call fastcc void @"_ZN4core3ptr157drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..index..Id$C$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$$GT$17h566150a474016b92E"(ptr noalias noundef align 8 dereferenceable(48) %i.r) #75
  br label %.body

bb.av:                                            ; preds = %bb.be
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.at
  %i.hm = phi i64 [ %i.hj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.at ] ; 3 uses
  %i.hn = phi ptr [ %i.hk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.at ] ; 2 uses
  %i.ho = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 16 ; 2 uses
  %i.hq = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1) ; 2 uses
  %i.hr = getelementptr i8, ptr %.sroa.056.0.copyload, i64 %.sroa.2227.0.copyload
  %i.hs = getelementptr i8, ptr %i.hr, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.ho, ptr %i.q, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.hm, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.hn, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %.sroa.056.0.copyload, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.hp, ptr %.sroa.7197.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.hs, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.9199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  store <16 x i1> %i.hq, ptr %.sroa.9199.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 4 uses
  store i64 %.sroa.3229.0.copyload, ptr %.sroa.11201.0..sroa_idx, align 8
  %i.ht = icmp eq i64 %.sroa.3229.0.copyload, 0
  br i1 %i.ht, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.hu = bitcast <16 x i1> %i.hq to i16
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.7212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.8213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0150, i64 8
  %.sroa.4536.0..sroa.0150.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0150, i64 80
  %.sroa.5.0..sroa.0150.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0150, i64 88
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134"
  %i.hw = phi i64 [ %.sroa.3229.0.copyload, %.lr.ph ], [ %i.ij, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134" ]
  %i.hx = phi i16 [ %i.hu, %.lr.ph ], [ %i.ig, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134" ] ; 2 uses
  %.pre.i.i110310314 = phi ptr [ %.sroa.056.0.copyload, %.lr.ph ], [ %.pre.i.i110309, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134" ] ; 2 uses
  %.promoted15.i.i312313 = phi ptr [ %i.hp, %.lr.ph ], [ %.promoted15.i.i311, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37518)
  call void @llvm.experimental.noalias.scope.decl(metadata !37519)
  %.not13.i.i = icmp eq i16 %i.hx, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.ic, ptr %.sroa.7197.0..sroa_idx, align 8, !alias.scope !37520, !noalias !37521
  store ptr %i.ib, ptr %.sroa.6196.0..sroa_idx, align 8, !alias.scope !37520, !noalias !37521
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit"

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.hy = phi ptr [ %i.ic, %.lr.ph.i.i ], [ %.promoted15.i.i312313, %bb.ax ] ; 2 uses
  %i.hz = phi ptr [ %i.ib, %.lr.ph.i.i ], [ %.pre.i.i110310314, %bb.ax ]
  %.val911.i.i = load <16 x i8>, ptr %i.hy, align 16, !noalias !37522
  %i.ia = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -3584 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.ia to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ay:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_package..resolve..BucketVersion$GT$17h263a26fd372faf0bE.exit", %.split, %bb.bv
  call fastcc void @"_ZN4core3ptr142drop_in_place$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$GT$$GT$17h8be9dcdf3f5c2697E"(ptr noalias noundef align 8 dereferenceable(64) %i.q) #75
  br label %bb.au

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit": ; preds = %bb.ax, %._crit_edge.i.i
  %.promoted15.i.i311 = phi ptr [ %i.ic, %._crit_edge.i.i ], [ %.promoted15.i.i312313, %bb.ax ] ; 2 uses
  %.pre.i.i110309 = phi ptr [ %i.ib, %._crit_edge.i.i ], [ %.pre.i.i110310314, %bb.ax ] ; 3 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.hx, %bb.ax ] ; 3 uses
  %i.id = add i16 %.lcssa.i.i, -1
  %i.ie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = and i16 %i.id, %.lcssa.i.i              ; 5 uses
  %i.ih = sub nsw i64 0, %i.if
  %i.ii = getelementptr inbounds [224 x i8], ptr %.pre.i.i110309, i64 %i.ih ; 4 uses
  %i.ij = add i64 %i.hw, -1                       ; 7 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ii, i64 -224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0150, ptr noundef nonnull align 8 dereferenceable(176) %i.ik, i64 176, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ii, i64 -48
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !37518 ; 9 uses
  %.sroa.8151.0..sroa_idx = getelementptr inbounds i8, ptr %i.ii, i64 -40
  %.sroa.8151.sroa.0.0.copyload = load ptr, ptr %.sroa.8151.0..sroa_idx, align 8, !noalias !37518 ; 7 uses
  %.sroa.8151.sroa.5.0..sroa.8151.0..sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ii, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151.sroa.5.0..sroa.8151.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.not84 = icmp eq i64 %.sroa.5.0.copyload, -9223372036854775808
  br i1 %.not84, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread", label %bb.az

bb.az:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit"
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0150, align 8 ; 2 uses
  %.sroa.4536.0.copyload = load i64, ptr %.sroa.4536.0..sroa.0150.sroa_idx, align 8 ; 4 uses
  %.sroa.5.0.copyload537 = load ptr, ptr %.sroa.5.0..sroa.0150.sroa_idx, align 8 ; 4 uses
  %i.il = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.il)
  %i.im = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775805
  br i1 %i.im, label %bb.bh, label %bb.bw

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit"
  store i16 %i.ig, ptr %.sroa.9199.0..sroa_idx, align 8, !alias.scope !37520, !noalias !37521
  store i64 %i.ij, ptr %.sroa.11201.0..sroa_idx, align 8, !alias.scope !37518, !noalias !37521
  call void @llvm.experimental.noalias.scope.decl(metadata !37523)
  call void @llvm.experimental.noalias.scope.decl(metadata !37524)
  call void @llvm.experimental.noalias.scope.decl(metadata !37525)
  call void @llvm.experimental.noalias.scope.decl(metadata !37526)
  call void @llvm.experimental.noalias.scope.decl(metadata !37527)
  %i.in = icmp eq i64 %i.ij, 0
  br i1 %i.in, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread", %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i"
  %.lcssa13.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i" ], [ %.promoted15.i.i311, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread" ] ; 2 uses
  %i.io = phi i64 [ %i.jb, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i" ], [ %i.ij, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread" ]
  %.lcssa69.i.i.i.i.i = phi ptr [ %.lcssa68.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i" ], [ %.pre.i.i110309, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread" ] ; 2 uses
  %i.ip = phi i16 [ %i.iy, %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i" ], [ %i.ig, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37528)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.ip, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i111, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h66e8d1bd4b2392c4E.exit.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i111
  store ptr %i.iu, ptr %.sroa.7197.0..sroa_idx, align 8, !alias.scope !37529
  store ptr %i.it, ptr %.sroa.6196.0..sroa_idx, align 8, !alias.scope !37529
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h66e8d1bd4b2392c4E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i111:                            ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i111
  %i.iq = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i111 ], [ %.lcssa13.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.ir = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i111 ], [ %.lcssa69.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i = load <16 x i8>, ptr %i.iq, align 16, !noalias !37529
  %i.is = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i, splat (i8 -1)
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -3584 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.is to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i111, label %._crit_edge.i.i.i.i.i.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h66e8d1bd4b2392c4E.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.lcssa12.i.i.i.i.i = phi ptr [ %i.iu, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i = phi ptr [ %i.it, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.ip, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.iv = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.iw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.ix = zext nneg i16 %i.iw to i64
  %i.iy = and i16 %i.iv, %.lcssa.i.i.i.i.i.i
  %i.iz = sub nsw i64 0, %i.ix
  %i.ja = getelementptr inbounds [224 x i8], ptr %.lcssa68.i.i.i.i.i, i64 %i.iz ; 3 uses
  %i.jb = add i64 %i.io, -1                       ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 -224
  call void @llvm.experimental.noalias.scope.decl(metadata !37530)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.jc), !noalias !37531
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !37532)
  call void @llvm.experimental.noalias.scope.decl(metadata !37533)
  call void @llvm.experimental.noalias.scope.decl(metadata !37534)
  %.val.i.i.i1.i.i.i.i.i.i = load i64, ptr %i.jd, align 8, !alias.scope !37535, !noalias !37531 ; 2 uses
  %i.je = icmp eq i64 %.val.i.i.i1.i.i.i.i.i.i, 0
  br i1 %i.je, label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h66e8d1bd4b2392c4E.exit.i.i.i.i.i"
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 -40
  %.val1.i.i.i2.i.i.i.i.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !37535, !noalias !37531, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i.i.i.i.i, i64 noundef %.val.i.i.i1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !37536
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i"

"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i": ; preds = %bb.ba, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h66e8d1bd4b2392c4E.exit.i.i.i.i.i"
  %.old5.i.i.i.i.i = icmp eq i64 %i.jb, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit134", %"_ZN4core3ptr105drop_in_place$LT$$LP$nickel_lang_package..resolve..Package$C$nickel_lang_package..version..SemVer$RP$$GT$17hd1c5b4f62bb251a5E.exit.i.i.i.i.i", %bb.aw, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5684cc7bdf9c231cE.exit.thread"
  %i.jg = icmp eq i64 %i.hm, 0
  %or.cond444 = or i1 %i.hh, %i.jg
  br i1 %or.cond444, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) %i.ho) #67, !noalias !37537
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9bd07435dd517549E.exit.i.i.i.i", %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !37538)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !37538, !noalias !37539, !noundef !41 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %._crit_edge, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %bb.bc
  %i.jk = load ptr, ptr %i.r, align 8, !alias.scope !37538, !noalias !37539, !nonnull !41, !noundef !41 ; 3 uses
  %.val13.i.i = load <16 x i8>, ptr %i.jk, align 16, !noalias !37540
end_hunk_2
begin_hunk_3_@_ZN19nickel_lang_package8manifest12ManifestFile9from_prog17hd8f5c931380be5dfE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !38943)
  %.val.i.i.i.i = load i64, ptr %i.o, align 16, !alias.scope !38944, !noalias !38933 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.dd, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i.i", label %bb.an

bb.an:                                            ; preds = %.body.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !38945, !noalias !38933, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38946
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i.i"

bb.ao:                                            ; preds = %bb.al
  %i.df = load <2 x i64>, ptr %i.n, align 16, !noalias !38947
  %i.dg = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i, align 16, !noalias !38947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !38936
  %i.dh = load <2 x i64>, ptr %i.o, align 16, !noalias !38947
  %.sroa.754.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.754.8.copyload.i = load i64, ptr %.sroa.754.8..sroa_idx.i, align 16, !noalias !38947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !38933
  call void @llvm.experimental.noalias.scope.decl(metadata !38948)
  %i.di = load i64, ptr %i.q, align 8, !range !111, !alias.scope !38949, !noalias !38950, !noundef !41 ; 4 uses
  %i.dj = icmp slt i64 %i.di, 0
  %i.dk = add i64 %i.di, -9223372036854775807
  %i.dl = select i1 %i.dj, i64 %i.dk, i64 0
  switch i64 %i.dl, label %bb.ap [
    i64 0, label %bb.aq
    i64 1, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i"
    i64 2, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i"
    i64 3, label %bb.as
    i64 4, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i"
    i64 5, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i"
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i3.i.i = load i64, ptr %i.dm, align 8, !alias.scope !38951, !noalias !38950 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i.i3.i.i, 0
  br i1 %i.dn, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i.i"

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !38952)
  call void @llvm.experimental.noalias.scope.decl(metadata !38953)
  %i.do = icmp eq i64 %i.di, 0
  br i1 %i.do, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i2.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !38954, !noalias !38950, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38955
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i", %bb.as, %bb.ap
  %.sink13.i.i.sroa.phi.i = phi ptr [ %.sink13.i.i.sroa.gep.i, %bb.as ], [ %.sink13.i.i.sroa.gep65.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i" ], [ %.sink13.i.i.sroa.gep.i, %bb.ap ]
  %.val.i.i10.sink.i.i.i = phi i64 [ %.val.i.i4.i.i.i, %bb.as ], [ %.val.i.i10.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i" ], [ %.val.i.i.i3.i.i, %bb.ap ]
  %.val1.i.i11.i.i.i = load ptr, ptr %.sink13.i.i.sroa.phi.i, align 8, !alias.scope !38949, !noalias !38950, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i.i.i, i64 noundef %.val.i.i10.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38956
  br label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i"

bb.as:                                            ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i4.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !38957, !noalias !38950 ; 2 uses
  %i.dr = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.dr, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i": ; preds = %bb.ar, %bb.aq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val.i.i10.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !38958, !noalias !38950 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i10.i.i.i, 0
  br i1 %i.dt, label %"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i.i"

"_ZN19nickel_lang_package8manifest12ManifestFile9from_term28_$u7b$$u7b$closure$u7d$$u7d$17ha46ff4a59458b87bE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit3.i.i.i", %bb.as, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.sink.split.i.i.i", %bb.ap, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !38931
  store i64 -9223372036854775799, ptr %0, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.2120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.dh, ptr %.sroa.2120.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.754.8.copyload.i, ptr %.sroa.4122.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.df, ptr %.sroa.5123.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.7125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dg, ptr %.sroa.7125.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  br label %bb.ct

bb.at:                                            ; preds = %.noexc35
  %.sroa.583.0.copyload.i = load i64, ptr %i.cw, align 8, !noalias !38931
  %.sroa.684.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.684.0.copyload.i = load i64, ptr %.sroa.684.0..sroa_idx.i, align 8, !noalias !38931
  %.sroa.785.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.785.0.copyload.i = load i64, ptr %.sroa.785.0..sroa_idx.i, align 8, !noalias !38931
  %.sroa.886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.886.0.copyload.i = load i64, ptr %.sroa.886.0..sroa_idx.i, align 8, !noalias !38931
  %.sroa.987.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.987.sroa.0.0.copyload.i = load i64, ptr %.sroa.987.0..sroa_idx.i, align 8, !noalias !38931 ; 6 uses
  %.sroa.987.sroa.5.0..sroa.987.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !38931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.987.sroa.5.0..sroa.987.0..sroa_idx.sroa_idx.i, i64 64, i1 false), !noalias !38931
  %.sroa.1088.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1088.0..sroa_idx.i, i64 24, i1 false), !noalias !38931
  %.sroa.1189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %.sroa.1189.sroa.0.0.copyload.i = load i64, ptr %.sroa.1189.0..sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.1189.sroa.5.0..sroa.1189.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %.sroa.1189.sroa.5.0.copyload.i = load ptr, ptr %.sroa.1189.sroa.5.0..sroa.1189.0..sroa_idx.sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.1189.sroa.6.0..sroa.1189.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %.sroa.1189.sroa.6.0.copyload.i = load i64, ptr %.sroa.1189.sroa.6.0..sroa.1189.0..sroa_idx.sroa_idx.i, align 8, !noalias !38931
  %.sroa.1290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1290.0..sroa_idx.i, i64 24, i1 false), !noalias !38931
  %.sroa.1391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %.sroa.1391.sroa.0.0.copyload.i = load i64, ptr %.sroa.1391.0..sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.1391.sroa.5.0..sroa.1391.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %.sroa.1391.sroa.5.0.copyload.i = load ptr, ptr %.sroa.1391.sroa.5.0..sroa.1391.0..sroa_idx.sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.1391.sroa.6.0..sroa.1391.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %.sroa.1391.sroa.6.0.copyload.i = load i64, ptr %.sroa.1391.sroa.6.0..sroa.1391.0..sroa_idx.sroa_idx.i, align 8, !noalias !38931
  %.sroa.1492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !38931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1492.0..sroa_idx.i, i64 48, i1 false), !noalias !38931
  %.sroa.1593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %.sroa.1593.0.copyload.i = load i32, ptr %.sroa.1593.0..sroa_idx.i, align 8, !noalias !38931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !38931
  store i64 %.sroa.987.sroa.0.0.copyload.i, ptr %i.u, align 8, !noalias !38931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !38931
  %i.du = invoke { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.aw unwind label %bb.av, !noalias !38930 ; 2 uses

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i": ; preds = %bb.bc, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit216.i", %bb.av
  %cond.i = phi i1 [ false, %bb.av ], [ true, %bb.bc ], [ true, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit216.i" ]
  %.pn164.i = phi { ptr, i32 } [ %i.dw, %bb.av ], [ %.pn.i.i.i.i, %bb.bc ], [ %.pn.i.i.i.i, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit216.i" ] ; 2 uses
  %i.dv = icmp eq i64 %.sroa.1391.sroa.0.0.copyload.i, 0
  br i1 %i.dv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i", label %bb.au

bb.au:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1391.sroa.5.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1391.sroa.5.0.copyload.i, i64 noundef %.sroa.1391.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38960
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i"

bb.av:                                            ; preds = %bb.ay, %bb.ax, %bb.at
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i"

bb.aw:                                            ; preds = %bb.at
  %i.dx = extractvalue { ptr, i64 } %i.du, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.dx, null
  br i1 %.not.i, label %bb.ay, label %bb.ax, !prof !44

bb.ax:                                            ; preds = %bb.aw
  %i.dy = extractvalue { ptr, i64 } %i.du, 1
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %bb.ba unwind label %bb.av, !noalias !38930

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @864) #73
          to label %bb.az unwind label %bb.av, !noalias !38930

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !38931
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !38931 ; 2 uses
  %.sroa.826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.dz = load <2 x i64>, ptr %.sroa.826.0..sroa_idx.i, align 8, !noalias !38931
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !38931
  %i.ea = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.ea, label %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.723.0.copyload.i = load ptr, ptr %.sroa.723.0..sroa_idx.i, align 8, !noalias !38931, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.723.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38961
  br label %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit216.i": ; preds = %bb.cr, %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !38962)
  call void @llvm.experimental.noalias.scope.decl(metadata !38963)
  %.val.i.i176.i = load i64, ptr %i.r, align 8, !alias.scope !38964, !noalias !38931 ; 2 uses
  %i.eb = icmp eq i64 %.val.i.i176.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit216.i"
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i177.i = load ptr, ptr %i.ec, align 8, !alias.scope !38965, !noalias !38931, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i177.i, i64 noundef %.val.i.i176.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !38966
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h233cb3589a370fd8E.exit.i"

"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i": ; preds = %bb.bb, %bb.ba
  %i.ed = trunc nuw i64 %i.cu to i1
  %.sroa.583.0.copyload..i = select i1 %i.ed, i64 %.sroa.583.0.copyload.i, i64 0
  %i.ee = trunc nuw i64 %.sroa.684.0.copyload.i to i1
  %.sroa.0135.0.i = select i1 %i.ee, i64 %.sroa.785.0.copyload.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1243.i)
  %.sroa.0126.0.copyload.i = load ptr, ptr %i.t, align 8, !noalias !38931, !nonnull !41, !noundef !41 ; 7 uses
  %.sroa.2127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.2127.0.copyload.i = load i64, ptr %.sroa.2127.0..sroa_idx.i, align 8, !noalias !38931 ; 5 uses
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.3129.0.copyload.i = load i64, ptr %.sroa.3129.0..sroa_idx.i, align 8, !noalias !38931 ; 4 uses
  %.val13.i.i.i.i = load <16 x i8>, ptr %.sroa.0126.0.copyload.i, align 16, !noalias !38967
  %i.ef = icmp eq i64 %.sroa.2127.0.copyload.i, 0
  br i1 %i.ef, label %bb.bd, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i"
  %4 = icmp slt i64 %.sroa.2127.0.copyload.i, 144115188075855871
  call void @llvm.assume(i1 %4)
  %i.eg = shl i64 %.sroa.2127.0.copyload.i, 7     ; 2 uses
  %5 = add i64 %i.eg, 128                         ; 2 uses
  %6 = add nsw i64 %.sroa.2127.0.copyload.i, 17
  %i.eh = add i64 %6, %5                          ; 3 uses
  %7 = icmp uge i64 %i.eh, %5
  call void @llvm.assume(i1 %7)
  %8 = icmp ult i64 %i.eh, 9223372036854775793
  call void @llvm.assume(i1 %8)
  %i.ei = sub nuw nsw i64 -128, %i.eg
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0126.0.copyload.i, i64 %i.ei
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i"
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.eh, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i" ] ; 2 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.ej, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %"_ZN124_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$nickel_lang_package..version..FullSemVer$GT$$GT$4from17hf95d72c0b9e43e53E.exit.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 16 ; 3 uses
  %i.el = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1) ; 3 uses
  %i.em = getelementptr i8, ptr %.sroa.0126.0.copyload.i, i64 %.sroa.2127.0.copyload.i
  %i.en = getelementptr i8, ptr %i.em, i64 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38968
  store i64 -9223372036854775788, ptr %i.l, align 8, !noalias !38968
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38969
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.k, align 8, !noalias !38970
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.690.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.690.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %.sroa.0126.0.copyload.i, ptr %.sroa.793.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.896.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.ek, ptr %.sroa.896.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.999.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.en, ptr %.sroa.999.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.10102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <16 x i1> %i.el, ptr %.sroa.10102.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.12107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.3129.0.copyload.i, ptr %.sroa.12107.0..sroa_idx.i, align 8, !noalias !38970
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !38971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38972
  %i.eo = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 8, !range !47, !noalias !38973, !noundef !41
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i.i.i.i", !prof !48

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8, !noalias !38974
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.pre1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38974
  br label %bb.be

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bd
  %i.es = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.by, !noalias !38975 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.et = extractvalue { i64, i64 } %i.es, 0
  %i.eu = extractvalue { i64, i64 } %i.es, 1      ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !noalias !38976
  store i8 1, ptr %i.ep, align 8, !noalias !38976
  br label %bb.be

bb.be:                                            ; preds = %.noexc.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i
  %.pre-phi131.i.i.i.i.i.i.i = phi i64 [ %i.eu, %.noexc.i.i.i.i.i.i.i ], [ %.pre1.i.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i ]
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.et, %.noexc.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ew = add i64 %.pre-phi.i.i.i.i.i.i.i, 1
  store i64 %i.ew, ptr %i.eo, align 8, !noalias !38974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !38972
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !38972
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %.pre-phi131.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !38972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38977
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !38970
  %.sroa.587.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.587.0..sroa_idx88.i, align 8, !noalias !38970
  %.sroa.690.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !38970
  %.sroa.793.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %.sroa.0126.0.copyload.i, ptr %.sroa.793.0..sroa_idx94.i, align 8, !noalias !38970
  %.sroa.896.0..sroa_idx97.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.ek, ptr %.sroa.896.0..sroa_idx97.i, align 8, !noalias !38970
  %.sroa.999.0..sroa_idx100.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.en, ptr %.sroa.999.0..sroa_idx100.i, align 8, !noalias !38970
  %.sroa.10102.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 6 uses
  store <16 x i1> %i.el, ptr %.sroa.10102.0..sroa_idx103.i, align 8, !noalias !38970
  %.sroa.12107.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  store i64 %.sroa.3129.0.copyload.i, ptr %.sroa.12107.0..sroa_idx108.i, align 8, !noalias !38970
  %.sroa.5.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx7.i.i.i.i, align 8, !noalias !38971
  call void @llvm.experimental.noalias.scope.decl(metadata !38978)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38979)
  call void @llvm.experimental.noalias.scope.decl(metadata !38980)
  call void @llvm.experimental.noalias.scope.decl(metadata !38981)
  call void @llvm.experimental.noalias.scope.decl(metadata !38982)
  call void @llvm.experimental.noalias.scope.decl(metadata !38983)
  call void @llvm.experimental.noalias.scope.decl(metadata !38984)
  call void @llvm.experimental.noalias.scope.decl(metadata !38985)
  call void @llvm.experimental.noalias.scope.decl(metadata !38986)
  call void @llvm.experimental.noalias.scope.decl(metadata !38987)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.ez = icmp eq i64 %.sroa.3129.0.copyload.i, 0
  br i1 %i.ez, label %.loopexit.i.i.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.thread.i.i.i.i.i.i.i.i:             ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.be
  %i.fa = bitcast <16 x i1> %i.el to i16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.i.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.6.i.sroa.6.sroa.6.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.6.i.sroa.6.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sro = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sro = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sro = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.0..sroa.6.i.sroa.6.0..sro = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7. = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7. = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa. = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa. = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sro = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sro = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.s = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.s = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sro = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sro = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7 = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7 = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %.sroa.4.sroa.6.sroa.6.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.sroa.6.sroa.9.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.4.sroa.6.sroa.10.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.sroa.6.sroa.11.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.4.sroa.6.sroa.12.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.sroa.6.sroa.13.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.4.sroa.6.sroa.14.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.4.sroa.6.sroa.15.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.4.sroa.6.sroa.16.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.4.sroa.6.sroa.17.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %.sroa.4.sroa.6.sroa.18.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.4.sroa.6.sroa.19.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.sroa.4.sroa.6.sroa.20.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.4.sroa.6.sroa.21.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %.sroa.4.sroa.6.sroa.22.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.4.sroa.6.sroa.23.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %.sroa.4.sroa.6.sroa.24.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.4.sroa.6.sroa.25.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %.sroa.4.sroa.6.sroa.26.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.4.sroa.6.sroa.27.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %.sroa.4.sroa.6.sroa.28.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.4.sroa.6.sroa.29.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %.sroa.4.sroa.6.sroa.30.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.4.sroa.6.sroa.31.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %.sroa.4.sroa.6.sroa.32.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.4.sroa.6.sroa.33.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %.sroa.4.sroa.6.sroa.34.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.4.sroa.6.sroa.35.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %.sroa.4.sroa.6.sroa.36.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.4.sroa.6.sroa.37.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %.sroa.4.sroa.6.sroa.38.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.sroa.4.sroa.6.sroa.39.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %.sroa.4.sroa.6.sroa.40.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %.sroa.4.sroa.6.sroa.41.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %.sroa.4.sroa.6.sroa.42.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %.sroa.4.sroa.6.sroa.43.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %.sroa.4.sroa.6.sroa.44.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %.sroa.4.sroa.6.sroa.45.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %.sroa.4.sroa.6.sroa.46.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.sroa.4.sroa.6.sroa.47.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %.sroa.4.sroa.6.sroa.48.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %.sroa.4.sroa.6.sroa.49.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 172
  %.sroa.4.sroa.6.sroa.50.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %.sroa.4.sroa.6.sroa.51.0..sroa.4.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 180
end_hunk_3
begin_hunk_4_@_ZN4core4iter6traits8iterator8Iterator7collect17hd419fd93bca0c49bE:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68674)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !68674, !noalias !68675, !noundef !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !68674, !noalias !68675
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15), !noalias !68672
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !68673, !noalias !68676
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.bd, ptr %i.bg, align 8, !alias.scope !68673, !noalias !68676
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.b, align 8, !noalias !68677 ; 4 uses
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !68677 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i, i64 32, i1 false), !noalias !68664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68672
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i", label %bb.l

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i", %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !68678, !noalias !68679
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8, !alias.scope !68678, !noalias !68679
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bi, align 8, !alias.scope !68678, !noalias !68679
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit"

bb.j:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 0
  br i1 %i.bk, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !68680
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i"

bb.l:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i"
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %i.e, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bl, i64 4) ; 3 uses
  %i.bm = mul i64 %.sroa.0.0.i.i.i.i, 48          ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.bl, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !68681
  %i.bo = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, 9) 8) #67, !noalias !68681 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !68664

.noexc.i.i.i:                                     ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bo, %bb.m ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.m ] ; 2 uses
  %i.bq = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bq)
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i, i64 32, i1 false), !noalias !68664
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !68664
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !68664
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.c, align 8, !noalias !68664
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !68664
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !68664
  call void @llvm.experimental.noalias.scope.decl(metadata !68682)
  call void @llvm.experimental.noalias.scope.decl(metadata !68683)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i.i.i)
  %i.br = icmp eq i64 %i.e, 0
  br i1 %i.br, label %.noexc5.thread.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i": ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 3970
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !68684, !noundef !41
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, %i.bu
  br i1 %i.bv, label %.thread.i, label %.lr.ph.i.i.i.i23.i.i.i

.thread.i:                                        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i"
  %i.bw = add nuw nsw i64 %.sroa.7.0.i.i.i.i, 1
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i"

.lr.ph.i.i.i.i23.i.i.i:                           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i", %bb.p
  %.sroa.0.038.i.i.i.i24.i.i.i = phi ptr [ %i.by, %bb.p ], [ %.sroa.07.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i25.i.i.i = phi i64 [ %i.bz, %bb.p ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i17.i.i.i" ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i24.i.i.i, i64 528
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !68685, !noundef !41 ; 8 uses
  %.not.i.i.i.i.i26.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i26.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i23.i.i.i
  %i.bz = add i64 %.sroa.5.037.i.i.i.i25.i.i.i, 1 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i24.i.i.i, i64 3968
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !68685 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 3970
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !68684, !noundef !41
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %bb.q, label %.lr.ph.i.i.i.i23.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cf = zext i16 %i.cb to i64                   ; 4 uses
  %i.cg = icmp eq i64 %i.bz, 0
  %i.ch = add nuw nsw i64 %i.cf, 1                ; 2 uses
  br i1 %i.cg, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 3976
  %i.cj = icmp ult i16 %i.cb, 11
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch ; 2 uses
  %xtraiter85 = and i64 %i.bz, 7                  ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.prol.loopexit82, label %.prol.preheader81

.prol.preheader81:                                ; preds = %bb.r, %.prol.preheader81
  %.pn30.in.i.i.i.i31.i.i.i.prol = phi ptr [ %i.cl, %.prol.preheader81 ], [ %i.ck, %bb.r ]
  %.pn28.in.i.i.i.i32.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i33.i.i.i.prol, %.prol.preheader81 ], [ %i.bz, %bb.r ]
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.prol.preheader81 ], [ 0, %bb.r ]
  %.pn28.i.i.i.i33.i.i.i.prol = add i64 %.pn28.in.i.i.i.i32.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i34.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i31.i.i.i.prol, align 8, !noalias !68686, !nonnull !41, !noundef !41 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.prol, i64 3976 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.prol.loopexit82, label %.prol.preheader81, !llvm.loop !68630

.prol.loopexit82:                                 ; preds = %.prol.preheader81, %bb.r
  %.pn30.i.i.i.i34.i.i.i.lcssa.unr = phi ptr [ poison, %bb.r ], [ %.pn30.i.i.i.i34.i.i.i.prol, %.prol.preheader81 ]
  %.pn30.in.i.i.i.i31.i.i.i.unr = phi ptr [ %i.ck, %bb.r ], [ %i.cl, %.prol.preheader81 ]
  %.pn28.in.i.i.i.i32.i.i.i.unr = phi i64 [ %i.bz, %bb.r ], [ %.pn28.i.i.i.i33.i.i.i.prol, %.prol.preheader81 ]
  %i.cm = icmp ult i64 %.sroa.5.037.i.i.i.i25.i.i.i, 7
  br i1 %i.cm, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %.new83

.new83:                                           ; preds = %.prol.loopexit82, %.new83
  %.pn30.in.i.i.i.i31.i.i.i = phi ptr [ %i.cv, %.new83 ], [ %.pn30.in.i.i.i.i31.i.i.i.unr, %.prol.loopexit82 ]
  %.pn28.in.i.i.i.i32.i.i.i = phi i64 [ %.pn28.i.i.i.i33.i.i.i.7, %.new83 ], [ %.pn28.in.i.i.i.i32.i.i.i.unr, %.prol.loopexit82 ]
  %.pn30.i.i.i.i34.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i31.i.i.i, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i, i64 3976
  %.pn30.i.i.i.i34.i.i.i.1 = load ptr, ptr %i.cn, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.1, i64 3976
  %.pn30.i.i.i.i34.i.i.i.2 = load ptr, ptr %i.co, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.2, i64 3976
  %.pn30.i.i.i.i34.i.i.i.3 = load ptr, ptr %i.cp, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.3, i64 3976
  %.pn30.i.i.i.i34.i.i.i.4 = load ptr, ptr %i.cq, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.4, i64 3976
  %.pn30.i.i.i.i34.i.i.i.5 = load ptr, ptr %i.cr, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.5, i64 3976
  %.pn30.i.i.i.i34.i.i.i.6 = load ptr, ptr %i.cs, align 8, !noalias !68686, !nonnull !41, !noundef !41
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.6, i64 3976
  %.pn28.i.i.i.i33.i.i.i.7 = add i64 %.pn28.in.i.i.i.i32.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i34.i.i.i.7 = load ptr, ptr %i.ct, align 8, !noalias !68686, !nonnull !41, !noundef !41 ; 2 uses
  %i.cu = icmp eq i64 %.pn28.i.i.i.i33.i.i.i.7, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i34.i.i.i.7, i64 3976
  br i1 %i.cu, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i", label %.new83

bb.s:                                             ; preds = %.lr.ph.i.i.i.i23.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i40.i.i.i unwind label %bb.t, !noalias !68687

.noexc.i.i40.i.i.i:                               ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i": ; preds = %.prol.loopexit82, %.new83, %bb.q, %.thread.i
  %.sroa.0.0.ph.i.i.i30.i.i19.i = phi ptr [ %i.by, %bb.q ], [ %.sroa.07.0.i.i.i.i, %.thread.i ], [ %i.by, %.new83 ], [ %i.by, %.prol.loopexit82 ]
  %.sroa.6.sroa.4.0.ph.i.i.i28.i.i18.i = phi i64 [ %i.cf, %bb.q ], [ %.sroa.7.0.i.i.i.i, %.thread.i ], [ %i.cf, %.new83 ], [ %i.cf, %.prol.loopexit82 ] ; 2 uses
  %.sroa.7.0.i.i.i36.i.i.i = phi i64 [ %i.ch, %bb.q ], [ %i.bw, %.thread.i ], [ 0, %.new83 ], [ 0, %.prol.loopexit82 ]
  %.sroa.07.0.i.i.i37.i.i.i = phi ptr [ %i.by, %bb.q ], [ %.sroa.07.0.i.i.i.i, %.thread.i ], [ %.pn30.i.i.i.i34.i.i.i.lcssa.unr, %.prol.loopexit82 ], [ %.pn30.i.i.i.i34.i.i.i.7, %.new83 ]
  %i.cx = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i28.i.i18.i, 11
  call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i30.i.i19.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i28.i.i18.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i": ; preds = %.noexc7.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i"
  %i.db = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.dl, %.noexc7.i.i.i ]
  %i.dc = phi i64 [ 1, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.dn, %.noexc7.i.i.i ] ; 5 uses
  %.sroa.2714.1.in.i.i.i = phi i64 [ %i.e, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.2714.1.i.i.i, %.noexc7.i.i.i ]
  %.sroa.7.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i37.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i, %.noexc7.i.i.i ] ; 5 uses
  %.sroa.21.1.i.i.i = phi i64 [ %.sroa.7.0.i.i.i36.i.i.i, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i, %.noexc7.i.i.i ] ; 3 uses
  %i.dd = phi ptr [ %i.cy, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.lr.ph.i.i.i.i.i" ], [ %i.ev, %.noexc7.i.i.i ] ; 3 uses
  %.sroa.2714.1.i.i.i = add i64 %.sroa.2714.1.in.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68688
  call void @llvm.experimental.noalias.scope.decl(metadata !68689)
  call void @llvm.experimental.noalias.scope.decl(metadata !68690)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load <2 x i64>, ptr %i.de, align 8, !alias.scope !68690, !noalias !68691
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !68690, !noalias !68691, !noundef !41
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.noexc6.i.i.i unwind label %.loopexit.i.i.i, !noalias !68664

.noexc6.i.i.i:                                    ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"
  store <2 x i64> %i.df, ptr %i.cz, align 8, !alias.scope !68689, !noalias !68692
  store i64 %i.dh, ptr %i.da, align 8, !alias.scope !68689, !noalias !68692
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !68693 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !68693 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !68694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68688
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %.noexc5.thread.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc6.i.i.i
  %i.di = icmp samesign ult i64 %i.dc, 192153584101141163
  call void @llvm.assume(i1 %i.di)
  %i.dj = load i64, ptr %i.c, align 8, !range !43, !alias.scope !68695, !noalias !68696, !noundef !41
  %i.dk = icmp eq i64 %i.dc, %i.dj
  br i1 %i.dk, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i", %bb.u
  %i.dl = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i" ], [ %i.db, %bb.u ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %i.dl, i64 %i.dc ; 3 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.i.i.i.i.i, i64 32, i1 false), !noalias !68694
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.dm, align 8, !noalias !68694
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !68694
  %i.dn = add nuw nsw i64 %i.dc, 1                ; 2 uses
  store i64 %i.dn, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !68695, !noalias !68696
  %i.do = icmp eq i64 %.sroa.2714.1.i.i.i, 0
  br i1 %i.do, label %.noexc5.thread.i.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i, i64 3970
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !68697, !noundef !41
  %i.dr = zext i16 %i.dq to i64
  %i.ds = icmp ult i64 %.sroa.21.1.i.i.i, %i.dr
  br i1 %i.ds, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i"
  %i.dt = add nuw nsw i64 %.sroa.21.1.i.i.i, 1
  br label %.noexc7.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i", %bb.v
  %.sroa.0.038.i.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.v ], [ %.sroa.7.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i = phi i64 [ %i.dw, %bb.v ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb251643abd7ebb44E.exit.i.i.i.i" ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i, i64 528
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !68698, !noundef !41 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dw = add i64 %.sroa.5.037.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i, i64 3968
  %i.dy = load i16, ptr %i.dx, align 8, !noalias !68698 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 3970
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !68697, !noundef !41
  %i.eb = icmp ult i16 %i.dy, %i.ea
  br i1 %i.eb, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ec = zext i16 %i.dy to i64                   ; 4 uses
  %i.ed = icmp eq i64 %i.dw, 0
  %i.ee = add nuw nsw i64 %i.ec, 1                ; 2 uses
  br i1 %i.ed, label %.noexc7.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 3976
  %i.eg = icmp ult i16 %i.dy, 11
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee ; 2 uses
  %xtraiter92 = and i64 %i.dw, 7                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.prol.loopexit89, label %.prol.preheader88

.prol.preheader88:                                ; preds = %bb.x, %.prol.preheader88
  %.pn30.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.ei, %.prol.preheader88 ], [ %i.eh, %bb.x ]
  %.pn28.in.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader88 ], [ %i.dw, %bb.x ]
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.prol.preheader88 ], [ 0, %bb.x ]
  %.pn28.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.prol, align 8, !noalias !68699, !nonnull !41, !noundef !41 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.prol, i64 3976 ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.prol.loopexit89, label %.prol.preheader88, !llvm.loop !68654

.prol.loopexit89:                                 ; preds = %.prol.preheader88, %bb.x
  %.pn30.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.x ], [ %.pn30.i.i.i.i.i.i.i.prol, %.prol.preheader88 ]
  %.pn30.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.eh, %bb.x ], [ %i.ei, %.prol.preheader88 ]
  %.pn28.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.dw, %bb.x ], [ %.pn28.i.i.i.i.i.i.i.prol, %.prol.preheader88 ]
  %i.ej = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i, 7
  br i1 %i.ej, label %.noexc7.i.i.i, label %.new90

.new90:                                           ; preds = %.prol.loopexit89, %.new90
  %.pn30.in.i.i.i.i.i.i.i = phi ptr [ %i.es, %.new90 ], [ %.pn30.in.i.i.i.i.i.i.i.unr, %.prol.loopexit89 ]
  %.pn28.in.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.7, %.new90 ], [ %.pn28.in.i.i.i.i.i.i.i.unr, %.prol.loopexit89 ]
  %.pn30.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i, i64 3976
  %.pn30.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ek, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.el = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.1, i64 3976
  %.pn30.i.i.i.i.i.i.i.2 = load ptr, ptr %i.el, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.em = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.2, i64 3976
  %.pn30.i.i.i.i.i.i.i.3 = load ptr, ptr %i.em, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.en = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.3, i64 3976
  %.pn30.i.i.i.i.i.i.i.4 = load ptr, ptr %i.en, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.4, i64 3976
  %.pn30.i.i.i.i.i.i.i.5 = load ptr, ptr %i.eo, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.5, i64 3976
  %.pn30.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ep, align 8, !noalias !68699, !nonnull !41, !noundef !41
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.6, i64 3976
  %.pn28.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eq, align 8, !noalias !68699, !nonnull !41, !noundef !41 ; 2 uses
  %i.er = icmp eq i64 %.pn28.i.i.i.i.i.i.i.7, 0
  %i.es = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.7, i64 3976
  br i1 %i.er, label %.noexc7.i.i.i, label %.new90

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1353) #73
          to label %.noexc.i.i.i.i.i unwind label %bb.z, !noalias !68700

.noexc.i.i.i.i.i:                                 ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc7.i.i.i:                                    ; preds = %.prol.loopexit89, %.new90, %bb.w, %.thread.i.i.i
  %.sroa.0.0.ph.i.i.i46.i.i.i = phi ptr [ %i.dv, %bb.w ], [ %.sroa.7.1.i.i.i, %.thread.i.i.i ], [ %i.dv, %.new90 ], [ %i.dv, %.prol.loopexit89 ]
  %.sroa.6.sroa.4.0.ph.i.i.i45.i.i.i = phi i64 [ %i.ec, %bb.w ], [ %.sroa.21.1.i.i.i, %.thread.i.i.i ], [ %i.ec, %.new90 ], [ %i.ec, %.prol.loopexit89 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.ee, %bb.w ], [ %i.dt, %.thread.i.i.i ], [ 0, %.new90 ], [ 0, %.prol.loopexit89 ]
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.w ], [ %.sroa.7.1.i.i.i, %.thread.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit89 ], [ %.pn30.i.i.i.i.i.i.i.7, %.new90 ]
  %i.eu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i45.i.i.i, 11
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.i.i.i46.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i45.i.i.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.ac
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.ex, label %.body.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !68701
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.u
  %i.ey = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2714.1.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.dc, i64 noundef range(i64 1, 0) %i.ey, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i" unwind label %bb.aa, !noalias !68696

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.ac
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !68695, !noalias !68696
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i"

.loopexit.i.i.i:                                  ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.i.i.i, %bb.ab, %bb.aa
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.aa ], [ %i.ew, %bb.ab ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #75, !noalias !68664
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i"

.noexc5.thread.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbbad20011b6e1dadE.exit.i.i.i.i.i", %.noexc6.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !68679
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit.i.i.i": ; preds = %.body.i.i.i, %bb.k, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he6f1387a19f0fb10E.exit": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e237d0b62b33332E.exit.thread.i.i.i", %.noexc5.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hd7bec5b371300a0bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [176 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68715
  store i64 0, ptr %i.e, align 8, !noalias !68715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68717
  store ptr %1, ptr %i.d, align 16, !noalias !68717
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.f, align 8, !noalias !68717
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.i, 168
  br i1 %.not.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.i.i", label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %.lr.ph.i.i.preheader

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.i.i": ; preds = %bb.a
  %i.k = udiv exact i64 %i.i, 56
  %i.l = add nsw i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = lshr i64 -1, %i.m
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h4763d28cd5b58dd5E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.e, i64 noundef %i.o)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !68715 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.i.i"
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  switch i64 %i.q, label %bb.b [
    i64 -9223372036854775807, label %.split.i
    i64 0, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h1e5f8771694960adE.exit.thread.i.i"
  ], !prof !173

bb.b:                                             ; preds = %.noexc.i
  %i.r = extractvalue { i64, i64 } %i.p, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.q, i64 noundef %i.r) #73
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !68715

end_hunk_4
begin_hunk_5_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17hb46c160b546a0aafE":bb.a
    i8 -1, label %._crit_edge
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hba94d64b18bd26bcE.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i52, %.lr.ph ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit.thread", label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 896
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !75098, !nonnull !41, !noundef !41
  %i.x = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hba94d64b18bd26bcE.exit.i": ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75100
  store i8 0, ptr %i.e, align 1, !noalias !75100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75100
  %i.y = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hba94d64b18bd26bcE.exit.i"
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !75101
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !75101
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.i.i.i52, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !75101
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17hc9d8fbf127b64607E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.e), !noalias !75100
  %.sroa.6.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.6.0.copyload.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !75100
  %.sroa.7.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.7.0.copyload.pre.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !75100
  %.sroa.8.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.8.0.copyload.pre.i.i = load i64, ptr %.sroa.8.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !75100
  br label %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h5131816d90d0d661E.exit.i.i"

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hba94d64b18bd26bcE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.451.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75101
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 896
  %i.ab = icmp samesign ult i64 %.sroa.8.0.i.i.i52, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.8.0.i.i.i52
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !75102, !nonnull !41, !noundef !41 ; 3 uses
  %i.ae = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.ag = add i64 %i.h, -2
  %i.ah = sub i64 %i.ag, %indvar
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.06.i.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 890
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 896
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 3 uses
  %i.ap = add i64 %.sroa.03.06.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !75082

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.06.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 7
  br i1 %i.aq, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 890
  %i.as = load i16, ptr %i.ar, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 896
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 890
  %i.az = load i16, ptr %i.ay, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 896
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 890
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 896
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 890
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 896
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 890
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 896
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 890
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 896
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 890
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 896
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 890
  %i.cp = load i16, ptr %i.co, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 896
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !75104, !nonnull !41, !noundef !41 ; 2 uses
  %i.cv = add i64 %.sroa.03.06.i.i.i.i.i, -8      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa60.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 890
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !75103, !noundef !41 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %.not.i.i.i.i = icmp eq i16 %i.cy, 0            ; 2 uses
  %i.da = add nsw i64 %i.cz, -1
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 undef, i64 %i.da
  %spec.select76.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %.sroa.04.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select76.i.i.i.i) ]
  store ptr %spec.select76.i.i.i.i, ptr %i.b, align 8, !noalias !75105
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i, align 8, !noalias !75105
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %spec.select.i.i.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i, align 8, !noalias !75105
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17hc9d8fbf127b64607E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.e), !noalias !75106
  %.sroa.039.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !75105
  %.sroa.541.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.541.0.copyload.i.i.i.i = load i64, ptr %.sroa.541.0..sroa_idx.i.i.i.i, align 8, !noalias !75105
  %.sroa.642.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.642.0.copyload.i.i.i.i = load ptr, ptr %.sroa.642.0..sroa_idx.i.i.i.i, align 8, !noalias !75105
  %.sroa.743.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.743.0.copyload.i.i.i.i = load i64, ptr %.sroa.743.0..sroa_idx.i.i.i.i, align 8, !noalias !75105
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.044.0.copyload.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !75105, !nonnull !41, !noundef !41 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !75105 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !75105 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload.i.i.i.i, i64 890
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !75107, !noundef !41
  %i.de = zext i16 %i.dd to i64
  %i.df = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i, %i.de
  br i1 %i.df, label %"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17hb926e4368f2a1f7aE.exit.i.i.i.i", label %.lr.ph.i37.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i", %.lr.ph.i37.i.i.i.i
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i37.i.i.i.i ], [ %.sroa.044.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.dh, %.lr.ph.i37.i.i.i.i ], [ %.sroa.2.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i" ]
  %i.dg = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !75108, !nonnull !41, !noundef !41 ; 3 uses
  %i.dh = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 888
  %i.dj = load i16, ptr %i.di, align 8, !noalias !75108 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 890
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !75107, !noundef !41
  %i.dm = icmp ult i16 %i.dj, %i.dl
  br i1 %i.dm, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i37.i.i.i.i
  %i.dn = zext i16 %i.dj to i64
  br label %"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17hb926e4368f2a1f7aE.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17hb926e4368f2a1f7aE.exit.i.i.i.i": ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i"
  %.sroa.69.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.3.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i" ], [ %i.dn, %._crit_edge.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.69.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i" ], [ %i.dh, %._crit_edge.loopexit.i.i.i.i.i ]
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.044.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h6478c9b692a18e3aE.exit.i.i.i.i" ], [ %i.dg, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.69.sroa.4.0.i.i.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 96
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %.sroa.69.sroa.4.0.i.i.i.i ; 5 uses
  %i.ds = load i64, ptr %i.dp, align 8, !noalias !75109, !noundef !41
  store i64 %.sroa.039.0.copyload.i.i.i.i, ptr %i.dp, align 8, !noalias !75109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.451.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.dr, i64 48, i1 false), !noalias !75105
  %.sroa.552.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %.sroa.552.8.copyload.i.i.i.i = load i64, ptr %.sroa.552.8..sroa_idx.i.i.i.i, align 8, !noalias !75110
  %.sroa.653.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %.sroa.653.8.copyload.i.i.i.i = load ptr, ptr %.sroa.653.8..sroa_idx.i.i.i.i, align 8, !noalias !75110
  %.sroa.754.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 2 uses
  %.sroa.754.8.copyload.i.i.i.i = load i64, ptr %.sroa.754.8..sroa_idx.i.i.i.i, align 8, !noalias !75110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !75105
  store i64 %.sroa.541.0.copyload.i.i.i.i, ptr %.sroa.552.8..sroa_idx.i.i.i.i, align 8, !noalias !75111
  store ptr %.sroa.642.0.copyload.i.i.i.i, ptr %.sroa.653.8..sroa_idx.i.i.i.i, align 8, !noalias !75111
  store i64 %.sroa.743.0.copyload.i.i.i.i, ptr %.sroa.754.8..sroa_idx.i.i.i.i, align 8, !noalias !75111
  %i.dt = icmp eq i64 %.sroa.69.sroa.0.0.i.i.i.i, 0
  br i1 %i.dt, label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i", label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.loopexit.i"

"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.loopexit.i": ; preds = %"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17hb926e4368f2a1f7aE.exit.i.i.i.i"
  %i.du = icmp samesign ult i64 %.sroa.69.sroa.4.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.du)
  br label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i"

"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.loopexit.i", %"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17hb926e4368f2a1f7aE.exit.i.i.i.i"
  store i64 %i.ds, ptr %i.d, align 8, !noalias !75100
  %.sroa.466.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.466.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.451.i.i.i.i, i64 48, i1 false), !noalias !75100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.451.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75101
  br label %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h5131816d90d0d661E.exit.i.i"

"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h5131816d90d0d661E.exit.i.i": ; preds = %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i", %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload.pre.i.i, %bb.g ], [ %.sroa.754.8.copyload.i.i.i.i, %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i" ]
  %.sroa.7.0.copyload.i.i = phi ptr [ %.sroa.7.0.copyload.pre.i.i, %bb.g ], [ %.sroa.653.8.copyload.i.i.i.i, %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i" ] ; 3 uses
  %.sroa.6.0.copyload.i.i = phi i64 [ %.sroa.6.0.copyload.pre.i.i, %bb.g ], [ %.sroa.552.8.copyload.i.i.i.i, %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h7afc3eb83c72b341E.exit.i.i.i" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75100
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !75095, !noalias !75112, !noundef !41
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr %i.dv, align 8, !alias.scope !75095, !noalias !75112
  %i.dy = load i8, ptr %i.e, align 1, !range !47, !noalias !75100, !noundef !41
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit"

bb.i:                                             ; preds = %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h5131816d90d0d661E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75113)
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.m, !prof !44

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1330, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1331) #73
          to label %.noexc.i.i unwind label %bb.k, !noalias !75100

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = icmp eq i64 %.sroa.6.0.copyload.i.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$RP$$GT$17h90142b99f4c1d1cdE.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !75114
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$RP$$GT$17h90142b99f4c1d1cdE.exit.i.i"

bb.m:                                             ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !75115, !nonnull !41, !noundef !41 ; 2 uses
  store ptr %i.ed, ptr %1, align 8, !alias.scope !75116, !noalias !75112
  %i.ee = add i64 %i.h, -1
  store i64 %i.ee, ptr %i.g, align 8, !alias.scope !75116, !noalias !75112
  store ptr null, ptr %i.ed, align 8, !noalias !75115
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 992, i64 noundef 8) #67, !noalias !75115
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit"

"_ZN4core3ptr98drop_in_place$LT$$LP$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$RP$$GT$17h90142b99f4c1d1cdE.exit.i.i": ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.ea

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit": ; preds = %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h5131816d90d0d661E.exit.i.i", %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75099
  %.not = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775808
  br i1 %.not, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit.thread", label %bb.n

bb.n:                                             ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit"
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i64 48, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7.0.copyload.i.i, ptr %.sroa.57.0..sroa_idx, align 8
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit.thread": ; preds = %._crit_edge, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit", %bb.a, %bb.n
  %.sink57 = phi i64 [ 64, %bb.n ], [ 48, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit" ], [ 48, %bb.a ], [ 48, %._crit_edge ]
  %.sink = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.n ], [ -9223372036854775808, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17h1d0cea4fad8127e4E.exit" ], [ -9223372036854775808, %bb.a ], [ -9223372036854775808, %._crit_edge ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink57
  store i64 %.sink, ptr %i.eg, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h06f0e2e554b0e843E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75153)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !75154, !noalias !75155
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !75154, !noalias !75155 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !75154, !noalias !75155 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !75154, !noalias !75155 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !75154, !noalias !75155
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hb0793ebaf2af0858E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !noalias !75156, !nonnull !41, !noundef !41 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !75124

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !noalias !75156, !nonnull !41, !noundef !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !noalias !75156, !nonnull !41, !noundef !41 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !75157, !noundef !41 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h24197c323a4528f0E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 104, i64 200
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #67, !noalias !75158
end_hunk_5
begin_hunk_6_@"_ZN7pubgrub8internal4core15State$LT$DP$GT$19conflict_resolution17hced9e2e8d2e0d6d2E":bb.a

bb.ix:                                            ; preds = %bb.iw
  %.val1.i.i115 = load ptr, ptr %i.ch, align 8, !alias.scope !84682, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i115, i64 noundef %.val.i.i114, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !84682
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit116"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit116": ; preds = %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.iq

bb.iy:                                            ; preds = %bb.ir, %bb.iq
  %i.aqs = load ptr, ptr %i.aq, align 8, !alias.scope !84674, !noalias !84675, !nonnull !41, !noundef !41
  %i.aqt = getelementptr inbounds nuw [528 x i8], ptr %i.aqs, i64 %i.aqi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.aqt, ptr noundef nonnull align 8 dereferenceable(528) %i.ai, i64 528, i1 false)
  %i.aqu = add nuw nsw i64 %i.aqi, 1
  store i64 %i.aqu, ptr %i.am, align 8, !alias.scope !84674, !noalias !84675
  %i.aqv = trunc i64 %i.aqi to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call fastcc void @"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7c573de24c09c81fE"(ptr noalias noundef align 8 dereferenceable(24) %3, i32 noundef %i.lp, i32 noundef %i.aqv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.aqw = and i64 %i.aqi, 4294967295             ; 3 uses
  %i.aqx = load i64, ptr %i.am, align 8, !noundef !41 ; 2 uses
  %i.aqy = icmp ugt i64 %i.aqx, %i.aqw
  br i1 %i.aqy, label %bb.b, label %._crit_edge

.thread:                                          ; preds = %bb.iu, %bb.iv, %.thread195
  %.pn191 = phi { ptr, i32 } [ %i.aqo, %.thread195 ], [ %i.aqp, %bb.iv ], [ %i.aqp, %bb.iu ]
  call fastcc void @"_ZN4core3ptr236drop_in_place$LT$pubgrub..internal..small_map..SmallMap$LT$pubgrub..internal..arena..Id$LT$nickel_lang_package..resolve..Package$GT$$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$GT$$GT$17hd185260901d1394eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(528) %i.ai)
  call fastcc void @"_ZN4core3ptr199drop_in_place$LT$pubgrub..internal..incompatibility..Kind$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h9e3b71ec1bfde384E"(ptr noalias noundef readonly align 8 dereferenceable(256) %i.ca)
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7pubgrub8internal4core15State$LT$DP$GT$21build_derivation_tree17hc9b0a7e864c93537E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(592) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(496) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4304 = alloca [584 x i8], align 8        ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [304 x i8], align 8               ; 5 uses
  %i.e = alloca [304 x i8], align 8               ; 21 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [120 x i8], align 8               ; 4 uses
  %i.k = alloca [120 x i8], align 8               ; 4 uses
  %.sroa.5.i.i.i.i.i.i.i.i.i = alloca [120 x i8], align 8 ; 5 uses
  %i.l = alloca [176 x i8], align 8               ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 15 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 3 uses
  %i.af = alloca [48 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [120 x i8], align 8              ; 5 uses
  %i.aj = alloca [120 x i8], align 8              ; 4 uses
  %i.ak = alloca [120 x i8], align 8              ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [120 x i8], align 8              ; 5 uses
  %i.ao = alloca [176 x i8], align 16             ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [120 x i8], align 8              ; 6 uses
  %i.ar = alloca [120 x i8], align 8              ; 4 uses
  %i.as = alloca [176 x i8], align 8              ; 5 uses
  %i.at = alloca [120 x i8], align 8              ; 5 uses
  %i.au = alloca [176 x i8], align 8              ; 12 uses
  %.sroa.12 = alloca [520 x i8], align 8          ; 8 uses
  %i.av = alloca [120 x i8], align 8              ; 5 uses
  %i.aw = alloca [120 x i8], align 8              ; 5 uses
  %i.ax = alloca [120 x i8], align 8              ; 4 uses
  %i.ay = alloca [176 x i8], align 8              ; 11 uses
  %i.az = alloca [120 x i8], align 8              ; 4 uses
  %i.ba = alloca [176 x i8], align 16             ; 5 uses
  %i.bb = alloca [256 x i8], align 8              ; 13 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 3 uses
  %i.be = alloca [24 x i8], align 8               ; 10 uses
  %i.bf = alloca [608 x i8], align 8              ; 14 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.18 = alloca [256 x i8], align 8          ; 7 uses
  %.sroa.20 = alloca [264 x i8], align 8          ; 2 uses
  %i.bh = alloca [32 x i8], align 8               ; 19 uses
  %i.bi = alloca [4 x i8], align 4                ; 2 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [32 x i8], align 8               ; 17 uses
  %i.bl = alloca [48 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !range !47, !noalias !85172, !noundef !41
  %i.bp = trunc nuw i8 %i.bo to i1
  %.sink1.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %.sink1.i.sroa.gep291 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sink1.i.sroa.gep292 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br i1 %i.bp, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i", !prof !48

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.bm, align 8, !noalias !85173
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !85173
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i": ; preds = %bb.a
  %i.bq = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !85174 ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0
  %i.bs = extractvalue { i64, i64 } %i.bq, 1      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !noalias !85174
  store i8 1, ptr %i.bn, align 8, !noalias !85174
  br label %bb.b

"_ZN4core3ptr269drop_in_place$LT$alloc..vec..Vec$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17ha5cad8c89b82ae74E.exit": ; preds = %.body49
  %.val33 = load ptr, ptr %i.bk, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val34 = load i64, ptr %i.bu, align 8, !noundef !41
  call fastcc void @"_ZN4core3ptr318drop_in_place$LT$std..collections..hash..set..HashSet$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17h828c6fc779fcae7eE"(ptr %.val33, i64 %.val34) #75
  br i1 %.not531, label %bb.gy, label %.thread

"_ZN4core3ptr269drop_in_place$LT$alloc..vec..Vec$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17ha5cad8c89b82ae74E.exit.thread": ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.val33690 = load ptr, ptr %i.bk, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val34691 = load i64, ptr %i.bw, align 8, !noundef !41
  tail call fastcc void @"_ZN4core3ptr318drop_in_place$LT$std..collections..hash..set..HashSet$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17h828c6fc779fcae7eE"(ptr %.val33690, i64 %.val34691) #75
  br label %bb.gy

bb.b:                                             ; preds = %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i"
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i ], [ %i.bs, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i" ]
  %i.bx = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i ], [ %i.br, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i" ] ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bm, align 8, !noalias !85173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 4 uses
  store i64 %i.bx, ptr %.sroa.4238.0..sroa_idx, align 8
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 3 uses
  store i64 %.pre-phi.i, ptr %.sroa.5239.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.bz = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #67 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.c, label %bb.d, !prof !44

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #73
          to label %bb.ew unwind label %"_ZN4core3ptr269drop_in_place$LT$alloc..vec..Vec$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17ha5cad8c89b82ae74E.exit.thread"

bb.d:                                             ; preds = %bb.b
  store i32 %2, ptr %i.bz, align 4
  store i64 1, ptr %i.bj, align 8, !alias.scope !85175
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  store ptr %i.bz, ptr %i.cb, align 8, !alias.scope !85175
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !41 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd0df1724c52889e0E.exit"
  %.sroa.0256.0.copyload = load ptr, ptr %i.bl, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %.sroa.2.0.copyload = load i64, ptr %i.ci, align 8 ; 4 uses
  %.sroa.3257.0.copyload = load i64, ptr %i.ch, align 8 ; 4 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0256.0.copyload, align 16, !noalias !85176
  %i.co = icmp eq i64 %.sroa.2.0.copyload, 0      ; 5 uses
  br i1 %i.co, label %bb.g, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.e
  %i.cp = icmp slt i64 %.sroa.2.0.copyload, 4611686018427387900
  call void @llvm.assume(i1 %i.cp)
  %i.cq = shl i64 %.sroa.2.0.copyload, 2
  %i.cr = and i64 %i.cq, -16                      ; 2 uses
  %3 = add i64 %i.cr, 16                          ; 2 uses
  %i.cs = add nsw i64 %.sroa.2.0.copyload, 17
  %i.ct = add i64 %i.cs, %3                       ; 3 uses
  %4 = icmp uge i64 %i.ct, %3
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.ct, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.cu = sub nuw nsw i64 -16, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0256.0.copyload, i64 %i.cu
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd0df1724c52889e0E.exit"
  %i.cw = phi ptr [ %i.bz, %bb.d ], [ %i.agw, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd0df1724c52889e0E.exit" ] ; 4 uses
  %i.cx = phi i64 [ 1, %bb.d ], [ %.pr, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd0df1724c52889e0E.exit" ] ; 6 uses
  %i.cy = add nsw i64 %i.cx, -1                   ; 6 uses
  store i64 %i.cy, ptr %i.cc, align 8
  %i.cz = load i64, ptr %i.bj, align 8, !range !43, !noundef !41
  %i.da = icmp samesign ult i64 %i.cy, %i.cz
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ult i64 %i.cx, 2305843009213693953
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noundef !41 ; 8 uses
  store i32 %i.dd, ptr %i.bi, align 4
  %i.de = zext i32 %i.dd to i64                   ; 4 uses
  %i.df = icmp ugt i64 %i.ce, %i.de
  br i1 %i.df, label %bb.ga, label %bb.gb

.body49:                                          ; preds = %.loopexit374, %.loopexit.split-lp375, %bb.fz, %bb.fy, %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit", %bb.w, %bb.k, %bb.l, %.body.i.i.i.i, %bb.s
  %.not531 = phi i1 [ false, %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit" ], [ false, %bb.w ], [ false, %bb.fz ], [ false, %.body.i.i.i.i ], [ false, %bb.s ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.fy ], [ true, %.loopexit374 ], [ true, %.loopexit.split-lp375 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit" ], [ %i.fm, %bb.w ], [ %i.adf, %bb.fz ], [ %i.fg, %.body.i.i.i.i ], [ %i.fg, %bb.s ], [ %i.ds, %bb.k ], [ %i.ds, %bb.l ], [ %i.adf, %bb.fy ], [ %lpad.loopexit376, %.loopexit374 ], [ %lpad.loopexit.split-lp377, %.loopexit.split-lp375 ] ; 4 uses
  %.val29 = load i64, ptr %i.bj, align 8          ; 2 uses
  %i.dg = icmp eq i64 %.val29, 0
  br i1 %i.dg, label %"_ZN4core3ptr269drop_in_place$LT$alloc..vec..Vec$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17ha5cad8c89b82ae74E.exit", label %.split

.split:                                           ; preds = %.body49
  %.val30 = load ptr, ptr %i.cb, align 8, !nonnull !41, !noundef !41
  %i.dh = shl nuw i64 %.val29, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 4) #67
  %.val33694 = load ptr, ptr %i.bk, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val34695 = load i64, ptr %i.di, align 8, !noundef !41
  call fastcc void @"_ZN4core3ptr318drop_in_place$LT$std..collections..hash..set..HashSet$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17h828c6fc779fcae7eE"(ptr %.val33694, i64 %.val34695) #75
  br i1 %.not531, label %bb.gy, label %.thread

.loopexit374:                                     ; preds = %bb.gh, %bb.gp, %bb.gq
  %lpad.loopexit376 = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.loopexit.split-lp375:                            ; preds = %bb.gb
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.g:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.e
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.ct, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.e ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.cv, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.e ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !85177
  %.not.i.not.i.i.i.i = icmp eq i64 %.sroa.3257.0.copyload, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0256.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.dm = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dl, %bb.h ] ; 2 uses
  %i.dn = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0256.0.copyload, %bb.h ]
  %.val911.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dm, align 16, !noalias !85178
  %i.do = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -64 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.do to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !85177
  %i.dr = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.co, %i.dr
  br i1 %or.cond.i.i, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #67, !noalias !85179
  br label %._crit_edge.thread

bb.k:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.co, %i.dt
  br i1 %or.cond6.i.i, label %.body49, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #67, !noalias !85180
  br label %.body49

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.14.0.i.i = phi ptr [ %i.dl, %bb.h ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.sroa.0256.0.copyload, %bb.h ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.dk, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.du = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.dv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = and i16 %i.du, %.lcssa.i.i.i.i.i.i.i
  %i.dy = sub nsw i64 0, %i.dw
  %i.dz = getelementptr inbounds [4 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.dy
  %i.ea = add nsw i64 %.sroa.3257.0.copyload, -1  ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !85181, !noundef !41
  %.sroa.0.0.i9.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.3257.0.copyload, i64 4) ; 2 uses
  %i.ed = shl i64 %.sroa.0.0.i9.i.i.i.i, 2        ; 3 uses
  %i.ee = icmp ugt i64 %.sroa.3257.0.copyload, 4611686018427387903
  %i.ef = icmp ugt i64 %i.ed, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ee, %i.ef
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !85182
  %i.eg = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ed, i64 noundef range(i64 1, 9) 4) #67, !noalias !85182 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc.i.i.i.i unwind label %bb.k, !noalias !85177

.noexc.i.i.i.i:                                   ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i32 %i.ec, ptr %i.eg, align 4, !noalias !85177
  store i64 %.sroa.0.0.i9.i.i.i.i, ptr %i.be, align 8, !noalias !85177
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  store ptr %i.eg, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !85177
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !85177
  call void @llvm.experimental.noalias.scope.decl(metadata !85183)
  call void @llvm.experimental.noalias.scope.decl(metadata !85184)
  %.not.i.not6.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.not6.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i"
  %i.ei = phi ptr [ %i.fd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ %i.eg, %bb.n ]
  %i.ej = phi i64 [ %i.ff, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ 1, %bb.n ] ; 5 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i, %bb.n ] ; 2 uses
  %.lcssa411.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.n ] ; 2 uses
  %i.ek = phi i16 [ %i.et, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ %i.dx, %bb.n ] ; 2 uses
  %.val57.i.i.i.i.i.i = phi i64 [ %i.ew, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ], [ %i.ea, %bb.n ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.el = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.em = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa411.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.el, align 16, !noalias !85185
  %i.en = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -64 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.en to i16 ; 2 uses
  %.not.i.i.i.i.i10.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa410.i.i.i.i.i.i = phi ptr [ %.lcssa411.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eq = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.er = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.es = zext nneg i16 %i.er to i64
  %i.et = and i16 %i.eq, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.eu = sub nsw i64 0, %i.es
  %i.ev = getelementptr inbounds [4 x i8], ptr %.lcssa410.i.i.i.i.i.i, i64 %i.eu
  %i.ew = add i64 %.val57.i.i.i.i.i.i, -1         ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !noalias !85186, !noundef !41
  %i.ez = icmp samesign ult i64 %i.ej, 2305843009213693952
  call void @llvm.assume(i1 %i.ez)
  %i.fa = load i64, ptr %i.be, align 8, !range !43, !alias.scope !85187, !noalias !85188, !noundef !41
  %i.fb = icmp eq i64 %i.ej, %i.fa
  br i1 %i.fb, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i", %bb.n
  %.sroa.9.0.copyload195 = phi i64 [ 1, %bb.n ], [ %i.ff, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i" ] ; 6 uses
  %i.fc = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.co, %i.fc
  br i1 %or.cond.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3b89e85a45da3cb0E.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #67, !noalias !85189
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h3b89e85a45da3cb0E.exit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.fd = phi ptr [ %.pre.i.i.i.i48, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.ei, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ej
  store i32 %i.ey, ptr %i.fe, align 4, !noalias !85190
  %i.ff = add nuw nsw i64 %i.ej, 1                ; 3 uses
  store i64 %i.ff, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !85187, !noalias !85188
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond16.i.i.i.i = or i1 %i.co, %i.fh
  br i1 %or.cond16.i.i.i.i, label %.body.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #67, !noalias !85191
  br label %.body.i.i.i.i

bb.r:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.ej, i64 noundef range(i64 1, 0) %.val57.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.p, !noalias !85188

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.r
  %.pre.i.i.i.i48 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !85187, !noalias !85188
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4b877c61535493b9E.exit.i.i.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.p
  %.val.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !85177 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fi, label %.body49, label %bb.s

bb.s:                                             ; preds = %.body.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !85177, !nonnull !41, !noundef !41
  %i.fj = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !85177
  br label %.body49

_ZN4core4iter6traits8iterator8Iterator7collect17h3b89e85a45da3cb0E.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.o
  %.sroa.0190.0.copyload191 = load i64, ptr %i.be, align 8, !noalias !85192 ; 6 uses
  %.sroa.6.0.copyload193 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !85192 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !85177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !85193
  %i.fk = icmp samesign ult i64 %.sroa.9.0.copyload195, 2
  br i1 %i.fk, label %.lr.ph, label %bb.t, !prof !85194

bb.t:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3b89e85a45da3cb0E.exit
  %i.fl = icmp samesign ult i64 %.sroa.9.0.copyload195, 21
  br i1 %i.fl, label %bb.v, label %bb.u, !prof !48

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h0f2328d52ab337a5E(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload193, i64 noundef %.sroa.9.0.copyload195, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %.lr.ph unwind label %bb.fy

bb.v:                                             ; preds = %bb.t
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdbc3af0093a54835E(ptr noalias noundef nonnull align 4 %.sroa.6.0.copyload193, i64 noundef %.sroa.9.0.copyload195, i64 noundef 1)
  br label %.lr.ph

bb.w:                                             ; preds = %bb.fc
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body49

"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit": ; preds = %bb.y, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.y ]
  invoke fastcc void @"_ZN4core3ptr514drop_in_place$LT$std..collections..hash..map..HashMap$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$C$alloc..sync..Arc$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17h4c797b39b6c3f719E"(ptr noalias noundef align 8 dereferenceable(32) %i.bh) #75
          to label %.body49 unwind label %bb.fx

bb.x:                                             ; preds = %.invoke
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit"

._crit_edge.thread:                               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  br label %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit67"

.lr.ph:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3b89e85a45da3cb0E.exit, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !85193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %i.fo = icmp samesign ult i64 %.sroa.9.0.copyload195, 2305843009213693952
  call void @llvm.assume(i1 %i.fo)
  %.idx700 = shl nuw nsw i64 %.sroa.9.0.copyload195, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload193, i64 %.idx700
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload193) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 10 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bb, i64 128 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ft = load i64, ptr %i.fs, align 8            ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !41 ; 6 uses
  %.sroa.12.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.18.208..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 136
  %.sroa.10.8..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.12.8..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bb, i64 136 ; 3 uses
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.7285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.9287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %.sroa.10288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %.sroa.12.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %.sroa.12.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 280
  %.sroa.12.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 104
  %.sroa.12.472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 400
  %.sroa.12.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 256
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.12.sroa.6.0..sroa.12.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.12.sroa.9.0..sroa.12.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.18.184..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 112
  %i.go = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.12.sroa.6.0..sroa.612.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.12.sroa.9.0..sroa.612.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.18.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 344
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  br label %bb.z

.loopexit:                                        ; preds = %bb.ab, %bb.ac, %bb.ah, %bb.aj, %bb.fw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.fs, %bb.ft, %bb.fi, %bb.dl, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i, %"_ZN4core3ptr214drop_in_place$LT$alloc..sync..Arc$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$17hc0ae55c33620a6c9E.exit.i", %bb.dd, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i180, %.body.i.i.i, %bb.ae, %bb.ap, %bb.aq, %bb.au, %bb.az, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i"
  %eh.lpad-body = phi { ptr, i32 } [ %.pn40.i, %bb.dl ], [ %i.aaq, %bb.fi ], [ %i.acv, %bb.fs ], [ %.pn.i.i, %bb.ae ], [ %lpad.phi373, %bb.aq ], [ %.pn.pn.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i" ], [ %.pn48.i, %bb.au ], [ %.pn42.pn.pn.i, %bb.az ], [ %eh.lpad-body.i.i.i, %bb.dd ], [ %lpad.phi373, %bb.ap ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i180 ], [ %.pn40.i, %"_ZN4core3ptr214drop_in_place$LT$alloc..sync..Arc$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$17hc0ae55c33620a6c9E.exit.i" ], [ %.pn40.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i ], [ %i.acv, %bb.ft ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gu = icmp eq i64 %.sroa.0190.0.copyload191, 0
  br i1 %i.gu, label %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit", label %bb.y

bb.y:                                             ; preds = %.body
  %i.gv = shl nuw i64 %.sroa.0190.0.copyload191, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload193, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !85195
  br label %"_ZN4core3ptr285drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$pubgrub..internal..arena..Id$LT$pubgrub..internal..incompatibility..Incompatibility$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17h4a0acaaaa71349dbE.exit"

bb.z:                                             ; preds = %.lr.ph, %"_ZN4core3ptr242drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17he7dc39a1ebbef530E.exit"
  %.sroa.5209.0538 = phi ptr [ %.sroa.6.0.copyload193, %.lr.ph ], [ %i.gw, %"_ZN4core3ptr242drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$$GT$$GT$17he7dc39a1ebbef530E.exit" ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.5209.0538, i64 4 ; 2 uses
  %i.gx = load i32, ptr %.sroa.5209.0538, align 4, !noalias !85196, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85197)
  call void @llvm.experimental.noalias.scope.decl(metadata !85198)
  call void @llvm.experimental.noalias.scope.decl(metadata !85199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.gy = zext i32 %i.gx to i64                   ; 6 uses
  %i.gz = icmp ugt i64 %i.ce, %i.gy
  br i1 %i.gz, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ha = getelementptr inbounds nuw [528 x i8], ptr %i.cg, i64 %i.gy ; 23 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85200)
  %i.hc = load i32, ptr %i.hb, align 8, !range !164, !alias.scope !85200, !noalias !85201, !noundef !41
  switch i32 %i.hc, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.aj
    i32 2, label %bb.ab
    i32 3, label %bb.bl
    i32 4, label %bb.ac
  ]

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 288
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 276
  %i.hf = load i32, ptr %i.he, align 4, !alias.scope !85200, !noalias !85201, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !85202
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hd)
end_hunk_6
begin_hunk_7_@"_ZN7pubgrub8internal4core15State$LT$DP$GT$32add_package_version_dependencies17h8dee0b1d73072e48E":bb.a
  %.sroa.651.0..sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 2, ptr %.sroa.651.0..sroa_idx.i.i57.i, align 8, !noalias !85972
  %.sroa.752.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i58.i, align 8, !noalias !85972
  store i64 0, ptr %i.c, align 8, !noalias !85972
  %.sroa.462.0..sroa_idx.i.i60.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @2346, ptr %.sroa.462.0..sroa_idx.i.i60.i, align 8, !noalias !85972
  %.sroa.563.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 35, ptr %.sroa.563.0..sroa_idx.i.i61.i, align 8, !noalias !85972
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.fq, align 8, !noalias !85972
  %.sroa.524.0..sroa_idx25.i.i62.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @255, ptr %.sroa.524.0..sroa_idx25.i.i62.i, align 8, !noalias !85972
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i63.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 115, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i63.i, align 8, !noalias !85972
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.fr, align 8, !noalias !85972
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 448, ptr %i.fs, align 4, !noalias !85972
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c)
          to label %bb.aj unwind label %.thread.i, !noalias !85916

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !85914
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.bh), !noalias !85916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !85914
  call void @llvm.experimental.noalias.scope.decl(metadata !85973)
  call void @llvm.experimental.noalias.scope.decl(metadata !85974)
  call void @llvm.experimental.noalias.scope.decl(metadata !85975)
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !85976, !noalias !85916 ; 2 uses
  %i.ft = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ft, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fu, align 8, !alias.scope !85976, !noalias !85916, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !85977
  br label %bb.ar

.loopexit.i:                                      ; preds = %.backedge.i.i, %bb.m
  %i.fv = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !85914 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 6
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp samesign ugt i64 %i.fv, 2
  br i1 %i.fx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.ao, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !85916
  %i.fy = load i32, ptr %i.o, align 4, !noalias !85914, !noundef !41
  invoke fastcc void @"_ZN7pubgrub8internal16partial_solution25PartialSolution$LT$DP$GT$12add_decision17h34f69630e26a7e12E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.ae, i32 noundef %i.fy, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ap unwind label %bb.f, !noalias !85913

bb.an:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85914
  store ptr %i.o, ptr %i.i, align 8, !noalias !85914
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN74_$LT$pubgrub..internal..arena..Id$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h384d1f36b0fdc24dE", ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !85914
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.p, ptr %i.fz, align 8, !noalias !85914
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN75_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..fmt..Display$GT$3fmt17hfcc4ccfcf30b74ddE", ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !85914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85978
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 3, ptr %i.ga, align 8, !noalias !85978
  %.sroa.431.0..sroa_idx.i.i77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @2346, ptr %.sroa.431.0..sroa_idx.i.i77.i, align 8, !noalias !85978
  %.sroa.532.0..sroa_idx.i.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 35, ptr %.sroa.532.0..sroa_idx.i.i78.i, align 8, !noalias !85978
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @2351, ptr %i.gb, align 8, !noalias !85978
  %.sroa.449.0..sroa_idx.i.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 2, ptr %.sroa.449.0..sroa_idx.i.i79.i, align 8, !noalias !85978
  %.sroa.550.0..sroa_idx.i.i80.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %.sroa.550.0..sroa_idx.i.i80.i, align 8, !noalias !85978
  %.sroa.651.0..sroa_idx.i.i81.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 2, ptr %.sroa.651.0..sroa_idx.i.i81.i, align 8, !noalias !85978
  %.sroa.752.0..sroa_idx.i.i82.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i82.i, align 8, !noalias !85978
  store i64 0, ptr %i.b, align 8, !noalias !85978
  %.sroa.462.0..sroa_idx.i.i84.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @2346, ptr %.sroa.462.0..sroa_idx.i.i84.i, align 8, !noalias !85978
  %.sroa.563.0..sroa_idx.i.i85.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 35, ptr %.sroa.563.0..sroa_idx.i.i85.i, align 8, !noalias !85978
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.gc, align 8, !noalias !85978
  %.sroa.524.0..sroa_idx25.i.i86.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @255, ptr %.sroa.524.0..sroa_idx25.i.i86.i, align 8, !noalias !85978
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 115, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i87.i, align 8, !noalias !85978
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.gd, align 8, !noalias !85978
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 453, ptr %i.ge, align 4, !noalias !85978
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.ao unwind label %.thread.i, !noalias !85916

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !85914
  br label %bb.am

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85914
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.bh), !noalias !85916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !85914
  br label %bb.ar

.body.thread.i:                                   ; preds = %bb.l, %.body.i.i.i, %.body.thread131.i, %.thread.i
  %.pn124.i = phi { ptr, i32 } [ %lpad.thr_comm129.i, %.body.thread131.i ], [ %lpad.thr_comm.i, %.thread.i ], [ %i.bc, %.body.i.i.i ], [ %i.bc, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85979)
  call void @llvm.experimental.noalias.scope.decl(metadata !85980)
  call void @llvm.experimental.noalias.scope.decl(metadata !85981)
  %.val.i.i.i90.i = load i64, ptr %i.p, align 8, !alias.scope !85982, !noalias !85916 ; 2 uses
  %i.gf = icmp eq i64 %.val.i.i.i90.i, 0
  br i1 %i.gf, label %.body.thread, label %bb.aq

bb.aq:                                            ; preds = %.body.thread.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i91.i = load ptr, ptr %i.gg, align 8, !alias.scope !85982, !noalias !85916, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i91.i, i64 noundef %.val.i.i.i90.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !85983
  br label %.body.thread

bb.ar:                                            ; preds = %bb.ap, %bb.al, %bb.ak, %.noexc
  %.sroa.4.0.i = phi i32 [ undef, %bb.ap ], [ undef, %.noexc ], [ %i.fj, %bb.ak ], [ %i.fj, %bb.al ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.ap ], [ 0, %.noexc ], [ 1, %bb.ak ], [ 1, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !85984)
  call void @llvm.experimental.noalias.scope.decl(metadata !85985)
  call void @llvm.experimental.noalias.scope.decl(metadata !85986)
  %.val.i.i.i = load i64, ptr %2, align 8, !alias.scope !85987 ; 2 uses
  %i.gh = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gh, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load ptr, ptr %i.gi, align 8, !alias.scope !85987, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !85987
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit": ; preds = %bb.ar, %bb.as
  %i.gj = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.gk = insertvalue { i32, i32 } %i.gj, i32 %.sroa.4.0.i, 1
  ret { i32, i32 } %i.gk

.body.thread:                                     ; preds = %bb.au, %bb.aq, %.body.thread.i, %bb.f, %.body.thread9
  %eh.lpad-body8 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread9 ], [ %lpad.thr_comm.split-lp, %bb.au ], [ %.pn124.i, %bb.aq ], [ %lpad.thr_comm.split-lp.i, %bb.f ], [ %.pn124.i, %.body.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !85988)
  call void @llvm.experimental.noalias.scope.decl(metadata !85989)
  call void @llvm.experimental.noalias.scope.decl(metadata !85990)
  %.val.i.i.i3 = load i64, ptr %2, align 8, !alias.scope !85991 ; 2 uses
  %i.gl = icmp eq i64 %.val.i.i.i3, 0
  br i1 %i.gl, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit5", label %bb.at

bb.at:                                            ; preds = %.body.thread
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i4 = load ptr, ptr %i.gm, align 8, !alias.scope !85991, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i4, i64 noundef %.val.i.i.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !85991
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit5"

bb.au:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr199drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17h7c26192db8851317E"(ptr noalias noundef align 8 dereferenceable(32) %3) #75
  br label %.body.thread

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit5": ; preds = %bb.at, %.body.thread
  resume { ptr, i32 } %eh.lpad-body8
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc { i32, i32 } @"_ZN7pubgrub8internal4core15State$LT$DP$GT$37add_incompatibility_from_dependencies17h3d8be05d46f9be31E"(ptr noalias noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [120 x i8], align 8               ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [120 x i8], align 8               ; 4 uses
  %i.g = alloca [528 x i8], align 8               ; 6 uses
  %i.h = alloca [296 x i8], align 8               ; 6 uses
  %.sroa.2.i.i = alloca [288 x i8], align 8       ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86075)
  %.sroa.02.0.copyload.i = load ptr, ptr %3, align 8, !alias.scope !86075, !noalias !86076, !nonnull !41, !noundef !41 ; 6 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !86075, !noalias !86076 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !86075, !noalias !86076 ; 3 uses
  %.val13.i.i.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload.i, align 16, !noalias !86077
  %i.k = icmp eq i64 %.sroa.43.0.copyload.i, 0    ; 2 uses
  br i1 %i.k, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = mul i64 %.sroa.43.0.copyload.i, 296      ; 2 uses
  %4 = add i64 %i.l, 296
  %5 = icmp ult i64 %4, -15
  tail call void @llvm.assume(i1 %5)
  %i.m = and i64 %i.l, -16                        ; 2 uses
  %6 = add i64 %i.m, 304                          ; 2 uses
  %i.n = add i64 %.sroa.43.0.copyload.i, 17
  %i.o = add i64 %i.n, %6                         ; 3 uses
  %7 = icmp uge i64 %i.o, %6
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ult i64 %i.o, 9223372036854775793
  tail call void @llvm.assume(i1 %8)
  %i.p = sub i64 -304, %i.m
  %i.q = getelementptr inbounds i8, ptr %.sroa.02.0.copyload.i, i64 %i.p
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.b ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !86078)
  call void @llvm.experimental.noalias.scope.decl(metadata !86079)
  call void @llvm.experimental.noalias.scope.decl(metadata !86080)
  %.val.i.i.i = load i64, ptr %2, align 8, !alias.scope !86081 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.c

bb.c:                                             ; preds = %.body
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !86081, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !86081
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

bb.d:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.o, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.q, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 16 ; 2 uses
  %i.v = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.02.0.copyload.i, i64 %.sroa.43.0.copyload.i
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !41 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 17468507645558288
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc i64 %i.aa to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !86082
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.426.0..sroa_idx, align 8, !noalias !86082
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.527.0..sroa_idx, align 8, !noalias !86082
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %.sroa.02.0.copyload.i, ptr %.sroa.628.0..sroa_idx, align 8, !noalias !86082
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.u, ptr %.sroa.729.0..sroa_idx, align 8, !noalias !86082
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.x, ptr %.sroa.830.0..sroa_idx, align 8, !noalias !86082
  %.sroa.931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 5 uses
  store <16 x i1> %i.v, ptr %.sroa.931.0..sroa_idx, align 8, !noalias !86082
  %.sroa.1133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 5 uses
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.1133.0..sroa_idx, align 8, !noalias !86082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86083)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i)
  %i.ad = icmp eq i64 %.sroa.55.0.copyload.i, 0
  br i1 %i.ad, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h4f8394a720b3491fE.exit.i.i.i.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ae = bitcast <16 x i1> %i.v to i16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.415.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i, i64 168
  %i.as = load <2 x i64>, ptr %i.ag, align 8
  %i.at = load i64, ptr %i.ah, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.lcssa927.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.promoted11.i.i.i.i.i, %bb.n ] ; 2 uses
  %.lcssa1024.i.i = phi ptr [ %.sroa.02.0.copyload.i, %.lr.ph.i.i ], [ %.promoted7.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.au = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.bf, %bb.n ] ; 2 uses
  %i.av = phi i64 [ %.sroa.55.0.copyload.i, %.lr.ph.i.i ], [ %i.bi, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !86084)
  call void @llvm.experimental.noalias.scope.decl(metadata !86085)
  %.not13.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha502399df663d8a9E.exit.i.i"

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ba, ptr %.sroa.729.0..sroa_idx, align 8, !alias.scope !86086, !noalias !86087
  store ptr %i.az, ptr %.sroa.628.0..sroa_idx, align 8, !alias.scope !86086, !noalias !86087
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha502399df663d8a9E.exit.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.lcssa927.i.i, %bb.e ] ; 2 uses
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.lcssa1024.i.i, %bb.e ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !86088
  %i.ay = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4736 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ay to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %"_ZN7pubgrub8internal4core15State$LT$DP$GT$37add_incompatibility_from_dependencies28_$u7b$$u7b$closure$u7d$$u7d$17h9f92bdbbef7560b2E.exit.i.i.i"
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bf, ptr %.sroa.931.0..sroa_idx, align 8, !alias.scope !86086, !noalias !86087
  store i64 %i.bi, ptr %.sroa.1133.0..sroa_idx, align 8, !alias.scope !86089, !noalias !86087
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %.body.thread.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %eh.lpad-body5.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.bv, %bb.k ]
  call fastcc void @"_ZN4core3ptr170drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$RP$$GT$$GT$17h7fece85f54955301E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i) #75, !noalias !86090
  br label %.body

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha502399df663d8a9E.exit.i.i": ; preds = %._crit_edge.i.i.i.i, %bb.e
  %.promoted11.i.i.i.i.i = phi ptr [ %i.ba, %._crit_edge.i.i.i.i ], [ %.lcssa927.i.i, %bb.e ] ; 2 uses
  %.promoted7.i.i.i.i.i = phi ptr [ %i.az, %._crit_edge.i.i.i.i ], [ %.lcssa1024.i.i, %bb.e ] ; 3 uses
  %.lcssa.i.i.i.i = phi i16 [ %.cast.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.au, %bb.e ] ; 3 uses
  %i.bc = add i16 %.lcssa.i.i.i.i, -1
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.lcssa.i.i.i.i          ; 6 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [296 x i8], ptr %.promoted7.i.i.i.i.i, i64 %i.bg ; 2 uses
  %i.bi = add i64 %i.av, -1                       ; 8 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -296
  %.sroa.0.0.copyload3.i.i = load i64, ptr %i.bj, align 8, !noalias !86091 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload3.i.i, -9223372036854775804
  br i1 %.not.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha502399df663d8a9E.exit.i.i"
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -288
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7.0..sroa_idx4.i.i, i64 288, i1 false), !noalias !86092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !86092
  store i64 %.sroa.0.0.copyload3.i.i, ptr %i.h, align 8, !noalias !86092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.2.i.i, i64 288, i1 false), !noalias !86092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !86093
  %i.bk = invoke fastcc i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17hf386305459079c8eE"(ptr noalias noundef align 8 dereferenceable(56) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(296) %i.h)
          to label %._crit_edge126 unwind label %.body.thread6.i.i.i.i

.body.thread6.i.i.i.i:                            ; preds = %bb.g, %._crit_edge126
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bf, ptr %.sroa.931.0..sroa_idx, align 8, !alias.scope !86086, !noalias !86087
  store i64 %i.bi, ptr %.sroa.1133.0..sroa_idx, align 8, !alias.scope !86089, !noalias !86087
  br label %.body.thread.i.i.i.i

._crit_edge126:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !86094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !86094
  call void @llvm.experimental.noalias.scope.decl(metadata !86095)
  call void @llvm.experimental.noalias.scope.decl(metadata !86096)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.h unwind label %.body.thread6.i.i.i.i, !noalias !86094

bb.h:                                             ; preds = %._crit_edge126
  store <2 x i64> %i.as, ptr %i.ai, align 8, !alias.scope !86095, !noalias !86097
  store i64 %i.at, ptr %i.aj, align 8, !alias.scope !86095, !noalias !86097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !86098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !alias.scope !86099, !noalias !86100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86098
  store i64 0, ptr %i.ak, align 8, !noalias !86098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86098
  call void @llvm.experimental.noalias.scope.decl(metadata !86101)
  call void @llvm.experimental.noalias.scope.decl(metadata !86102)
  %i.bl = load <2 x i64>, ptr %i.al, align 8, !alias.scope !86102, !noalias !86103
  %i.bm = load i64, ptr %i.am, align 8, !alias.scope !86102, !noalias !86103, !noundef !41
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %"_ZN7pubgrub8internal4core15State$LT$DP$GT$37add_incompatibility_from_dependencies28_$u7b$$u7b$closure$u7d$$u7d$17h9f92bdbbef7560b2E.exit.i.i.i" unwind label %.body.i.i.i.i.i.i, !noalias !86098

.body.i.i.i.i.i.i:                                ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.bf, ptr %.sroa.931.0..sroa_idx, align 8, !alias.scope !86086, !noalias !86087
  store i64 %i.bi, ptr %.sroa.1133.0..sroa_idx, align 8, !alias.scope !86089, !noalias !86087
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef align 8 dereferenceable(120) %i.b) #75, !noalias !86098
  call void @llvm.experimental.noalias.scope.decl(metadata !86104)
  call void @llvm.experimental.noalias.scope.decl(metadata !86105)
  call void @llvm.experimental.noalias.scope.decl(metadata !86106)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !86107, !noalias !86098 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.body.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !86107, !noalias !86098, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !86108
  br label %.body.thread.i.i.i.i

.body.thread.i.i.i.i:                             ; preds = %bb.i, %.body.i.i.i.i.i.i, %.body.thread6.i.i.i.i
  %eh.lpad-body5.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %.body.thread6.i.i.i.i ], [ %i.bn, %.body.i.i.i.i.i.i ], [ %i.bn, %bb.i ]
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.af), !noalias !86109
  br label %.body.i.i

end_hunk_7
