Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm:bb.a
  %.1.i.i67 = phi i64 [ %i.fu, %._crit_edge.i.i72 ], [ %i.fh, %bb.z ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fi
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !65
  %i.fx = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw)
  %i.fy = add nuw nsw i64 %i.fx, %.1.i.i67
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge20.i.i65, %bb.z
  %.2.i.i68 = phi i64 [ %i.fh, %bb.z ], [ %i.fy, %._crit_edge20.i.i65 ] ; 2 uses
  %i.fz = and i64 %i.fb, 63                       ; 2 uses
  %.not.i.i69 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i69, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %notmask.i.i70 = shl nsw i64 -1, %i.fz
  %i.ga = xor i64 %notmask.i.i70, -1
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fj
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !65
  %i.gd = and i64 %i.gc, %i.ga
  %i.ge = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.gd)
  %i.gf = add nuw nsw i64 %i.ge, %.2.i.i68
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit: ; preds = %bb.ab, %bb.ac
  %.3.i.i71 = phi i64 [ %i.gf, %bb.ac ], [ %.2.i.i68, %bb.ab ]
  %i.gg = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator31SparseLeafIndexFromHasChildRankEmm(ptr noundef nonnull readonly align 8 dereferenceable(281) %0, i64 noundef %i.ef, i64 noundef %.3.i.i71)
  br label %.thread.sink.split

bb.ad:                                            ; preds = %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !81
  %i.gj = add nuw i64 %i.ef, 1                    ; 3 uses
  %i.gk = lshr i64 %i.gj, 8                       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 408
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !69
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gk
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !70
  %i.gp = zext i32 %i.go to i64                   ; 4 uses
  %i.gq = shl nuw nsw i64 %i.gk, 2                ; 4 uses
  %i.gr = lshr i64 %i.gj, 6                       ; 2 uses
  %i.gs = sub nsw i64 %i.gr, %i.gq
  switch i64 %i.gs, label %bb.af [
    i64 3, label %bb.ae
    i64 2, label %._crit_edge.i.i82
    i64 1, label %._crit_edge20.i.i75
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !65
  %i.gw = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gv)
  %i.gx = add nuw nsw i64 %i.gw, %i.gp
  br label %._crit_edge.i.i82

._crit_edge.i.i82:                                ; preds = %bb.ad, %bb.ae
  %.0.i.i84 = phi i64 [ %i.gx, %bb.ae ], [ %i.gp, %bb.ad ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.gq
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !65
  %i.hb = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ha)
  %i.hc = add nuw nsw i64 %i.hb, %.0.i.i84
  br label %._crit_edge20.i.i75

._crit_edge20.i.i75:                              ; preds = %bb.ad, %._crit_edge.i.i82
  %.1.i.i77 = phi i64 [ %i.hc, %._crit_edge.i.i82 ], [ %i.gp, %bb.ad ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.gq
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !65
  %i.hf = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.he)
  %i.hg = add nuw nsw i64 %i.hf, %.1.i.i77
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge20.i.i75, %bb.ad
  %.2.i.i78 = phi i64 [ %i.gp, %bb.ad ], [ %i.hg, %._crit_edge20.i.i75 ] ; 2 uses
  %i.hh = and i64 %i.gj, 63                       ; 2 uses
  %.not.i.i79 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i79, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %notmask.i.i80 = shl nsw i64 -1, %i.hh
  %i.hi = xor i64 %notmask.i.i80, -1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.gr
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !65
  %i.hl = and i64 %i.hk, %i.hi
  %i.hm = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.hl)
  %i.hn = add nuw nsw i64 %i.hm, %.2.i.i78
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3.i.i81 = phi i64 [ %i.hn, %bb.ag ], [ %.2.i.i78, %bb.af ]
  %i.ho = add i64 %i.gi, -1
  %i.hp = add i64 %i.ho, %.3.i.i81
  br label %.backedge

.backedge:                                        ; preds = %bb.ah, %bb.t
  %.037.be = phi i1 [ %i.dq, %bb.t ], [ false, %bb.ah ]
  %.033.be = phi i64 [ %.134, %bb.t ], [ %i.hp, %bb.ah ]
  br label %bb.b, !llvm.loop !194

