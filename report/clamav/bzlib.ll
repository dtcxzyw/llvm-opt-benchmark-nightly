inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  br i1 %min.epilog.iters.check573, label %.lr.ph1601.i.preheader, label %vec.epilog.ph574, !prof !79

vec.epilog.ph574:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check572
  %vec.epilog.resume.val568 = phi i64 [ %n.vec560, %vec.epilog.iter.check572 ], [ 0, %vector.main.loop.iter.check557 ]
  %n.vec575 = and i64 %i.bmq, 8589934588          ; 3 uses
  %i.bnr = sub nsw i64 %i.bmn, %n.vec575
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph574
  %index577 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph574 ], [ %index.next579, %vec.epilog.vector.body576 ] ; 2 uses
  %i.bns = trunc i64 %index577 to i32
  %i.bnt = sub i32 %.0942.lcssa2062.i, %i.bns
  %i.bnu = add i32 %i.blu, %i.bnt                 ; 2 uses
  %i.bnv = add i32 %i.bnu, -1
  %i.bnw = zext i32 %i.bnv to i64
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bnw
  %i.bny = getelementptr inbounds i8, ptr %i.bnx, i64 -3
  %wide.load578 = load <4 x i8>, ptr %i.bny, align 1, !tbaa !34
  %i.bnz = zext i32 %i.bnu to i64
  %i.boa = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bnz
  %i.bob = getelementptr inbounds i8, ptr %i.boa, i64 -3
  store <4 x i8> %wide.load578, ptr %i.bob, align 1, !tbaa !34
  %index.next579 = add nuw i64 %index577, 4       ; 2 uses
  %i.boc = icmp eq i64 %index.next579, %n.vec575
  br i1 %i.boc, label %vec.epilog.middle.block580, label %vec.epilog.vector.body576, !llvm.loop !92

vec.epilog.middle.block580:                       ; preds = %vec.epilog.vector.body576
  %cmp.n581 = icmp eq i64 %i.bmq, %n.vec575
  br i1 %cmp.n581, label %._crit_edge1602.i, label %.lr.ph1601.i.preheader

.lr.ph1601.i.preheader:                           ; preds = %vector.memcheck553, %vector.scevcheck552, %iter.check570, %vec.epilog.iter.check572, %vec.epilog.middle.block580
  %indvars.iv1826.i.ph = phi i64 [ %i.bmn, %iter.check570 ], [ %i.bmn, %vector.scevcheck552 ], [ %i.bmn, %vector.memcheck553 ], [ %i.bnd, %vec.epilog.iter.check572 ], [ %i.bnr, %vec.epilog.middle.block580 ] ; 4 uses
  %i.bod = trunc i64 %indvars.iv1826.i.ph to i32  ; 2 uses
  %xtraiter742 = and i32 %i.bod, 1
  %lcmp.mod743.not = icmp eq i32 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph1601.i.prol.loopexit, label %.lr.ph1601.i.prol

.lr.ph1601.i.prol:                                ; preds = %.lr.ph1601.i.preheader
  %i.boe = trunc nuw i64 %indvars.iv1826.i.ph to i32
  %i.bof = add i32 %i.blu, %i.boe                 ; 2 uses
  %i.bog = add i32 %i.bof, -1
  %i.boh = zext i32 %i.bog to i64
  %i.boi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.boh
  %i.boj = load i8, ptr %i.boi, align 1, !tbaa !34
  %i.bok = zext i32 %i.bof to i64
  %i.bol = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bok
  store i8 %i.boj, ptr %i.bol, align 1, !tbaa !34
  %indvars.iv.next1827.i.prol = add nsw i64 %indvars.iv1826.i.ph, -1
  br label %.lr.ph1601.i.prol.loopexit

.lr.ph1601.i.prol.loopexit:                       ; preds = %.lr.ph1601.i.prol, %.lr.ph1601.i.preheader
  %indvars.iv1826.i.unr = phi i64 [ %indvars.iv1826.i.ph, %.lr.ph1601.i.preheader ], [ %indvars.iv.next1827.i.prol, %.lr.ph1601.i.prol ]
  %i.bom = icmp eq i32 %i.bod, 1
  br i1 %i.bom, label %._crit_edge1602.i, label %.lr.ph1601.i.preheader.new

.lr.ph1601.i.preheader.new:                       ; preds = %.lr.ph1601.i.prol.loopexit
  %invariant.op839 = add i32 -1, %i.blu
  br label %.lr.ph1601.i

