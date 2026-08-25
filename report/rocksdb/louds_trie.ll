Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb10trie_index17LoudsTrieIterator8SeekImplILb1EEEbRKNS_5SliceE:bb.a
  %i.bht = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bhs)
  %i.bhu = add nuw nsw i64 %i.bht, %i.bhl
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %._crit_edge.i814
  %i.bhv = phi ptr [ %i.bhp, %bb.gy ], [ %.pre.i815, %._crit_edge.i814 ] ; 2 uses
  %.0.i816 = phi i64 [ %i.bhu, %bb.gy ], [ %i.bhl, %._crit_edge.i814 ]
  %i.bhw = getelementptr inbounds nuw [8 x i8], ptr %i.bhv, i64 %i.bhm
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 8
  %i.bhy = load i64, ptr %i.bhx, align 8, !tbaa !58
  %i.bhz = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bhy)
  %i.bia = add nuw nsw i64 %i.bhz, %.0.i816
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %._crit_edge20.i807
  %i.bib = phi ptr [ %i.bhv, %bb.gz ], [ %.pre21.i808, %._crit_edge20.i807 ]
  %.1.i809 = phi i64 [ %i.bia, %bb.gz ], [ %i.bhl, %._crit_edge20.i807 ]
  %i.bic = getelementptr inbounds nuw [8 x i8], ptr %i.bib, i64 %i.bhm
  %i.bid = load i64, ptr %i.bic, align 8, !tbaa !58
  %i.bie = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bid)
  %i.bif = add nuw nsw i64 %i.bie, %.1.i809
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gx
  %.2.i810 = phi i64 [ %i.bhl, %bb.gx ], [ %i.bif, %bb.ha ] ; 2 uses
  %i.big = and i64 %i.bgq, 63                     ; 2 uses
  %.not.i811 = icmp eq i64 %i.big, 0
  br i1 %.not.i811, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %notmask.i812 = shl nsw i64 -1, %i.big
  %i.bih = xor i64 %notmask.i812, -1
  %i.bii = load ptr, ptr %i.bhf, align 8, !tbaa !57
  %i.bij = getelementptr inbounds nuw [8 x i8], ptr %i.bii, i64 %i.bhn
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !58
  %i.bil = and i64 %i.bik, %i.bih
  %i.bim = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bil)
  %i.bin = add nuw nsw i64 %i.bim, %.2.i810
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817: ; preds = %bb.hb, %bb.hc
  %.3.i813 = phi i64 [ %i.bin, %bb.hc ], [ %.2.i810, %bb.hb ]
  %i.bio = add nsw i64 %.3.i813, -1
  br label %.thread

.thread:                                          ; preds = %._crit_edge1241, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817, %bb.gw
  %i.bip = phi ptr [ %i.bgk, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817 ], [ %i.bgk, %bb.gw ], [ %i.k, %._crit_edge1241 ] ; 2 uses
  %.17384 = phi i64 [ %i.bio, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit817 ], [ %.15382886, %bb.gw ], [ 0, %._crit_edge1241 ] ; 6 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 656
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !56 ; 2 uses
  %.not543 = icmp ne i64 %i.bir, 0
  %i.bis = icmp ult i64 %.17384, %i.bir
  %or.cond964 = select i1 %.not543, i1 %i.bis, i1 false
  br i1 %or.cond964, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %.thread
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bip, i64 624
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !57
  %i.biv = lshr i64 %.17384, 6
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.biu, i64 %i.biv
  %i.bix = load i64, ptr %i.biw, align 8, !tbaa !58
  %i.biy = and i64 %.17384, 63
  %i.biz = lshr i64 %i.bix, %i.biy
  %i.bja = trunc i64 %i.biz to i1
  br i1 %i.bja, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i8 1, ptr %i.i, align 8, !tbaa !33
  %i.bjb = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator24SparsePrefixKeyLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %.17384)
  store i64 %i.bjb, ptr %i.b, align 8, !tbaa !28
  store i8 1, ptr %i.a, align 8, !tbaa !9
  br label %.thread920

bb.hf:                                            ; preds = %.thread, %bb.hd, %bb.gt, %bb.gu
  %.0347.lcssa1594 = phi i1 [ true, %bb.gu ], [ false, %.thread ], [ true, %bb.gt ], [ false, %bb.hd ]
  %.18385 = phi i64 [ %.0367.lcssa1592, %bb.gu ], [ %.17384, %.thread ], [ %.0367.lcssa1592, %bb.gt ], [ %.17384, %bb.hd ]
  %i.bjc = call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext %.0347.lcssa1594, i64 noundef %.18385)
  br label %.thread920

.thread920:                                       ; preds = %bb.ff, %bb.en, %bb.dm, %bb.bu, %bb.db, %._crit_edge1278, %bb.cd, %bb.bv, %bb.cf, %bb.ce, %bb.cj, %bb.ck, %bb.cs, %bb.dc, %bb.gm, %._crit_edge1260, %bb.fo, %bb.fg, %bb.fq, %bb.fp, %bb.fu, %bb.fv, %bb.gd, %bb.gn, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit715, %bb.dy, %bb.dt, %bb.dn, %_ZN7rocksdb10trie_index17LoudsTrieIterator15SparseSeekLabelEmmhPm.exit.thread, %bb.eh, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit739, %bb.eo, %bb.k, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit577, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit591, %bb.ac, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit, %bb.gv, %bb.he, %bb.hf, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit
  %.32 = phi i1 [ false, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit ], [ true, %bb.gv ], [ %i.bjc, %bb.hf ], [ true, %bb.he ], [ %i.bi, %bb.k ], [ %i.bet, %bb.gn ], [ true, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit ], [ %i.gj, %bb.ac ], [ %i.jp, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit591 ], [ true, %_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm.exit577 ], [ %i.aiz, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit715 ], [ %i.aja, %bb.dy ], [ true, %bb.dt ], [ %i.agg, %bb.dn ], [ true, %bb.bu ], [ %i.ajx, %_ZN7rocksdb10trie_index17LoudsTrieIterator15SparseSeekLabelEmmhPm.exit.thread ], [ true, %bb.eh ], [ %i.amv, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit739 ], [ true, %bb.dm ], [ %i.anb, %bb.eo ], [ true, %bb.gm ], [ true, %bb.fu ], [ %i.axa, %bb.fq ], [ %i.asz, %bb.fg ], [ true, %bb.en ], [ %i.awz, %bb.fp ], [ true, %bb.fo ], [ %i.bbp, %bb.gd ], [ %i.azd, %._crit_edge1260 ], [ %i.ayf, %bb.fv ], [ true, %bb.db ], [ true, %bb.cj ], [ %i.wd, %bb.cf ], [ %i.sm, %bb.bv ], [ %i.adw, %bb.dc ], [ %i.wc, %bb.ce ], [ true, %bb.cd ], [ %i.aas, %bb.cs ], [ %i.yg, %._crit_edge1278 ], [ %i.xi, %bb.ck ], [ true, %bb.ff ]
  ret i1 %.32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator14DenseSeekLabelEmhPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i64 noundef %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = shl i64 %1, 8                            ; 2 uses
  %i.b = zext i8 %2 to i64                        ; 2 uses
  %i.c = or disjoint i64 %i.a, %i.b               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %i.i = icmp ult i64 %i.c, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.k = lshr i64 %i.c, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = and i64 %i.b, 63
  %i.o = lshr i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = add i64 %i.a, 256                        ; 2 uses
  %i.r = add i64 %i.c, 1                          ; 4 uses
  %.not.i = icmp ult i64 %i.r, %i.h
  br i1 %.not.i, label %bb.d, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = and i64 %i.r, 63
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = lshr i64 %i.w, %i.t                      ; 2 uses
  %.not30.i = icmp eq i64 %i.x, 0
  br i1 %.not30.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %.0.i27 = add nuw nsw i64 %i.s, 1               ; 2 uses
  %.not32.i28 = icmp ult i64 %.0.i27, %i.z
  br i1 %.not32.i28, label %.lr.ph, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true)
  %i.ab = add i64 %i.aa, %i.r
  %..i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.h)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.f:                                             ; preds = %.lr.ph
  %.0.i = add nuw i64 %.0.i29, 1                  ; 2 uses
  %.not32.i = icmp ult i64 %.0.i, %i.z
  br i1 %.not32.i, label %.lr.ph, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit, !llvm.loop !60

