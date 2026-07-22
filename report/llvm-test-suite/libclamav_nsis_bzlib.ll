inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  br i1 %min.epilog.iters.check569, label %.lr.ph1573.i.preheader, label %vec.epilog.ph570, !prof !85

vec.epilog.ph570:                                 ; preds = %vector.main.loop.iter.check552, %vec.epilog.iter.check568
  %vec.epilog.resume.val564 = phi i64 [ %n.vec556, %vec.epilog.iter.check568 ], [ 0, %vector.main.loop.iter.check552 ]
  %n.vec572 = and i64 %i.bmk, 8589934588          ; 3 uses
  %i.bnk = sub nsw i64 %i.bmh, %n.vec572
  br label %vec.epilog.vector.body573

vec.epilog.vector.body573:                        ; preds = %vec.epilog.vector.body573, %vec.epilog.ph570
  %index574 = phi i64 [ %vec.epilog.resume.val564, %vec.epilog.ph570 ], [ %index.next576, %vec.epilog.vector.body573 ] ; 2 uses
  %i.bnl = trunc i64 %index574 to i32
  %i.bnm = sub i32 %.0923.lcssa2021.i, %i.bnl
  %i.bnn = add i32 %i.blo, %i.bnm                 ; 2 uses
  %i.bno = add i32 %i.bnn, -1
  %i.bnp = zext i32 %i.bno to i64
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bnp
  %i.bnr = getelementptr inbounds i8, ptr %i.bnq, i64 -3
  %wide.load575 = load <4 x i8>, ptr %i.bnr, align 1, !tbaa !34
  %i.bns = zext i32 %i.bnn to i64
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bns
  %i.bnu = getelementptr inbounds i8, ptr %i.bnt, i64 -3
  store <4 x i8> %wide.load575, ptr %i.bnu, align 1, !tbaa !34
  %index.next576 = add nuw i64 %index574, 4       ; 2 uses
  %i.bnv = icmp eq i64 %index.next576, %n.vec572
  br i1 %i.bnv, label %vec.epilog.middle.block577, label %vec.epilog.vector.body573, !llvm.loop !109

vec.epilog.middle.block577:                       ; preds = %vec.epilog.vector.body573
  %cmp.n578 = icmp eq i64 %i.bmk, %n.vec572
  br i1 %cmp.n578, label %._crit_edge1574.i, label %.lr.ph1573.i.preheader

.lr.ph1573.i.preheader:                           ; preds = %vector.memcheck548, %vector.scevcheck546, %iter.check566, %vec.epilog.iter.check568, %vec.epilog.middle.block577
  %indvars.iv1792.i.ph = phi i64 [ %i.bmh, %iter.check566 ], [ %i.bmh, %vector.scevcheck546 ], [ %i.bmh, %vector.memcheck548 ], [ %i.bmw, %vec.epilog.iter.check568 ], [ %i.bnk, %vec.epilog.middle.block577 ] ; 4 uses
  %i.bnw = trunc i64 %indvars.iv1792.i.ph to i32  ; 2 uses
  %xtraiter737 = and i32 %i.bnw, 1
  %lcmp.mod738.not = icmp eq i32 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %.lr.ph1573.i.prol.loopexit, label %.lr.ph1573.i.prol

.lr.ph1573.i.prol:                                ; preds = %.lr.ph1573.i.preheader
  %i.bnx = trunc nuw i64 %indvars.iv1792.i.ph to i32
  %i.bny = add i32 %i.blo, %i.bnx                 ; 2 uses
  %i.bnz = add i32 %i.bny, -1
  %i.boa = zext i32 %i.bnz to i64
  %i.bob = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.boa
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !34
  %i.bod = zext i32 %i.bny to i64
  %i.boe = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bod
  store i8 %i.boc, ptr %i.boe, align 1, !tbaa !34
  %indvars.iv.next1793.i.prol = add nsw i64 %indvars.iv1792.i.ph, -1
  br label %.lr.ph1573.i.prol.loopexit

.lr.ph1573.i.prol.loopexit:                       ; preds = %.lr.ph1573.i.prol, %.lr.ph1573.i.preheader
  %indvars.iv1792.i.unr = phi i64 [ %indvars.iv1792.i.ph, %.lr.ph1573.i.preheader ], [ %indvars.iv.next1793.i.prol, %.lr.ph1573.i.prol ]
  %i.bof = icmp eq i32 %i.bnw, 1
  br i1 %i.bof, label %._crit_edge1574.i, label %.lr.ph1573.i.preheader.new

.lr.ph1573.i.preheader.new:                       ; preds = %.lr.ph1573.i.prol.loopexit
  %invariant.op834 = add i32 -1, %i.blo
  br label %.lr.ph1573.i