.lr.ph1597.i:                                     ; preds = %.lr.ph1597.i, %.lr.ph1597.preheader.i.new
  %indvars.iv1822.i.a = phi i64 [ %indvars.iv1822.i.unr.a, %.lr.ph1597.preheader.i.new ], [ %indvars.iv.next1823.i.3, %.lr.ph1597.i ] ; 5 uses
  %i.bon = trunc i64 %indvars.iv1822.i.a to i32
  %i.boo = add i32 %i.blu, %i.bon
  %i.bop = sext i32 %i.boo to i64
  %i.boq = getelementptr i8, ptr %i.ai, i64 %i.bop ; 2 uses
  %i.bor = getelementptr i8, ptr %i.boq, i64 -3
  %i.bos = getelementptr i8, ptr %i.boq, i64 -4
  %i.bot = load <4 x i8>, ptr %i.bos, align 1, !tbaa !34
  store <4 x i8> %i.bot, ptr %i.bor, align 1, !tbaa !34
  %i.bou = trunc i64 %indvars.iv1822.i.a to i32
  %.reass = add i32 %i.bou, %invariant.op
  %i.bov = sext i32 %.reass to i64
  %i.bow = getelementptr i8, ptr %i.ai, i64 %i.bov ; 2 uses
  %i.box = getelementptr i8, ptr %i.bow, i64 -3
  %i.boy = getelementptr i8, ptr %i.bow, i64 -4
  %i.boz = load <4 x i8>, ptr %i.boy, align 1, !tbaa !34
  store <4 x i8> %i.boz, ptr %i.box, align 1, !tbaa !34
  %i.bpa = trunc i64 %indvars.iv1822.i.a to i32
  %.reass836 = add i32 %i.bpa, %invariant.op835
  %i.bpb = sext i32 %.reass836 to i64
  %i.bpc = getelementptr i8, ptr %i.ai, i64 %i.bpb ; 2 uses
  %i.bpd = getelementptr i8, ptr %i.bpc, i64 -3
  %i.bpe = getelementptr i8, ptr %i.bpc, i64 -4
  %i.bpf = load <4 x i8>, ptr %i.bpe, align 1, !tbaa !34
  store <4 x i8> %i.bpf, ptr %i.bpd, align 1, !tbaa !34
  %i.bpg = trunc i64 %indvars.iv1822.i.a to i32
  %.reass838 = add i32 %i.bpg, %invariant.op837
  %i.bph = sext i32 %.reass838 to i64
  %i.bpi = getelementptr i8, ptr %i.ai, i64 %i.bph ; 2 uses
  %i.bpj = getelementptr i8, ptr %i.bpi, i64 -3
  %i.bpk = getelementptr i8, ptr %i.bpi, i64 -4
  %i.bpl = load <4 x i8>, ptr %i.bpk, align 1, !tbaa !34
  store <4 x i8> %i.bpl, ptr %i.bpj, align 1, !tbaa !34
  %indvars.iv.next1823.i.3 = add nsw i64 %indvars.iv1822.i.a, -16 ; 2 uses
  %i.bpm = trunc i64 %indvars.iv.next1823.i.3 to i32 ; 2 uses
  %i.bpn = icmp ugt i32 %i.bpm, 3
  br i1 %i.bpn, label %.lr.ph1597.i, label %.preheader1410.i

.lr.ph1601.i:                                     ; preds = %.lr.ph1601.i, %.lr.ph1601.i.preheader.new
  %indvars.iv1826.i = phi i64 [ %indvars.iv1826.i.unr, %.lr.ph1601.i.preheader.new ], [ %indvars.iv.next1827.i.1, %.lr.ph1601.i ] ; 3 uses
  %i.bpo = trunc nuw i64 %indvars.iv1826.i to i32
  %i.bpp = add i32 %i.blu, %i.bpo                 ; 2 uses
  %i.bpq = add i32 %i.bpp, -1
  %i.bpr = zext i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpr
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !34
  %i.bpu = zext i32 %i.bpp to i64
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpu
  store i8 %i.bpt, ptr %i.bpv, align 1, !tbaa !34
  %i.bpw = trunc i64 %indvars.iv1826.i to i32
  %.reass840 = add i32 %i.bpw, %invariant.op839   ; 2 uses
  %i.bpx = add i32 %.reass840, -1
  %i.bpy = zext i32 %i.bpx to i64
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bpy
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !34
  %i.bqb = zext i32 %.reass840 to i64
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bqb
  store i8 %i.bqa, ptr %i.bqc, align 1, !tbaa !34
  %indvars.iv.next1827.i.1 = add nsw i64 %indvars.iv1826.i, -2 ; 2 uses
  %i.bqd = and i64 %indvars.iv.next1827.i.1, 4294967295
  %.not1351.i.1 = icmp eq i64 %i.bqd, 0
  br i1 %.not1351.i.1, label %._crit_edge1602.i, label %.lr.ph1601.i, !llvm.loop !93

._crit_edge1602.i:                                ; preds = %.lr.ph1601.i.prol.loopexit, %.lr.ph1601.i, %middle.block566, %vec.epilog.middle.block580, %.preheader1410.i
  %i.bqe = sext i32 %i.blu to i64
  %i.bqf = getelementptr inbounds i8, ptr %i.ai, i64 %i.bqe
  store i8 %i.bly, ptr %i.bqf, align 1, !tbaa !34
  br label %.loopexit1413.i