.lr.ph:                                           ; preds = %.preheader.i, %bb.f
  %.0.i29 = phi i64 [ %.0.i, %bb.f ], [ %.0.i27, %.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0.i29
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %.not31.i = icmp eq i64 %i.ad, 0
  br i1 %.not31.i, label %bb.f, label %.thread.i, !llvm.loop !60

.thread.i:                                        ; preds = %.lr.ph
  %i.ae = shl i64 %.0.i29, 6
  %i.af = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.ag = or disjoint i64 %i.af, %i.ae
  %.33.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.h)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit: ; preds = %bb.f, %.preheader.i, %bb.c, %bb.e, %.thread.i
  %.2.i = phi i64 [ %i.h, %bb.c ], [ %..i, %bb.e ], [ %.33.i, %.thread.i ], [ %i.h, %.preheader.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.ah = icmp ult i64 %.2.i, %i.h
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.2.i, i64 %i.q)
  %spec.select = select i1 %i.ah, i64 %i.ai, i64 %i.q
  br label %bb.g

bb.g:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit, %bb.b
  %storemerge17 = phi i64 [ %i.c, %bb.b ], [ %spec.select, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit ]
  %.1 = phi i1 [ true, %bb.b ], [ false, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit ]
  store i64 %storemerge17, ptr %3, align 8, !tbaa !58
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(281) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %.promoted89 = load ptr, ptr %i.c, align 8, !tbaa !91 ; 2 uses
  %i.f = ptrtoint ptr %.promoted89 to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = sub i64 0, %.promoted
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %i.u = phi i64 [ %i.h, %.lr.ph ], [ %i.in, %bb.af ]
  %i.v = phi i64 [ %.promoted, %.lr.ph ], [ %i.ij, %bb.af ] ; 2 uses
  %i.w = phi ptr [ %.promoted89, %.lr.ph ], [ %i.ii, %bb.af ] ; 3 uses
  %i.x = add i64 %i.v, -1                         ; 3 uses
  %i.y = add i64 %i.x, %i.u                       ; 3 uses
  %i.z = icmp ult i64 %i.y, 24
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 -192
  %.0.i.i.i = select i1 %i.z, ptr %i.aa, ptr %i.ac ; 3 uses
  %i.ad = load i64, ptr %.0.i.i.i, align 8, !tbaa !92 ; 6 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.af = and i64 %i.ad, 9223372036854775807
  %i.ag = and i64 %i.ad, 9223372036854775552
  %i.ah = add nuw i64 %i.ag, 256
  %i.ai = add nuw i64 %i.af, 1                    ; 4 uses
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !56  ; 3 uses
  %.not.i = icmp ult i64 %i.ai, %i.aj
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = lshr i64 %i.ai, 6                       ; 2 uses
  %i.al = and i64 %i.ai, 63
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !57  ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !58
  %i.ap = lshr i64 %i.ao, %i.al                   ; 2 uses
  %.not30.i = icmp eq i64 %i.ap, 0
  br i1 %.not30.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %i.aq = load i64, ptr %i.s, align 8, !tbaa !59  ; 2 uses
  %.0.i147 = add nuw nsw i64 %i.ak, 1             ; 2 uses
  %.not32.i148 = icmp ult i64 %.0.i147, %i.aq
  br i1 %.not32.i148, label %.lr.ph150, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %i.as = add nuw i64 %i.ar, %i.ai
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

bb.f:                                             ; preds = %.lr.ph150
  %.0.i = add nuw i64 %.0.i149, 1                 ; 2 uses
  %.not32.i = icmp ult i64 %.0.i, %i.aq
  br i1 %.not32.i, label %.lr.ph150, label %.thread, !llvm.loop !60

.lr.ph150:                                        ; preds = %.preheader.i, %bb.f
  %.0.i149 = phi i64 [ %.0.i, %bb.f ], [ %.0.i147, %.preheader.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0.i149
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %.not31.i = icmp eq i64 %i.au, 0
  br i1 %.not31.i, label %bb.f, label %.thread.i, !llvm.loop !60

.thread.i:                                        ; preds = %.lr.ph150
  %i.av = shl i64 %.0.i149, 6
  %i.aw = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.au, i1 true)
  %i.ax = or disjoint i64 %i.aw, %i.av
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit: ; preds = %bb.e, %.thread.i
  %.sink = phi i64 [ %i.as, %bb.e ], [ %i.ax, %.thread.i ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.aj) ; 5 uses
  %i.ay = icmp ult i64 %..i, %i.ah
  %i.az = icmp ult i64 %.sink, %i.aj
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit
  %i.ba = or i64 %..i, -9223372036854775808
  store i64 %i.ba, ptr %.0.i.i.i, align 8, !tbaa !58
  %i.bb = trunc i64 %..i to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load i32, ptr %i.t, align 8, !tbaa !29
  %i.bd = add i32 %1, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.bb, ptr %i.bg, align 1, !tbaa !55
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !34  ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 4 uses
  %i.bj = add nuw i64 %..i, 1                     ; 3 uses
  %i.bk = lshr i64 %i.bj, 8                       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !64
  %i.bp = zext i32 %i.bo to i64                   ; 4 uses
  %i.bq = shl nuw nsw i64 %i.bk, 2                ; 4 uses
  %i.br = lshr i64 %i.bj, 6                       ; 2 uses
  %i.bs = sub nsw i64 %i.br, %i.bq
  switch i64 %i.bs, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %._crit_edge.i
    i64 1, label %._crit_edge20.i
  ]