.thread.sink.split:                               ; preds = %bb.e, %bb.w, %bb.o, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit
  %.sink154 = phi i64 [ %i.gg, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit ], [ %i.cj, %bb.o ], [ %i.ee, %bb.w ], [ %i.r, %bb.e ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink154, ptr %i.hq, align 8, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %bb.x, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit, %bb.f, %.preheader.i, %bb.h, %.thread.sink.split
  %.sink152 = phi i8 [ 0, %bb.h ], [ 1, %.thread.sink.split ], [ 0, %.preheader.i ], [ 0, %bb.f ], [ 0, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit ], [ 0, %bb.x ]
  %.650 = phi i1 [ false, %bb.h ], [ true, %.thread.sink.split ], [ false, %.preheader.i ], [ false, %bb.f ], [ false, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit ], [ false, %bb.x ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink152, ptr %i.hr, align 8, !tbaa !34
  ret i1 %.650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseNodeStartPosEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 744
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw i64 %1, %i.e                     ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = icmp ult i64 %i.k, %i.o
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70
  %i.s = zext i32 %i.r to i64
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71
  %.not.i = icmp ult i64 %1, %i.v
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.x = load i64, ptr %i.w, align 8, !tbaa !63
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

bb.g:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %.not42.i = icmp eq i64 %i.z, 0
  br i1 %.not42.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = lshr i64 %1, 8                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !70 ; 2 uses
  %i.af = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !70
  %i.aj = zext i32 %i.ai to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89
  %i.am = add i64 %i.al, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !89
  %i.ap = add i64 %i.ao, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.034.shrunk.i = phi i32 [ 0, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  %.033.i = phi i64 [ %i.ap, %bb.k ], [ %i.am, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %.034.i = zext i32 %.034.shrunk.i to i64        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 520 ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.033.i, i64 %.034.i) ; 3 uses
  %exitcond.not.i33.not = icmp ugt i64 %.033.i, %.034.i
  br i1 %exitcond.not.i33.not, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.l
  %2 = load ptr, ptr %i.aq, align 8, !tbaa !69
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.ar, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.135.i34 = phi i64 [ %i.ar, %bb.m ], [ %.034.i, %.lr.ph.preheader ] ; 2 uses
  %i.ar = add i64 %.135.i34, 1                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !70
  %i.au = zext i32 %i.at to i64
  %.not43.i = icmp ult i64 %1, %i.au
  br i1 %.not43.i, label %..critedge.i_crit_edge, label %bb.m, !llvm.loop !3

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.m, %..critedge.i_crit_edge, %bb.l
  %.135.lcssa.i = phi i64 [ %umax.i, %bb.l ], [ %.135.i34, %..critedge.i_crit_edge ], [ %umax.i, %bb.m ] ; 2 uses
  %i.av = shl i64 %.135.lcssa.i, 2                ; 3 uses
  %i.aw = add i64 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw) ; 2 uses
  %.not4553.i = icmp ult i64 %i.av, %.sroa.speculated.i
  br i1 %.not4553.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %3 = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.135.lcssa.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !70
  %i.bb = zext i32 %i.ba to i64
  %i.bc = sub i64 %1, %i.bb
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i
  %.03055.i = phi i64 [ %i.av, %.lr.ph.i ], [ %i.bn, %bb.o ] ; 3 uses
  %.03154.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %i.bm, %bb.o ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.03055.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %i.bg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf) ; 2 uses
  %.not44.i = icmp ult i64 %.03154.i, %i.bg
  br i1 %.not44.i, label %.thread49.i, label %bb.o

.thread49.i:                                      ; preds = %bb.n
  %i.bh = shl i64 %.03055.i, 6
  %i.bi = shl nuw i64 1, %.03154.i
  %i.bj = tail call noundef i64 @llvm.pdep.i64(i64 %i.bi, i64 %i.bf)
  %i.bk = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bj, i1 true)
  %i.bl = or disjoint i64 %i.bk, %i.bh
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

