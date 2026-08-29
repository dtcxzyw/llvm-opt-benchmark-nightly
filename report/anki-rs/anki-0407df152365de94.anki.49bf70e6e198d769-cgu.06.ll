Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9d2f1206af5aa0d2E":bb.a
  %i.cd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = xor i64 %i.cd, 63
  %i.cf = mul nuw nsw i64 %i.ce, 9
  %i.cg = add nuw nsw i64 %i.cf, 73
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = add i64 %.sroa.02.0.i.i.i.i.i, %.sroa.02.0.i
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  %i.ck = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.e
  br i1 %i.cl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h67627e5ab4cc30c2E.exit", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h67627e5ab4cc30c2E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i", %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.cj, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h13b351622e81e484E.exit.i" ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9ec9b82ebff4e7b5E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !noalias !1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.b, align 1, !alias.scope !1358, !noalias !1363
  %i.c = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.c, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h24266d07d4f1a49aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.promoted20.i.i = load i64, ptr %i.a, align 8, !alias.scope !1355, !noalias !1363
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1358, !noalias !1363, !nonnull !3, !align !79, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1358, !noalias !1363, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1365, !noalias !1368, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = load i8, ptr %i.j, align 8, !alias.scope !1355, !noalias !1363 ; 2 uses
  %i.l = zext nneg i8 %i.k to i64                 ; 4 uses
  %i.m = icmp ult i8 %i.k, 5
  %i.n = getelementptr i8, ptr %i.i, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.q = load i8, ptr %i.p, align 8, !range !940, !alias.scope !1355, !noalias !1363
  %i.r = trunc nuw i8 %i.q to i1
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !1355, !noalias !1363 ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.f, align 8, !alias.scope !1365, !noalias !1368
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i", %.lr.ph.i.i
  %i.s = phi i64 [ %.promoted24.i.i, %.lr.ph.i.i ], [ %i.ap, %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i" ] ; 3 uses
  %.lcssa132223.i.i = phi i64 [ %.promoted20.i.i, %.lr.ph.i.i ], [ %.lcssa1321.i.i, %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i" ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.t = icmp ult i64 %i.h, %i.s
  %brmerge.i.i = or i1 %.not.i.i.i.i.i, %i.t
  br i1 %brmerge.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i", label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.m)
  %.pre.i.i.i.i.i = load i8, ptr %i.o, align 1, !alias.scope !1365, !noalias !1368 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.split.i.i.i.i.i
  %i.u = phi i64 [ %i.s, %.lr.ph.split.i.i.i.i.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.v = sub nuw i64 %i.h, %i.u                   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.u ; 2 uses
  %i.x = icmp ult i64 %i.v, 16
  br i1 %i.x, label %.preheader.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.v), !noalias !1373
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.e ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.e ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !1374, !noalias !1373, !noundef !3
  %i.ad = icmp eq i8 %i.ac, %.pre.i.i.i.i.i
  br i1 %i.ad, label %._crit_edge.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.v
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.aa, %._crit_edge.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.af = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i"

bb.f:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i
  %i.ah = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.ai = add i64 %i.u, 1
  %i.aj = add i64 %i.ai, %i.ah                    ; 8 uses
  %.not13.i.i.i.i.i = icmp ult i64 %i.aj, %i.l
  %.not14.i.i.i.i.i = icmp ugt i64 %i.aj, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not13.i.i.i.i.i, %.not14.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ak = icmp ult i64 %i.h, %i.aj
  br i1 %i.ak, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i", label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.al = sub nuw i64 %i.aj, %i.l                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.al
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %i.i, i64 %i.l), !noalias !1377
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.an, label %select.unfold.i.i, label %bb.g

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i": ; preds = %bb.g, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i, %bb.b
  %i.ao = phi i64 [ %i.s, %bb.b ], [ %i.h, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i.i.i.i ], [ %i.aj, %bb.g ]
  store i8 1, ptr %i.b, align 1, !alias.scope !1378, !noalias !1363
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa132223.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h24266d07d4f1a49aE.exit"

select.unfold.i.i:                                ; preds = %bb.h, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i"
  %i.ap = phi i64 [ %i.ao, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i" ], [ %i.aj, %bb.h ]
  %.lcssa1321.i.i = phi i64 [ %.lcssa132223.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i" ], [ %i.aj, %bb.h ]
  %i.aq = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i" ], [ false, %bb.h ]
  %.pn27.i.i = phi i64 [ %.pre2.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i" ], [ %i.al, %bb.h ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn27.i.i, %.lcssa132223.i.i ; 6 uses
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa132223.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  switch i64 %.sroa.4.1.i.i.i.i, label %bb.j [
    i64 0, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i"
    i64 1, label %bb.i
  ]

.loopexit63.split.loop.exit66.i.i.i.i.i:          ; preds = %.lr.ph
  %.mux.le.i.i.i.i.i = select i1 %i.bd, i32 257, i32 513
  br label %"_ZN4anki5cloze8tokenize10open_cloze28_$u7b$$u7b$closure$u7d$$u7d$17h59c46773d2141bcfE.exit.i.i.i"

bb.i:                                             ; preds = %select.unfold.i.i
  %i.ar = load i8, ptr %.sroa.0.1.i.i.i.i, align 1, !alias.scope !1384, !noalias !1389, !noundef !3
  switch i8 %i.ar, label %.lr.ph.i.i.i6.i.i.preheader [
    i8 43, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i"
    i8 45, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i"
  ]

.lr.ph.i.i.i6.i.i.preheader:                      ; preds = %bb.m, %bb.k, %bb.i
  %.sroa.0.171.i.i.i.i.i.ph = phi ptr [ %i.as, %bb.k ], [ %.sroa.0.1.i.i.i.i, %bb.m ], [ %.sroa.0.1.i.i.i.i, %bb.i ]
  %.sroa.16.170.i.i.i.i.i.ph = phi i64 [ %i.at, %bb.k ], [ %.sroa.4.1.i.i.i.i, %bb.m ], [ 1, %bb.i ]
  br label %.lr.ph.i.i.i6.i.i

bb.j:                                             ; preds = %select.unfold.i.i
  %.pr.i.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i, align 1, !alias.scope !1384, !noalias !1389
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i, 43
  br i1 %cond.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %i.at = add i64 %.sroa.4.1.i.i.i.i, -1          ; 2 uses
  %i.au = icmp ult i64 %.sroa.4.1.i.i.i.i, 6
  br i1 %i.au, label %.lr.ph.i.i.i6.i.i.preheader, label %.preheader61.i.i.i.i.i

.preheader61.i.i.i.i.i:                           ; preds = %bb.m, %bb.k
  %.sroa.16.0.ph.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i, %bb.m ], [ %i.at, %bb.k ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.m ], [ %i.as, %bb.k ]
  %.not55.i.i.i.i.i42 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i.i, 0
  br i1 %.not55.i.i.i.i.i42, label %.loopexit.i.i.i.i.i, label %.lr.ph

bb.l:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i7.i.i45, i64 1
  %i.aw = add i64 %.sroa.16.0.i.i.i.i.i44, -1     ; 2 uses
  %.not55.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not55.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  %i.ax = icmp ult i64 %.sroa.4.1.i.i.i.i, 5
  br i1 %i.ax, label %.lr.ph.i.i.i6.i.i.preheader, label %.preheader61.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.l, %bb.o, %.preheader61.i.i.i.i.i
  %.sroa.040.2.i.i.i.i.i = phi i16 [ %i.bo, %bb.o ], [ 0, %.preheader61.i.i.i.i.i ], [ %i.bf, %bb.l ]
  %i.ay = zext i16 %.sroa.040.2.i.i.i.i.i to i32
  %i.az = shl nuw i32 %i.ay, 16
  br label %"_ZN4anki5cloze8tokenize10open_cloze28_$u7b$$u7b$closure$u7d$$u7d$17h59c46773d2141bcfE.exit.i.i.i"

.lr.ph:                                           ; preds = %.preheader61.i.i.i.i.i, %bb.l
  %.sroa.0.0.i.i.i7.i.i45 = phi ptr [ %i.av, %bb.l ], [ %.sroa.0.0.ph.i.i.i.i.i, %.preheader61.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i44 = phi i64 [ %i.aw, %bb.l ], [ %.sroa.16.0.ph.i.i.i.i.i, %.preheader61.i.i.i.i.i ]
  %.sroa.040.0.i.i.i.i.i43 = phi i16 [ %i.bf, %bb.l ], [ 0, %.preheader61.i.i.i.i.i ]
  %2 = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.040.0.i.i.i.i.i43, i16 10) ; 2 uses
  %3 = extractvalue { i16, i1 } %2, 1
  %i.ba = load i8, ptr %.sroa.0.0.i.i.i7.i.i45, align 1, !alias.scope !1384, !noalias !1389, !noundef !3
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 9                   ; 2 uses
  %brmerge.i.i.i.i.i = or i1 %3, %i.bd
  br i1 %brmerge.i.i.i.i.i, label %.loopexit63.split.loop.exit66.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %4 = extractvalue { i16, i1 } %2, 0             ; 2 uses
  %i.be = trunc nuw nsw i32 %i.bc to i16
  %i.bf = add i16 %4, %i.be                       ; 3 uses
  %.not56.i.i.i.i.i = icmp ult i16 %i.bf, %4
  br i1 %.not56.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i", label %bb.l

.lr.ph.i.i.i6.i.i:                                ; preds = %.lr.ph.i.i.i6.i.i.preheader, %bb.o
  %.sroa.0.171.i.i.i.i.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.0.171.i.i.i.i.i.ph, %.lr.ph.i.i.i6.i.i.preheader ] ; 2 uses
  %.sroa.16.170.i.i.i.i.i = phi i64 [ %i.bl, %bb.o ], [ %.sroa.16.170.i.i.i.i.i.ph, %.lr.ph.i.i.i6.i.i.preheader ]
  %.sroa.040.169.i.i.i.i.i = phi i16 [ %i.bo, %bb.o ], [ 0, %.lr.ph.i.i.i6.i.i.preheader ]
  %i.bg = load i8, ptr %.sroa.0.171.i.i.i.i.i, align 1, !alias.scope !1384, !noalias !1389, !noundef !3
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.o, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i"

bb.o:                                             ; preds = %.lr.ph.i.i.i6.i.i
  %i.bk = mul i16 %.sroa.040.169.i.i.i.i.i, 10
  %i.bl = add nsw i64 %.sroa.16.170.i.i.i.i.i, -1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.171.i.i.i.i.i, i64 1
  %i.bn = trunc nuw nsw i32 %i.bi to i16
  %i.bo = add i16 %i.bk, %i.bn                    ; 2 uses
  %.not57.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not57.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i6.i.i

"_ZN4anki5cloze8tokenize10open_cloze28_$u7b$$u7b$closure$u7d$$u7d$17h59c46773d2141bcfE.exit.i.i.i": ; preds = %.loopexit.i.i.i.i.i, %.loopexit63.split.loop.exit66.i.i.i.i.i
  %.sroa.8.0.insert.insert.i.i.i.i.i = phi i32 [ %.mux.le.i.i.i.i.i, %.loopexit63.split.loop.exit66.i.i.i.i.i ], [ %i.az, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.bp = trunc i32 %.sroa.8.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.bp, label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN4anki5cloze8tokenize10open_cloze28_$u7b$$u7b$closure$u7d$$u7d$17h59c46773d2141bcfE.exit.i.i.i"
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %.sroa.8.0.insert.insert.i.i.i.i.i, 16
  %.sroa.5.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i.i to i16
  %i.bq = tail call noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hfed0971072b7e851E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i16 noundef %.sroa.5.0.extract.trunc.i.i.i.i), !noalias !1390 ; 0 uses
  br label %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i"

"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i": ; preds = %bb.n, %.lr.ph.i.i.i6.i.i, %bb.p, %"_ZN4anki5cloze8tokenize10open_cloze28_$u7b$$u7b$closure$u7d$$u7d$17h59c46773d2141bcfE.exit.i.i.i", %bb.i, %bb.i, %select.unfold.i.i
  br i1 %i.aq, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h24266d07d4f1a49aE.exit", label %bb.b

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h24266d07d4f1a49aE.exit": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit.i.i.i.i", %"_ZN4core4iter8adapters10filter_map15filter_map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9cee9b6094cbd893E.exit.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1350
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h9f7be765d702bc8fE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 14 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !noalias !1398
  %i.b = invoke noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h193b25ba455324e2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a)
          to label %.noexc.i.i.i.i unwind label %bb.b, !noalias !1399

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.d = invoke noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h3423defdd646a923E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.b, !noalias !1399

bb.b:                                             ; preds = %.noexc.i.i.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.42.0.copyload, ptr %.sroa.01.0.copyload, align 8, !noalias !1399
  invoke fastcc void @"_ZN4core3ptr231drop_in_place$LT$core..iter..adapters..zip..Zip$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$C$alloc..vec..into_iter..IntoIter$LT$f32$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$f32$GT$$GT$$GT$17ha32bc5440981433fE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #46
          to label %common.resume.i.i.i.i unwind label %bb.k, !noalias !1399

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !1404, !noalias !1409
  %.pre1.i.i = load i64, ptr %i.g, align 8, !alias.scope !1411, !noalias !1409
  %.val.i.i.i.i.i.pre.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1411, !noalias !1409
  br label %bb.h

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.c
  %.val11.i.i.i.i = phi i64 [ %.sroa.42.0.copyload, %bb.c ], [ %i.at, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.val11.i.i.i.i, ptr %.sroa.01.0.copyload, align 8, !noalias !1399
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26c7b2672dc6a36aE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17h01d1e5ffd31ae9abE.exit.i.i.i.i.i.i" unwind label %bb.d, !noalias !1399

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i.i.i.i.i unwind label %bb.e, !noalias !1399

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17h01d1e5ffd31ae9abE.exit.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hcd29bd7c38242543E.exit" unwind label %bb.f, !noalias !1399

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !1399
  unreachable

bb.f:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17h01d1e5ffd31ae9abE.exit.i.i.i.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.k, %bb.d ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume.i.i.i.i unwind label %bb.g, !noalias !1399

bb.g:                                             ; preds = %.body.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !1399
  unreachable

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i.i, %bb.b
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.h:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.q = phi i64 [ %.sroa.42.0.copyload, %.lr.ph.i.i.i.i ], [ %i.at, %bb.j ] ; 2 uses
  %i.r = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.0.020.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.s = add nuw i64 %.sroa.0.020.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.t = add i64 %.sroa.0.020.i.i.i.i, %.pre.i.i  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.u = add i64 %i.t, %.pre1.i.i                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.pre.i.i, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !noalias !1419, !noundef !3 ; 2 uses
  %i.x = trunc i64 %i.r to i32
  %i.y = load i32, ptr %.sroa.5.0.copyload, align 4, !noalias !1420, !noundef !3
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1404, !noalias !1409, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.t
  %i.ac = load float, ptr %i.ab, align 4, !noalias !1430, !noundef !3
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1411, !noalias !1409, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i.i.i, i64 %i.u
  %i.ae = load float, ptr %i.ad, align 4, !noalias !1419, !noundef !3
  %i.af = uitofp i64 %i.w to float
  %i.ag = uitofp i32 %i.z to float
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = fdiv <2 x float> splat (float 1.000000e+00), %i.ai ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = call float @llvm.pow.f32(float %i.ak, float 2.150000e+00)
  %i.am = extractelement <2 x float> %i.aj, i64 1
  %i.an = call float @llvm.powi.f32.i32(float %i.am, i32 3)
  %i.ao = fmul float %i.al, %i.an
  %i.ap = fmul float %i.ao, %i.ac
  %i.aq = fmul float %i.ap, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi float [ %i.aq, %bb.i ], [ 1.000000e+00, %bb.h ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.53.0.copyload, i64 %i.q ; 2 uses
  store i32 %i.z, ptr %i.ar, align 4, !noalias !1431
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store float %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.as, align 4, !noalias !1431
  %i.at = add i64 %i.q, 1                         ; 2 uses
  %i.au = add i64 %i.r, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.s, %.sroa.0.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.h

bb.k:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48, !noalias !1399
  unreachable

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hcd29bd7c38242543E.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$usize$GT$$GT$17h01d1e5ffd31ae9abE.exit.i.i.i.i.i.i"
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1391
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha0b34d3c0e128ce2E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hcc53989cbafe1036E":bb.a
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !195, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.c, ptr %i.f, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.sroa.014.0.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.014.0.lcssa, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.011.017 = phi i64 [ %i.i, %.lr.ph ], [ %i.p, %bb.e ]
  %.sroa.014.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.014.016, ptr %i.a, align 8
  store i64 %.sroa.011.017, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  %i.n = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hbf35bdcfecf1d48bE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h59543b439a6b5e55E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  %i.b = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.c = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.021.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.g, %bb.g ]
  store ptr %.sroa.021.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.024 = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph ], [ %i.g, %bb.g ]
  %.sroa.018.023 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.021.024, ptr %i.a, align 8
  store i64 %.sroa.018.023, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  %i.f = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h2d2932e4c79f91afE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17he32c83eb55d8cc7aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  %i.b = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.c = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.sroa.021.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %i.g, %bb.g ]
  store ptr %.sroa.021.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.024 = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph ], [ %i.g, %bb.g ]
  %.sroa.018.023 = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.021.024, ptr %i.a, align 8
  store i64 %.sroa.018.023, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  %i.f = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hbf35bdcfecf1d48bE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17he497318bfc547203E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.f, 0           ; 5 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !195, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !34, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit", !prof !35

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #47
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit": ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.o = icmp ule i64 %4, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.r)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %.sroa.01.09 = lshr i64 %3, 1                   ; 2 uses
  %.not10 = icmp eq i64 %.sroa.01.09, 0
  %.pre12 = load i64, ptr %i.q, align 8           ; 2 uses
  br i1 %.not10, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @210, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #47
  unreachable