._crit_edge20.i:                                  ; preds = %bb.g
  %.pre21.i = load ptr, ptr %i.bi, align 8, !tbaa !57
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !57
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58
  %i.bx = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bw)
  %i.by = add nuw nsw i64 %i.bx, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.bz = phi ptr [ %i.bt, %bb.h ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.0.i48 = phi i64 [ %i.by, %bb.h ], [ %i.bp, %._crit_edge.i ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bq
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.cd = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cc)
  %i.ce = add nuw nsw i64 %i.cd, %.0.i48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge20.i
  %i.cf = phi ptr [ %i.bz, %bb.i ], [ %.pre21.i, %._crit_edge20.i ]
  %.1.i = phi i64 [ %i.ce, %bb.i ], [ %i.bp, %._crit_edge20.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bq
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !58
  %i.ci = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ch)
  %i.cj = add nuw nsw i64 %i.ci, %.1.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2.i46 = phi i64 [ %i.bp, %bb.g ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ck = and i64 %i.bj, 63                       ; 2 uses
  %.not.i47 = icmp eq i64 %i.ck, 0
  br i1 %.not.i47, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %notmask.i = shl nsw i64 -1, %i.ck
  %i.cl = xor i64 %notmask.i, -1
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.br
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !58
  %i.cp = and i64 %i.co, %i.cl
  %i.cq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cp)
  %i.cr = add nuw nsw i64 %i.cq, %.2.i46
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit:  ; preds = %bb.k, %bb.l
  %.3.i = phi i64 [ %i.cr, %bb.l ], [ %.2.i46, %bb.k ] ; 4 uses
  %i.cs = add nsw i64 %.3.i, -1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !57 ; 5 uses
  %i.cv = lshr i64 %i.cs, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = and i64 %i.cs, 63
  %i.cz = lshr i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i1
  br i1 %i.da, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.db = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator22DenseLeafIndexFromRankEmm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %..i, i64 noundef %i.cs)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dd, align 8, !tbaa !9
  br label %.thread76

bb.n:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.de = lshr i64 %.3.i, 8                       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !64
  %i.dj = zext i32 %i.di to i64                   ; 4 uses
  %i.dk = shl nuw nsw i64 %i.de, 2                ; 4 uses
  %i.dl = lshr i64 %.3.i, 6                       ; 2 uses
  %i.dm = sub nsw i64 %i.dl, %i.dk
  switch i64 %i.dm, label %bb.p [
    i64 3, label %bb.o
    i64 2, label %._crit_edge.i.i
    i64 1, label %._crit_edge20.i.i
  ]

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !58
  %i.dq = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dp)
  %i.dr = add nuw nsw i64 %i.dq, %i.dj
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.dr, %bb.o ], [ %i.dj, %bb.n ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dk
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !58
  %i.dv = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.du)
  %i.dw = add nuw nsw i64 %i.dv, %.0.i.i
  br label %._crit_edge20.i.i

._crit_edge20.i.i:                                ; preds = %bb.n, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.dw, %._crit_edge.i.i ], [ %i.dj, %bb.n ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dk
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !58
  %i.dz = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dy)
  %i.ea = add nuw nsw i64 %i.dz, %.1.i.i
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge20.i.i, %bb.n
  %.2.i.i = phi i64 [ %i.dj, %bb.n ], [ %i.ea, %._crit_edge20.i.i ] ; 2 uses
  %i.eb = and i64 %.3.i, 63                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %notmask.i.i = shl nsw i64 -1, %i.eb
  %i.ec = xor i64 %notmask.i.i, -1
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.ef = and i64 %i.ee, %i.ec
  %i.eg = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ef)
  %i.eh = add nuw nsw i64 %i.eg, %.2.i.i
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit: ; preds = %bb.p, %bb.q
  %.3.i.i = phi i64 [ %i.eh, %bb.q ], [ %.2.i.i, %bb.p ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !66 ; 2 uses
  %i.ek = icmp ult i64 %.3.i.i, %i.ej             ; 2 uses
  %i.el = select i1 %i.ek, i64 0, i64 %i.ej
  %i.em = sub nuw i64 %.3.i.i, %i.el
  %i.en = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext %i.ek, i64 noundef %i.em)
  br label %.thread76

bb.r:                                             ; preds = %bb.b
  %i.eo = add nuw i64 %i.ad, 1                    ; 6 uses
  %i.ep = load i64, ptr %i.o, align 8, !tbaa !67
  %i.eq = icmp ult i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.es = lshr i64 %i.eo, 6                       ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !58
  %i.ev = and i64 %i.eo, 63                       ; 2 uses
  %i.ew = lshr i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i1
  br i1 %i.ex, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.eo, ptr %.0.i.i.i, align 8, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eo
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %2 = load i32, ptr %i.t, align 8, !tbaa !29
  %i.fd = add i32 %2, -1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 %i.fb, ptr %i.fg, align 1, !tbaa !55
  %i.fh = load ptr, ptr %i.m, align 8, !tbaa !34  ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 400
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !57 ; 9 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.es
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !58
  %i.fm = lshr i64 %i.fl, %i.ev
  %i.fn = trunc i64 %i.fm to i1
  br i1 %i.fn, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = add nuw i64 %i.ad, 2                    ; 3 uses
  %i.fp = lshr i64 %i.fo, 8                       ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 408
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fp
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !64
  %i.fu = zext i32 %i.ft to i64                   ; 4 uses
  %i.fv = shl nuw nsw i64 %i.fp, 2                ; 4 uses
  %i.fw = lshr i64 %i.fo, 6                       ; 2 uses
  %i.fx = sub nsw i64 %i.fw, %i.fv
  switch i64 %i.fx, label %bb.w [
    i64 3, label %bb.v
    i64 2, label %._crit_edge.i.i56
    i64 1, label %._crit_edge20.i.i49
  ]

bb.v:                                             ; preds = %bb.u
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !58
  %i.gb = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ga)
  %i.gc = add nuw nsw i64 %i.gb, %i.fu
  br label %._crit_edge.i.i56

._crit_edge.i.i56:                                ; preds = %bb.u, %bb.v
  %.0.i.i58 = phi i64 [ %i.gc, %bb.v ], [ %i.fu, %bb.u ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fv
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !58
  %i.gg = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gf)
  %i.gh = add nuw nsw i64 %i.gg, %.0.i.i58
  br label %._crit_edge20.i.i49

._crit_edge20.i.i49:                              ; preds = %bb.u, %._crit_edge.i.i56
  %.1.i.i51 = phi i64 [ %i.gh, %._crit_edge.i.i56 ], [ %i.fu, %bb.u ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fv
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !58
  %i.gk = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gj)
  %i.gl = add nuw nsw i64 %i.gk, %.1.i.i51
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge20.i.i49, %bb.u
  %.2.i.i52 = phi i64 [ %i.fu, %bb.u ], [ %i.gl, %._crit_edge20.i.i49 ] ; 2 uses
  %i.gm = and i64 %i.fo, 63                       ; 2 uses
  %.not.i.i53 = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i53, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %notmask.i.i54 = shl nsw i64 -1, %i.gm
  %i.gn = xor i64 %notmask.i.i54, -1
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fw
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !58
  %i.gq = and i64 %i.gp, %i.gn
  %i.gr = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.gq)
  %i.gs = add nuw nsw i64 %i.gr, %.2.i.i52
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit: ; preds = %bb.w, %bb.x
  %.3.i.i55 = phi i64 [ %i.gs, %bb.x ], [ %.2.i.i52, %bb.w ]
  %i.gt = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator31SparseLeafIndexFromHasChildRankEmm(ptr noundef nonnull readonly align 8 dereferenceable(281) %0, i64 noundef %i.eo, i64 noundef %.3.i.i55)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !28
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.gv, align 8, !tbaa !9
  br label %.thread76