.lr.ph1569.i:                                     ; preds = %.lr.ph1569.i, %.lr.ph1569.preheader.i.new
  %indvars.iv1788.i.a = phi i64 [ %indvars.iv1788.i.unr.a, %.lr.ph1569.preheader.i.new ], [ %indvars.iv.next1789.i.3, %.lr.ph1569.i ] ; 5 uses
  %i.bog = trunc i64 %indvars.iv1788.i.a to i32
  %i.boh = add i32 %i.blo, %i.bog
  %i.boi = sext i32 %i.boh to i64
  %i.boj = getelementptr i8, ptr %i.ai, i64 %i.boi ; 2 uses
  %i.bok = getelementptr i8, ptr %i.boj, i64 -3
  %i.bol = getelementptr i8, ptr %i.boj, i64 -4
  %i.bom = load <4 x i8>, ptr %i.bol, align 1, !tbaa !34
  store <4 x i8> %i.bom, ptr %i.bok, align 1, !tbaa !34
  %i.bon = trunc i64 %indvars.iv1788.i.a to i32
  %.reass = add i32 %i.bon, %invariant.op
  %i.boo = sext i32 %.reass to i64
  %i.bop = getelementptr i8, ptr %i.ai, i64 %i.boo ; 2 uses
  %i.boq = getelementptr i8, ptr %i.bop, i64 -3
  %i.bor = getelementptr i8, ptr %i.bop, i64 -4
  %i.bos = load <4 x i8>, ptr %i.bor, align 1, !tbaa !34
  store <4 x i8> %i.bos, ptr %i.boq, align 1, !tbaa !34
  %i.bot = trunc i64 %indvars.iv1788.i.a to i32
  %.reass831 = add i32 %i.bot, %invariant.op830
  %i.bou = sext i32 %.reass831 to i64
  %i.bov = getelementptr i8, ptr %i.ai, i64 %i.bou ; 2 uses
  %i.bow = getelementptr i8, ptr %i.bov, i64 -3
  %i.box = getelementptr i8, ptr %i.bov, i64 -4
  %i.boy = load <4 x i8>, ptr %i.box, align 1, !tbaa !34
  store <4 x i8> %i.boy, ptr %i.bow, align 1, !tbaa !34
  %i.boz = trunc i64 %indvars.iv1788.i.a to i32
  %.reass833 = add i32 %i.boz, %invariant.op832
  %i.bpa = sext i32 %.reass833 to i64
  %i.bpb = getelementptr i8, ptr %i.ai, i64 %i.bpa ; 2 uses
  %i.bpc = getelementptr i8, ptr %i.bpb, i64 -3
  %i.bpd = getelementptr i8, ptr %i.bpb, i64 -4
  %i.bpe = load <4 x i8>, ptr %i.bpd, align 1, !tbaa !34
  store <4 x i8> %i.bpe, ptr %i.bpc, align 1, !tbaa !34
  %indvars.iv.next1789.i.3 = add nsw i64 %indvars.iv1788.i.a, -16 ; 2 uses
  %i.bpf = trunc i64 %indvars.iv.next1789.i.3 to i32 ; 2 uses
  %i.bpg = icmp ugt i32 %i.bpf, 3
  br i1 %i.bpg, label %.lr.ph1569.i, label %.preheader1384.i, !llvm.loop !110

.lr.ph1573.i:                                     ; preds = %.lr.ph1573.i, %.lr.ph1573.i.preheader.new
  %indvars.iv1792.i = phi i64 [ %indvars.iv1792.i.unr, %.lr.ph1573.i.preheader.new ], [ %indvars.iv.next1793.i.1, %.lr.ph1573.i ] ; 3 uses
  %i.bph = trunc nuw i64 %indvars.iv1792.i to i32
  %i.bpi = add i32 %i.blo, %i.bph                 ; 2 uses
  %i.bpj = add i32 %i.bpi, -1
  %i.bpk = zext i32 %i.bpj to i64
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpk
  %i.bpm = load i8, ptr %i.bpl, align 1, !tbaa !34
  %i.bpn = zext i32 %i.bpi to i64
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpn
  store i8 %i.bpm, ptr %i.bpo, align 1, !tbaa !34
  %i.bpp = trunc i64 %indvars.iv1792.i to i32
  %.reass835 = add i32 %i.bpp, %invariant.op834   ; 2 uses
  %i.bpq = add i32 %.reass835, -1
  %i.bpr = zext i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpr
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !34
  %i.bpu = zext i32 %.reass835 to i64
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpu
  store i8 %i.bpt, ptr %i.bpv, align 1, !tbaa !34
  %indvars.iv.next1793.i.1 = add nsw i64 %indvars.iv1792.i, -2 ; 2 uses
  %i.bpw = and i64 %indvars.iv.next1793.i.1, 4294967295
  %.not1331.i.1 = icmp eq i64 %i.bpw, 0
  br i1 %.not1331.i.1, label %._crit_edge1574.i, label %.lr.ph1573.i, !llvm.loop !111

