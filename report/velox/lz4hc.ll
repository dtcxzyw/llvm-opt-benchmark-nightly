Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/lz4hc?download=true
inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_generic:bb.a
.lr.ph1706.i:                                     ; preds = %bb.ll, %.lr.ph1706.preheader.i
  %indvars.iv2114.i = phi i64 [ 0, %.lr.ph1706.preheader.i ], [ %indvars.iv.next2115.i, %bb.ll ] ; 4 uses
  %i.bmm = getelementptr inbounds i8, ptr %i.ati, i64 %indvars.iv2114.i
  %i.bmn = getelementptr inbounds i8, ptr %i.bmm, i64 -4
  %.val578.i = load i32, ptr %i.bmn, align 1, !tbaa !16 ; 2 uses
  %i.bmo = getelementptr inbounds i8, ptr %i.bkq, i64 %indvars.iv2114.i
  %i.bmp = getelementptr inbounds i8, ptr %i.bmo, i64 -4
  %.val577.i = load i32, ptr %i.bmp, align 1, !tbaa !16 ; 2 uses
  %.not.i531.i.i = icmp eq i32 %.val578.i, %.val577.i
  br i1 %.not.i531.i.i, label %bb.ll, label %.thread1243.i

.thread1243.i:                                    ; preds = %.lr.ph1706.i
  %i.bmq = trunc nsw i64 %indvars.iv2114.i to i32
  %i.bmr = xor i32 %.val577.i, %.val578.i
  %i.bms = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.bmr, i1 true)
  %i.bmt = lshr i32 %i.bms, 3
  %i.bmu = sub nsw i32 %i.bmq, %i.bmt
  br label %LZ4HC_countBack.exit.i.i

bb.ll:                                            ; preds = %.lr.ph1706.i
  %indvars.iv.next2115.i = add nsw i64 %indvars.iv2114.i, -4 ; 3 uses
  %i.bmv = icmp sgt i64 %indvars.iv.next2115.i, %invariant.op2682.i
  br i1 %i.bmv, label %.lr.ph1706.i, label %.preheader.loopexit.i

bb.lm:                                            ; preds = %.lr.ph1104
  %i.bmw = icmp sgt i64 %indvars.iv.next2118.i, %i.bmi
  br i1 %i.bmw, label %.lr.ph1104, label %LZ4HC_countBack.exit.i.i, !llvm.loop !30

.lr.ph1104:                                       ; preds = %.preheader.i, %bb.lm
  %indvars.iv2117.i1103 = phi i64 [ %indvars.iv.next2118.i, %bb.lm ], [ %i.bmk, %.preheader.i ] ; 2 uses
  %indvars.iv.next2118.i = add nsw i64 %indvars.iv2117.i1103, -1 ; 4 uses
  %i.bmx = getelementptr inbounds i8, ptr %i.ati, i64 %indvars.iv.next2118.i
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !29
  %i.bmz = getelementptr inbounds i8, ptr %i.bkq, i64 %indvars.iv.next2118.i
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !29
  %i.bnb = icmp eq i8 %i.bmy, %i.bna
  br i1 %i.bnb, label %bb.lm, label %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i, !llvm.loop !30

LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i: ; preds = %.lr.ph1104
  %i.bnc = trunc nsw i64 %indvars.iv2117.i1103 to i32
  br label %LZ4HC_countBack.exit.i.i

LZ4HC_countBack.exit.i.i:                         ; preds = %bb.lm, %.preheader.i, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i, %.thread1243.i, %LZ4_count.exit.i173.i
  %i.bnd = phi i32 [ 0, %LZ4_count.exit.i173.i ], [ %i.bmu, %.thread1243.i ], [ %i.bnc, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i ], [ %smin2119.i, %.preheader.i ], [ %smin2119.i, %bb.lm ] ; 2 uses
  %i.bne = sub i32 %i.bmf, %i.bnd                 ; 2 uses
  %i.bnf = icmp sgt i32 %i.bne, %.19.i1561713.i1105 ; 2 uses
  %.20368.i175.i = select i1 %i.bnf, i32 %i.bkn, i32 %.19367.i1531710.i1108
  %.8345.i176.i = select i1 %i.bnf, i32 %i.bnd, i32 %.7344.i1541711.i1107
  %.20.i177.i = tail call i32 @llvm.smax.i32(i32 %i.bne, i32 %.19.i1561713.i1105)
  br label %bb.ln

bb.ln:                                            ; preds = %LZ4HC_countBack.exit.i.i, %bb.kw
  %.21369.i158.i = phi i32 [ %.20368.i175.i, %LZ4HC_countBack.exit.i.i ], [ %.19367.i1531710.i1108, %bb.kw ] ; 2 uses
  %.9346.i159.i = phi i32 [ %.8345.i176.i, %LZ4HC_countBack.exit.i.i ], [ %.7344.i1541711.i1107, %bb.kw ] ; 2 uses
  %.21.i160.i = phi i32 [ %.20.i177.i, %LZ4HC_countBack.exit.i.i ], [ %.19.i1561713.i1105, %bb.kw ] ; 2 uses
  %i.bng = and i32 %.0315.i1551712.i1106, 65535
  %i.bnh = zext nneg i32 %i.bng to i64
  %i.bni = getelementptr inbounds nuw [2 x i8], ptr %i.bkm, i64 %i.bnh
  %i.bnj = load i16, ptr %i.bni, align 2, !tbaa !31
  %i.bnk = zext i16 %i.bnj to i32                 ; 2 uses
  %i.bnl = sub i32 %.16397.i1521709.i1109, %i.bnk ; 2 uses
  %i.bnm = sub i32 %i.atq, %i.bnl                 ; 2 uses
  %i.bnn = icmp ugt i32 %i.bnm, 65535
  %i.bno = sub i32 %.0315.i1551712.i1106, %i.bnk
  %.not442.i157.i = icmp eq i32 %i.bko, 0
  %or.cond1210 = select i1 %i.bnn, i1 true, i1 %.not442.i157.i
  br i1 %or.cond1210, label %LZ4HC_InsertAndGetWiderMatch.exit327.i, label %bb.kw, !llvm.loop !46

LZ4HC_InsertAndGetWiderMatch.exit327.i:           ; preds = %bb.ln, %bb.kv, %.thread1223.thread.i
  %.22370.i142.i = phi i32 [ %.18366.i137.i, %.thread1223.thread.i ], [ %.18366.i137.i, %bb.kv ], [ %.21369.i158.i, %bb.ln ]
  %.10347.i143.i = phi i32 [ %.6343.i138.i, %.thread1223.thread.i ], [ %.6343.i138.i, %bb.kv ], [ %.9346.i159.i, %bb.ln ]
  %.22.i144.i = phi i32 [ %.18.i139.i, %.thread1223.thread.i ], [ %.18.i139.i, %bb.kv ], [ %.21.i160.i, %bb.ln ]
  %.sroa.0312.0.insert.ext.i147.i = zext i32 %.22370.i142.i to i64
  %i.bnp = sext i32 %.10347.i143.i to i64
  %i.bnq = getelementptr inbounds i8, ptr %i.ati, i64 %i.bnp
  br label %bb.lo

bb.lo:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit327.i, %bb.hq
  %.sroa.051.sroa.8.0.i.i = phi i32 [ %.22.i144.i, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ 0, %bb.hq ] ; 5 uses
  %.sroa.051.sroa.0.0.i.i = phi i64 [ %.sroa.0312.0.insert.ext.i147.i, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ 0, %bb.hq ] ; 3 uses
  %.3341.i.i = phi ptr [ %i.bnq, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ %.2340.i.i, %bb.hq ] ; 11 uses
  %.not361.i.i = icmp sgt i32 %.sroa.051.sroa.8.0.i.i, %.sroa.090.sroa.12.3.i.i
  br i1 %.not361.i.i, label %bb.mj, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %.5.i.lcssa21892192.i = ptrtoaddr ptr %.5.i.i to i64
  %i.bnr = icmp ult ptr %.5.i.i, %i.bzd
  %i.bns = ptrtoint ptr %.5.i.i to i64            ; 3 uses
  %i.bnt = sub i64 %i.bns, %i.byz
  %i.bnu = trunc i64 %i.bnt to i32
  %.sroa.0162.sroa.14.3.i.i = select i1 %i.bnr, i32 %i.bnu, i32 %.sroa.0162.sroa.14.2.i.ph.i ; 3 uses
  %i.bnv = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.bnw = ptrtoint ptr %.4981.ph.i to i64        ; 3 uses
  %i.bnx = sub i64 %i.byz, %i.bnw                 ; 7 uses
  %i.bny = udiv i64 %i.bnx, 255
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %i.bny
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 %i.bnx
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %i.boc = icmp ugt ptr %i.bob, %spec.select.i.i
  %or.cond.i71.i = select i1 %.not.i47.i, i1 %i.boc, i1 false
  br i1 %or.cond.i71.i, label %LZ4HC_encodeSequence.exit.i, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bod = icmp ugt i64 %i.bnx, 14
  br i1 %i.bod, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.boe = add i64 %i.bnx, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bof = icmp ugt i64 %i.boe, 254
  br i1 %i.bof, label %.lr.ph1768.preheader.i, label %._crit_edge1769.i

.lr.ph1768.preheader.i:                           ; preds = %bb.lr
  %i.bog = add i64 %i.bnx, -270                   ; 2 uses
  %i.boh = udiv i64 %i.bog, 255                   ; 3 uses
  %i.boi = add nuw nsw i64 %i.boh, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bnv, i8 -1, i64 %i.boi, i1 false), !tbaa !29
  %scevgep2171.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2175.i = getelementptr i8, ptr %scevgep2171.i, i64 %i.boh
  %.neg2456.i = mul i64 %i.boh, -255
  %i.boj = add i64 %.neg2456.i, %i.bog
  br label %._crit_edge1769.i

._crit_edge1769.i:                                ; preds = %.lr.ph1768.preheader.i, %bb.lr
  %.28.lcssa.i = phi ptr [ %i.bnv, %bb.lr ], [ %scevgep2175.i, %.lr.ph1768.preheader.i ] ; 2 uses
  %.0.i78.lcssa.i = phi i64 [ %i.boe, %bb.lr ], [ %i.boj, %.lr.ph1768.preheader.i ]
  %i.bok = trunc nuw i64 %.0.i78.lcssa.i to i8
  %i.bol = getelementptr inbounds nuw i8, ptr %.28.lcssa.i, i64 1
  store i8 %i.bok, ptr %.28.lcssa.i, align 1, !tbaa !29
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %.tr.i72.i = trunc nuw nsw i64 %i.bnx to i8
  %i.bom = shl nuw i8 %.tr.i72.i, 4
  store i8 %i.bom, ptr %.5.ph.i, align 1, !tbaa !29
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %._crit_edge1769.i
  %.24.i = phi ptr [ %i.bol, %._crit_edge1769.i ], [ %i.bnv, %bb.ls ] ; 6 uses
  %.24.i1115 = ptrtoaddr ptr %.24.i to i64        ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.24.i, i64 %i.bnx ; 3 uses
  %i.boo = add i64 %i.byz, %.24.i1115
  %i.bop = sub i64 %i.boo, %i.bnw
  %i.boq = add nuw i64 %.24.i1115, 8
  %i.bor = tail call i64 @llvm.umax.i64(i64 %i.bop, i64 %i.boq)
  %i.bos = xor i64 %.24.i1115, -1
  %i.bot = add i64 %i.bor, %i.bos                 ; 2 uses
  %i.bou = lshr i64 %i.bot, 3
  %i.bov = add nuw nsw i64 %i.bou, 1              ; 2 uses
  %min.iters.check1119 = icmp ult i64 %i.bot, 24
  %i.bow = sub i64 %.4981.ph.i1116, %.24.i1115
  %diff.check1117 = icmp ugt i64 %i.bow, -32
  %or.cond1211 = select i1 %min.iters.check1119, i1 true, i1 %diff.check1117
  br i1 %or.cond1211, label %scalar.ph1118.preheader, label %vector.ph1120

vector.ph1120:                                    ; preds = %bb.lt
  %n.vec1121 = and i64 %i.bov, 4611686018427387900 ; 3 uses
  %i.box = shl i64 %n.vec1121, 3                  ; 2 uses
  %i.boy = getelementptr i8, ptr %.24.i, i64 %i.box
  %i.boz = getelementptr i8, ptr %.4981.ph.i, i64 %i.box
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1120
  %index1123 = phi i64 [ 0, %vector.ph1120 ], [ %index.next1128, %vector.body1122 ] ; 2 uses
  %i.bpa = shl i64 %index1123, 3                  ; 2 uses
  %next.gep1124 = getelementptr i8, ptr %.24.i, i64 %i.bpa ; 2 uses
  %next.gep1125 = getelementptr i8, ptr %.4981.ph.i, i64 %i.bpa ; 2 uses
  %i.bpb = getelementptr i8, ptr %next.gep1125, i64 16
  %wide.load1126 = load <2 x i64>, ptr %next.gep1125, align 1
  %wide.load1127 = load <2 x i64>, ptr %i.bpb, align 1
  %i.bpc = getelementptr i8, ptr %next.gep1124, i64 16
  store <2 x i64> %wide.load1126, ptr %next.gep1124, align 1
  store <2 x i64> %wide.load1127, ptr %i.bpc, align 1
  %index.next1128 = add nuw i64 %index1123, 4     ; 2 uses
  %i.bpd = icmp eq i64 %index.next1128, %n.vec1121
  br i1 %i.bpd, label %middle.block1129, label %vector.body1122, !llvm.loop !52

middle.block1129:                                 ; preds = %vector.body1122
  %cmp.n1130 = icmp eq i64 %i.bov, %n.vec1121
  br i1 %cmp.n1130, label %LZ4_wildCopy8.exit105.i, label %scalar.ph1118.preheader

scalar.ph1118.preheader:                          ; preds = %bb.lt, %middle.block1129
  %.09.i103.i.ph = phi ptr [ %.24.i, %bb.lt ], [ %i.boy, %middle.block1129 ]
  %.0.i104.i.ph = phi ptr [ %.4981.ph.i, %bb.lt ], [ %i.boz, %middle.block1129 ]
  br label %scalar.ph1118

scalar.ph1118:                                    ; preds = %scalar.ph1118.preheader, %scalar.ph1118
  %.09.i103.i = phi ptr [ %i.bpf, %scalar.ph1118 ], [ %.09.i103.i.ph, %scalar.ph1118.preheader ] ; 2 uses
  %.0.i104.i = phi ptr [ %i.bpg, %scalar.ph1118 ], [ %.0.i104.i.ph, %scalar.ph1118.preheader ] ; 2 uses
  %i.bpe = load i64, ptr %.0.i104.i, align 1
  store i64 %i.bpe, ptr %.09.i103.i, align 1
  %i.bpf = getelementptr inbounds nuw i8, ptr %.09.i103.i, i64 8 ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %.0.i104.i, i64 8
  %i.bph = icmp ult ptr %i.bpf, %i.bon
  br i1 %i.bph, label %scalar.ph1118, label %LZ4_wildCopy8.exit105.i, !llvm.loop !53

LZ4_wildCopy8.exit105.i:                          ; preds = %scalar.ph1118, %middle.block1129
  %i.bpi = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.bpi, ptr %i.bon, align 1, !tbaa !27
  %i.bpj = getelementptr i8, ptr %i.bon, i64 2    ; 4 uses
  %i.bpk = sext i32 %.sroa.0162.sroa.14.3.i.i to i64 ; 4 uses
  %i.bpl = add nsw i64 %i.bpk, -4                 ; 3 uses
  %i.bpm = udiv i64 %i.bpl, 255
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpj, i64 %i.bpm
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 6
  %i.bpp = icmp ugt ptr %i.bpo, %spec.select.i.i
  %or.cond64.i74.i = select i1 %.not.i47.i, i1 %i.bpp, i1 false
  br i1 %or.cond64.i74.i, label %LZ4HC_encodeSequence.exit.i, label %bb.lu

bb.lu:                                            ; preds = %LZ4_wildCopy8.exit105.i
  %i.bpq = icmp ugt i64 %i.bpl, 14
  br i1 %i.bpq, label %bb.lv, label %bb.ly

bb.lv:                                            ; preds = %bb.lu
  %i.bpr = load i8, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bps = add i8 %i.bpr, 15
  store i8 %i.bps, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bpt = add nsw i64 %i.bpk, -19                ; 2 uses
  %i.bpu = icmp ugt i64 %i.bpt, 509
  br i1 %i.bpu, label %.lr.ph1775.preheader.i, label %._crit_edge1776.i