bb.fw:                                            ; preds = %bb.fu
  %i.bqg = lshr i32 %i.bls, 4
  %i.bqh = and i32 %i.bls, 15                     ; 2 uses
  %i.bqi = zext nneg i32 %i.bqg to i64            ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bqi ; 3 uses
  %i.bqk = load i32, ptr %i.bqj, align 4, !tbaa !40 ; 3 uses
  %i.bql = add nsw i32 %i.bqk, %i.bqh
  %i.bqm = sext i32 %i.bql to i64
  %i.bqn = getelementptr inbounds i8, ptr %i.ai, i64 %i.bqm
  %i.bqo = load i8, ptr %i.bqn, align 1, !tbaa !34 ; 3 uses
  %.not1705.i = icmp eq i32 %i.bqh, 0
  br i1 %.not1705.i, label %.lr.ph1589.preheader.i, label %.lr.ph1584.preheader.i

.lr.ph1584.preheader.i:                           ; preds = %bb.fw
  %i.bqp = sext i32 %i.bqk to i64
  %i.bqq = add i32 %.01116.i, 15
  %i.bqr = and i32 %i.bqq, 15
  %i.bqs = zext nneg i32 %i.bqr to i64
  %i.bqt = add nsw i64 %i.bqp, %i.bqs
  br label %.lr.ph1584.i

.lr.ph1584.i:                                     ; preds = %.lr.ph1584.i, %.lr.ph1584.preheader.i
  %indvars.iv1804.i = phi i64 [ %i.bqt, %.lr.ph1584.preheader.i ], [ %indvars.iv.next1805.i, %.lr.ph1584.i ] ; 2 uses
  %i.bqu = getelementptr i8, ptr %i.ai, i64 %indvars.iv1804.i ; 2 uses
  %i.bqv = getelementptr i8, ptr %i.bqu, i64 -1
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !34
  store i8 %i.bqw, ptr %i.bqu, align 1, !tbaa !34
  %indvars.iv.next1805.i = add nsw i64 %indvars.iv1804.i, -1 ; 2 uses
  %i.bqx = load i32, ptr %i.bqj, align 4, !tbaa !40 ; 2 uses
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = icmp sgt i64 %indvars.iv.next1805.i, %i.bqy
  br i1 %i.bqz, label %.lr.ph1584.i, label %.lr.ph1589.preheader.i

.lr.ph1589.preheader.i:                           ; preds = %.lr.ph1584.i, %bb.fw
  %.lcssa1480.i = phi i32 [ %i.bqk, %bb.fw ], [ %i.bqx, %.lr.ph1584.i ]
  %i.bra = add nsw i32 %.lcssa1480.i, 1
  store i32 %i.bra, ptr %i.bqj, align 4, !tbaa !40
  br label %.lr.ph1589.i

.lr.ph1589.i:                                     ; preds = %.lr.ph1589.i, %.lr.ph1589.preheader.i
  %indvars.iv1808.i.a = phi i64 [ %i.bqi, %.lr.ph1589.preheader.i ], [ %indvars.iv.next1809.i.a, %.lr.ph1589.i ] ; 3 uses
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1808.i.a ; 3 uses
  %i.brc = load i32, ptr %i.brb, align 4, !tbaa !40
  %i.brd = add nsw i32 %i.brc, -1                 ; 2 uses
  store i32 %i.brd, ptr %i.brb, align 4, !tbaa !40
  %i.bre = getelementptr i8, ptr %i.brb, i64 -4
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !40
  %i.brg = sext i32 %i.brf to i64
  %i.brh = getelementptr i8, ptr %i.ai, i64 %i.brg
  %i.bri = getelementptr i8, ptr %i.brh, i64 15
  %i.brj = load i8, ptr %i.bri, align 1, !tbaa !34
  %i.brk = sext i32 %i.brd to i64
  %i.brl = getelementptr inbounds i8, ptr %i.ai, i64 %i.brk
  store i8 %i.brj, ptr %i.brl, align 1, !tbaa !34
  %indvars.iv.next1809.i.a = add nsw i64 %indvars.iv1808.i.a, -1
  %i.brm = icmp samesign ugt i64 %indvars.iv1808.i.a, 1
  br i1 %i.brm, label %.lr.ph1589.i, label %._crit_edge1590.i

._crit_edge1590.i:                                ; preds = %.lr.ph1589.i
  %i.brn = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.bro = add nsw i32 %i.brn, -1                 ; 2 uses
  store i32 %i.bro, ptr %i.aj, align 4, !tbaa !40
  %i.brp = sext i32 %i.bro to i64
  %i.brq = getelementptr inbounds i8, ptr %i.ai, i64 %i.brp
  store i8 %i.bqo, ptr %i.brq, align 1, !tbaa !34
  %i.brr = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.brs = icmp eq i32 %i.brr, 0
  br i1 %i.brs, label %.preheader1411.i, label %.loopexit1413.i

