inline.NumInlined: 720
inline.NumDeleted: 28
begin_hunk_0_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.bng = add nuw nsw i64 %i.bnf, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bmz, i8 -1, i64 %i.bng, i1 false), !tbaa !27
  %i.bnh = getelementptr i8, ptr %.0328.i, i64 %i.bnf
  %scevgep1887 = getelementptr i8, ptr %i.bnh, i64 2
  %.neg2126 = mul i64 %i.bnf, -255
  %i.bni = add i64 %.neg2126, %i.bne
  br label %._crit_edge1598

._crit_edge1598:                                  ; preds = %.lr.ph1597.preheader, %bb.lh
  %.33.lcssa = phi ptr [ %i.bmz, %bb.lh ], [ %scevgep1887, %.lr.ph1597.preheader ] ; 2 uses
  %.0.i53.lcssa = phi i64 [ %i.bnb, %bb.lh ], [ %i.bni, %.lr.ph1597.preheader ]
  %i.bnj = trunc nuw i64 %.0.i53.lcssa to i8
  %i.bnk = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.bnj, ptr %.33.lcssa, align 1, !tbaa !27
  br label %bb.lj

bb.li:                                            ; preds = %bb.lg
  %.tr.i48 = trunc nuw nsw i64 %i.bmf to i8
  %i.bnl = shl nuw i8 %.tr.i48, 4
  store i8 %i.bnl, ptr %.0328.i, align 1, !tbaa !27
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %._crit_edge1598
  %.30 = phi ptr [ %i.bnk, %._crit_edge1598 ], [ %i.bmz, %bb.li ] ; 7 uses
  %.302628 = ptrtoint ptr %.30 to i64             ; 3 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.30, i64 %i.bmf ; 3 uses
  %i.bnn = add i64 %i.bmd, %.302628
  %i.bno = sub i64 %i.bnn, %i.bme
  %i.bnp = add nuw i64 %.302628, 8
  %umax2629 = tail call i64 @llvm.umax.i64(i64 %i.bno, i64 %i.bnp)
  %i.bnq = xor i64 %.302628, -1
  %i.bnr = add i64 %umax2629, %i.bnq              ; 2 uses
  %i.bns = lshr i64 %i.bnr, 3
  %i.bnt = add nuw nsw i64 %i.bns, 1              ; 2 uses
  %min.iters.check2631 = icmp ult i64 %i.bnr, 56
  %.302626 = ptrtoaddr ptr %.30 to i64
  %i.bnu = sub i64 %.302626, %i.bme
  %diff.check2627 = icmp ult i64 %i.bnu, 32
  %or.cond2650 = or i1 %min.iters.check2631, %diff.check2627
  br i1 %or.cond2650, label %scalar.ph2630.preheader, label %vector.ph2632

vector.ph2632:                                    ; preds = %bb.lj
  %n.vec2634 = and i64 %i.bnt, 4611686018427387900 ; 3 uses
  %i.bnv = shl i64 %n.vec2634, 3                  ; 2 uses
  %i.bnw = getelementptr i8, ptr %.2873, i64 %i.bnv
  %i.bnx = getelementptr i8, ptr %.30, i64 %i.bnv
  br label %vector.body2635

vector.body2635:                                  ; preds = %vector.body2635, %vector.ph2632
  %index2636 = phi i64 [ 0, %vector.ph2632 ], [ %index.next2641, %vector.body2635 ] ; 2 uses
  %i.bny = shl i64 %index2636, 3                  ; 2 uses
  %next.gep2637 = getelementptr i8, ptr %.2873, i64 %i.bny ; 2 uses
  %next.gep2638 = getelementptr i8, ptr %.30, i64 %i.bny ; 2 uses
  %i.bnz = getelementptr i8, ptr %next.gep2637, i64 16
  %wide.load2639 = load <2 x i64>, ptr %next.gep2637, align 1
  %wide.load2640 = load <2 x i64>, ptr %i.bnz, align 1
  %i.boa = getelementptr i8, ptr %next.gep2638, i64 16
  store <2 x i64> %wide.load2639, ptr %next.gep2638, align 1
  store <2 x i64> %wide.load2640, ptr %i.boa, align 1
  %index.next2641 = add nuw i64 %index2636, 4     ; 2 uses
  %i.bob = icmp eq i64 %index.next2641, %n.vec2634
  br i1 %i.bob, label %middle.block2642, label %vector.body2635, !llvm.loop !75

middle.block2642:                                 ; preds = %vector.body2635
  %cmp.n2643 = icmp eq i64 %i.bnt, %n.vec2634
  br i1 %cmp.n2643, label %LZ4_wildCopy8.exit69, label %scalar.ph2630.preheader

scalar.ph2630.preheader:                          ; preds = %bb.lj, %middle.block2642
  %.09.i67.ph = phi ptr [ %.2873, %bb.lj ], [ %i.bnw, %middle.block2642 ]
  %.0.i68.ph = phi ptr [ %.30, %bb.lj ], [ %i.bnx, %middle.block2642 ]
  br label %scalar.ph2630

scalar.ph2630:                                    ; preds = %scalar.ph2630.preheader, %scalar.ph2630
  %.09.i67 = phi ptr [ %i.boe, %scalar.ph2630 ], [ %.09.i67.ph, %scalar.ph2630.preheader ] ; 2 uses
  %.0.i68 = phi ptr [ %i.bod, %scalar.ph2630 ], [ %.0.i68.ph, %scalar.ph2630.preheader ] ; 2 uses
  %i.boc = load i64, ptr %.09.i67, align 1
  store i64 %i.boc, ptr %.0.i68, align 1
  %i.bod = getelementptr inbounds nuw i8, ptr %.0.i68, i64 8 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.09.i67, i64 8
  %i.bof = icmp ult ptr %i.bod, %i.bnm
  br i1 %i.bof, label %scalar.ph2630, label %LZ4_wildCopy8.exit69, !llvm.loop !76

LZ4_wildCopy8.exit69:                             ; preds = %scalar.ph2630, %middle.block2642
  %i.bog = trunc i32 %.sroa.0162.sroa.0.3.i to i16
  store i16 %i.bog, ptr %i.bnm, align 1, !tbaa !25
  %i.boh = getelementptr i8, ptr %i.bnm, i64 2    ; 3 uses
  %i.boi = add nsw i64 %i.bmv, -4                 ; 2 uses
  %i.boj = icmp ugt i64 %i.boi, 14
  br i1 %i.boj, label %bb.lk, label %bb.ln

bb.lk:                                            ; preds = %LZ4_wildCopy8.exit69
  %i.bok = load i8, ptr %.0328.i, align 1, !tbaa !27
  %i.bol = add i8 %i.bok, 15
  store i8 %i.bol, ptr %.0328.i, align 1, !tbaa !27
  %i.bom = add nsw i64 %i.bmv, -19                ; 2 uses
  %i.bon = icmp ugt i64 %i.bom, 509
  br i1 %i.bon, label %.lr.ph1604.preheader, label %._crit_edge1605

.lr.ph1604.preheader:                             ; preds = %bb.lk
  %i.boo = add nsw i64 %i.bmv, -529               ; 2 uses
  %i.bop = udiv i64 %i.boo, 510                   ; 2 uses
  %i.boq = shl nuw nsw i64 %i.bop, 1              ; 2 uses
  %i.bor = add nuw nsw i64 %i.boq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.boh, i8 -1, i64 %i.bor, i1 false), !tbaa !27
  %i.bos = add i64 %i.boq, %i.bmd
  %i.bot = add i64 %i.bos, 4
  %i.bou = sub i64 %i.bot, %i.bme
  %scevgep1888 = getelementptr i8, ptr %.30, i64 %i.bou
  %.neg2127 = mul i64 %i.bop, -510
  %i.bov = add i64 %.neg2127, %i.boo
  br label %._crit_edge1605

._crit_edge1605:                                  ; preds = %.lr.ph1604.preheader, %bb.lk
  %.31.lcssa = phi ptr [ %i.boh, %bb.lk ], [ %scevgep1888, %.lr.ph1604.preheader ] ; 3 uses
  %.051.i51.lcssa = phi i64 [ %i.bom, %bb.lk ], [ %i.bov, %.lr.ph1604.preheader ] ; 3 uses
  %i.bow = icmp samesign ugt i64 %.051.i51.lcssa, 254
  br i1 %i.bow, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %._crit_edge1605
  %i.box = add nsw i64 %.051.i51.lcssa, -255
  %i.boy = getelementptr inbounds nuw i8, ptr %.31.lcssa, i64 1
  store i8 -1, ptr %.31.lcssa, align 1, !tbaa !27
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %._crit_edge1605
  %.32 = phi ptr [ %i.boy, %bb.ll ], [ %.31.lcssa, %._crit_edge1605 ] ; 2 uses
  %.1.i52 = phi i64 [ %i.box, %bb.ll ], [ %.051.i51.lcssa, %._crit_edge1605 ]
  %i.boz = trunc nuw i64 %.1.i52 to i8
  %i.bpa = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.boz, ptr %.32, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit54

bb.ln:                                            ; preds = %LZ4_wildCopy8.exit69
  %i.bpb = trunc nuw nsw i64 %i.boi to i8
  %i.bpc = load i8, ptr %.0328.i, align 1, !tbaa !27
  %i.bpd = add i8 %i.bpc, %i.bpb
  store i8 %i.bpd, ptr %.0328.i, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit54

LZ4HC_encodeSequence.exit54:                      ; preds = %bb.lm, %bb.ln
  %.34 = phi ptr [ %i.bpa, %bb.lm ], [ %i.boh, %bb.ln ]
  %i.bpe = getelementptr inbounds i8, ptr %.2883, i64 %i.bmv
  br label %.loopexit

bb.lo:                                            ; preds = %bb.c
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 262182
  %i.bpg = load i8, ptr %i.bpf, align 2, !tbaa !60
  %.not.i = icmp ne i8 %i.bpg, 0
  %i.bph = zext i1 %.not.i to i32
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.04.4.extract.shift8.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.04.4.extract.trunc9.i = trunc nuw i64 %.sroa.04.4.extract.shift8.i to i32
  %i.bpi = zext i32 %.sroa.25.0.copyload.i to i64
  %i.bpj = icmp sgt i32 %5, 11
  %i.bpk = zext i1 %i.bpj to i32
  %i.bpl = tail call fastcc i32 @LZ4HC_compress_optimal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %.sroa.04.4.extract.trunc9.i, i64 noundef %i.bpi, i32 noundef range(i32 0, 3) %6, i32 noundef %i.bpk, i32 noundef 0, i32 noundef %i.bph)
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_compress_hashChain.exit:                    ; preds = %.critedge.i, %bb.lo, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.bpl, %bb.lo ], [ %i.bmc, %.critedge.i ] ; 3 uses
  %i.bpm = icmp slt i32 %.0.i, 1
  br i1 %i.bpm, label %LZ4HC_compress_hashChain.exit.thread, label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_hashChain.exit.thread:             ; preds = %LZ4HC_encodeSequence.exit, %bb.la, %LZ4HC_compress_hashChain.exit
  %.0.i1160 = phi i32 [ %.0.i, %LZ4HC_compress_hashChain.exit ], [ 0, %bb.la ], [ 0, %LZ4HC_encodeSequence.exit ]
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 262183
  store i8 1, ptr %i.bpn, align 1, !tbaa !30
  br label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_generic_internal.exit:             ; preds = %bb.a, %bb.b, %LZ4HC_compress_hashChain.exit, %LZ4HC_compress_hashChain.exit.thread
  %.040.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.0.i1160, %LZ4HC_compress_hashChain.exit.thread ], [ %.0.i, %LZ4HC_compress_hashChain.exit ]
  ret i32 %.040.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4MID_compress(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 7 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !3      ; 4 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12 ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -5 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14   ; 11 uses
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.k to i64                 ; 5 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 6 uses
  %.not = trunc nuw i32 %6 to i1                  ; 2 uses
  br i1 %.not, label %bb.b, label %select_searchDict_function.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %select_searchDict_function.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 262180
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !35
  %i.ab = add i16 %i.aa, -1
  %i.ac = icmp ult i16 %i.ab, 2
  %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i = select i1 %i.ac, ptr @LZ4MID_searchExtDict, ptr @LZ4MID_searchHCDict
  br label %select_searchDict_function.exit

select_searchDict_function.exit:                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i, %bb.c ]
  %i.ae = or i32 %i.b, %4
  %or.cond299 = icmp slt i32 %i.ae, 0
  %i.af = icmp sgt i32 %i.b, 2113929216
  %or.cond300 = or i1 %i.af, %or.cond299
  br i1 %or.cond300, label %bb.de, label %bb.d

bb.d:                                             ; preds = %select_searchDict_function.exit
  %i.ag = icmp eq i32 %5, 2                       ; 3 uses
  %spec.select.idx = select i1 %i.ag, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.i, i64 %spec.select.idx ; 3 uses
  %i.ah = icmp samesign ult i32 %i.b, 13
  br i1 %i.ah, label %.loopexit, label %.lr.ph728

.lr.ph728:                                        ; preds = %bb.d
  %i.ai = zext i32 %i.m to i64
  %i.aj = sub nsw i64 0, %i.ai
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %i.al = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %.not.i392 = icmp ne i32 %5, 0                  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph728, %bb.co
  %.0727 = phi ptr [ %2, %.lr.ph728 ], [ %.2502, %bb.co ] ; 20 uses
  %.0512726 = phi ptr [ %1, %.lr.ph728 ], [ %.1513, %bb.co ] ; 13 uses
  %.0516725 = phi ptr [ %1, %.lr.ph728 ], [ %.6522, %bb.co ] ; 27 uses
  %i.an = ptrtoint ptr %.0516725 to i64           ; 18 uses
  %i.ao = sub i64 %i.an, %i.o
  %i.ap = trunc i64 %i.ao to i32                  ; 7 uses
  %i.aq = add i32 %i.m, %i.ap                     ; 9 uses
  %.val427 = load i64, ptr %.0516725, align 1, !tbaa !20 ; 5 uses
  %i.ar = mul i64 %.val427, -3523014627193167104
  %i.as = lshr i64 %i.ar, 50
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 6 uses
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !3
  %i.av = sub i32 %i.aq, %i.au                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, 65536
  br i1 %i.aw, label %bb.f, label %.thread539

bb.f:                                             ; preds = %bb.e
  %.not280 = icmp ult i32 %i.au, %i.m
  br i1 %.not280, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = zext i32 %i.au to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ax ; 3 uses
  %i.ay = icmp ult ptr %.0516725, %i.e
  br i1 %i.ay, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %bb.g
  %.val402 = load i64, ptr %gep, align 1, !tbaa !20 ; 2 uses
  %.not.i385 = icmp eq i64 %.val402, %.val427
  br i1 %.not.i385, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.0516725, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = xor i64 %.val402, %.val427
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 3
  br label %LZ4_count.exit389

bb.j:                                             ; preds = %.thread, %bb.g
  %.150.i368 = phi ptr [ %i.ba, %.thread ], [ %gep, %bb.g ] ; 2 uses
  %.145.i369 = phi ptr [ %i.az, %.thread ], [ %.0516725, %bb.g ] ; 3 uses
  %i.bf = icmp ult ptr %.145.i369, %i.e
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !prof !23

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.246.i372670 = phi ptr [ %i.bn, %bb.k ], [ %.145.i369, %bb.j ] ; 3 uses
  %.251.i371669 = phi ptr [ %i.bo, %bb.k ], [ %.150.i368, %bb.j ] ; 2 uses
  %.251.i371.val404 = load i64, ptr %.251.i371669, align 1, !tbaa !20 ; 2 uses
  %.246.i372.val403 = load i64, ptr %.246.i372670, align 1, !tbaa !20 ; 2 uses
  %.not59.i381 = icmp eq i64 %.251.i371.val404, %.246.i372.val403
  br i1 %.not59.i381, label %bb.k, label %.thread527

.thread527:                                       ; preds = %.lr.ph
  %i.bg = xor i64 %.246.i372.val403, %.251.i371.val404
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bg, i1 true)
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.246.i372670, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.an
  %i.bm = trunc i64 %i.bl to i32
  br label %LZ4_count.exit389

bb.k:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.246.i372670, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.251.i371669, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bn, %i.e
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !prof !24

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.251.i371.lcssa = phi ptr [ %.150.i368, %bb.j ], [ %i.bo, %bb.k ] ; 4 uses
  %.246.i372.lcssa = phi ptr [ %.145.i369, %bb.j ], [ %i.bn, %bb.k ] ; 5 uses
  %i.bq = icmp ult ptr %.246.i372.lcssa, %i.g
  br i1 %i.bq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %.251.i371.val = load i32, ptr %.251.i371.lcssa, align 1, !tbaa !15
  %.246.i372.val = load i32, ptr %.246.i372.lcssa, align 1, !tbaa !15
  %i.br = icmp eq i32 %.251.i371.val, %.246.i372.val
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.246.i372.lcssa, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.251.i371.lcssa, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge
  %.453.i374 = phi ptr [ %i.bt, %bb.m ], [ %.251.i371.lcssa, %bb.l ], [ %.251.i371.lcssa, %._crit_edge ] ; 4 uses
  %.448.i375 = phi ptr [ %i.bs, %bb.m ], [ %.246.i372.lcssa, %bb.l ], [ %.246.i372.lcssa, %._crit_edge ] ; 5 uses
  %i.bu = icmp ult ptr %.448.i375, %i.ak
  br i1 %i.bu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.453.i374.val = load i16, ptr %.453.i374, align 1, !tbaa !25
  %.448.i375.val = load i16, ptr %.448.i375, align 1, !tbaa !25
  %i.bv = icmp eq i16 %.453.i374.val, %.448.i375.val
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.448.i375, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %.453.i374, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.554.i376 = phi ptr [ %i.bx, %bb.p ], [ %.453.i374, %bb.o ], [ %.453.i374, %bb.n ]
  %.5.i377 = phi ptr [ %i.bw, %bb.p ], [ %.448.i375, %bb.o ], [ %.448.i375, %bb.n ] ; 4 uses
  %i.by = icmp ult ptr %.5.i377, %i.f
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %.554.i376, align 1, !tbaa !27
  %i.ca = load i8, ptr %.5.i377, align 1, !tbaa !27
  %i.cb = icmp eq i8 %i.bz, %i.ca
  %spec.select.i380.idx = zext i1 %i.cb to i64
  %spec.select.i380 = getelementptr inbounds nuw i8, ptr %.5.i377, i64 %spec.select.i380.idx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.6.i378 = phi ptr [ %.5.i377, %bb.q ], [ %spec.select.i380, %bb.r ]
  %i.cc = ptrtoint ptr %.6.i378 to i64
  %i.cd = sub i64 %i.cc, %i.an
  %i.ce = trunc i64 %i.cd to i32
  br label %LZ4_count.exit389

LZ4_count.exit389:                                ; preds = %.thread527, %bb.i, %bb.s
  %.4.i379 = phi i32 [ %i.bm, %.thread527 ], [ %i.ce, %bb.s ], [ %i.be, %bb.i ] ; 2 uses
  %i.cf = icmp ult i32 %.4.i379, 4
  br i1 %i.cf, label %.thread539, label %.thread580