.lr.ph1775.preheader.i:                           ; preds = %bb.lv
  %i.bpv = add nsw i64 %i.bpk, -529               ; 2 uses
  %i.bpw = udiv i64 %i.bpv, 510                   ; 2 uses
  %i.bpx = shl nuw nsw i64 %i.bpw, 1              ; 2 uses
  %i.bpy = add nuw nsw i64 %i.bpx, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpj, i8 -1, i64 %i.bpy, i1 false), !tbaa !29
  %scevgep2179.i = getelementptr i8, ptr %.24.i, i64 4
  %i.bpz = sub i64 %i.bpx, %i.bnw
  %scevgep2180.i = getelementptr i8, ptr %scevgep2179.i, i64 %i.bpz
  %scevgep2184.i = getelementptr i8, ptr %scevgep2180.i, i64 %i.byz
  %.neg2457.i = mul i64 %i.bpw, -510
  %i.bqa = add i64 %.neg2457.i, %i.bpv
  br label %._crit_edge1776.i

._crit_edge1776.i:                                ; preds = %.lr.ph1775.preheader.i, %bb.lv
  %.26.lcssa.i = phi ptr [ %i.bpj, %bb.lv ], [ %scevgep2184.i, %.lr.ph1775.preheader.i ] ; 3 uses
  %.050.i76.lcssa.i = phi i64 [ %i.bpt, %bb.lv ], [ %i.bqa, %.lr.ph1775.preheader.i ] ; 3 uses
  %i.bqb = icmp samesign ugt i64 %.050.i76.lcssa.i, 254
  br i1 %i.bqb, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %._crit_edge1776.i
  %i.bqc = add nsw i64 %.050.i76.lcssa.i, -255
  %i.bqd = getelementptr inbounds nuw i8, ptr %.26.lcssa.i, i64 1
  store i8 -1, ptr %.26.lcssa.i, align 1, !tbaa !29
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %._crit_edge1776.i
  %.27.i = phi ptr [ %i.bqd, %bb.lw ], [ %.26.lcssa.i, %._crit_edge1776.i ] ; 2 uses
  %.1.i77.i = phi i64 [ %i.bqc, %bb.lw ], [ %.050.i76.lcssa.i, %._crit_edge1776.i ]
  %i.bqe = trunc nuw i64 %.1.i77.i to i8
  %i.bqf = getelementptr inbounds nuw i8, ptr %.27.i, i64 1
  store i8 %i.bqe, ptr %.27.i, align 1, !tbaa !29
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lu
  %i.bqg = trunc nuw nsw i64 %i.bpl to i8
  %i.bqh = load i8, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bqi = add i8 %i.bqh, %i.bqg
  store i8 %i.bqi, ptr %.5.ph.i, align 1, !tbaa !29
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %.25.i = phi ptr [ %i.bqf, %bb.lx ], [ %i.bpj, %bb.ly ] ; 10 uses
  %i.bqj = getelementptr i8, ptr %.4991.ph.i, i64 %i.bpk ; 6 uses
  %i.bqk = getelementptr i8, ptr %.25.i, i64 1    ; 4 uses
  %i.bql = ptrtoint ptr %i.bqj to i64             ; 5 uses
  %7 = sub i64 0, %i.bql
  %i.bqm = sub i64 %i.bns, %i.bql                 ; 6 uses
  %i.bqn = udiv i64 %i.bqm, 255
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqk, i64 %i.bqn
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 %i.bqm
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  %i.bqr = icmp ugt ptr %i.bqq, %spec.select.i.i
  %or.cond.i60.i = select i1 %.not.i47.i, i1 %i.bqr, i1 false
  br i1 %or.cond.i60.i, label %LZ4HC_encodeSequence.exit.i, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bqs = icmp ugt i64 %i.bqm, 14
  br i1 %i.bqs, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.bqt = add i64 %i.bqm, -15                    ; 2 uses
  store i8 -16, ptr %.25.i, align 1, !tbaa !29
  %i.bqu = icmp ugt i64 %i.bqt, 254
  br i1 %i.bqu, label %.lr.ph1782.preheader.i, label %._crit_edge1783.i

.lr.ph1782.preheader.i:                           ; preds = %bb.mb
  %i.bqv = add i64 %i.bns, -270
  %i.bqw = sub i64 %i.bqv, %i.bql                 ; 2 uses
  %i.bqx = udiv i64 %i.bqw, 255                   ; 3 uses
  %i.bqy = add nuw nsw i64 %i.bqx, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bqk, i8 -1, i64 %i.bqy, i1 false), !tbaa !29
  %scevgep2185.i = getelementptr i8, ptr %.25.i, i64 2
  %scevgep2186.i = getelementptr i8, ptr %scevgep2185.i, i64 %i.bqx
  %.neg2458.i = mul i64 %i.bqx, -255
  %i.bqz = add i64 %.neg2458.i, %i.bqw
  br label %._crit_edge1783.i

._crit_edge1783.i:                                ; preds = %.lr.ph1782.preheader.i, %bb.mb
  %.22.lcssa.i = phi ptr [ %i.bqk, %bb.mb ], [ %scevgep2186.i, %.lr.ph1782.preheader.i ] ; 2 uses
  %.0.i67.lcssa.i = phi i64 [ %i.bqt, %bb.mb ], [ %i.bqz, %.lr.ph1782.preheader.i ]
  %i.bra = trunc nuw i64 %.0.i67.lcssa.i to i8
  %i.brb = getelementptr inbounds nuw i8, ptr %.22.lcssa.i, i64 1
  store i8 %i.bra, ptr %.22.lcssa.i, align 1, !tbaa !29
  br label %bb.md

bb.mc:                                            ; preds = %bb.ma
  %.tr.i61.i = trunc nuw nsw i64 %i.bqm to i8
  %i.brc = shl nuw i8 %.tr.i61.i, 4
  store i8 %i.brc, ptr %.25.i, align 1, !tbaa !29
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %._crit_edge1783.i
  %.18.i = phi ptr [ %i.brb, %._crit_edge1783.i ], [ %i.bqk, %bb.mc ] ; 6 uses
  %.18.i1110 = ptrtoaddr ptr %.18.i to i64        ; 4 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %.18.i, i64 %i.bqm ; 3 uses
  %i.bre = ptrtoaddr ptr %.5.i.i to i64
  %i.brf = add i64 %i.bre, %.18.i1110
  %i.brg = sub i64 %i.brf, %i.bql
  %i.brh = add nuw i64 %.18.i1110, 8
  %i.bri = tail call i64 @llvm.umax.i64(i64 %i.brg, i64 %i.brh)
  %i.brj = xor i64 %.18.i1110, -1
  %i.brk = add i64 %i.bri, %i.brj                 ; 2 uses
  %i.brl = lshr i64 %i.brk, 3
  %i.brm = add nuw nsw i64 %i.brl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.brk, 24
  %8 = sub i64 %i.bql, %.18.i1110
  %diff.check = icmp ugt i64 %8, -32
  %or.cond1212 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1212, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.md
  %n.vec = and i64 %i.brm, 4611686018427387900    ; 3 uses
  %i.brn = shl i64 %n.vec, 3                      ; 2 uses
  %i.bro = getelementptr i8, ptr %.18.i, i64 %i.brn
  %i.brp = getelementptr i8, ptr %i.bqj, i64 %i.brn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.brq = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.18.i, i64 %i.brq ; 2 uses
  %next.gep1111 = getelementptr i8, ptr %i.bqj, i64 %i.brq ; 2 uses
  %i.brr = getelementptr i8, ptr %next.gep1111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1111, align 1
  %wide.load1112 = load <2 x i64>, ptr %i.brr, align 1
  %i.brs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load1112, ptr %i.brs, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.brt = icmp eq i64 %index.next, %n.vec
  br i1 %i.brt, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.brm, %n.vec
  br i1 %cmp.n, label %LZ4_wildCopy8.exit108.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.md, %middle.block
  %.09.i106.i.ph = phi ptr [ %.18.i, %bb.md ], [ %i.bro, %middle.block ]
  %.0.i107.i.ph = phi ptr [ %i.bqj, %bb.md ], [ %i.brp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i106.i = phi ptr [ %i.brv, %scalar.ph ], [ %.09.i106.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.brw, %scalar.ph ], [ %.0.i107.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bru = load i64, ptr %.0.i107.i, align 1
  store i64 %i.bru, ptr %.09.i106.i, align 1
  %i.brv = getelementptr inbounds nuw i8, ptr %.09.i106.i, i64 8 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.brx = icmp ult ptr %i.brv, %i.brd
  br i1 %i.brx, label %scalar.ph, label %LZ4_wildCopy8.exit108.i, !llvm.loop !55

LZ4_wildCopy8.exit108.i:                          ; preds = %scalar.ph, %middle.block
  %i.bry = trunc i32 %.sroa.090.sroa.0.1.i.i to i16
  store i16 %i.bry, ptr %i.brd, align 1, !tbaa !27
  %i.brz = getelementptr i8, ptr %i.brd, i64 2    ; 4 uses
  %i.bsa = add nsw i64 %i.atg, -4                 ; 3 uses
  %i.bsb = udiv i64 %i.bsa, 255
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brz, i64 %i.bsb
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 6
  %i.bse = icmp ugt ptr %i.bsd, %spec.select.i.i
  %or.cond64.i63.i = select i1 %.not.i47.i, i1 %i.bse, i1 false
  br i1 %or.cond64.i63.i, label %LZ4HC_encodeSequence.exit.i, label %bb.me

bb.me:                                            ; preds = %LZ4_wildCopy8.exit108.i
  %i.bsf = icmp ugt i64 %i.bsa, 14
  br i1 %i.bsf, label %bb.mf, label %bb.mi

bb.mf:                                            ; preds = %bb.me
  %i.bsg = load i8, ptr %.25.i, align 1, !tbaa !29
  %i.bsh = add i8 %i.bsg, 15
  store i8 %i.bsh, ptr %.25.i, align 1, !tbaa !29
  %i.bsi = add nsw i64 %i.atg, -19                ; 2 uses
  %i.bsj = icmp ugt i64 %i.bsi, 509
  br i1 %i.bsj, label %.lr.ph1789.preheader.i, label %._crit_edge1790.i

.lr.ph1789.preheader.i:                           ; preds = %bb.mf
  %i.bsk = add nsw i64 %i.atg, -529               ; 2 uses
  %i.bsl = udiv i64 %i.bsk, 510                   ; 2 uses
  %i.bsm = shl nuw nsw i64 %i.bsl, 1              ; 2 uses
  %i.bsn = add nuw nsw i64 %i.bsm, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.brz, i8 -1, i64 %i.bsn, i1 false), !tbaa !29
  %scevgep2187.i = getelementptr i8, ptr %.18.i, i64 4
  %scevgep2188.i = getelementptr i8, ptr %scevgep2187.i, i64 %7
  %i.bso = getelementptr i8, ptr %scevgep2188.i, i64 %i.bsm
  %scevgep2193.i = getelementptr i8, ptr %i.bso, i64 %.5.i.lcssa21892192.i
  %.neg2459.i = mul i64 %i.bsl, -510
  %i.bsp = add i64 %.neg2459.i, %i.bsk
  br label %._crit_edge1790.i

._crit_edge1790.i:                                ; preds = %.lr.ph1789.preheader.i, %bb.mf
  %.20.lcssa.i = phi ptr [ %i.brz, %bb.mf ], [ %scevgep2193.i, %.lr.ph1789.preheader.i ] ; 3 uses
  %.050.i65.lcssa.i = phi i64 [ %i.bsi, %bb.mf ], [ %i.bsp, %.lr.ph1789.preheader.i ] ; 3 uses
  %i.bsq = icmp samesign ugt i64 %.050.i65.lcssa.i, 254
  br i1 %i.bsq, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %._crit_edge1790.i
  %i.bsr = add nsw i64 %.050.i65.lcssa.i, -255
  %i.bss = getelementptr inbounds nuw i8, ptr %.20.lcssa.i, i64 1
  store i8 -1, ptr %.20.lcssa.i, align 1, !tbaa !29
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %._crit_edge1790.i
  %.21.i = phi ptr [ %i.bss, %bb.mg ], [ %.20.lcssa.i, %._crit_edge1790.i ] ; 2 uses
  %.1.i66.i = phi i64 [ %i.bsr, %bb.mg ], [ %.050.i65.lcssa.i, %._crit_edge1790.i ]
  %i.bst = trunc nuw i64 %.1.i66.i to i8
  %i.bsu = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 %i.bst, ptr %.21.i, align 1, !tbaa !29
  br label %.outer1361.backedge.i

bb.mi:                                            ; preds = %bb.me
  %i.bsv = trunc nuw nsw i64 %i.bsa to i8
  %i.bsw = load i8, ptr %.25.i, align 1, !tbaa !29
  %i.bsx = add i8 %i.bsw, %i.bsv
  store i8 %i.bsx, ptr %.25.i, align 1, !tbaa !29
  br label %.outer1361.backedge.i

bb.mj:                                            ; preds = %bb.lo
  %i.bsy = icmp ult ptr %.3341.i.i, %i.bze
  br i1 %i.bsy, label %bb.mk, label %bb.my

bb.mk:                                            ; preds = %bb.mj
  %.not365.i.i = icmp ult ptr %.3341.i.i, %i.bzd
  %.sroa.090.sroa.0.0.extract.trunc130.i.i = trunc nuw i64 %.sroa.051.sroa.0.0.i.i to i32 ; 2 uses
  br i1 %.not365.i.i, label %bb.ho, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bsz = icmp ult ptr %.5.i.i, %i.bzd
  br i1 %i.bsz, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bta = ptrtoint ptr %i.bzd to i64
  %i.btb = ptrtoint ptr %.5.i.i to i64
  %i.btc = sub i64 %i.bta, %i.btb                 ; 2 uses
  %i.btd = trunc i64 %i.btc to i32
  %sext.i.i = shl i64 %i.btc, 32
  %i.bte = ashr exact i64 %sext.i.i, 32
  %i.btf = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bte
  %i.btg = sub nsw i32 %.sroa.090.sroa.12.3.i.i, %i.btd ; 2 uses
  %i.bth = icmp slt i32 %i.btg, 4                 ; 3 uses
  %.sroa.090.sroa.12.4.i.i = select i1 %i.bth, i32 %.sroa.051.sroa.8.0.i.i, i32 %i.btg
  %.sroa.090.sroa.0.2.i.i = select i1 %i.bth, i32 %.sroa.090.sroa.0.0.extract.trunc130.i.i, i32 %.sroa.090.sroa.0.1.i.i
  %.6.i.i = select i1 %i.bth, ptr %.3341.i.i, ptr %i.btf
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  %.sroa.090.sroa.12.5.i.i = phi i32 [ %.sroa.090.sroa.12.4.i.i, %bb.mm ], [ %.sroa.090.sroa.12.3.i.i, %bb.ml ]
  %.sroa.090.sroa.0.3.i.i = phi i32 [ %.sroa.090.sroa.0.2.i.i, %bb.mm ], [ %.sroa.090.sroa.0.1.i.i, %bb.ml ]
  %.7.i.i = phi ptr [ %.6.i.i, %bb.mm ], [ %.5.i.i, %bb.ml ] ; 2 uses
  %i.bti = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.btj = ptrtoint ptr %.4981.ph.i to i64        ; 3 uses
  %i.btk = sub i64 %i.byz, %i.btj                 ; 7 uses
  %i.btl = udiv i64 %i.btk, 255
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bti, i64 %i.btl
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 %i.btk
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 8
  %i.btp = icmp ugt ptr %i.bto, %spec.select.i.i
  %or.cond.i44.i = select i1 %.not.i47.i, i1 %i.btp, i1 false
  br i1 %or.cond.i44.i, label %LZ4HC_encodeSequence.exit.i, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.btq = icmp ugt i64 %i.btk, 14
  br i1 %i.btq, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.btr = add i64 %i.btk, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bts = icmp ugt i64 %i.btr, 254
  br i1 %i.bts, label %.lr.ph1740.preheader.i, label %._crit_edge1741.i

.lr.ph1740.preheader.i:                           ; preds = %bb.mp
  %i.btt = add i64 %i.btk, -270                   ; 2 uses
  %i.btu = udiv i64 %i.btt, 255                   ; 3 uses
  %i.btv = add nuw nsw i64 %i.btu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bti, i8 -1, i64 %i.btv, i1 false), !tbaa !29
  %scevgep2130.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2134.i = getelementptr i8, ptr %scevgep2130.i, i64 %i.btu
  %.neg2463.i = mul i64 %i.btu, -255
  %i.btw = add i64 %.neg2463.i, %i.btt
  br label %._crit_edge1741.i

._crit_edge1741.i:                                ; preds = %.lr.ph1740.preheader.i, %bb.mp
  %.10.lcssa.i = phi ptr [ %i.bti, %bb.mp ], [ %scevgep2134.i, %.lr.ph1740.preheader.i ] ; 2 uses
  %.0.i46.lcssa.i = phi i64 [ %i.btr, %bb.mp ], [ %i.btw, %.lr.ph1740.preheader.i ]
  %i.btx = trunc nuw i64 %.0.i46.lcssa.i to i8
  %i.bty = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 1
  store i8 %i.btx, ptr %.10.lcssa.i, align 1, !tbaa !29
  br label %bb.mr