.preheader1411.i:                                 ; preds = %._crit_edge1590.i, %.preheader1411.i
  %indvars.iv1816.i = phi i64 [ %indvars.iv.next1817.i, %.preheader1411.i ], [ 15, %._crit_edge1590.i ] ; 3 uses
  %indvars.iv1814.i = phi i64 [ %indvars.iv.next1815.i, %.preheader1411.i ], [ 4095, %._crit_edge1590.i ] ; 3 uses
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1816.i ; 17 uses
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.brv = sext i32 %i.bru to i64
  %i.brw = getelementptr i8, ptr %i.ai, i64 %i.brv
  %i.brx = getelementptr i8, ptr %i.brw, i64 15
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !34
  %i.brz = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv1814.i ; 15 uses
  store i8 %i.bry, ptr %i.brz, align 1, !tbaa !34
  %i.bsa = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bsb = sext i32 %i.bsa to i64
  %i.bsc = getelementptr i8, ptr %i.ai, i64 %i.bsb
  %i.bsd = getelementptr i8, ptr %i.bsc, i64 14
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !34
  %i.bsf = getelementptr i8, ptr %i.brz, i64 -1
  store i8 %i.bse, ptr %i.bsf, align 1, !tbaa !34
  %i.bsg = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = getelementptr i8, ptr %i.ai, i64 %i.bsh
  %i.bsj = getelementptr i8, ptr %i.bsi, i64 13
  %i.bsk = load i8, ptr %i.bsj, align 1, !tbaa !34
  %i.bsl = getelementptr i8, ptr %i.brz, i64 -2
  store i8 %i.bsk, ptr %i.bsl, align 1, !tbaa !34
  %i.bsm = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bsn = sext i32 %i.bsm to i64
  %i.bso = getelementptr i8, ptr %i.ai, i64 %i.bsn
  %i.bsp = getelementptr i8, ptr %i.bso, i64 12
  %i.bsq = load i8, ptr %i.bsp, align 1, !tbaa !34
  %i.bsr = getelementptr i8, ptr %i.brz, i64 -3
  store i8 %i.bsq, ptr %i.bsr, align 1, !tbaa !34
  %i.bss = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bst = sext i32 %i.bss to i64
  %i.bsu = getelementptr i8, ptr %i.ai, i64 %i.bst
  %i.bsv = getelementptr i8, ptr %i.bsu, i64 11
  %i.bsw = load i8, ptr %i.bsv, align 1, !tbaa !34
  %i.bsx = getelementptr i8, ptr %i.brz, i64 -4
  store i8 %i.bsw, ptr %i.bsx, align 1, !tbaa !34
  %i.bsy = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = getelementptr i8, ptr %i.ai, i64 %i.bsz
  %i.btb = getelementptr i8, ptr %i.bta, i64 10
  %i.btc = load i8, ptr %i.btb, align 1, !tbaa !34
  %i.btd = getelementptr i8, ptr %i.brz, i64 -5
  store i8 %i.btc, ptr %i.btd, align 1, !tbaa !34
  %i.bte = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.btf = sext i32 %i.bte to i64
  %i.btg = getelementptr i8, ptr %i.ai, i64 %i.btf
  %i.bth = getelementptr i8, ptr %i.btg, i64 9
  %i.bti = load i8, ptr %i.bth, align 1, !tbaa !34
  %i.btj = getelementptr i8, ptr %i.brz, i64 -6
  store i8 %i.bti, ptr %i.btj, align 1, !tbaa !34
  %i.btk = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.btl = sext i32 %i.btk to i64
  %i.btm = getelementptr i8, ptr %i.ai, i64 %i.btl
  %i.btn = getelementptr i8, ptr %i.btm, i64 8
  %i.bto = load i8, ptr %i.btn, align 1, !tbaa !34
  %i.btp = getelementptr i8, ptr %i.brz, i64 -7
  store i8 %i.bto, ptr %i.btp, align 1, !tbaa !34
  %i.btq = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.btr = sext i32 %i.btq to i64
  %i.bts = getelementptr i8, ptr %i.ai, i64 %i.btr
  %i.btt = getelementptr i8, ptr %i.bts, i64 7
  %i.btu = load i8, ptr %i.btt, align 1, !tbaa !34
  %i.btv = getelementptr i8, ptr %i.brz, i64 -8
  store i8 %i.btu, ptr %i.btv, align 1, !tbaa !34
  %i.btw = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.btx = sext i32 %i.btw to i64
  %i.bty = getelementptr i8, ptr %i.ai, i64 %i.btx
  %i.btz = getelementptr i8, ptr %i.bty, i64 6
  %i.bua = load i8, ptr %i.btz, align 1, !tbaa !34
  %i.bub = getelementptr i8, ptr %i.brz, i64 -9
  store i8 %i.bua, ptr %i.bub, align 1, !tbaa !34
  %i.buc = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bud = sext i32 %i.buc to i64
  %i.bue = getelementptr i8, ptr %i.ai, i64 %i.bud
  %i.buf = getelementptr i8, ptr %i.bue, i64 5
  %i.bug = load i8, ptr %i.buf, align 1, !tbaa !34
  %i.buh = getelementptr i8, ptr %i.brz, i64 -10
  store i8 %i.bug, ptr %i.buh, align 1, !tbaa !34
  %i.bui = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.buj = sext i32 %i.bui to i64
  %i.buk = getelementptr i8, ptr %i.ai, i64 %i.buj
  %i.bul = getelementptr i8, ptr %i.buk, i64 4
  %i.bum = load i8, ptr %i.bul, align 1, !tbaa !34
  %i.bun = getelementptr i8, ptr %i.brz, i64 -11
  store i8 %i.bum, ptr %i.bun, align 1, !tbaa !34
  %i.buo = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bup = sext i32 %i.buo to i64
  %i.buq = getelementptr i8, ptr %i.ai, i64 %i.bup
  %i.bur = getelementptr i8, ptr %i.buq, i64 3
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !34
  %i.but = getelementptr i8, ptr %i.brz, i64 -12
  store i8 %i.bus, ptr %i.but, align 1, !tbaa !34
  %i.buu = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.buv = sext i32 %i.buu to i64
  %i.buw = getelementptr i8, ptr %i.ai, i64 %i.buv
  %i.bux = getelementptr i8, ptr %i.buw, i64 2
  %i.buy = load i8, ptr %i.bux, align 1, !tbaa !34
  %i.buz = getelementptr i8, ptr %i.brz, i64 -13
  store i8 %i.buy, ptr %i.buz, align 1, !tbaa !34
  %i.bva = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = getelementptr i8, ptr %i.ai, i64 %i.bvb
  %i.bvd = getelementptr i8, ptr %i.bvc, i64 1
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !34
  %i.bvf = getelementptr i8, ptr %i.brz, i64 -14
  store i8 %i.bve, ptr %i.bvf, align 1, !tbaa !34
  %indvars.iv.next1811.14.i = add nsw i64 %indvars.iv1814.i, -15 ; 2 uses
  %i.bvg = load i32, ptr %i.brt, align 4, !tbaa !40
  %i.bvh = sext i32 %i.bvg to i64
  %i.bvi = getelementptr inbounds i8, ptr %i.ai, i64 %i.bvh
  %i.bvj = load i8, ptr %i.bvi, align 1, !tbaa !34
  %i.bvk = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1811.14.i
  store i8 %i.bvj, ptr %i.bvk, align 1, !tbaa !34
  %i.bvl = trunc nsw i64 %indvars.iv.next1811.14.i to i32
  %indvars.iv.next1815.i = add nsw i64 %indvars.iv1814.i, -16
  store i32 %i.bvl, ptr %i.brt, align 4, !tbaa !40
  %indvars.iv.next1817.i = add nsw i64 %indvars.iv1816.i, -1
  %.not2044.i = icmp eq i64 %indvars.iv1816.i, 0
  br i1 %.not2044.i, label %.loopexit1413.i, label %.preheader1411.i