bb.h:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit"
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #46
          to label %bb.l unwind label %bb.k

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.t = phi i64 [ %.pre12, %.preheader ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %.not8 = icmp eq i64 %4, %i.t
  br i1 %.not8, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.v = phi i64 [ %i.ab, %.lr.ph ], [ %.pre12, %.preheader ] ; 3 uses
  %.sroa.01.011 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.09, %.preheader ]
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.x = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.w, i64 %i.v, i1 false)
  %i.z = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = shl nuw i64 %i.z, 1                     ; 3 uses
  store i64 %i.ab, ptr %i.q, align 8
  %.sroa.01.0 = lshr i64 %.sroa.01.011, 1         ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.j:                                             ; preds = %._crit_edge
  %i.ac = sub i64 %4, %i.t
  %i.ad = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.ac, i1 false)
  store i64 %4, ptr %i.q, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5prost7message7Message13encode_to_vec17h67be4719f5b90f72E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3902, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3902, !noundef !3 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.o, %.preheader.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.04.0.i.i.i.i
  %i.l = tail call fastcc noundef range(i64 0, 85) i64 @"_ZN74_$LT$anki_proto..stats..RevlogEntry$u20$as$u20$prost..message..Message$GT$11encoded_len17hfd99982f0f4e7eedE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k), !alias.scope !3905, !noalias !3902
  %i.m = add i64 %.sroa.02.0.i.i.i.i, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i.i.i.i, 1       ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i, label %.preheader.i.i