bb.mq:                                            ; preds = %bb.mo
  %.tr.i.i = trunc nuw nsw i64 %i.btk to i8
  %i.btz = shl nuw i8 %.tr.i.i, 4
  store i8 %i.btz, ptr %.5.ph.i, align 1, !tbaa !29
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %._crit_edge1741.i
  %.6.i = phi ptr [ %i.bty, %._crit_edge1741.i ], [ %i.bti, %bb.mq ] ; 6 uses
  %.6.i1153 = ptrtoaddr ptr %.6.i to i64          ; 4 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.btk ; 3 uses
  %i.bub = add i64 %i.byz, %.6.i1153
  %i.buc = sub i64 %i.bub, %i.btj
  %i.bud = add nuw i64 %.6.i1153, 8
  %i.bue = tail call i64 @llvm.umax.i64(i64 %i.buc, i64 %i.bud)
  %i.buf = xor i64 %.6.i1153, -1
  %i.bug = add i64 %i.bue, %i.buf                 ; 2 uses
  %i.buh = lshr i64 %i.bug, 3
  %i.bui = add nuw nsw i64 %i.buh, 1              ; 2 uses
  %min.iters.check1156 = icmp ult i64 %i.bug, 24
  %i.buj = sub i64 %.4981.ph.i1116, %.6.i1153
  %diff.check1154 = icmp ugt i64 %i.buj, -32
  %or.cond1213 = select i1 %min.iters.check1156, i1 true, i1 %diff.check1154
  br i1 %or.cond1213, label %scalar.ph1155.preheader, label %vector.ph1157

vector.ph1157:                                    ; preds = %bb.mr
  %n.vec1158 = and i64 %i.bui, 4611686018427387900 ; 3 uses
  %i.buk = shl i64 %n.vec1158, 3                  ; 2 uses
  %i.bul = getelementptr i8, ptr %.6.i, i64 %i.buk
  %i.bum = getelementptr i8, ptr %.4981.ph.i, i64 %i.buk
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1157
  %index1160 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1165, %vector.body1159 ] ; 2 uses
  %i.bun = shl i64 %index1160, 3                  ; 2 uses
  %next.gep1161 = getelementptr i8, ptr %.6.i, i64 %i.bun ; 2 uses
  %next.gep1162 = getelementptr i8, ptr %.4981.ph.i, i64 %i.bun ; 2 uses
  %i.buo = getelementptr i8, ptr %next.gep1162, i64 16
  %wide.load1163 = load <2 x i64>, ptr %next.gep1162, align 1
  %wide.load1164 = load <2 x i64>, ptr %i.buo, align 1
  %i.bup = getelementptr i8, ptr %next.gep1161, i64 16
  store <2 x i64> %wide.load1163, ptr %next.gep1161, align 1
  store <2 x i64> %wide.load1164, ptr %i.bup, align 1
  %index.next1165 = add nuw i64 %index1160, 4     ; 2 uses
  %i.buq = icmp eq i64 %index.next1165, %n.vec1158
  br i1 %i.buq, label %middle.block1166, label %vector.body1159, !llvm.loop !56

middle.block1166:                                 ; preds = %vector.body1159
  %cmp.n1167 = icmp eq i64 %i.bui, %n.vec1158
  br i1 %cmp.n1167, label %LZ4_wildCopy8.exit114.i, label %scalar.ph1155.preheader

scalar.ph1155.preheader:                          ; preds = %bb.mr, %middle.block1166
  %.09.i112.i.ph = phi ptr [ %.6.i, %bb.mr ], [ %i.bul, %middle.block1166 ]
  %.0.i113.i.ph = phi ptr [ %.4981.ph.i, %bb.mr ], [ %i.bum, %middle.block1166 ]
  br label %scalar.ph1155

scalar.ph1155:                                    ; preds = %scalar.ph1155.preheader, %scalar.ph1155
  %.09.i112.i = phi ptr [ %i.bus, %scalar.ph1155 ], [ %.09.i112.i.ph, %scalar.ph1155.preheader ] ; 2 uses
  %.0.i113.i = phi ptr [ %i.but, %scalar.ph1155 ], [ %.0.i113.i.ph, %scalar.ph1155.preheader ] ; 2 uses
  %i.bur = load i64, ptr %.0.i113.i, align 1
  store i64 %i.bur, ptr %.09.i112.i, align 1
  %i.bus = getelementptr inbounds nuw i8, ptr %.09.i112.i, i64 8 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %.0.i113.i, i64 8
  %i.buu = icmp ult ptr %i.bus, %i.bua
  br i1 %i.buu, label %scalar.ph1155, label %LZ4_wildCopy8.exit114.i, !llvm.loop !57

LZ4_wildCopy8.exit114.i:                          ; preds = %scalar.ph1155, %middle.block1166
  %i.buv = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.buv, ptr %i.bua, align 1, !tbaa !27
  %i.buw = getelementptr i8, ptr %i.bua, i64 2    ; 4 uses
  %i.bux = add nsw i64 %i.bzc, -4                 ; 3 uses
  %i.buy = udiv i64 %i.bux, 255
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buw, i64 %i.buy
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 6
  %i.bvb = icmp ugt ptr %i.bva, %spec.select.i.i
  %or.cond64.i.i = select i1 %.not.i47.i, i1 %i.bvb, i1 false
  br i1 %or.cond64.i.i, label %LZ4HC_encodeSequence.exit.i, label %bb.ms

bb.ms:                                            ; preds = %LZ4_wildCopy8.exit114.i
  %i.bvc = icmp ugt i64 %i.bux, 14
  br i1 %i.bvc, label %bb.mt, label %bb.mw

bb.mt:                                            ; preds = %bb.ms
  %i.bvd = load i8, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bve = add i8 %i.bvd, 15
  store i8 %i.bve, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bvf = add nsw i64 %i.bzc, -19                ; 2 uses
  %i.bvg = icmp ugt i64 %i.bvf, 509
  br i1 %i.bvg, label %.lr.ph1747.preheader.i, label %._crit_edge1748.i

.lr.ph1747.preheader.i:                           ; preds = %bb.mt
  %i.bvh = add nsw i64 %i.bzc, -529               ; 2 uses
  %i.bvi = udiv i64 %i.bvh, 510                   ; 2 uses
  %i.bvj = shl nuw nsw i64 %i.bvi, 1              ; 2 uses
  %i.bvk = add nuw nsw i64 %i.bvj, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.buw, i8 -1, i64 %i.bvk, i1 false), !tbaa !29
end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic:bb.a
  %.8.i.idx.i = zext nneg i32 %i.bwh to i64
  %.8.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %.8.i.idx.i
  br label %bb.nc

bb.nb:                                            ; preds = %bb.mz
  %i.bwi = trunc i64 %i.bvz to i32
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na, %bb.my
  %.sroa.0162.sroa.14.6.i.i = phi i32 [ %.sroa.0162.sroa.14.5.i.i, %bb.na ], [ %i.bwi, %bb.nb ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.my ] ; 3 uses
  %.sroa.090.sroa.12.7.i.i = phi i32 [ %.sroa.090.sroa.12.6.i.i, %bb.na ], [ %.sroa.090.sroa.12.3.i.i, %bb.nb ], [ %.sroa.090.sroa.12.3.i.i, %bb.my ]
  %.9.i.i = phi ptr [ %.8.i.i, %bb.na ], [ %.5.i.i, %bb.nb ], [ %.5.i.i, %bb.my ]
  %i.bwj = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.bwk = ptrtoint ptr %.4981.ph.i to i64        ; 2 uses
  %i.bwl = sub i64 %i.byz, %i.bwk                 ; 7 uses
  %i.bwm = udiv i64 %i.bwl, 255
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %i.bwm
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 %i.bwl
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 8
  %i.bwq = icmp ugt ptr %i.bwp, %spec.select.i.i
  %or.cond.i49.i = select i1 %.not.i47.i, i1 %i.bwq, i1 false
  br i1 %or.cond.i49.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bwr = icmp ugt i64 %i.bwl, 14
  br i1 %i.bwr, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.bws = add i64 %i.bwl, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !29
  %i.bwt = icmp ugt i64 %i.bws, 254
  br i1 %i.bwt, label %.lr.ph1726.preheader.i, label %._crit_edge1727.i

.lr.ph1726.preheader.i:                           ; preds = %bb.ne
  %i.bwu = add i64 %i.byz, -270
  %i.bwv = sub i64 %i.bwu, %i.bwk                 ; 2 uses
  %i.bww = udiv i64 %i.bwv, 255                   ; 3 uses
  %i.bwx = add nuw nsw i64 %i.bww, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bwj, i8 -1, i64 %i.bwx, i1 false), !tbaa !29
  %scevgep.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2121.i = getelementptr i8, ptr %scevgep.i, i64 %i.bww
  %.neg2460.i = mul i64 %i.bww, -255
  %i.bwy = add i64 %.neg2460.i, %i.bwv
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %.lr.ph1726.preheader.i, %bb.ne
  %.16.lcssa.i = phi ptr [ %i.bwj, %bb.ne ], [ %scevgep2121.i, %.lr.ph1726.preheader.i ] ; 2 uses
  %.0.i56.lcssa.i = phi i64 [ %i.bws, %bb.ne ], [ %i.bwy, %.lr.ph1726.preheader.i ]
  %i.bwz = trunc nuw i64 %.0.i56.lcssa.i to i8
  %i.bxa = getelementptr inbounds nuw i8, ptr %.16.lcssa.i, i64 1
  store i8 %i.bwz, ptr %.16.lcssa.i, align 1, !tbaa !29
  br label %bb.ng

bb.nf:                                            ; preds = %bb.nd
  %.tr.i50.i = trunc nuw nsw i64 %i.bwl to i8
  %i.bxb = shl nuw i8 %.tr.i50.i, 4
  store i8 %i.bxb, ptr %.5.ph.i, align 1, !tbaa !29
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %._crit_edge1727.i
  %.12.i = phi ptr [ %i.bxa, %._crit_edge1727.i ], [ %i.bwj, %bb.nf ] ; 6 uses
  %.12.i1171 = ptrtoaddr ptr %.12.i to i64        ; 4 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.bwl ; 3 uses
  %i.bxd = add i64 %.12.i1171, %i.byz
  %i.bxe = sub i64 %i.bxd, %.4981.ph.i1116
  %i.bxf = add nuw i64 %.12.i1171, 8
  %i.bxg = tail call i64 @llvm.umax.i64(i64 %i.bxe, i64 %i.bxf)
  %i.bxh = xor i64 %.12.i1171, -1
  %i.bxi = add i64 %i.bxg, %i.bxh                 ; 2 uses
  %i.bxj = lshr i64 %i.bxi, 3
  %i.bxk = add nuw nsw i64 %i.bxj, 1              ; 2 uses
  %min.iters.check1174 = icmp ult i64 %i.bxi, 24
  %i.bxl = sub i64 %.4981.ph.i1116, %.12.i1171
  %diff.check1172 = icmp ugt i64 %i.bxl, -32
  %or.cond1214 = select i1 %min.iters.check1174, i1 true, i1 %diff.check1172
  br i1 %or.cond1214, label %scalar.ph1173.preheader, label %vector.ph1175

vector.ph1175:                                    ; preds = %bb.ng
  %n.vec1176 = and i64 %i.bxk, 4611686018427387900 ; 3 uses
  %i.bxm = shl i64 %n.vec1176, 3                  ; 2 uses
  %i.bxn = getelementptr i8, ptr %.12.i, i64 %i.bxm
  %i.bxo = getelementptr i8, ptr %.4981.ph.i, i64 %i.bxm
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1183, %vector.body1177 ] ; 2 uses
  %i.bxp = shl i64 %index1178, 3                  ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %.12.i, i64 %i.bxp ; 2 uses
  %next.gep1180 = getelementptr i8, ptr %.4981.ph.i, i64 %i.bxp ; 2 uses
  %i.bxq = getelementptr i8, ptr %next.gep1180, i64 16
  %wide.load1181 = load <2 x i64>, ptr %next.gep1180, align 1
  %wide.load1182 = load <2 x i64>, ptr %i.bxq, align 1
  %i.bxr = getelementptr i8, ptr %next.gep1179, i64 16
  store <2 x i64> %wide.load1181, ptr %next.gep1179, align 1
  store <2 x i64> %wide.load1182, ptr %i.bxr, align 1
  %index.next1183 = add nuw i64 %index1178, 4     ; 2 uses
  %i.bxs = icmp eq i64 %index.next1183, %n.vec1176
  br i1 %i.bxs, label %middle.block1184, label %vector.body1177, !llvm.loop !58

middle.block1184:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %i.bxk, %n.vec1176
  br i1 %cmp.n1185, label %LZ4_wildCopy8.exit111.i, label %scalar.ph1173.preheader

scalar.ph1173.preheader:                          ; preds = %bb.ng, %middle.block1184
  %.09.i109.i.ph = phi ptr [ %.12.i, %bb.ng ], [ %i.bxn, %middle.block1184 ]
  %.0.i110.i.ph = phi ptr [ %.4981.ph.i, %bb.ng ], [ %i.bxo, %middle.block1184 ]
  br label %scalar.ph1173

scalar.ph1173:                                    ; preds = %scalar.ph1173.preheader, %scalar.ph1173
  %.09.i109.i = phi ptr [ %i.bxu, %scalar.ph1173 ], [ %.09.i109.i.ph, %scalar.ph1173.preheader ] ; 2 uses
  %.0.i110.i = phi ptr [ %i.bxv, %scalar.ph1173 ], [ %.0.i110.i.ph, %scalar.ph1173.preheader ] ; 2 uses
  %i.bxt = load i64, ptr %.0.i110.i, align 1
  store i64 %i.bxt, ptr %.09.i109.i, align 1
  %i.bxu = getelementptr inbounds nuw i8, ptr %.09.i109.i, i64 8 ; 2 uses
  %i.bxv = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 8
  %i.bxw = icmp ult ptr %i.bxu, %i.bxc
  br i1 %i.bxw, label %scalar.ph1173, label %LZ4_wildCopy8.exit111.i, !llvm.loop !59

LZ4_wildCopy8.exit111.i:                          ; preds = %scalar.ph1173, %middle.block1184
  %i.bxx = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.bxx, ptr %i.bxc, align 1, !tbaa !27
  %i.bxy = getelementptr i8, ptr %i.bxc, i64 2    ; 4 uses
  %i.bxz = sext i32 %.sroa.0162.sroa.14.6.i.i to i64 ; 4 uses
  %i.bya = add nsw i64 %i.bxz, -4                 ; 3 uses
  %i.byb = udiv i64 %i.bya, 255
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxy, i64 %i.byb
  %i.byd = getelementptr inbounds nuw i8, ptr %i.byc, i64 6
  %i.bye = icmp ugt ptr %i.byd, %spec.select.i.i
  %or.cond64.i52.i = select i1 %.not.i47.i, i1 %i.bye, i1 false
  br i1 %or.cond64.i52.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nh

bb.nh:                                            ; preds = %LZ4_wildCopy8.exit111.i
  %i.byf = icmp ugt i64 %i.bya, 14
  br i1 %i.byf, label %bb.ni, label %bb.nl

bb.ni:                                            ; preds = %bb.nh
  %i.byg = load i8, ptr %.5.ph.i, align 1, !tbaa !29
  %i.byh = add i8 %i.byg, 15
  store i8 %i.byh, ptr %.5.ph.i, align 1, !tbaa !29
  %i.byi = add nsw i64 %i.bxz, -19                ; 2 uses
  %i.byj = icmp ugt i64 %i.byi, 509
  br i1 %i.byj, label %.lr.ph1733.preheader.i, label %._crit_edge1734.i

.lr.ph1733.preheader.i:                           ; preds = %bb.ni
  %i.byk = add nsw i64 %i.bxz, -529               ; 2 uses
  %i.byl = udiv i64 %i.byk, 510                   ; 2 uses
  %i.bym = shl nuw nsw i64 %i.byl, 1              ; 2 uses
  %i.byn = add nuw nsw i64 %i.bym, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bxy, i8 -1, i64 %i.byn, i1 false), !tbaa !29
  %scevgep2122.i = getelementptr i8, ptr %.12.i, i64 4
  %i.byo = getelementptr i8, ptr %scevgep2122.i, i64 %i.bwl
  %scevgep2123.i = getelementptr i8, ptr %i.byo, i64 %i.bym
  %.neg2461.i = mul i64 %i.byl, -510
  %i.byp = add i64 %.neg2461.i, %i.byk
  br label %._crit_edge1734.i

