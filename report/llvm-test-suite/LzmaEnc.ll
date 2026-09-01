Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzmaEnc?download=true
inline.NumInlined: 106
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 67
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %GetOptimumFast.exit

GetOptimumFast.exit:                              ; preds = %bb.bj, %bb.bl, %bb.bn, %bb.bp, %MovePos.exit.sink.split.i, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bg, %bb.bf, %bb.be, %bb.az, %bb.aq, %bb.x, %GetOptimum.exit
  %.0 = phi i32 [ %.3347, %GetOptimum.exit ], [ -1, %bb.x ], [ %.1345, %MovePos.exit.sink.split.i ], [ -1, %bb.az ], [ -1, %bb.bl ], [ -1, %bb.bn ], [ -1, %bb.bp ], [ -1, %bb.bg ], [ %i.lx, %bb.aq ], [ -1, %bb.bq ], [ -1, %bb.br ], [ -1, %bb.bs ], [ -1, %bb.bt ], [ -1, %bb.be ], [ -1, %bb.bf ], [ -1, %bb.bj ] ; 2 uses
  %.0198 = phi i32 [ %.2.i, %GetOptimum.exit ], [ 1, %bb.x ], [ %.6.ph.i, %MovePos.exit.sink.split.i ], [ 1, %bb.az ], [ 1, %bb.bl ], [ 1, %bb.bn ], [ 1, %bb.bp ], [ 1, %bb.bg ], [ 1, %bb.aq ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bj ] ; 2 uses
  %i.bqn = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.bqo = and i32 %i.bqn, %.2205                 ; 2 uses
  %i.bqp = icmp eq i32 %.0198, 1                  ; 2 uses
  %i.bqq = icmp eq i32 %.0, -1
  %or.cond = select i1 %i.bqp, i1 %i.bqq, i1 false
  br i1 %or.cond, label %bb.gr, label %bb.hf

bb.gr:                                            ; preds = %GetOptimumFast.exit
  %i.bqr = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bqs
  %i.bqu = zext i32 %i.bqo to i64
  %i.bqv = getelementptr inbounds nuw [2 x i8], ptr %i.bqt, i64 %i.bqu ; 2 uses
  %i.bqw = load i16, ptr %i.bqv, align 2, !tbaa !23 ; 2 uses
  %i.bqx = zext i16 %i.bqw to i32                 ; 2 uses
  %i.bqy = load i32, ptr %i.fe, align 8, !tbaa !76
  %i.bqz = lshr i32 %i.bqy, 11
  %i.bra = mul i32 %i.bqz, %i.bqx                 ; 3 uses
  %i.brb = sub nsw i32 2048, %i.bqx
  %i.brc = lshr i32 %i.brb, 5
  store i32 %i.bra, ptr %i.fe, align 8, !tbaa !76
  %i.brd = trunc i32 %i.brc to i16
  %i.bre = add i16 %i.bqw, %i.brd
  store i16 %i.bre, ptr %i.bqv, align 2, !tbaa !23
  %i.brf = icmp ult i32 %i.bra, 16777216
  br i1 %i.brf, label %bb.gs, label %RangeEnc_EncodeBit.exit270

bb.gs:                                            ; preds = %bb.gr
  %i.brg = shl nuw i32 %i.bra, 8
  store i32 %i.brg, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit270

RangeEnc_EncodeBit.exit270:                       ; preds = %bb.gr, %bb.gs
  %i.brh = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.bri = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.brj = tail call ptr %i.brh(ptr noundef %i.bri) #14
  %i.brk = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.brl = zext i32 %i.brk to i64
  %i.brm = sub nsw i64 0, %i.brl
  %i.brn = getelementptr inbounds i8, ptr %i.brj, i64 %i.brm ; 3 uses
  %i.bro = load i8, ptr %i.brn, align 1, !tbaa !21
  %i.brp = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.brq = load i32, ptr %i.eg, align 8, !tbaa !91
  %i.brr = and i32 %i.brq, %.2205
  %i.brs = load i32, ptr %i.eh, align 4, !tbaa !53 ; 2 uses
  %i.brt = shl i32 %i.brr, %i.brs
  %i.bru = getelementptr inbounds i8, ptr %i.brn, i64 -1
  %i.brv = load i8, ptr %i.bru, align 1, !tbaa !21
  %i.brw = zext i8 %i.brv to i32
  %i.brx = sub i32 8, %i.brs
  %i.bry = lshr i32 %i.brw, %i.brx
  %i.brz = add i32 %i.bry, %i.brt
  %i.bsa = mul i32 %i.brz, 768
  %i.bsb = zext i32 %i.bsa to i64
  %i.bsc = getelementptr inbounds nuw [2 x i8], ptr %i.brp, i64 %i.bsb ; 2 uses
  %i.bsd = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bse = icmp ult i32 %i.bsd, 7
  %i.bsf = zext i8 %i.bro to i32                  ; 2 uses
  br i1 %i.bse, label %bb.gt, label %bb.gz