bb.y:                                             ; preds = %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !81
  %i.gy = add nuw i64 %i.ad, 2                    ; 3 uses
  %i.gz = lshr i64 %i.gy, 8                       ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fh, i64 408
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !63
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.gz
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !64
  %i.he = zext i32 %i.hd to i64                   ; 4 uses
  %i.hf = shl nuw nsw i64 %i.gz, 2                ; 4 uses
  %i.hg = lshr i64 %i.gy, 6                       ; 2 uses
  %i.hh = sub nsw i64 %i.hg, %i.hf
  switch i64 %i.hh, label %bb.aa [
    i64 3, label %bb.z
    i64 2, label %._crit_edge.i.i66
    i64 1, label %._crit_edge20.i.i59
  ]

bb.z:                                             ; preds = %bb.y
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !58
  %i.hl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hk)
  %i.hm = add nuw nsw i64 %i.hl, %i.he
  br label %._crit_edge.i.i66

._crit_edge.i.i66:                                ; preds = %bb.y, %bb.z
  %.0.i.i68 = phi i64 [ %i.hm, %bb.z ], [ %i.he, %bb.y ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hf
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !58
  %i.hq = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hp)
  %i.hr = add nuw nsw i64 %i.hq, %.0.i.i68
  br label %._crit_edge20.i.i59

._crit_edge20.i.i59:                              ; preds = %bb.y, %._crit_edge.i.i66
  %.1.i.i61 = phi i64 [ %i.hr, %._crit_edge.i.i66 ], [ %i.he, %bb.y ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hf
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !58
  %i.hu = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ht)
  %i.hv = add nuw nsw i64 %i.hu, %.1.i.i61
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge20.i.i59, %bb.y
  %.2.i.i62 = phi i64 [ %i.he, %bb.y ], [ %i.hv, %._crit_edge20.i.i59 ] ; 2 uses
  %i.hw = and i64 %i.gy, 63                       ; 2 uses
  %.not.i.i63 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i63, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %notmask.i.i64 = shl nsw i64 -1, %i.hw
  %i.hx = xor i64 %notmask.i.i64, -1
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hg
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !58
  %i.ia = and i64 %i.hz, %i.hx
  %i.ib = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ia)
  %i.ic = add nuw nsw i64 %i.ib, %.2.i.i62
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit: ; preds = %bb.aa, %bb.ab
  %.3.i.i65 = phi i64 [ %i.ic, %bb.ab ], [ %.2.i.i62, %bb.aa ]
  %i.id = add i64 %i.gx, -1
  %i.ie = add i64 %i.id, %.3.i.i65
  %i.if = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator21DescendToLeftmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.ie)
  br label %.thread76

.thread:                                          ; preds = %bb.f, %.preheader.i, %bb.c, %bb.r, %bb.s, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit
  %i.ig = icmp eq ptr %i.d, %i.w
  br i1 %i.ig, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread
  %i.ih = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  store ptr %i.ih, ptr %i.c, align 8, !tbaa !32
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit

bb.ad:                                            ; preds = %.thread
  store i64 %i.x, ptr %i.a, align 8, !tbaa !30
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit: ; preds = %bb.ac, %bb.ad
  %i.ii = phi ptr [ %i.ih, %bb.ac ], [ %i.w, %bb.ad ] ; 2 uses
  %i.ij = phi i64 [ %i.v, %bb.ac ], [ %i.x, %bb.ad ] ; 2 uses
  %3 = load i32, ptr %i.t, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit
  %i.ik = add i32 %3, -1
  store i32 %i.ik, ptr %i.t, align 8, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit, %bb.ae
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.il, %i.e
  %i.in = ashr exact i64 %i.im, 3                 ; 2 uses
  %i.io = sub i64 0, %i.ij
  %i.ip = icmp eq i64 %i.in, %i.io
  br i1 %i.ip, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.af, %bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.iq, align 8, !tbaa !9
  br label %.thread76