._crit_edge1734.i:                                ; preds = %.lr.ph1733.preheader.i, %bb.ni
  %.14.lcssa.i = phi ptr [ %i.bxy, %bb.ni ], [ %scevgep2123.i, %.lr.ph1733.preheader.i ] ; 3 uses
  %.050.i54.lcssa.i = phi i64 [ %i.byi, %bb.ni ], [ %i.byp, %.lr.ph1733.preheader.i ] ; 3 uses
  %i.byq = icmp samesign ugt i64 %.050.i54.lcssa.i, 254
  br i1 %i.byq, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %._crit_edge1734.i
  %i.byr = add nsw i64 %.050.i54.lcssa.i, -255
  %i.bys = getelementptr inbounds nuw i8, ptr %.14.lcssa.i, i64 1
  store i8 -1, ptr %.14.lcssa.i, align 1, !tbaa !29
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %._crit_edge1734.i
  %.15.i = phi ptr [ %i.bys, %bb.nj ], [ %.14.lcssa.i, %._crit_edge1734.i ] ; 2 uses
  %.1.i55.i = phi i64 [ %i.byr, %bb.nj ], [ %.050.i54.lcssa.i, %._crit_edge1734.i ]
  %i.byt = trunc nuw i64 %.1.i55.i to i8
  %i.byu = getelementptr inbounds nuw i8, ptr %.15.i, i64 1
  store i8 %i.byt, ptr %.15.i, align 1, !tbaa !29
  br label %bb.nm

bb.nl:                                            ; preds = %bb.nh
  %i.byv = trunc nuw nsw i64 %i.bya to i8
  %i.byw = load i8, ptr %.5.ph.i, align 1, !tbaa !29
  %i.byx = add i8 %i.byw, %i.byv
  store i8 %i.byx, ptr %.5.ph.i, align 1, !tbaa !29
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %.13.i = phi ptr [ %i.byu, %bb.nk ], [ %i.bxy, %bb.nl ]
  %i.byy = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bxz
  %.sroa.090.sroa.0.0.extract.trunc131.i.i = trunc nuw i64 %.sroa.051.sroa.0.0.i.i to i32
  br label %.outer.i

.outer.i:                                         ; preds = %bb.nm, %.preheader1355.i
  %.4991.ph.i = phi ptr [ %.3990.i, %.preheader1355.i ], [ %.9.i.i, %bb.nm ] ; 11 uses
  %.4981.ph.i = phi ptr [ %.1978.ph.i, %.preheader1355.i ], [ %i.byy, %bb.nm ] ; 19 uses
  %.5.ph.i = phi ptr [ %.1.ph.i, %.preheader1355.i ], [ %.13.i, %bb.nm ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.14.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.12.7.i.i, %bb.nm ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.0.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.1.i.i, %bb.nm ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph.i = phi i32 [ %.sroa.090.sroa.12.0.i.i, %.preheader1355.i ], [ %.sroa.051.sroa.8.0.i.i, %bb.nm ]
  %.sroa.090.sroa.0.1.i.ph.i = phi i32 [ %.sroa.090.sroa.0.0.i.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.0.extract.trunc131.i.i, %bb.nm ]
  %.2340.i.ph.i = phi ptr [ %.1339.i.ph.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nm ]
  %.3.i.ph.i = phi ptr [ %.2.i.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nm ]
  %.4981.ph.i1116 = ptrtoaddr ptr %.4981.ph.i to i64 ; 4 uses
  %i.byz = ptrtoint ptr %.4991.ph.i to i64        ; 14 uses
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph.i, i32 18) ; 3 uses
  %i.bza = sext i32 %spec.store.select.i.i to i64
  %i.bzb = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bza ; 2 uses
  %i.bzc = sext i32 %.sroa.0162.sroa.14.2.i.ph.i to i64 ; 4 uses
  %i.bzd = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bzc ; 7 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzd, i64 3
  br label %bb.ho

.loopexit.i:                                      ; preds = %.outer1361.backedge.i, %bb.dd, %LZ4HC_encodeSequence.exit87.i, %bb.o
  %.3980.i = phi ptr [ %1, %bb.o ], [ %i.ceb, %LZ4HC_encodeSequence.exit87.i ], [ %.0977.ph1827.i, %bb.dd ], [ %.0987.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %.2.i = phi ptr [ %2, %bb.o ], [ %.34.i, %LZ4HC_encodeSequence.exit87.i ], [ %.0976.ph1828.i, %bb.dd ], [ %.0976.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %i.bzf = ptrtoint ptr %i.di to i64
  %i.bzg = ptrtoint ptr %.3980.i to i64
  %i.bzh = sub i64 %i.bzf, %i.bzg                 ; 3 uses
  %i.bzi = add i64 %i.bzh, 240
  %i.bzj = udiv i64 %i.bzi, 255
  %spec.select375.i.idx.i = select i1 %i.cv, i64 5, i64 0
  %spec.select375.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %spec.select375.i.idx.i ; 2 uses
  %.not371.i.i = icmp ne i32 %6, 0
  %i.bzk = getelementptr i8, ptr %.2.i, i64 %i.bzj
  %i.bzl = getelementptr i8, ptr %i.bzk, i64 1
  %i.bzm = getelementptr i8, ptr %i.bzl, i64 %i.bzh
  %i.bzn = icmp ugt ptr %i.bzm, %spec.select375.i.i
  %or.cond.i = select i1 %.not371.i.i, i1 %i.bzn, i1 false
  br i1 %or.cond.i, label %bb.nn, label %bb.no

.thread1281.i:                                    ; preds = %bb.ns, %bb.nr
  %i.bzo = ptrtoint ptr %i.di to i64
  %i.bzp = sub i64 %i.bzo, %i.cba                 ; 3 uses
  %i.bzq = add i64 %i.bzp, 240
  %i.bzr = udiv i64 %i.bzq, 255
  %i.bzs = getelementptr i8, ptr %.0332.i.i, i64 %i.bzr
  %i.bzt = getelementptr i8, ptr %i.bzs, i64 1
  %i.bzu = getelementptr i8, ptr %i.bzt, i64 %i.bzp
  %i.bzv = icmp ugt ptr %i.bzu, %i.dm
  br i1 %i.bzv, label %.thread1288.i, label %bb.no

bb.nn:                                            ; preds = %.loopexit.i
  %i.bzw = icmp eq i32 %6, 1
  br i1 %i.bzw, label %LZ4HC_compress_hashChain.exit.thread.i, label %.thread1288.i

.thread1288.i:                                    ; preds = %bb.nn, %.thread1281.i
  %spec.select375.i128012851294.i = phi ptr [ %spec.select375.i.i, %bb.nn ], [ %i.dm, %.thread1281.i ]
  %.2127812861293.i = phi ptr [ %.2.i, %bb.nn ], [ %.0332.i.i, %.thread1281.i ] ; 2 uses
  %.3980127612871292.i = phi ptr [ %.3980.i, %bb.nn ], [ %.2979.i, %.thread1281.i ]
  %i.bzx = ptrtoint ptr %spec.select375.i128012851294.i to i64
  %i.bzy = ptrtoint ptr %.2127812861293.i to i64
  %i.bzz = xor i64 %i.bzy, -1
  %i.caa = add i64 %i.bzz, %i.bzx                 ; 2 uses
  %i.cab = add i64 %i.caa, 241
  %i.cac = lshr i64 %i.cab, 8
  %i.cad = sub i64 %i.caa, %i.cac
  br label %bb.no

bb.no:                                            ; preds = %.thread1288.i, %.thread1281.i, %.loopexit.i
  %.21279.i = phi ptr [ %.2127812861293.i, %.thread1288.i ], [ %.0332.i.i, %.thread1281.i ], [ %.2.i, %.loopexit.i ] ; 6 uses
  %.39801277.i = phi ptr [ %.3980127612871292.i, %.thread1288.i ], [ %.2979.i, %.thread1281.i ], [ %.3980.i, %.loopexit.i ] ; 2 uses
  %.0329.i.i = phi i64 [ %i.cad, %.thread1288.i ], [ %i.bzp, %.thread1281.i ], [ %i.bzh, %.loopexit.i ] ; 7 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %.39801277.i, i64 %.0329.i.i
  %i.caf = icmp ugt i64 %.0329.i.i, 14
  %.41847.i = getelementptr i8, ptr %.21279.i, i64 1 ; 3 uses
  br i1 %i.caf, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.cag = add i64 %.0329.i.i, -15                ; 2 uses
  store i8 -16, ptr %.21279.i, align 1, !tbaa !29
  %i.cah = icmp ugt i64 %i.cag, 254
  br i1 %i.cah, label %.lr.ph1851.preheader.i, label %._crit_edge1852.i

.lr.ph1851.preheader.i:                           ; preds = %bb.np
  %i.cai = add i64 %.0329.i.i, -270               ; 2 uses
  %i.caj = udiv i64 %i.cai, 255                   ; 3 uses
  %i.cak = add nuw nsw i64 %i.caj, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41847.i, i8 -1, i64 %i.cak, i1 false), !tbaa !29
  %scevgep2196.i = getelementptr i8, ptr %.21279.i, i64 %i.cak
  %.neg2467.i = mul i64 %i.caj, -255
  %i.cal = add i64 %.neg2467.i, %i.cai
  %i.cam = getelementptr i8, ptr %.21279.i, i64 %i.caj
  %scevgep2197.i = getelementptr i8, ptr %i.cam, i64 2
  br label %._crit_edge1852.i

._crit_edge1852.i:                                ; preds = %.lr.ph1851.preheader.i, %bb.np
  %.21279.pn.lcssa.i = phi ptr [ %.21279.i, %bb.np ], [ %scevgep2196.i, %.lr.ph1851.preheader.i ]
  %.0.i39.lcssa.i = phi i64 [ %i.cag, %bb.np ], [ %i.cal, %.lr.ph1851.preheader.i ]
  %.4.lcssa.i = phi ptr [ %.41847.i, %bb.np ], [ %scevgep2197.i, %.lr.ph1851.preheader.i ]
  %i.can = trunc nuw i64 %.0.i39.lcssa.i to i8
  %i.cao = getelementptr inbounds nuw i8, ptr %.21279.pn.lcssa.i, i64 2
  store i8 %i.can, ptr %.4.lcssa.i, align 1, !tbaa !29
  br label %.critedge.i.i

bb.nq:                                            ; preds = %bb.no
  %.0329.tr.i.i = trunc nuw nsw i64 %.0329.i.i to i8
  %i.cap = shl nuw i8 %.0329.tr.i.i, 4
  store i8 %i.cap, ptr %.21279.i, align 1, !tbaa !29
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.nq, %._crit_edge1852.i
  %.3.i = phi ptr [ %i.cao, %._crit_edge1852.i ], [ %.41847.i, %bb.nq ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3.i, ptr align 1 %.39801277.i, i64 %.0329.i.i, i1 false)
  %i.caq = getelementptr inbounds nuw i8, ptr %.3.i, i64 %.0329.i.i
  %i.car = ptrtoint ptr %i.cae to i64
  %i.cas = ptrtoint ptr %1 to i64
  %i.cat = sub i64 %i.car, %i.cas
  %i.cau = trunc i64 %i.cat to i32
  store i32 %i.cau, ptr %3, align 4, !tbaa !18
  %i.cav = ptrtoint ptr %i.caq to i64
  %i.caw = ptrtoint ptr %2 to i64
  %i.cax = sub i64 %i.cav, %i.caw
  %i.cay = trunc i64 %i.cax to i32
  br label %LZ4HC_compress_hashChain.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i: ; preds = %LZ4_wildCopy8.exit.i
  %.sroa.0162.sroa.0.0.i.le1638.le1823.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i: ; preds = %bb.hd
  %.sroa.0162.sroa.0.0.i.le1638.le.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %LZ4_wildCopy8.exit108.i, %bb.lz, %LZ4_wildCopy8.exit105.i, %bb.lp, %LZ4_wildCopy8.exit114.i, %bb.mn, %LZ4_wildCopy8.exit111.i, %bb.nc, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i
  %.2989.i = phi ptr [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4991.ph.i, %bb.nc ], [ %.4991.ph.i, %bb.mn ], [ %.4991.ph.i, %bb.lp ], [ %.5.i.i, %bb.lz ], [ %.4991.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.5.i.i, %LZ4_wildCopy8.exit108.i ] ; 2 uses
  %.2979.i = phi ptr [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4981.ph.i, %bb.nc ], [ %.4981.ph.i, %bb.mn ], [ %.4981.ph.i, %bb.lp ], [ %i.bqj, %bb.lz ], [ %.4981.ph.i, %LZ4_wildCopy8.exit105.i ], [ %i.bqj, %LZ4_wildCopy8.exit108.i ] ; 6 uses
  %.sroa.0162.sroa.14.7.i.i = phi i32 [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.14.6.i.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.14.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.14.6.i.i, %bb.nc ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.mn ], [ %.sroa.0162.sroa.14.3.i.i, %bb.lp ], [ %.sroa.090.sroa.12.3.i.i, %bb.lz ], [ %.sroa.0162.sroa.14.3.i.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.12.3.i.i, %LZ4_wildCopy8.exit108.i ]
  %.sroa.0162.sroa.0.3.i.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1638.le.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.0.0.i.le1638.le1823.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.nc ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.mn ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.lp ], [ %.sroa.090.sroa.0.1.i.i, %bb.lz ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.0.1.i.i, %LZ4_wildCopy8.exit108.i ]
  %.0332.i.i = phi ptr [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.5.ph.i, %bb.nc ], [ %.5.ph.i, %bb.mn ], [ %.5.ph.i, %bb.lp ], [ %.25.i, %bb.lz ], [ %.5.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.25.i, %LZ4_wildCopy8.exit108.i ] ; 12 uses
  br i1 %i.cv, label %bb.nr, label %LZ4HC_compress_hashChain.exit.thread.i

bb.nr:                                            ; preds = %LZ4HC_encodeSequence.exit.i
  %i.caz = ptrtoint ptr %.2989.i to i64           ; 4 uses
  %i.cba = ptrtoint ptr %.2979.i to i64           ; 6 uses
  %i.cbb = sub i64 %i.caz, %i.cba                 ; 6 uses
  %i.cbc = add i64 %i.cbb, 240
  %i.cbd = udiv i64 %i.cbc, 255
  %i.cbe = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.cbf = getelementptr i8, ptr %.0332.i.i, i64 %i.cbd
  %i.cbg = getelementptr i8, ptr %i.cbf, i64 1
  %i.cbh = getelementptr i8, ptr %i.cbg, i64 %i.cbb ; 3 uses
  %.not370.i.i = icmp ugt ptr %i.cbh, %i.cbe
  br i1 %.not370.i.i, label %.thread1281.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cbi = ptrtoint ptr %i.cbe to i64
  %i.cbj = ptrtoint ptr %i.cbh to i64
  %i.cbk = sub i64 %i.cbi, %i.cbj
  %i.cbl = mul i64 %i.cbk, 255
  %i.cbm = add i64 %i.cbl, 18
  %i.cbn = sext i32 %.sroa.0162.sroa.14.7.i.i to i64
  %spec.select376.i1333.i = tail call i64 @llvm.umin.i64(i64 %i.cbm, i64 %i.cbn)
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbh, i64 2
  %i.cbp = ptrtoint ptr %i.dm to i64
  %i.cbq = ptrtoint ptr %i.cbo to i64
  %sext.i = shl i64 %spec.select376.i1333.i, 32
  %i.cbr = ashr exact i64 %sext.i, 32             ; 5 uses
  %i.cbs = add i64 %i.cbr, %i.cbp
  %i.cbt = sub i64 %i.cbq, %i.cbs
  %i.cbu = icmp slt i64 %i.cbt, -12
  br i1 %i.cbu, label %bb.nt, label %.thread1281.i

bb.nt:                                            ; preds = %bb.ns
  %i.cbv = getelementptr i8, ptr %.0332.i.i, i64 1 ; 3 uses
  %i.cbw = icmp ugt i64 %i.cbb, 14
  br i1 %i.cbw, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.cbx = add i64 %i.cbb, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i.i, align 1, !tbaa !29
  %i.cby = icmp ugt i64 %i.cbx, 254
  br i1 %i.cby, label %.lr.ph1836.preheader.i, label %._crit_edge1837.i

.lr.ph1836.preheader.i:                           ; preds = %bb.nu
  %i.cbz = add i64 %i.caz, -270
  %i.cca = sub i64 %i.cbz, %i.cba                 ; 2 uses
  %i.ccb = udiv i64 %i.cca, 255                   ; 3 uses
  %i.ccc = add nuw nsw i64 %i.ccb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cbv, i8 -1, i64 %i.ccc, i1 false), !tbaa !29
  %i.ccd = getelementptr i8, ptr %.0332.i.i, i64 %i.ccb
  %scevgep2194.i = getelementptr i8, ptr %i.ccd, i64 2
  %.neg2465.i = mul i64 %i.ccb, -255
  %i.cce = add i64 %.neg2465.i, %i.cca
  br label %._crit_edge1837.i