bb.gt:                                            ; preds = %RangeEnc_EncodeBit.exit270
  %i.bsg = or disjoint i32 %i.bsf, 256
  br label %bb.gu

bb.gu:                                            ; preds = %RangeEnc_EncodeBit.exit.i274, %bb.gt
  %.0.i271 = phi i32 [ %i.bsg, %bb.gt ], [ %i.btd, %RangeEnc_EncodeBit.exit.i274 ] ; 4 uses
  %i.bsh = lshr i32 %.0.i271, 8
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw [2 x i8], ptr %i.bsc, i64 %i.bsi ; 2 uses
  %i.bsk = load i16, ptr %i.bsj, align 2, !tbaa !23
  %i.bsl = zext i16 %i.bsk to i32                 ; 5 uses
  %i.bsm = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bsn = lshr i32 %i.bsm, 11
  %i.bso = mul i32 %i.bsn, %i.bsl                 ; 3 uses
  %i.bsp = and i32 %.0.i271, 128
  %i.bsq = icmp eq i32 %i.bsp, 0
  br i1 %i.bsq, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.bsr = sub nsw i32 2048, %i.bsl
  %i.bss = lshr i32 %i.bsr, 5
  %i.bst = add nuw nsw i32 %i.bss, %i.bsl
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %i.bsu = zext i32 %i.bso to i64
  %i.bsv = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bsw = add i64 %i.bsv, %i.bsu
  store i64 %i.bsw, ptr %i.ff, align 8, !tbaa !75
  %i.bsx = sub i32 %i.bsm, %i.bso
  %i.bsy = lshr i32 %i.bsl, 5
  %i.bsz = sub nsw i32 %i.bsl, %i.bsy
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.sink.i.i272 = phi i32 [ %i.bso, %bb.gv ], [ %i.bsx, %bb.gw ] ; 3 uses
  %.0.i.i273 = phi i32 [ %i.bst, %bb.gv ], [ %i.bsz, %bb.gw ]
  store i32 %.sink.i.i272, ptr %i.fe, align 8, !tbaa !76
  %i.bta = trunc i32 %.0.i.i273 to i16
  store i16 %i.bta, ptr %i.bsj, align 2, !tbaa !23
  %i.btb = icmp ult i32 %.sink.i.i272, 16777216
  br i1 %i.btb, label %bb.gy, label %RangeEnc_EncodeBit.exit.i274

bb.gy:                                            ; preds = %bb.gx
  %i.btc = shl nuw i32 %.sink.i.i272, 8
  store i32 %i.btc, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i274

RangeEnc_EncodeBit.exit.i274:                     ; preds = %bb.gy, %bb.gx
  %i.btd = shl nuw nsw i32 %.0.i271, 1
  %i.bte = icmp samesign ult i32 %.0.i271, 32768
  br i1 %i.bte, label %bb.gu, label %LitEnc_Encode.exit275, !llvm.loop !138

bb.gz:                                            ; preds = %RangeEnc_EncodeBit.exit270
  %i.btf = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.btg = zext i32 %i.btf to i64
  %i.bth = sub nsw i64 0, %i.btg
  %i.bti = getelementptr inbounds i8, ptr %i.brn, i64 %i.bth
  %i.btj = getelementptr inbounds i8, ptr %i.bti, i64 -1
  %i.btk = load i8, ptr %i.btj, align 1, !tbaa !21
  %i.btl = zext i8 %i.btk to i32
  %i.btm = or disjoint i32 %i.bsf, 256
  br label %bb.ha