bb.t:                                             ; preds = %bb.f
  %.not281 = icmp ult i32 %i.au, %i.v
  br i1 %.not281, label %.thread539, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = sub nuw i32 %i.au, %i.v
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ch ; 3 uses
  %i.cj = sub i32 %i.m, %i.au
  %i.ck = zext i32 %i.cj to i64
  %i.cl = sub i64 %i.al, %i.an
  %.288 = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ck) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0516725, i64 %.288 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -7 ; 2 uses
  %i.co = icmp samesign ugt i64 %.288, 7
  br i1 %i.co, label %bb.v, label %bb.x, !prof !19

bb.v:                                             ; preds = %bb.u
  %.val406 = load i64, ptr %i.ci, align 1, !tbaa !20 ; 2 uses
  %.not.i363 = icmp eq i64 %.val406, %.val427
  br i1 %.not.i363, label %.thread531, label %bb.w

.thread531:                                       ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.0516725, i64 8
end_hunk_0
begin_hunk_1_@LZ4MID_compress:bb.a
  br i1 %i.rh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ri = add i64 %i.qo, -15                      ; 2 uses
  store i8 -16, ptr %.0727, align 1, !tbaa !27
  %i.rj = icmp ugt i64 %i.ri, 254
  br i1 %i.rj, label %.lr.ph734.preheader, label %._crit_edge735

.lr.ph734.preheader:                              ; preds = %bb.cx
  %i.rk = add i64 %i.qn, -270
  %i.rl = sub i64 %i.rk, %i.kz                    ; 2 uses
  %i.rm = udiv i64 %i.rl, 255                     ; 3 uses
  %i.rn = add nuw nsw i64 %i.rm, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 -1, i64 %i.rn, i1 false), !tbaa !27
  %scevgep796 = getelementptr i8, ptr %.0727, i64 2
  %scevgep797 = getelementptr i8, ptr %scevgep796, i64 %i.rm
  %.neg857 = mul i64 %i.rm, -255
  %i.ro = add i64 %.neg857, %i.rl
  br label %._crit_edge735

._crit_edge735:                                   ; preds = %.lr.ph734.preheader, %bb.cx
  %.9507.lcssa = phi ptr [ %i.ky, %bb.cx ], [ %scevgep797, %.lr.ph734.preheader ] ; 2 uses
  %.0.i391.lcssa = phi i64 [ %i.ri, %bb.cx ], [ %i.ro, %.lr.ph734.preheader ]
  %i.rp = trunc nuw i64 %.0.i391.lcssa to i8
  %i.rq = getelementptr inbounds nuw i8, ptr %.9507.lcssa, i64 1
  store i8 %i.rp, ptr %.9507.lcssa, align 1, !tbaa !27
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %.tr.i = trunc nuw nsw i64 %i.qo to i8
  %i.rr = shl nuw i8 %.tr.i, 4
  store i8 %i.rr, ptr %.0727, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge735
  %.6504 = phi ptr [ %i.rq, %._crit_edge735 ], [ %i.ky, %bb.cy ] ; 7 uses
  %.6504935 = ptrtoint ptr %.6504 to i64          ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.6504, i64 %i.qo ; 3 uses
  %i.rt = xor i64 %.6504935, -1
  %i.ru = add i64 %.6504935, %i.qn
  %i.rv = sub i64 %i.ru, %i.kz
  %i.rw = add nuw i64 %.6504935, 8
  %umax936 = tail call i64 @llvm.umax.i64(i64 %i.rv, i64 %i.rw)
  %i.rx = add i64 %umax936, %i.rt                 ; 2 uses
  %i.ry = lshr i64 %i.rx, 3
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check938 = icmp ult i64 %i.rx, 56
  %.6504933 = ptrtoaddr ptr %.6504 to i64
  %i.sa = sub i64 %.6504933, %i.kz
  %diff.check934 = icmp ult i64 %i.sa, 32
  %or.cond953 = select i1 %min.iters.check938, i1 true, i1 %diff.check934
  br i1 %or.cond953, label %scalar.ph937.preheader, label %vector.ph939

vector.ph939:                                     ; preds = %bb.cz
  %n.vec941 = and i64 %i.rz, 4611686018427387900  ; 3 uses
  %i.sb = shl i64 %n.vec941, 3                    ; 2 uses
  %i.sc = getelementptr i8, ptr %.0512726, i64 %i.sb
  %i.sd = getelementptr i8, ptr %.6504, i64 %i.sb
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph939
  %index943 = phi i64 [ 0, %vector.ph939 ], [ %index.next948, %vector.body942 ] ; 2 uses
  %i.se = shl i64 %index943, 3                    ; 2 uses
  %next.gep944 = getelementptr i8, ptr %.0512726, i64 %i.se ; 2 uses
  %next.gep945 = getelementptr i8, ptr %.6504, i64 %i.se ; 2 uses
  %i.sf = getelementptr i8, ptr %next.gep944, i64 16
  %wide.load946 = load <2 x i64>, ptr %next.gep944, align 1
  %wide.load947 = load <2 x i64>, ptr %i.sf, align 1
  %i.sg = getelementptr i8, ptr %next.gep945, i64 16
  store <2 x i64> %wide.load946, ptr %next.gep945, align 1
  store <2 x i64> %wide.load947, ptr %i.sg, align 1
  %index.next948 = add nuw i64 %index943, 4       ; 2 uses
  %i.sh = icmp eq i64 %index.next948, %n.vec941
  br i1 %i.sh, label %middle.block949, label %vector.body942, !llvm.loop !83

middle.block949:                                  ; preds = %vector.body942
  %cmp.n950 = icmp eq i64 %i.rz, %n.vec941
  br i1 %cmp.n950, label %LZ4_wildCopy8.exit401, label %scalar.ph937.preheader

scalar.ph937.preheader:                           ; preds = %bb.cz, %middle.block949
  %.09.i399.ph = phi ptr [ %.0512726, %bb.cz ], [ %i.sc, %middle.block949 ]
  %.0.i400.ph = phi ptr [ %.6504, %bb.cz ], [ %i.sd, %middle.block949 ]
  br label %scalar.ph937

scalar.ph937:                                     ; preds = %scalar.ph937.preheader, %scalar.ph937
  %.09.i399 = phi ptr [ %i.sk, %scalar.ph937 ], [ %.09.i399.ph, %scalar.ph937.preheader ] ; 2 uses
  %.0.i400 = phi ptr [ %i.sj, %scalar.ph937 ], [ %.0.i400.ph, %scalar.ph937.preheader ] ; 2 uses
  %i.si = load i64, ptr %.09.i399, align 1
  store i64 %i.si, ptr %.0.i400, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.i400, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.09.i399, i64 8
  %i.sl = icmp ult ptr %i.sj, %i.rs
  br i1 %i.sl, label %scalar.ph937, label %LZ4_wildCopy8.exit401, !llvm.loop !84

LZ4_wildCopy8.exit401:                            ; preds = %scalar.ph937, %middle.block949
  %i.sm = trunc i32 %.13237 to i16
  store i16 %i.sm, ptr %i.rs, align 1, !tbaa !25
  %i.sn = getelementptr i8, ptr %i.rs, i64 2      ; 3 uses
  %sext = shl nuw i64 %spec.select298655, 32
  %i.so = ashr exact i64 %sext, 32                ; 4 uses
  %i.sp = add nsw i64 %i.so, -4                   ; 2 uses
  %i.sq = icmp ugt i64 %i.sp, 14
  br i1 %i.sq, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %LZ4_wildCopy8.exit401
  %i.sr = load i8, ptr %.0727, align 1, !tbaa !27
  %i.ss = add i8 %i.sr, 15
  store i8 %i.ss, ptr %.0727, align 1, !tbaa !27
  %i.st = add nsw i64 %i.so, -19                  ; 2 uses
  %i.su = icmp ugt i64 %i.st, 509
  br i1 %i.su, label %.lr.ph741.preheader, label %._crit_edge742

.lr.ph741.preheader:                              ; preds = %bb.da
  %i.sv = add nsw i64 %i.so, -529                 ; 2 uses
  %i.sw = udiv i64 %i.sv, 510                     ; 2 uses
  %i.sx = shl nuw nsw i64 %i.sw, 1                ; 2 uses
  %i.sy = add nuw nsw i64 %i.sx, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sn, i8 -1, i64 %i.sy, i1 false), !tbaa !27
  %scevgep800 = getelementptr i8, ptr %.6504, i64 4
  %i.sz = add i64 %i.sx, %i.qn
  %i.ta = sub i64 %i.sz, %i.kz
  %scevgep801 = getelementptr i8, ptr %scevgep800, i64 %i.ta
  %.neg858 = mul i64 %i.sw, -510
  %i.tb = add i64 %.neg858, %i.sv
  br label %._crit_edge742

._crit_edge742:                                   ; preds = %.lr.ph741.preheader, %bb.da
  %.7505.lcssa = phi ptr [ %i.sn, %bb.da ], [ %scevgep801, %.lr.ph741.preheader ] ; 3 uses
  %.051.i.lcssa = phi i64 [ %i.st, %bb.da ], [ %i.tb, %.lr.ph741.preheader ] ; 3 uses
  %i.tc = icmp samesign ugt i64 %.051.i.lcssa, 254
  br i1 %i.tc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %._crit_edge742
  %i.td = add nsw i64 %.051.i.lcssa, -255
  %i.te = getelementptr inbounds nuw i8, ptr %.7505.lcssa, i64 1
  store i8 -1, ptr %.7505.lcssa, align 1, !tbaa !27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %._crit_edge742
  %.8506 = phi ptr [ %i.te, %bb.db ], [ %.7505.lcssa, %._crit_edge742 ] ; 2 uses
  %.1.i390 = phi i64 [ %i.td, %bb.db ], [ %.051.i.lcssa, %._crit_edge742 ]
  %i.tf = trunc nuw i64 %.1.i390 to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %.8506, i64 1
  store i8 %i.tf, ptr %.8506, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

bb.dd:                                            ; preds = %LZ4_wildCopy8.exit401
  %i.th = trunc nuw nsw i64 %i.sp to i8
  %i.ti = load i8, ptr %.0727, align 1, !tbaa !27
  %i.tj = add i8 %i.ti, %i.th
  store i8 %i.tj, ptr %.0727, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.dc, %bb.dd
  %.10508 = phi ptr [ %i.tg, %bb.dc ], [ %i.sn, %bb.dd ]
  %i.tk = getelementptr inbounds i8, ptr %.5521.lcssa, i64 %i.so
  br label %.loopexit

bb.de:                                            ; preds = %bb.ct, %bb.cp, %select_searchDict_function.exit, %.critedge297
  %.1 = phi i32 [ 0, %bb.cp ], [ 0, %select_searchDict_function.exit ], [ 0, %bb.ct ], [ %i.qm, %.critedge297 ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @LZ4HC_compress_optimal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i64 noundef range(i64 0, 4294967296) %6, i32 noundef range(i32 0, 3) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(65584) ptr @malloc(i64 noundef 65584) #19 ; 52 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12 ; 27 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -5 ; 37 uses
  %i.m = icmp eq ptr %i.g, null
  br i1 %i.m, label %.thread1663, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %4 to i64
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  %i.p = icmp eq i32 %7, 2                        ; 3 uses
  %spec.select.idx = select i1 %i.p, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.o, i64 %spec.select.idx ; 5 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %6, i64 4095) ; 2 uses
  %.not1994 = icmp slt i32 %i.h, 12
  br i1 %.not1994, label %.loopexit1710, label %.lr.ph1999

.lr.ph1999:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 21 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %.not.i.i760 = trunc nuw i32 %10 to i1          ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 -6 ; 6 uses
  %i.z = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %11 = trunc nuw i32 %9 to i1                    ; 3 uses
  %.not412 = icmp eq i32 %8, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i = icmp ne i32 %7, 0                     ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.bg = icmp sgt i32 %5, 0
  %i.bh = icmp sgt i32 %5, 0
  %i.bi = icmp sgt i32 %5, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1999, %.loopexit1705
  %.013151997 = phi ptr [ %2, %.lr.ph1999 ], [ %.3, %.loopexit1705 ] ; 13 uses
  %.013201996 = phi ptr [ %1, %.lr.ph1999 ], [ %.31323, %.loopexit1705 ] ; 9 uses
  %.013271995 = phi ptr [ %1, %.lr.ph1999 ], [ %.31330, %.loopexit1705 ] ; 17 uses
  %i.bj = ptrtoint ptr %.013271995 to i64         ; 6 uses
  %i.bk = ptrtoint ptr %.013201996 to i64         ; 5 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 17 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 8 uses
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !31  ; 11 uses
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !13  ; 29 uses
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !14  ; 34 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 10 uses
  %i.br = sub i64 %i.bj, %i.bq                    ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = add i32 %i.bp, %i.bs                    ; 10 uses
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !34  ; 12 uses
  %i.bv = add i32 %i.bu, 65536                    ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, %i.bt               ; 2 uses
  %i.bx = add i32 %i.bt, -65535
  %i.by = select i1 %i.bw, i32 %i.bu, i32 %i.bx   ; 5 uses
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !33  ; 28 uses
  %i.ca = zext i32 %i.bp to i64                   ; 6 uses
  %i.cb = zext i32 %i.bu to i64
  %i.cc = sub nsw i64 %i.ca, %i.cb                ; 13 uses
  %.ptr1687.ptr.ptr = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc ; 4 uses
  %.val942 = load i32, ptr %.013271995, align 1, !tbaa !15 ; 18 uses
  %i.cd = load i32, ptr %i.w, align 8, !tbaa !32  ; 4 uses
  %i.ce = icmp ult i32 %i.cd, %i.bt
  br i1 %i.ce, label %.lr.ph, label %LZ4HC_Insert.exit.i.i689

.lr.ph:                                           ; preds = %bb.c
  %i.cf = sub nsw i64 0, %i.ca
  %invariant.gep = getelementptr i8, ptr %i.bo, i64 %i.cf ; 3 uses
  %i.cg = zext i32 %i.cd to i64                   ; 6 uses
  %i.ch = zext i32 %i.bt to i64                   ; 3 uses
  %i.ci = sub nsw i64 %i.ch, %i.cg
  %xtraiter = and i64 %i.ci, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.cg
  %.val953.prol = load i32, ptr %gep.prol, align 1, !tbaa !15
  %i.cj = mul i32 %.val953.prol, -1640531535
  %i.ck = lshr i32 %i.cj, 17
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = sub i32 %i.cd, %i.cn
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 65535)
  %i.cq = trunc nuw i32 %i.cp to i16
  %i.cr = and i64 %i.cg, 65535
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cr
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !29
  store i32 %i.cd, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.cg, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cg, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ct = add nsw i64 %i.ch, -1
  %i.cu = icmp eq i64 %i.ct, %i.cg
  br i1 %i.cu, label %LZ4HC_Insert.exit.i.i689.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val953 = load i32, ptr %gep, align 1, !tbaa !15
  %i.cv = mul i32 %.val953, -1640531535
  %i.cw = lshr i32 %i.cv, 17
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.db = sub i32 %i.da, %i.cz
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.db, i32 65535)
  %i.dd = trunc nuw i32 %i.dc to i16
  %i.de = and i64 %indvars.iv, 65535
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.de
  store i16 %i.dd, ptr %i.df, align 2, !tbaa !29
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val953.1 = load i32, ptr %gep.1, align 1, !tbaa !15
  %i.dg = mul i32 %.val953.1, -1640531535
  %i.dh = lshr i32 %i.dg, 17
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.dm = sub i32 %i.dl, %i.dk
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 65535)
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = and i64 %indvars.iv.next, 65535
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.dp
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !29
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next.1, %i.ch
  br i1 %i.dr, label %.lr.ph.new, label %LZ4HC_Insert.exit.i.i689.loopexit, !llvm.loop !36

LZ4HC_Insert.exit.i.i689.loopexit:                ; preds = %.lr.ph.new, %.prol.loopexit
  %.val955.pre = load i32, ptr %.013271995, align 1, !tbaa !15
  br label %LZ4HC_Insert.exit.i.i689

LZ4HC_Insert.exit.i.i689:                         ; preds = %LZ4HC_Insert.exit.i.i689.loopexit, %bb.c
  %.val955 = phi i32 [ %.val955.pre, %LZ4HC_Insert.exit.i.i689.loopexit ], [ %.val942, %bb.c ]
  store i32 %i.bt, ptr %i.w, align 8, !tbaa !32
  %i.ds = mul i32 %.val955, -1640531535
  %i.dt = lshr i32 %i.ds, 17
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3  ; 2 uses
  %i.dx = add i64 %i.br, %i.ca
  %i.dy = getelementptr inbounds nuw i8, ptr %.013271995, i64 4 ; 12 uses
  %i.dz = icmp ult ptr %i.dy, %i.k                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.013271995, i64 12 ; 3 uses
  %i.eb = ptrtoint ptr %i.dy to i64               ; 8 uses
  %i.ec = add i32 %i.bp, -4                       ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.ee = and i32 %.val942, 65535
  %i.ef = lshr i32 %.val942, 16
  %i.eg = icmp eq i32 %i.ee, %i.ef
  %i.eh = and i32 %.val942, 255
  %i.ei = lshr i32 %.val942, 24
  %i.ej = icmp eq i32 %i.eh, %i.ei
  %i.ek = and i1 %i.eg, %i.ej
  %i.el = zext i32 %.val942 to i64
  %i.em = mul nuw i64 %i.el, 4294967297           ; 6 uses
  %i.en = icmp ult ptr %i.bo, %i.k                ; 3 uses
  %i.eo = icmp ult i32 %i.bu, %i.bp               ; 3 uses
  %i.ep = ptrtoint ptr %.ptr1687.ptr.ptr to i64   ; 3 uses
  %i.eq = icmp uge i32 %i.dw, %i.by
  %i.er = and i1 %i.eq, %i.bg
  br i1 %i.er, label %.lr.ph2681.preheader, label %.thread1398

.lr.ph2681.preheader:                             ; preds = %LZ4HC_Insert.exit.i.i689
  %.not.i10652668 = icmp slt i64 %i.cc, 4
  br label %.lr.ph2681

.lr.ph2681:                                       ; preds = %.lr.ph2681.preheader, %.backedge2443
  %.0.i.i6972680 = phi i32 [ %.0.i.i697.be, %.backedge2443 ], [ 3, %.lr.ph2681.preheader ] ; 10 uses
  %.0314.i.i6962679 = phi i32 [ %i.es, %.backedge2443 ], [ %5, %.lr.ph2681.preheader ] ; 2 uses
  %.0317.i.i6952678 = phi i32 [ %.0317.i.i695.be, %.backedge2443 ], [ 0, %.lr.ph2681.preheader ] ; 3 uses
  %.0323.i.i6942677 = phi i32 [ %.0323.i.i694.be, %.backedge2443 ], [ %i.dw, %.lr.ph2681.preheader ] ; 14 uses
  %.0341.i.i6932676 = phi i32 [ %.0341.i.i693.be, %.backedge2443 ], [ 0, %.lr.ph2681.preheader ] ; 4 uses
  %.0346.i.i6922675 = phi i64 [ %.0346.i.i692.be, %.backedge2443 ], [ 0, %.lr.ph2681.preheader ] ; 4 uses
  %.0351.i.i6912674 = phi i32 [ %.0351.i.i691.be, %.backedge2443 ], [ 0, %.lr.ph2681.preheader ] ; 7 uses
  %i.es = add nsw i32 %.0314.i.i6962679, -1       ; 5 uses
  %i.et = sub i32 %i.bt, %.0323.i.i6942677        ; 3 uses
  %i.eu = icmp ult i32 %i.et, 8
  %or.cond445.i.i761 = and i1 %i.eu, %.not.i.i760
  br i1 %or.cond445.i.i761, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %.lr.ph2681
  %.not430.i.i762 = icmp ult i32 %.0323.i.i6942677, %i.bp
  br i1 %.not430.i.i762, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ev = sub nuw i32 %.0323.i.i6942677, %i.bp
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ew ; 4 uses
  %i.ey = sext i32 %.0.i.i6972680 to i64          ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.013271995, i64 %i.ey
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -1
  %.val1011 = load i16, ptr %i.fa, align 1, !tbaa !25
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.ey
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -1
  %.val1010 = load i16, ptr %i.fc, align 1, !tbaa !25
  %i.fd = icmp eq i16 %.val1011, %.val1010
  br i1 %i.fd, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %bb.e
  %.val939 = load i32, ptr %i.ex, align 1, !tbaa !15
  %i.fe = icmp eq i32 %.val939, %.val942
  br i1 %i.fe, label %bb.g, label %bb.aw