._crit_edge1837.i:                                ; preds = %.lr.ph1836.preheader.i, %bb.nu
  %.33.lcssa.i = phi ptr [ %i.cbv, %bb.nu ], [ %scevgep2194.i, %.lr.ph1836.preheader.i ] ; 2 uses
  %.0.i86.lcssa.i = phi i64 [ %i.cbx, %bb.nu ], [ %i.cce, %.lr.ph1836.preheader.i ]
  %i.ccf = trunc nuw i64 %.0.i86.lcssa.i to i8
  %i.ccg = getelementptr inbounds nuw i8, ptr %.33.lcssa.i, i64 1
  store i8 %i.ccf, ptr %.33.lcssa.i, align 1, !tbaa !29
  br label %bb.nw

bb.nv:                                            ; preds = %bb.nt
  %.tr.i81.i = trunc nuw nsw i64 %i.cbb to i8
  %i.cch = shl nuw i8 %.tr.i81.i, 4
  store i8 %i.cch, ptr %.0332.i.i, align 1, !tbaa !29
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %._crit_edge1837.i
  %.30.i = phi ptr [ %i.ccg, %._crit_edge1837.i ], [ %i.cbv, %bb.nv ] ; 6 uses
  %.30.i1189 = ptrtoaddr ptr %.30.i to i64        ; 4 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %.30.i, i64 %i.cbb ; 3 uses
  %i.ccj = add i64 %i.caz, %.30.i1189
end_hunk_1
begin_hunk_2_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.axq = sub i32 %i.atb, %i.axp
  %i.axr = add i32 %i.axq, %i.axo                 ; 2 uses
  %i.axs = sub i32 %i.axr, %i.aip
  %i.axt = icmp ugt i32 %i.axs, -4
  %..i157 = select i1 %i.axt, i32 %i.aip, i32 %i.axr
  br label %.thread1071

bb.iv:                                            ; preds = %bb.it
  %i.axu = sub i32 %i.axk, %i.aip
  %i.axv = icmp ugt i32 %i.axu, -4
  br i1 %i.axv, label %.thread1071, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  br i1 %.not433.i, label %bb.ix, label %.thread1071

bb.ix:                                            ; preds = %bb.iw
  %i.axw = tail call i64 @llvm.umin.i64(i64 %i.axn, i64 %.1372.i134) ; 2 uses
  %i.axx = sext i32 %.5.i120 to i64
  %i.axy = icmp ugt i64 %i.axw, %i.axx
  br i1 %i.axy, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.axz = zext i32 %i.axk to i64
  %i.aya = sub i64 %i.akz, %i.axz
  %i.ayb = icmp ugt i64 %i.aya, 65535
  br i1 %i.ayb, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ayc = trunc i64 %i.axw to i32
  %i.ayd = sub i32 %i.aiu, %i.axk
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.ix
  %.6354.i170 = phi i32 [ %i.ayd, %bb.iz ], [ %.5353.i117, %bb.ix ] ; 2 uses
  %.6.i171 = phi i32 [ %i.ayc, %bb.iz ], [ %.5.i120, %bb.ix ] ; 2 uses
  %i.aye = and i32 %i.axk, 65535
  %i.ayf = zext nneg i32 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ayf
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !31
  %i.ayi = zext i16 %i.ayh to i32                 ; 2 uses
  %i.ayj = icmp ult i32 %i.axk, %i.ayi
  %i.ayk = sub nuw i32 %i.axk, %i.ayi
  br i1 %i.ayj, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, label %.thread1071

.thread1043:                                      ; preds = %bb.hz, %bb.hx, %bb.if, %bb.ie, %bb.id
  %.3379.i127 = phi i32 [ %.0376.i991443, %bb.hx ], [ 2, %bb.if ], [ 2, %bb.ie ], [ %.1377.i133, %bb.id ], [ 1, %bb.hz ]
  %.3374.i128 = phi i64 [ %.0371.i1001444, %bb.hx ], [ %.1372.i134, %bb.if ], [ %.1372.i134, %bb.ie ], [ %.1372.i134, %bb.id ], [ %.0371.i1001444, %bb.hz ]
  %i.ayl = zext i16 %i.asz to i32
  %i.aym = sub i32 %.0381.i981442, %i.ayl
  br label %.thread1071

.thread1071:                                      ; preds = %bb.ja, %bb.iv, %bb.iw, %bb.iu, %.thread1043
  %.16.i1311082 = phi i32 [ %.5.i120, %.thread1043 ], [ %.5.i120, %bb.iu ], [ %.5.i120, %bb.iv ], [ %.5.i120, %bb.iw ], [ %.6.i171, %bb.ja ] ; 2 uses
  %.16364.i1291081 = phi i32 [ %.5353.i117, %.thread1043 ], [ %.5353.i117, %bb.iu ], [ %.5353.i117, %bb.iv ], [ %.5353.i117, %bb.iw ], [ %.6354.i170, %bb.ja ] ; 2 uses
  %.3374.i1281080 = phi i64 [ %.3374.i128, %.thread1043 ], [ %.1372.i134, %bb.iu ], [ %.1372.i134, %bb.iv ], [ %.1372.i134, %bb.iw ], [ %.1372.i134, %bb.ja ]
  %.3379.i1271079 = phi i32 [ %.3379.i127, %.thread1043 ], [ 2, %bb.iu ], [ 2, %bb.iv ], [ 2, %bb.iw ], [ 2, %bb.ja ]
  %.15396.i122 = phi i32 [ %i.aym, %.thread1043 ], [ %..i157, %bb.iu ], [ %i.aip, %bb.iv ], [ %i.axk, %bb.iw ], [ %i.ayk, %bb.ja ] ; 2 uses
  %i.ayn = icmp uge i32 %.15396.i122, %i.aiz
  %i.ayo = icmp sgt i32 %.0403.i961441, 1
  %i.ayp = select i1 %i.ayn, i1 %i.ayo, i1 false
  br i1 %i.ayp, label %bb.fy, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit

LZ4HC_InsertAndGetWiderMatch.exit255.loopexit:    ; preds = %bb.ja, %bb.iy, %.thread1071
  %.18366.i105.ph = phi i32 [ %.16364.i1291081, %.thread1071 ], [ %.6354.i170, %bb.ja ], [ %.5353.i117, %bb.iy ]
  %.18.i107.ph = phi i32 [ %.16.i1311082, %.thread1071 ], [ %.6.i171, %bb.ja ], [ %.5.i120, %bb.iy ]
  %i.ayq = zext i32 %.18366.i105.ph to i64
  %i.ayr = sext i32 %.5342.i118 to i64
  br label %LZ4HC_InsertAndGetWiderMatch.exit255

LZ4HC_InsertAndGetWiderMatch.exit255:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, %LZ4HC_Insert.exit.i95
  %.18366.i105 = phi i64 [ 0, %LZ4HC_Insert.exit.i95 ], [ %i.ayq, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %.6343.i106 = phi i64 [ 0, %LZ4HC_Insert.exit.i95 ], [ %i.ayr, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %.18.i107 = phi i32 [ %.sroa.090.sroa.12.3.i, %LZ4HC_Insert.exit.i95 ], [ %.18.i107.ph, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %i.ays = getelementptr inbounds i8, ptr %i.ain, i64 %.6343.i106
  br label %bb.jb

bb.jb:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit255, %bb.fw
  %.sroa.051.sroa.8.0.i = phi i32 [ %.18.i107, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ 0, %bb.fw ] ; 5 uses
  %.sroa.051.sroa.0.0.i = phi i64 [ %.18366.i105, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ 0, %bb.fw ] ; 3 uses
  %.3341.i = phi ptr [ %i.ays, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ %.2340.i, %bb.fw ] ; 11 uses
  %.not361.i = icmp sgt i32 %.sroa.051.sroa.8.0.i, %.sroa.090.sroa.12.3.i
  br i1 %.not361.i, label %bb.jw, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %.5.i.lcssa18891892 = ptrtoaddr ptr %.5.i to i64
  %i.ayt = icmp ult ptr %.5.i, %i.bkh
  %i.ayu = ptrtoint ptr %.5.i to i64              ; 3 uses
  %i.ayv = sub i64 %i.ayu, %i.bkd
  %i.ayw = trunc i64 %i.ayv to i32
  %.sroa.0162.sroa.14.3.i = select i1 %i.ayt, i32 %i.ayw, i32 %.sroa.0162.sroa.14.2.i.ph ; 3 uses
  %i.ayx = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.ayy = ptrtoint ptr %.4848.ph to i64          ; 4 uses
  %i.ayz = sub i64 %i.bkd, %i.ayy                 ; 6 uses
  %i.aza = udiv i64 %i.ayz, 255
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.ayz
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 8
  %i.aze = icmp ugt ptr %i.azd, %spec.select.i
  %or.cond.i39 = select i1 %.not.i15, i1 %i.aze, i1 false
  br i1 %or.cond.i39, label %LZ4HC_encodeSequence.exit, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.azf = icmp ugt i64 %i.ayz, 14
  br i1 %i.azf, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.azg = add i64 %i.ayz, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !29
  %i.azh = icmp ugt i64 %i.azg, 254
  br i1 %i.azh, label %.lr.ph1505.preheader, label %._crit_edge1506

.lr.ph1505.preheader:                             ; preds = %bb.je
  %reass.sub2118 = sub i64 %i.bkd, %i.ayy
  %i.azi = add i64 %reass.sub2118, -270           ; 2 uses
  %i.azj = udiv i64 %i.azi, 255                   ; 3 uses
  %i.azk = add nuw nsw i64 %i.azj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ayx, i8 -1, i64 %i.azk, i1 false), !tbaa !29
  %scevgep1871 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1875 = getelementptr i8, ptr %scevgep1871, i64 %i.azj
  %.neg2119 = mul i64 %i.azj, -255
  %i.azl = add i64 %.neg2119, %i.azi
  br label %._crit_edge1506

._crit_edge1506:                                  ; preds = %.lr.ph1505.preheader, %bb.je
  %.28.lcssa = phi ptr [ %i.ayx, %bb.je ], [ %scevgep1875, %.lr.ph1505.preheader ] ; 2 uses
  %.0.i46.lcssa = phi i64 [ %i.azg, %bb.je ], [ %i.azl, %.lr.ph1505.preheader ]
  %i.azm = trunc nuw i64 %.0.i46.lcssa to i8
  %i.azn = getelementptr inbounds nuw i8, ptr %.28.lcssa, i64 1
  store i8 %i.azm, ptr %.28.lcssa, align 1, !tbaa !29
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  %.tr.i40 = trunc nuw nsw i64 %i.ayz to i8
  %i.azo = shl nuw i8 %.tr.i40, 4
  store i8 %i.azo, ptr %.5.ph, align 1, !tbaa !29
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %._crit_edge1506
  %.24 = phi ptr [ %i.azn, %._crit_edge1506 ], [ %i.ayx, %bb.jf ] ; 6 uses
  %.242541 = ptrtoaddr ptr %.24 to i64            ; 4 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %.24, i64 %i.ayz ; 3 uses
  %i.azq = add i64 %i.bkd, %.242541
  %i.azr = sub i64 %i.azq, %i.ayy
  %i.azs = add nuw i64 %.242541, 8
  %i.azt = tail call i64 @llvm.umax.i64(i64 %i.azr, i64 %i.azs)
  %i.azu = xor i64 %.242541, -1
  %i.azv = add i64 %i.azt, %i.azu                 ; 2 uses
  %i.azw = lshr i64 %i.azv, 3
  %i.azx = add nuw nsw i64 %i.azw, 1              ; 2 uses
  %min.iters.check2545 = icmp ult i64 %i.azv, 24
  %i.azy = sub i64 %.4848.ph2542, %.242541
  %diff.check2543 = icmp ugt i64 %i.azy, -32
  %or.cond2633 = select i1 %min.iters.check2545, i1 true, i1 %diff.check2543
  br i1 %or.cond2633, label %scalar.ph2544.preheader, label %vector.ph2546

vector.ph2546:                                    ; preds = %bb.jg
  %n.vec2547 = and i64 %i.azx, 4611686018427387900 ; 3 uses
  %i.azz = shl i64 %n.vec2547, 3                  ; 2 uses
  %i.baa = getelementptr i8, ptr %.24, i64 %i.azz
  %i.bab = getelementptr i8, ptr %.4848.ph, i64 %i.azz
  br label %vector.body2548

vector.body2548:                                  ; preds = %vector.body2548, %vector.ph2546
  %index2549 = phi i64 [ 0, %vector.ph2546 ], [ %index.next2554, %vector.body2548 ] ; 2 uses
  %i.bac = shl i64 %index2549, 3                  ; 2 uses
  %next.gep2550 = getelementptr i8, ptr %.24, i64 %i.bac ; 2 uses
  %next.gep2551 = getelementptr i8, ptr %.4848.ph, i64 %i.bac ; 2 uses
  %i.bad = getelementptr i8, ptr %next.gep2551, i64 16
  %wide.load2552 = load <2 x i64>, ptr %next.gep2551, align 1
  %wide.load2553 = load <2 x i64>, ptr %i.bad, align 1
  %i.bae = getelementptr i8, ptr %next.gep2550, i64 16
  store <2 x i64> %wide.load2552, ptr %next.gep2550, align 1
  store <2 x i64> %wide.load2553, ptr %i.bae, align 1
  %index.next2554 = add nuw i64 %index2549, 4     ; 2 uses
  %i.baf = icmp eq i64 %index.next2554, %n.vec2547
  br i1 %i.baf, label %middle.block2555, label %vector.body2548, !llvm.loop !69

middle.block2555:                                 ; preds = %vector.body2548
  %cmp.n2556 = icmp eq i64 %i.azx, %n.vec2547
  br i1 %cmp.n2556, label %LZ4_wildCopy8.exit73, label %scalar.ph2544.preheader

scalar.ph2544.preheader:                          ; preds = %bb.jg, %middle.block2555
  %.09.i71.ph = phi ptr [ %.24, %bb.jg ], [ %i.baa, %middle.block2555 ]
  %.0.i72.ph = phi ptr [ %.4848.ph, %bb.jg ], [ %i.bab, %middle.block2555 ]
  br label %scalar.ph2544

scalar.ph2544:                                    ; preds = %scalar.ph2544.preheader, %scalar.ph2544
  %.09.i71 = phi ptr [ %i.bah, %scalar.ph2544 ], [ %.09.i71.ph, %scalar.ph2544.preheader ] ; 2 uses
  %.0.i72 = phi ptr [ %i.bai, %scalar.ph2544 ], [ %.0.i72.ph, %scalar.ph2544.preheader ] ; 2 uses
  %i.bag = load i64, ptr %.0.i72, align 1
  store i64 %i.bag, ptr %.09.i71, align 1
  %i.bah = getelementptr inbounds nuw i8, ptr %.09.i71, i64 8 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.0.i72, i64 8
  %i.baj = icmp ult ptr %i.bah, %i.azp
  br i1 %i.baj, label %scalar.ph2544, label %LZ4_wildCopy8.exit73, !llvm.loop !70

LZ4_wildCopy8.exit73:                             ; preds = %scalar.ph2544, %middle.block2555
  %i.bak = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bak, ptr %i.azp, align 1, !tbaa !27
  %i.bal = getelementptr i8, ptr %i.azp, i64 2    ; 4 uses
  %i.bam = sext i32 %.sroa.0162.sroa.14.3.i to i64 ; 4 uses
  %i.ban = add nsw i64 %i.bam, -4                 ; 3 uses
  %i.bao = udiv i64 %i.ban, 255
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bal, i64 %i.bao
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 6
  %i.bar = icmp ugt ptr %i.baq, %spec.select.i
  %or.cond64.i42 = select i1 %.not.i15, i1 %i.bar, i1 false
  br i1 %or.cond64.i42, label %LZ4HC_encodeSequence.exit, label %bb.jh

bb.jh:                                            ; preds = %LZ4_wildCopy8.exit73
  %i.bas = icmp ugt i64 %i.ban, 14
  br i1 %i.bas, label %bb.ji, label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  %i.bat = load i8, ptr %.5.ph, align 1, !tbaa !29
  %i.bau = add i8 %i.bat, 15
  store i8 %i.bau, ptr %.5.ph, align 1, !tbaa !29
  %i.bav = add nsw i64 %i.bam, -19                ; 2 uses
  %i.baw = icmp ugt i64 %i.bav, 509
  br i1 %i.baw, label %.lr.ph1512.preheader, label %._crit_edge1513

.lr.ph1512.preheader:                             ; preds = %bb.ji
  %i.bax = add nsw i64 %i.bam, -529               ; 2 uses
  %i.bay = udiv i64 %i.bax, 510                   ; 2 uses
  %i.baz = shl nuw nsw i64 %i.bay, 1              ; 2 uses
  %i.bba = add nuw nsw i64 %i.baz, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bal, i8 -1, i64 %i.bba, i1 false), !tbaa !29
  %scevgep1879 = getelementptr i8, ptr %.24, i64 4
  %i.bbb = sub i64 %i.baz, %i.ayy
  %scevgep1880 = getelementptr i8, ptr %scevgep1879, i64 %i.bbb
  %scevgep1884 = getelementptr i8, ptr %scevgep1880, i64 %i.bkd
  %.neg2120 = mul i64 %i.bay, -510
  %i.bbc = add i64 %.neg2120, %i.bax
  br label %._crit_edge1513

._crit_edge1513:                                  ; preds = %.lr.ph1512.preheader, %bb.ji
  %.26.lcssa = phi ptr [ %i.bal, %bb.ji ], [ %scevgep1884, %.lr.ph1512.preheader ] ; 3 uses
  %.050.i44.lcssa = phi i64 [ %i.bav, %bb.ji ], [ %i.bbc, %.lr.ph1512.preheader ] ; 3 uses
  %i.bbd = icmp samesign ugt i64 %.050.i44.lcssa, 254
  br i1 %i.bbd, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %._crit_edge1513
  %i.bbe = add nsw i64 %.050.i44.lcssa, -255
  %i.bbf = getelementptr inbounds nuw i8, ptr %.26.lcssa, i64 1
  store i8 -1, ptr %.26.lcssa, align 1, !tbaa !29
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %._crit_edge1513
  %.27 = phi ptr [ %i.bbf, %bb.jj ], [ %.26.lcssa, %._crit_edge1513 ] ; 2 uses
  %.1.i45 = phi i64 [ %i.bbe, %bb.jj ], [ %.050.i44.lcssa, %._crit_edge1513 ]
  %i.bbg = trunc nuw i64 %.1.i45 to i8
  %i.bbh = getelementptr inbounds nuw i8, ptr %.27, i64 1
  store i8 %i.bbg, ptr %.27, align 1, !tbaa !29
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jh
  %i.bbi = trunc nuw nsw i64 %i.ban to i8
  %i.bbj = load i8, ptr %.5.ph, align 1, !tbaa !29
  %i.bbk = add i8 %i.bbj, %i.bbi
  store i8 %i.bbk, ptr %.5.ph, align 1, !tbaa !29
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.25 = phi ptr [ %i.bbh, %bb.jk ], [ %i.bal, %bb.jl ] ; 10 uses
  %i.bbl = getelementptr i8, ptr %.4858.ph, i64 %i.bam ; 6 uses
  %i.bbm = getelementptr i8, ptr %.25, i64 1      ; 4 uses
  %i.bbn = ptrtoint ptr %i.bbl to i64             ; 5 uses
  %i.bbo = sub i64 %i.ayu, %i.bbn                 ; 6 uses
  %i.bbp = udiv i64 %i.bbo, 255
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbm, i64 %i.bbp
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 %i.bbo
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bbt = icmp ugt ptr %i.bbs, %spec.select.i
  %or.cond.i28 = select i1 %.not.i15, i1 %i.bbt, i1 false
  br i1 %or.cond.i28, label %LZ4HC_encodeSequence.exit, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.bbu = icmp ugt i64 %i.bbo, 14
  br i1 %i.bbu, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.bbv = add i64 %i.bbo, -15                    ; 2 uses
  store i8 -16, ptr %.25, align 1, !tbaa !29
  %i.bbw = icmp ugt i64 %i.bbv, 254
  br i1 %i.bbw, label %.lr.ph1519.preheader, label %._crit_edge1520

.lr.ph1519.preheader:                             ; preds = %bb.jo
  %i.bbx = add i64 %i.ayu, -270
  %i.bby = sub i64 %i.bbx, %i.bbn                 ; 2 uses
  %i.bbz = udiv i64 %i.bby, 255                   ; 3 uses
  %i.bca = add nuw nsw i64 %i.bbz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bbm, i8 -1, i64 %i.bca, i1 false), !tbaa !29
  %scevgep1885 = getelementptr i8, ptr %.25, i64 2
  %scevgep1886 = getelementptr i8, ptr %scevgep1885, i64 %i.bbz
  %.neg2121 = mul i64 %i.bbz, -255
  %i.bcb = add i64 %.neg2121, %i.bby
  br label %._crit_edge1520