bb.o:                                             ; preds = %bb.n
  %i.bm = sub nuw i64 %.03154.i, %i.bg
  %i.bn = add i64 %.03055.i, 1                    ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.bn, %.sroa.speculated.i
  br i1 %exitcond59.not.i, label %._crit_edge.i, label %bb.n, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.o, %.critedge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !63
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit: ; preds = %._crit_edge.i, %.thread49.i, %bb.f, %bb.e, %bb.a
  %.1 = phi i64 [ %i.s, %bb.e ], [ 0, %bb.a ], [ %i.x, %bb.f ], [ %i.bp, %._crit_edge.i ], [ %i.bl, %.thread49.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator16SparseNodeEndPosEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = add i64 %1, 1                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.e = load i64, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.g = lshr i64 %i.c, 6                         ; 2 uses
  %i.h = and i64 %i.c, 63
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65
  %i.l = lshr i64 %i.k, %i.h                      ; 2 uses
  %.not30.i = icmp eq i64 %i.l, 0
  br i1 %.not30.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %.0.i15 = add nuw nsw i64 %i.g, 1               ; 2 uses
  %.not32.i16 = icmp ult i64 %.0.i15, %i.n
  br i1 %.not32.i16, label %.lr.ph, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.l, i1 true)
  %i.p = add i64 %i.o, %i.c
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.d:                                             ; preds = %.lr.ph
  %.0.i = add nuw i64 %.0.i17, 1                  ; 2 uses
  %.not32.i = icmp ult i64 %.0.i, %i.n
  br i1 %.not32.i, label %.lr.ph, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader.i, %bb.d
  %.0.i17 = phi i64 [ %.0.i, %bb.d ], [ %.0.i15, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.i17
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %.not31.i = icmp eq i64 %i.r, 0
  br i1 %.not31.i, label %bb.d, label %.thread.i, !llvm.loop !0

.thread.i:                                        ; preds = %.lr.ph
  %i.s = shl i64 %.0.i17, 6
  %i.t = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 true)
  %i.u = or disjoint i64 %i.t, %i.s
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit: ; preds = %bb.c, %.thread.i
  %.sink = phi i64 [ %i.p, %bb.c ], [ %i.u, %.thread.i ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.e)
  %.not = icmp ult i64 %.sink, %i.e
  br i1 %.not, label %bb.e, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread: ; preds = %bb.d, %.preheader.i, %bb.a, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.w = load i64, ptr %i.v, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread
  %.0 = phi i64 [ %i.w, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit.thread ], [ %..i, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator31SparseLeafIndexFromHasChildRankEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !90
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 4 uses
  %i.j = add i64 %1, 1                            ; 3 uses
  %i.k = lshr i64 %i.j, 8                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70
  %i.p = zext i32 %i.o to i64                     ; 4 uses
  %i.q = shl nuw nsw i64 %i.k, 2                  ; 4 uses
  %i.r = lshr i64 %i.j, 6                         ; 2 uses
  %i.s = sub nsw i64 %i.r, %i.q
  switch i64 %i.s, label %bb.g [
    i64 3, label %bb.d
    i64 2, label %._crit_edge.i.i
    i64 1, label %._crit_edge20.i.i
  ]

._crit_edge20.i.i:                                ; preds = %bb.c
  %.pre21.i.i = load ptr, ptr %i.i, align 8, !tbaa !64
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65
  %i.x = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.w)
  %i.y = add nuw nsw i64 %i.x, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.z = phi ptr [ %i.t, %bb.d ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.y, %bb.d ], [ %i.p, %._crit_edge.i.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ad = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ac)
  %i.ae = add nuw nsw i64 %i.ad, %.0.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge20.i.i
  %i.af = phi ptr [ %i.z, %bb.e ], [ %.pre21.i.i, %._crit_edge20.i.i ]
  %.1.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.p, %._crit_edge20.i.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.q
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !65
  %i.ai = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.aj = add nuw nsw i64 %i.ai, %.1.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.2.i.i = phi i64 [ %i.p, %bb.c ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = and i64 %i.j, 63                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %notmask.i.i = shl nsw i64 -1, %i.ak
  %i.al = xor i64 %notmask.i.i, -1
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.r
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !65
  %i.ap = and i64 %i.ao, %i.al
  %i.aq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ap)
  %i.ar = add nuw nsw i64 %i.aq, %.2.i.i
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit: ; preds = %bb.g, %bb.h
  %.3.i.i = phi i64 [ %i.ar, %bb.h ], [ %.2.i.i, %bb.g ] ; 3 uses
  %i.as = lshr i64 %.3.i.i, 8                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEv:bb.a
_ZN7rocksdb10trie_index9BitvectorD2Ev.exit497:    ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i495
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !71 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.kc, ptr %i.p, align 8, !tbaa !65
  %i.kd = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.ke = and i64 %i.kd, -8
  %i.kf = icmp eq i64 %i.ke, 9223372036854775800
  br i1 %i.kf, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i498

bb.bn:                                            ; preds = %_ZN7rocksdb10trie_index9BitvectorD2Ev.exit497
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc unwind label %bb.bx

.noexc:                                           ; preds = %bb.bn
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i498: ; preds = %_ZN7rocksdb10trie_index9BitvectorD2Ev.exit497
  %i.kg = add nsw i64 %i.kd, 8                    ; 3 uses
  %i.kh = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ak
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i502: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i498
  %i.kj = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.kj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i498
  %i.kk = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i500: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i502
  %i.kl = phi i64 [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i499 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i502 ]
  %.not.i.i.i501 = icmp ugt i64 %i.kg, %i.kl
  br i1 %.not.i.i.i501, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i500
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kd
  store i64 %i.kc, ptr %i.km, align 1
  br label %bb.bq

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i500
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.kd, i64 noundef 0, ptr noundef nonnull %i.p, i64 noundef 8)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  store i64 %i.kg, ptr %i.ad, align 8, !tbaa !92
  %i.kn = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kg
  store i8 0, ptr %i.ko, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.kp = icmp ne i64 %i.kc, 0
  %i.kq = icmp ult i64 %i.hg, 4294967296
  %or.cond = and i1 %i.kq, %i.kp                  ; 2 uses
  br i1 %or.cond, label %.preheader1436, label %bb.di