.thread76:                                        ; preds = %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit, %bb.m, %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit, %._crit_edge
  %.6 = phi i1 [ false, %._crit_edge ], [ %i.if, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit ], [ true, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit ], [ true, %bb.m ], [ %i.en, %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp ult i64 %i.a, 24
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  store i64 0, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.g = load i64, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.j = load i64, ptr %1, align 8, !tbaa !58
  store i64 %i.j, ptr %i.i, align 8, !tbaa !58
  br label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %1, align 8, !tbaa !58
  store i64 %i.p, ptr %i.m, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !32
  br label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #26
  unreachable

_ZNKSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #27 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !58
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !58
  %i.af = icmp sgt i64 %i.u, 0
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !31
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !95
  br label %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN7rocksdb10trie_index17LoudsTrieIterator8LevelPosESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb10trie_index9Bitvector5Rank1Em(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = lshr i64 %1, 8                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = shl nuw nsw i64 %i.a, 2                  ; 4 uses
  %i.h = lshr i64 %1, 6                           ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.g
  switch i64 %i.i, label %bb.e [
    i64 3, label %bb.b
    i64 2, label %._crit_edge
    i64 1, label %._crit_edge20
  ]

._crit_edge20:                                    ; preds = %bb.a
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !57
  br label %bb.d

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !57
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.m)
  %i.o = add nuw nsw i64 %i.n, %i.f
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.p = phi ptr [ %i.j, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0 = phi i64 [ %i.o, %bb.b ], [ %i.f, %._crit_edge ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !58
  %i.t = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = add nuw nsw i64 %i.t, %.0
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge20, %bb.c
  %i.v = phi ptr [ %i.p, %bb.c ], [ %.pre21, %._crit_edge20 ]
  %.1 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge20 ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.g
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = add nuw nsw i64 %i.y, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.2 = phi i64 [ %i.f, %bb.a ], [ %i.z, %bb.d ]  ; 2 uses
  %i.aa = and i64 %1, 63                          ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %notmask = shl nsw i64 -1, %i.aa
  %i.ab = xor i64 %notmask, -1
  %i.ac = load ptr, ptr %0, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.h
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.af = and i64 %i.ae, %i.ab
  %i.ag = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.af)
  %i.ah = add nuw nsw i64 %i.ag, %.2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3 = phi i64 [ %i.ah, %bb.f ], [ %.2, %bb.e ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator37DenseLeafIndexFromRankAndHasChildRankEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i64 %2, 1
  %i.b = sub i64 %i.a, %3                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = icmp eq i64 %i.g, 0
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10trie_index17LoudsTrieIterator22DescendToRightmostLeafEbm:bb.a

._crit_edge20.i.i93:                              ; preds = %bb.y, %._crit_edge.i.i100
  %.1.i.i95 = phi i64 [ %i.fy, %._crit_edge.i.i100 ], [ %i.fl, %bb.y ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fm
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !58
  %i.gb = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ga)
  %i.gc = add nuw nsw i64 %i.gb, %.1.i.i95
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge20.i.i93, %bb.y
  %.2.i.i96 = phi i64 [ %i.fl, %bb.y ], [ %i.gc, %._crit_edge20.i.i93 ] ; 2 uses
  %i.gd = and i64 %.1, 63                         ; 2 uses
  %.not.i.i97 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i97, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %notmask.i.i98 = shl nsw i64 -1, %i.gd
  %i.ge = xor i64 %notmask.i.i98, -1
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fn
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !58
  %i.gh = and i64 %i.gg, %i.ge
  %i.gi = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.gh)
  %i.gj = add nuw nsw i64 %i.gi, %.2.i.i96
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit: ; preds = %bb.aa, %bb.ab
  %.3.i.i99 = phi i64 [ %i.gj, %bb.ab ], [ %.2.i.i96, %bb.aa ]
  %i.gk = call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator31SparseLeafIndexFromHasChildRankEmm(ptr noundef nonnull readonly align 8 dereferenceable(281) %0, i64 noundef %i.em, i64 noundef %.3.i.i99)
  br label %.thread.sink.split

bb.ac:                                            ; preds = %_ZNK7rocksdb10trie_index17LoudsTrieIterator16SparseNodeEndPosEm.exit
  switch i64 %i.fo, label %bb.ae [
    i64 3, label %bb.ad
    i64 2, label %._crit_edge.i110
    i64 1, label %._crit_edge20.i103
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fm
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !58
  %i.go = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gn)
  %i.gp = add nuw nsw i64 %i.go, %i.fl
  br label %._crit_edge.i110

._crit_edge.i110:                                 ; preds = %bb.ac, %bb.ad
  %.0.i112 = phi i64 [ %i.gp, %bb.ad ], [ %i.fl, %bb.ac ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !58
  %i.gt = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gs)
  %i.gu = add nuw nsw i64 %i.gt, %.0.i112
  br label %._crit_edge20.i103

._crit_edge20.i103:                               ; preds = %bb.ac, %._crit_edge.i110
  %.1.i105 = phi i64 [ %i.gu, %._crit_edge.i110 ], [ %i.fl, %bb.ac ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fm
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !58
  %i.gx = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw)
  %i.gy = add nuw nsw i64 %i.gx, %.1.i105
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge20.i103, %bb.ac
  %.2.i106 = phi i64 [ %i.fl, %bb.ac ], [ %i.gy, %._crit_edge20.i103 ] ; 2 uses
  %i.gz = and i64 %.1, 63                         ; 2 uses
  %.not.i107 = icmp eq i64 %i.gz, 0
  br i1 %.not.i107, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %notmask.i108 = shl nsw i64 -1, %i.gz
  %i.ha = xor i64 %notmask.i108, -1
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fn
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !58
  %i.hd = and i64 %i.hc, %i.ha
  %i.he = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.hd)
  %i.hf = add nuw nsw i64 %i.he, %.2.i106
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113: ; preds = %bb.ae, %bb.af
  %.3.i109 = phi i64 [ %i.hf, %bb.af ], [ %.2.i106, %bb.ae ]
  %i.hg = add nsw i64 %.3.i109, -1                ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ex, i64 760
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ex, i64 768
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !132
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !74 ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2
  %i.hp = icmp ult i64 %i.hg, %i.ho               ; 2 uses
  br i1 %i.hp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hg
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !64
  %i.hs = zext i32 %i.hr to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113, %bb.ag
  %.149 = phi i64 [ %i.hs, %bb.ag ], [ %.048.ph, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit113 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !81
  %i.hv = add i64 %i.hu, %i.hg
  br label %.outer, !llvm.loop !317

.thread.sink.split:                               ; preds = %bb.m, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit
  %.sink169 = phi i64 [ %i.gk, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit ], [ %i.cg, %bb.m ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink169, ptr %i.hw, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit, %bb.c, %.preheader.i.preheader, %bb.t, %.preheader.i, %.thread.sink.split
  %.sink = phi i8 [ 1, %.thread.sink.split ], [ 0, %.preheader.i ], [ 0, %bb.t ], [ 0, %.preheader.i.preheader ], [ 0, %bb.c ], [ 0, %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit ]
  %.9 = phi i1 [ true, %.thread.sink.split ], [ false, %.preheader.i ], [ false, %bb.t ], [ false, %.preheader.i.preheader ], [ false, %bb.c ], [ false, %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit ]
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.hx, align 8, !tbaa !9
  ret i1 %.9
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(281) initializes((16, 17), (24, 32), (40, 44), (280, 281)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pr.i = load i64, ptr %i.d, align 8, !tbaa !30
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit, label %_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  %i.p = icmp ne i32 %i.o, 0
  %i.q = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator22DescendToRightmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext %i.p, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit, %bb.c
  %.0 = phi i1 [ %i.q, %bb.c ], [ false, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7RetreatEv(ptr noundef nonnull align 8 dereferenceable(281) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %.promoted158 = load ptr, ptr %i.c, align 8, !tbaa !91 ; 2 uses
  %i.f = ptrtoint ptr %.promoted158 to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = sub i64 0, %.promoted
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 520
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.av
  %i.w = phi i64 [ %i.h, %.lr.ph ], [ %i.lc, %bb.av ]
  %i.x = phi i64 [ %.promoted, %.lr.ph ], [ %i.ky, %bb.av ] ; 2 uses
  %i.y = phi ptr [ %.promoted158, %.lr.ph ], [ %i.kx, %bb.av ] ; 7 uses
  %i.z = add i64 %i.x, -1                         ; 5 uses
  %i.aa = add i64 %i.w, %i.z                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 24
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aa
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %i.aa
  %i.ae = getelementptr i8, ptr %i.ad, i64 -192
  %.0.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.ae ; 3 uses
  %i.af = load i64, ptr %.0.i.i.i, align 8, !tbaa !92 ; 9 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.ah = and i64 %i.af, 9223372036854775807      ; 4 uses
  %i.ai = lshr i64 %i.ah, 8                       ; 3 uses
  %i.aj = icmp eq i64 %i.ah, 0
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !56 ; 3 uses
  br i1 %i.aj, label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i64 %.pre.i, 0
  br i1 %i.ak, label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.pre.i)
  %i.al = add nsw i64 %spec.select.i, -1          ; 3 uses
  %i.am = lshr i64 %i.al, 6                       ; 3 uses
  %i.an = and i64 %i.al, 63                       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 63
  %i.ap = shl nuw i64 2, %i.an
  %i.aq = add i64 %i.ap, -1
  %i.ar = select i1 %i.ao, i64 -1, i64 %i.aq
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.am
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58
  %i.av = and i64 %i.au, %i.ar                    ; 2 uses
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.preheader.i.preheader, label %bb.f

.preheader.i.preheader:                           ; preds = %bb.e
  %i.aw = icmp eq i64 %i.am, 0
  br i1 %i.aw, label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread, label %.lr.ph276

bb.f:                                             ; preds = %bb.e
  %i.ax = and i64 %i.al, -64
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.az = or disjoint i64 %i.ay, %i.ax
  %i.ba = xor i64 %i.az, 63
  br label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit

.preheader.i:                                     ; preds = %.lr.ph276
  %i.bb = icmp eq i64 %.0.i, 0
  br i1 %i.bb, label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread, label %.lr.ph276, !llvm.loop !316

.lr.ph276:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.in.i275 = phi i64 [ %.0.i, %.preheader.i ], [ %i.am, %.preheader.i.preheader ]
  %.0.i = add nsw i64 %.0.in.i275, -1             ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %.not27.i = icmp eq i64 %i.bd, 0
  br i1 %.not27.i, label %.preheader.i, label %bb.g, !llvm.loop !316

bb.g:                                             ; preds = %.lr.ph276
  %i.be = shl nuw nsw i64 %.0.i, 6
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bg = or disjoint i64 %i.bf, %i.be
  %i.bh = xor i64 %i.bg, 63
  br label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit

_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.2.i = phi i64 [ 0, %bb.d ], [ %i.ba, %bb.f ], [ %i.bh, %bb.g ] ; 6 uses
  %i.bi = icmp uge i64 %.2.i, %.pre.i
  %i.bj = and i64 %i.af, 9223372036854775552
  %.not59 = icmp ult i64 %.2.i, %i.bj
  %or.cond = or i1 %i.bi, %.not59
  br i1 %or.cond, label %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit
  %i.bk = or i64 %.2.i, -9223372036854775808
  store i64 %i.bk, ptr %.0.i.i.i, align 8, !tbaa !58
  %i.bl = trunc i64 %.2.i to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load i32, ptr %i.v, align 8, !tbaa !29
  %i.bn = add i32 %1, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !55
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !34  ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 4 uses
  %i.bt = add nuw i64 %.2.i, 1                    ; 3 uses
  %i.bu = lshr i64 %i.bt, 8                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !64
  %i.bz = zext i32 %i.by to i64                   ; 4 uses
  %i.ca = shl nuw nsw i64 %i.bu, 2                ; 4 uses
  %i.cb = lshr i64 %i.bt, 6                       ; 2 uses
  %i.cc = sub nsw i64 %i.cb, %i.ca
  switch i64 %i.cc, label %bb.l [
    i64 3, label %bb.i
    i64 2, label %._crit_edge.i
    i64 1, label %._crit_edge20.i
  ]

._crit_edge20.i:                                  ; preds = %bb.h
  %.pre21.i = load ptr, ptr %i.bs, align 8, !tbaa !57
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i65 = load ptr, ptr %i.bs, align 8, !tbaa !57
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !58
  %i.ch = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cg)
  %i.ci = add nuw nsw i64 %i.ch, %i.bz
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %i.cj = phi ptr [ %i.cd, %bb.i ], [ %.pre.i65, %._crit_edge.i ] ; 2 uses
  %.0.i66 = phi i64 [ %i.ci, %bb.i ], [ %i.bz, %._crit_edge.i ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ca
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !58
  %i.cn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cm)
  %i.co = add nuw nsw i64 %i.cn, %.0.i66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge20.i
  %i.cp = phi ptr [ %i.cj, %bb.j ], [ %.pre21.i, %._crit_edge20.i ]
  %.1.i = phi i64 [ %i.co, %bb.j ], [ %i.bz, %._crit_edge20.i ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ca
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !58
  %i.cs = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cr)
  %i.ct = add nuw nsw i64 %i.cs, %.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.2.i63 = phi i64 [ %i.bz, %bb.h ], [ %i.ct, %bb.k ] ; 2 uses
  %i.cu = and i64 %i.bt, 63                       ; 2 uses
  %.not.i64 = icmp eq i64 %i.cu, 0
  br i1 %.not.i64, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %notmask.i = shl nsw i64 -1, %i.cu
  %i.cv = xor i64 %notmask.i, -1
  %i.cw = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cb
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !58
  %i.cz = and i64 %i.cy, %i.cv
  %i.da = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.cz)
  %i.db = add nuw nsw i64 %i.da, %.2.i63
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit:  ; preds = %bb.l, %bb.m
  %.3.i = phi i64 [ %i.db, %bb.m ], [ %.2.i63, %bb.l ] ; 4 uses
  %i.dc = add nsw i64 %.3.i, -1                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !57 ; 5 uses
  %i.df = lshr i64 %i.dc, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !58
  %i.di = and i64 %i.dc, 63
  %i.dj = lshr i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.dl = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator22DenseLeafIndexFromRankEmm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %.2.i, i64 noundef %i.dc)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dn, align 8, !tbaa !9
  br label %.thread109

bb.o:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.do = lshr i64 %.3.i, 8                       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !64
  %i.dt = zext i32 %i.ds to i64                   ; 4 uses
  %i.du = shl nuw nsw i64 %i.do, 2                ; 4 uses
  %i.dv = lshr i64 %.3.i, 6                       ; 2 uses
  %i.dw = sub nsw i64 %i.dv, %i.du
  switch i64 %i.dw, label %bb.q [
    i64 3, label %bb.p
    i64 2, label %._crit_edge.i.i
    i64 1, label %._crit_edge20.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !58
  %i.ea = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dz)
  %i.eb = add nuw nsw i64 %i.ea, %i.dt
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.p
  %.0.i.i = phi i64 [ %i.eb, %bb.p ], [ %i.dt, %bb.o ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.ef = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ee)
  %i.eg = add nuw nsw i64 %i.ef, %.0.i.i
  br label %._crit_edge20.i.i

._crit_edge20.i.i:                                ; preds = %bb.o, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.eg, %._crit_edge.i.i ], [ %i.dt, %bb.o ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.du
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !58
  %i.ej = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ei)
  %i.ek = add nuw nsw i64 %i.ej, %.1.i.i
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge20.i.i, %bb.o
  %.2.i.i = phi i64 [ %i.dt, %bb.o ], [ %i.ek, %._crit_edge20.i.i ] ; 2 uses
  %i.el = and i64 %.3.i, 63                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %notmask.i.i = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i.i, -1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dv
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !58
  %i.ep = and i64 %i.eo, %i.em
  %i.eq = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ep)
  %i.er = add nuw nsw i64 %i.eq, %.2.i.i
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit: ; preds = %bb.q, %bb.r
  %.3.i.i = phi i64 [ %i.er, %bb.r ], [ %.2.i.i, %bb.q ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !66 ; 2 uses
  %i.eu = icmp ult i64 %.3.i.i, %i.et             ; 2 uses
  %i.ev = select i1 %i.eu, i64 0, i64 %i.et
  %i.ew = sub nuw i64 %.3.i.i, %i.ev
  %i.ex = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator22DescendToRightmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext %i.eu, i64 noundef %i.ew)
  br label %.thread109

