Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4hc?download=true
inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_optimal:bb.a
  %i.bfa = ptrtoint ptr %i.bey to i64
  %i.bfb = ptrtoint ptr %i.bez to i64
  %i.bfc = sub i64 %i.bfa, %i.bfb
  %i.bfd = load i32, ptr %i.yr, align 8, !tbaa !26
  %i.bfe = zext i32 %i.bfd to i64                 ; 2 uses
  %i.bff = add i64 %i.bfc, %i.bfe                 ; 2 uses
  %.val955 = load i32, ptr %i.yt, align 1, !tbaa !28
  %i.bfg = mul i32 %.val955, -1640531535
  %i.bfh = lshr i32 %i.bfg, 17
  %i.bfi = zext nneg i32 %i.bfh to i64
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bfi
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !29 ; 2 uses
  %i.bfl = add i32 %i.bfk, %i.aqt
  %i.bfm = trunc i64 %i.bff to i32
  %i.bfn = sub i32 %i.bfl, %i.bfm                 ; 2 uses
  %i.bfo = sub i32 %i.aqq, %i.bfn                 ; 2 uses
  %i.bfp = icmp ult i32 %i.bfo, 65536
  br i1 %i.bfp, label %.lr.ph1909, label %LZ4HC_InsertAndGetWiderMatch.exit.i

.lr.ph1909:                                       ; preds = %bb.ju
  %i.bfq = sub nsw i64 0, %i.bfe
  %i.bfr = getelementptr inbounds i8, ptr %i.bez, i64 %i.bfq
  br label %bb.jv

bb.jv:                                            ; preds = %bb.kj, %.lr.ph1909
  %.in2752 = phi i32 [ %.1404.i.i, %.lr.ph1909 ], [ %i.bft, %bb.kj ]
  %.16397.i.i19032750 = phi i32 [ %i.bfn, %.lr.ph1909 ], [ %i.bhr, %bb.kj ]
  %.19367.i.i19042749 = phi i32 [ %.18366.i.i, %.lr.ph1909 ], [ %.21369.i.i, %bb.kj ] ; 2 uses
  %.0315.i.i19062748 = phi i32 [ %i.bfk, %.lr.ph1909 ], [ %i.bhu, %bb.kj ] ; 3 uses
  %.19.i.i19072747 = phi i32 [ %.18.i.i, %.lr.ph1909 ], [ %.21.i.i, %bb.kj ] ; 3 uses
  %i.bfs = phi i32 [ %i.bfo, %.lr.ph1909 ], [ %i.bhs, %bb.kj ]
  %i.bft = add nsw i32 %.in2752, -1               ; 2 uses
  %i.bfu = zext i32 %.0315.i.i19062748 to i64     ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %i.bfu ; 3 uses
  %.val946 = load i32, ptr %i.bfv, align 1, !tbaa !28
  %i.bfw = icmp eq i32 %.val946, %.val947
  br i1 %i.bfw, label %bb.jw, label %bb.kj

bb.jw:                                            ; preds = %bb.jv
  %i.bfx = sub i64 %i.bff, %i.bfu
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.bfx ; 2 uses
  %i.bfz = icmp ugt ptr %i.bfy, %i.l
  %spec.select457.i.i = select i1 %i.bfz, ptr %i.l, ptr %i.bfy ; 4 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfv, i64 4 ; 2 uses
  %i.bgb = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -7 ; 3 uses
  %i.bgc = icmp ult ptr %i.aso, %i.bgb
  br i1 %i.bgc, label %bb.jx, label %bb.jz, !prof !31

bb.jx:                                            ; preds = %bb.jw
  %.val1002 = load i64, ptr %i.bga, align 1, !tbaa !34 ; 2 uses
  %.val1001 = load i64, ptr %i.aso, align 1, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val1002, %.val1001
  br i1 %.not.i.i.i, label %.thread1549, label %bb.jy