bb.g:                                             ; preds = %bb.f
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  br i1 %i.dz, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %bb.g
  %.val971 = load i64, ptr %i.ff, align 1, !tbaa !20 ; 2 uses
  %.val970 = load i64, ptr %i.dy, align 1, !tbaa !20 ; 2 uses
  %.not.i525.i.i865 = icmp eq i64 %.val971, %.val970
  br i1 %.not.i525.i.i865, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fh = xor i64 %.val970, %.val971
  %i.fi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fh, i1 true)
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = lshr i32 %i.fj, 3
  br label %LZ4_count.exit529.i.i855

bb.j:                                             ; preds = %.thread, %bb.g
  %.150.i508.i.i844 = phi ptr [ %i.fg, %.thread ], [ %i.ff, %bb.g ] ; 2 uses
  %.145.i509.i.i845 = phi ptr [ %i.ea, %.thread ], [ %i.dy, %bb.g ] ; 3 uses
  %i.fl = icmp ult ptr %.145.i509.i.i845, %i.k
  br i1 %i.fl, label %.lr.ph1780, label %._crit_edge, !prof !23

.lr.ph1780:                                       ; preds = %bb.j, %bb.k
  %.246.i512.i.i8481779 = phi ptr [ %i.ft, %bb.k ], [ %.145.i509.i.i845, %bb.j ] ; 3 uses
  %.251.i511.i.i8471778 = phi ptr [ %i.fu, %bb.k ], [ %.150.i508.i.i844, %bb.j ] ; 2 uses
  %.251.i511.i.i847.val973 = load i64, ptr %.251.i511.i.i8471778, align 1, !tbaa !20 ; 2 uses
  %.246.i512.i.i848.val972 = load i64, ptr %.246.i512.i.i8481779, align 1, !tbaa !20 ; 2 uses
  %.not59.i521.i.i861 = icmp eq i64 %.251.i511.i.i847.val973, %.246.i512.i.i848.val972
  br i1 %.not59.i521.i.i861, label %bb.k, label %.thread1338

.thread1338:                                      ; preds = %.lr.ph1780
  %i.fm = xor i64 %.246.i512.i.i848.val972, %.251.i511.i.i847.val973
  %i.fn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fm, i1 true)
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %.246.i512.i.i8481779, i64 %i.fo
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.eb
  %i.fs = trunc i64 %i.fr to i32
  br label %LZ4_count.exit529.i.i855

bb.k:                                             ; preds = %.lr.ph1780
  %i.ft = getelementptr inbounds nuw i8, ptr %.246.i512.i.i8481779, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.251.i511.i.i8471778, i64 8 ; 2 uses
  %i.fv = icmp ult ptr %i.ft, %i.k
  br i1 %i.fv, label %.lr.ph1780, label %._crit_edge, !prof !24

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.251.i511.i.i847.lcssa = phi ptr [ %.150.i508.i.i844, %bb.j ], [ %i.fu, %bb.k ] ; 4 uses
  %.246.i512.i.i848.lcssa = phi ptr [ %.145.i509.i.i845, %bb.j ], [ %i.ft, %bb.k ] ; 5 uses
  %i.fw = icmp ult ptr %.246.i512.i.i848.lcssa, %i.x
  br i1 %i.fw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %.251.i511.i.i847.val = load i32, ptr %.251.i511.i.i847.lcssa, align 1, !tbaa !15
  %.246.i512.i.i848.val = load i32, ptr %.246.i512.i.i848.lcssa, align 1, !tbaa !15
  %i.fx = icmp eq i32 %.251.i511.i.i847.val, %.246.i512.i.i848.val
  br i1 %i.fx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fy = getelementptr inbounds nuw i8, ptr %.246.i512.i.i848.lcssa, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.251.i511.i.i847.lcssa, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge
  %.453.i514.i.i850 = phi ptr [ %i.fz, %bb.m ], [ %.251.i511.i.i847.lcssa, %bb.l ], [ %.251.i511.i.i847.lcssa, %._crit_edge ] ; 4 uses
  %.448.i515.i.i851 = phi ptr [ %i.fy, %bb.m ], [ %.246.i512.i.i848.lcssa, %bb.l ], [ %.246.i512.i.i848.lcssa, %._crit_edge ] ; 5 uses
  %i.ga = icmp ult ptr %.448.i515.i.i851, %i.y
  br i1 %i.ga, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.453.i514.i.i850.val = load i16, ptr %.453.i514.i.i850, align 1, !tbaa !25
  %.448.i515.i.i851.val = load i16, ptr %.448.i515.i.i851, align 1, !tbaa !25
  %i.gb = icmp eq i16 %.453.i514.i.i850.val, %.448.i515.i.i851.val
  br i1 %i.gb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gc = getelementptr inbounds nuw i8, ptr %.448.i515.i.i851, i64 2
  %i.gd = getelementptr inbounds nuw i8, ptr %.453.i514.i.i850, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.554.i516.i.i852 = phi ptr [ %i.gd, %bb.p ], [ %.453.i514.i.i850, %bb.o ], [ %.453.i514.i.i850, %bb.n ]
  %.5.i517.i.i853 = phi ptr [ %i.gc, %bb.p ], [ %.448.i515.i.i851, %bb.o ], [ %.448.i515.i.i851, %bb.n ] ; 4 uses
  %i.ge = icmp ult ptr %.5.i517.i.i853, %i.l
  br i1 %i.ge, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gf = load i8, ptr %.554.i516.i.i852, align 1, !tbaa !27
  %i.gg = load i8, ptr %.5.i517.i.i853, align 1, !tbaa !27
  %i.gh = icmp eq i8 %i.gf, %i.gg
  %spec.select.i520.i.i860.idx = zext i1 %i.gh to i64
  %spec.select.i520.i.i860 = getelementptr inbounds nuw i8, ptr %.5.i517.i.i853, i64 %spec.select.i520.i.i860.idx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.6.i518.i.i854 = phi ptr [ %.5.i517.i.i853, %bb.q ], [ %spec.select.i520.i.i860, %bb.r ]
  %i.gi = ptrtoint ptr %.6.i518.i.i854 to i64
  %i.gj = sub i64 %i.gi, %i.eb
  %i.gk = trunc i64 %i.gj to i32
  br label %LZ4_count.exit529.i.i855

LZ4_count.exit529.i.i855:                         ; preds = %.thread1338, %bb.i, %bb.s
  %.4.i519.i.i856 = phi i32 [ %i.fs, %.thread1338 ], [ %i.gk, %bb.s ], [ %i.fk, %bb.i ]
  %i.gl = add nsw i32 %.4.i519.i.i856, 4          ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, %.0.i.i6972680
  %.1352.i.i858 = select i1 %i.gm, i32 %i.et, i32 %.0351.i.i6912674
  %.1.i.i859 = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 %.0.i.i6972680)
  br label %bb.aw

bb.t:                                             ; preds = %bb.d
  %i.gn = sub i32 %.0323.i.i6942677, %i.bu
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.go ; 3 uses
  %.not431.i.i869 = icmp ugt i32 %.0323.i.i6942677, %i.ec
  br i1 %.not431.i.i869, label %bb.aw, label %bb.u, !prof !37

bb.u:                                             ; preds = %bb.t
  %.val = load i32, ptr %i.gp, align 1, !tbaa !15
  %i.gq = icmp eq i32 %.val, %.val942
  br i1 %i.gq, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %bb.u
  %i.gr = sub i32 %i.bp, %.0323.i.i6942677
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %.013271995, i64 %i.gs ; 2 uses
  %i.gu = icmp ugt ptr %i.gt, %i.l
  %spec.select.i.i870 = select i1 %i.gu, ptr %i.l, ptr %i.gt ; 12 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %spec.select.i.i870, i64 -7 ; 3 uses
  %i.gx = icmp ult ptr %i.dy, %i.gw
  br i1 %i.gx, label %bb.w, label %bb.y, !prof !19

bb.w:                                             ; preds = %bb.v
  %.val963 = load i64, ptr %i.gv, align 1, !tbaa !20 ; 2 uses
  %.val962 = load i64, ptr %i.dy, align 1, !tbaa !20 ; 2 uses
  %.not.i503.i.i916 = icmp eq i64 %.val963, %.val962
  br i1 %.not.i503.i.i916, label %.thread1342, label %bb.x

.thread1342:                                      ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gz = xor i64 %.val962, %.val963
  %i.ha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.gz, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = lshr i32 %i.hb, 3
  br label %LZ4_count.exit507.i.i882

bb.y:                                             ; preds = %.thread1342, %bb.v
  %.150.i486.i.i871 = phi ptr [ %i.gy, %.thread1342 ], [ %i.gv, %bb.v ] ; 2 uses
  %.145.i487.i.i872 = phi ptr [ %i.ea, %.thread1342 ], [ %i.dy, %bb.v ] ; 3 uses
  %i.hd = icmp ult ptr %.145.i487.i.i872, %i.gw
  br i1 %i.hd, label %.lr.ph1785, label %._crit_edge1786, !prof !23

.lr.ph1785:                                       ; preds = %bb.y, %bb.z
  %.246.i490.i.i8751783 = phi ptr [ %i.hl, %bb.z ], [ %.145.i487.i.i872, %bb.y ] ; 3 uses
  %.251.i489.i.i8741782 = phi ptr [ %i.hm, %bb.z ], [ %.150.i486.i.i871, %bb.y ] ; 2 uses
  %.251.i489.i.i874.val965 = load i64, ptr %.251.i489.i.i8741782, align 1, !tbaa !20 ; 2 uses
  %.246.i490.i.i875.val964 = load i64, ptr %.246.i490.i.i8751783, align 1, !tbaa !20 ; 2 uses
  %.not59.i499.i.i912 = icmp eq i64 %.251.i489.i.i874.val965, %.246.i490.i.i875.val964
  br i1 %.not59.i499.i.i912, label %bb.z, label %.thread1346

.thread1346:                                      ; preds = %.lr.ph1785
  %i.he = xor i64 %.246.i490.i.i875.val964, %.251.i489.i.i874.val965
  %i.hf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.he, i1 true)
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %.246.i490.i.i8751783, i64 %i.hg
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.eb
end_hunk_1
begin_hunk_2_@LZ4HC_compress_optimal:bb.a
  %.1315.i.i700 = phi i32 [ %5, %LZ4HC_Insert.exit.i.i689 ], [ %i.es, %bb.bz ], [ %i.es, %bb.bx ], [ %i.es, %bb.ca ], [ %i.es, %.backedge2443 ] ; 2 uses
  %.18.i.i701 = phi i32 [ 3, %LZ4HC_Insert.exit.i.i689 ], [ %.0.i.i697.be, %.backedge2443 ], [ %.6.i.i828, %bb.bz ], [ %.17.i.i784, %bb.ca ], [ %.5.i.i766, %bb.bx ] ; 3 uses
  %i.qm = icmp sgt i32 %.1315.i.i700, 0
  %or.cond13.i.i702 = select i1 %11, i1 %i.qm, i1 false
  %or.cond15.i.i703 = and i1 %i.bw, %or.cond13.i.i702
  br i1 %or.cond15.i.i703, label %bb.cb, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

bb.cb:                                            ; preds = %.thread1398
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bn, i64 262144
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !7
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bn, i64 262152
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !13 ; 2 uses
  %i.qr = ptrtoint ptr %i.qo to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bn, i64 262168
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !14
  %i.qw = zext i32 %i.qv to i64                   ; 2 uses
  %i.qx = add i64 %i.qt, %i.qw                    ; 2 uses
  %.val954 = load i32, ptr %.013271995, align 1, !tbaa !15
  %i.qy = mul i32 %.val954, -1640531535
  %i.qz = lshr i32 %i.qy, 17
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !3  ; 2 uses
  %i.rd = add i32 %i.rc, %i.by
  %i.re = trunc i64 %i.qx to i32
  %i.rf = sub i32 %i.rd, %i.re                    ; 2 uses
  %i.rg = sub i32 %i.bt, %i.rf                    ; 2 uses
  %i.rh = icmp ult i32 %i.rg, 65536
  br i1 %i.rh, label %.lr.ph1820, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

.lr.ph1820:                                       ; preds = %bb.cb
  %i.ri = sub nsw i64 0, %i.qw
  %i.rj = getelementptr inbounds i8, ptr %i.qq, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.bn, i64 131072
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cq, %.lr.ph1820
  %.in = phi i32 [ %.1315.i.i700, %.lr.ph1820 ], [ %i.rm, %bb.cq ]
  %.19370.i.i72518142700 = phi i32 [ %.18369.i.i699, %.lr.ph1820 ], [ %.21372.i.i732, %bb.cq ] ; 2 uses
  %.0340.i.i72618152699 = phi i32 [ %i.rc, %.lr.ph1820 ], [ %i.tn, %bb.cq ] ; 3 uses
  %.16339.i.i72718162698 = phi i32 [ %i.rf, %.lr.ph1820 ], [ %i.tk, %bb.cq ]
  %.19.i.i72918182697 = phi i32 [ %.18.i.i701, %.lr.ph1820 ], [ %.21.i.i733, %bb.cq ] ; 3 uses
  %i.rl = phi i32 [ %i.rg, %.lr.ph1820 ], [ %i.tl, %bb.cq ]
  %i.rm = add nsw i32 %.in, -1                    ; 2 uses
  %i.rn = zext i32 %.0340.i.i72618152699 to i64   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rn ; 3 uses
  %.val941 = load i32, ptr %i.ro, align 1, !tbaa !15
  %i.rp = icmp eq i32 %.val941, %.val942
  br i1 %i.rp, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.rq = sub i64 %i.qx, %i.rn
  %i.rr = getelementptr inbounds nuw i8, ptr %.013271995, i64 %i.rq ; 2 uses
  %i.rs = icmp ugt ptr %i.rr, %i.l
  %spec.select457.i.i734 = select i1 %i.rs, ptr %i.l, ptr %i.rr ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 4 ; 2 uses
  %i.ru = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -7 ; 3 uses
  %i.rv = icmp ult ptr %i.dy, %i.ru
  br i1 %i.rv, label %bb.ce, label %bb.cg, !prof !19

bb.ce:                                            ; preds = %bb.cd
  %.val975 = load i64, ptr %i.rt, align 1, !tbaa !20 ; 2 uses
  %.val974 = load i64, ptr %i.dy, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i756 = icmp eq i64 %.val975, %.val974
  br i1 %.not.i.i.i756, label %.thread1406, label %bb.cf

.thread1406:                                      ; preds = %bb.ce
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.rx = xor i64 %.val974, %.val975
  %i.ry = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rx, i1 true)
  %i.rz = trunc nuw nsw i64 %i.ry to i32
  %i.sa = lshr i32 %i.rz, 3
  br label %LZ4_count.exit.i.i746

bb.cg:                                            ; preds = %.thread1406, %bb.cd
  %.150.i.i.i735 = phi ptr [ %i.rw, %.thread1406 ], [ %i.rt, %bb.cd ] ; 2 uses
  %.145.i.i.i736 = phi ptr [ %i.ea, %.thread1406 ], [ %i.dy, %bb.cd ] ; 3 uses
  %i.sb = icmp ult ptr %.145.i.i.i736, %i.ru
  br i1 %i.sb, label %.lr.ph1809, label %._crit_edge1810, !prof !23

.lr.ph1809:                                       ; preds = %bb.cg, %bb.ch
  %.246.i.i.i7391807 = phi ptr [ %i.sj, %bb.ch ], [ %.145.i.i.i736, %bb.cg ] ; 3 uses
  %.251.i.i.i7381806 = phi ptr [ %i.sk, %bb.ch ], [ %.150.i.i.i735, %bb.cg ] ; 2 uses
  %.251.i.i.i738.val977 = load i64, ptr %.251.i.i.i7381806, align 1, !tbaa !20 ; 2 uses
  %.246.i.i.i739.val976 = load i64, ptr %.246.i.i.i7391807, align 1, !tbaa !20 ; 2 uses
  %.not59.i.i.i752 = icmp eq i64 %.251.i.i.i738.val977, %.246.i.i.i739.val976
  br i1 %.not59.i.i.i752, label %bb.ch, label %.thread1410

.thread1410:                                      ; preds = %.lr.ph1809
  %i.sc = xor i64 %.246.i.i.i739.val976, %.251.i.i.i738.val977
  %i.sd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sc, i1 true)
  %i.se = lshr i64 %i.sd, 3
  %i.sf = getelementptr inbounds nuw i8, ptr %.246.i.i.i7391807, i64 %i.se
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = sub i64 %i.sg, %i.eb
  %i.si = trunc i64 %i.sh to i32
  br label %LZ4_count.exit.i.i746

bb.ch:                                            ; preds = %.lr.ph1809
  %i.sj = getelementptr inbounds nuw i8, ptr %.246.i.i.i7391807, i64 8 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.251.i.i.i7381806, i64 8 ; 2 uses
  %i.sl = icmp ult ptr %i.sj, %i.ru
  br i1 %i.sl, label %.lr.ph1809, label %._crit_edge1810, !prof !24