.preheader1436:                                   ; preds = %bb.bq
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  br label %bb.by

bb.br:                                            ; preds = %bb.cm
  %.neg = shl i64 %i.kc, 2
  %i.ky = and i64 %.neg, 4                        ; 9 uses
  %i.kz = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.la = sub i64 9223372036854775807, %i.kz
  %i.lb = icmp ult i64 %i.la, %i.ky
  br i1 %i.lb, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i505: ; preds = %bb.br
  %i.lc = add i64 %i.kz, %i.ky                    ; 3 uses
  %i.ld = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.ak
  br i1 %i.le, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i505
  %i.lf = icmp ult i64 %i.kz, 16
  call void @llvm.assume(i1 %i.lf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i505
  %i.lg = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512
  %i.lh = phi i64 [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512 ]
  %.not.i.i508 = icmp ugt i64 %i.lc, %i.lh
  br i1 %.not.i.i508, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.kz, i64 noundef 0, ptr noundef null, i64 noundef %i.ky)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509_crit_edge unwind label %bb.cp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509_crit_edge: ; preds = %bb.bs
  %.pre1665.pre = load ptr, ptr %i.ac, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507
  %.pre1665 = phi ptr [ %.pre1665.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509_crit_edge ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i507 ] ; 2 uses
  %.not30.i.i510 = icmp eq i64 %i.ky, 0           ; 2 uses
  br i1 %.not30.i.i510, label %.lr.ph, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509
  %i.li = getelementptr inbounds nuw i8, ptr %.pre1665, i64 %i.kz
  call void @llvm.memset.p0.i64(ptr align 1 %i.li, i8 0, i64 %i.ky, i1 false)
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !104
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509
  %i.lj = phi ptr [ %.pre1665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i509 ], [ %.pre, %bb.bt ]
  store i64 %i.lc, ptr %i.ad, align 8, !tbaa !92
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lc
  store i8 0, ptr %i.lk, align 1, !tbaa !62
  br label %bb.cq

bb.bu:                                            ; preds = %bb.bh, %bb.bg
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.ly

bb.bv:                                            ; preds = %bb.bj, %bb.bi
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

bb.bw:                                            ; preds = %bb.bl, %bb.bk
  %i.ln = landingpad { ptr, i32 }
          cleanup
  %i.lo = load ptr, ptr %i.jt, align 8, !tbaa !104 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ju
  br i1 %i.lp, label %_ZN7rocksdb10trie_index9BitvectorD2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516: ; preds = %bb.bw
  %i.lq = load i64, ptr %i.ju, align 8, !tbaa !62
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #28
  br label %_ZN7rocksdb10trie_index9BitvectorD2Ev.exit518

_ZN7rocksdb10trie_index9BitvectorD2Ev.exit518:    ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

bb.bx:                                            ; preds = %bb.bp, %bb.bn
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

bb.by:                                            ; preds = %.preheader1436, %bb.cm
  %.02791491 = phi i64 [ 0, %.preheader1436 ], [ %i.nv, %bb.cm ] ; 2 uses
  %i.lt = load i64, ptr %i.eb, align 8, !tbaa !158
  %i.lu = add i64 %i.lt, %.02791491               ; 4 uses
  %i.lv = load i64, ptr %i.kr, align 8, !tbaa !71
  %.not.i = icmp ult i64 %i.lu, %i.lv
  br i1 %.not.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = load i64, ptr %i.ks, align 8, !tbaa !63
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

bb.ca:                                            ; preds = %bb.by
  %i.lx = load i64, ptr %i.kt, align 8, !tbaa !87 ; 2 uses
  %.not42.i = icmp eq i64 %i.lx, 0
  br i1 %.not42.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ly = lshr i64 %i.lu, 8                       ; 2 uses
  %i.lz = load ptr, ptr %i.ku, align 8, !tbaa !88 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ly
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !70 ; 2 uses
  %i.mc = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.lx
  br i1 %i.md, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.mc
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !70
  %i.mg = zext i32 %i.mf to i64
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %i.mh = load i64, ptr %i.kv, align 8, !tbaa !89
  %i.mi = add i64 %i.mh, -1
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.mj = load i64, ptr %i.kv, align 8, !tbaa !89
  %i.mk = add i64 %i.mj, -1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.034.shrunk.i = phi i32 [ 0, %bb.ce ], [ %i.mb, %bb.cd ], [ %i.mb, %bb.cc ]
  %.033.i = phi i64 [ %i.mk, %bb.ce ], [ %i.mi, %bb.cd ], [ %i.mg, %bb.cc ] ; 2 uses
  %.034.i = zext i32 %.034.shrunk.i to i64        ; 3 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.033.i, i64 %.034.i) ; 3 uses
  %14 = load ptr, ptr %i.kw, align 8              ; 2 uses
  %exitcond.not.i1984.not = icmp ugt i64 %.033.i, %.034.i
  br i1 %exitcond.not.i1984.not, label %.lr.ph1987, label %.critedge.i