._crit_edge1574.i:                                ; preds = %.lr.ph1573.i.prol.loopexit, %.lr.ph1573.i, %middle.block562, %vec.epilog.middle.block577, %.preheader1384.i
  %i.bpx = sext i32 %i.blo to i64
  %i.bpy = getelementptr inbounds i8, ptr %i.ai, i64 %i.bpx
  store i8 %i.bls, ptr %i.bpy, align 1, !tbaa !34
  br label %.loopexit1387.i

bb.fy:                                            ; preds = %bb.fw
  %i.bpz = lshr i32 %i.blm, 4
  %i.bqa = and i32 %i.blm, 15                     ; 2 uses
  %i.bqb = zext nneg i32 %i.bpz to i64            ; 2 uses
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bqb ; 3 uses
  %i.bqd = load i32, ptr %i.bqc, align 4, !tbaa !4 ; 3 uses
  %i.bqe = add nsw i32 %i.bqd, %i.bqa
  %i.bqf = sext i32 %i.bqe to i64
  %i.bqg = getelementptr inbounds i8, ptr %i.ai, i64 %i.bqf
  %i.bqh = load i8, ptr %i.bqg, align 1, !tbaa !34 ; 3 uses
  %.not1675.i = icmp eq i32 %i.bqa, 0
  br i1 %.not1675.i, label %.lr.ph1561.preheader.i, label %.lr.ph1556.preheader.i

.lr.ph1556.preheader.i:                           ; preds = %bb.fy
  %i.bqi = sext i32 %i.bqd to i64
  %i.bqj = add i32 %.01097.i, 15
  %i.bqk = and i32 %i.bqj, 15
  %i.bql = zext nneg i32 %i.bqk to i64
  %i.bqm = add nsw i64 %i.bqi, %i.bql
  br label %.lr.ph1556.i

.lr.ph1556.i:                                     ; preds = %.lr.ph1556.i, %.lr.ph1556.preheader.i
  %indvars.iv1770.i = phi i64 [ %i.bqm, %.lr.ph1556.preheader.i ], [ %indvars.iv.next1771.i, %.lr.ph1556.i ] ; 2 uses
  %i.bqn = getelementptr i8, ptr %i.ai, i64 %indvars.iv1770.i ; 2 uses
  %i.bqo = getelementptr i8, ptr %i.bqn, i64 -1
  %i.bqp = load i8, ptr %i.bqo, align 1, !tbaa !34
  store i8 %i.bqp, ptr %i.bqn, align 1, !tbaa !34
  %indvars.iv.next1771.i = add nsw i64 %indvars.iv1770.i, -1 ; 2 uses
  %i.bqq = load i32, ptr %i.bqc, align 4, !tbaa !4 ; 2 uses
  %i.bqr = sext i32 %i.bqq to i64
  %i.bqs = icmp sgt i64 %indvars.iv.next1771.i, %i.bqr
  br i1 %i.bqs, label %.lr.ph1556.i, label %.lr.ph1561.preheader.i, !llvm.loop !112

.lr.ph1561.preheader.i:                           ; preds = %.lr.ph1556.i, %bb.fy
  %.lcssa1452.i = phi i32 [ %i.bqd, %bb.fy ], [ %i.bqq, %.lr.ph1556.i ]
  %i.bqt = add nsw i32 %.lcssa1452.i, 1
  store i32 %i.bqt, ptr %i.bqc, align 4, !tbaa !4
  br label %.lr.ph1561.i

.lr.ph1561.i:                                     ; preds = %.lr.ph1561.i, %.lr.ph1561.preheader.i
  %indvars.iv1774.i.a = phi i64 [ %i.bqb, %.lr.ph1561.preheader.i ], [ %indvars.iv.next1775.i.a, %.lr.ph1561.i ] ; 3 uses
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1774.i.a ; 3 uses
  %i.bqv = load i32, ptr %i.bqu, align 4, !tbaa !4
  %i.bqw = add nsw i32 %i.bqv, -1                 ; 2 uses
  store i32 %i.bqw, ptr %i.bqu, align 4, !tbaa !4
  %i.bqx = getelementptr i8, ptr %i.bqu, i64 -4
  %i.bqy = load i32, ptr %i.bqx, align 4, !tbaa !4
  %i.bqz = sext i32 %i.bqy to i64
  %i.bra = getelementptr i8, ptr %i.ai, i64 %i.bqz
  %i.brb = getelementptr i8, ptr %i.bra, i64 15
  %i.brc = load i8, ptr %i.brb, align 1, !tbaa !34
  %i.brd = sext i32 %i.bqw to i64
  %i.bre = getelementptr inbounds i8, ptr %i.ai, i64 %i.brd
  store i8 %i.brc, ptr %i.bre, align 1, !tbaa !34
  %indvars.iv.next1775.i.a = add nsw i64 %indvars.iv1774.i.a, -1
  %i.brf = icmp samesign ugt i64 %indvars.iv1774.i.a, 1
  br i1 %i.brf, label %.lr.ph1561.i, label %._crit_edge1562.i, !llvm.loop !113