bb.ha:                                            ; preds = %RangeEnc_EncodeBit.exit.i279, %bb.gz
  %.014.i = phi i32 [ %i.btm, %bb.gz ], [ %i.bun, %RangeEnc_EncodeBit.exit.i279 ] ; 4 uses
  %.013.i = phi i32 [ %i.btl, %bb.gz ], [ %i.btn, %RangeEnc_EncodeBit.exit.i279 ]
  %.0.i276 = phi i32 [ 256, %bb.gz ], [ %i.buq, %RangeEnc_EncodeBit.exit.i279 ] ; 3 uses
  %i.btn = shl i32 %.013.i, 1                     ; 3 uses
  %i.bto = and i32 %i.btn, %.0.i276
  %i.btp = lshr i32 %.014.i, 8
  %i.btq = add nuw nsw i32 %.0.i276, %i.btp
  %i.btr = add nuw nsw i32 %i.btq, %i.bto
  %i.bts = zext nneg i32 %i.btr to i64
  %i.btt = getelementptr inbounds nuw [2 x i8], ptr %i.bsc, i64 %i.bts ; 2 uses
  %i.btu = load i16, ptr %i.btt, align 2, !tbaa !23
  %i.btv = zext i16 %i.btu to i32                 ; 5 uses
  %i.btw = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.btx = lshr i32 %i.btw, 11
  %i.bty = mul i32 %i.btx, %i.btv                 ; 3 uses
  %i.btz = and i32 %.014.i, 128
  %i.bua = icmp eq i32 %i.btz, 0
  br i1 %i.bua, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bub = sub nsw i32 2048, %i.btv
  %i.buc = lshr i32 %i.bub, 5
  %i.bud = add nuw nsw i32 %i.buc, %i.btv
  br label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  %i.bue = zext i32 %i.bty to i64
  %i.buf = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bug = add i64 %i.buf, %i.bue
  store i64 %i.bug, ptr %i.ff, align 8, !tbaa !75
  %i.buh = sub i32 %i.btw, %i.bty
  %i.bui = lshr i32 %i.btv, 5
  %i.buj = sub nsw i32 %i.btv, %i.bui
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sink.i.i277 = phi i32 [ %i.bty, %bb.hb ], [ %i.buh, %bb.hc ] ; 3 uses
  %.0.i.i278 = phi i32 [ %i.bud, %bb.hb ], [ %i.buj, %bb.hc ]
  store i32 %.sink.i.i277, ptr %i.fe, align 8, !tbaa !76
  %i.buk = trunc i32 %.0.i.i278 to i16
  store i16 %i.buk, ptr %i.btt, align 2, !tbaa !23
  %i.bul = icmp ult i32 %.sink.i.i277, 16777216
  br i1 %i.bul, label %bb.he, label %RangeEnc_EncodeBit.exit.i279

bb.he:                                            ; preds = %bb.hd
  %i.bum = shl nuw i32 %.sink.i.i277, 8
  store i32 %i.bum, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i279

RangeEnc_EncodeBit.exit.i279:                     ; preds = %bb.he, %bb.hd
  %i.bun = shl nuw nsw i32 %.014.i, 1             ; 2 uses
  %i.buo = xor i32 %i.bun, %i.btn
  %i.bup = xor i32 %i.buo, -1
  %i.buq = and i32 %.0.i276, %i.bup
  %i.bur = icmp samesign ult i32 %.014.i, 32768
  br i1 %i.bur, label %bb.ha, label %LitEnc_Encode.exit275, !llvm.loop !187

LitEnc_Encode.exit275:                            ; preds = %RangeEnc_EncodeBit.exit.i279, %RangeEnc_EncodeBit.exit.i274
  %i.bus = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.but = zext i32 %i.bus to i64
  %i.buu = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.but
  %i.buv = load i32, ptr %i.buu, align 4, !tbaa !4
  store i32 %i.buv, ptr %i.ed, align 8, !tbaa !25
  br label %bb.kh