._crit_edge1810:                                  ; preds = %bb.ch, %bb.cg
  %.251.i.i.i738.lcssa = phi ptr [ %.150.i.i.i735, %bb.cg ], [ %i.sk, %bb.ch ] ; 4 uses
  %.246.i.i.i739.lcssa = phi ptr [ %.145.i.i.i736, %bb.cg ], [ %i.sj, %bb.ch ] ; 5 uses
  %i.sm = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -3
  %i.sn = icmp ult ptr %.246.i.i.i739.lcssa, %i.sm
  br i1 %i.sn, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %._crit_edge1810
  %.251.i.i.i738.val = load i32, ptr %.251.i.i.i738.lcssa, align 1, !tbaa !15
  %.246.i.i.i739.val = load i32, ptr %.246.i.i.i739.lcssa, align 1, !tbaa !15
  %i.so = icmp eq i32 %.251.i.i.i738.val, %.246.i.i.i739.val
  br i1 %i.so, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sp = getelementptr inbounds nuw i8, ptr %.246.i.i.i739.lcssa, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %.251.i.i.i738.lcssa, i64 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %._crit_edge1810
  %.453.i.i.i741 = phi ptr [ %i.sq, %bb.cj ], [ %.251.i.i.i738.lcssa, %bb.ci ], [ %.251.i.i.i738.lcssa, %._crit_edge1810 ] ; 4 uses
  %.448.i.i.i742 = phi ptr [ %i.sp, %bb.cj ], [ %.246.i.i.i739.lcssa, %bb.ci ], [ %.246.i.i.i739.lcssa, %._crit_edge1810 ] ; 5 uses
  %i.sr = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -1
  %i.ss = icmp ult ptr %.448.i.i.i742, %i.sr
  br i1 %i.ss, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %.453.i.i.i741.val = load i16, ptr %.453.i.i.i741, align 1, !tbaa !25
  %.448.i.i.i742.val = load i16, ptr %.448.i.i.i742, align 1, !tbaa !25
  %i.st = icmp eq i16 %.453.i.i.i741.val, %.448.i.i.i742.val
  br i1 %i.st, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.su = getelementptr inbounds nuw i8, ptr %.448.i.i.i742, i64 2
  %i.sv = getelementptr inbounds nuw i8, ptr %.453.i.i.i741, i64 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %.554.i.i.i743 = phi ptr [ %i.sv, %bb.cm ], [ %.453.i.i.i741, %bb.cl ], [ %.453.i.i.i741, %bb.ck ]
  %.5.i.i.i744 = phi ptr [ %i.su, %bb.cm ], [ %.448.i.i.i742, %bb.cl ], [ %.448.i.i.i742, %bb.ck ] ; 4 uses
  %i.sw = icmp ult ptr %.5.i.i.i744, %spec.select457.i.i734
  br i1 %i.sw, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.sx = load i8, ptr %.554.i.i.i743, align 1, !tbaa !27
  %i.sy = load i8, ptr %.5.i.i.i744, align 1, !tbaa !27
  %i.sz = icmp eq i8 %i.sx, %i.sy
  %spec.select.i.i.i751.idx = zext i1 %i.sz to i64
  %spec.select.i.i.i751 = getelementptr inbounds nuw i8, ptr %.5.i.i.i744, i64 %spec.select.i.i.i751.idx
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.6.i.i.i745 = phi ptr [ %.5.i.i.i744, %bb.cn ], [ %spec.select.i.i.i751, %bb.co ]
  %i.ta = ptrtoint ptr %.6.i.i.i745 to i64
  %i.tb = sub i64 %i.ta, %i.eb
  %i.tc = trunc i64 %i.tb to i32
  br label %LZ4_count.exit.i.i746

LZ4_count.exit.i.i746:                            ; preds = %.thread1410, %bb.cf, %bb.cp
  %.4.i.i.i747 = phi i32 [ %i.si, %.thread1410 ], [ %i.tc, %bb.cp ], [ %i.sa, %bb.cf ]
  %i.td = add nsw i32 %.4.i.i.i747, 4             ; 2 uses
  %i.te = icmp sgt i32 %i.td, %.19.i.i72918182697
  %.20371.i.i749 = select i1 %i.te, i32 %i.rl, i32 %.19370.i.i72518142700
  %.20.i.i750 = tail call i32 @llvm.smax.i32(i32 %i.td, i32 %.19.i.i72918182697)
  br label %bb.cq

bb.cq:                                            ; preds = %LZ4_count.exit.i.i746, %bb.cc
  %.21372.i.i732 = phi i32 [ %.20371.i.i749, %LZ4_count.exit.i.i746 ], [ %.19370.i.i72518142700, %bb.cc ] ; 2 uses
  %.21.i.i733 = phi i32 [ %.20.i.i750, %LZ4_count.exit.i.i746 ], [ %.19.i.i72918182697, %bb.cc ] ; 2 uses
  %i.tf = and i32 %.0340.i.i72618152699, 65535
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.tg
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !29
  %i.tj = zext i16 %i.ti to i32                   ; 2 uses
  %i.tk = sub i32 %.16339.i.i72718162698, %i.tj   ; 2 uses
  %i.tl = sub i32 %i.bt, %i.tk                    ; 2 uses
  %i.tm = icmp ugt i32 %i.tl, 65535
  %i.tn = sub i32 %.0340.i.i72618152699, %i.tj
  %.not442.i.i730 = icmp eq i32 %i.rm, 0
  %or.cond2832 = select i1 %i.tm, i1 true, i1 %.not442.i.i730
  br i1 %or.cond2832, label %LZ4HC_InsertAndGetWiderMatch.exit.i704, label %bb.cc, !llvm.loop !44

LZ4HC_InsertAndGetWiderMatch.exit.i704:           ; preds = %bb.cq, %bb.cb, %.thread1398
  %.22373.i.i706 = phi i32 [ %.18369.i.i699, %.thread1398 ], [ %.18369.i.i699, %bb.cb ], [ %.21372.i.i732, %bb.cq ] ; 4 uses
  %.22.i.i707 = phi i32 [ %.18.i.i701, %.thread1398 ], [ %.18.i.i701, %bb.cb ], [ %.21.i.i733, %bb.cq ] ; 3 uses
  %.not.i714 = icmp sgt i32 %.22.i.i707, 3
  br i1 %.not.i714, label %LZ4HC_FindLongerMatch.exit920, label %LZ4HC_FindLongerMatch.exit920.thread

LZ4HC_FindLongerMatch.exit920:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i704
  %.sroa.2313.0.insert.ext.i.i708 = zext nneg i32 %.22.i.i707 to i64
  %i.to = add nsw i32 %.22.i.i707, -19
  %i.tp = icmp ult i32 %i.to, 18
  %or.cond.i720 = and i1 %i.tp, %.not.i.i760
  %.sroa.03.sroa.4.0.insert.shift.i722 = select i1 %or.cond.i720, i64 18, i64 %.sroa.2313.0.insert.ext.i.i708 ; 13 uses
  %.sroa.0162.4.extract.trunc = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722 to i32 ; 3 uses
  %i.tq = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, %spec.store.select
  br i1 %i.tq, label %bb.cr, label %.preheader1709.preheader

.preheader1709.preheader:                         ; preds = %LZ4HC_FindLongerMatch.exit920
  %sext2402 = shl i64 %i.bl, 32                   ; 3 uses
  %i.tr = ashr exact i64 %sext2402, 32            ; 3 uses
  %i.ts = icmp sgt i64 %i.tr, 14
  %i.tt = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.ts, label %LZ4HC_literalsPrice.exit929.thread, label %LZ4HC_literalsPrice.exit929

LZ4HC_FindLongerMatch.exit920.thread:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i704
  %i.tu = getelementptr inbounds nuw i8, ptr %.013271995, i64 1
  br label %.loopexit1705, !llvm.loop !86

bb.cr:                                            ; preds = %LZ4HC_FindLongerMatch.exit920
  %i.tv = getelementptr i8, ptr %.013151997, i64 1 ; 4 uses
  %i.tw = udiv i64 %i.bl, 255
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.bl
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = icmp ugt ptr %i.tz, %spec.select
  %or.cond.i437 = select i1 %.not.i, i1 %i.ua, i1 false
  br i1 %or.cond.i437, label %.thread1601, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ub = icmp ugt i64 %i.bl, 14
  br i1 %i.ub, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.uc = add i64 %i.bl, -15                      ; 2 uses
  store i8 -16, ptr %.013151997, align 1, !tbaa !27
  %i.ud = icmp ugt i64 %i.uc, 254
  br i1 %i.ud, label %.lr.ph1983.preheader, label %._crit_edge1984

.lr.ph1983.preheader:                             ; preds = %bb.ct
  %i.ue = add i64 %i.bj, -270
  %i.uf = sub i64 %i.ue, %i.bk                    ; 2 uses
  %i.ug = udiv i64 %i.uf, 255                     ; 3 uses
  %i.uh = add nuw nsw i64 %i.ug, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tv, i8 -1, i64 %i.uh, i1 false), !tbaa !27
  %scevgep2181 = getelementptr i8, ptr %.013151997, i64 2
  %scevgep2182 = getelementptr i8, ptr %scevgep2181, i64 %i.ug
  %.neg2404 = mul i64 %i.ug, -255
  %i.ui = add i64 %.neg2404, %i.uf
  br label %._crit_edge1984