._crit_edge1562.i:                                ; preds = %.lr.ph1561.i
  %i.brg = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.brh = add nsw i32 %i.brg, -1                 ; 2 uses
  store i32 %i.brh, ptr %i.aj, align 4, !tbaa !4
  %i.bri = sext i32 %i.brh to i64
  %i.brj = getelementptr inbounds i8, ptr %i.ai, i64 %i.bri
  store i8 %i.bqh, ptr %i.brj, align 1, !tbaa !34
  %i.brk = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.brl = icmp eq i32 %i.brk, 0
  br i1 %i.brl, label %.preheader1385.i, label %.loopexit1387.i

.preheader1385.i:                                 ; preds = %._crit_edge1562.i, %.preheader1385.i
  %indvars.iv1782.i = phi i64 [ %indvars.iv.next1783.i, %.preheader1385.i ], [ 15, %._crit_edge1562.i ] ; 3 uses
  %indvars.iv1780.i = phi i64 [ %indvars.iv.next1781.i, %.preheader1385.i ], [ 4095, %._crit_edge1562.i ] ; 3 uses
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1782.i ; 17 uses
  %i.brn = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bro = sext i32 %i.brn to i64
  %i.brp = getelementptr i8, ptr %i.ai, i64 %i.bro
  %i.brq = getelementptr i8, ptr %i.brp, i64 15
  %i.brr = load i8, ptr %i.brq, align 1, !tbaa !34
  %i.brs = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv1780.i ; 15 uses
  store i8 %i.brr, ptr %i.brs, align 1, !tbaa !34
  %i.brt = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bru = sext i32 %i.brt to i64
  %i.brv = getelementptr i8, ptr %i.ai, i64 %i.bru
  %i.brw = getelementptr i8, ptr %i.brv, i64 14
  %i.brx = load i8, ptr %i.brw, align 1, !tbaa !34
  %i.bry = getelementptr i8, ptr %i.brs, i64 -1
  store i8 %i.brx, ptr %i.bry, align 1, !tbaa !34
  %i.brz = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bsa = sext i32 %i.brz to i64
  %i.bsb = getelementptr i8, ptr %i.ai, i64 %i.bsa
  %i.bsc = getelementptr i8, ptr %i.bsb, i64 13
  %i.bsd = load i8, ptr %i.bsc, align 1, !tbaa !34
  %i.bse = getelementptr i8, ptr %i.brs, i64 -2
  store i8 %i.bsd, ptr %i.bse, align 1, !tbaa !34
  %i.bsf = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bsg = sext i32 %i.bsf to i64
  %i.bsh = getelementptr i8, ptr %i.ai, i64 %i.bsg
  %i.bsi = getelementptr i8, ptr %i.bsh, i64 12
  %i.bsj = load i8, ptr %i.bsi, align 1, !tbaa !34
  %i.bsk = getelementptr i8, ptr %i.brs, i64 -3
  store i8 %i.bsj, ptr %i.bsk, align 1, !tbaa !34
  %i.bsl = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bsm = sext i32 %i.bsl to i64
  %i.bsn = getelementptr i8, ptr %i.ai, i64 %i.bsm
  %i.bso = getelementptr i8, ptr %i.bsn, i64 11
  %i.bsp = load i8, ptr %i.bso, align 1, !tbaa !34
  %i.bsq = getelementptr i8, ptr %i.brs, i64 -4
  store i8 %i.bsp, ptr %i.bsq, align 1, !tbaa !34
  %i.bsr = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bss = sext i32 %i.bsr to i64
  %i.bst = getelementptr i8, ptr %i.ai, i64 %i.bss
  %i.bsu = getelementptr i8, ptr %i.bst, i64 10
  %i.bsv = load i8, ptr %i.bsu, align 1, !tbaa !34
  %i.bsw = getelementptr i8, ptr %i.brs, i64 -5
  store i8 %i.bsv, ptr %i.bsw, align 1, !tbaa !34
  %i.bsx = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = getelementptr i8, ptr %i.ai, i64 %i.bsy
  %i.bta = getelementptr i8, ptr %i.bsz, i64 9
  %i.btb = load i8, ptr %i.bta, align 1, !tbaa !34
  %i.btc = getelementptr i8, ptr %i.brs, i64 -6
  store i8 %i.btb, ptr %i.btc, align 1, !tbaa !34
  %i.btd = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr i8, ptr %i.ai, i64 %i.bte
  %i.btg = getelementptr i8, ptr %i.btf, i64 8
  %i.bth = load i8, ptr %i.btg, align 1, !tbaa !34
  %i.bti = getelementptr i8, ptr %i.brs, i64 -7
  store i8 %i.bth, ptr %i.bti, align 1, !tbaa !34
  %i.btj = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.btk = sext i32 %i.btj to i64
  %i.btl = getelementptr i8, ptr %i.ai, i64 %i.btk
  %i.btm = getelementptr i8, ptr %i.btl, i64 7
  %i.btn = load i8, ptr %i.btm, align 1, !tbaa !34
  %i.bto = getelementptr i8, ptr %i.brs, i64 -8
  store i8 %i.btn, ptr %i.bto, align 1, !tbaa !34
  %i.btp = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.btq = sext i32 %i.btp to i64
  %i.btr = getelementptr i8, ptr %i.ai, i64 %i.btq
  %i.bts = getelementptr i8, ptr %i.btr, i64 6
  %i.btt = load i8, ptr %i.bts, align 1, !tbaa !34
  %i.btu = getelementptr i8, ptr %i.brs, i64 -9
  store i8 %i.btt, ptr %i.btu, align 1, !tbaa !34
  %i.btv = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.btw = sext i32 %i.btv to i64
  %i.btx = getelementptr i8, ptr %i.ai, i64 %i.btw
  %i.bty = getelementptr i8, ptr %i.btx, i64 5
  %i.btz = load i8, ptr %i.bty, align 1, !tbaa !34
  %i.bua = getelementptr i8, ptr %i.brs, i64 -10
  store i8 %i.btz, ptr %i.bua, align 1, !tbaa !34
  %i.bub = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.buc = sext i32 %i.bub to i64
  %i.bud = getelementptr i8, ptr %i.ai, i64 %i.buc
  %i.bue = getelementptr i8, ptr %i.bud, i64 4
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !34
  %i.bug = getelementptr i8, ptr %i.brs, i64 -11
  store i8 %i.buf, ptr %i.bug, align 1, !tbaa !34
  %i.buh = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bui = sext i32 %i.buh to i64
  %i.buj = getelementptr i8, ptr %i.ai, i64 %i.bui
  %i.buk = getelementptr i8, ptr %i.buj, i64 3
  %i.bul = load i8, ptr %i.buk, align 1, !tbaa !34
  %i.bum = getelementptr i8, ptr %i.brs, i64 -12
  store i8 %i.bul, ptr %i.bum, align 1, !tbaa !34
  %i.bun = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.buo = sext i32 %i.bun to i64
  %i.bup = getelementptr i8, ptr %i.ai, i64 %i.buo
  %i.buq = getelementptr i8, ptr %i.bup, i64 2
  %i.bur = load i8, ptr %i.buq, align 1, !tbaa !34
  %i.bus = getelementptr i8, ptr %i.brs, i64 -13
  store i8 %i.bur, ptr %i.bus, align 1, !tbaa !34
  %i.but = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.buu = sext i32 %i.but to i64
  %i.buv = getelementptr i8, ptr %i.ai, i64 %i.buu
  %i.buw = getelementptr i8, ptr %i.buv, i64 1
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !34
  %i.buy = getelementptr i8, ptr %i.brs, i64 -14
  store i8 %i.bux, ptr %i.buy, align 1, !tbaa !34
  %indvars.iv.next1777.14.i = add nsw i64 %indvars.iv1780.i, -15 ; 2 uses
  %i.buz = load i32, ptr %i.brm, align 4, !tbaa !4
  %i.bva = sext i32 %i.buz to i64
  %i.bvb = getelementptr inbounds i8, ptr %i.ai, i64 %i.bva
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !34
  %i.bvd = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1777.14.i
  store i8 %i.bvc, ptr %i.bvd, align 1, !tbaa !34
  %i.bve = trunc nsw i64 %indvars.iv.next1777.14.i to i32
  %indvars.iv.next1781.i = add nsw i64 %indvars.iv1780.i, -16
  store i32 %i.bve, ptr %i.brm, align 4, !tbaa !4
  %indvars.iv.next1783.i = add nsw i64 %indvars.iv1782.i, -1
  %.not2003.i = icmp eq i64 %indvars.iv1782.i, 0
  br i1 %.not2003.i, label %.loopexit1387.i, label %.preheader1385.i, !llvm.loop !114