bb.hf:                                            ; preds = %GetOptimumFast.exit.thread, %GetOptimumFast.exit
  %i.buw = phi i1 [ false, %GetOptimumFast.exit.thread ], [ %i.bqp, %GetOptimumFast.exit ]
  %i.bux = phi i32 [ %i.sv, %GetOptimumFast.exit.thread ], [ %i.bqo, %GetOptimumFast.exit ] ; 3 uses
  %.0198357 = phi i32 [ 2, %GetOptimumFast.exit.thread ], [ %.0198, %GetOptimumFast.exit ] ; 7 uses
  %.0355 = phi i32 [ %i.ss, %GetOptimumFast.exit.thread ], [ %.0, %GetOptimumFast.exit ] ; 8 uses
  %i.buy = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.buz = zext i32 %i.buy to i64
  %i.bva = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.buz
  %i.bvb = zext i32 %i.bux to i64                 ; 2 uses
  %i.bvc = getelementptr inbounds nuw [2 x i8], ptr %i.bva, i64 %i.bvb ; 2 uses
  %i.bvd = load i16, ptr %i.bvc, align 2, !tbaa !23 ; 3 uses
  %i.bve = zext i16 %i.bvd to i32
  %i.bvf = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bvg = lshr i32 %i.bvf, 11
  %i.bvh = mul i32 %i.bvg, %i.bve                 ; 2 uses
  %i.bvi = zext i32 %i.bvh to i64
  %i.bvj = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bvk = add i64 %i.bvj, %i.bvi
  store i64 %i.bvk, ptr %i.ff, align 8, !tbaa !75
  %i.bvl = sub i32 %i.bvf, %i.bvh                 ; 3 uses
  %i.bvm = lshr i16 %i.bvd, 5
  %i.bvn = sub nuw i16 %i.bvd, %i.bvm
  store i32 %i.bvl, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.bvn, ptr %i.bvc, align 2, !tbaa !23
  %i.bvo = icmp ult i32 %i.bvl, 16777216
  br i1 %i.bvo, label %bb.hg, label %RangeEnc_EncodeBit.exit281

bb.hg:                                            ; preds = %bb.hf
  %i.bvp = shl nuw i32 %i.bvl, 8
  store i32 %i.bvp, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit281

RangeEnc_EncodeBit.exit281:                       ; preds = %bb.hf, %bb.hg
  %i.bvq = icmp ult i32 %.0355, 4
  %i.bvr = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bvs = zext i32 %i.bvr to i64                 ; 2 uses
  %i.bvt = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.bvs ; 3 uses
  %i.bvu = load i16, ptr %i.bvt, align 2, !tbaa !23 ; 4 uses
  %i.bvv = zext i16 %i.bvu to i32                 ; 2 uses
  %i.bvw = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bvx = lshr i32 %i.bvw, 11
  %i.bvy = mul i32 %i.bvx, %i.bvv                 ; 5 uses
  br i1 %i.bvq, label %bb.hh, label %bb.id

bb.hh:                                            ; preds = %RangeEnc_EncodeBit.exit281
  %i.bvz = zext i32 %i.bvy to i64
  %i.bwa = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bwb = add i64 %i.bwa, %i.bvz
  store i64 %i.bwb, ptr %i.ff, align 8, !tbaa !75
  %i.bwc = sub i32 %i.bvw, %i.bvy                 ; 3 uses
  %i.bwd = lshr i16 %i.bvu, 5
  %i.bwe = sub nuw i16 %i.bvu, %i.bwd
  store i32 %i.bwc, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.bwe, ptr %i.bvt, align 2, !tbaa !23
  %i.bwf = icmp ult i32 %i.bwc, 16777216
  br i1 %i.bwf, label %bb.hi, label %RangeEnc_EncodeBit.exit283

bb.hi:                                            ; preds = %bb.hh
  %i.bwg = shl nuw i32 %i.bwc, 8
  store i32 %i.bwg, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit283

RangeEnc_EncodeBit.exit283:                       ; preds = %bb.hh, %bb.hi
  %i.bwh = icmp eq i32 %.0355, 0
  br i1 %i.bwh, label %bb.hj, label %bb.hp