bb.cg:                                            ; preds = %.lr.ph1987
  %exitcond.not.i = icmp eq i64 %i.ml, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph1987, !llvm.loop !3

.lr.ph1987:                                       ; preds = %bb.cf, %bb.cg
  %.135.i1985 = phi i64 [ %i.ml, %bb.cg ], [ %.034.i, %bb.cf ] ; 2 uses
  %i.ml = add i64 %.135.i1985, 1                  ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !70
  %i.mo = zext i32 %i.mn to i64
  %.not43.i = icmp ult i64 %i.lu, %i.mo
  br i1 %.not43.i, label %..critedge.i_crit_edge, label %bb.cg, !llvm.loop !3

..critedge.i_crit_edge:                           ; preds = %.lr.ph1987
  br label %.critedge.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.cg, %..critedge.i_crit_edge, %bb.cf
  %.135.lcssa.i = phi i64 [ %umax.i, %bb.cf ], [ %.135.i1985, %..critedge.i_crit_edge ], [ %umax.i, %bb.cg ] ; 2 uses
  %i.mp = shl i64 %.135.lcssa.i, 2                ; 3 uses
  %i.mq = add i64 %i.mp, 4
  %i.mr = load i64, ptr %i.kx, align 8, !tbaa !65
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.mq) ; 2 uses
  %.not4553.i = icmp ult i64 %i.mp, %.sroa.speculated.i
  br i1 %.not4553.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %.135.lcssa.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !70
  %i.mu = zext i32 %i.mt to i64
  %i.mv = sub i64 %i.lu, %i.mu
  %i.mw = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i
  %.03055.i = phi i64 [ %i.mp, %.lr.ph.i ], [ %i.ng, %bb.ci ] ; 3 uses
  %.03154.i = phi i64 [ %i.mv, %.lr.ph.i ], [ %i.nf, %bb.ci ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %.03055.i
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !65 ; 2 uses
  %i.mz = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.my) ; 2 uses
  %.not44.i = icmp ult i64 %.03154.i, %i.mz
  br i1 %.not44.i, label %.thread49.i, label %bb.ci

.thread49.i:                                      ; preds = %bb.ch
  %i.na = shl i64 %.03055.i, 6
  %i.nb = shl nuw i64 1, %.03154.i
  %i.nc = call noundef i64 @llvm.pdep.i64(i64 %i.nb, i64 %i.my)
  %i.nd = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nc, i1 true)
  %i.ne = or disjoint i64 %i.nd, %i.na
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

bb.ci:                                            ; preds = %bb.ch
  %i.nf = sub nuw i64 %.03154.i, %i.mz
  %i.ng = add i64 %.03055.i, 1                    ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.ng, %.sroa.speculated.i
  br i1 %exitcond59.not.i, label %._crit_edge.i, label %bb.ch, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.ci, %.critedge.i
  %i.nh = load i64, ptr %i.ks, align 8, !tbaa !63
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit: ; preds = %._crit_edge.i, %.thread49.i, %bb.bz
  %.4.i = phi i64 [ %i.lw, %bb.bz ], [ %i.nh, %._crit_edge.i ], [ %i.ne, %.thread49.i ]
  %i.ni = trunc i64 %.4.i to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %i.ni, ptr %i.o, align 4, !tbaa !70
  %i.nj = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.nk = and i64 %i.nj, -4
  %i.nl = icmp eq i64 %i.nk, 9223372036854775804
  br i1 %i.nl, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i519

bb.cj:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc524 unwind label %.loopexit.split-lp1438

.noexc524:                                        ; preds = %bb.cj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i519: ; preds = %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit
  %i.nm = add nsw i64 %i.nj, 4                    ; 3 uses
  %i.nn = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.ak
  br i1 %i.no, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i523, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i523: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i519
  %i.np = icmp ult i64 %i.nj, 16
  call void @llvm.assume(i1 %i.np)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i520: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i519
  %i.nq = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i521: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i520, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i523
  %i.nr = phi i64 [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i520 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i523 ]
  %.not.i.i.i522 = icmp ugt i64 %i.nm, %i.nr
  br i1 %.not.i.i.i522, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i521
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nj
  store i32 %i.ni, ptr %i.ns, align 1
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i521
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.nj, i64 noundef 0, ptr noundef nonnull %i.o, i64 noundef 4)
          to label %bb.cm unwind label %.loopexit1437

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  store i64 %i.nm, ptr %i.ad, align 8, !tbaa !92
  %i.nt = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nm
  store i8 0, ptr %i.nu, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.nv = add nuw i64 %.02791491, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.nv, %i.kc
  br i1 %exitcond.not, label %bb.br, label %bb.by, !llvm.loop !242