.loopexit1387.i:                                  ; preds = %.preheader1385.i, %._crit_edge1562.i, %._crit_edge1574.i
  %.0920.i = phi i8 [ %i.bls, %._crit_edge1574.i ], [ %i.bqh, %._crit_edge1562.i ], [ %i.bqh, %.preheader1385.i ]
  %i.bvf = zext i8 %.0920.i to i64
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bvf
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !34 ; 3 uses
  %i.bvi = zext i8 %i.bvh to i64
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bvi ; 2 uses
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !4
  %i.bvl = add nsw i32 %i.bvk, 1
  store i32 %i.bvl, ptr %i.bvj, align 4, !tbaa !4
  %i.bvm = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1332.i = icmp eq i8 %i.bvm, 0
  %i.bvn = sext i32 %.31121.i to i64              ; 2 uses
  br i1 %.not1332.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %.loopexit1387.i
  %i.bvo = zext i8 %i.bvh to i16
  %i.bvp = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.bvq = getelementptr inbounds [2 x i8], ptr %i.bvp, i64 %i.bvn
  store i16 %i.bvo, ptr %i.bvq, align 2, !tbaa !42
  br label %bb.gb

bb.ga:                                            ; preds = %.loopexit1387.i
  %i.bvr = zext i8 %i.bvh to i32
  %i.bvs = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bvt = getelementptr inbounds [4 x i8], ptr %i.bvs, i64 %i.bvn
  store i32 %i.bvr, ptr %i.bvt, align 4, !tbaa !4
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.bvu = add nsw i32 %.31121.i, 1               ; 2 uses
  %i.bvv = icmp eq i32 %.41086.i, 0
  br i1 %i.bvv, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.bvw = add nsw i32 %.41071.i, 1               ; 4 uses
  %.not1333.i = icmp slt i32 %i.bvw, %.121044.i
  br i1 %.not1333.i, label %bb.gd, label %BZ2_decompress.exit