.thread1549:                                      ; preds = %bb.jx
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfv, i64 12
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.bge = xor i64 %.val1001, %.val1002
  %i.bgf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bge, i1 true)
  %i.bgg = trunc nuw nsw i64 %i.bgf to i32
  %i.bgh = lshr i32 %i.bgg, 3
  br label %LZ4_count.exit.i.i

bb.jz:                                            ; preds = %.thread1549, %bb.jw
  %.150.i.i.i = phi ptr [ %i.asq, %.thread1549 ], [ %i.aso, %bb.jw ] ; 3 uses
  %.145.i.i.i = phi ptr [ %i.bgd, %.thread1549 ], [ %i.bga, %bb.jw ] ; 2 uses
  %i.bgi = icmp ult ptr %.150.i.i.i, %i.bgb
  br i1 %i.bgi, label %.lr.ph1898, label %._crit_edge1899, !prof !35

.lr.ph1898:                                       ; preds = %bb.jz, %bb.ka
  %.246.i.i.i1896 = phi ptr [ %i.bgr, %bb.ka ], [ %.145.i.i.i, %bb.jz ] ; 2 uses
  %.251.i.i.i1895 = phi ptr [ %i.bgq, %bb.ka ], [ %.150.i.i.i, %bb.jz ] ; 3 uses
  %.246.i.i.i.val1004 = load i64, ptr %.246.i.i.i1896, align 1, !tbaa !34 ; 2 uses
  %.251.i.i.i.val1003 = load i64, ptr %.251.i.i.i1895, align 1, !tbaa !34 ; 2 uses
  %.not59.i.i.i = icmp eq i64 %.246.i.i.i.val1004, %.251.i.i.i.val1003
  br i1 %.not59.i.i.i, label %bb.ka, label %.thread1553

.thread1553:                                      ; preds = %.lr.ph1898
  %i.bgj = xor i64 %.251.i.i.i.val1003, %.246.i.i.i.val1004
  %i.bgk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bgj, i1 true)
  %i.bgl = lshr i64 %i.bgk, 3
  %i.bgm = getelementptr inbounds nuw i8, ptr %.251.i.i.i1895, i64 %i.bgl
  %i.bgn = ptrtoint ptr %i.bgm to i64
  %i.bgo = sub i64 %i.bgn, %i.asr
  %i.bgp = trunc i64 %i.bgo to i32
  br label %LZ4_count.exit.i.i

bb.ka:                                            ; preds = %.lr.ph1898
  %i.bgq = getelementptr inbounds nuw i8, ptr %.251.i.i.i1895, i64 8 ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.246.i.i.i1896, i64 8 ; 2 uses
  %i.bgs = icmp ult ptr %i.bgq, %i.bgb
  br i1 %i.bgs, label %.lr.ph1898, label %._crit_edge1899, !prof !36

._crit_edge1899:                                  ; preds = %bb.ka, %bb.jz
  %.251.i.i.i.lcssa = phi ptr [ %.150.i.i.i, %bb.jz ], [ %i.bgq, %bb.ka ] ; 5 uses
  %.246.i.i.i.lcssa = phi ptr [ %.145.i.i.i, %bb.jz ], [ %i.bgr, %bb.ka ] ; 4 uses
  %i.bgt = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -3
  %i.bgu = icmp ult ptr %.251.i.i.i.lcssa, %i.bgt
  br i1 %i.bgu, label %bb.kb, label %bb.kd