._crit_edge1520:                                  ; preds = %.lr.ph1519.preheader, %bb.jo
  %.22.lcssa = phi ptr [ %i.bbm, %bb.jo ], [ %scevgep1886, %.lr.ph1519.preheader ] ; 2 uses
  %.0.i35.lcssa = phi i64 [ %i.bbv, %bb.jo ], [ %i.bcb, %.lr.ph1519.preheader ]
  %i.bcc = trunc nuw i64 %.0.i35.lcssa to i8
  %i.bcd = getelementptr inbounds nuw i8, ptr %.22.lcssa, i64 1
  store i8 %i.bcc, ptr %.22.lcssa, align 1, !tbaa !29
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %.tr.i29 = trunc nuw nsw i64 %i.bbo to i8
  %i.bce = shl nuw i8 %.tr.i29, 4
  store i8 %i.bce, ptr %.25, align 1, !tbaa !29
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %._crit_edge1520
  %.18 = phi ptr [ %i.bcd, %._crit_edge1520 ], [ %i.bbm, %bb.jp ] ; 6 uses
  %.182536 = ptrtoaddr ptr %.18 to i64            ; 4 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.18, i64 %i.bbo ; 3 uses
  %i.bcg = ptrtoaddr ptr %.5.i to i64
  %i.bch = add i64 %i.bcg, %.182536
  %i.bci = sub i64 %i.bch, %i.bbn
  %i.bcj = add nuw i64 %.182536, 8
  %i.bck = tail call i64 @llvm.umax.i64(i64 %i.bci, i64 %i.bcj)
  %i.bcl = xor i64 %.182536, -1
  %i.bcm = add i64 %i.bck, %i.bcl                 ; 2 uses
  %i.bcn = lshr i64 %i.bcm, 3
  %i.bco = add nuw nsw i64 %i.bcn, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bcm, 24
  %7 = sub i64 %i.bbn, %.182536
  %diff.check = icmp ugt i64 %7, -32
  %or.cond2634 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2634, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.jq
  %n.vec = and i64 %i.bco, 4611686018427387900    ; 3 uses
  %i.bcp = shl i64 %n.vec, 3                      ; 2 uses
  %i.bcq = getelementptr i8, ptr %.18, i64 %i.bcp
  %i.bcr = getelementptr i8, ptr %i.bbl, i64 %i.bcp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bcs = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.18, i64 %i.bcs ; 2 uses
  %next.gep2537 = getelementptr i8, ptr %i.bbl, i64 %i.bcs ; 2 uses
  %i.bct = getelementptr i8, ptr %next.gep2537, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep2537, align 1
  %wide.load2538 = load <2 x i64>, ptr %i.bct, align 1
  %i.bcu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load2538, ptr %i.bcu, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bcv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bcv, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bco, %n.vec
  br i1 %cmp.n, label %LZ4_wildCopy8.exit76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.jq, %middle.block
  %.09.i74.ph = phi ptr [ %.18, %bb.jq ], [ %i.bcq, %middle.block ]
  %.0.i75.ph = phi ptr [ %i.bbl, %bb.jq ], [ %i.bcr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i74 = phi ptr [ %i.bcx, %scalar.ph ], [ %.09.i74.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i75 = phi ptr [ %i.bcy, %scalar.ph ], [ %.0.i75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bcw = load i64, ptr %.0.i75, align 1
  store i64 %i.bcw, ptr %.09.i74, align 1
  %i.bcx = getelementptr inbounds nuw i8, ptr %.09.i74, i64 8 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0.i75, i64 8
  %i.bcz = icmp ult ptr %i.bcx, %i.bcf
  br i1 %i.bcz, label %scalar.ph, label %LZ4_wildCopy8.exit76, !llvm.loop !72

LZ4_wildCopy8.exit76:                             ; preds = %scalar.ph, %middle.block
  %i.bda = trunc i32 %.sroa.090.sroa.0.1.i to i16
  store i16 %i.bda, ptr %i.bcf, align 1, !tbaa !27
  %i.bdb = getelementptr i8, ptr %i.bcf, i64 2    ; 4 uses
  %i.bdc = add nsw i64 %i.ail, -4                 ; 3 uses
  %i.bdd = udiv i64 %i.bdc, 255
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.bdd
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 6
  %i.bdg = icmp ugt ptr %i.bdf, %spec.select.i
  %or.cond64.i31 = select i1 %.not.i15, i1 %i.bdg, i1 false
  br i1 %or.cond64.i31, label %LZ4HC_encodeSequence.exit, label %bb.jr

bb.jr:                                            ; preds = %LZ4_wildCopy8.exit76
  %i.bdh = icmp ugt i64 %i.bdc, 14
  br i1 %i.bdh, label %bb.js, label %bb.jv

bb.js:                                            ; preds = %bb.jr
  %i.bdi = load i8, ptr %.25, align 1, !tbaa !29
  %i.bdj = add i8 %i.bdi, 15
  store i8 %i.bdj, ptr %.25, align 1, !tbaa !29
  %i.bdk = add nsw i64 %i.ail, -19                ; 2 uses
  %i.bdl = icmp ugt i64 %i.bdk, 509
  br i1 %i.bdl, label %.lr.ph1526.preheader, label %._crit_edge1527

.lr.ph1526.preheader:                             ; preds = %bb.js
  %i.bdm = add nsw i64 %i.ail, -529               ; 2 uses
  %i.bdn = udiv i64 %i.bdm, 510                   ; 2 uses
  %i.bdo = shl nuw nsw i64 %i.bdn, 1              ; 2 uses
  %i.bdp = add nuw nsw i64 %i.bdo, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bdb, i8 -1, i64 %i.bdp, i1 false), !tbaa !29
  %scevgep1887 = getelementptr i8, ptr %.18, i64 4
  %i.bdq = sub i64 0, %i.bbn
  %scevgep1888 = getelementptr i8, ptr %scevgep1887, i64 %i.bdq
  %i.bdr = getelementptr i8, ptr %scevgep1888, i64 %i.bdo
  %scevgep1893 = getelementptr i8, ptr %i.bdr, i64 %.5.i.lcssa18891892
  %.neg2122 = mul i64 %i.bdn, -510
  %i.bds = add i64 %.neg2122, %i.bdm
  br label %._crit_edge1527

._crit_edge1527:                                  ; preds = %.lr.ph1526.preheader, %bb.js
  %.20.lcssa = phi ptr [ %i.bdb, %bb.js ], [ %scevgep1893, %.lr.ph1526.preheader ] ; 3 uses
  %.050.i33.lcssa = phi i64 [ %i.bdk, %bb.js ], [ %i.bds, %.lr.ph1526.preheader ] ; 3 uses
  %i.bdt = icmp samesign ugt i64 %.050.i33.lcssa, 254
  br i1 %i.bdt, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %._crit_edge1527
  %i.bdu = add nsw i64 %.050.i33.lcssa, -255
  %i.bdv = getelementptr inbounds nuw i8, ptr %.20.lcssa, i64 1
  store i8 -1, ptr %.20.lcssa, align 1, !tbaa !29
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %._crit_edge1527
  %.21 = phi ptr [ %i.bdv, %bb.jt ], [ %.20.lcssa, %._crit_edge1527 ] ; 2 uses
  %.1.i34 = phi i64 [ %i.bdu, %bb.jt ], [ %.050.i33.lcssa, %._crit_edge1527 ]
  %i.bdw = trunc nuw i64 %.1.i34 to i8
  %i.bdx = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 %i.bdw, ptr %.21, align 1, !tbaa !29
  br label %.outer1185.backedge

bb.jv:                                            ; preds = %bb.jr
  %i.bdy = trunc nuw nsw i64 %i.bdc to i8
  %i.bdz = load i8, ptr %.25, align 1, !tbaa !29
  %i.bea = add i8 %i.bdz, %i.bdy
  store i8 %i.bea, ptr %.25, align 1, !tbaa !29
  br label %.outer1185.backedge

bb.jw:                                            ; preds = %bb.jb
  %i.beb = icmp ult ptr %.3341.i, %i.bki
  br i1 %i.beb, label %bb.jx, label %bb.kl

bb.jx:                                            ; preds = %bb.jw
  %.not365.i = icmp ult ptr %.3341.i, %i.bkh
  %.sroa.090.sroa.0.0.extract.trunc130.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32 ; 2 uses
  br i1 %.not365.i, label %bb.fu, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bec = icmp ult ptr %.5.i, %i.bkh
  br i1 %i.bec, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bed = ptrtoint ptr %i.bkh to i64
  %i.bee = ptrtoint ptr %.5.i to i64
  %i.bef = sub i64 %i.bed, %i.bee                 ; 2 uses
  %i.beg = trunc i64 %i.bef to i32
  %sext.i = shl i64 %i.bef, 32
  %i.beh = ashr exact i64 %sext.i, 32
  %i.bei = getelementptr inbounds i8, ptr %.5.i, i64 %i.beh
  %i.bej = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.beg ; 2 uses
  %i.bek = icmp slt i32 %i.bej, 4                 ; 3 uses
  %.sroa.090.sroa.12.4.i = select i1 %i.bek, i32 %.sroa.051.sroa.8.0.i, i32 %i.bej
  %.sroa.090.sroa.0.2.i = select i1 %i.bek, i32 %.sroa.090.sroa.0.0.extract.trunc130.i, i32 %.sroa.090.sroa.0.1.i
  %.6.i = select i1 %i.bek, ptr %.3341.i, ptr %i.bei
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.090.sroa.12.5.i = phi i32 [ %.sroa.090.sroa.12.4.i, %bb.jz ], [ %.sroa.090.sroa.12.3.i, %bb.jy ]
  %.sroa.090.sroa.0.3.i = phi i32 [ %.sroa.090.sroa.0.2.i, %bb.jz ], [ %.sroa.090.sroa.0.1.i, %bb.jy ]
  %.7.i = phi ptr [ %.6.i, %bb.jz ], [ %.5.i, %bb.jy ] ; 2 uses
  %i.bel = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.bem = ptrtoint ptr %.4848.ph to i64          ; 4 uses
  %i.ben = sub i64 %i.bkd, %i.bem                 ; 6 uses
  %i.beo = udiv i64 %i.ben, 255
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.beo
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 %i.ben
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 8
  %i.bes = icmp ugt ptr %i.ber, %spec.select.i
  %or.cond.i12 = select i1 %.not.i15, i1 %i.bes, i1 false
  br i1 %or.cond.i12, label %LZ4HC_encodeSequence.exit, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bet = icmp ugt i64 %i.ben, 14
  br i1 %i.bet, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.beu = add i64 %i.ben, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !29
  %i.bev = icmp ugt i64 %i.beu, 254
  br i1 %i.bev, label %.lr.ph1477.preheader, label %._crit_edge1478

.lr.ph1477.preheader:                             ; preds = %bb.kc
  %reass.sub2125 = sub i64 %i.bkd, %i.bem
  %i.bew = add i64 %reass.sub2125, -270           ; 2 uses
  %i.bex = udiv i64 %i.bew, 255                   ; 3 uses
  %i.bey = add nuw nsw i64 %i.bex, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bel, i8 -1, i64 %i.bey, i1 false), !tbaa !29
  %scevgep1830 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1834 = getelementptr i8, ptr %scevgep1830, i64 %i.bex
  %.neg2126 = mul i64 %i.bex, -255
  %i.bez = add i64 %.neg2126, %i.bew
  br label %._crit_edge1478

._crit_edge1478:                                  ; preds = %.lr.ph1477.preheader, %bb.kc
  %.10.lcssa = phi ptr [ %i.bel, %bb.kc ], [ %scevgep1834, %.lr.ph1477.preheader ] ; 2 uses
  %.0.i14.lcssa = phi i64 [ %i.beu, %bb.kc ], [ %i.bez, %.lr.ph1477.preheader ]
  %i.bfa = trunc nuw i64 %.0.i14.lcssa to i8
  %i.bfb = getelementptr inbounds nuw i8, ptr %.10.lcssa, i64 1
  store i8 %i.bfa, ptr %.10.lcssa, align 1, !tbaa !29
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  %.tr.i = trunc nuw nsw i64 %i.ben to i8
  %i.bfc = shl nuw i8 %.tr.i, 4
  store i8 %i.bfc, ptr %.5.ph, align 1, !tbaa !29
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %._crit_edge1478
  %.6 = phi ptr [ %i.bfb, %._crit_edge1478 ], [ %i.bel, %bb.kd ] ; 6 uses
  %.62579 = ptrtoaddr ptr %.6 to i64              ; 4 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.6, i64 %i.ben ; 3 uses
  %i.bfe = add i64 %i.bkd, %.62579
  %i.bff = sub i64 %i.bfe, %i.bem
  %i.bfg = add nuw i64 %.62579, 8
  %i.bfh = tail call i64 @llvm.umax.i64(i64 %i.bff, i64 %i.bfg)
  %i.bfi = xor i64 %.62579, -1
  %i.bfj = add i64 %i.bfh, %i.bfi                 ; 2 uses
  %i.bfk = lshr i64 %i.bfj, 3
  %i.bfl = add nuw nsw i64 %i.bfk, 1              ; 2 uses
  %min.iters.check2582 = icmp ult i64 %i.bfj, 24
  %i.bfm = sub i64 %.4848.ph2542, %.62579
  %diff.check2580 = icmp ugt i64 %i.bfm, -32
  %or.cond2635 = select i1 %min.iters.check2582, i1 true, i1 %diff.check2580
  br i1 %or.cond2635, label %scalar.ph2581.preheader, label %vector.ph2583

vector.ph2583:                                    ; preds = %bb.ke
  %n.vec2584 = and i64 %i.bfl, 4611686018427387900 ; 3 uses
  %i.bfn = shl i64 %n.vec2584, 3                  ; 2 uses
  %i.bfo = getelementptr i8, ptr %.6, i64 %i.bfn
  %i.bfp = getelementptr i8, ptr %.4848.ph, i64 %i.bfn
  br label %vector.body2585

vector.body2585:                                  ; preds = %vector.body2585, %vector.ph2583
  %index2586 = phi i64 [ 0, %vector.ph2583 ], [ %index.next2591, %vector.body2585 ] ; 2 uses
  %i.bfq = shl i64 %index2586, 3                  ; 2 uses
  %next.gep2587 = getelementptr i8, ptr %.6, i64 %i.bfq ; 2 uses
  %next.gep2588 = getelementptr i8, ptr %.4848.ph, i64 %i.bfq ; 2 uses
  %i.bfr = getelementptr i8, ptr %next.gep2588, i64 16
  %wide.load2589 = load <2 x i64>, ptr %next.gep2588, align 1
  %wide.load2590 = load <2 x i64>, ptr %i.bfr, align 1
  %i.bfs = getelementptr i8, ptr %next.gep2587, i64 16
  store <2 x i64> %wide.load2589, ptr %next.gep2587, align 1
  store <2 x i64> %wide.load2590, ptr %i.bfs, align 1
  %index.next2591 = add nuw i64 %index2586, 4     ; 2 uses
  %i.bft = icmp eq i64 %index.next2591, %n.vec2584
  br i1 %i.bft, label %middle.block2592, label %vector.body2585, !llvm.loop !73

middle.block2592:                                 ; preds = %vector.body2585
  %cmp.n2593 = icmp eq i64 %i.bfl, %n.vec2584
  br i1 %cmp.n2593, label %LZ4_wildCopy8.exit82, label %scalar.ph2581.preheader

scalar.ph2581.preheader:                          ; preds = %bb.ke, %middle.block2592
  %.09.i80.ph = phi ptr [ %.6, %bb.ke ], [ %i.bfo, %middle.block2592 ]
  %.0.i81.ph = phi ptr [ %.4848.ph, %bb.ke ], [ %i.bfp, %middle.block2592 ]
  br label %scalar.ph2581

scalar.ph2581:                                    ; preds = %scalar.ph2581.preheader, %scalar.ph2581
  %.09.i80 = phi ptr [ %i.bfv, %scalar.ph2581 ], [ %.09.i80.ph, %scalar.ph2581.preheader ] ; 2 uses
  %.0.i81 = phi ptr [ %i.bfw, %scalar.ph2581 ], [ %.0.i81.ph, %scalar.ph2581.preheader ] ; 2 uses
  %i.bfu = load i64, ptr %.0.i81, align 1
  store i64 %i.bfu, ptr %.09.i80, align 1
  %i.bfv = getelementptr inbounds nuw i8, ptr %.09.i80, i64 8 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0.i81, i64 8
  %i.bfx = icmp ult ptr %i.bfv, %i.bfd
  br i1 %i.bfx, label %scalar.ph2581, label %LZ4_wildCopy8.exit82, !llvm.loop !74

LZ4_wildCopy8.exit82:                             ; preds = %scalar.ph2581, %middle.block2592
  %i.bfy = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bfy, ptr %i.bfd, align 1, !tbaa !27
  %i.bfz = getelementptr i8, ptr %i.bfd, i64 2    ; 4 uses
  %i.bga = add nsw i64 %i.bkg, -4                 ; 3 uses
  %i.bgb = udiv i64 %i.bga, 255
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 6
  %i.bge = icmp ugt ptr %i.bgd, %spec.select.i
  %or.cond64.i = select i1 %.not.i15, i1 %i.bge, i1 false
  br i1 %or.cond64.i, label %LZ4HC_encodeSequence.exit, label %bb.kf

bb.kf:                                            ; preds = %LZ4_wildCopy8.exit82
  %i.bgf = icmp ugt i64 %i.bga, 14
  br i1 %i.bgf, label %bb.kg, label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.bgg = load i8, ptr %.5.ph, align 1, !tbaa !29
  %i.bgh = add i8 %i.bgg, 15
  store i8 %i.bgh, ptr %.5.ph, align 1, !tbaa !29
  %i.bgi = add nsw i64 %i.bkg, -19                ; 2 uses
  %i.bgj = icmp ugt i64 %i.bgi, 509
  br i1 %i.bgj, label %.lr.ph1484.preheader, label %._crit_edge1485

.lr.ph1484.preheader:                             ; preds = %bb.kg
  %i.bgk = add nsw i64 %i.bkg, -529               ; 2 uses
  %i.bgl = udiv i64 %i.bgk, 510                   ; 2 uses
  %i.bgm = shl nuw nsw i64 %i.bgl, 1              ; 2 uses
end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_noDictCtx:bb.a
  %.8.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %.8.i.idx
  br label %bb.kp

bb.ko:                                            ; preds = %bb.km
  %i.bhl = trunc i64 %i.bhc to i32
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn, %bb.kl
  %.sroa.0162.sroa.14.6.i = phi i32 [ %.sroa.0162.sroa.14.5.i, %bb.kn ], [ %i.bhl, %bb.ko ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.kl ] ; 3 uses
  %.sroa.090.sroa.12.7.i = phi i32 [ %.sroa.090.sroa.12.6.i, %bb.kn ], [ %.sroa.090.sroa.12.3.i, %bb.ko ], [ %.sroa.090.sroa.12.3.i, %bb.kl ]
  %.9.i = phi ptr [ %.8.i, %bb.kn ], [ %.5.i, %bb.ko ], [ %.5.i, %bb.kl ]
  %i.bhm = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.bhn = ptrtoint ptr %.4848.ph to i64          ; 3 uses
  %i.bho = sub i64 %i.bkd, %i.bhn                 ; 6 uses
  %i.bhp = udiv i64 %i.bho, 255
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhp
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.bho
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bht = icmp ugt ptr %i.bhs, %spec.select.i
  %or.cond.i17 = select i1 %.not.i15, i1 %i.bht, i1 false
  br i1 %or.cond.i17, label %LZ4HC_encodeSequence.exit, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bhu = icmp ugt i64 %i.bho, 14
  br i1 %i.bhu, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bhv = add i64 %i.bho, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !29
  %i.bhw = icmp ugt i64 %i.bhv, 254
  br i1 %i.bhw, label %.lr.ph1463.preheader, label %._crit_edge1464

.lr.ph1463.preheader:                             ; preds = %bb.kr
  %i.bhx = add i64 %i.bkd, -270
  %i.bhy = sub i64 %i.bhx, %i.bhn                 ; 2 uses
  %i.bhz = udiv i64 %i.bhy, 255                   ; 3 uses
  %i.bia = add nuw nsw i64 %i.bhz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bhm, i8 -1, i64 %i.bia, i1 false), !tbaa !29
  %scevgep = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1821 = getelementptr i8, ptr %scevgep, i64 %i.bhz
  %.neg2123 = mul i64 %i.bhz, -255
  %i.bib = add i64 %.neg2123, %i.bhy
  br label %._crit_edge1464