bb.gd:                                            ; preds = %bb.gc
  %i.bvx = sext i32 %i.bvw to i64
  %i.bvy = getelementptr inbounds i8, ptr %i.ab, i64 %i.bvx
  %i.bvz = load i8, ptr %i.bvy, align 1, !tbaa !34 ; 2 uses
  %i.bwa = zext i8 %i.bvz to i32
  %i.bwb = zext i8 %i.bvz to i64                  ; 4 uses
  %i.bwc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bwb
  %i.bwd = load i32, ptr %i.bwc, align 4, !tbaa !4
  %i.bwe = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bwb
  %i.bwf = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bwb
  %i.bwg = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bwb
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.101267.i = phi i32 [ %i.bwa, %bb.gd ], [ %.41261.i, %bb.gb ]
  %.101252.i = phi i32 [ %i.bwd, %bb.gd ], [ %.41246.i, %bb.gb ] ; 2 uses
  %.101237.i = phi ptr [ %i.bwe, %bb.gd ], [ %.41231.i, %bb.gb ]
  %.101222.i = phi ptr [ %i.bwg, %bb.gd ], [ %.41216.i, %bb.gb ]
  %.101207.i = phi ptr [ %i.bwf, %bb.gd ], [ %.41201.i, %bb.gb ]
  %.101092.i = phi i32 [ 50, %bb.gd ], [ %.41086.i, %bb.gb ]
  %.101077.i = phi i32 [ %i.bvw, %bb.gd ], [ %.41071.i, %bb.gb ]
  %i.bwh = add nsw i32 %.101092.i, -1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.at
  %i.bwi = phi i32 [ %i.bgz, %bb.ge ], [ %.pre1872.i.a, %bb.at ] ; 3 uses
  %.71279.i = phi i32 [ %.21274.i, %bb.ge ], [ %.pre1878.i.a, %bb.at ] ; 3 uses
  %.111268.i = phi i32 [ %.101267.i, %bb.ge ], [ %.pre1880.i.a, %bb.at ] ; 3 uses
  %.111253.i = phi i32 [ %.101252.i, %bb.ge ], [ %.pre1882.i.a, %bb.at ] ; 3 uses
  %.111238.i = phi ptr [ %.101237.i, %bb.ge ], [ %.pre1884.i.a, %bb.at ] ; 3 uses
  %.111223.i = phi ptr [ %.101222.i, %bb.ge ], [ %.pre1886.i.a, %bb.at ] ; 3 uses
  %.111208.i = phi ptr [ %.101207.i, %bb.ge ], [ %.pre1888.i, %bb.at ] ; 3 uses
  %.71193.i = phi i32 [ %.21188.i, %bb.ge ], [ %.pre1876.i.a, %bb.at ] ; 2 uses
  %.81182.i = phi i32 [ %.101252.i, %bb.ge ], [ %.pre1874.i.a, %bb.at ] ; 7 uses
  %.151170.i = phi i32 [ %.101165.i, %bb.ge ], [ %.pre1870.i.a, %bb.at ] ; 3 uses
  %.51151.i = phi i32 [ %.01146.i, %bb.ge ], [ %.pre1868.i.a, %bb.at ] ; 3 uses
  %.91142.i = phi i32 [ %.01133.i, %bb.ge ], [ %.pre1866.i.a, %bb.at ] ; 3 uses
  %.111129.i = phi i32 [ %i.bvu, %bb.ge ], [ %.pre1864.i.a, %bb.at ] ; 3 uses
  %.81114.i = phi i32 [ %.31109.i, %bb.ge ], [ %.pre1862.i.a, %bb.at ] ; 3 uses
  %.51102.i = phi i32 [ %.01097.i, %bb.ge ], [ %.pre1860.i, %bb.at ] ; 3 uses
  %.111093.i = phi i32 [ %i.bwh, %bb.ge ], [ %.pre1858.i.a, %bb.at ] ; 3 uses
  %.111078.i = phi i32 [ %.101077.i, %bb.ge ], [ %.pre1856.i.a, %bb.at ] ; 3 uses
  %.81061.i = phi i32 [ %.31056.i, %bb.ge ], [ %.pre1854.i.a, %bb.at ] ; 3 uses
  %.171049.i = phi i32 [ %.121044.i, %bb.ge ], [ %.pre1852.i.a, %bb.at ] ; 3 uses
  %.181028.i = phi i32 [ %.131023.i, %bb.ge ], [ %.pre1850.i.a, %bb.at ] ; 3 uses
  %.191002.i = phi i32 [ %.14997.i, %bb.ge ], [ %.pre1848.i.a, %bb.at ] ; 3 uses
  %.15979.i = phi i32 [ %.10974.i, %bb.ge ], [ %.pre1846.i.a, %bb.at ] ; 3 uses
  %.23958.i = phi i32 [ %.18953.i, %bb.ge ], [ %.pre1844.i.a, %bb.at ] ; 3 uses
  %.29.i = phi i32 [ %.24.i, %bb.ge ], [ %.pre.i36, %bb.at ] ; 3 uses
  store i32 40, ptr %i.g, align 8, !tbaa !19
  %.promoted1575.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %.not13341576.i = icmp slt i32 %.promoted1575.i, %.81182.i
  br i1 %.not13341576.i, label %.lr.ph1578.i, label %.._crit_edge1579_crit_edge.i