.loopexit1437:                                    ; preds = %bb.cl
  %lpad.loopexit1439 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

.loopexit.split-lp1438:                           ; preds = %bb.cj
  %lpad.loopexit.split-lp1440 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

._crit_edge:                                      ; preds = %bb.dh
  %i.nw = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.nx = sub i64 9223372036854775807, %i.nw
  %i.ny = icmp ult i64 %i.nx, %i.ky
  br i1 %i.ny, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i527

.invoke:                                          ; preds = %._crit_edge, %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #26
          to label %.cont unwind label %bb.cp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i527: ; preds = %._crit_edge
  %i.nz = add i64 %i.nw, %i.ky                    ; 3 uses
  %i.oa = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.ak
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i534: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i527
  %i.oc = icmp ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.oc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i528: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i527
  %i.od = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i528, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i534
  %i.oe = phi i64 [ %i.od, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i528 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i534 ]
  %.not.i.i530 = icmp ugt i64 %i.nz, %i.oe
  br i1 %.not.i.i530, label %bb.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.nw, i64 noundef 0, ptr noundef null, i64 noundef %i.ky)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531_crit_edge unwind label %bb.cp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531_crit_edge: ; preds = %bb.cn
  %.pre1668.pre = load ptr, ptr %i.ac, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529
  %.pre1668 = phi ptr [ %.pre1668.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531_crit_edge ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i529 ] ; 2 uses
  br i1 %.not30.i.i510, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit537, label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531
  %i.of = getelementptr inbounds nuw i8, ptr %.pre1668, i64 %i.nw
  call void @llvm.memset.p0.i64(ptr align 1 %i.of, i8 0, i64 %i.ky, i1 false)
  %.pre1667 = load ptr, ptr %i.ac, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit537: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531, %bb.co
  %i.og = phi ptr [ %.pre1668, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i531 ], [ %.pre1667, %bb.co ]
  store i64 %i.nz, ptr %i.ad, align 8, !tbaa !92
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nz
  store i8 0, ptr %i.oh, align 1, !tbaa !62
  br label %bb.di

bb.cp:                                            ; preds = %.invoke, %bb.cn, %bb.bs
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

bb.cq:                                            ; preds = %.lr.ph, %bb.dh
  %.02781492 = phi i64 [ 0, %.lr.ph ], [ %i.rb, %bb.dh ] ; 2 uses
  %i.oj = load i64, ptr %i.eb, align 8, !tbaa !158
  %i.ok = add i64 %i.oj, %.02781492               ; 4 uses
  %i.ol = load i64, ptr %i.kr, align 8, !tbaa !71
  %.not.i538 = icmp ult i64 %i.ok, %i.ol
  br i1 %.not.i538, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.om = load i64, ptr %i.ks, align 8, !tbaa !63 ; 2 uses
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559

bb.cs:                                            ; preds = %bb.cq
  %i.on = load i64, ptr %i.kt, align 8, !tbaa !87 ; 2 uses
  %.not42.i540 = icmp eq i64 %i.on, 0
  br i1 %.not42.i540, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oo = lshr i64 %i.ok, 8                       ; 2 uses
  %i.op = load ptr, ptr %i.ku, align 8, !tbaa !88 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.oo
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !70 ; 2 uses
  %i.os = add nuw nsw i64 %i.oo, 1                ; 2 uses
  %i.ot = icmp ult i64 %i.os, %i.on
  br i1 %i.ot, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.os
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !70
  %i.ow = zext i32 %i.ov to i64
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  %i.ox = load i64, ptr %i.kv, align 8, !tbaa !89
  %i.oy = add i64 %i.ox, -1
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cs
  %i.oz = load i64, ptr %i.kv, align 8, !tbaa !89
  %i.pa = add i64 %i.oz, -1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.034.shrunk.i541 = phi i32 [ 0, %bb.cw ], [ %i.or, %bb.cv ], [ %i.or, %bb.cu ]
  %.033.i542 = phi i64 [ %i.pa, %bb.cw ], [ %i.oy, %bb.cv ], [ %i.ow, %bb.cu ] ; 2 uses
  %.034.i543 = zext i32 %.034.shrunk.i541 to i64  ; 3 uses
  %umax.i544 = call i64 @llvm.umax.i64(i64 %.033.i542, i64 %.034.i543) ; 3 uses
  %15 = load ptr, ptr %i.kw, align 8              ; 2 uses
  %exitcond.not.i5461990.not = icmp ugt i64 %.033.i542, %.034.i543
  br i1 %exitcond.not.i5461990.not, label %.lr.ph1993, label %.critedge.i548