._crit_edge1984:                                  ; preds = %.lr.ph1983.preheader, %bb.ct
  %.23.lcssa = phi ptr [ %i.tv, %bb.ct ], [ %scevgep2182, %.lr.ph1983.preheader ] ; 2 uses
  %.0.i444.lcssa = phi i64 [ %i.uc, %bb.ct ], [ %i.ui, %.lr.ph1983.preheader ]
  %i.uj = trunc nuw i64 %.0.i444.lcssa to i8
  %i.uk = getelementptr inbounds nuw i8, ptr %.23.lcssa, i64 1
  store i8 %i.uj, ptr %.23.lcssa, align 1, !tbaa !27
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %.tr.i438 = trunc nuw nsw i64 %i.bl to i8
  %i.ul = shl nuw i8 %.tr.i438, 4
  store i8 %i.ul, ptr %.013151997, align 1, !tbaa !27
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge1984
  %.19 = phi ptr [ %i.uk, %._crit_edge1984 ], [ %i.tv, %bb.cu ] ; 7 uses
  %.192784 = ptrtoint ptr %.19 to i64             ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.19, i64 %i.bl ; 3 uses
  %i.un = add i64 %.192784, %i.bj
  %i.uo = sub i64 %i.un, %i.bk
  %i.up = add nuw i64 %.192784, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.uo, i64 %i.up)
  %i.uq = xor i64 %.192784, -1
  %i.ur = add i64 %umax, %i.uq                    ; 2 uses
  %i.us = lshr i64 %i.ur, 3
  %i.ut = add nuw nsw i64 %i.us, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ur, 24
  %.192783 = ptrtoaddr ptr %.19 to i64
  %i.uu = sub i64 %.192783, %i.bk
  %diff.check = icmp ult i64 %i.uu, 32
  %or.cond2833 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2833, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.cv
  %n.vec = and i64 %i.ut, 4611686018427387900     ; 3 uses
  %i.uv = shl i64 %n.vec, 3                       ; 2 uses
  %i.uw = getelementptr i8, ptr %.013201996, i64 %i.uv
  %i.ux = getelementptr i8, ptr %.19, i64 %i.uv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.013201996, i64 %i.uy ; 2 uses
  %next.gep2785 = getelementptr i8, ptr %.19, i64 %i.uy ; 2 uses
  %i.uz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load2786 = load <2 x i64>, ptr %i.uz, align 1
  %i.va = getelementptr i8, ptr %next.gep2785, i64 16
  store <2 x i64> %wide.load, ptr %next.gep2785, align 1
  store <2 x i64> %wide.load2786, ptr %i.va, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vb = icmp eq i64 %index.next, %n.vec
  br i1 %i.vb, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ut, %n.vec
  br i1 %cmp.n, label %LZ4_wildCopy8.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.cv, %middle.block
  %.09.i.ph = phi ptr [ %.013201996, %bb.cv ], [ %i.uw, %middle.block ]
  %.0.i446.ph = phi ptr [ %.19, %bb.cv ], [ %i.ux, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi ptr [ %i.ve, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i446 = phi ptr [ %i.vd, %scalar.ph ], [ %.0.i446.ph, %scalar.ph.preheader ] ; 2 uses
  %i.vc = load i64, ptr %.09.i, align 1
  store i64 %i.vc, ptr %.0.i446, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.0.i446, i64 8 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.vf = icmp ult ptr %i.vd, %i.um
  br i1 %i.vf, label %scalar.ph, label %LZ4_wildCopy8.exit, !llvm.loop !88

LZ4_wildCopy8.exit:                               ; preds = %scalar.ph, %middle.block
  %i.vg = trunc i32 %.22373.i.i706 to i16
  store i16 %i.vg, ptr %i.um, align 1, !tbaa !25
  %i.vh = getelementptr i8, ptr %i.um, i64 2      ; 4 uses
  %i.vi = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -4 ; 2 uses
  %.lhs.trunc = trunc i64 %i.vi to i32
  %i.vj = udiv i32 %.lhs.trunc, 255
  %.zext = zext nneg i32 %i.vj to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 %.zext
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 6
  %i.vm = icmp ugt ptr %i.vl, %spec.select
  %or.cond64.i440 = select i1 %.not.i, i1 %i.vm, i1 false
  br i1 %or.cond64.i440, label %.thread1601, label %bb.cw

bb.cw:                                            ; preds = %LZ4_wildCopy8.exit
  %i.vn = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, 18
  br i1 %i.vn, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vo = load i8, ptr %.013151997, align 1, !tbaa !27
  %i.vp = add i8 %i.vo, 15
  store i8 %i.vp, ptr %.013151997, align 1, !tbaa !27
  %i.vq = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -19
  %i.vr = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, 528
  br i1 %i.vr, label %.lr.ph1990.preheader, label %._crit_edge1991

.lr.ph1990.preheader:                             ; preds = %bb.cx
  %i.vs = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -529 ; 2 uses
  %.lhs.trunc2440 = trunc i64 %i.vs to i32
  %i.vt = udiv i32 %.lhs.trunc2440, 510
  %.zext2441 = zext nneg i32 %i.vt to i64         ; 2 uses
  %i.vu = shl nuw nsw i64 %.zext2441, 1           ; 2 uses
  %i.vv = add nuw nsw i64 %i.vu, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vh, i8 -1, i64 %i.vv, i1 false), !tbaa !27
  %scevgep2183 = getelementptr i8, ptr %.19, i64 4
  %i.vw = add i64 %i.vu, %i.bj
  %i.vx = sub i64 %i.vw, %i.bk
  %scevgep2184 = getelementptr i8, ptr %scevgep2183, i64 %i.vx
  %.neg2405 = mul nsw i64 %.zext2441, -510
  %i.vy = add nsw i64 %.neg2405, %i.vs
  br label %._crit_edge1991

._crit_edge1991:                                  ; preds = %.lr.ph1990.preheader, %bb.cx
  %.21.lcssa = phi ptr [ %i.vh, %bb.cx ], [ %scevgep2184, %.lr.ph1990.preheader ] ; 3 uses
  %.051.i442.lcssa = phi i64 [ %i.vq, %bb.cx ], [ %i.vy, %.lr.ph1990.preheader ] ; 3 uses
  %i.vz = icmp samesign ugt i64 %.051.i442.lcssa, 254
  br i1 %i.vz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge1991
  %i.wa = add nsw i64 %.051.i442.lcssa, -255
  %i.wb = getelementptr inbounds nuw i8, ptr %.21.lcssa, i64 1
  store i8 -1, ptr %.21.lcssa, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge1991
  %.22 = phi ptr [ %i.wb, %bb.cy ], [ %.21.lcssa, %._crit_edge1991 ] ; 2 uses
  %.1.i443 = phi i64 [ %i.wa, %bb.cy ], [ %.051.i442.lcssa, %._crit_edge1991 ]
  %i.wc = trunc nuw i64 %.1.i443 to i8
  %i.wd = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.wc, ptr %.22, align 1, !tbaa !27
  br label %select.unfold1610

bb.da:                                            ; preds = %bb.cw
  %i.we = trunc nuw nsw i64 %i.vi to i8
  %i.wf = load i8, ptr %.013151997, align 1, !tbaa !27
  %i.wg = add i8 %i.wf, %i.we
  store i8 %i.wg, ptr %.013151997, align 1, !tbaa !27
  br label %select.unfold1610

.lr.ph1829:                                       ; preds = %LZ4HC_literalsPrice.exit929.2, %bb.db
  %i.wh = phi i32 [ %i.xq, %bb.db ], [ %i.xp, %LZ4HC_literalsPrice.exit929.2 ]
  %.0.i928.3 = phi i32 [ %i.xw, %bb.db ], [ %i.xp, %LZ4HC_literalsPrice.exit929.2 ]
  store i32 1, ptr %i.bd, align 4, !tbaa !89
  store i32 0, ptr %i.be, align 4, !tbaa !91
  store i32 %i.wh, ptr %i.bf, align 4, !tbaa !92
  store i32 %.0.i928.3, ptr %i.bc, align 4, !tbaa !93
  %i.wi = icmp sgt i32 %i.bm, 14
  %i.wj = add nsw i32 %i.bm, -15
end_hunk_2
begin_hunk_3_@LZ4HC_compress_optimal:bb.a
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 20
  store i32 0, ptr %i.yk, align 4, !tbaa !91
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 28
  store i32 1, ptr %i.yl, align 4, !tbaa !92
  %i.ym = load i32, ptr %i.yg, align 4, !tbaa !93
  %i.yn = add nsw i32 %i.ym, 1
  store i32 %i.yn, ptr %i.yi, align 4, !tbaa !93
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  store i32 1, ptr %i.yq, align 4, !tbaa !89
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 36
  store i32 0, ptr %i.yr, align 4, !tbaa !91
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 44
  store i32 2, ptr %i.ys, align 4, !tbaa !92
  %i.yt = load i32, ptr %i.yg, align 4, !tbaa !93
  %i.yu = add nsw i32 %i.yt, 2
  store i32 %i.yu, ptr %i.yp, align 4, !tbaa !93
  %i.yv = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 48
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  store i32 1, ptr %i.yx, align 4, !tbaa !89
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 52
  store i32 0, ptr %i.yy, align 4, !tbaa !91
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 60
  store i32 3, ptr %i.yz, align 4, !tbaa !92
  %i.za = load i32, ptr %i.yg, align 4, !tbaa !93
  %i.zb = add nsw i32 %i.za, 3
  store i32 %i.zb, ptr %i.yw, align 4, !tbaa !93
  %i.zc = sub nsw i64 0, %i.ca
  %invariant.gep1834 = getelementptr i8, ptr %i.bo, i64 %i.zc ; 6 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.bn, i64 262144 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.bn, i64 262152 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.bn, i64 262168 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bn, i64 131072 ; 2 uses
  %i.zh = add i32 %i.bp, 1
  %i.zi = trunc i64 %i.bj to i32
  %i.zj = add i32 %i.zh, %i.zi
  %i.zk = trunc i64 %i.bq to i32
  %i.zl = sub i32 %i.zj, %i.zk                    ; 2 uses
  %.not.i11532709 = icmp slt i64 %i.cc, 4
  %.not.i12412750 = icmp slt i64 %i.cc, 4
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph1954, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph1954 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %indvars.iv2175 = phi i64 [ 1, %.lr.ph1954 ], [ %indvars.iv.next2176, %.loopexit ] ; 12 uses
  %.03681951 = phi i32 [ %.sroa.0162.4.extract.trunc, %.lr.ph1954 ], [ %.4372.ph, %.loopexit ] ; 10 uses
  %i.zm = add i32 %i.zl, %indvar
  %i.zn = zext i32 %i.zm to i64                   ; 2 uses
  %i.zo = add i32 %i.zl, %indvar
  %i.zp = zext i32 %i.zo to i64                   ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.013271995, i64 %indvars.iv2175 ; 21 uses
  %i.zr = icmp ugt ptr %i.zq, %i.k
  br i1 %i.zr, label %.thread1595, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.zs = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !93
  %i.zv = load i32, ptr %i.zs, align 4, !tbaa !93 ; 2 uses
  %.not413 = icmp sgt i32 %i.zu, %i.zv            ; 2 uses
  br i1 %.not412, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  br i1 %.not413, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !93
  %i.zy = add nsw i32 %i.zv, 3
  %i.zz = icmp slt i32 %i.zx, %i.zy
  br i1 %i.zz, label %.loopexit, label %bb.di

bb.dh:                                            ; preds = %bb.de
  br i1 %.not413, label %bb.gx, label %.loopexit

bb.di:                                            ; preds = %bb.df, %bb.dg
  %i.aaa = ptrtoint ptr %i.zq to i64
  %i.aab = sub i64 %i.aaa, %i.bq                  ; 2 uses
  %i.aac = trunc i64 %i.aab to i32
  %i.aad = add i32 %i.bp, %i.aac                  ; 10 uses
  %i.aae = icmp ugt i32 %i.bv, %i.aad             ; 2 uses
  %i.aaf = add i32 %i.aad, -65535
  %i.aag = select i1 %i.aae, i32 %i.bu, i32 %i.aaf ; 5 uses
  %.val947 = load i32, ptr %i.zq, align 1, !tbaa !15 ; 18 uses
  %i.aah = load i32, ptr %i.w, align 8, !tbaa !32 ; 4 uses
  %i.aai = icmp ult i32 %i.aah, %i.aad
  br i1 %i.aai, label %.lr.ph1833.preheader, label %LZ4HC_Insert.exit.i.i456

.lr.ph1833.preheader:                             ; preds = %bb.di
  %i.aaj = zext i32 %i.aah to i64                 ; 6 uses
  %i.aak = zext i32 %i.aad to i64
  %i.aal = sub nsw i64 %i.zp, %i.aaj
  %xtraiter2960 = and i64 %i.aal, 1
  %lcmp.mod2961.not = icmp eq i64 %xtraiter2960, 0
  br i1 %lcmp.mod2961.not, label %.lr.ph1833.prol.loopexit, label %.lr.ph1833.prol

.lr.ph1833.prol:                                  ; preds = %.lr.ph1833.preheader
  %gep1835.prol = getelementptr i8, ptr %invariant.gep1834, i64 %i.aaj
  %.val956.prol = load i32, ptr %gep1835.prol, align 1, !tbaa !15
  %i.aam = mul i32 %.val956.prol, -1640531535
  %i.aan = lshr i32 %i.aam, 17
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aao ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !3
  %i.aar = sub i32 %i.aah, %i.aaq
  %i.aas = tail call i32 @llvm.umin.i32(i32 %i.aar, i32 65535)
  %i.aat = trunc nuw i32 %i.aas to i16
  %i.aau = and i64 %i.aaj, 65535
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.aau
  store i16 %i.aat, ptr %i.aav, align 2, !tbaa !29
  store i32 %i.aah, ptr %i.aap, align 4, !tbaa !3
  %indvars.iv.next2157.prol = add nuw nsw i64 %i.aaj, 1
  br label %.lr.ph1833.prol.loopexit

.lr.ph1833.prol.loopexit:                         ; preds = %.lr.ph1833.prol, %.lr.ph1833.preheader
  %indvars.iv2156.unr = phi i64 [ %i.aaj, %.lr.ph1833.preheader ], [ %indvars.iv.next2157.prol, %.lr.ph1833.prol ]
  %i.aaw = add nsw i64 %i.zp, -1
  %i.aax = icmp eq i64 %i.aaw, %i.aaj
  br i1 %i.aax, label %LZ4HC_Insert.exit.i.i456.loopexit, label %.lr.ph1833

.lr.ph1833:                                       ; preds = %.lr.ph1833.prol.loopexit, %.lr.ph1833
  %indvars.iv2156 = phi i64 [ %indvars.iv.next2157.1, %.lr.ph1833 ], [ %indvars.iv2156.unr, %.lr.ph1833.prol.loopexit ] ; 5 uses
  %gep1835 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv2156
  %.val956 = load i32, ptr %gep1835, align 1, !tbaa !15
  %i.aay = mul i32 %.val956, -1640531535
  %i.aaz = lshr i32 %i.aay, 17
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aba ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !3
  %i.abd = trunc nuw i64 %indvars.iv2156 to i32   ; 2 uses
  %i.abe = sub i32 %i.abd, %i.abc
  %i.abf = tail call i32 @llvm.umin.i32(i32 %i.abe, i32 65535)
  %i.abg = trunc nuw i32 %i.abf to i16
  %i.abh = and i64 %indvars.iv2156, 65535
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.abh
  store i16 %i.abg, ptr %i.abi, align 2, !tbaa !29
  store i32 %i.abd, ptr %i.abb, align 4, !tbaa !3
  %indvars.iv.next2157 = add nuw nsw i64 %indvars.iv2156, 1 ; 3 uses
  %gep1835.1 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv.next2157
  %.val956.1 = load i32, ptr %gep1835.1, align 1, !tbaa !15
  %i.abj = mul i32 %.val956.1, -1640531535
  %i.abk = lshr i32 %i.abj, 17
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abl ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !3
  %i.abo = trunc nuw i64 %indvars.iv.next2157 to i32 ; 2 uses
  %i.abp = sub i32 %i.abo, %i.abn
  %i.abq = tail call i32 @llvm.umin.i32(i32 %i.abp, i32 65535)
  %i.abr = trunc nuw i32 %i.abq to i16
  %i.abs = and i64 %indvars.iv.next2157, 65535
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.abs
  store i16 %i.abr, ptr %i.abt, align 2, !tbaa !29
  store i32 %i.abo, ptr %i.abm, align 4, !tbaa !3
  %indvars.iv.next2157.1 = add nuw nsw i64 %indvars.iv2156, 2 ; 2 uses
  %i.abu = icmp samesign ult i64 %indvars.iv.next2157.1, %i.aak
  br i1 %i.abu, label %.lr.ph1833, label %LZ4HC_Insert.exit.i.i456.loopexit, !llvm.loop !36

LZ4HC_Insert.exit.i.i456.loopexit:                ; preds = %.lr.ph1833, %.lr.ph1833.prol.loopexit
  %.val958.pre = load i32, ptr %i.zq, align 1, !tbaa !15
  br label %LZ4HC_Insert.exit.i.i456

LZ4HC_Insert.exit.i.i456:                         ; preds = %LZ4HC_Insert.exit.i.i456.loopexit, %bb.di
  %.val958 = phi i32 [ %.val958.pre, %LZ4HC_Insert.exit.i.i456.loopexit ], [ %.val947, %bb.di ]
  store i32 %i.aad, ptr %i.w, align 8, !tbaa !32
  %i.abv = mul i32 %.val958, -1640531535
  %i.abw = lshr i32 %i.abv, 17
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !3 ; 2 uses
  %i.aca = add i64 %i.aab, %i.ca
  %i.acb = getelementptr inbounds nuw i8, ptr %i.zq, i64 4 ; 12 uses
  %i.acc = icmp ult ptr %i.acb, %i.k              ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.zq, i64 12 ; 3 uses
  %i.ace = ptrtoint ptr %i.acb to i64             ; 8 uses
  %i.acf = and i32 %.val947, 65535
  %i.acg = lshr i32 %.val947, 16
  %i.ach = icmp eq i32 %i.acf, %i.acg
  %i.aci = and i32 %.val947, 255
  %i.acj = lshr i32 %.val947, 24
  %i.ack = icmp eq i32 %i.aci, %i.acj
  %i.acl = and i1 %i.ach, %i.ack
  %i.acm = zext i32 %.val947 to i64
  %i.acn = mul nuw i64 %i.acm, 4294967297         ; 6 uses
  %i.aco = icmp uge i32 %i.abz, %i.aag
  %i.acp = and i1 %i.aco, %i.bh
  br i1 %i.acp, label %.lr.ph2722, label %.thread1488

.lr.ph2722:                                       ; preds = %LZ4HC_Insert.exit.i.i456, %.backedge2442
  %.0.i.i4642721 = phi i32 [ %.0.i.i464.be, %.backedge2442 ], [ 3, %LZ4HC_Insert.exit.i.i456 ] ; 10 uses
  %.0314.i.i4632720 = phi i32 [ %i.acq, %.backedge2442 ], [ %5, %LZ4HC_Insert.exit.i.i456 ] ; 2 uses
  %.0317.i.i4622719 = phi i32 [ %.0317.i.i462.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 3 uses
  %.0323.i.i4612718 = phi i32 [ %.0323.i.i461.be, %.backedge2442 ], [ %i.abz, %LZ4HC_Insert.exit.i.i456 ] ; 14 uses
  %.0341.i.i4602717 = phi i32 [ %.0341.i.i460.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 4 uses
  %.0346.i.i4592716 = phi i64 [ %.0346.i.i459.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 4 uses
  %.0351.i.i4582715 = phi i32 [ %.0351.i.i458.be, %.backedge2442 ], [ 0, %LZ4HC_Insert.exit.i.i456 ] ; 7 uses
  %i.acq = add nsw i32 %.0314.i.i4632720, -1      ; 5 uses
  %i.acr = sub i32 %i.aad, %.0323.i.i4612718      ; 3 uses
  %i.acs = icmp ult i32 %i.acr, 8
  %or.cond445.i.i528 = and i1 %i.acs, %.not.i.i760
  br i1 %or.cond445.i.i528, label %bb.fc, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2722
  %.not430.i.i529 = icmp ult i32 %.0323.i.i4612718, %i.bp
  br i1 %.not430.i.i529, label %bb.dz, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.act = sub nuw i32 %.0323.i.i4612718, %i.bp
  %i.acu = zext i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.acu ; 4 uses
  %i.acw = sext i32 %.0.i.i4642721 to i64         ; 2 uses
  %i.acx = getelementptr inbounds i8, ptr %i.zq, i64 %i.acw
  %i.acy = getelementptr inbounds i8, ptr %i.acx, i64 -1
  %.val1013 = load i16, ptr %i.acy, align 1, !tbaa !25
  %i.acz = getelementptr inbounds i8, ptr %i.acv, i64 %i.acw
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 -1
  %.val1012 = load i16, ptr %i.ada, align 1, !tbaa !25
  %i.adb = icmp eq i16 %.val1013, %.val1012
  br i1 %i.adb, label %bb.dl, label %bb.fc

bb.dl:                                            ; preds = %bb.dk
  %.val944 = load i32, ptr %i.acv, align 1, !tbaa !15
  %i.adc = icmp eq i32 %.val944, %.val947
  br i1 %i.adc, label %bb.dm, label %bb.fc

bb.dm:                                            ; preds = %bb.dl
  %i.add = getelementptr inbounds nuw i8, ptr %i.acv, i64 4 ; 2 uses
  br i1 %i.acc, label %bb.dn, label %bb.dp, !prof !19

bb.dn:                                            ; preds = %bb.dm
  %.val987 = load i64, ptr %i.add, align 1, !tbaa !20 ; 2 uses
  %.val986 = load i64, ptr %i.acb, align 1, !tbaa !20 ; 2 uses
  %.not.i525.i.i632 = icmp eq i64 %.val987, %.val986
  br i1 %.not.i525.i.i632, label %.thread1422, label %bb.do

.thread1422:                                      ; preds = %bb.dn
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 12
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.adf = xor i64 %.val986, %.val987
  %i.adg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.adf, i1 true)
  %i.adh = trunc nuw nsw i64 %i.adg to i32
  %i.adi = lshr i32 %i.adh, 3
  br label %LZ4_count.exit529.i.i622

bb.dp:                                            ; preds = %.thread1422, %bb.dm
  %.150.i508.i.i611 = phi ptr [ %i.ade, %.thread1422 ], [ %i.add, %bb.dm ] ; 2 uses
  %.145.i509.i.i612 = phi ptr [ %i.acd, %.thread1422 ], [ %i.acb, %bb.dm ] ; 3 uses
  %i.adj = icmp ult ptr %.145.i509.i.i612, %i.k
  br i1 %i.adj, label %.lr.ph1839, label %._crit_edge1840, !prof !23

.lr.ph1839:                                       ; preds = %bb.dp, %bb.dq
  %.246.i512.i.i6151837 = phi ptr [ %i.adr, %bb.dq ], [ %.145.i509.i.i612, %bb.dp ] ; 3 uses
  %.251.i511.i.i6141836 = phi ptr [ %i.ads, %bb.dq ], [ %.150.i508.i.i611, %bb.dp ] ; 2 uses
  %.251.i511.i.i614.val989 = load i64, ptr %.251.i511.i.i6141836, align 1, !tbaa !20 ; 2 uses
  %.246.i512.i.i615.val988 = load i64, ptr %.246.i512.i.i6151837, align 1, !tbaa !20 ; 2 uses
  %.not59.i521.i.i628 = icmp eq i64 %.251.i511.i.i614.val989, %.246.i512.i.i615.val988
  br i1 %.not59.i521.i.i628, label %bb.dq, label %.thread1426

.thread1426:                                      ; preds = %.lr.ph1839
  %i.adk = xor i64 %.246.i512.i.i615.val988, %.251.i511.i.i614.val989
  %i.adl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.adk, i1 true)
  %i.adm = lshr i64 %i.adl, 3
  %i.adn = getelementptr inbounds nuw i8, ptr %.246.i512.i.i6151837, i64 %i.adm
  %i.ado = ptrtoint ptr %i.adn to i64
  %i.adp = sub i64 %i.ado, %i.ace
  %i.adq = trunc i64 %i.adp to i32
  br label %LZ4_count.exit529.i.i622

bb.dq:                                            ; preds = %.lr.ph1839
  %i.adr = getelementptr inbounds nuw i8, ptr %.246.i512.i.i6151837, i64 8 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.251.i511.i.i6141836, i64 8 ; 2 uses
  %i.adt = icmp ult ptr %i.adr, %i.k
  br i1 %i.adt, label %.lr.ph1839, label %._crit_edge1840, !prof !24

._crit_edge1840:                                  ; preds = %bb.dq, %bb.dp
  %.251.i511.i.i614.lcssa = phi ptr [ %.150.i508.i.i611, %bb.dp ], [ %i.ads, %bb.dq ] ; 4 uses
  %.246.i512.i.i615.lcssa = phi ptr [ %.145.i509.i.i612, %bb.dp ], [ %i.adr, %bb.dq ] ; 5 uses
  %i.adu = icmp ult ptr %.246.i512.i.i615.lcssa, %i.x
  br i1 %i.adu, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %._crit_edge1840
  %.251.i511.i.i614.val = load i32, ptr %.251.i511.i.i614.lcssa, align 1, !tbaa !15
  %.246.i512.i.i615.val = load i32, ptr %.246.i512.i.i615.lcssa, align 1, !tbaa !15
  %i.adv = icmp eq i32 %.251.i511.i.i614.val, %.246.i512.i.i615.val
  br i1 %i.adv, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.adw = getelementptr inbounds nuw i8, ptr %.246.i512.i.i615.lcssa, i64 4
  %i.adx = getelementptr inbounds nuw i8, ptr %.251.i511.i.i614.lcssa, i64 4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge1840
  %.453.i514.i.i617 = phi ptr [ %i.adx, %bb.ds ], [ %.251.i511.i.i614.lcssa, %bb.dr ], [ %.251.i511.i.i614.lcssa, %._crit_edge1840 ] ; 4 uses
  %.448.i515.i.i618 = phi ptr [ %i.adw, %bb.ds ], [ %.246.i512.i.i615.lcssa, %bb.dr ], [ %.246.i512.i.i615.lcssa, %._crit_edge1840 ] ; 5 uses
  %i.ady = icmp ult ptr %.448.i515.i.i618, %i.y
  br i1 %i.ady, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %.453.i514.i.i617.val = load i16, ptr %.453.i514.i.i617, align 1, !tbaa !25
  %.448.i515.i.i618.val = load i16, ptr %.448.i515.i.i618, align 1, !tbaa !25
  %i.adz = icmp eq i16 %.453.i514.i.i617.val, %.448.i515.i.i618.val
  br i1 %i.adz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aea = getelementptr inbounds nuw i8, ptr %.448.i515.i.i618, i64 2
  %i.aeb = getelementptr inbounds nuw i8, ptr %.453.i514.i.i617, i64 2
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.554.i516.i.i619 = phi ptr [ %i.aeb, %bb.dv ], [ %.453.i514.i.i617, %bb.du ], [ %.453.i514.i.i617, %bb.dt ]
  %.5.i517.i.i620 = phi ptr [ %i.aea, %bb.dv ], [ %.448.i515.i.i618, %bb.du ], [ %.448.i515.i.i618, %bb.dt ] ; 4 uses
  %i.aec = icmp ult ptr %.5.i517.i.i620, %i.l
  br i1 %i.aec, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aed = load i8, ptr %.554.i516.i.i619, align 1, !tbaa !27
  %i.aee = load i8, ptr %.5.i517.i.i620, align 1, !tbaa !27
  %i.aef = icmp eq i8 %i.aed, %i.aee
  %spec.select.i520.i.i627.idx = zext i1 %i.aef to i64
  %spec.select.i520.i.i627 = getelementptr inbounds nuw i8, ptr %.5.i517.i.i620, i64 %spec.select.i520.i.i627.idx
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.6.i518.i.i621 = phi ptr [ %.5.i517.i.i620, %bb.dw ], [ %spec.select.i520.i.i627, %bb.dx ]
  %i.aeg = ptrtoint ptr %.6.i518.i.i621 to i64
  %i.aeh = sub i64 %i.aeg, %i.ace
  %i.aei = trunc i64 %i.aeh to i32
  br label %LZ4_count.exit529.i.i622

LZ4_count.exit529.i.i622:                         ; preds = %.thread1426, %bb.do, %bb.dy
  %.4.i519.i.i623 = phi i32 [ %i.adq, %.thread1426 ], [ %i.aei, %bb.dy ], [ %i.adi, %bb.do ]
  %i.aej = add nsw i32 %.4.i519.i.i623, 4         ; 3 uses
  %i.aek = icmp sgt i32 %i.aej, %.0.i.i4642721
  %.1352.i.i625 = select i1 %i.aek, i32 %i.acr, i32 %.0351.i.i4582715
  %.1.i.i626 = tail call i32 @llvm.smax.i32(i32 %i.aej, i32 %.0.i.i4642721)
  br label %bb.fc

bb.dz:                                            ; preds = %bb.dj
  %i.ael = sub i32 %.0323.i.i4612718, %i.bu
  %i.aem = zext i32 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.aem ; 3 uses
  %.not431.i.i636 = icmp ugt i32 %.0323.i.i4612718, %i.ec
  br i1 %.not431.i.i636, label %bb.fc, label %bb.ea, !prof !37

bb.ea:                                            ; preds = %bb.dz
  %.val943 = load i32, ptr %i.aen, align 1, !tbaa !15
  %i.aeo = icmp eq i32 %.val943, %.val947
  br i1 %i.aeo, label %bb.eb, label %bb.fc

bb.eb:                                            ; preds = %bb.ea
  %i.aep = sub i32 %i.bp, %.0323.i.i4612718
  %i.aeq = zext i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.aeq ; 2 uses
  %i.aes = icmp ugt ptr %i.aer, %i.l
  %spec.select.i.i637 = select i1 %i.aes, ptr %i.l, ptr %i.aer ; 12 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 4 ; 2 uses
  %i.aeu = getelementptr inbounds i8, ptr %spec.select.i.i637, i64 -7 ; 3 uses
  %i.aev = icmp ult ptr %i.acb, %i.aeu
  br i1 %i.aev, label %bb.ec, label %bb.ee, !prof !19

bb.ec:                                            ; preds = %bb.eb
  %.val979 = load i64, ptr %i.aet, align 1, !tbaa !20 ; 2 uses
  %.val978 = load i64, ptr %i.acb, align 1, !tbaa !20 ; 2 uses
  %.not.i503.i.i683 = icmp eq i64 %.val979, %.val978
  br i1 %.not.i503.i.i683, label %.thread1430, label %bb.ed

.thread1430:                                      ; preds = %bb.ec
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aen, i64 12
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aex = xor i64 %.val978, %.val979
  %i.aey = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aex, i1 true)
  %i.aez = trunc nuw nsw i64 %i.aey to i32
  %i.afa = lshr i32 %i.aez, 3
  br label %LZ4_count.exit507.i.i649

bb.ee:                                            ; preds = %.thread1430, %bb.eb
  %.150.i486.i.i638 = phi ptr [ %i.aew, %.thread1430 ], [ %i.aet, %bb.eb ] ; 2 uses
  %.145.i487.i.i639 = phi ptr [ %i.acd, %.thread1430 ], [ %i.acb, %bb.eb ] ; 3 uses
  %i.afb = icmp ult ptr %.145.i487.i.i639, %i.aeu
  br i1 %i.afb, label %.lr.ph1846, label %._crit_edge1847, !prof !23

.lr.ph1846:                                       ; preds = %bb.ee, %bb.ef
  %.246.i490.i.i6421844 = phi ptr [ %i.afj, %bb.ef ], [ %.145.i487.i.i639, %bb.ee ] ; 3 uses
  %.251.i489.i.i6411843 = phi ptr [ %i.afk, %bb.ef ], [ %.150.i486.i.i638, %bb.ee ] ; 2 uses
  %.251.i489.i.i641.val981 = load i64, ptr %.251.i489.i.i6411843, align 1, !tbaa !20 ; 2 uses
  %.246.i490.i.i642.val980 = load i64, ptr %.246.i490.i.i6421844, align 1, !tbaa !20 ; 2 uses
  %.not59.i499.i.i679 = icmp eq i64 %.251.i489.i.i641.val981, %.246.i490.i.i642.val980
  br i1 %.not59.i499.i.i679, label %bb.ef, label %.thread1434

.thread1434:                                      ; preds = %.lr.ph1846
  %i.afc = xor i64 %.246.i490.i.i642.val980, %.251.i489.i.i641.val981
  %i.afd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.afc, i1 true)
  %i.afe = lshr i64 %i.afd, 3
  %i.aff = getelementptr inbounds nuw i8, ptr %.246.i490.i.i6421844, i64 %i.afe
  %i.afg = ptrtoint ptr %i.aff to i64
  %i.afh = sub i64 %i.afg, %i.ace