bb.hj:                                            ; preds = %RangeEnc_EncodeBit.exit283
  %i.bwi = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bwj = zext i32 %i.bwi to i64                 ; 2 uses
  %i.bwk = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bwj ; 2 uses
  %i.bwl = load i16, ptr %i.bwk, align 2, !tbaa !23 ; 2 uses
  %i.bwm = zext i16 %i.bwl to i32                 ; 2 uses
  %i.bwn = load i32, ptr %i.fe, align 8, !tbaa !76
  %i.bwo = lshr i32 %i.bwn, 11
  %i.bwp = mul i32 %i.bwo, %i.bwm                 ; 3 uses
  %i.bwq = sub nsw i32 2048, %i.bwm
  %i.bwr = lshr i32 %i.bwq, 5
  %i.bws = trunc i32 %i.bwr to i16
  %i.bwt = add i16 %i.bwl, %i.bws
  store i16 %i.bwt, ptr %i.bwk, align 2, !tbaa !23
  %i.bwu = icmp ult i32 %i.bwp, 16777216
  br i1 %i.bwu, label %bb.hk, label %RangeEnc_EncodeBit.exit285

bb.hk:                                            ; preds = %bb.hj
  %i.bwv = shl nuw i32 %i.bwp, 8
  store i32 %i.bwv, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  %.pre477 = load i32, ptr %i.ed, align 8, !tbaa !25
  %.pre478 = load i32, ptr %i.fe, align 8, !tbaa !76
  %.pre484 = zext i32 %.pre477 to i64
  br label %RangeEnc_EncodeBit.exit285

RangeEnc_EncodeBit.exit285:                       ; preds = %bb.hj, %bb.hk
  %.pre-phi485 = phi i64 [ %i.bwj, %bb.hj ], [ %.pre484, %bb.hk ]
  %i.bww = phi i32 [ %i.bwp, %bb.hj ], [ %.pre478, %bb.hk ] ; 2 uses
  %i.bwx = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.pre-phi485
  %i.bwy = getelementptr inbounds nuw [2 x i8], ptr %i.bwx, i64 %i.bvb ; 2 uses
  %not..not = icmp eq i32 %.0198357, 1
  %i.bwz = load i16, ptr %i.bwy, align 2, !tbaa !23
  %i.bxa = zext i16 %i.bwz to i32                 ; 5 uses
  %i.bxb = lshr i32 %i.bww, 11
  %i.bxc = mul i32 %i.bxb, %i.bxa                 ; 3 uses
  br i1 %not..not, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %RangeEnc_EncodeBit.exit285
  %i.bxd = sub nsw i32 2048, %i.bxa
  %i.bxe = lshr i32 %i.bxd, 5
  %i.bxf = add nuw nsw i32 %i.bxe, %i.bxa
  br label %bb.hn

bb.hm:                                            ; preds = %RangeEnc_EncodeBit.exit285
  %i.bxg = zext i32 %i.bxc to i64
  %i.bxh = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bxi = add i64 %i.bxh, %i.bxg
  store i64 %i.bxi, ptr %i.ff, align 8, !tbaa !75
  %i.bxj = sub i32 %i.bww, %i.bxc
  %i.bxk = lshr i32 %i.bxa, 5
  %i.bxl = sub nsw i32 %i.bxa, %i.bxk
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.sink.i = phi i32 [ %i.bxc, %bb.hl ], [ %i.bxj, %bb.hm ] ; 3 uses
  %.0.i286 = phi i32 [ %i.bxf, %bb.hl ], [ %i.bxl, %bb.hm ]
  store i32 %.sink.i, ptr %i.fe, align 8, !tbaa !76
  %i.bxm = trunc i32 %.0.i286 to i16
  store i16 %i.bxm, ptr %i.bwy, align 2, !tbaa !23
  %i.bxn = icmp ult i32 %.sink.i, 16777216
  br i1 %i.bxn, label %bb.ho, label %RangeEnc_EncodeBit.exit287

bb.ho:                                            ; preds = %bb.hn
  %i.bxo = shl nuw i32 %.sink.i, 8
  store i32 %i.bxo, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit287