bb.kb:                                            ; preds = %._crit_edge1899
  %.246.i.i.i.val = load i32, ptr %.246.i.i.i.lcssa, align 1, !tbaa !28
  %.251.i.i.i.val = load i32, ptr %.251.i.i.i.lcssa, align 1, !tbaa !28
  %i.bgv = icmp eq i32 %.246.i.i.i.val, %.251.i.i.i.val
  br i1 %i.bgv, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.bgw = getelementptr inbounds nuw i8, ptr %.251.i.i.i.lcssa, i64 4
  %i.bgx = getelementptr inbounds nuw i8, ptr %.246.i.i.i.lcssa, i64 4
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb, %._crit_edge1899
  %.453.i.i.i = phi ptr [ %i.bgw, %bb.kc ], [ %.251.i.i.i.lcssa, %bb.kb ], [ %.251.i.i.i.lcssa, %._crit_edge1899 ] ; 5 uses
  %.448.i.i.i = phi ptr [ %i.bgx, %bb.kc ], [ %.246.i.i.i.lcssa, %bb.kb ], [ %.246.i.i.i.lcssa, %._crit_edge1899 ] ; 4 uses
  %i.bgy = getelementptr inbounds i8, ptr %spec.select457.i.i, i64 -1
  %i.bgz = icmp ult ptr %.453.i.i.i, %i.bgy
  br i1 %i.bgz, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %.448.i.i.i.val = load i16, ptr %.448.i.i.i, align 1, !tbaa !38
  %.453.i.i.i.val = load i16, ptr %.453.i.i.i, align 1, !tbaa !38
  %i.bha = icmp eq i16 %.448.i.i.i.val, %.453.i.i.i.val
  br i1 %i.bha, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.bhb = getelementptr inbounds nuw i8, ptr %.453.i.i.i, i64 2
  %i.bhc = getelementptr inbounds nuw i8, ptr %.448.i.i.i, i64 2
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke, %bb.kd
  %.554.i.i.i = phi ptr [ %i.bhb, %bb.kf ], [ %.453.i.i.i, %bb.ke ], [ %.453.i.i.i, %bb.kd ] ; 4 uses
  %.5.i.i.i = phi ptr [ %i.bhc, %bb.kf ], [ %.448.i.i.i, %bb.ke ], [ %.448.i.i.i, %bb.kd ]
  %i.bhd = icmp ult ptr %.554.i.i.i, %spec.select457.i.i
  br i1 %i.bhd, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bhe = load i8, ptr %.5.i.i.i, align 1, !tbaa !39
  %i.bhf = load i8, ptr %.554.i.i.i, align 1, !tbaa !39
  %i.bhg = icmp eq i8 %i.bhe, %i.bhf
  %spec.select.i.i.i.idx = zext i1 %i.bhg to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %.554.i.i.i, i64 %spec.select.i.i.i.idx
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.6.i.i.i = phi ptr [ %.554.i.i.i, %bb.kg ], [ %spec.select.i.i.i, %bb.kh ]
  %i.bhh = ptrtoint ptr %.6.i.i.i to i64
  %i.bhi = sub i64 %i.bhh, %i.asr
  %i.bhj = trunc i64 %i.bhi to i32
  br label %LZ4_count.exit.i.i

LZ4_count.exit.i.i:                               ; preds = %.thread1553, %bb.jy, %bb.ki
  %.4.i.i.i = phi i32 [ %i.bgp, %.thread1553 ], [ %i.bhj, %bb.ki ], [ %i.bgh, %bb.jy ]
  %i.bhk = add nsw i32 %.4.i.i.i, 4               ; 2 uses
  %i.bhl = icmp sgt i32 %i.bhk, %.19.i.i19072747
  %.20368.i.i = select i1 %i.bhl, i32 %i.bfs, i32 %.19367.i.i19042749
  %.20.i.i = tail call i32 @llvm.smax.i32(i32 %i.bhk, i32 %.19.i.i19072747)
  br label %bb.kj