.._crit_edge1579_crit_edge.i:                     ; preds = %bb.gf
  %.pre1922.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1579.i

.lr.ph1578.i:                                     ; preds = %bb.gf
  %i.bwj = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwj, i64 8 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwj, i64 12 ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwj, i64 16 ; 2 uses
  %.promoted1582.i = load i32, ptr %i.bwk, align 8, !tbaa !76 ; 2 uses
  %i.bwn = icmp eq i32 %.promoted1582.i, 0
  br i1 %i.bwn, label %BZ2_decompress.exit, label %.lr.ph460.preheader

.lr.ph460.preheader:                              ; preds = %.lr.ph1578.i
  %.promoted836 = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted837 = load ptr, ptr %i.bwj, align 8, !tbaa !77
  %.promoted838 = load i32, ptr %i.bwl, align 4, !tbaa !23
  br label %.lr.ph460

._crit_edge1579.i:                                ; preds = %bb.gi, %.._crit_edge1579_crit_edge.i
  %i.bwo = phi i32 [ %.pre1922.i, %.._crit_edge1579_crit_edge.i ], [ %i.bxc, %bb.gi ]
  %.lcssa1448.i = phi i32 [ %.promoted1575.i, %.._crit_edge1579_crit_edge.i ], [ %i.bxd, %bb.gi ]
  %i.bwp = sub nsw i32 %.lcssa1448.i, %.81182.i   ; 3 uses
  %i.bwq = lshr i32 %i.bwo, %i.bwp
  %notmask1335.i = shl nsw i32 -1, %.81182.i
  %i.bwr = xor i32 %notmask1335.i, -1
  %i.bws = and i32 %i.bwq, %i.bwr
  store i32 %i.bwp, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.gj

bb.gg:                                            ; preds = %bb.gi
  %i.bwt = icmp eq i32 %i.bxf, 0
  br i1 %i.bwt, label %BZ2_decompress.exit, label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph460.preheader, %bb.gg
  %i.bwu = phi i32 [ %i.bxg, %bb.gg ], [ %.promoted838, %.lr.ph460.preheader ]
  %i.bwv = phi ptr [ %i.bxe, %bb.gg ], [ %.promoted837, %.lr.ph460.preheader ] ; 2 uses
  %i.bww = phi i32 [ %i.bxc, %bb.gg ], [ %.promoted836, %.lr.ph460.preheader ]
  %i.bwx = phi i32 [ %i.bxd, %bb.gg ], [ %.promoted1575.i, %.lr.ph460.preheader ]
  %i.bwy = phi i32 [ %i.bxf, %bb.gg ], [ %.promoted1582.i, %.lr.ph460.preheader ]
  %i.bwz = shl i32 %i.bww, 8
  %i.bxa = load i8, ptr %i.bwv, align 1, !tbaa !34
  %i.bxb = zext i8 %i.bxa to i32
  %i.bxc = or disjoint i32 %i.bwz, %i.bxb         ; 3 uses
  store i32 %i.bxc, ptr %i.v, align 8, !tbaa !21
  %i.bxd = add nsw i32 %i.bwx, 8                  ; 4 uses
  store i32 %i.bxd, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwv, i64 1 ; 2 uses
  store ptr %i.bxe, ptr %i.bwj, align 8, !tbaa !77
  %i.bxf = add i32 %i.bwy, -1                     ; 3 uses
  store i32 %i.bxf, ptr %i.bwk, align 8, !tbaa !76
  %i.bxg = add i32 %i.bwu, 1                      ; 3 uses
  store i32 %i.bxg, ptr %i.bwl, align 4, !tbaa !23
  %i.bxh = icmp eq i32 %i.bxg, 0
  br i1 %i.bxh, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.lr.ph460
  %i.bxi = load i32, ptr %i.bwm, align 8, !tbaa !24
  %i.bxj = add i32 %i.bxi, 1
  store i32 %i.bxj, ptr %i.bwm, align 8, !tbaa !24
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %.lr.ph460
  %.not1334.i = icmp slt i32 %i.bxd, %.81182.i
  br i1 %.not1334.i, label %bb.gg, label %._crit_edge1579.i