_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i: ; preds = %.preheader.i.i, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %.preheader.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3902, !nonnull !3, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3902, !noundef !3 ; 4 uses
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZN5prost8encoding7message20encoded_len_repeated17h82c5a1382a7edff4E.exit.i, label %.preheader.i1.i

.preheader.i1.i:                                  ; preds = %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i"
  %.sroa.04.0.i.i.i2.i = phi i64 [ %i.bd, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i" ], [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i ] ; 2 uses
  %.sroa.02.0.i.i.i3.i = phi i64 [ %i.bc, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i" ], [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.i2.i ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3912, !noalias !3902, !noundef !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i1.i
  %i.y = or i64 %i.w, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ad, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i1.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.b ], [ 0, %.preheader.i1.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !3912, !noalias !3902, !noundef !3 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = or i64 %i.ag, 1
  %i.aj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add nuw nsw i64 %i.an, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.d ], [ 0, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3912, !noalias !3902, !noundef !3 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = or i64 %i.aq, 1
  %i.at = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = xor i64 %i.at, 63
  %i.av = mul nuw nsw i64 %i.au, 9
  %i.aw = add nuw nsw i64 %i.av, 73
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = add nuw nsw i64 %i.ax, 1
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.f ], [ 0, %bb.e ]
  %i.az = add i64 %.sroa.02.0.i.i.i3.i, 1
  %i.ba = add i64 %i.az, %.sroa.0.0.i.i.i.i.i.i.i
  %i.bb = add i64 %i.ba, %.sroa.01.0.i.i.i.i.i.i.i
  %i.bc = add i64 %i.bb, %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %i.bd = add nuw i64 %.sroa.04.0.i.i.i2.i, 1     ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.t
  br i1 %i.be, label %_ZN5prost8encoding7message20encoded_len_repeated17h82c5a1382a7edff4E.exit.i, label %.preheader.i1.i

_ZN5prost8encoding7message20encoded_len_repeated17h82c5a1382a7edff4E.exit.i: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i", %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i
  %.sroa.0.0.i.i.i4.i = phi i64 [ 0, %_ZN5prost8encoding7message20encoded_len_repeated17h5abd230bcfd98343E.exit.i ], [ %i.bc, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb17552f50e15a90aE.exit.i.i.i.i" ]
end_hunk_1
begin_hunk_2_@_ZN4anki9scheduler8timespan18answer_button_time17h68755da3c17aa570E

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9anki_i18n13I18n$LT$P$GT$19translate_via_index17hc91edd38bd5cad44E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d17b57f01c33a4fE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51bad991a3738bbfE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13fluent_bundle4args10FluentArgs3set17h2d284cc147f01d42E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki4tags8reparent15reparented_name17h0428b0fc5ee824c9E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 1 captures(address, read_provenance), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN7unicase16UniCase$LT$S$GT$3new17hdbc055ce15bb1c54E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17hd648b241650929ecE"(i16 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki5decks4name14NativeDeckName10human_name17h1d98a1861f8d326eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_ZN4anki8template14field_is_empty17hdda624a6e045fb89E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std4path4Path9extension17h14b5a7bd556c0375E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h39b0b995c3c4b808E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9itertools9Itertools4join17h761fbface4ead57fE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h29872b8389ba5952E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN65_$LT$anki..notetype..NotetypeId$u20$as$u20$core..fmt..Display$GT$3fmt17hf25470e613af1ac3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h5674571fa0614db5E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9itertools9Itertools4join17h508e5b0ad38c01aeE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9itertools9Itertools4join17h92c9b7b8c83eabc0E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9itertools9Itertools4join17h2c01eeb02aa1fcd7E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h85e89a6f23c95618E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki7backend7dbproxy12row_to_proto17hb59facf2e6f3223fE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki7storage10deckconfig15row_to_deckconf17h7a2286d3d79cbaa6E(ptr dead_on_unwind noalias noundef writable sret([384 x i8]) align 8 captures(address) dereferenceable(384), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN8rusqlite9functions7Context3get17h29728e6fa0bd26acE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN14pulldown_cmark5parse6Parser3new17h8bf4ba727f1df209E(ptr dead_on_unwind noalias noundef writable sret([576 x i8]) align 8 captures(address) dereferenceable(576), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14pulldown_cmark4html9push_html17h7b41370031178efeE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(576)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h741f1f04a5da9f38E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h17fae2534f42163bE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN4anki8notetype12schemachange42_$LT$impl$u20$anki..notetype..Notetype$GT$29template_fronts_are_identical17hfc31ec0831a281caE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(24) ptr @_ZN4anki5notes4Note10fields_mut17hbeb39a6941fdff3cE(ptr noalias noundef align 8 dereferenceable(136)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #36

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki8notetype9templates12CardTemplate15parsed_question17h68ccc8431b4f66adE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki8notetype9templates12CardTemplate13parsed_answer17h16cf06d4b9ad8586E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki8template14ParsedTemplate12requirements17h782706f896d713a0E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8169c7685c9b0b8aE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6ef85fc9c6c6daaeE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h54c9d53d46b9e94eE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN4core5slice4sort8unstable7ipnsort17ha5a18176bcafbc7cE(ptr noalias noundef nonnull align 4, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #39

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hccaa1e76bb188804E(ptr noalias noundef nonnull align 4, i64 noundef, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki8notetype9templates12CardTemplate34parsed_question_format_for_browser17h8671004d0378e249E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki8notetype9templates12CardTemplate32parsed_answer_format_for_browser17hbd3464982a5810caE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hedbe1d2ec9034123E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki9timestamp13TimestampSecs14local_datetime17h6e6c1d1e0e4249e8E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4anki9scheduler4fsrs11rescheduler11Rescheduler9due_today17h1619a29616d2e78aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4anki9scheduler4fsrs11rescheduler11Rescheduler14reviewed_today17h3cc106f70971ee8fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h6eb7892a13ba4de1E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki9scheduler4fsrs12memory_state26fsrs_item_for_memory_state17hd719ed8ae9c7e057E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(84), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, float noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4anki9scheduler6states13load_balancer19interval_to_weekday17hfc8c3e90920b0a4aE(i32 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #40

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h52e672bf116813dcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #41

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki9scheduler6states13load_balancer27parse_easy_days_percentages17h4e232077cd3b8622E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 4 captures(address) dereferenceable(56), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4anki9scheduler7service6states8filtered155_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..filtered..FilteredState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Filtered$GT$4from17hfbfdd7b7bc9ba90eE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 4 captures(address) dereferenceable(56), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h8f743d744b88858dE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4axum7routing14method_routing25MethodRouter$LT$S$C$E$GT$10with_state17h7f0aab3bed8b3c2fE"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(280), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4axum7routing14method_routing25MethodRouter$LT$S$C$E$GT$10with_state17hfdd7d2334d715c86E"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(280)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4axum7routing17Endpoint$LT$S$GT$5layer17h3144d4ce281a45c4E"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(280), i64 noundef range(i64 0, 5), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4axum7routing17Endpoint$LT$S$GT$5layer17h0fb18b640f73104dE"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(280), i8 noundef range(i8 0, 7)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4axum7routing17Endpoint$LT$S$GT$5layer17h75a4d5b0c665ac2eE"(ptr dead_on_unwind noalias noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(280), i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #41

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @"_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17hdfc1162ac0fc39d4E"(ptr noalias noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #41

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN44_$LT$T$u20$as$u20$alloc..borrow..ToOwned$GT$8to_owned17h0aa244dfffa23b71E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki4tags8complete18component_to_regex17h0ef1ccd1a4f1dde6E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN12sharded_slab4page4slot17Slot$LT$T$C$C$GT$3new17h733c35d98b087f59E"(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki6search6writer10write_node17h30c7bf3b7a7a23aeE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki13import_export7package5media14SafeMediaEntry11from_legacy17h8d1af1b6d5773d0bE(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4anki5decks4name30normalized_deck_name_component17h48c7273be4f2ba6cE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN7unicase7unicode3map6lookup17h280042bd9517aa36E(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4anki7storage4deck11row_to_deck17he03b6b64bbbb6491E(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha18759f9a65624d8E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc5984606cdb9d9d9E"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he9e8a5c66a631d25E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd60b0cfa620e8588E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h61151fa8c424272bE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0de0a0847a4449ccE"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebae5d0f6db4a15E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h87e95c69a820b055E"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h47a87fdddbcc7226E"(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bae05e07c46b566E"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07416544ff6a7beaE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52d6f739fdf6f61eE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b5f4a6a8e13b6c4E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h307ee000e27dd1ceE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30717af22cf8fc77E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d79b8bb1ea45690E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf761041fef57d0bdE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443c0f2199d408cdE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0019960a2724506cE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd14bfae6db337d46E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26c7b2672dc6a36aE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a4f79de5dd54db9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf3bbd6daa9a14133E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52173f9f87d66349E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1eb16dfb06b24addE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h239baa4c9430264bE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767337468a3be371E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h56547a7e2f89c8f7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4943e6b0bad630eE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10315d7f98fcb10cE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea1ebd50d2d6bf48E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229188192f390fb0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h13ce5327ce154551E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4692947f239ce6d7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdfd2362e46b6bdeE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9e054874d0494e1E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ce72a040883476E"(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d2e7c44437f3af8E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e9ad3c1df9ff571E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8efab1a9831d07d4E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44b61e89a5273519E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bdba440c13104f5E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9561472e4abe2626E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7cc542aeae5dd28E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h779a915c887d2b09E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

end_hunk_2