bb.hp:                                            ; preds = %RangeEnc_EncodeBit.exit283
  %i.bxp = zext nneg i32 %.0355 to i64
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.bxp
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !4
  %i.bxs = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bxt = zext i32 %i.bxs to i64
  %i.bxu = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bxt ; 2 uses
  %i.bxv = load i16, ptr %i.bxu, align 2, !tbaa !23 ; 3 uses
  %i.bxw = zext i16 %i.bxv to i32
  %i.bxx = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bxy = lshr i32 %i.bxx, 11
  %i.bxz = mul i32 %i.bxy, %i.bxw                 ; 2 uses
  %i.bya = zext i32 %i.bxz to i64
  %i.byb = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.byc = add i64 %i.byb, %i.bya
  store i64 %i.byc, ptr %i.ff, align 8, !tbaa !75
  %i.byd = sub i32 %i.bxx, %i.bxz                 ; 3 uses
  %i.bye = lshr i16 %i.bxv, 5
  %i.byf = sub nuw i16 %i.bxv, %i.bye
  store i32 %i.byd, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.byf, ptr %i.bxu, align 2, !tbaa !23
  %i.byg = icmp ult i32 %i.byd, 16777216
  br i1 %i.byg, label %bb.hq, label %RangeEnc_EncodeBit.exit290

bb.hq:                                            ; preds = %bb.hp
  %i.byh = shl nuw i32 %i.byd, 8
  store i32 %i.byh, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit290

RangeEnc_EncodeBit.exit290:                       ; preds = %bb.hp, %bb.hq
  %i.byi = icmp eq i32 %.0355, 1
  %i.byj = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.byk = zext i32 %i.byj to i64                 ; 2 uses
  %i.byl = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.byk ; 3 uses
  %i.bym = load i16, ptr %i.byl, align 2, !tbaa !23 ; 4 uses
  %i.byn = zext i16 %i.bym to i32                 ; 2 uses
  %i.byo = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.byp = lshr i32 %i.byo, 11
  %i.byq = mul i32 %i.byp, %i.byn                 ; 5 uses
  br i1 %i.byi, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %RangeEnc_EncodeBit.exit290
  %i.byr = sub nsw i32 2048, %i.byn
  %i.bys = lshr i32 %i.byr, 5
  store i32 %i.byq, ptr %i.fe, align 8, !tbaa !76
  %i.byt = trunc i32 %i.bys to i16
  %i.byu = add i16 %i.bym, %i.byt
  store i16 %i.byu, ptr %i.byl, align 2, !tbaa !23
  %i.byv = icmp ult i32 %i.byq, 16777216
  br i1 %i.byv, label %bb.hs, label %RangeEnc_EncodeBit.exit293

bb.hs:                                            ; preds = %bb.hr
  %i.byw = shl nuw i32 %i.byq, 8
  store i32 %i.byw, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit293

bb.ht:                                            ; preds = %RangeEnc_EncodeBit.exit290
  %i.byx = zext i32 %i.byq to i64
  %i.byy = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.byz = add i64 %i.byy, %i.byx
  store i64 %i.byz, ptr %i.ff, align 8, !tbaa !75
  %i.bza = sub i32 %i.byo, %i.byq                 ; 3 uses
  %i.bzb = lshr i16 %i.bym, 5
  %i.bzc = sub nuw i16 %i.bym, %i.bzb
  store i16 %i.bzc, ptr %i.byl, align 2, !tbaa !23
  %i.bzd = icmp ult i32 %i.bza, 16777216
  br i1 %i.bzd, label %bb.hu, label %RangeEnc_EncodeBit.exit296

bb.hu:                                            ; preds = %bb.ht
  %i.bze = shl nuw i32 %i.bza, 8
  store i32 %i.bze, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  %.pre475 = load i32, ptr %i.ed, align 8, !tbaa !25
  %.pre476 = load i32, ptr %i.fe, align 8, !tbaa !76
  %.pre482 = zext i32 %.pre475 to i64
  br label %RangeEnc_EncodeBit.exit296

RangeEnc_EncodeBit.exit296:                       ; preds = %bb.ht, %bb.hu
  %.pre-phi483 = phi i64 [ %i.byk, %bb.ht ], [ %.pre482, %bb.hu ]
  %i.bzf = phi i32 [ %i.bza, %bb.ht ], [ %.pre476, %bb.hu ] ; 2 uses
  %i.bzg = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %.pre-phi483 ; 2 uses
  %i.bzh = load i16, ptr %i.bzg, align 2, !tbaa !23
  %i.bzi = zext i16 %i.bzh to i32                 ; 5 uses
  %i.bzj = lshr i32 %i.bzf, 11
  %i.bzk = mul i32 %i.bzj, %i.bzi                 ; 3 uses
  %i.bzl = icmp eq i32 %.0355, 2
  br i1 %i.bzl, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %RangeEnc_EncodeBit.exit296
  %i.bzm = sub nsw i32 2048, %i.bzi
  %i.bzn = lshr i32 %i.bzm, 5
  %i.bzo = add nuw nsw i32 %i.bzn, %i.bzi
  br label %bb.hx