_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread: ; preds = %.preheader.i, %.preheader.i.preheader, %bb.c, %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit
  %i.ey = load i64, ptr %i.t, align 8, !tbaa !56
  %i.ez = icmp ult i64 %i.ai, %i.ey
  br i1 %i.ez, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread
  %i.fa = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.fb = lshr i64 %i.ah, 14
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !58
  %i.fe = and i64 %i.ai, 63
  %i.ff = lshr i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i1
  br i1 %i.fg, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.fh = icmp eq ptr %i.d, %i.y
  br i1 %i.fh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fi = getelementptr inbounds i8, ptr %i.y, i64 -8
  store ptr %i.fi, ptr %i.c, align 8, !tbaa !32
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit

bb.v:                                             ; preds = %bb.t
  store i64 %i.z, ptr %i.a, align 8, !tbaa !30
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit: ; preds = %bb.u, %bb.v
  %2 = load i32, ptr %i.v, align 8, !tbaa !29     ; 2 uses
  %.not61 = icmp eq i32 %2, 0
  br i1 %.not61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit
  %i.fj = add i32 %2, -1
  store i32 %i.fj, ptr %i.v, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 1, ptr %i.fk, align 8, !tbaa !33
  %i.fl = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator23DensePrefixKeyLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.ai)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.fn, align 8, !tbaa !9
  br label %.thread109