end_hunk_3
begin_hunk_4_@LZ4HC_compress_optimal:bb.a

bb.gp:                                            ; preds = %bb.go
  %i.aqj = getelementptr inbounds nuw i8, ptr %.246.i.i.i506.lcssa, i64 4
  %i.aqk = getelementptr inbounds nuw i8, ptr %.251.i.i.i505.lcssa, i64 4
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %._crit_edge1871
  %.453.i.i.i508 = phi ptr [ %i.aqk, %bb.gp ], [ %.251.i.i.i505.lcssa, %bb.go ], [ %.251.i.i.i505.lcssa, %._crit_edge1871 ] ; 4 uses
  %.448.i.i.i509 = phi ptr [ %i.aqj, %bb.gp ], [ %.246.i.i.i506.lcssa, %bb.go ], [ %.246.i.i.i506.lcssa, %._crit_edge1871 ] ; 5 uses
  %i.aql = getelementptr inbounds i8, ptr %spec.select457.i.i501, i64 -1
  %i.aqm = icmp ult ptr %.448.i.i.i509, %i.aql
  br i1 %i.aqm, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %.453.i.i.i508.val = load i16, ptr %.453.i.i.i508, align 1, !tbaa !25
  %.448.i.i.i509.val = load i16, ptr %.448.i.i.i509, align 1, !tbaa !25
  %i.aqn = icmp eq i16 %.453.i.i.i508.val, %.448.i.i.i509.val
  br i1 %i.aqn, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aqo = getelementptr inbounds nuw i8, ptr %.448.i.i.i509, i64 2
  %i.aqp = getelementptr inbounds nuw i8, ptr %.453.i.i.i508, i64 2
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq
  %.554.i.i.i510 = phi ptr [ %i.aqp, %bb.gs ], [ %.453.i.i.i508, %bb.gr ], [ %.453.i.i.i508, %bb.gq ]
  %.5.i.i.i511 = phi ptr [ %i.aqo, %bb.gs ], [ %.448.i.i.i509, %bb.gr ], [ %.448.i.i.i509, %bb.gq ] ; 4 uses
  %i.aqq = icmp ult ptr %.5.i.i.i511, %spec.select457.i.i501
  br i1 %i.aqq, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aqr = load i8, ptr %.554.i.i.i510, align 1, !tbaa !27
  %i.aqs = load i8, ptr %.5.i.i.i511, align 1, !tbaa !27
  %i.aqt = icmp eq i8 %i.aqr, %i.aqs
  %spec.select.i.i.i518.idx = zext i1 %i.aqt to i64
  %spec.select.i.i.i518 = getelementptr inbounds nuw i8, ptr %.5.i.i.i511, i64 %spec.select.i.i.i518.idx
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.6.i.i.i512 = phi ptr [ %.5.i.i.i511, %bb.gt ], [ %spec.select.i.i.i518, %bb.gu ]
  %i.aqu = ptrtoint ptr %.6.i.i.i512 to i64
  %i.aqv = sub i64 %i.aqu, %i.ace
  %i.aqw = trunc i64 %i.aqv to i32
  br label %LZ4_count.exit.i.i513

LZ4_count.exit.i.i513:                            ; preds = %.thread1500, %bb.gl, %bb.gv
  %.4.i.i.i514 = phi i32 [ %i.aqc, %.thread1500 ], [ %i.aqw, %bb.gv ], [ %i.apu, %bb.gl ]
  %i.aqx = add nsw i32 %.4.i.i.i514, 4            ; 2 uses
  %i.aqy = icmp sgt i32 %i.aqx, %.19.i.i49618792738
  %.20371.i.i516 = select i1 %i.aqy, i32 %i.apf, i32 %.19370.i.i49218752741
  %.20.i.i517 = tail call i32 @llvm.smax.i32(i32 %i.aqx, i32 %.19.i.i49618792738)
  br label %bb.gw

bb.gw:                                            ; preds = %LZ4_count.exit.i.i513, %bb.gi
  %.21372.i.i499 = phi i32 [ %.20371.i.i516, %LZ4_count.exit.i.i513 ], [ %.19370.i.i49218752741, %bb.gi ] ; 2 uses
  %.21.i.i500 = phi i32 [ %.20.i.i517, %LZ4_count.exit.i.i513 ], [ %.19.i.i49618792738, %bb.gi ] ; 2 uses
  %i.aqz = and i32 %.0340.i.i49318762740, 65535
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw [2 x i8], ptr %i.zg, i64 %i.ara
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !29
  %i.ard = zext i16 %i.arc to i32                 ; 2 uses
  %i.are = sub i32 %.16339.i.i49418772739, %i.ard ; 2 uses
  %i.arf = sub i32 %i.aad, %i.are                 ; 2 uses
  %i.arg = icmp ugt i32 %i.arf, 65535
  %i.arh = sub i32 %.0340.i.i49318762740, %i.ard
  %.not442.i.i497 = icmp eq i32 %i.apg, 0
  %or.cond2834 = select i1 %i.arg, i1 true, i1 %.not442.i.i497
  br i1 %or.cond2834, label %LZ4HC_InsertAndGetWiderMatch.exit.i471, label %bb.gi, !llvm.loop !44

LZ4HC_InsertAndGetWiderMatch.exit.i471:           ; preds = %bb.gw, %bb.gh, %.thread1488
  %.22373.i.i473 = phi i32 [ %.18369.i.i466, %.thread1488 ], [ %.18369.i.i466, %bb.gh ], [ %.21372.i.i499, %bb.gw ]
  %.22.i.i474 = phi i32 [ %.18.i.i468, %.thread1488 ], [ %.18.i.i468, %bb.gh ], [ %.21.i.i500, %bb.gw ] ; 2 uses
  %.not.i481 = icmp sgt i32 %.22.i.i474, 3
  br i1 %.not.i481, label %LZ4HC_FindLongerMatch.exit687, label %.loopexit

bb.gx:                                            ; preds = %bb.dh
  %i.ari = trunc nuw nsw i64 %indvars.iv2175 to i32
  %i.arj = sub nsw i32 %.03681951, %i.ari         ; 3 uses
  %i.ark = ptrtoint ptr %i.zq to i64
  %i.arl = sub i64 %i.ark, %i.bq                  ; 2 uses
  %i.arm = trunc i64 %i.arl to i32
  %i.arn = add i32 %i.bp, %i.arm                  ; 10 uses
  %i.aro = icmp ugt i32 %i.bv, %i.arn             ; 2 uses
  %i.arp = add i32 %i.arn, -65535
  %i.arq = select i1 %i.aro, i32 %i.bu, i32 %i.arp ; 5 uses
  %.val952 = load i32, ptr %i.zq, align 1, !tbaa !15 ; 18 uses
  %i.arr = load i32, ptr %i.w, align 8, !tbaa !32 ; 4 uses
  %i.ars = icmp ult i32 %i.arr, %i.arn
  br i1 %i.ars, label %.lr.ph1889.preheader, label %LZ4HC_Insert.exit.i.i

.lr.ph1889.preheader:                             ; preds = %bb.gx
  %i.art = zext i32 %i.arr to i64                 ; 6 uses
  %i.aru = zext i32 %i.arn to i64
  %i.arv = sub nsw i64 %i.zn, %i.art
  %xtraiter2962 = and i64 %i.arv, 1
  %lcmp.mod2963.not = icmp eq i64 %xtraiter2962, 0
  br i1 %lcmp.mod2963.not, label %.lr.ph1889.prol.loopexit, label %.lr.ph1889.prol

.lr.ph1889.prol:                                  ; preds = %.lr.ph1889.preheader
  %gep1891.prol = getelementptr i8, ptr %invariant.gep1834, i64 %i.art
  %.val959.prol = load i32, ptr %gep1891.prol, align 1, !tbaa !15
  %i.arw = mul i32 %.val959.prol, -1640531535
  %i.arx = lshr i32 %i.arw, 17
  %i.ary = zext nneg i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ary ; 2 uses
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !3
  %i.asb = sub i32 %i.arr, %i.asa
  %i.asc = tail call i32 @llvm.umin.i32(i32 %i.asb, i32 65535)
  %i.asd = trunc nuw i32 %i.asc to i16
  %i.ase = and i64 %i.art, 65535
  %i.asf = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ase
  store i16 %i.asd, ptr %i.asf, align 2, !tbaa !29
  store i32 %i.arr, ptr %i.arz, align 4, !tbaa !3
  %indvars.iv.next2160.prol = add nuw nsw i64 %i.art, 1
  br label %.lr.ph1889.prol.loopexit

.lr.ph1889.prol.loopexit:                         ; preds = %.lr.ph1889.prol, %.lr.ph1889.preheader
  %indvars.iv2159.unr = phi i64 [ %i.art, %.lr.ph1889.preheader ], [ %indvars.iv.next2160.prol, %.lr.ph1889.prol ]
  %i.asg = add nsw i64 %i.zn, -1
  %i.ash = icmp eq i64 %i.asg, %i.art
  br i1 %i.ash, label %LZ4HC_Insert.exit.i.i.loopexit, label %.lr.ph1889

.lr.ph1889:                                       ; preds = %.lr.ph1889.prol.loopexit, %.lr.ph1889
  %indvars.iv2159 = phi i64 [ %indvars.iv.next2160.1, %.lr.ph1889 ], [ %indvars.iv2159.unr, %.lr.ph1889.prol.loopexit ] ; 5 uses
  %gep1891 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv2159
  %.val959 = load i32, ptr %gep1891, align 1, !tbaa !15
  %i.asi = mul i32 %.val959, -1640531535
  %i.asj = lshr i32 %i.asi, 17
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ask ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !3
  %i.asn = trunc nuw i64 %indvars.iv2159 to i32   ; 2 uses
  %i.aso = sub i32 %i.asn, %i.asm
  %i.asp = tail call i32 @llvm.umin.i32(i32 %i.aso, i32 65535)
  %i.asq = trunc nuw i32 %i.asp to i16
  %i.asr = and i64 %indvars.iv2159, 65535
  %i.ass = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.asr
  store i16 %i.asq, ptr %i.ass, align 2, !tbaa !29
  store i32 %i.asn, ptr %i.asl, align 4, !tbaa !3
  %indvars.iv.next2160 = add nuw nsw i64 %indvars.iv2159, 1 ; 3 uses
  %gep1891.1 = getelementptr i8, ptr %invariant.gep1834, i64 %indvars.iv.next2160
  %.val959.1 = load i32, ptr %gep1891.1, align 1, !tbaa !15
  %i.ast = mul i32 %.val959.1, -1640531535
  %i.asu = lshr i32 %i.ast, 17
  %i.asv = zext nneg i32 %i.asu to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.asv ; 2 uses
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !3
  %i.asy = trunc nuw i64 %indvars.iv.next2160 to i32 ; 2 uses
  %i.asz = sub i32 %i.asy, %i.asx
  %i.ata = tail call i32 @llvm.umin.i32(i32 %i.asz, i32 65535)
  %i.atb = trunc nuw i32 %i.ata to i16
  %i.atc = and i64 %indvars.iv.next2160, 65535
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.atc
  store i16 %i.atb, ptr %i.atd, align 2, !tbaa !29
  store i32 %i.asy, ptr %i.asw, align 4, !tbaa !3
  %indvars.iv.next2160.1 = add nuw nsw i64 %indvars.iv2159, 2 ; 2 uses
  %i.ate = icmp samesign ult i64 %indvars.iv.next2160.1, %i.aru
  br i1 %i.ate, label %.lr.ph1889, label %LZ4HC_Insert.exit.i.i.loopexit, !llvm.loop !36

LZ4HC_Insert.exit.i.i.loopexit:                   ; preds = %.lr.ph1889, %.lr.ph1889.prol.loopexit
  %.val961.pre = load i32, ptr %i.zq, align 1, !tbaa !15
  br label %LZ4HC_Insert.exit.i.i

LZ4HC_Insert.exit.i.i:                            ; preds = %LZ4HC_Insert.exit.i.i.loopexit, %bb.gx
  %.val961 = phi i32 [ %.val961.pre, %LZ4HC_Insert.exit.i.i.loopexit ], [ %.val952, %bb.gx ]
  store i32 %i.arn, ptr %i.w, align 8, !tbaa !32
  %i.atf = mul i32 %.val961, -1640531535
  %i.atg = lshr i32 %i.atf, 17
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ath
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !3 ; 2 uses
  %i.atk = add i64 %i.arl, %i.ca
  %i.atl = getelementptr inbounds nuw i8, ptr %i.zq, i64 4 ; 12 uses
  %i.atm = icmp ult ptr %i.atl, %i.k              ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.zq, i64 12 ; 3 uses
  %i.ato = ptrtoint ptr %i.atl to i64             ; 8 uses
  %i.atp = and i32 %.val952, 65535
  %i.atq = lshr i32 %.val952, 16
  %i.atr = icmp eq i32 %i.atp, %i.atq
  %i.ats = and i32 %.val952, 255
  %i.att = lshr i32 %.val952, 24
  %i.atu = icmp eq i32 %i.ats, %i.att
  %i.atv = and i1 %i.atr, %i.atu
  %i.atw = zext i32 %.val952 to i64
  %i.atx = mul nuw i64 %i.atw, 4294967297         ; 6 uses
  %i.aty = icmp uge i32 %i.atj, %i.arq
  %i.atz = and i1 %i.aty, %i.bi
  br i1 %i.atz, label %.lr.ph2763, label %.thread1570

.lr.ph2763:                                       ; preds = %LZ4HC_Insert.exit.i.i, %.backedge
  %.0.i.i2762 = phi i32 [ %.0.i.i.be, %.backedge ], [ %i.arj, %LZ4HC_Insert.exit.i.i ] ; 10 uses
  %.0314.i.i2761 = phi i32 [ %i.aua, %.backedge ], [ %5, %LZ4HC_Insert.exit.i.i ] ; 2 uses
  %.0317.i.i2760 = phi i32 [ %.0317.i.i.be, %.backedge ], [ 0, %LZ4HC_Insert.exit.i.i ] ; 3 uses
  %.0323.i.i2759 = phi i32 [ %.0323.i.i.be, %.backedge ], [ %i.atj, %LZ4HC_Insert.exit.i.i ] ; 14 uses
  %.0341.i.i2758 = phi i32 [ %.0341.i.i.be, %.backedge ], [ 0, %LZ4HC_Insert.exit.i.i ] ; 4 uses
  %.0346.i.i2757 = phi i64 [ %.0346.i.i.be, %.backedge ], [ 0, %LZ4HC_Insert.exit.i.i ] ; 4 uses
  %.0351.i.i2756 = phi i32 [ %.0351.i.i.be, %.backedge ], [ 0, %LZ4HC_Insert.exit.i.i ] ; 7 uses
  %i.aua = add nsw i32 %.0314.i.i2761, -1         ; 5 uses
  %i.aub = sub i32 %i.arn, %.0323.i.i2759         ; 3 uses
  %i.auc = icmp ult i32 %i.aub, 8
  %or.cond445.i.i = and i1 %i.auc, %.not.i.i760
  br i1 %or.cond445.i.i, label %bb.ir, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph2763
  %.not430.i.i = icmp ult i32 %.0323.i.i2759, %i.bp
  br i1 %.not430.i.i, label %bb.ho, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aud = sub nuw i32 %.0323.i.i2759, %i.bp
  %i.aue = zext i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.aue ; 4 uses
  %i.aug = sext i32 %.0.i.i2762 to i64            ; 2 uses
  %i.auh = getelementptr inbounds i8, ptr %i.zq, i64 %i.aug
  %i.aui = getelementptr inbounds i8, ptr %i.auh, i64 -1
  %.val1015 = load i16, ptr %i.aui, align 1, !tbaa !25
  %i.auj = getelementptr inbounds i8, ptr %i.auf, i64 %i.aug
  %i.auk = getelementptr inbounds i8, ptr %i.auj, i64 -1
  %.val1014 = load i16, ptr %i.auk, align 1, !tbaa !25
  %i.aul = icmp eq i16 %.val1015, %.val1014
  br i1 %i.aul, label %bb.ha, label %bb.ir

bb.ha:                                            ; preds = %bb.gz
  %.val949 = load i32, ptr %i.auf, align 1, !tbaa !15
  %i.aum = icmp eq i32 %.val949, %.val952
  br i1 %i.aum, label %bb.hb, label %bb.ir

bb.hb:                                            ; preds = %bb.ha
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auf, i64 4 ; 2 uses
  br i1 %i.atm, label %bb.hc, label %bb.he, !prof !19

bb.hc:                                            ; preds = %bb.hb
  %.val1003 = load i64, ptr %i.aun, align 1, !tbaa !20 ; 2 uses
  %.val1002 = load i64, ptr %i.atl, align 1, !tbaa !20 ; 2 uses
  %.not.i525.i.i = icmp eq i64 %.val1003, %.val1002
  br i1 %.not.i525.i.i, label %.thread1504, label %bb.hd