bb.kj:                                            ; preds = %LZ4_count.exit.i.i, %bb.jv
  %.21369.i.i = phi i32 [ %.20368.i.i, %LZ4_count.exit.i.i ], [ %.19367.i.i19042749, %bb.jv ] ; 2 uses
  %.21.i.i = phi i32 [ %.20.i.i, %LZ4_count.exit.i.i ], [ %.19.i.i19072747, %bb.jv ] ; 2 uses
  %i.bhm = and i32 %.0315.i.i19062748, 65535
  %i.bhn = zext nneg i32 %i.bhm to i64
  %i.bho = getelementptr inbounds nuw [2 x i8], ptr %i.ys, i64 %i.bhn
  %i.bhp = load i16, ptr %i.bho, align 2, !tbaa !40
  %i.bhq = zext i16 %i.bhp to i32                 ; 2 uses
  %i.bhr = sub i32 %.16397.i.i19032750, %i.bhq    ; 2 uses
  %i.bhs = sub i32 %i.aqq, %i.bhr                 ; 2 uses
  %i.bht = icmp ugt i32 %i.bhs, 65535
  %i.bhu = sub i32 %.0315.i.i19062748, %i.bhq
  %.not442.i.i = icmp eq i32 %i.bft, 0
  %or.cond2755 = select i1 %i.bht, i1 true, i1 %.not442.i.i
  br i1 %or.cond2755, label %LZ4HC_InsertAndGetWiderMatch.exit.i, label %bb.jv, !llvm.loop !5

LZ4HC_InsertAndGetWiderMatch.exit.i:              ; preds = %bb.kj, %bb.ju, %.thread1541
  %.22370.i.i = phi i32 [ %.18366.i.i, %.thread1541 ], [ %.18366.i.i, %bb.ju ], [ %.21369.i.i, %bb.kj ]
  %.22.i.i = phi i32 [ %.18.i.i, %.thread1541 ], [ %.18.i.i, %bb.ju ], [ %.21.i.i, %bb.kj ] ; 2 uses
  %.not.i448 = icmp slt i32 %i.aqm, %.22.i.i
  br i1 %.not.i448, label %LZ4HC_FindLongerMatch.exit682, label %.loopexit