bb.cy:                                            ; preds = %.lr.ph1993
  %exitcond.not.i546 = icmp eq i64 %i.pb, %umax.i544
  br i1 %exitcond.not.i546, label %.critedge.i548, label %.lr.ph1993, !llvm.loop !3

.lr.ph1993:                                       ; preds = %bb.cx, %bb.cy
  %.135.i5451991 = phi i64 [ %i.pb, %bb.cy ], [ %.034.i543, %bb.cx ] ; 2 uses
  %i.pb = add i64 %.135.i5451991, 1               ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !70
  %i.pe = zext i32 %i.pd to i64
  %.not43.i547 = icmp ult i64 %i.ok, %i.pe
  br i1 %.not43.i547, label %..critedge.i548_crit_edge, label %bb.cy, !llvm.loop !3

..critedge.i548_crit_edge:                        ; preds = %.lr.ph1993
  br label %.critedge.i548, !llvm.loop !3

.critedge.i548:                                   ; preds = %bb.cy, %..critedge.i548_crit_edge, %bb.cx
  %.135.lcssa.i549 = phi i64 [ %umax.i544, %bb.cx ], [ %.135.i5451991, %..critedge.i548_crit_edge ], [ %umax.i544, %bb.cy ] ; 2 uses
  %i.pf = shl i64 %.135.lcssa.i549, 2             ; 3 uses
  %i.pg = add i64 %i.pf, 4
  %i.ph = load i64, ptr %i.kx, align 8, !tbaa !65
  %.sroa.speculated.i550 = call i64 @llvm.umin.i64(i64 %i.ph, i64 %i.pg) ; 2 uses
  %.not4553.i551 = icmp ult i64 %i.pf, %.sroa.speculated.i550
  br i1 %.not4553.i551, label %.lr.ph.i553, label %._crit_edge.i552

.lr.ph.i553:                                      ; preds = %.critedge.i548
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.135.lcssa.i549
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !70
  %i.pk = zext i32 %i.pj to i64
  %i.pl = sub i64 %i.ok, %i.pk
  %i.pm = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i553
  %.03055.i554 = phi i64 [ %i.pf, %.lr.ph.i553 ], [ %i.pw, %bb.da ] ; 3 uses
  %.03154.i555 = phi i64 [ %i.pl, %.lr.ph.i553 ], [ %i.pv, %bb.da ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %.03055.i554
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !65 ; 2 uses
  %i.pp = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.po) ; 2 uses
  %.not44.i556 = icmp ult i64 %.03154.i555, %i.pp
  br i1 %.not44.i556, label %.thread49.i558, label %bb.da

.thread49.i558:                                   ; preds = %bb.cz
  %i.pq = shl i64 %.03055.i554, 6
  %i.pr = shl nuw i64 1, %.03154.i555
  %i.ps = call noundef i64 @llvm.pdep.i64(i64 %i.pr, i64 %i.po)
  %i.pt = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ps, i1 true)
  %i.pu = or disjoint i64 %i.pt, %i.pq
  %.pre1666 = load i64, ptr %i.ks, align 8, !tbaa !63
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559

bb.da:                                            ; preds = %bb.cz
  %i.pv = sub nuw i64 %.03154.i555, %i.pp
  %i.pw = add i64 %.03055.i554, 1                 ; 2 uses
  %exitcond59.not.i557 = icmp eq i64 %i.pw, %.sroa.speculated.i550
  br i1 %exitcond59.not.i557, label %._crit_edge.i552, label %bb.cz, !llvm.loop !4

._crit_edge.i552:                                 ; preds = %bb.da, %.critedge.i548
  %i.px = load i64, ptr %i.ks, align 8, !tbaa !63 ; 2 uses
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559

_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559: ; preds = %._crit_edge.i552, %.thread49.i558, %bb.cr
  %i.py = phi i64 [ %i.om, %bb.cr ], [ %i.px, %._crit_edge.i552 ], [ %.pre1666, %.thread49.i558 ] ; 6 uses
  %.4.i539 = phi i64 [ %i.om, %bb.cr ], [ %i.px, %._crit_edge.i552 ], [ %i.pu, %.thread49.i558 ]
  %i.pz = add i64 %.4.i539, 1                     ; 4 uses
  %.not.i560 = icmp ult i64 %i.pz, %i.py
  br i1 %.not.i560, label %bb.db, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.db:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559
  %i.qa = lshr i64 %i.pz, 6                       ; 2 uses
  %i.qb = and i64 %i.pz, 63
  %i.qc = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qa
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !65
  %i.qf = lshr i64 %i.qe, %i.qb                   ; 2 uses
  %.not30.i = icmp eq i64 %i.qf, 0
  br i1 %.not30.i, label %.preheader.i, label %bb.dc