bb.y:                                             ; preds = %bb.b
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !57  ; 5 uses
  %i.fp = lshr i64 %i.af, 6                       ; 5 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !58
  %i.fs = and i64 %i.af, 63                       ; 5 uses
  %i.ft = lshr i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i1
  br i1 %i.fu, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = add nsw i64 %i.af, -1                   ; 5 uses
  store i64 %i.fv, ptr %.0.i.i.i, align 8, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !68
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !55
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load i32, ptr %i.v, align 8, !tbaa !29
  %i.gb = add i32 %3, -1
  %i.gc = zext i32 %i.gb to i64
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gc
  store i8 %i.fz, ptr %i.ge, align 1, !tbaa !55
  %i.gf = load ptr, ptr %i.m, align 8, !tbaa !34  ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 400
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !57 ; 9 uses
  %i.gi = lshr i64 %i.fv, 6
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !58
  %i.gl = and i64 %i.fv, 63
  %i.gm = lshr i64 %i.gk, %i.gl
  %i.gn = trunc i64 %i.gm to i1
  br i1 %i.gn, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = lshr i64 %i.af, 8                       ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 408
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !63
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !64
  %i.gt = zext i32 %i.gs to i64                   ; 4 uses
  %i.gu = shl nuw nsw i64 %i.go, 2                ; 4 uses
  %i.gv = sub nsw i64 %i.fp, %i.gu
  switch i64 %i.gv, label %bb.ac [
    i64 3, label %bb.ab
    i64 2, label %._crit_edge.i.i74
    i64 1, label %._crit_edge20.i.i67
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !58
  %i.gz = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gy)
  %i.ha = add nuw nsw i64 %i.gz, %i.gt
  br label %._crit_edge.i.i74

._crit_edge.i.i74:                                ; preds = %bb.aa, %bb.ab
  %.0.i.i76 = phi i64 [ %i.ha, %bb.ab ], [ %i.gt, %bb.aa ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gu
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !58
  %i.he = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hd)
  %i.hf = add nuw nsw i64 %i.he, %.0.i.i76
  br label %._crit_edge20.i.i67

._crit_edge20.i.i67:                              ; preds = %bb.aa, %._crit_edge.i.i74
  %.1.i.i69 = phi i64 [ %i.hf, %._crit_edge.i.i74 ], [ %i.gt, %bb.aa ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gu
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !58
  %i.hi = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hh)
  %i.hj = add nuw nsw i64 %i.hi, %.1.i.i69
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge20.i.i67, %bb.aa
  %.2.i.i70 = phi i64 [ %i.gt, %bb.aa ], [ %i.hj, %._crit_edge20.i.i67 ] ; 2 uses
  %.not.i.i71 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i71, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %notmask.i.i72 = shl nsw i64 -1, %i.fs
  %i.hk = xor i64 %notmask.i.i72, -1
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fp
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !58
  %i.hn = and i64 %i.hm, %i.hk
  %i.ho = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.hn)
  %i.hp = add nuw nsw i64 %i.ho, %.2.i.i70
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit: ; preds = %bb.ac, %bb.ad
  %.3.i.i73 = phi i64 [ %i.hp, %bb.ad ], [ %.2.i.i70, %bb.ac ]
  %i.hq = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator31SparseLeafIndexFromHasChildRankEmm(ptr noundef nonnull readonly align 8 dereferenceable(281) %0, i64 noundef %i.fv, i64 noundef %.3.i.i73)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !28
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.hs, align 8, !tbaa !9
  br label %.thread109

bb.ae:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !81
  %i.hv = lshr i64 %i.af, 8                       ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gf, i64 408
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !63
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !64
  %i.ia = zext i32 %i.hz to i64                   ; 4 uses
  %i.ib = shl nuw nsw i64 %i.hv, 2                ; 4 uses
  %i.ic = sub nsw i64 %i.fp, %i.ib
  switch i64 %i.ic, label %bb.ag [
    i64 3, label %bb.af
    i64 2, label %._crit_edge.i.i84
    i64 1, label %._crit_edge20.i.i77
  ]

bb.af:                                            ; preds = %bb.ae
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ib
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !58
  %i.ig = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.if)
  %i.ih = add nuw nsw i64 %i.ig, %i.ia
  br label %._crit_edge.i.i84

._crit_edge.i.i84:                                ; preds = %bb.ae, %bb.af
  %.0.i.i86 = phi i64 [ %i.ih, %bb.af ], [ %i.ia, %bb.ae ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ib
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !58
  %i.il = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ik)
  %i.im = add nuw nsw i64 %i.il, %.0.i.i86
  br label %._crit_edge20.i.i77

._crit_edge20.i.i77:                              ; preds = %bb.ae, %._crit_edge.i.i84
  %.1.i.i79 = phi i64 [ %i.im, %._crit_edge.i.i84 ], [ %i.ia, %bb.ae ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ib
  %i.io = load i64, ptr %i.in, align 8, !tbaa !58
  %i.ip = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.io)
  %i.iq = add nuw nsw i64 %i.ip, %.1.i.i79
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge20.i.i77, %bb.ae
  %.2.i.i80 = phi i64 [ %i.ia, %bb.ae ], [ %i.iq, %._crit_edge20.i.i77 ] ; 2 uses
  %.not.i.i81 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i81, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %notmask.i.i82 = shl nsw i64 -1, %i.fs
  %i.ir = xor i64 %notmask.i.i82, -1
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fp
  %i.it = load i64, ptr %i.is, align 8, !tbaa !58
  %i.iu = and i64 %i.it, %i.ir
  %i.iv = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.iu)
  %i.iw = add nuw nsw i64 %i.iv, %.2.i.i80
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit: ; preds = %bb.ag, %bb.ah
  %.3.i.i83 = phi i64 [ %i.iw, %bb.ah ], [ %.2.i.i80, %bb.ag ]
  %i.ix = add i64 %i.hu, -1
  %i.iy = add i64 %i.ix, %.3.i.i83
  %i.iz = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator22DescendToRightmostLeafEbm(ptr noundef nonnull align 8 dereferenceable(281) %0, i1 noundef zeroext false, i64 noundef %i.iy)
  br label %.thread109

bb.ai:                                            ; preds = %bb.y
  %i.ja = add nuw i64 %i.af, 1                    ; 3 uses
  %i.jb = lshr i64 %i.ja, 8                       ; 2 uses
  %i.jc = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.jb
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !64
  %i.jf = zext i32 %i.je to i64                   ; 4 uses
  %i.jg = shl nuw nsw i64 %i.jb, 2                ; 4 uses
  %i.jh = lshr i64 %i.ja, 6                       ; 2 uses
  %i.ji = sub nsw i64 %i.jh, %i.jg
  switch i64 %i.ji, label %bb.ak [
    i64 3, label %bb.aj
    i64 2, label %._crit_edge.i.i94
    i64 1, label %._crit_edge20.i.i87
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !58
  %i.jm = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jl)
  %i.jn = add nuw nsw i64 %i.jm, %i.jf
  br label %._crit_edge.i.i94