LZ4HC_FindLongerMatch.exit682:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i466
  %.22370.i.i.sink = phi i32 [ %.22370.i.i467, %LZ4HC_InsertAndGetWiderMatch.exit.i466 ], [ %.22370.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %.22.i.i.sink2520 = phi i32 [ %.22.i.i469, %LZ4HC_InsertAndGetWiderMatch.exit.i466 ], [ %.22.i.i, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 2 uses
  %.sroa.2313.0.insert.ext.i.i = zext nneg i32 %.22.i.i.sink2520 to i64
  %i.bhv = add nsw i32 %.22.i.i.sink2520, -19
  %i.bhw = icmp ult i32 %i.bhv, 18
  %or.cond.i449 = and i1 %.not.i.i755, %i.bhw
  %i.bhx = shl nuw nsw i64 %.sroa.2313.0.insert.ext.i.i, 32
  %.sroa.03.sroa.4.0.insert.shift.i = select i1 %or.cond.i449, i64 77309411328, i64 %i.bhx ; 5 uses
  %.sroa.0104.4.extract.shift = lshr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32 ; 3 uses
  %.not411 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 0
  br i1 %.not411, label %.loopexit, label %bb.kk

bb.kk:                                            ; preds = %LZ4HC_FindLongerMatch.exit682
  %.sroa.0104.4.extract.trunc = trunc nuw nsw i64 %.sroa.0104.4.extract.shift to i32 ; 2 uses
  %i.bhy = lshr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32
  %i.bhz = icmp samesign ugt i64 %i.bhy, %spec.store.select
  %i.bia = trunc nuw nsw i64 %indvars.iv2148 to i32 ; 4 uses
  %i.bib = add nsw i32 %i.bia, %.sroa.0104.4.extract.trunc
  %11 = icmp sgt i32 %i.bib, 4095
  %or.cond = select i1 %i.bhz, i1 true, i1 %11
  br i1 %or.cond, label %bb.lj, label %LZ4HC_literalsPrice.exit920

LZ4HC_literalsPrice.exit920:                      ; preds = %bb.kk
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2148 ; 3 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 12
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !70 ; 22 uses
  %i.bif = icmp sgt i32 %i.bie, 14                ; 3 uses
  %i.big = add nsw i32 %i.bie, -15
  %i.bih = udiv i32 %i.big, 255
  %i.bii = add nuw nsw i32 %i.bie, 1
  %i.bij = add nuw nsw i32 %i.bii, %i.bih         ; 3 uses
  %i.bik = sext i32 %i.bie to i64
  %i.bil = load i32, ptr %i.bic, align 4, !tbaa !71 ; 3 uses
  %spec.select1998 = select i1 %i.bif, i32 %i.bij, i32 %i.bie
  %i.bim = sub nsw i32 %i.bil, %spec.select1998   ; 3 uses
  %i.bin = add i32 %i.bie, 1                      ; 2 uses
  %i.bio = icmp sgt i32 %i.bie, 13
  br i1 %i.bio, label %bb.kl, label %LZ4HC_literalsPrice.exit918

.lr.ph1920:                                       ; preds = %.preheader1675
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bic, i64 8
  %.pre = load i32, ptr %i.bip, align 4, !tbaa !68
  %i.biq = icmp eq i32 %.pre, 1                   ; 2 uses
  %i.bir = icmp sgt i64 %indvars.iv2148, %i.bik   ; 2 uses
  %i.bis = sub nsw i32 %i.bia, %i.bie
  %i.bit = zext nneg i32 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bit ; 2 uses
  %.not2883 = icmp eq i64 %.sroa.03.sroa.4.0.insert.shift.i, 17179869184
  br i1 %.not2883, label %.preheader.loopexit.peel.begin, label %.lr.ph1920.split

.lr.ph1920.split:                                 ; preds = %.lr.ph1920
  %i.biv = add i32 %.03751925, 3
  %spec.select2521 = select i1 %i.bif, i32 %i.bij, i32 %i.bie
  %i.biw = add nsw i32 %spec.select2521, 3        ; 2 uses
  %invariant.op3005 = add i32 1, %i.biw
  %i.bix = add nsw i64 %.sroa.0104.4.extract.shift, -1
  br label %bb.kz

bb.kl:                                            ; preds = %LZ4HC_literalsPrice.exit920
  %i.biy = add nsw i32 %i.bie, -14
  %i.biz = udiv i32 %i.biy, 255
  %i.bja = add nuw i32 %i.bie, 2
  %i.bjb = add nuw nsw i32 %i.bja, %i.biz
  br label %LZ4HC_literalsPrice.exit918

LZ4HC_literalsPrice.exit918:                      ; preds = %LZ4HC_literalsPrice.exit920, %bb.kl
  %.0.i917 = phi i32 [ %i.bjb, %bb.kl ], [ %i.bin, %LZ4HC_literalsPrice.exit920 ]
  %i.bjc = add nsw i32 %.0.i917, %i.bim           ; 2 uses
  %i.bjd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2148 ; 4 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16 ; 2 uses
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !71
  %i.bjg = icmp slt i32 %i.bjc, %i.bjf
  br i1 %i.bjg, label %bb.km, label %LZ4HC_literalsPrice.exit920.1

bb.km:                                            ; preds = %LZ4HC_literalsPrice.exit918
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjd, i64 24
  store i32 1, ptr %i.bjh, align 4, !tbaa !68
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjd, i64 20
  store i32 0, ptr %i.bji, align 4, !tbaa !69
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjd, i64 28
  store i32 %i.bin, ptr %i.bjj, align 4, !tbaa !70
  store i32 %i.bjc, ptr %i.bje, align 4, !tbaa !71
  br label %LZ4HC_literalsPrice.exit920.1

LZ4HC_literalsPrice.exit920.1:                    ; preds = %bb.km, %LZ4HC_literalsPrice.exit918
  %i.bjk = add i32 %i.bie, 2                      ; 2 uses
  %i.bjl = icmp sgt i32 %i.bie, 12
  br i1 %i.bjl, label %bb.kn, label %LZ4HC_literalsPrice.exit918.1

bb.kn:                                            ; preds = %LZ4HC_literalsPrice.exit920.1
  %i.bjm = add nsw i32 %i.bie, -13
  %i.bjn = udiv i32 %i.bjm, 255
  %i.bjo = add nuw i32 %i.bie, 3
  %i.bjp = add nuw nsw i32 %i.bjo, %i.bjn
  br label %LZ4HC_literalsPrice.exit918.1

LZ4HC_literalsPrice.exit918.1:                    ; preds = %bb.kn, %LZ4HC_literalsPrice.exit920.1
  %.0.i917.1 = phi i32 [ %i.bjp, %bb.kn ], [ %i.bjk, %LZ4HC_literalsPrice.exit920.1 ]
  %i.bjq = add nsw i32 %.0.i917.1, %i.bim         ; 2 uses
  %i.bjr = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2148 ; 4 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 32 ; 2 uses
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !71
  %i.bju = icmp slt i32 %i.bjq, %i.bjt
  br i1 %i.bju, label %bb.ko, label %LZ4HC_literalsPrice.exit920.2

bb.ko:                                            ; preds = %LZ4HC_literalsPrice.exit918.1
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjr, i64 40
  store i32 1, ptr %i.bjv, align 4, !tbaa !68
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjr, i64 36
  store i32 0, ptr %i.bjw, align 4, !tbaa !69
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjr, i64 44
  store i32 %i.bjk, ptr %i.bjx, align 4, !tbaa !70
  store i32 %i.bjq, ptr %i.bjs, align 4, !tbaa !71
  br label %LZ4HC_literalsPrice.exit920.2

LZ4HC_literalsPrice.exit920.2:                    ; preds = %bb.ko, %LZ4HC_literalsPrice.exit918.1
  %i.bjy = add i32 %i.bie, 3                      ; 2 uses
  %i.bjz = icmp sgt i32 %i.bie, 11
  br i1 %i.bjz, label %bb.kp, label %LZ4HC_literalsPrice.exit918.2

bb.kp:                                            ; preds = %LZ4HC_literalsPrice.exit920.2
  %i.bka = add nsw i32 %i.bie, -12
  %i.bkb = udiv i32 %i.bka, 255
  %i.bkc = add nuw i32 %i.bie, 4
  %i.bkd = add nuw nsw i32 %i.bkc, %i.bkb
  br label %LZ4HC_literalsPrice.exit918.2

LZ4HC_literalsPrice.exit918.2:                    ; preds = %bb.kp, %LZ4HC_literalsPrice.exit920.2
  %.0.i917.2 = phi i32 [ %i.bkd, %bb.kp ], [ %i.bjy, %LZ4HC_literalsPrice.exit920.2 ]
  %i.bke = add nsw i32 %.0.i917.2, %i.bim         ; 2 uses
  %i.bkf = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2148 ; 4 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 48 ; 2 uses
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !71
  %i.bki = icmp slt i32 %i.bke, %i.bkh
  br i1 %i.bki, label %bb.kq, label %.preheader1675

bb.kq:                                            ; preds = %LZ4HC_literalsPrice.exit918.2
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkf, i64 56
  store i32 1, ptr %i.bkj, align 4, !tbaa !68
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkf, i64 52
  store i32 0, ptr %i.bkk, align 4, !tbaa !69
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkf, i64 60
  store i32 %i.bjy, ptr %i.bkl, align 4, !tbaa !70
  store i32 %i.bke, ptr %i.bkg, align 4, !tbaa !71
  br label %.preheader1675

.preheader1675:                                   ; preds = %bb.kq, %LZ4HC_literalsPrice.exit918.2
  %.not4121916 = icmp samesign ult i64 %.sroa.03.sroa.4.0.insert.shift.i, 17179869184
  br i1 %.not4121916, label %.preheader, label %.lr.ph1920

.preheader.loopexit.peel.begin:                   ; preds = %.lr.ph1920, %bb.li
  %i.bkm = phi i64 [ 4, %.lr.ph1920 ], [ %indvars.iv.next2140, %bb.li ] ; 7 uses
  %i.bkn = add nuw nsw i64 %i.bkm, %indvars.iv2148 ; 3 uses
  br i1 %i.biq, label %bb.kt, label %bb.kr

bb.kr:                                            ; preds = %.preheader.loopexit.peel.begin
  %i.bko = icmp samesign ugt i64 %i.bkm, 18
  br i1 %i.bko, label %bb.ks, label %LZ4HC_sequencePrice.exit.peel

bb.ks:                                            ; preds = %bb.kr
  %i.bkp = trunc i64 %i.bkm to i32
  %i.bkq = add i32 %i.bkp, -19
  %i.bkr = udiv i32 %i.bkq, 255
  %i.bks = add nuw nsw i32 %i.bkr, 4
  br label %LZ4HC_sequencePrice.exit.peel

LZ4HC_sequencePrice.exit.peel:                    ; preds = %bb.ks, %bb.kr
  %.0.i926.peel = phi i32 [ %i.bks, %bb.ks ], [ 3, %bb.kr ]
  %i.bkt = add nsw i32 %.0.i926.peel, %i.bil
  br label %bb.kw

bb.kt:                                            ; preds = %.preheader.loopexit.peel.begin
  br i1 %i.bir, label %bb.ku, label %LZ4HC_literalsPrice.exit.i.peel

bb.ku:                                            ; preds = %bb.kt
  %i.bku = load i32, ptr %i.biu, align 4, !tbaa !71
  br label %LZ4HC_literalsPrice.exit.i.peel

LZ4HC_literalsPrice.exit.i.peel:                  ; preds = %bb.ku, %bb.kt
  %i.bkv = phi i32 [ %i.bku, %bb.ku ], [ 0, %bb.kt ]
  %spec.select2521.peel = select i1 %i.bif, i32 %i.bij, i32 %i.bie
  %i.bkw = add nsw i32 %spec.select2521.peel, 3   ; 2 uses
  %i.bkx = icmp samesign ugt i64 %i.bkm, 18
  br i1 %i.bkx, label %bb.kv, label %LZ4HC_sequencePrice.exit929.peel

bb.kv:                                            ; preds = %LZ4HC_literalsPrice.exit.i.peel
  %i.bky = trunc i64 %i.bkm to i32
  %i.bkz = add i32 %i.bky, -19
  %i.bla = udiv i32 %i.bkz, 255
  %i.blb = add nuw nsw i32 %i.bla, 1
  %i.blc = add nsw i32 %i.blb, %i.bkw
  br label %LZ4HC_sequencePrice.exit929.peel

LZ4HC_sequencePrice.exit929.peel:                 ; preds = %bb.kv, %LZ4HC_literalsPrice.exit.i.peel
  %.0.i928.peel = phi i32 [ %i.blc, %bb.kv ], [ %i.bkw, %LZ4HC_literalsPrice.exit.i.peel ]
  %i.bld = add nsw i32 %.0.i928.peel, %i.bkv
  br label %bb.kw

bb.kw:                                            ; preds = %LZ4HC_sequencePrice.exit929.peel, %LZ4HC_sequencePrice.exit.peel
  %.0344.peel = phi i32 [ %i.bld, %LZ4HC_sequencePrice.exit929.peel ], [ %i.bkt, %LZ4HC_sequencePrice.exit.peel ] ; 2 uses
  %.0343.peel = phi i32 [ %i.bie, %LZ4HC_sequencePrice.exit929.peel ], [ 0, %LZ4HC_sequencePrice.exit.peel ]
  %i.ble = add nuw nsw i32 %.03751925, 3
  %i.blf = trunc nuw i64 %i.bkn to i32            ; 2 uses
  %i.blg = icmp slt i32 %i.ble, %i.blf
  br i1 %i.blg, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.blh = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bkn
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !71
  %i.blj = sub nsw i32 %i.bli, %10
  %.not413.peel = icmp sgt i32 %.0344.peel, %i.blj
  br i1 %.not413.peel, label %.preheader, label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.blk = icmp eq i64 %i.bkm, %.sroa.0104.4.extract.shift
  %i.bll = tail call i32 @llvm.smax.i32(i32 %.03751925, i32 %i.blf)
  %.2377.peel = select i1 %i.blk, i32 %i.bll, i32 %.03751925
  %i.blm = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bkn ; 4 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
end_hunk_0