.thread1504:                                      ; preds = %bb.hc
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auf, i64 12
  br label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aup = xor i64 %.val1002, %.val1003
  %i.auq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aup, i1 true)
  %i.aur = trunc nuw nsw i64 %i.auq to i32
  %i.aus = lshr i32 %i.aur, 3
  br label %LZ4_count.exit529.i.i

bb.he:                                            ; preds = %.thread1504, %bb.hb
  %.150.i508.i.i = phi ptr [ %i.auo, %.thread1504 ], [ %i.aun, %bb.hb ] ; 2 uses
  %.145.i509.i.i = phi ptr [ %i.atn, %.thread1504 ], [ %i.atl, %bb.hb ] ; 3 uses
  %i.aut = icmp ult ptr %.145.i509.i.i, %i.k
  br i1 %i.aut, label %.lr.ph1895, label %._crit_edge1896, !prof !23

.lr.ph1895:                                       ; preds = %bb.he, %bb.hf
  %.246.i512.i.i1893 = phi ptr [ %i.avb, %bb.hf ], [ %.145.i509.i.i, %bb.he ] ; 3 uses
  %.251.i511.i.i1892 = phi ptr [ %i.avc, %bb.hf ], [ %.150.i508.i.i, %bb.he ] ; 2 uses
  %.251.i511.i.i.val1005 = load i64, ptr %.251.i511.i.i1892, align 1, !tbaa !20 ; 2 uses
  %.246.i512.i.i.val1004 = load i64, ptr %.246.i512.i.i1893, align 1, !tbaa !20 ; 2 uses
  %.not59.i521.i.i = icmp eq i64 %.251.i511.i.i.val1005, %.246.i512.i.i.val1004
  br i1 %.not59.i521.i.i, label %bb.hf, label %.thread1508

.thread1508:                                      ; preds = %.lr.ph1895
  %i.auu = xor i64 %.246.i512.i.i.val1004, %.251.i511.i.i.val1005
  %i.auv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.auu, i1 true)
  %i.auw = lshr i64 %i.auv, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %.246.i512.i.i1893, i64 %i.auw
  %i.auy = ptrtoint ptr %i.aux to i64
  %i.auz = sub i64 %i.auy, %i.ato
  %i.ava = trunc i64 %i.auz to i32
  br label %LZ4_count.exit529.i.i

bb.hf:                                            ; preds = %.lr.ph1895
  %i.avb = getelementptr inbounds nuw i8, ptr %.246.i512.i.i1893, i64 8 ; 3 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %.251.i511.i.i1892, i64 8 ; 2 uses
  %i.avd = icmp ult ptr %i.avb, %i.k
  br i1 %i.avd, label %.lr.ph1895, label %._crit_edge1896, !prof !24

._crit_edge1896:                                  ; preds = %bb.hf, %bb.he
  %.251.i511.i.i.lcssa = phi ptr [ %.150.i508.i.i, %bb.he ], [ %i.avc, %bb.hf ] ; 4 uses
  %.246.i512.i.i.lcssa = phi ptr [ %.145.i509.i.i, %bb.he ], [ %i.avb, %bb.hf ] ; 5 uses
  %i.ave = icmp ult ptr %.246.i512.i.i.lcssa, %i.x
  br i1 %i.ave, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %._crit_edge1896
  %.251.i511.i.i.val = load i32, ptr %.251.i511.i.i.lcssa, align 1, !tbaa !15
  %.246.i512.i.i.val = load i32, ptr %.246.i512.i.i.lcssa, align 1, !tbaa !15
  %i.avf = icmp eq i32 %.251.i511.i.i.val, %.246.i512.i.i.val
  br i1 %i.avf, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.avg = getelementptr inbounds nuw i8, ptr %.246.i512.i.i.lcssa, i64 4
  %i.avh = getelementptr inbounds nuw i8, ptr %.251.i511.i.i.lcssa, i64 4
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %._crit_edge1896
  %.453.i514.i.i = phi ptr [ %i.avh, %bb.hh ], [ %.251.i511.i.i.lcssa, %bb.hg ], [ %.251.i511.i.i.lcssa, %._crit_edge1896 ] ; 4 uses
  %.448.i515.i.i = phi ptr [ %i.avg, %bb.hh ], [ %.246.i512.i.i.lcssa, %bb.hg ], [ %.246.i512.i.i.lcssa, %._crit_edge1896 ] ; 5 uses
  %i.avi = icmp ult ptr %.448.i515.i.i, %i.y
  br i1 %i.avi, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %.453.i514.i.i.val = load i16, ptr %.453.i514.i.i, align 1, !tbaa !25
  %.448.i515.i.i.val = load i16, ptr %.448.i515.i.i, align 1, !tbaa !25
  %i.avj = icmp eq i16 %.453.i514.i.i.val, %.448.i515.i.i.val
  br i1 %i.avj, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.avk = getelementptr inbounds nuw i8, ptr %.448.i515.i.i, i64 2
  %i.avl = getelementptr inbounds nuw i8, ptr %.453.i514.i.i, i64 2
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.554.i516.i.i = phi ptr [ %i.avl, %bb.hk ], [ %.453.i514.i.i, %bb.hj ], [ %.453.i514.i.i, %bb.hi ]
  %.5.i517.i.i = phi ptr [ %i.avk, %bb.hk ], [ %.448.i515.i.i, %bb.hj ], [ %.448.i515.i.i, %bb.hi ] ; 4 uses
  %i.avm = icmp ult ptr %.5.i517.i.i, %i.l
  br i1 %i.avm, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.avn = load i8, ptr %.554.i516.i.i, align 1, !tbaa !27
  %i.avo = load i8, ptr %.5.i517.i.i, align 1, !tbaa !27
  %i.avp = icmp eq i8 %i.avn, %i.avo
  %spec.select.i520.i.i.idx = zext i1 %i.avp to i64
  %spec.select.i520.i.i = getelementptr inbounds nuw i8, ptr %.5.i517.i.i, i64 %spec.select.i520.i.i.idx
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.6.i518.i.i = phi ptr [ %.5.i517.i.i, %bb.hl ], [ %spec.select.i520.i.i, %bb.hm ]
  %i.avq = ptrtoint ptr %.6.i518.i.i to i64
  %i.avr = sub i64 %i.avq, %i.ato
  %i.avs = trunc i64 %i.avr to i32
  br label %LZ4_count.exit529.i.i

LZ4_count.exit529.i.i:                            ; preds = %.thread1508, %bb.hd, %bb.hn
  %.4.i519.i.i = phi i32 [ %i.ava, %.thread1508 ], [ %i.avs, %bb.hn ], [ %i.aus, %bb.hd ]
  %i.avt = add nsw i32 %.4.i519.i.i, 4            ; 3 uses
  %i.avu = icmp sgt i32 %i.avt, %.0.i.i2762
  %.1352.i.i = select i1 %i.avu, i32 %i.aub, i32 %.0351.i.i2756
  %.1.i.i = tail call i32 @llvm.smax.i32(i32 %i.avt, i32 %.0.i.i2762)
  br label %bb.ir

bb.ho:                                            ; preds = %bb.gy
  %i.avv = sub i32 %.0323.i.i2759, %i.bu
  %i.avw = zext i32 %i.avv to i64
  %i.avx = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.avw ; 3 uses
  %.not431.i.i = icmp ugt i32 %.0323.i.i2759, %i.ec
  br i1 %.not431.i.i, label %bb.ir, label %bb.hp, !prof !37

bb.hp:                                            ; preds = %bb.ho
  %.val948 = load i32, ptr %i.avx, align 1, !tbaa !15
  %i.avy = icmp eq i32 %.val948, %.val952
  br i1 %i.avy, label %bb.hq, label %bb.ir

bb.hq:                                            ; preds = %bb.hp
  %i.avz = sub i32 %i.bp, %.0323.i.i2759
  %i.awa = zext i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.awa ; 2 uses
  %i.awc = icmp ugt ptr %i.awb, %i.l
  %spec.select.i.i = select i1 %i.awc, ptr %i.l, ptr %i.awb ; 12 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avx, i64 4 ; 2 uses
  %i.awe = getelementptr inbounds i8, ptr %spec.select.i.i, i64 -7 ; 3 uses
  %i.awf = icmp ult ptr %i.atl, %i.awe
  br i1 %i.awf, label %bb.hr, label %bb.ht, !prof !19

bb.hr:                                            ; preds = %bb.hq
  %.val995 = load i64, ptr %i.awd, align 1, !tbaa !20 ; 2 uses
  %.val994 = load i64, ptr %i.atl, align 1, !tbaa !20 ; 2 uses
  %.not.i503.i.i = icmp eq i64 %.val995, %.val994
  br i1 %.not.i503.i.i, label %.thread1512, label %bb.hs

.thread1512:                                      ; preds = %bb.hr
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avx, i64 12
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.awh = xor i64 %.val994, %.val995
  %i.awi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.awh, i1 true)
  %i.awj = trunc nuw nsw i64 %i.awi to i32
  %i.awk = lshr i32 %i.awj, 3
  br label %LZ4_count.exit507.i.i

bb.ht:                                            ; preds = %.thread1512, %bb.hq
  %.150.i486.i.i = phi ptr [ %i.awg, %.thread1512 ], [ %i.awd, %bb.hq ] ; 2 uses
  %.145.i487.i.i = phi ptr [ %i.atn, %.thread1512 ], [ %i.atl, %bb.hq ] ; 3 uses
  %i.awl = icmp ult ptr %.145.i487.i.i, %i.awe
  br i1 %i.awl, label %.lr.ph1902, label %._crit_edge1903, !prof !23

.lr.ph1902:                                       ; preds = %bb.ht, %bb.hu
  %.246.i490.i.i1900 = phi ptr [ %i.awt, %bb.hu ], [ %.145.i487.i.i, %bb.ht ] ; 3 uses
  %.251.i489.i.i1899 = phi ptr [ %i.awu, %bb.hu ], [ %.150.i486.i.i, %bb.ht ] ; 2 uses
  %.251.i489.i.i.val997 = load i64, ptr %.251.i489.i.i1899, align 1, !tbaa !20 ; 2 uses
  %.246.i490.i.i.val996 = load i64, ptr %.246.i490.i.i1900, align 1, !tbaa !20 ; 2 uses
  %.not59.i499.i.i = icmp eq i64 %.251.i489.i.i.val997, %.246.i490.i.i.val996
  br i1 %.not59.i499.i.i, label %bb.hu, label %.thread1516

.thread1516:                                      ; preds = %.lr.ph1902
  %i.awm = xor i64 %.246.i490.i.i.val996, %.251.i489.i.i.val997
  %i.awn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.awm, i1 true)
  %i.awo = lshr i64 %i.awn, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %.246.i490.i.i1900, i64 %i.awo
  %i.awq = ptrtoint ptr %i.awp to i64
  %i.awr = sub i64 %i.awq, %i.ato
end_hunk_4
begin_hunk_5_@LZ4HC_compress_optimal:bb.a
.thread1570:                                      ; preds = %.backedge, %bb.jv, %bb.js, %bb.ju, %LZ4HC_Insert.exit.i.i
  %.18369.i.i = phi i32 [ 0, %LZ4HC_Insert.exit.i.i ], [ %.0351.i.i.be, %.backedge ], [ %.6357.i.i, %bb.ju ], [ %.17368.i.i, %bb.jv ], [ %.5356.i.i, %bb.js ] ; 3 uses
  %.1315.i.i = phi i32 [ %5, %LZ4HC_Insert.exit.i.i ], [ %i.aua, %bb.ju ], [ %i.aua, %bb.js ], [ %i.aua, %bb.jv ], [ %i.aua, %.backedge ] ; 2 uses
  %.18.i.i = phi i32 [ %i.arj, %LZ4HC_Insert.exit.i.i ], [ %.0.i.i.be, %.backedge ], [ %.6.i.i, %bb.ju ], [ %.17.i.i, %bb.jv ], [ %.5.i.i, %bb.js ] ; 3 uses
  %i.bfu = icmp sgt i32 %.1315.i.i, 0
  %or.cond13.i.i = select i1 %11, i1 %i.bfu, i1 false
  %or.cond15.i.i = and i1 %i.aro, %or.cond13.i.i
  br i1 %or.cond15.i.i, label %bb.jw, label %LZ4HC_InsertAndGetWiderMatch.exit.i

bb.jw:                                            ; preds = %.thread1570
  %i.bfv = load ptr, ptr %i.zd, align 8, !tbaa !7
  %i.bfw = load ptr, ptr %i.ze, align 8, !tbaa !13 ; 2 uses
  %i.bfx = ptrtoint ptr %i.bfv to i64
  %i.bfy = ptrtoint ptr %i.bfw to i64
  %i.bfz = sub i64 %i.bfx, %i.bfy
  %i.bga = load i32, ptr %i.zf, align 8, !tbaa !14
  %i.bgb = zext i32 %i.bga to i64                 ; 2 uses
  %i.bgc = add i64 %i.bfz, %i.bgb                 ; 2 uses
  %.val960 = load i32, ptr %i.zq, align 1, !tbaa !15
  %i.bgd = mul i32 %.val960, -1640531535
  %i.bge = lshr i32 %i.bgd, 17
  %i.bgf = zext nneg i32 %i.bge to i64
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bgf
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !3 ; 2 uses
  %i.bgi = add i32 %i.bgh, %i.arq
  %i.bgj = trunc i64 %i.bgc to i32
  %i.bgk = sub i32 %i.bgi, %i.bgj                 ; 2 uses
  %i.bgl = sub i32 %i.arn, %i.bgk                 ; 2 uses
  %i.bgm = icmp ult i32 %i.bgl, 65536
  br i1 %i.bgm, label %.lr.ph1937, label %LZ4HC_InsertAndGetWiderMatch.exit.i

.lr.ph1937:                                       ; preds = %bb.jw
  %i.bgn = sub nsw i64 0, %i.bgb
  %i.bgo = getelementptr inbounds i8, ptr %i.bfw, i64 %i.bgn
  br label %bb.jx

bb.jx:                                            ; preds = %bb.kl, %.lr.ph1937
  %.in2831 = phi i32 [ %.1315.i.i, %.lr.ph1937 ], [ %i.bgq, %bb.kl ]
  %.19370.i.i19312782 = phi i32 [ %.18369.i.i, %.lr.ph1937 ], [ %.21372.i.i, %bb.kl ] ; 2 uses
  %.0340.i.i19322781 = phi i32 [ %i.bgh, %.lr.ph1937 ], [ %i.bir, %bb.kl ] ; 3 uses
  %.16339.i.i19332780 = phi i32 [ %i.bgk, %.lr.ph1937 ], [ %i.bio, %bb.kl ]
  %.19.i.i19352779 = phi i32 [ %.18.i.i, %.lr.ph1937 ], [ %.21.i.i, %bb.kl ] ; 3 uses
  %i.bgp = phi i32 [ %i.bgl, %.lr.ph1937 ], [ %i.bip, %bb.kl ]
  %i.bgq = add nsw i32 %.in2831, -1               ; 2 uses
  %i.bgr = zext i32 %.0340.i.i19322781 to i64     ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %i.bgr ; 3 uses
  %.val951 = load i32, ptr %i.bgs, align 1, !tbaa !15
  %i.bgt = icmp eq i32 %.val951, %.val952
  br i1 %i.bgt, label %bb.jy, label %bb.kl

bb.jy:                                            ; preds = %bb.jx
  %i.bgu = sub i64 %i.bgc, %i.bgr
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.bgu ; 2 uses
  %i.bgw = icmp ugt ptr %i.bgv, %i.l
  %spec.select457.i.i = select i1 %i.bgw, ptr %i.l, ptr %i.bgv ; 4 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgs, i64 4 ; 2 uses
  %i.bgy = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -7 ; 3 uses
  %i.bgz = icmp ult ptr %i.atl, %i.bgy
  br i1 %i.bgz, label %bb.jz, label %bb.kb, !prof !19

bb.jz:                                            ; preds = %bb.jy
  %.val1007 = load i64, ptr %i.bgx, align 1, !tbaa !20 ; 2 uses
  %.val1006 = load i64, ptr %i.atl, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val1007, %.val1006
  br i1 %.not.i.i.i, label %.thread1578, label %bb.ka

.thread1578:                                      ; preds = %bb.jz
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgs, i64 12
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bhb = xor i64 %.val1006, %.val1007
  %i.bhc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhb, i1 true)
  %i.bhd = trunc nuw nsw i64 %i.bhc to i32
  %i.bhe = lshr i32 %i.bhd, 3
  br label %LZ4_count.exit.i.i

bb.kb:                                            ; preds = %.thread1578, %bb.jy
  %.150.i.i.i = phi ptr [ %i.bha, %.thread1578 ], [ %i.bgx, %bb.jy ] ; 2 uses
  %.145.i.i.i = phi ptr [ %i.atn, %.thread1578 ], [ %i.atl, %bb.jy ] ; 3 uses
  %i.bhf = icmp ult ptr %.145.i.i.i, %i.bgy
  br i1 %i.bhf, label %.lr.ph1926, label %._crit_edge1927, !prof !23

.lr.ph1926:                                       ; preds = %bb.kb, %bb.kc
  %.246.i.i.i1924 = phi ptr [ %i.bhn, %bb.kc ], [ %.145.i.i.i, %bb.kb ] ; 3 uses
  %.251.i.i.i1923 = phi ptr [ %i.bho, %bb.kc ], [ %.150.i.i.i, %bb.kb ] ; 2 uses
  %.251.i.i.i.val1009 = load i64, ptr %.251.i.i.i1923, align 1, !tbaa !20 ; 2 uses
  %.246.i.i.i.val1008 = load i64, ptr %.246.i.i.i1924, align 1, !tbaa !20 ; 2 uses
  %.not59.i.i.i = icmp eq i64 %.251.i.i.i.val1009, %.246.i.i.i.val1008
  br i1 %.not59.i.i.i, label %bb.kc, label %.thread1582

.thread1582:                                      ; preds = %.lr.ph1926
  %i.bhg = xor i64 %.246.i.i.i.val1008, %.251.i.i.i.val1009
  %i.bhh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhg, i1 true)
  %i.bhi = lshr i64 %i.bhh, 3
  %i.bhj = getelementptr inbounds nuw i8, ptr %.246.i.i.i1924, i64 %i.bhi
  %i.bhk = ptrtoint ptr %i.bhj to i64
  %i.bhl = sub i64 %i.bhk, %i.ato
  %i.bhm = trunc i64 %i.bhl to i32
  br label %LZ4_count.exit.i.i

bb.kc:                                            ; preds = %.lr.ph1926
  %i.bhn = getelementptr inbounds nuw i8, ptr %.246.i.i.i1924, i64 8 ; 3 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.251.i.i.i1923, i64 8 ; 2 uses
  %i.bhp = icmp ult ptr %i.bhn, %i.bgy
  br i1 %i.bhp, label %.lr.ph1926, label %._crit_edge1927, !prof !24