._crit_edge.i.i94:                                ; preds = %bb.ai, %bb.aj
  %.0.i.i96 = phi i64 [ %i.jn, %bb.aj ], [ %i.jf, %bb.ai ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jg
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !58
  %i.jr = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jq)
  %i.js = add nuw nsw i64 %i.jr, %.0.i.i96
  br label %._crit_edge20.i.i87

._crit_edge20.i.i87:                              ; preds = %bb.ai, %._crit_edge.i.i94
  %.1.i.i89 = phi i64 [ %i.js, %._crit_edge.i.i94 ], [ %i.jf, %bb.ai ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jg
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !58
  %i.jv = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ju)
  %i.jw = add nuw nsw i64 %i.jv, %.1.i.i89
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge20.i.i87, %bb.ai
  %.2.i.i90 = phi i64 [ %i.jf, %bb.ai ], [ %i.jw, %._crit_edge20.i.i87 ] ; 2 uses
  %i.jx = and i64 %i.ja, 63                       ; 2 uses
  %.not.i.i91 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i91, label %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %notmask.i.i92 = shl nsw i64 -1, %i.jx
  %i.jy = xor i64 %notmask.i.i92, -1
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.jh
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !58
  %i.kb = and i64 %i.ka, %i.jy
  %i.kc = tail call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.kb)
  %i.kd = add nuw nsw i64 %i.kc, %.2.i.i90
  br label %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit

_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit: ; preds = %bb.ak, %bb.al
  %.3.i.i93 = phi i64 [ %i.kd, %bb.al ], [ %.2.i.i90, %bb.ak ]
  %i.ke = add nsw i64 %.3.i.i93, -1               ; 4 uses
  %i.kf = load i64, ptr %i.q, align 8, !tbaa !56  ; 2 uses
  %.not = icmp ne i64 %i.kf, 0
  %i.kg = icmp ult i64 %i.ke, %i.kf
  %or.cond113 = select i1 %.not, i1 %i.kg, i1 false
  br i1 %or.cond113, label %bb.am, label %.thread

bb.am:                                            ; preds = %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit
  %i.kh = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.ki = lshr i64 %i.ke, 6
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !58
  %i.kl = and i64 %i.ke, 63
  %i.km = lshr i64 %i.kk, %i.kl
  %i.kn = trunc i64 %i.km to i1
  br i1 %i.kn, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ko = icmp eq ptr %i.d, %i.y
  br i1 %i.ko, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kp = getelementptr inbounds i8, ptr %i.y, i64 -8
  store ptr %i.kp, ptr %i.c, align 8, !tbaa !32
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit97

bb.ap:                                            ; preds = %bb.an
  store i64 %i.z, ptr %i.a, align 8, !tbaa !30
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit97

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit97: ; preds = %bb.ao, %bb.ap
  %4 = load i32, ptr %i.v, align 8, !tbaa !29     ; 2 uses
  %.not58 = icmp eq i32 %4, 0
  br i1 %.not58, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit97
  %i.kq = add i32 %4, -1
  store i32 %i.kq, ptr %i.v, align 8, !tbaa !29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit97
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 1, ptr %i.kr, align 8, !tbaa !33
  %i.ks = tail call noundef i64 @_ZNK7rocksdb10trie_index17LoudsTrieIterator24SparsePrefixKeyLeafIndexEm(ptr noundef nonnull align 8 dereferenceable(281) %0, i64 noundef %i.ke)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !28
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ku, align 8, !tbaa !9
  br label %.thread109

.thread:                                          ; preds = %_ZNK7rocksdb10trie_index17LoudsTrieIterator13SparseNodeNumEm.exit, %bb.am, %_ZNK7rocksdb10trie_index9Bitvector10PrevSetBitEm.exit.thread, %bb.s
  %i.kv = icmp eq ptr %i.d, %i.y
  br i1 %i.kv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread
  %i.kw = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  store ptr %i.kw, ptr %i.c, align 8, !tbaa !32
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit98

bb.at:                                            ; preds = %.thread
  store i64 %i.z, ptr %i.a, align 8, !tbaa !30
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit98

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit98: ; preds = %bb.as, %bb.at
  %i.kx = phi ptr [ %i.kw, %bb.as ], [ %i.y, %bb.at ] ; 2 uses
  %i.ky = phi i64 [ %i.x, %bb.as ], [ %i.z, %bb.at ] ; 2 uses
  %5 = load i32, ptr %i.v, align 8, !tbaa !29     ; 2 uses
  %.not62 = icmp eq i32 %5, 0
  br i1 %.not62, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit98
  %i.kz = add i32 %5, -1
  store i32 %i.kz, ptr %i.v, align 8, !tbaa !29
  br label %bb.av

bb.av:                                            ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE8pop_backEv.exit98, %bb.au
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.la, %i.e
  %i.lc = ashr exact i64 %i.lb, 3                 ; 2 uses
  %i.ld = sub i64 0, %i.ky
  %i.le = icmp eq i64 %i.lc, %i.ld
  br i1 %i.le, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.av, %bb.a
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.lf, align 8, !tbaa !9
  br label %.thread109

.thread109:                                       ; preds = %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit, %bb.ar, %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit, %bb.n, %bb.x, %._crit_edge
  %.8 = phi i1 [ false, %._crit_edge ], [ true, %bb.ar ], [ %i.iz, %_ZNK7rocksdb10trie_index17LoudsTrieIterator18SparseChildNodeNumEm.exit ], [ true, %_ZNK7rocksdb10trie_index17LoudsTrieIterator15SparseLeafIndexEm.exit ], [ true, %bb.x ], [ true, %bb.n ], [ %i.ex, %_ZNK7rocksdb10trie_index17LoudsTrieIterator25DenseChildNodeNumFromRankEm.exit ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator4PrevEv(ptr noundef nonnull align 8 dereferenceable(281) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9, !range !192, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.d, align 8, !tbaa !33
  %i.e = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator7RetreatEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZNK7rocksdb10trie_index17LoudsTrieIterator5ValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 984
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !291
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.d
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = zext i32 %i.m to i64
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.n, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.s = load i64, ptr %3, align 8, !tbaa !58     ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !104
  %i.u = icmp eq ptr %i.r, null
  %i.v = icmp ne i64 %i.s, 0
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = icmp ugt i64 %i.s, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i64 %i.s, 0
  br i1 %i.x, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #26
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.s, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !121

.noexc9.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc28 unwind label %bb.m

.noexc28:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc29 unwind label %bb.m   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !122
  store i64 %i.s, ptr %i.t, align 8, !tbaa !55
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc29, %bb.c
  %i.ab = phi ptr [ %i.aa, %.noexc29 ], [ %i.t, %bb.c ] ; 3 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !55
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !55
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.ad, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store i8 0, ptr %i.ae, align 1, !tbaa !55
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !104, !alias.scope !318, !noalias !321
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !122, !alias.scope !321, !noalias !318 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !105, !alias.scope !321, !noalias !318 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
end_hunk_1