.loopexit1413.i:                                  ; preds = %.preheader1411.i, %._crit_edge1590.i, %._crit_edge1602.i
  %.0939.i = phi i8 [ %i.bly, %._crit_edge1602.i ], [ %i.bqo, %._crit_edge1590.i ], [ %i.bqo, %.preheader1411.i ]
  %i.bvm = zext i8 %.0939.i to i64
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bvm
  %i.bvo = load i8, ptr %i.bvn, align 1, !tbaa !34 ; 3 uses
  %i.bvp = zext i8 %i.bvo to i64
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bvp ; 2 uses
  %i.bvr = load i32, ptr %i.bvq, align 4, !tbaa !40
  %i.bvs = add nsw i32 %i.bvr, 1
  store i32 %i.bvs, ptr %i.bvq, align 4, !tbaa !40
  %i.bvt = load i8, ptr %i.h, align 4, !tbaa !27
  %.not1352.i = icmp eq i8 %i.bvt, 0
  %i.bvu = sext i32 %.31140.i to i64              ; 2 uses
  br i1 %.not1352.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.loopexit1413.i
  %i.bvv = zext i8 %i.bvo to i16
  %i.bvw = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.bvx = getelementptr inbounds [2 x i8], ptr %i.bvw, i64 %i.bvu
  store i16 %i.bvv, ptr %i.bvx, align 2, !tbaa !42
  br label %bb.fz