bb.gj:                                            ; preds = %._crit_edge1586.i, %._crit_edge1579.i
  %i.bxk = phi i32 [ %i.bwi, %._crit_edge1579.i ], [ %i.bxq, %._crit_edge1586.i ] ; 4 uses
  %.promoted15831926.i = phi i32 [ %i.bwp, %._crit_edge1579.i ], [ %i.bxx, %._crit_edge1586.i ]
  %.81280.i = phi i32 [ %.71279.i, %._crit_edge1579.i ], [ %i.bxz, %._crit_edge1586.i ] ; 4 uses
  %.121269.i = phi i32 [ %.111268.i, %._crit_edge1579.i ], [ %.131270.i, %._crit_edge1586.i ] ; 4 uses
  %.121254.i = phi i32 [ %.111253.i, %._crit_edge1579.i ], [ %.131255.i, %._crit_edge1586.i ] ; 4 uses
  %.121239.i = phi ptr [ %.111238.i, %._crit_edge1579.i ], [ %.131240.i, %._crit_edge1586.i ] ; 5 uses
  %.121224.i = phi ptr [ %.111223.i, %._crit_edge1579.i ], [ %.131225.i, %._crit_edge1586.i ] ; 5 uses
  %.121209.i = phi ptr [ %.111208.i, %._crit_edge1579.i ], [ %.131210.i, %._crit_edge1586.i ] ; 5 uses
  %.81194.i = phi i32 [ %i.bws, %._crit_edge1579.i ], [ %i.byb, %._crit_edge1586.i ] ; 6 uses
  %.91183.i = phi i32 [ %.81182.i, %._crit_edge1579.i ], [ %.101184.i, %._crit_edge1586.i ] ; 6 uses
  %.161171.i = phi i32 [ %.151170.i, %._crit_edge1579.i ], [ %.171172.i, %._crit_edge1586.i ] ; 4 uses
  %.61152.i = phi i32 [ %.51151.i, %._crit_edge1579.i ], [ %.71153.i, %._crit_edge1586.i ] ; 4 uses
  %.101143.i = phi i32 [ %.91142.i, %._crit_edge1579.i ], [ %.111144.i, %._crit_edge1586.i ] ; 4 uses
  %.121130.i = phi i32 [ %.111129.i, %._crit_edge1579.i ], [ %.131131.i, %._crit_edge1586.i ] ; 4 uses
  %.91115.i = phi i32 [ %.81114.i, %._crit_edge1579.i ], [ %.101116.i, %._crit_edge1586.i ] ; 4 uses
  %.61103.i = phi i32 [ %.51102.i, %._crit_edge1579.i ], [ %.71104.i, %._crit_edge1586.i ] ; 3 uses
  %.121094.i = phi i32 [ %.111093.i, %._crit_edge1579.i ], [ %.131095.i, %._crit_edge1586.i ] ; 4 uses
  %.121079.i = phi i32 [ %.111078.i, %._crit_edge1579.i ], [ %.131080.i, %._crit_edge1586.i ] ; 4 uses
  %.91062.i = phi i32 [ %.81061.i, %._crit_edge1579.i ], [ %.101063.i, %._crit_edge1586.i ] ; 4 uses
  %.181050.i = phi i32 [ %.171049.i, %._crit_edge1579.i ], [ %.191051.i, %._crit_edge1586.i ] ; 4 uses
  %.191029.i = phi i32 [ %.181028.i, %._crit_edge1579.i ], [ %.201030.i, %._crit_edge1586.i ] ; 4 uses
  %.201003.i = phi i32 [ %.191002.i, %._crit_edge1579.i ], [ %.211004.i, %._crit_edge1586.i ] ; 4 uses
  %.16980.i = phi i32 [ %.15979.i, %._crit_edge1579.i ], [ %.17981.i, %._crit_edge1586.i ] ; 4 uses
  %.24959.i = phi i32 [ %.23958.i, %._crit_edge1579.i ], [ %.25960.i, %._crit_edge1586.i ] ; 4 uses
  %.30.i = phi i32 [ %.29.i, %._crit_edge1579.i ], [ %.31.i, %._crit_edge1586.i ] ; 4 uses
  %i.bxl = icmp sgt i32 %.91183.i, 20
  br i1 %i.bxl, label %BZ2_decompress.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bxm = sext i32 %.91183.i to i64              ; 2 uses
  %i.bxn = getelementptr inbounds [4 x i8], ptr %.121239.i, i64 %i.bxm
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !4
  %.not1336.i = icmp sgt i32 %.81194.i, %i.bxo
  br i1 %.not1336.i, label %bb.gl, label %bb.gr

bb.gl:                                            ; preds = %bb.gk
  %i.bxp = add nsw i32 %.91183.i, 1
  br label %bb.gm
end_hunk_0