.preheader.i:                                     ; preds = %bb.db
  %i.qg = load i64, ptr %i.kx, align 8, !tbaa !66 ; 2 uses
  %.0.i1997 = add nuw nsw i64 %i.qa, 1            ; 2 uses
  %.not32.i1998 = icmp ult i64 %.0.i1997, %i.qg
  br i1 %.not32.i1998, label %.lr.ph2000, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.dc:                                            ; preds = %bb.db
  %i.qh = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qf, i1 true)
  %i.qi = add i64 %i.qh, %i.pz
  %..i = call i64 @llvm.umin.i64(i64 %i.qi, i64 %i.py)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.dd:                                            ; preds = %.lr.ph2000
  %.0.i = add nuw i64 %.0.i1999, 1                ; 2 uses
  %.not32.i = icmp ult i64 %.0.i, %i.qg
  br i1 %.not32.i, label %.lr.ph2000, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit, !llvm.loop !0

.lr.ph2000:                                       ; preds = %.preheader.i, %bb.dd
  %.0.i1999 = phi i64 [ %.0.i, %bb.dd ], [ %.0.i1997, %.preheader.i ] ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.0.i1999
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !65 ; 2 uses
  %.not31.i = icmp eq i64 %i.qk, 0
  br i1 %.not31.i, label %bb.dd, label %.thread.i, !llvm.loop !0

.thread.i:                                        ; preds = %.lr.ph2000
  %i.ql = shl i64 %.0.i1999, 6
  %i.qm = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qk, i1 true)
  %i.qn = or disjoint i64 %i.qm, %i.ql
  %.33.i = call i64 @llvm.umin.i64(i64 %i.qn, i64 %i.py)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit: ; preds = %bb.dd, %.preheader.i, %.thread.i, %bb.dc, %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559
  %.2.i = phi i64 [ %i.py, %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit559 ], [ %..i, %bb.dc ], [ %.33.i, %.thread.i ], [ %i.py, %.preheader.i ], [ %i.py, %bb.dd ]
  %spec.select = call i64 @llvm.umin.i64(i64 %.2.i, i64 %i.hg)
  %i.qo = trunc nuw i64 %spec.select to i32       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 %i.qo, ptr %i.n, align 4, !tbaa !70
  %i.qp = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.qq = and i64 %i.qp, -4
  %i.qr = icmp eq i64 %i.qq, 9223372036854775804
  br i1 %i.qr, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i561

bb.de:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc566 unwind label %.loopexit.split-lp1432

.noexc566:                                        ; preds = %bb.de
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i561: ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit
  %i.qs = add nsw i64 %i.qp, 4                    ; 3 uses
  %i.qt = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.ak
  br i1 %i.qu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i562

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i565: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i561
  %i.qv = icmp ult i64 %i.qp, 16
  call void @llvm.assume(i1 %i.qv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i562: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i561
  %i.qw = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i563: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i562, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i565
  %i.qx = phi i64 [ %i.qw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i562 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i565 ]
  %.not.i.i.i564 = icmp ugt i64 %i.qs, %i.qx
  br i1 %.not.i.i.i564, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i563
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qp
  store i32 %i.qo, ptr %i.qy, align 1
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i563
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.qp, i64 noundef 0, ptr noundef nonnull %i.n, i64 noundef 4)
          to label %bb.dh unwind label %.loopexit1431

.loopexit1431:                                    ; preds = %bb.dg
  %lpad.loopexit1433 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

.loopexit.split-lp1432:                           ; preds = %bb.de
  %lpad.loopexit.split-lp1434 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

bb.dh:                                            ; preds = %bb.df, %bb.dg
  store i64 %i.qs, ptr %i.ad, align 8, !tbaa !92
  %i.qz = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qs
  store i8 0, ptr %i.ra, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.rb = add nuw i64 %.02781492, 1               ; 2 uses
  %exitcond1635.not = icmp eq i64 %i.rb, %i.kc
  br i1 %exitcond1635.not, label %._crit_edge, label %bb.cq, !llvm.loop !243

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit537, %bb.bq
  %i.rc = icmp ugt i64 %i.kc, 2305843009213693951
  br i1 %i.rc, label %bb.dj, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #26
          to label %.noexc569 unwind label %bb.dm

.noexc569:                                        ; preds = %bb.dj
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.di
  %.not.i.i.i.i = icmp eq i64 %i.kc, 0            ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.rd = shl nuw nsw i64 %i.kc, 2                ; 2 uses
  %i.re = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rd) #27
          to label %.noexc570 unwind label %bb.dm ; 9 uses

.noexc570:                                        ; preds = %bb.dk
end_hunk_1