._crit_edge1464:                                  ; preds = %.lr.ph1463.preheader, %bb.kr
  %.16.lcssa = phi ptr [ %i.bhm, %bb.kr ], [ %scevgep1821, %.lr.ph1463.preheader ] ; 2 uses
  %.0.i24.lcssa = phi i64 [ %i.bhv, %bb.kr ], [ %i.bib, %.lr.ph1463.preheader ]
  %i.bic = trunc nuw i64 %.0.i24.lcssa to i8
  %i.bid = getelementptr inbounds nuw i8, ptr %.16.lcssa, i64 1
  store i8 %i.bic, ptr %.16.lcssa, align 1, !tbaa !29
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %.tr.i18 = trunc nuw nsw i64 %i.bho to i8
  %i.bie = shl nuw i8 %.tr.i18, 4
  store i8 %i.bie, ptr %.5.ph, align 1, !tbaa !29
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %._crit_edge1464
  %.12 = phi ptr [ %i.bid, %._crit_edge1464 ], [ %i.bhm, %bb.ks ] ; 6 uses
  %.122597 = ptrtoaddr ptr %.12 to i64            ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %.12, i64 %i.bho ; 3 uses
  %i.big = add i64 %.122597, %i.bkd
  %i.bih = sub i64 %i.big, %.4848.ph2542
  %i.bii = add nuw i64 %.122597, 8
  %i.bij = tail call i64 @llvm.umax.i64(i64 %i.bih, i64 %i.bii)
  %i.bik = xor i64 %.122597, -1
  %i.bil = add i64 %i.bij, %i.bik                 ; 2 uses
  %i.bim = lshr i64 %i.bil, 3
  %i.bin = add nuw nsw i64 %i.bim, 1              ; 2 uses
  %min.iters.check2600 = icmp ult i64 %i.bil, 24
  %i.bio = sub i64 %.4848.ph2542, %.122597
  %diff.check2598 = icmp ugt i64 %i.bio, -32
  %or.cond2636 = select i1 %min.iters.check2600, i1 true, i1 %diff.check2598
  br i1 %or.cond2636, label %scalar.ph2599.preheader, label %vector.ph2601

vector.ph2601:                                    ; preds = %bb.kt
  %n.vec2602 = and i64 %i.bin, 4611686018427387900 ; 3 uses
  %i.bip = shl i64 %n.vec2602, 3                  ; 2 uses
  %i.biq = getelementptr i8, ptr %.12, i64 %i.bip
  %i.bir = getelementptr i8, ptr %.4848.ph, i64 %i.bip
  br label %vector.body2603

vector.body2603:                                  ; preds = %vector.body2603, %vector.ph2601
  %index2604 = phi i64 [ 0, %vector.ph2601 ], [ %index.next2609, %vector.body2603 ] ; 2 uses
  %i.bis = shl i64 %index2604, 3                  ; 2 uses
  %next.gep2605 = getelementptr i8, ptr %.12, i64 %i.bis ; 2 uses
  %next.gep2606 = getelementptr i8, ptr %.4848.ph, i64 %i.bis ; 2 uses
  %i.bit = getelementptr i8, ptr %next.gep2606, i64 16
  %wide.load2607 = load <2 x i64>, ptr %next.gep2606, align 1
  %wide.load2608 = load <2 x i64>, ptr %i.bit, align 1
  %i.biu = getelementptr i8, ptr %next.gep2605, i64 16
  store <2 x i64> %wide.load2607, ptr %next.gep2605, align 1
  store <2 x i64> %wide.load2608, ptr %i.biu, align 1
  %index.next2609 = add nuw i64 %index2604, 4     ; 2 uses
  %i.biv = icmp eq i64 %index.next2609, %n.vec2602
  br i1 %i.biv, label %middle.block2610, label %vector.body2603, !llvm.loop !75

middle.block2610:                                 ; preds = %vector.body2603
  %cmp.n2611 = icmp eq i64 %i.bin, %n.vec2602
  br i1 %cmp.n2611, label %LZ4_wildCopy8.exit79, label %scalar.ph2599.preheader

scalar.ph2599.preheader:                          ; preds = %bb.kt, %middle.block2610
  %.09.i77.ph = phi ptr [ %.12, %bb.kt ], [ %i.biq, %middle.block2610 ]
  %.0.i78.ph = phi ptr [ %.4848.ph, %bb.kt ], [ %i.bir, %middle.block2610 ]
  br label %scalar.ph2599

scalar.ph2599:                                    ; preds = %scalar.ph2599.preheader, %scalar.ph2599
  %.09.i77 = phi ptr [ %i.bix, %scalar.ph2599 ], [ %.09.i77.ph, %scalar.ph2599.preheader ] ; 2 uses
  %.0.i78 = phi ptr [ %i.biy, %scalar.ph2599 ], [ %.0.i78.ph, %scalar.ph2599.preheader ] ; 2 uses
  %i.biw = load i64, ptr %.0.i78, align 1
  store i64 %i.biw, ptr %.09.i77, align 1
  %i.bix = getelementptr inbounds nuw i8, ptr %.09.i77, i64 8 ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %.0.i78, i64 8
  %i.biz = icmp ult ptr %i.bix, %i.bif
  br i1 %i.biz, label %scalar.ph2599, label %LZ4_wildCopy8.exit79, !llvm.loop !76

LZ4_wildCopy8.exit79:                             ; preds = %scalar.ph2599, %middle.block2610
  %i.bja = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bja, ptr %i.bif, align 1, !tbaa !27
  %i.bjb = getelementptr i8, ptr %i.bif, i64 2    ; 4 uses
  %i.bjc = sext i32 %.sroa.0162.sroa.14.6.i to i64 ; 4 uses
  %i.bjd = add nsw i64 %i.bjc, -4                 ; 3 uses
  %i.bje = udiv i64 %i.bjd, 255
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %i.bje
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 6
  %i.bjh = icmp ugt ptr %i.bjg, %spec.select.i
  %or.cond64.i20 = select i1 %.not.i15, i1 %i.bjh, i1 false
  br i1 %or.cond64.i20, label %LZ4HC_encodeSequence.exit, label %bb.ku

bb.ku:                                            ; preds = %LZ4_wildCopy8.exit79
  %i.bji = icmp ugt i64 %i.bjd, 14
  br i1 %i.bji, label %bb.kv, label %bb.ky

bb.kv:                                            ; preds = %bb.ku
  %i.bjj = load i8, ptr %.5.ph, align 1, !tbaa !29
  %i.bjk = add i8 %i.bjj, 15
  store i8 %i.bjk, ptr %.5.ph, align 1, !tbaa !29
  %i.bjl = add nsw i64 %i.bjc, -19                ; 2 uses
  %i.bjm = icmp ugt i64 %i.bjl, 509
  br i1 %i.bjm, label %.lr.ph1470.preheader, label %._crit_edge1471

.lr.ph1470.preheader:                             ; preds = %bb.kv
  %i.bjn = add nsw i64 %i.bjc, -529               ; 2 uses
  %i.bjo = udiv i64 %i.bjn, 510                   ; 2 uses
  %i.bjp = shl nuw nsw i64 %i.bjo, 1              ; 2 uses
  %i.bjq = add nuw nsw i64 %i.bjp, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bjb, i8 -1, i64 %i.bjq, i1 false), !tbaa !29
  %scevgep1822 = getelementptr i8, ptr %.12, i64 4
  %i.bjr = add i64 %i.bjp, %i.bkd
  %i.bjs = sub i64 %i.bjr, %i.bhn
  %scevgep1823 = getelementptr i8, ptr %scevgep1822, i64 %i.bjs
  %.neg2124 = mul i64 %i.bjo, -510
  %i.bjt = add i64 %.neg2124, %i.bjn
  br label %._crit_edge1471

._crit_edge1471:                                  ; preds = %.lr.ph1470.preheader, %bb.kv
  %.14.lcssa = phi ptr [ %i.bjb, %bb.kv ], [ %scevgep1823, %.lr.ph1470.preheader ] ; 3 uses
  %.050.i22.lcssa = phi i64 [ %i.bjl, %bb.kv ], [ %i.bjt, %.lr.ph1470.preheader ] ; 3 uses
  %i.bju = icmp samesign ugt i64 %.050.i22.lcssa, 254
  br i1 %i.bju, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %._crit_edge1471
  %i.bjv = add nsw i64 %.050.i22.lcssa, -255
  %i.bjw = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1
  store i8 -1, ptr %.14.lcssa, align 1, !tbaa !29
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %._crit_edge1471
  %.15 = phi ptr [ %i.bjw, %bb.kw ], [ %.14.lcssa, %._crit_edge1471 ] ; 2 uses
  %.1.i23 = phi i64 [ %i.bjv, %bb.kw ], [ %.050.i22.lcssa, %._crit_edge1471 ]
  %i.bjx = trunc nuw i64 %.1.i23 to i8
  %i.bjy = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.bjx, ptr %.15, align 1, !tbaa !29
  br label %bb.kz