bb.fy:                                            ; preds = %.loopexit1413.i
  %i.bvy = zext i8 %i.bvo to i32
  %i.bvz = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bwa = getelementptr inbounds [4 x i8], ptr %i.bvz, i64 %i.bvu
  store i32 %i.bvy, ptr %i.bwa, align 4, !tbaa !40
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bwb = add nsw i32 %.31140.i, 1               ; 2 uses
  %i.bwc = icmp eq i32 %.41105.i, 0
  br i1 %i.bwc, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.bwd = add nsw i32 %.41090.i, 1               ; 4 uses
  %.not1353.i = icmp slt i32 %i.bwd, %.121063.i
  br i1 %.not1353.i, label %bb.gb, label %BZ2_decompress.exit

bb.gb:                                            ; preds = %bb.ga
  %i.bwe = sext i32 %i.bwd to i64
  %i.bwf = getelementptr inbounds i8, ptr %i.ab, i64 %i.bwe
  %i.bwg = load i8, ptr %i.bwf, align 1, !tbaa !34 ; 2 uses
  %i.bwh = zext i8 %i.bwg to i32
  %i.bwi = zext i8 %i.bwg to i64                  ; 4 uses
  %i.bwj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bwi
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !40
  %i.bwl = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bwi
  %i.bwm = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bwi
  %i.bwn = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bwi
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.101286.i = phi i32 [ %i.bwh, %bb.gb ], [ %.41280.i, %bb.fz ]
  %.101271.i = phi i32 [ %i.bwk, %bb.gb ], [ %.41265.i, %bb.fz ] ; 2 uses
  %.101256.i = phi ptr [ %i.bwl, %bb.gb ], [ %.41250.i, %bb.fz ]
  %.101241.i = phi ptr [ %i.bwn, %bb.gb ], [ %.41235.i, %bb.fz ]
  %.101226.i = phi ptr [ %i.bwm, %bb.gb ], [ %.41220.i, %bb.fz ]
  %.101111.i = phi i32 [ 50, %bb.gb ], [ %.41105.i, %bb.fz ]
  %.101096.i = phi i32 [ %i.bwd, %bb.gb ], [ %.41090.i, %bb.fz ]
  %i.bwo = add nsw i32 %.101111.i, -1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.aq
  %i.bwp = phi i32 [ %i.bhe, %bb.gc ], [ %.pre1915.i.a, %bb.aq ] ; 3 uses
  %.71298.i = phi i32 [ %.21293.i, %bb.gc ], [ %.pre1921.i.a, %bb.aq ] ; 3 uses
  %.111287.i = phi i32 [ %.101286.i, %bb.gc ], [ %.pre1923.i.a, %bb.aq ] ; 3 uses
  %.111272.i = phi i32 [ %.101271.i, %bb.gc ], [ %.pre1925.i.a, %bb.aq ] ; 3 uses
  %.111257.i = phi ptr [ %.101256.i, %bb.gc ], [ %.pre1927.i.a, %bb.aq ] ; 3 uses
  %.111242.i = phi ptr [ %.101241.i, %bb.gc ], [ %.pre1929.i.a, %bb.aq ] ; 3 uses
  %.111227.i = phi ptr [ %.101226.i, %bb.gc ], [ %.pre1931.i, %bb.aq ] ; 3 uses
  %.71212.i = phi i32 [ %.21207.i, %bb.gc ], [ %.pre1919.i.a, %bb.aq ] ; 2 uses
  %.81201.i = phi i32 [ %.101271.i, %bb.gc ], [ %.pre1917.i.a, %bb.aq ] ; 7 uses
  %.151189.i = phi i32 [ %.101184.i, %bb.gc ], [ %.pre1913.i.a, %bb.aq ] ; 3 uses
  %.51170.i = phi i32 [ %.01165.i, %bb.gc ], [ %.pre1911.i.a, %bb.aq ] ; 3 uses
  %.91161.i = phi i32 [ %.01152.i, %bb.gc ], [ %.pre1909.i.a, %bb.aq ] ; 3 uses
  %.111148.i = phi i32 [ %i.bwb, %bb.gc ], [ %.pre1907.i.a, %bb.aq ] ; 3 uses
  %.81133.i = phi i32 [ %.31128.i, %bb.gc ], [ %.pre1905.i.a, %bb.aq ] ; 3 uses
  %.51121.i = phi i32 [ %.01116.i, %bb.gc ], [ %.pre1903.i, %bb.aq ] ; 3 uses
  %.111112.i = phi i32 [ %i.bwo, %bb.gc ], [ %.pre1901.i.a, %bb.aq ] ; 3 uses
  %.111097.i = phi i32 [ %.101096.i, %bb.gc ], [ %.pre1899.i.a, %bb.aq ] ; 3 uses
  %.81080.i = phi i32 [ %.31075.i, %bb.gc ], [ %.pre1897.i.a, %bb.aq ] ; 3 uses
  %.171068.i = phi i32 [ %.121063.i, %bb.gc ], [ %.pre1895.i.a, %bb.aq ] ; 3 uses
  %.181047.i = phi i32 [ %.131042.i, %bb.gc ], [ %.pre1893.i.a, %bb.aq ] ; 3 uses
  %.191021.i = phi i32 [ %.141016.i, %bb.gc ], [ %.pre1891.i.a, %bb.aq ] ; 3 uses
  %.15998.i = phi i32 [ %.10993.i, %bb.gc ], [ %.pre1889.i.a, %bb.aq ] ; 3 uses
  %.23977.i = phi i32 [ %.18972.i, %bb.gc ], [ %.pre1887.i.a, %bb.aq ] ; 3 uses
  %.29.i = phi i32 [ %.24.i, %bb.gc ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 40, ptr %i.g, align 8, !tbaa !19
  %.promoted1603.i = load i32, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20 ; 3 uses
  %.not13541604.i = icmp slt i32 %.promoted1603.i, %.81201.i
  br i1 %.not13541604.i, label %.lr.ph1606.i, label %.._crit_edge1607_crit_edge.i

.._crit_edge1607_crit_edge.i:                     ; preds = %bb.gd
  %.pre1965.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1607.i

.lr.ph1606.i:                                     ; preds = %bb.gd
  %i.bwq = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 8 ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwq, i64 12 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwq, i64 16 ; 2 uses
  %.promoted1610.i = load i32, ptr %i.bwr, align 8, !tbaa !75 ; 2 uses
  %i.bwu = icmp eq i32 %.promoted1610.i, 0
  br i1 %i.bwu, label %BZ2_decompress.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %.lr.ph1606.i
  %.promoted841 = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted842 = load ptr, ptr %i.bwq, align 8, !tbaa !76
  %.promoted843 = load i32, ptr %i.bws, align 4, !tbaa !23
  br label %.lr.ph472

._crit_edge1607.i:                                ; preds = %bb.gg, %.._crit_edge1607_crit_edge.i
  %i.bwv = phi i32 [ %.pre1965.i, %.._crit_edge1607_crit_edge.i ], [ %i.bxj, %bb.gg ]
  %.lcssa1476.i = phi i32 [ %.promoted1603.i, %.._crit_edge1607_crit_edge.i ], [ %i.bxk, %bb.gg ]
  %i.bww = sub nsw i32 %.lcssa1476.i, %.81201.i   ; 3 uses
  %i.bwx = lshr i32 %i.bwv, %i.bww
  %notmask1355.i = shl nsw i32 -1, %.81201.i
  %i.bwy = xor i32 %notmask1355.i, -1
  %i.bwz = and i32 %i.bwx, %i.bwy
  store i32 %i.bww, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  br label %bb.gh

bb.ge:                                            ; preds = %bb.gg
  %i.bxa = icmp eq i32 %i.bxm, 0
  br i1 %i.bxa, label %BZ2_decompress.exit, label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.preheader, %bb.ge
  %i.bxb = phi i32 [ %i.bxn, %bb.ge ], [ %.promoted843, %.lr.ph472.preheader ]
  %i.bxc = phi ptr [ %i.bxl, %bb.ge ], [ %.promoted842, %.lr.ph472.preheader ] ; 2 uses
  %i.bxd = phi i32 [ %i.bxj, %bb.ge ], [ %.promoted841, %.lr.ph472.preheader ]
  %i.bxe = phi i32 [ %i.bxk, %bb.ge ], [ %.promoted1603.i, %.lr.ph472.preheader ]
  %i.bxf = phi i32 [ %i.bxm, %bb.ge ], [ %.promoted1610.i, %.lr.ph472.preheader ]
  %i.bxg = shl i32 %i.bxd, 8
  %i.bxh = load i8, ptr %i.bxc, align 1, !tbaa !34
  %i.bxi = zext i8 %i.bxh to i32
  %i.bxj = or disjoint i32 %i.bxg, %i.bxi         ; 3 uses
  store i32 %i.bxj, ptr %i.v, align 8, !tbaa !21
  %i.bxk = add nsw i32 %i.bxe, 8                  ; 4 uses
  store i32 %i.bxk, ptr %.phi.trans.insert1975.i, align 4, !tbaa !20
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxc, i64 1 ; 2 uses
  store ptr %i.bxl, ptr %i.bwq, align 8, !tbaa !76
  %i.bxm = add i32 %i.bxf, -1                     ; 3 uses
  store i32 %i.bxm, ptr %i.bwr, align 8, !tbaa !75
  %i.bxn = add i32 %i.bxb, 1                      ; 3 uses
  store i32 %i.bxn, ptr %i.bws, align 4, !tbaa !23
  %i.bxo = icmp eq i32 %i.bxn, 0
  br i1 %i.bxo, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.lr.ph472
  %i.bxp = load i32, ptr %i.bwt, align 8, !tbaa !24
  %i.bxq = add i32 %i.bxp, 1
  store i32 %i.bxq, ptr %i.bwt, align 8, !tbaa !24
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.lr.ph472
  %.not1354.i = icmp slt i32 %i.bxk, %.81201.i
  br i1 %.not1354.i, label %bb.ge, label %._crit_edge1607.i

bb.gh:                                            ; preds = %._crit_edge1614.i, %._crit_edge1607.i
  %i.bxr = phi i32 [ %i.bwp, %._crit_edge1607.i ], [ %i.bxx, %._crit_edge1614.i ] ; 4 uses
  %.promoted16111969.i = phi i32 [ %i.bww, %._crit_edge1607.i ], [ %i.bye, %._crit_edge1614.i ]
  %.81299.i = phi i32 [ %.71298.i, %._crit_edge1607.i ], [ %i.byg, %._crit_edge1614.i ] ; 4 uses
  %.121288.i = phi i32 [ %.111287.i, %._crit_edge1607.i ], [ %.131289.i, %._crit_edge1614.i ] ; 4 uses
  %.121273.i = phi i32 [ %.111272.i, %._crit_edge1607.i ], [ %.131274.i, %._crit_edge1614.i ] ; 4 uses
  %.121258.i = phi ptr [ %.111257.i, %._crit_edge1607.i ], [ %.131259.i, %._crit_edge1614.i ] ; 5 uses
  %.121243.i = phi ptr [ %.111242.i, %._crit_edge1607.i ], [ %.131244.i, %._crit_edge1614.i ] ; 5 uses
  %.121228.i = phi ptr [ %.111227.i, %._crit_edge1607.i ], [ %.131229.i, %._crit_edge1614.i ] ; 5 uses
  %.81213.i = phi i32 [ %i.bwz, %._crit_edge1607.i ], [ %i.byi, %._crit_edge1614.i ] ; 6 uses
  %.91202.i = phi i32 [ %.81201.i, %._crit_edge1607.i ], [ %.101203.i, %._crit_edge1614.i ] ; 6 uses
  %.161190.i = phi i32 [ %.151189.i, %._crit_edge1607.i ], [ %.171191.i, %._crit_edge1614.i ] ; 4 uses
  %.61171.i = phi i32 [ %.51170.i, %._crit_edge1607.i ], [ %.71172.i, %._crit_edge1614.i ] ; 4 uses
  %.101162.i = phi i32 [ %.91161.i, %._crit_edge1607.i ], [ %.111163.i, %._crit_edge1614.i ] ; 4 uses
  %.121149.i = phi i32 [ %.111148.i, %._crit_edge1607.i ], [ %.131150.i, %._crit_edge1614.i ] ; 4 uses
  %.91134.i = phi i32 [ %.81133.i, %._crit_edge1607.i ], [ %.101135.i, %._crit_edge1614.i ] ; 4 uses
  %.61122.i = phi i32 [ %.51121.i, %._crit_edge1607.i ], [ %.71123.i, %._crit_edge1614.i ] ; 3 uses
  %.121113.i = phi i32 [ %.111112.i, %._crit_edge1607.i ], [ %.131114.i, %._crit_edge1614.i ] ; 4 uses
  %.121098.i = phi i32 [ %.111097.i, %._crit_edge1607.i ], [ %.131099.i, %._crit_edge1614.i ] ; 4 uses
  %.91081.i = phi i32 [ %.81080.i, %._crit_edge1607.i ], [ %.101082.i, %._crit_edge1614.i ] ; 4 uses
  %.181069.i = phi i32 [ %.171068.i, %._crit_edge1607.i ], [ %.191070.i, %._crit_edge1614.i ] ; 4 uses
  %.191048.i = phi i32 [ %.181047.i, %._crit_edge1607.i ], [ %.201049.i, %._crit_edge1614.i ] ; 4 uses
  %.201022.i = phi i32 [ %.191021.i, %._crit_edge1607.i ], [ %.211023.i, %._crit_edge1614.i ] ; 4 uses
  %.16999.i = phi i32 [ %.15998.i, %._crit_edge1607.i ], [ %.171000.i, %._crit_edge1614.i ] ; 4 uses
  %.24978.i = phi i32 [ %.23977.i, %._crit_edge1607.i ], [ %.25979.i, %._crit_edge1614.i ] ; 4 uses
  %.30.i = phi i32 [ %.29.i, %._crit_edge1607.i ], [ %.31.i, %._crit_edge1614.i ] ; 4 uses
  %i.bxs = icmp sgt i32 %.91202.i, 20
  br i1 %i.bxs, label %BZ2_decompress.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.bxt = sext i32 %.91202.i to i64              ; 2 uses
  %i.bxu = getelementptr inbounds [4 x i8], ptr %.121258.i, i64 %i.bxt
  %i.bxv = load i32, ptr %i.bxu, align 4, !tbaa !40
  %.not1356.i = icmp sgt i32 %.81213.i, %i.bxv
  br i1 %.not1356.i, label %bb.gj, label %bb.gp

bb.gj:                                            ; preds = %bb.gi
  %i.bxw = add nsw i32 %.91202.i, 1
  br label %bb.gk
end_hunk_0