bb.hw:                                            ; preds = %RangeEnc_EncodeBit.exit296
  %i.bzp = zext i32 %i.bzk to i64
  %i.bzq = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bzr = add i64 %i.bzq, %i.bzp
  store i64 %i.bzr, ptr %i.ff, align 8, !tbaa !75
  %i.bzs = sub i32 %i.bzf, %i.bzk
  %i.bzt = lshr i32 %i.bzi, 5
  %i.bzu = sub nsw i32 %i.bzi, %i.bzt
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.sink.i297 = phi i32 [ %i.bzk, %bb.hv ], [ %i.bzs, %bb.hw ] ; 3 uses
  %.0.i298 = phi i32 [ %i.bzo, %bb.hv ], [ %i.bzu, %bb.hw ]
  store i32 %.sink.i297, ptr %i.fe, align 8, !tbaa !76
  %i.bzv = trunc i32 %.0.i298 to i16
  store i16 %i.bzv, ptr %i.bzg, align 2, !tbaa !23
  %i.bzw = icmp ult i32 %.sink.i297, 16777216
  br i1 %i.bzw, label %bb.hy, label %RangeEnc_EncodeBit.exit299

bb.hy:                                            ; preds = %bb.hx
  %i.bzx = shl nuw i32 %.sink.i297, 8
  store i32 %i.bzx, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit299

RangeEnc_EncodeBit.exit299:                       ; preds = %bb.hx, %bb.hy
  %i.bzy = icmp eq i32 %.0355, 3
  br i1 %i.bzy, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %RangeEnc_EncodeBit.exit299
  %i.bzz = load i32, ptr %i.dt, align 8, !tbaa !4
  store i32 %i.bzz, ptr %i.du, align 4, !tbaa !4
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %RangeEnc_EncodeBit.exit299
  %i.caa = load i32, ptr %i.ds, align 4, !tbaa !4
  store i32 %i.caa, ptr %i.dt, align 8, !tbaa !4
  br label %RangeEnc_EncodeBit.exit293

RangeEnc_EncodeBit.exit293:                       ; preds = %bb.hs, %bb.hr, %bb.ia
  %i.cab = load i32, ptr %i.dr, align 8, !tbaa !4
  store i32 %i.cab, ptr %i.ds, align 4, !tbaa !4
  store i32 %i.bxr, ptr %i.dr, align 8, !tbaa !4
  br label %RangeEnc_EncodeBit.exit287

RangeEnc_EncodeBit.exit287:                       ; preds = %bb.ho, %bb.hn, %RangeEnc_EncodeBit.exit293
  br i1 %i.buw, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %RangeEnc_EncodeBit.exit287
  %i.cac = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.cad = zext i32 %i.cac to i64
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr @kShortRepNextStates, i64 %i.cad
  %i.caf = load i32, ptr %i.cae, align 4, !tbaa !4
  store i32 %i.caf, ptr %i.ed, align 8, !tbaa !25
  br label %bb.kh

bb.ic:                                            ; preds = %RangeEnc_EncodeBit.exit287
  %i.cag = add i32 %.0198357, -2
  %i.cah = load i32, ptr %i.di, align 8, !tbaa !56
  %.not216 = icmp eq i32 %i.cah, 0
  %i.cai = zext i1 %.not216 to i32
  tail call fastcc void @LenEnc_Encode2(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fe, i32 noundef %i.cag, i32 noundef %i.bux, i32 noundef %i.cai, ptr noundef nonnull %i.ei)
  %i.caj = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.cak = zext i32 %i.caj to i64
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr @kRepNextStates, i64 %i.cak
  %i.cam = load i32, ptr %i.cal, align 4, !tbaa !4
  store i32 %i.cam, ptr %i.ed, align 8, !tbaa !25
  br label %bb.kh

bb.id:                                            ; preds = %RangeEnc_EncodeBit.exit281
  %i.can = sub nsw i32 2048, %i.bvv
  %i.cao = lshr i32 %i.can, 5
end_hunk_0