bb.ky:                                            ; preds = %bb.ku
  %i.bjz = trunc nuw nsw i64 %i.bjd to i8
  %i.bka = load i8, ptr %.5.ph, align 1, !tbaa !29
  %i.bkb = add i8 %i.bka, %i.bjz
  store i8 %i.bkb, ptr %.5.ph, align 1, !tbaa !29
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %.13 = phi ptr [ %i.bjy, %bb.kx ], [ %i.bjb, %bb.ky ]
  %i.bkc = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bjc
  %.sroa.090.sroa.0.0.extract.trunc131.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32
  br label %.outer

.outer:                                           ; preds = %.preheader1179, %bb.kz
  %.4858.ph = phi ptr [ %.3857, %.preheader1179 ], [ %.9.i, %bb.kz ] ; 11 uses
  %.4848.ph = phi ptr [ %.1845.ph, %.preheader1179 ], [ %i.bkc, %bb.kz ] ; 19 uses
  %.5.ph = phi ptr [ %.1.ph, %.preheader1179 ], [ %.13, %bb.kz ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph = phi i32 [ %.sroa.0162.sroa.14.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.12.7.i, %bb.kz ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph = phi i32 [ %.sroa.0162.sroa.0.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.0.1.i, %bb.kz ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph = phi i32 [ %.sroa.090.sroa.12.0.i, %.preheader1179 ], [ %.sroa.051.sroa.8.0.i, %bb.kz ]
  %.sroa.090.sroa.0.1.i.ph = phi i32 [ %.sroa.090.sroa.0.0.i, %.preheader1179 ], [ %.sroa.090.sroa.0.0.extract.trunc131.i, %bb.kz ]
  %.2340.i.ph = phi ptr [ %.1339.i.ph, %.preheader1179 ], [ %.3341.i, %bb.kz ]
  %.3.i.ph = phi ptr [ %.2.i, %.preheader1179 ], [ %.3341.i, %bb.kz ]
  %.4848.ph2542 = ptrtoaddr ptr %.4848.ph to i64  ; 4 uses
  %i.bkd = ptrtoint ptr %.4858.ph to i64          ; 17 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph, i32 18) ; 3 uses
  %i.bke = sext i32 %spec.store.select.i to i64
  %i.bkf = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bke ; 2 uses
  %i.bkg = sext i32 %.sroa.0162.sroa.14.2.i.ph to i64 ; 4 uses
  %i.bkh = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bkg ; 7 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 3
  br label %bb.fu

.loopexit:                                        ; preds = %.outer1185.backedge, %LZ4HC_InsertAndGetWiderMatch.exit.thread, %LZ4HC_encodeSequence.exit55, %bb.e
  %.3847 = phi ptr [ %1, %bb.e ], [ %i.bpf, %LZ4HC_encodeSequence.exit55 ], [ %.0844.ph1564, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0854.ph.be, %.outer1185.backedge ] ; 3 uses
  %.2 = phi ptr [ %2, %bb.e ], [ %.34, %LZ4HC_encodeSequence.exit55 ], [ %.0.ph1565, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0.ph.be, %.outer1185.backedge ] ; 3 uses
  %i.bkj = ptrtoint ptr %i.v to i64
  %i.bkk = ptrtoint ptr %.3847 to i64
  %i.bkl = sub i64 %i.bkj, %i.bkk                 ; 3 uses
  %i.bkm = add i64 %i.bkl, 240
  %i.bkn = udiv i64 %i.bkm, 255
  %spec.select375.i.idx = select i1 %i.g, i64 5, i64 0
  %spec.select375.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select375.i.idx ; 2 uses
  %.not371.i = icmp ne i32 %6, 0
  %i.bko = getelementptr i8, ptr %.2, i64 %i.bkn
  %i.bkp = getelementptr i8, ptr %i.bko, i64 1
  %i.bkq = getelementptr i8, ptr %i.bkp, i64 %i.bkl
  %i.bkr = icmp ugt ptr %i.bkq, %spec.select375.i
  %or.cond = select i1 %.not371.i, i1 %i.bkr, i1 false
  br i1 %or.cond, label %bb.la, label %bb.lb

.thread1118:                                      ; preds = %bb.le, %bb.lf
  %i.bks = ptrtoint ptr %i.v to i64
  %i.bkt = sub i64 %i.bks, %i.bme                 ; 3 uses
  %i.bku = add i64 %i.bkt, 240
  %i.bkv = udiv i64 %i.bku, 255
  %i.bkw = getelementptr i8, ptr %.0332.i, i64 %i.bkv
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 1
  %i.bky = getelementptr i8, ptr %i.bkx, i64 %i.bkt
  %i.bkz = icmp ugt ptr %i.bky, %i.z
  br i1 %i.bkz, label %.thread1125, label %bb.lb

bb.la:                                            ; preds = %.loopexit
  %i.bla = icmp eq i32 %6, 1
  br i1 %i.bla, label %LZ4HC_compress_hashChain.exit.thread, label %.thread1125

.thread1125:                                      ; preds = %.thread1118, %bb.la
  %spec.select375.i111711221131 = phi ptr [ %spec.select375.i, %bb.la ], [ %i.z, %.thread1118 ]
  %.2111511231130 = phi ptr [ %.2, %bb.la ], [ %.0332.i, %.thread1118 ] ; 2 uses
  %.3847111311241129 = phi ptr [ %.3847, %bb.la ], [ %.2846, %.thread1118 ]
  %i.blb = ptrtoint ptr %spec.select375.i111711221131 to i64
  %i.blc = ptrtoint ptr %.2111511231130 to i64
  %i.bld = xor i64 %i.blc, -1
  %i.ble = add i64 %i.bld, %i.blb                 ; 2 uses
  %i.blf = add i64 %i.ble, 241
  %i.blg = lshr i64 %i.blf, 8
  %i.blh = sub i64 %i.ble, %i.blg
  br label %bb.lb

bb.lb:                                            ; preds = %.thread1118, %.thread1125, %.loopexit
  %.21116 = phi ptr [ %.2111511231130, %.thread1125 ], [ %.0332.i, %.thread1118 ], [ %.2, %.loopexit ] ; 6 uses
  %.38471114 = phi ptr [ %.3847111311241129, %.thread1125 ], [ %.2846, %.thread1118 ], [ %.3847, %.loopexit ] ; 2 uses
  %.0329.i = phi i64 [ %i.blh, %.thread1125 ], [ %i.bkt, %.thread1118 ], [ %i.bkl, %.loopexit ] ; 7 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.38471114, i64 %.0329.i
  %i.blj = icmp ugt i64 %.0329.i, 14
  %.41584 = getelementptr i8, ptr %.21116, i64 1  ; 3 uses
  br i1 %i.blj, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.blk = add i64 %.0329.i, -15                  ; 2 uses
  store i8 -16, ptr %.21116, align 1, !tbaa !29
  %i.bll = icmp ugt i64 %i.blk, 254
  br i1 %i.bll, label %.lr.ph1588.preheader, label %._crit_edge1589

.lr.ph1588.preheader:                             ; preds = %bb.lc
  %i.blm = add i64 %.0329.i, -270                 ; 2 uses
  %i.bln = udiv i64 %i.blm, 255                   ; 3 uses
  %i.blo = add nuw nsw i64 %i.bln, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41584, i8 -1, i64 %i.blo, i1 false), !tbaa !29
  %scevgep1896 = getelementptr i8, ptr %.21116, i64 %i.blo
  %.neg2130 = mul i64 %i.bln, -255
  %i.blp = add i64 %.neg2130, %i.blm
  %i.blq = getelementptr i8, ptr %.21116, i64 %i.bln
  %scevgep1897 = getelementptr i8, ptr %i.blq, i64 2
  br label %._crit_edge1589

._crit_edge1589:                                  ; preds = %.lr.ph1588.preheader, %bb.lc
  %.21116.pn.lcssa = phi ptr [ %.21116, %bb.lc ], [ %scevgep1896, %.lr.ph1588.preheader ]
  %.0.i7.lcssa = phi i64 [ %i.blk, %bb.lc ], [ %i.blp, %.lr.ph1588.preheader ]
  %.4.lcssa = phi ptr [ %.41584, %bb.lc ], [ %scevgep1897, %.lr.ph1588.preheader ]
  %i.blr = trunc nuw i64 %.0.i7.lcssa to i8
  %i.bls = getelementptr inbounds nuw i8, ptr %.21116.pn.lcssa, i64 2
  store i8 %i.blr, ptr %.4.lcssa, align 1, !tbaa !29
  br label %.critedge.i

bb.ld:                                            ; preds = %bb.lb
  %.0329.tr.i = trunc nuw nsw i64 %.0329.i to i8
  %i.blt = shl nuw i8 %.0329.tr.i, 4
  store i8 %i.blt, ptr %.21116, align 1, !tbaa !29
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ld, %._crit_edge1589
  %.3 = phi ptr [ %i.bls, %._crit_edge1589 ], [ %.41584, %bb.ld ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3, ptr align 1 %.38471114, i64 %.0329.i, i1 false)
  %i.blu = getelementptr inbounds nuw i8, ptr %.3, i64 %.0329.i
  %i.blv = ptrtoint ptr %i.bli to i64
  %i.blw = ptrtoint ptr %1 to i64
  %i.blx = sub i64 %i.blv, %i.blw
  %i.bly = trunc i64 %i.blx to i32
  store i32 %i.bly, ptr %3, align 4, !tbaa !18
  %i.blz = ptrtoint ptr %i.blu to i64
  %i.bma = ptrtoint ptr %2 to i64
  %i.bmb = sub i64 %i.blz, %i.bma
  %i.bmc = trunc i64 %i.bmb to i32
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit: ; preds = %LZ4_wildCopy8.exit
  %.sroa.0162.sroa.0.0.i.le1404.le1560 = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530: ; preds = %bb.fj
  %.sroa.0162.sroa.0.0.i.le1404.le = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.jc, %LZ4_wildCopy8.exit73, %LZ4_wildCopy8.exit76, %bb.jm, %LZ4_wildCopy8.exit82, %bb.ka, %LZ4_wildCopy8.exit79, %bb.kp, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530
  %.2856 = phi ptr [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4858.ph, %LZ4_wildCopy8.exit79 ], [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4858.ph, %LZ4_wildCopy8.exit82 ], [ %.4858.ph, %bb.kp ], [ %.4858.ph, %bb.ka ], [ %.4858.ph, %bb.jc ], [ %.5.i, %bb.jm ], [ %.4858.ph, %LZ4_wildCopy8.exit73 ], [ %.5.i, %LZ4_wildCopy8.exit76 ] ; 2 uses
  %.2846 = phi ptr [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4848.ph, %LZ4_wildCopy8.exit79 ], [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4848.ph, %LZ4_wildCopy8.exit82 ], [ %.4848.ph, %bb.kp ], [ %.4848.ph, %bb.ka ], [ %.4848.ph, %bb.jc ], [ %i.bbl, %bb.jm ], [ %.4848.ph, %LZ4_wildCopy8.exit73 ], [ %i.bbl, %LZ4_wildCopy8.exit76 ] ; 6 uses
  %.sroa.0162.sroa.14.7.i = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.14.6.i, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.14.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.14.6.i, %bb.kp ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.ka ], [ %.sroa.0162.sroa.14.3.i, %bb.jc ], [ %.sroa.090.sroa.12.3.i, %bb.jm ], [ %.sroa.0162.sroa.14.3.i, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.12.3.i, %LZ4_wildCopy8.exit76 ]
  %.sroa.0162.sroa.0.3.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1404.le, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.0.0.i.le1404.le1560, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.kp ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.ka ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.jc ], [ %.sroa.090.sroa.0.1.i, %bb.jm ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.0.1.i, %LZ4_wildCopy8.exit76 ]
  %.0332.i = phi ptr [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.5.ph, %LZ4_wildCopy8.exit79 ], [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.5.ph, %LZ4_wildCopy8.exit82 ], [ %.5.ph, %bb.kp ], [ %.5.ph, %bb.ka ], [ %.5.ph, %bb.jc ], [ %.25, %bb.jm ], [ %.5.ph, %LZ4_wildCopy8.exit73 ], [ %.25, %LZ4_wildCopy8.exit76 ] ; 12 uses
  br i1 %i.g, label %bb.le, label %LZ4HC_compress_hashChain.exit.thread

bb.le:                                            ; preds = %LZ4HC_encodeSequence.exit
  %i.bmd = ptrtoint ptr %.2856 to i64             ; 4 uses
  %i.bme = ptrtoint ptr %.2846 to i64             ; 6 uses
  %i.bmf = sub i64 %i.bmd, %i.bme                 ; 6 uses
  %i.bmg = add i64 %i.bmf, 240
  %i.bmh = udiv i64 %i.bmg, 255
  %i.bmi = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.bmj = getelementptr i8, ptr %.0332.i, i64 %i.bmh
  %i.bmk = getelementptr i8, ptr %i.bmj, i64 1
  %i.bml = getelementptr i8, ptr %i.bmk, i64 %i.bmf ; 3 uses
  %.not370.i = icmp ugt ptr %i.bml, %i.bmi
  br i1 %.not370.i, label %.thread1118, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bmm = ptrtoint ptr %i.bmi to i64
  %i.bmn = ptrtoint ptr %i.bml to i64
  %i.bmo = sub i64 %i.bmm, %i.bmn
  %i.bmp = mul i64 %i.bmo, 255
  %i.bmq = add i64 %i.bmp, 18
  %i.bmr = sext i32 %.sroa.0162.sroa.14.7.i to i64
  %spec.select376.i1164 = tail call i64 @llvm.umin.i64(i64 %i.bmq, i64 %i.bmr)
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bml, i64 2
  %i.bmt = ptrtoint ptr %i.z to i64
  %i.bmu = ptrtoint ptr %i.bms to i64
  %sext = shl i64 %spec.select376.i1164, 32
  %i.bmv = ashr exact i64 %sext, 32               ; 5 uses
  %i.bmw = add i64 %i.bmv, %i.bmt
  %i.bmx = sub i64 %i.bmu, %i.bmw
  %i.bmy = icmp slt i64 %i.bmx, -12
  br i1 %i.bmy, label %bb.lg, label %.thread1118

bb.lg:                                            ; preds = %bb.lf
  %i.bmz = getelementptr i8, ptr %.0332.i, i64 1  ; 3 uses
  %i.bna = icmp ugt i64 %i.bmf, 14
  br i1 %i.bna, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bnb = add i64 %i.bmf, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i, align 1, !tbaa !29
  %i.bnc = icmp ugt i64 %i.bnb, 254
  br i1 %i.bnc, label %.lr.ph1573.preheader, label %._crit_edge1574

.lr.ph1573.preheader:                             ; preds = %bb.lh
  %i.bnd = add i64 %i.bmd, -270
  %i.bne = sub i64 %i.bnd, %i.bme                 ; 2 uses
  %i.bnf = udiv i64 %i.bne, 255                   ; 3 uses
  %i.bng = add nuw nsw i64 %i.bnf, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bmz, i8 -1, i64 %i.bng, i1 false), !tbaa !29
  %i.bnh = getelementptr i8, ptr %.0332.i, i64 %i.bnf
  %scevgep1894 = getelementptr i8, ptr %i.bnh, i64 2
  %.neg2128 = mul i64 %i.bnf, -255
  %i.bni = add i64 %.neg2128, %i.bne
  br label %._crit_edge1574

._crit_edge1574:                                  ; preds = %.lr.ph1573.preheader, %bb.lh
  %.33.lcssa = phi ptr [ %i.bmz, %bb.lh ], [ %scevgep1894, %.lr.ph1573.preheader ] ; 2 uses
  %.0.i54.lcssa = phi i64 [ %i.bnb, %bb.lh ], [ %i.bni, %.lr.ph1573.preheader ]
  %i.bnj = trunc nuw i64 %.0.i54.lcssa to i8
  %i.bnk = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.bnj, ptr %.33.lcssa, align 1, !tbaa !29
  br label %bb.lj

bb.li:                                            ; preds = %bb.lg
  %.tr.i49 = trunc nuw nsw i64 %i.bmf to i8
  %i.bnl = shl nuw i8 %.tr.i49, 4
  store i8 %i.bnl, ptr %.0332.i, align 1, !tbaa !29
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %._crit_edge1574
  %.30 = phi ptr [ %i.bnk, %._crit_edge1574 ], [ %i.bmz, %bb.li ] ; 6 uses
  %.302615 = ptrtoaddr ptr %.30 to i64            ; 4 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.30, i64 %i.bmf ; 3 uses
  %i.bnn = add i64 %i.bmd, %.302615
end_hunk_3