._crit_edge1927:                                  ; preds = %bb.kc, %bb.kb
  %.251.i.i.i.lcssa = phi ptr [ %.150.i.i.i, %bb.kb ], [ %i.bho, %bb.kc ] ; 4 uses
  %.246.i.i.i.lcssa = phi ptr [ %.145.i.i.i, %bb.kb ], [ %i.bhn, %bb.kc ] ; 5 uses
  %i.bhq = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -3
  %i.bhr = icmp ult ptr %.246.i.i.i.lcssa, %i.bhq
  br i1 %i.bhr, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %._crit_edge1927
  %.251.i.i.i.val = load i32, ptr %.251.i.i.i.lcssa, align 1, !tbaa !15
  %.246.i.i.i.val = load i32, ptr %.246.i.i.i.lcssa, align 1, !tbaa !15
  %i.bhs = icmp eq i32 %.251.i.i.i.val, %.246.i.i.i.val
  br i1 %i.bhs, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bht = getelementptr inbounds nuw i8, ptr %.246.i.i.i.lcssa, i64 4
  %i.bhu = getelementptr inbounds nuw i8, ptr %.251.i.i.i.lcssa, i64 4
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %._crit_edge1927
  %.453.i.i.i = phi ptr [ %i.bhu, %bb.ke ], [ %.251.i.i.i.lcssa, %bb.kd ], [ %.251.i.i.i.lcssa, %._crit_edge1927 ] ; 4 uses
  %.448.i.i.i = phi ptr [ %i.bht, %bb.ke ], [ %.246.i.i.i.lcssa, %bb.kd ], [ %.246.i.i.i.lcssa, %._crit_edge1927 ] ; 5 uses
  %i.bhv = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -1
  %i.bhw = icmp ult ptr %.448.i.i.i, %i.bhv
  br i1 %i.bhw, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %.453.i.i.i.val = load i16, ptr %.453.i.i.i, align 1, !tbaa !25
  %.448.i.i.i.val = load i16, ptr %.448.i.i.i, align 1, !tbaa !25
  %i.bhx = icmp eq i16 %.453.i.i.i.val, %.448.i.i.i.val
  br i1 %i.bhx, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bhy = getelementptr inbounds nuw i8, ptr %.448.i.i.i, i64 2
  %i.bhz = getelementptr inbounds nuw i8, ptr %.453.i.i.i, i64 2
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %bb.kf
  %.554.i.i.i = phi ptr [ %i.bhz, %bb.kh ], [ %.453.i.i.i, %bb.kg ], [ %.453.i.i.i, %bb.kf ]
  %.5.i.i.i = phi ptr [ %i.bhy, %bb.kh ], [ %.448.i.i.i, %bb.kg ], [ %.448.i.i.i, %bb.kf ] ; 4 uses
  %i.bia = icmp ult ptr %.5.i.i.i, %spec.select457.i.i
  br i1 %i.bia, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.bib = load i8, ptr %.554.i.i.i, align 1, !tbaa !27
  %i.bic = load i8, ptr %.5.i.i.i, align 1, !tbaa !27
  %i.bid = icmp eq i8 %i.bib, %i.bic
  %spec.select.i.i.i.idx = zext i1 %i.bid to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 %spec.select.i.i.i.idx
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %.6.i.i.i = phi ptr [ %.5.i.i.i, %bb.ki ], [ %spec.select.i.i.i, %bb.kj ]
  %i.bie = ptrtoint ptr %.6.i.i.i to i64
  %i.bif = sub i64 %i.bie, %i.ato
  %i.big = trunc i64 %i.bif to i32
  br label %LZ4_count.exit.i.i

LZ4_count.exit.i.i:                               ; preds = %.thread1582, %bb.ka, %bb.kk
  %.4.i.i.i = phi i32 [ %i.bhm, %.thread1582 ], [ %i.big, %bb.kk ], [ %i.bhe, %bb.ka ]
  %i.bih = add nsw i32 %.4.i.i.i, 4               ; 2 uses
  %i.bii = icmp sgt i32 %i.bih, %.19.i.i19352779
  %.20371.i.i = select i1 %i.bii, i32 %i.bgp, i32 %.19370.i.i19312782
  %.20.i.i = tail call i32 @llvm.smax.i32(i32 %i.bih, i32 %.19.i.i19352779)
  br label %bb.kl

bb.kl:                                            ; preds = %LZ4_count.exit.i.i, %bb.jx
  %.21372.i.i = phi i32 [ %.20371.i.i, %LZ4_count.exit.i.i ], [ %.19370.i.i19312782, %bb.jx ] ; 2 uses
  %.21.i.i = phi i32 [ %.20.i.i, %LZ4_count.exit.i.i ], [ %.19.i.i19352779, %bb.jx ] ; 2 uses
  %i.bij = and i32 %.0340.i.i19322781, 65535
  %i.bik = zext nneg i32 %i.bij to i64
  %i.bil = getelementptr inbounds nuw [2 x i8], ptr %i.zg, i64 %i.bik
  %i.bim = load i16, ptr %i.bil, align 2, !tbaa !29
  %i.bin = zext i16 %i.bim to i32                 ; 2 uses
  %i.bio = sub i32 %.16339.i.i19332780, %i.bin    ; 2 uses
  %i.bip = sub i32 %i.arn, %i.bio                 ; 2 uses
  %i.biq = icmp ugt i32 %i.bip, 65535
  %i.bir = sub i32 %.0340.i.i19322781, %i.bin
  %.not442.i.i = icmp eq i32 %i.bgq, 0
  %or.cond2835 = select i1 %i.biq, i1 true, i1 %.not442.i.i
  br i1 %or.cond2835, label %LZ4HC_InsertAndGetWiderMatch.exit.i, label %bb.jx, !llvm.loop !44

LZ4HC_InsertAndGetWiderMatch.exit.i:              ; preds = %bb.kl, %bb.jw, %.thread1570
  %.22373.i.i = phi i32 [ %.18369.i.i, %.thread1570 ], [ %.18369.i.i, %bb.jw ], [ %.21372.i.i, %bb.kl ]
  %.22.i.i = phi i32 [ %.18.i.i, %.thread1570 ], [ %.18.i.i, %bb.jw ], [ %.21.i.i, %bb.kl ] ; 2 uses
  %.not.i453 = icmp slt i32 %i.arj, %.22.i.i
  br i1 %.not.i453, label %LZ4HC_FindLongerMatch.exit687, label %.loopexit

LZ4HC_FindLongerMatch.exit687:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i471
  %.22373.i.i.sink = phi i32 [ %.22373.i.i473, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.22373.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %.22.i.i.sink2552 = phi i32 [ %.22.i.i474, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.22.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 2 uses
  %.sroa.2313.0.insert.ext.i.i = zext i32 %.22.i.i.sink2552 to i64
  %i.bis = add i32 %.22.i.i.sink2552, -19
  %i.bit = icmp ult i32 %i.bis, 18
  %or.cond.i454 = and i1 %i.bit, %.not.i.i760
  %i.biu = shl nuw i64 %.sroa.2313.0.insert.ext.i.i, 32
  %.sroa.03.sroa.4.0.insert.shift.i = select i1 %or.cond.i454, i64 77309411328, i64 %i.biu ; 4 uses
  %.sroa.0104.4.extract.shift = lshr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32 ; 4 uses
  %.sroa.0104.4.extract.trunc = trunc nuw i64 %.sroa.0104.4.extract.shift to i32 ; 3 uses
  %.not415 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 0
  br i1 %.not415, label %.loopexit, label %bb.km

bb.km:                                            ; preds = %LZ4HC_FindLongerMatch.exit687
  %i.biv = ashr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32
  %i.biw = icmp ugt i64 %i.biv, %spec.store.select
  %i.bix = trunc nuw nsw i64 %indvars.iv2175 to i32 ; 4 uses
  %i.biy = add nsw i32 %i.bix, %.sroa.0104.4.extract.trunc
  %i.biz = icmp sgt i32 %i.biy, 4095
  %or.cond = select i1 %i.biw, i1 true, i1 %i.biz
  br i1 %or.cond, label %bb.ll, label %LZ4HC_literalsPrice.exit925

LZ4HC_literalsPrice.exit925:                      ; preds = %bb.km
  %i.bja = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 3 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 12
  %i.bjc = load i32, ptr %i.bjb, align 4, !tbaa !92 ; 22 uses
  %i.bjd = icmp sgt i32 %i.bjc, 14                ; 3 uses
  %i.bje = add nsw i32 %i.bjc, -15
  %i.bjf = udiv i32 %i.bje, 255
  %i.bjg = add nuw nsw i32 %i.bjc, 1
  %i.bjh = add nuw nsw i32 %i.bjg, %i.bjf         ; 3 uses
  %i.bji = sext i32 %i.bjc to i64
  %i.bjj = load i32, ptr %i.bja, align 4, !tbaa !93 ; 3 uses
  %spec.select2026 = select i1 %i.bjd, i32 %i.bjh, i32 %i.bjc
  %i.bjk = sub nsw i32 %i.bjj, %spec.select2026   ; 3 uses
  %i.bjl = add i32 %i.bjc, 1                      ; 2 uses
  %i.bjm = icmp sgt i32 %i.bjc, 13
  br i1 %i.bjm, label %bb.kn, label %LZ4HC_literalsPrice.exit923

.lr.ph1948:                                       ; preds = %.preheader1703
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  %.pre = load i32, ptr %i.bjn, align 4, !tbaa !89
  %i.bjo = icmp eq i32 %.pre, 1                   ; 2 uses
  %i.bjp = icmp sgt i64 %indvars.iv2175, %i.bji   ; 2 uses
  %i.bjq = sub nsw i32 %i.bix, %i.bjc
  %i.bjr = zext nneg i32 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bjr ; 2 uses
  %.not2965 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 17179869184
  br i1 %.not2965, label %.preheader.loopexit.peel.begin, label %.lr.ph1948.split

.lr.ph1948.split:                                 ; preds = %.lr.ph1948
  %spec.select2553 = select i1 %i.bjd, i32 %i.bjh, i32 %i.bjc
  %i.bjt = add nsw i32 %spec.select2553, 3        ; 2 uses
  %invariant.op3087 = add i32 1, %i.bjt
  %i.bju = add nsw i64 %.sroa.0104.4.extract.shift, -1
  br label %bb.lb

bb.kn:                                            ; preds = %LZ4HC_literalsPrice.exit925
  %i.bjv = add nsw i32 %i.bjc, -14
  %i.bjw = udiv i32 %i.bjv, 255
  %i.bjx = add nuw i32 %i.bjc, 2
  %i.bjy = add nuw nsw i32 %i.bjx, %i.bjw
  br label %LZ4HC_literalsPrice.exit923

LZ4HC_literalsPrice.exit923:                      ; preds = %LZ4HC_literalsPrice.exit925, %bb.kn
  %.0.i922 = phi i32 [ %i.bjy, %bb.kn ], [ %i.bjl, %LZ4HC_literalsPrice.exit925 ]
  %i.bjz = add nsw i32 %.0.i922, %i.bjk           ; 2 uses
  %i.bka = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 16 ; 2 uses
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !93
  %i.bkd = icmp slt i32 %i.bjz, %i.bkc
  br i1 %i.bkd, label %bb.ko, label %LZ4HC_literalsPrice.exit925.1

bb.ko:                                            ; preds = %LZ4HC_literalsPrice.exit923
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bka, i64 24
  store i32 1, ptr %i.bke, align 4, !tbaa !89
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bka, i64 20
  store i32 0, ptr %i.bkf, align 4, !tbaa !91
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bka, i64 28
  store i32 %i.bjl, ptr %i.bkg, align 4, !tbaa !92
  store i32 %i.bjz, ptr %i.bkb, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit925.1

LZ4HC_literalsPrice.exit925.1:                    ; preds = %bb.ko, %LZ4HC_literalsPrice.exit923
  %i.bkh = add i32 %i.bjc, 2                      ; 2 uses
  %i.bki = icmp sgt i32 %i.bjc, 12
  br i1 %i.bki, label %bb.kp, label %LZ4HC_literalsPrice.exit923.1

bb.kp:                                            ; preds = %LZ4HC_literalsPrice.exit925.1
  %i.bkj = add nsw i32 %i.bjc, -13
  %i.bkk = udiv i32 %i.bkj, 255
  %i.bkl = add nuw i32 %i.bjc, 3
  %i.bkm = add nuw nsw i32 %i.bkl, %i.bkk
  br label %LZ4HC_literalsPrice.exit923.1

LZ4HC_literalsPrice.exit923.1:                    ; preds = %bb.kp, %LZ4HC_literalsPrice.exit925.1
  %.0.i922.1 = phi i32 [ %i.bkm, %bb.kp ], [ %i.bkh, %LZ4HC_literalsPrice.exit925.1 ]
  %i.bkn = add nsw i32 %.0.i922.1, %i.bjk         ; 2 uses
  %i.bko = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 32 ; 2 uses
  %i.bkq = load i32, ptr %i.bkp, align 4, !tbaa !93
  %i.bkr = icmp slt i32 %i.bkn, %i.bkq
  br i1 %i.bkr, label %bb.kq, label %LZ4HC_literalsPrice.exit925.2

bb.kq:                                            ; preds = %LZ4HC_literalsPrice.exit923.1
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bko, i64 40
  store i32 1, ptr %i.bks, align 4, !tbaa !89
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bko, i64 36
  store i32 0, ptr %i.bkt, align 4, !tbaa !91
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bko, i64 44
  store i32 %i.bkh, ptr %i.bku, align 4, !tbaa !92
  store i32 %i.bkn, ptr %i.bkp, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit925.2

LZ4HC_literalsPrice.exit925.2:                    ; preds = %bb.kq, %LZ4HC_literalsPrice.exit923.1
  %i.bkv = add i32 %i.bjc, 3                      ; 2 uses
  %i.bkw = icmp sgt i32 %i.bjc, 11
  br i1 %i.bkw, label %bb.kr, label %LZ4HC_literalsPrice.exit923.2

bb.kr:                                            ; preds = %LZ4HC_literalsPrice.exit925.2
  %i.bkx = add nsw i32 %i.bjc, -12
  %i.bky = udiv i32 %i.bkx, 255
  %i.bkz = add nuw i32 %i.bjc, 4
  %i.bla = add nuw nsw i32 %i.bkz, %i.bky
  br label %LZ4HC_literalsPrice.exit923.2

LZ4HC_literalsPrice.exit923.2:                    ; preds = %bb.kr, %LZ4HC_literalsPrice.exit925.2
  %.0.i922.2 = phi i32 [ %i.bla, %bb.kr ], [ %i.bkv, %LZ4HC_literalsPrice.exit925.2 ]
  %i.blb = add nsw i32 %.0.i922.2, %i.bjk         ; 2 uses
  %i.blc = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2175 ; 4 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 48 ; 2 uses
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !93
  %i.blf = icmp slt i32 %i.blb, %i.ble
  br i1 %i.blf, label %bb.ks, label %.preheader1703

bb.ks:                                            ; preds = %LZ4HC_literalsPrice.exit923.2
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blc, i64 56
  store i32 1, ptr %i.blg, align 4, !tbaa !89
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blc, i64 52
  store i32 0, ptr %i.blh, align 4, !tbaa !91
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blc, i64 60
  store i32 %i.bkv, ptr %i.bli, align 4, !tbaa !92
  store i32 %i.blb, ptr %i.bld, align 4, !tbaa !93
  br label %.preheader1703

.preheader1703:                                   ; preds = %bb.ks, %LZ4HC_literalsPrice.exit923.2
  %.not4161944 = icmp slt i32 %.sroa.0104.4.extract.trunc, 4
  br i1 %.not4161944, label %.preheader, label %.lr.ph1948

.preheader.loopexit.peel.begin:                   ; preds = %.lr.ph1948, %bb.lk
  %i.blj = phi i64 [ 4, %.lr.ph1948 ], [ %indvars.iv.next2167, %bb.lk ] ; 7 uses
  %i.blk = phi i32 [ %.03681951, %.lr.ph1948 ], [ %.3371, %bb.lk ] ; 4 uses
  %i.bll = add nuw nsw i64 %i.blj, %indvars.iv2175 ; 3 uses
  br i1 %i.bjo, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %.preheader.loopexit.peel.begin
  %i.blm = icmp samesign ugt i64 %i.blj, 18
  br i1 %i.blm, label %bb.ku, label %LZ4HC_sequencePrice.exit.peel

bb.ku:                                            ; preds = %bb.kt
  %i.bln = trunc i64 %i.blj to i32
  %i.blo = add i32 %i.bln, -19
  %i.blp = udiv i32 %i.blo, 255
  %i.blq = add nuw nsw i32 %i.blp, 4
  br label %LZ4HC_sequencePrice.exit.peel

LZ4HC_sequencePrice.exit.peel:                    ; preds = %bb.ku, %bb.kt
  %.0.i931.peel = phi i32 [ %i.blq, %bb.ku ], [ 3, %bb.kt ]
  %i.blr = add nsw i32 %.0.i931.peel, %i.bjj
  br label %bb.ky

bb.kv:                                            ; preds = %.preheader.loopexit.peel.begin
  br i1 %i.bjp, label %bb.kw, label %LZ4HC_literalsPrice.exit.i.peel

bb.kw:                                            ; preds = %bb.kv
  %i.bls = load i32, ptr %i.bjs, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit.i.peel

LZ4HC_literalsPrice.exit.i.peel:                  ; preds = %bb.kw, %bb.kv
  %i.blt = phi i32 [ %i.bls, %bb.kw ], [ 0, %bb.kv ]
  %spec.select2553.peel = select i1 %i.bjd, i32 %i.bjh, i32 %i.bjc
  %i.blu = add nsw i32 %spec.select2553.peel, 3   ; 2 uses
  %i.blv = icmp samesign ugt i64 %i.blj, 18
  br i1 %i.blv, label %bb.kx, label %LZ4HC_sequencePrice.exit934.peel

bb.kx:                                            ; preds = %LZ4HC_literalsPrice.exit.i.peel
  %i.blw = trunc i64 %i.blj to i32
  %i.blx = add i32 %i.blw, -19
  %i.bly = udiv i32 %i.blx, 255
  %i.blz = add nuw nsw i32 %i.bly, 1
  %i.bma = add nsw i32 %i.blz, %i.blu
  br label %LZ4HC_sequencePrice.exit934.peel

LZ4HC_sequencePrice.exit934.peel:                 ; preds = %bb.kx, %LZ4HC_literalsPrice.exit.i.peel
  %.0.i933.peel = phi i32 [ %i.bma, %bb.kx ], [ %i.blu, %LZ4HC_literalsPrice.exit.i.peel ]
  %i.bmb = add nsw i32 %.0.i933.peel, %i.blt
  br label %bb.ky

bb.ky:                                            ; preds = %LZ4HC_sequencePrice.exit934.peel, %LZ4HC_sequencePrice.exit.peel
  %.0381.peel = phi i32 [ %i.bmb, %LZ4HC_sequencePrice.exit934.peel ], [ %i.blr, %LZ4HC_sequencePrice.exit.peel ] ; 2 uses
  %.0380.peel = phi i32 [ %i.bjc, %LZ4HC_sequencePrice.exit934.peel ], [ 0, %LZ4HC_sequencePrice.exit.peel ]
  %i.bmc = add nuw nsw i32 %i.blk, 3
  %i.bmd = trunc nuw i64 %i.bll to i32            ; 2 uses
  %i.bme = icmp slt i32 %i.bmc, %i.bmd
  br i1 %i.bme, label %bb.la, label %bb.kz

end_hunk_5
