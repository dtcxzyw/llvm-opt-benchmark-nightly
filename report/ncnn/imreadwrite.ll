Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.bgu = icmp slt i32 %i.bgt, %i.bgs
  br i1 %i.bgu, label %.critedge.sink.split.i.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bgv = shl i32 %i.bgm, %i.bgs
  store i32 %i.bgv, ptr %i.aoj, align 8, !tbaa !82
  %i.bgw = sub nuw nsw i32 %i.bgt, %i.bgs         ; 2 uses
  store i32 %i.bgw, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

bb.kf:                                            ; preds = %bb.kc
  %i.bgx = lshr i32 %i.bgm, 16
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.kg ], [ 10, %bb.kf ] ; 5 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bfi, i64 %indvars.iv.i.i.i.i.i.i
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !23
  %i.bha = icmp ult i32 %i.bgx, %i.bgz
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1
  br i1 %i.bha, label %bb.kh, label %bb.kg, !llvm.loop !3

bb.kh:                                            ; preds = %bb.kg
  %i.bhb = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32 ; 5 uses
  %i.bhc = icmp eq i64 %indvars.iv.i.i.i.i.i.i, 17
  %i.bhd = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  br i1 %i.bhc, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bhe = add nsw i32 %i.bhd, -16
  store i32 %i.bhe, ptr %i.aoi, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.bhf = icmp slt i32 %i.bhd, %i.bhb
  br i1 %i.bhf, label %.critedge.sink.split.i.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.bhg = sub nsw i32 32, %i.bhb
  %i.bhh = lshr i32 %i.bgm, %i.bhg
  %notmask.i.i.i.i.i.i = shl nsw i32 -1, %i.bhb
  %i.bhi = xor i32 %notmask.i.i.i.i.i.i, -1
  %i.bhj = and i32 %i.bhh, %i.bhi
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bfj, i64 %indvars.iv.i.i.i.i.i.i
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !23
  %i.bhm = add i32 %i.bhl, %i.bhj                 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i32 %i.bhm, 255
  br i1 %or.cond.i.i.i.i.i.i, label %.critedge.sink.split.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bhn = sub nuw nsw i32 %i.bhd, %i.bhb         ; 2 uses
  store i32 %i.bhn, ptr %i.aoi, align 4, !tbaa !81
  %i.bho = shl i32 %i.bgm, %i.bhb
  store i32 %i.bho, ptr %i.aoj, align 8, !tbaa !82
  %i.bhp = zext nneg i32 %i.bhm to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i: ; preds = %bb.kl, %bb.ke
  %i.bhq = phi i32 [ %i.bhn, %bb.kl ], [ %i.bgw, %bb.ke ] ; 5 uses
  %.pn311.i.i.i.i.i = phi i64 [ %i.bhp, %bb.kl ], [ %i.bgp, %bb.ke ]
  %.1.i.in.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %.pn311.i.i.i.i.i
  %.1.i.in.i.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i.i, align 1, !tbaa !35 ; 2 uses
  %.1.i.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i.i to i32 ; 2 uses
  %i.bhr = and i32 %.1.i.i.i.i.i.i, 15            ; 7 uses
  %i.bhs = lshr i32 %.1.i.i.i.i.i.i, 4            ; 8 uses
  %i.bht = icmp eq i32 %i.bhr, 0
  br i1 %i.bht, label %bb.km, label %bb.kt

bb.km:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bhu = icmp ult i8 %.1.i.in.i.i.i.i.i, -16
  br i1 %i.bhu, label %bb.kn, label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %i.bhv = shl nuw nsw i32 1, %i.bhs
  store i32 %i.bhv, ptr %i.aor, align 4, !tbaa !214
  %.not167.i.i.i.i.i = icmp eq i32 %i.bhs, 0
  br i1 %.not167.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bhw = icmp slt i32 %i.bhq, %i.bhs
  br i1 %i.bhw, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bhx = phi i32 [ %.pre.i.i.i.i.i.i, %bb.kp ], [ %i.bhq, %bb.ko ] ; 2 uses
  %i.bhy = icmp slt i32 %i.bhx, %i.bhs
  br i1 %i.bhy, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bhz = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bia = call i32 @llvm.fshl.i32(i32 %i.bhz, i32 %i.bhz, i32 range(i32 1, 15) %i.bhs) ; 2 uses
  %notmask.i170.i.i.i.i.i = shl nsw i32 -1, %i.bhs ; 2 uses
  %i.bib = xor i32 %notmask.i170.i.i.i.i.i, -1
  %i.bic = and i32 %i.bia, %notmask.i170.i.i.i.i.i
  store i32 %i.bic, ptr %i.aoj, align 8, !tbaa !82
  %i.bid = and i32 %i.bia, %i.bib
  %i.bie = sub nuw nsw i32 %i.bhx, %i.bhs
  store i32 %i.bie, ptr %i.aoi, align 4, !tbaa !81
  %i.bif = add nsw i32 %i.bid, -1
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kr, %bb.kq
  %.0.i.i.i.i.i.i = phi i32 [ %i.bif, %bb.kr ], [ -1, %bb.kq ]
  %i.big = load i32, ptr %i.aor, align 4, !tbaa !214
  %i.bih = add i32 %i.big, %.0.i.i.i.i.i.i
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.ks:                                            ; preds = %bb.km
  %i.bii = add nsw i32 %.0120.i.i.i.i.i, 16
  br label %bb.kx

bb.kt:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bij = add nsw i32 %i.bhs, %.0120.i.i.i.i.i   ; 2 uses
  %i.bik = add nsw i32 %i.bij, 1
  %i.bil = sext i32 %i.bij to i64
  %i.bim = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.bil
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !35
  %i.bio = icmp slt i32 %i.bhq, %i.bhr
  br i1 %i.bio, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i173.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bip = phi i32 [ %.pre.i173.i.i.i.i.i, %bb.ku ], [ %i.bhq, %bb.kt ] ; 3 uses
  %i.biq = icmp slt i32 %i.bip, %i.bhr
  br i1 %i.biq, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bir = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 3 uses
  %i.bis = call i32 @llvm.fshl.i32(i32 %i.bir, i32 %i.bir, i32 range(i32 1, 16) %i.bhr) ; 2 uses
  %i.bit = zext nneg i32 %i.bhr to i64
  %notmask.i171.i.i.i.i.i = shl nsw i32 -1, %i.bhr ; 2 uses
  %i.biu = xor i32 %notmask.i171.i.i.i.i.i, -1
  %i.biv = and i32 %i.bis, %notmask.i171.i.i.i.i.i
  store i32 %i.biv, ptr %i.aoj, align 8, !tbaa !82
  %i.biw = and i32 %i.bis, %i.biu
  %i.bix = sub nuw nsw i32 %i.bip, %i.bhr         ; 2 uses
  store i32 %i.bix, ptr %i.aoi, align 4, !tbaa !81
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bit
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !23
  %.inv.i.i.i.i.i.i = icmp slt i32 %i.bir, 0
  %i.bja = select i1 %.inv.i.i.i.i.i.i, i32 0, i32 %i.biz
  %i.bjb = add i32 %i.bja, %i.biw
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kw, %bb.kv
  %i.bjc = phi i32 [ %i.bix, %bb.kw ], [ %i.bip, %bb.kv ]
  %.0.i172.i.i.i.i.i = phi i32 [ %i.bjb, %bb.kw ], [ 0, %bb.kv ]
  %i.bjd = shl i32 %.0.i172.i.i.i.i.i, %i.bfe
  %i.bje = trunc i32 %i.bjd to i16
  %i.bjf = zext i8 %i.bin to i64
  %i.bjg = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bjf
  store i16 %i.bje, ptr %i.bjg, align 2, !tbaa !41
  br label %bb.kx

bb.kx:                                            ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, %bb.ks, %bb.jz
  %i.bjh = phi i32 [ %i.bhq, %bb.ks ], [ %i.bjc, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.bga, %bb.jz ]
  %.4124.ph.i.i.i.i.i = phi i32 [ %i.bii, %bb.ks ], [ %i.bik, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.bgb, %bb.jz ] ; 2 uses
  %i.bji = load i32, ptr %i.aoe, align 8, !tbaa !77
  %.not168.i.i.i.i.i = icmp sgt i32 %.4124.ph.i.i.i.i.i, %i.bji
  br i1 %.not168.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.jv, !llvm.loop !164

bb.ky:                                            ; preds = %bb.js
  br i1 %.not165.i.i.i.i.i, label %.preheader226.i.i.i.i.i, label %bb.kz

.preheader226.i.i.i.i.i:                          ; preds = %bb.ky
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1280
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1024
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1540
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1612
  %sext155.i.i.i.i.i = shl i32 65536, %i.bfe
  %i.bjn = ashr exact i32 %sext155.i.i.i.i.i, 16  ; 4 uses
  %i.bjo = sub nsw i32 0, %i.bjn                  ; 2 uses
  %i.bjp = trunc nsw i32 %i.bjn to i16            ; 2 uses
  %.pre.i.i55.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.le

bb.kz:                                            ; preds = %bb.ky
  %i.bjq = add nsw i32 %i.bff, -1
  store i32 %i.bjq, ptr %i.aor, align 4, !tbaa !214
  %i.bjr = load i32, ptr %i.aoe, align 8, !tbaa !77
  %.not162251.i.i.i.i.i = icmp sgt i32 %i.bes, %i.bjr
  br i1 %.not162251.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.kz
  %i.bjs = shl i32 65536, %i.bfe
  %i.bjt = ashr exact i32 %i.bjs, 16              ; 2 uses
  %i.bju = trunc nsw i32 %i.bjt to i16            ; 2 uses
  %i.bjv = sext i32 %i.bes to i64
  %i.bjw = sub i16 0, %i.bju
  br label %bb.la

bb.la:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.bjv, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.bjx = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i.i
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !35
  %i.bjz = zext i8 %i.bjy to i64
  %i.bka = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bjz ; 3 uses
  %i.bkb = load i16, ptr %i.bka, align 2, !tbaa !41
  %.not163.i.i.i.i.i = icmp eq i16 %i.bkb, 0
  br i1 %.not163.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bkc = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bkd = icmp slt i32 %i.bkc, 1
  br i1 %i.bkd, label %bb.lc, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bke = icmp slt i32 %.pr.i.i.i.i.i.i, 1
  br i1 %i.bke, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i: ; preds = %bb.lc, %bb.lb
  %i.bkf = phi i32 [ %.pr.i.i.i.i.i.i, %bb.lc ], [ %i.bkc, %bb.lb ]
  %i.bkg = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bkh = shl i32 %i.bkg, 1
  store i32 %i.bkh, ptr %i.aoj, align 8, !tbaa !82
  %i.bki = add nsw i32 %i.bkf, -1
  store i32 %i.bki, ptr %i.aoi, align 4, !tbaa !81
  %.not164.i.i.i.i.i = icmp sgt i32 %i.bkg, -1
  br i1 %.not164.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i
  %i.bkj = load i16, ptr %i.bka, align 2, !tbaa !41 ; 3 uses
  %i.bkk = sext i16 %i.bkj to i32
  %i.bkl = and i32 %i.bjt, %i.bkk
  %i.bkm = icmp eq i32 %i.bkl, 0
  br i1 %i.bkm, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i: ; preds = %bb.ld
  %i.bkn = icmp sgt i16 %i.bkj, 0
  %.sink.p.i.i.i.i.i = select i1 %i.bkn, i16 %i.bju, i16 %i.bjw
  %.sink.i.i.i.i.i = add i16 %.sink.p.i.i.i.i.i, %i.bkj
  store i16 %.sink.i.i.i.i.i, ptr %i.bka, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i, %bb.ld, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i, %bb.lc, %bb.la
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.bko = load i32, ptr %i.aoe, align 8, !tbaa !77
  %i.bkp = sext i32 %i.bko to i64
  %.not162.not.i.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i.i, %i.bkp
  br i1 %.not162.not.i.i.i.i.i, label %bb.la, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, !llvm.loop !165

bb.le:                                            ; preds = %.loopexit225.i.i.i.i.i, %.preheader226.i.i.i.i.i
  %i.bkq = phi i32 [ %i.bob, %.loopexit225.i.i.i.i.i ], [ %.pre.i.i55.i.i.i, %.preheader226.i.i.i.i.i ]
  %.6.i.i.i.i.i = phi i32 [ %.9.i.i.i.i.i, %.loopexit225.i.i.i.i.i ], [ %i.bes, %.preheader226.i.i.i.i.i ] ; 3 uses
  %i.bkr = icmp slt i32 %i.bkq, 16
  br i1 %i.bkr, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.bks = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 5 uses
  %i.bkt = lshr i32 %i.bks, 23
  %i.bku = zext nneg i32 %i.bkt to i64
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bku
  %i.bkw = load i8, ptr %i.bkv, align 1, !tbaa !35 ; 2 uses
  %.not.i175.i.i.i.i.i = icmp eq i8 %i.bkw, -1
  br i1 %.not.i175.i.i.i.i.i, label %bb.lj, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bkx = zext i8 %i.bkw to i64                  ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bjj, i64 %i.bkx
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !35
  %i.bla = zext i8 %i.bkz to i32                  ; 3 uses
  %i.blb = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.blc = icmp slt i32 %i.blb, %i.bla
  br i1 %i.blc, label %.critedge.sink.split.i.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bld = shl i32 %i.bks, %i.bla                 ; 2 uses
  store i32 %i.bld, ptr %i.aoj, align 8, !tbaa !82
  %i.ble = sub nuw nsw i32 %i.blb, %i.bla         ; 2 uses
  store i32 %i.ble, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit181.i.i.i.i.i

bb.lj:                                            ; preds = %bb.lg
  %i.blf = lshr i32 %i.bks, 16
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %bb.lj
  %indvars.iv.i177.i.i.i.i.i = phi i64 [ %indvars.iv.next.i178.i.i.i.i.i, %bb.lk ], [ 10, %bb.lj ] ; 5 uses
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %indvars.iv.i177.i.i.i.i.i
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !23
  %i.bli = icmp ult i32 %i.blf, %i.blh
  %indvars.iv.next.i178.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i177.i.i.i.i.i, 1
  br i1 %i.bli, label %bb.ll, label %bb.lk, !llvm.loop !3

bb.ll:                                            ; preds = %bb.lk
  %i.blj = trunc nuw nsw i64 %indvars.iv.i177.i.i.i.i.i to i32 ; 5 uses
  %i.blk = icmp eq i64 %indvars.iv.i177.i.i.i.i.i, 17
  %i.bll = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  br i1 %i.blk, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.blm = add nsw i32 %i.bll, -16
  store i32 %i.blm, ptr %i.aoi, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.ln:                                            ; preds = %bb.ll
  %i.bln = icmp slt i32 %i.bll, %i.blj
  br i1 %i.bln, label %.critedge.sink.split.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.blo = sub nsw i32 32, %i.blj
  %i.blp = lshr i32 %i.bks, %i.blo
  %notmask.i179.i.i.i.i.i = shl nsw i32 -1, %i.blj
  %i.blq = xor i32 %notmask.i179.i.i.i.i.i, -1
  %i.blr = and i32 %i.blp, %i.blq
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %indvars.iv.i177.i.i.i.i.i
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !23
  %i.blu = add i32 %i.blt, %i.blr                 ; 2 uses
  %or.cond.i180.i.i.i.i.i = icmp ugt i32 %i.blu, 255
  br i1 %or.cond.i180.i.i.i.i.i, label %.critedge.sink.split.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.blv = sub nuw nsw i32 %i.bll, %i.blj         ; 2 uses
  store i32 %i.blv, ptr %i.aoi, align 4, !tbaa !81
  %i.blw = shl i32 %i.bks, %i.blj                 ; 2 uses
  store i32 %i.blw, ptr %i.aoj, align 8, !tbaa !82
  %i.blx = zext nneg i32 %i.blu to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit181.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit181.i.i.i.i.i: ; preds = %bb.lp, %bb.li
  %i.bly = phi i32 [ %i.blw, %bb.lp ], [ %i.bld, %bb.li ]
  %i.blz = phi i32 [ %i.blv, %bb.lp ], [ %i.ble, %bb.li ] ; 6 uses
  %.pn.i.i.i.i.i = phi i64 [ %i.blx, %bb.lp ], [ %i.bkx, %bb.li ]
  %.1.i176.in.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bjk, i64 %.pn.i.i.i.i.i
  %.1.i176.in.i.i.i.i.i = load i8, ptr %.1.i176.in.in.i.i.i.i.i, align 1, !tbaa !35 ; 2 uses
  %.1.i176.i.i.i.i.i = zext i8 %.1.i176.in.i.i.i.i.i to i32 ; 2 uses
  %i.bma = and i32 %.1.i176.i.i.i.i.i, 15
  %i.bmb = lshr i32 %.1.i176.i.i.i.i.i, 4         ; 8 uses
  switch i32 %i.bma, label %.critedge.sink.split.i.i.i [
    i32 0, label %bb.lq
    i32 1, label %bb.lw
  ]

bb.lq:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit181.i.i.i.i.i
  %i.bmc = icmp ult i8 %.1.i176.in.i.i.i.i.i, -16
  br i1 %i.bmc, label %bb.lr, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i

bb.lr:                                            ; preds = %bb.lq
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.bmb     ; 2 uses
  %i.bmd = xor i32 %notmask.i.i.i.i.i, -1         ; 2 uses
  store i32 %i.bmd, ptr %i.aor, align 4, !tbaa !214
  %.not156.i.i.i.i.i = icmp eq i32 %i.bmb, 0
  br i1 %.not156.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bme = icmp slt i32 %i.blz, %i.bmb
  br i1 %i.bme, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i184.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bmf = phi i32 [ %.pre.i184.i.i.i.i.i, %bb.lt ], [ %i.blz, %bb.ls ] ; 3 uses
  %i.bmg = icmp slt i32 %i.bmf, %i.bmb
  br i1 %i.bmg, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bmh = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bmi = call i32 @llvm.fshl.i32(i32 %i.bmh, i32 %i.bmh, i32 range(i32 1, 15) %i.bmb) ; 2 uses
  %i.bmj = and i32 %i.bmi, %notmask.i.i.i.i.i
  store i32 %i.bmj, ptr %i.aoj, align 8, !tbaa !82
  %i.bmk = and i32 %i.bmi, %i.bmd
  %i.bml = sub nuw nsw i32 %i.bmf, %i.bmb         ; 2 uses
  store i32 %i.bml, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i: ; preds = %bb.lv, %bb.lu
  %i.bmm = phi i32 [ %i.bml, %bb.lv ], [ %i.bmf, %bb.lu ]
  %.0.i183.i.i.i.i.i = phi i32 [ %i.bmk, %bb.lv ], [ 0, %bb.lu ]
  %i.bmn = load i32, ptr %i.aor, align 4, !tbaa !214
  %i.bmo = add nsw i32 %i.bmn, %.0.i183.i.i.i.i.i
  store i32 %i.bmo, ptr %i.aor, align 4, !tbaa !214
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i

bb.lw:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit181.i.i.i.i.i
  %i.bmp = icmp slt i32 %i.blz, 1
  br i1 %i.bmp, label %bb.lx, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i

bb.lx:                                            ; preds = %bb.lw
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i188.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  %i.bmq = icmp slt i32 %.pr.i188.i.i.i.i.i, 1
  br i1 %i.bmq, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i, label %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189_crit_edge.i.i.i.i.i

._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189_crit_edge.i.i.i.i.i: ; preds = %bb.lx
  %.pre269.i.i.i.i.i = load i32, ptr %i.aoj, align 8, !tbaa !82
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i: ; preds = %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189_crit_edge.i.i.i.i.i, %bb.lw
  %i.bmr = phi i32 [ %.pre269.i.i.i.i.i, %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189_crit_edge.i.i.i.i.i ], [ %i.bly, %bb.lw ] ; 2 uses
  %i.bms = phi i32 [ %.pr.i188.i.i.i.i.i, %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189_crit_edge.i.i.i.i.i ], [ %i.blz, %bb.lw ]
  %i.bmt = shl i32 %i.bmr, 1
  store i32 %i.bmt, ptr %i.aoj, align 8, !tbaa !82
  %i.bmu = add nsw i32 %i.bms, -1                 ; 2 uses
  store i32 %i.bmu, ptr %i.aoi, align 4, !tbaa !81
  %.not154326.i.i.i.i.i = icmp slt i32 %i.bmr, 0
  %spec.select.i240.i.i.i.i = select i1 %.not154326.i.i.i.i.i, i32 %i.bjn, i32 %i.bjo
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i, %bb.lx, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i, %bb.lr, %bb.lq
  %i.bmv = phi i32 [ %i.bmu, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i ], [ %i.blz, %bb.lq ], [ %i.blz, %bb.lr ], [ %i.bmm, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i ], [ %.pr.i188.i.i.i.i.i, %bb.lx ] ; 2 uses
  %.0115.i.i.i.i.i = phi i32 [ %i.bmb, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i ], [ 15, %bb.lq ], [ 64, %bb.lr ], [ 64, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i ], [ %i.bmb, %bb.lx ]
  %.0.i.i56.i.i.i = phi i32 [ %spec.select.i240.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.i.i.i.i.i ], [ 0, %bb.lq ], [ 0, %bb.lr ], [ 0, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit185.i.i.i.i.i ], [ %i.bjo, %bb.lx ]
  %i.bmw = load i32, ptr %i.aoe, align 8, !tbaa !77 ; 3 uses
  %.not157253.i.i.i.i.i = icmp sgt i32 %.6.i.i.i.i.i, %i.bmw
  br i1 %.not157253.i.i.i.i.i, label %.loopexit225.i.i.i.i.i, label %.lr.ph256.preheader.i.i.i.i.i

.lr.ph256.preheader.i.i.i.i.i:                    ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i
  %i.bmx = sext i32 %.6.i.i.i.i.i to i64
  br label %.lr.ph256.i.i.i.i.i

.lr.ph256.i.i.i.i.i:                              ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i, %.lr.ph256.preheader.i.i.i.i.i
  %i.bmy = phi i32 [ %i.bmw, %.lr.ph256.preheader.i.i.i.i.i ], [ %i.bnx, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i ]
  %i.bmz = phi i32 [ %i.bmv, %.lr.ph256.preheader.i.i.i.i.i ], [ %i.bnw, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i ] ; 4 uses
  %indvars.iv266.i.i.i.i.i = phi i64 [ %i.bmx, %.lr.ph256.preheader.i.i.i.i.i ], [ %indvars.iv.next267.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i ] ; 3 uses
  %.1255.i.i.i.i.i = phi i32 [ %.0115.i.i.i.i.i, %.lr.ph256.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i ] ; 7 uses
  %indvars.iv.next267.i.i.i.i.i = add nsw i64 %indvars.iv266.i.i.i.i.i, 1 ; 3 uses
  %i.bna = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv266.i.i.i.i.i
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !35
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bnc ; 5 uses
  %i.bne = load i16, ptr %i.bnd, align 2, !tbaa !41
  %.not158.i.i.i.i.i = icmp eq i16 %i.bne, 0
  br i1 %.not158.i.i.i.i.i, label %bb.me, label %bb.ly

bb.ly:                                            ; preds = %.lr.ph256.i.i.i.i.i
  %i.bnf = icmp slt i32 %i.bmz, 1
  br i1 %i.bnf, label %bb.lz, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i

bb.lz:                                            ; preds = %bb.ly
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i192.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  %i.bng = icmp slt i32 %.pr.i192.i.i.i.i.i, 1
  br i1 %i.bng, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i: ; preds = %bb.lz, %bb.ly
  %i.bnh = phi i32 [ %.pr.i192.i.i.i.i.i, %bb.lz ], [ %i.bmz, %bb.ly ]
  %i.bni = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bnj = shl i32 %i.bni, 1
  store i32 %i.bnj, ptr %i.aoj, align 8, !tbaa !82
  %i.bnk = add nsw i32 %i.bnh, -1                 ; 5 uses
  store i32 %i.bnk, ptr %i.aoi, align 4, !tbaa !81
  %.not159.i.i.i.i.i = icmp sgt i32 %i.bni, -1
  br i1 %.not159.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i
  %i.bnl = load i16, ptr %i.bnd, align 2, !tbaa !41 ; 4 uses
  %i.bnm = sext i16 %i.bnl to i32
  %i.bnn = and i32 %i.bjn, %i.bnm
  %i.bno = icmp eq i32 %i.bnn, 0
  br i1 %i.bno, label %bb.mb, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.bnp = icmp sgt i16 %i.bnl, 0
  br i1 %i.bnp, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bnq = add i16 %i.bnl, %i.bjp
  store i16 %i.bnq, ptr %i.bnd, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i

bb.md:                                            ; preds = %bb.mb
  %i.bnr = sub i16 %i.bnl, %i.bjp
  store i16 %i.bnr, ptr %i.bnd, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i

bb.me:                                            ; preds = %.lr.ph256.i.i.i.i.i
  %i.bns = icmp eq i32 %.1255.i.i.i.i.i, 0
  br i1 %i.bns, label %.thread222.i.i.i.i.i, label %bb.mf

.thread222.i.i.i.i.i:                             ; preds = %bb.me
  %i.bnt = trunc nsw i64 %indvars.iv.next267.i.i.i.i.i to i32
  %i.bnu = trunc i32 %.0.i.i56.i.i.i to i16
  store i16 %i.bnu, ptr %i.bnd, align 2, !tbaa !41
  br label %.loopexit225.i.i.i.i.i

bb.mf:                                            ; preds = %bb.me
  %i.bnv = add nsw i32 %.1255.i.i.i.i.i, -1
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i: ; preds = %bb.mf, %bb.md, %bb.mc, %bb.ma, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i, %bb.lz
  %i.bnw = phi i32 [ %i.bmz, %bb.mf ], [ %i.bnk, %bb.mc ], [ %i.bnk, %bb.md ], [ %i.bnk, %bb.ma ], [ %i.bnk, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i ], [ %.pr.i192.i.i.i.i.i, %bb.lz ] ; 2 uses
  %.3.i.i.i.i.i = phi i32 [ %i.bnv, %bb.mf ], [ %.1255.i.i.i.i.i, %bb.mc ], [ %.1255.i.i.i.i.i, %bb.md ], [ %.1255.i.i.i.i.i, %bb.ma ], [ %.1255.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.i.i.i.i.i ], [ %.1255.i.i.i.i.i, %bb.lz ]
  %i.bnx = load i32, ptr %i.aoe, align 8, !tbaa !77 ; 3 uses
  %i.bny = sext i32 %i.bnx to i64
  %.not157.not.i.i.i.i.i = icmp slt i64 %indvars.iv266.i.i.i.i.i, %i.bny
  br i1 %.not157.not.i.i.i.i.i, label %.lr.ph256.i.i.i.i.i, label %.loopexit225.loopexit.i.i.i.i.i

.loopexit225.loopexit.i.i.i.i.i:                  ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit193.thread.i.i.i.i.i
  %i.bnz = trunc nsw i64 %indvars.iv.next267.i.i.i.i.i to i32
  br label %.loopexit225.i.i.i.i.i

.loopexit225.i.i.i.i.i:                           ; preds = %.loopexit225.loopexit.i.i.i.i.i, %.thread222.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i
  %i.boa = phi i32 [ %i.bmy, %.thread222.i.i.i.i.i ], [ %i.bmw, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i ], [ %i.bnx, %.loopexit225.loopexit.i.i.i.i.i ]
  %i.bob = phi i32 [ %i.bmz, %.thread222.i.i.i.i.i ], [ %i.bmv, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i ], [ %i.bnw, %.loopexit225.loopexit.i.i.i.i.i ]
  %.9.i.i.i.i.i = phi i32 [ %i.bnt, %.thread222.i.i.i.i.i ], [ %.6.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit189.thread.i.i.i.i.i ], [ %i.bnz, %.loopexit225.loopexit.i.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i.i = icmp sgt i32 %.9.i.i.i.i.i, %i.boa
  br i1 %.not161.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.le, !llvm.loop !166

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i: ; preds = %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, %bb.kn, %bb.ju
  %.sink.i.i.i.i56 = phi i32 [ %i.bfk, %bb.ju ], [ 0, %bb.kn ], [ %i.bih, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i ]
  store i32 %.sink.i.i.i.i56, ptr %i.aor, align 4, !tbaa !214
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, %.loopexit225.i.i.i.i.i, %bb.kx, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, %bb.kz, %bb.jr
  %i.boc = load i32, ptr %i.aoq, align 4, !tbaa !213 ; 2 uses
  %i.bod = add nsw i32 %i.boc, -1
  store i32 %i.bod, ptr %i.aoq, align 4, !tbaa !213
  %i.boe = icmp slt i32 %i.boc, 2
  br i1 %i.boe, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bof = load i32, ptr %i.aoi, align 4, !tbaa !81
  %i.bog = icmp slt i32 %i.bof, 24
  br i1 %i.bog, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.boh = load i8, ptr %i.aop, align 8, !tbaa !72 ; 2 uses
  %i.boi = and i8 %i.boh, -8
  %or.cond232.i.i.i.i = icmp eq i8 %i.boi, -48
  br i1 %or.cond232.i.i.i.i, label %bb.mj, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.mj:                                            ; preds = %bb.mi
  store i32 0, ptr %i.aoi, align 4, !tbaa !81
  store i32 0, ptr %i.aoj, align 8, !tbaa !82
  store i32 0, ptr %i.aok, align 4, !tbaa !83
  store i32 0, ptr %i.aol, align 8, !tbaa !84
  store i32 0, ptr %i.aom, align 8, !tbaa !84
  store i32 0, ptr %i.aon, align 8, !tbaa !84
  store i32 0, ptr %i.aoo, align 8, !tbaa !84
  store i8 -1, ptr %i.aop, align 8, !tbaa !72
  %i.boj = load i32, ptr %i.any, align 8, !tbaa !73 ; 2 uses
  %.not.i241.i.i.i.i = icmp eq i32 %i.boj, 0
  %spec.select.i242.i.i.i.i = select i1 %.not.i241.i.i.i.i, i32 2147483647, i32 %i.boj
  store i32 %spec.select.i242.i.i.i.i, ptr %i.aoq, align 4, !tbaa !213
  store i32 0, ptr %i.aor, align 4, !tbaa !214
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bok = add nuw nsw i32 %.0201293.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i54.i.i.i = icmp eq i32 %i.bok, %i.bea
  br i1 %exitcond.not.i54.i.i.i, label %._crit_edge295.i.i.i.i, label %bb.jq, !llvm.loop !167

._crit_edge295.i.i.i.i:                           ; preds = %bb.mk
  %i.bol = add nuw nsw i32 %.0200296.i.i.i.i, 1   ; 2 uses
  %exitcond338.not.i.i.i.i = icmp eq i32 %i.bol, %i.bee
  br i1 %exitcond338.not.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, label %.preheader263.i.i.i.i, !llvm.loop !168

.preheader268.i.i.i.i:                            ; preds = %.preheader268.lr.ph.i.i.i.i, %._crit_edge291.i.i.i.i
  %i.bom = phi i32 [ %i.bqv, %._crit_edge291.i.i.i.i ], [ %i.bdq, %.preheader268.lr.ph.i.i.i.i ]
  %i.bon = phi i32 [ %i.bqw, %._crit_edge291.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.boo = phi i32 [ %i.bqx, %._crit_edge291.i.i.i.i ], [ %i.bds, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %.0198292.i.i.i.i = phi i32 [ %i.bqy, %._crit_edge291.i.i.i.i ], [ 0, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.bop = icmp sgt i32 %i.boo, 0
  br i1 %i.bop, label %.preheader267.i.i.i.i, label %._crit_edge291.i.i.i.i

.preheader267.i.i.i.i:                            ; preds = %.preheader268.i.i.i.i, %bb.mq
  %i.boq = phi i32 [ %i.bqr, %bb.mq ], [ %i.bon, %.preheader268.i.i.i.i ]
  %.0199290.i.i.i.i = phi i32 [ %i.bqs, %bb.mq ], [ 0, %.preheader268.i.i.i.i ] ; 2 uses
  %i.bor = load i32, ptr %i.aob, align 4, !tbaa !209 ; 2 uses
  %i.bos = icmp sgt i32 %i.bor, 0
  br i1 %i.bos, label %.lr.ph288.i.i.i.i, label %._crit_edge289.i.i.i.i

.lr.ph288.i.i.i.i:                                ; preds = %.preheader267.i.i.i.i, %.critedge234.i.i.i.i
  %i.bot = phi i32 [ %i.bqg, %.critedge234.i.i.i.i ], [ %i.bor, %.preheader267.i.i.i.i ] ; 2 uses
  %indvars.iv.i48.i.i.i = phi i64 [ %indvars.iv.next.i49.i.i.i, %.critedge234.i.i.i.i ], [ 0, %.preheader267.i.i.i.i ] ; 2 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.i48.i.i.i
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !23 ; 2 uses
  %i.bow = sext i32 %i.bov to i64
  %i.box = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.bow ; 5 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 8 ; 3 uses
  %i.boz = load i32, ptr %i.boy, align 8, !tbaa !92 ; 2 uses
  %.not227285.i.i.i.i = icmp sgt i32 %i.boz, 0
  br i1 %.not227285.i.i.i.i, label %.preheader265.lr.ph.i.i.i.i, label %.critedge234.i.i.i.i

.preheader265.lr.ph.i.i.i.i:                      ; preds = %.lr.ph288.i.i.i.i
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.box, i64 4 ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.box, i64 80
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.box, i64 88
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.box, i64 16
  %i.bpe = load i32, ptr %i.bpa, align 4, !tbaa !93 ; 2 uses
  %i.bpf = icmp sgt i32 %i.bpe, 0
  br i1 %i.bpf, label %.preheader265.i.i.i.i, label %.critedge234.i.i.i.i

.preheader265.i.i.i.i:                            ; preds = %.preheader265.lr.ph.i.i.i.i, %._crit_edge.i50.i.i.i
  %i.bpg = phi i32 [ %i.bqd, %._crit_edge.i50.i.i.i ], [ %i.boz, %.preheader265.lr.ph.i.i.i.i ]
  %i.bph = phi i32 [ %i.bqe, %._crit_edge.i50.i.i.i ], [ %i.bpe, %.preheader265.lr.ph.i.i.i.i ] ; 3 uses
  %.0286.i.i.i.i = phi i32 [ %i.bqf, %._crit_edge.i50.i.i.i ], [ 0, %.preheader265.lr.ph.i.i.i.i ] ; 2 uses
  %i.bpi = icmp sgt i32 %i.bph, 0
  br i1 %i.bpi, label %.lr.ph.i51.i.i.i, label %._crit_edge.i50.i.i.i

bb.ml:                                            ; preds = %.lr.ph.i51.i.i.i
  %i.bpj = add nuw nsw i32 %.0196284.i.i.i.i, 1   ; 2 uses
  %i.bpk = load i32, ptr %i.bpa, align 4, !tbaa !93 ; 3 uses
  %i.bpl = icmp slt i32 %i.bpj, %i.bpk
  br i1 %i.bpl, label %.lr.ph.i51.i.i.i, label %._crit_edge.loopexit.i52.i.i.i, !llvm.loop !169

.lr.ph.i51.i.i.i:                                 ; preds = %.preheader265.i.i.i.i, %bb.ml
  %i.bpm = phi i32 [ %i.bpk, %bb.ml ], [ %i.bph, %.preheader265.i.i.i.i ]
  %.0196284.i.i.i.i = phi i32 [ %i.bpj, %bb.ml ], [ 0, %.preheader265.i.i.i.i ] ; 2 uses
  %i.bpn = mul nuw nsw i32 %i.bpm, %.0199290.i.i.i.i
  %i.bpo = add nsw i32 %i.bpn, %.0196284.i.i.i.i
  %i.bpp = load i32, ptr %i.boy, align 8, !tbaa !92
  %i.bpq = mul nsw i32 %i.bpp, %.0198292.i.i.i.i
  %i.bpr = add nsw i32 %i.bpq, %.0286.i.i.i.i
  %i.bps = load ptr, ptr %i.bpb, align 8, !tbaa !95
  %i.bpt = load i32, ptr %i.bpc, align 8, !tbaa !96
  %i.bpu = mul nsw i32 %i.bpr, %i.bpt
  %i.bpv = add nsw i32 %i.bpo, %i.bpu
  %i.bpw = shl nsw i32 %i.bpv, 6
  %i.bpx = sext i32 %i.bpw to i64
  %i.bpy = getelementptr inbounds [2 x i8], ptr %i.bps, i64 %i.bpx
  %i.bpz = load i32, ptr %i.bpd, align 8, !tbaa !210
  %i.bqa = sext i32 %i.bpz to i64
  %i.bqb = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.bqa
  %i.bqc = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %calloc.i51, ptr noundef %i.bpy, ptr noundef %i.bqb, i32 noundef %i.bov)
  %.not226.not.i.i.i.i = icmp eq i32 %i.bqc, 0
  br i1 %.not226.not.i.i.i.i, label %.loopexit365.i.i, label %bb.ml

._crit_edge.loopexit.i52.i.i.i:                   ; preds = %bb.ml
  %.pre.i53.i.i.i = load i32, ptr %i.boy, align 8, !tbaa !92
  br label %._crit_edge.i50.i.i.i

._crit_edge.i50.i.i.i:                            ; preds = %._crit_edge.loopexit.i52.i.i.i, %.preheader265.i.i.i.i
  %i.bqd = phi i32 [ %.pre.i53.i.i.i, %._crit_edge.loopexit.i52.i.i.i ], [ %i.bpg, %.preheader265.i.i.i.i ] ; 2 uses
  %i.bqe = phi i32 [ %i.bpk, %._crit_edge.loopexit.i52.i.i.i ], [ %i.bph, %.preheader265.i.i.i.i ]
  %i.bqf = add nuw nsw i32 %.0286.i.i.i.i, 1      ; 2 uses
  %.not227.i.i.i.i = icmp slt i32 %i.bqf, %i.bqd
  br i1 %.not227.i.i.i.i, label %.preheader265.i.i.i.i, label %.critedge234.loopexit.i.i.i.i, !llvm.loop !170

.critedge234.loopexit.i.i.i.i:                    ; preds = %._crit_edge.i50.i.i.i
  %.pre347.i.i.i.i = load i32, ptr %i.aob, align 4, !tbaa !209
  br label %.critedge234.i.i.i.i

.critedge234.i.i.i.i:                             ; preds = %.critedge234.loopexit.i.i.i.i, %.preheader265.lr.ph.i.i.i.i, %.lr.ph288.i.i.i.i
  %i.bqg = phi i32 [ %i.bot, %.lr.ph288.i.i.i.i ], [ %.pre347.i.i.i.i, %.critedge234.loopexit.i.i.i.i ], [ %i.bot, %.preheader265.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i49.i.i.i = add nuw nsw i64 %indvars.iv.i48.i.i.i, 1 ; 2 uses
  %i.bqh = sext i32 %i.bqg to i64
  %i.bqi = icmp slt i64 %indvars.iv.next.i49.i.i.i, %i.bqh
  br i1 %i.bqi, label %.lr.ph288.i.i.i.i, label %._crit_edge289.loopexit.i.i.i.i, !llvm.loop !171

._crit_edge289.loopexit.i.i.i.i:                  ; preds = %.critedge234.i.i.i.i
  %.pre348.i.i.i.i = load i32, ptr %i.aoq, align 4, !tbaa !213
  br label %._crit_edge289.i.i.i.i

._crit_edge289.i.i.i.i:                           ; preds = %._crit_edge289.loopexit.i.i.i.i, %.preheader267.i.i.i.i
  %i.bqj = phi i32 [ %.pre348.i.i.i.i, %._crit_edge289.loopexit.i.i.i.i ], [ %i.boq, %.preheader267.i.i.i.i ] ; 2 uses
  %i.bqk = add nsw i32 %i.bqj, -1                 ; 2 uses
  store i32 %i.bqk, ptr %i.aoq, align 4, !tbaa !213
  %i.bql = icmp slt i32 %i.bqj, 2
  br i1 %i.bql, label %bb.mm, label %bb.mq

bb.mm:                                            ; preds = %._crit_edge289.i.i.i.i
  %i.bqm = load i32, ptr %i.aoi, align 4, !tbaa !81
  %i.bqn = icmp slt i32 %i.bqm, 24
  br i1 %i.bqn, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.bqo = load i8, ptr %i.aop, align 8, !tbaa !72 ; 2 uses
  %i.bqp = and i8 %i.bqo, -8
  %or.cond235.i.i.i.i = icmp eq i8 %i.bqp, -48
  br i1 %or.cond235.i.i.i.i, label %bb.mp, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.mp:                                            ; preds = %bb.mo
  store i32 0, ptr %i.aoi, align 4, !tbaa !81
  store i32 0, ptr %i.aoj, align 8, !tbaa !82
  store i32 0, ptr %i.aok, align 4, !tbaa !83
  store i32 0, ptr %i.aol, align 8, !tbaa !84
  store i32 0, ptr %i.aom, align 8, !tbaa !84
  store i32 0, ptr %i.aon, align 8, !tbaa !84
  store i32 0, ptr %i.aoo, align 8, !tbaa !84
  store i8 -1, ptr %i.aop, align 8, !tbaa !72
  %i.bqq = load i32, ptr %i.any, align 8, !tbaa !73 ; 2 uses
  %.not.i243.i.i.i.i = icmp eq i32 %i.bqq, 0
  %spec.select.i244.i.i.i.i = select i1 %.not.i243.i.i.i.i, i32 2147483647, i32 %i.bqq ; 2 uses
  store i32 %spec.select.i244.i.i.i.i, ptr %i.aoq, align 4, !tbaa !213
  store i32 0, ptr %i.aor, align 4, !tbaa !214
  br label %bb.mq

end_hunk_0
begin_hunk_1_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  %i.nz = zext nneg i32 %.046.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ny, i8 %.0.i42.i, i64 %i.nz, i1 false)
  %i.oa = add nsw i32 %.046.i.i, %.050174.i.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bk
  %i.ob = phi i32 [ %i.lh, %bb.bk ], [ %i.nu, %bb.ca ]
  %.353.i.i = phi i32 [ %i.lk, %bb.bk ], [ %i.oa, %bb.ca ] ; 3 uses
  %i.oc = icmp slt i32 %.353.i.i, %i.ji
  br i1 %i.oc, label %bb.av, label %bb.cc, !llvm.loop !504

bb.cc:                                            ; preds = %bb.cb
  %.not58.i.i = icmp eq i32 %.353.i.i, %i.ji
  br i1 %.not58.i.i, label %bb.cd, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.cd:                                            ; preds = %bb.cc
  %i.od = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.af, ptr noundef nonnull %i.a, i32 noundef %i.gz)
  %.not59.i.i = icmp eq i32 %i.od, 0
  br i1 %.not59.i.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i: ; preds = %bb.cc, %bb.bz, %_ZL14stbi__zreceiveP10stbi__zbufi.exit100.i.i, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.aw
  store ptr @.str.80, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i: ; preds = %bb.cd, %bb.au, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i: ; preds = %bb.cd
  %i.oe = zext nneg i32 %i.gz to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.oe
  %i.og = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ag, ptr noundef nonnull %i.of, i32 noundef %i.hr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not17.i = icmp eq i32 %i.og, 0
  br i1 %.not17.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i, %bb.af
  %i.oh = load ptr, ptr %i.e, align 8, !tbaa !109
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i.i, %bb.ce
  %.061.i.i = phi ptr [ %i.oh, %bb.ce ], [ %.9.i.i, %.loopexit.i.i ] ; 10 uses
  %i.oi = load i32, ptr %i.x, align 8, !tbaa !513 ; 3 uses
  %i.oj = icmp slt i32 %i.oi, 16
  br i1 %i.oj, label %bb.cg, label %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i50.i

._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i50.i: ; preds = %bb.cf
  %.pre.i.i51.i = load i32, ptr %i.y, align 4, !tbaa !514
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i

bb.cg:                                            ; preds = %bb.cf
  %.val.i.i75.i = load ptr, ptr %0, align 8, !tbaa !106 ; 2 uses
  %.val16.i.i76.i = load ptr, ptr %i.z, align 8, !tbaa !107 ; 3 uses
  %.not18.i.i77.i = icmp ult ptr %.val.i.i75.i, %.val16.i.i76.i
  br i1 %.not18.i.i77.i, label %bb.ch, label %bb.ct

bb.ch:                                            ; preds = %bb.cg
  %.promoted.i.i.i78.i = load i32, ptr %i.y, align 4, !tbaa !514
  br label %bb.ci

bb.ci:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i, %bb.ch
  %.val.i.i.i.i79.i = phi ptr [ %.val.i.i19.i.i84.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i ], [ %.val.i.i75.i, %bb.ch ] ; 4 uses
  %i.ok = phi i32 [ %i.os, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i ], [ %i.oi, %bb.ch ] ; 5 uses
  %i.ol = phi i32 [ %i.or, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i ], [ %.promoted.i.i.i78.i, %bb.ch ] ; 3 uses
  %.highbits.i.i.i80.i = lshr i32 %i.ol, %i.ok
  %.not.i.i.i81.i = icmp eq i32 %.highbits.i.i.i80.i, 0
  br i1 %.not.i.i.i81.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %.val16.i.i76.i, ptr %0, align 8, !tbaa !106
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i

bb.ck:                                            ; preds = %bb.ci
  %.not3.i.i.i.i82.i = icmp ult ptr %.val.i.i.i.i79.i, %.val16.i.i76.i
  br i1 %.not3.i.i.i.i82.i, label %bb.cl, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i

bb.cl:                                            ; preds = %bb.ck
  %i.om = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i79.i, i64 1 ; 2 uses
  store ptr %i.om, ptr %0, align 8, !tbaa !106
  %i.on = load i8, ptr %.val.i.i.i.i79.i, align 1, !tbaa !35
  %i.oo = zext i8 %i.on to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i:     ; preds = %bb.cl, %bb.ck
  %.val.i.i19.i.i84.i = phi ptr [ %i.om, %bb.cl ], [ %.val.i.i.i.i79.i, %bb.ck ]
  %i.op = phi i32 [ %i.oo, %bb.cl ], [ 0, %bb.ck ]
  %i.oq = shl i32 %i.op, %i.ok
  %i.or = or i32 %i.oq, %i.ol                     ; 3 uses
  store i32 %i.or, ptr %i.y, align 4, !tbaa !514
  %i.os = add nsw i32 %i.ok, 8                    ; 3 uses
  store i32 %i.os, ptr %i.x, align 8, !tbaa !513
  %i.ot = icmp slt i32 %i.ok, 17
  br i1 %i.ot, label %bb.ci, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i, !llvm.loop !497

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i, %bb.cj, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i50.i
  %i.ou = phi i32 [ %i.oi, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i50.i ], [ %i.ok, %bb.cj ], [ %i.os, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i ] ; 2 uses
  %i.ov = phi i32 [ %.pre.i.i51.i, %._ZL15stbi__fill_bitsP10stbi__zbuf.exit_crit_edge.i.i50.i ], [ %i.ol, %bb.cj ], [ %i.or, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i83.i ] ; 4 uses
  %i.ow = and i32 %i.ov, 511
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ox
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !41 ; 2 uses
  %.not15.i.i53.i = icmp eq i16 %i.oz, 0
  br i1 %.not15.i.i53.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i
  %i.pa = zext i16 %i.oz to i32                   ; 2 uses
  %i.pb = lshr i32 %i.pa, 9                       ; 2 uses
  %i.pc = lshr i32 %i.ov, %i.pb                   ; 2 uses
  store i32 %i.pc, ptr %i.y, align 4, !tbaa !514
  %i.pd = sub nsw i32 %i.ou, %i.pb                ; 2 uses
  store i32 %i.pd, ptr %i.x, align 8, !tbaa !513
  %i.pe = and i32 %i.pa, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i

bb.cn:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i52.i
  %trunc.i.i.i.i.i70.i = trunc i32 %i.ov to i16
  %rev.i.i.i.i.i71.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i.i70.i)
  %i.pf = zext i16 %rev.i.i.i.i.i71.i to i32      ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %indvars.iv.i.i.i72.i = phi i64 [ %indvars.iv.next.i.i.i73.i, %bb.co ], [ 10, %bb.cn ] ; 7 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i72.i
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !23
  %i.pi = icmp sgt i32 %i.ph, %i.pf
  %indvars.iv.next.i.i.i73.i = add nuw nsw i64 %indvars.iv.i.i.i72.i, 1
  br i1 %i.pi, label %bb.cp, label %bb.co, !llvm.loop !503

bb.cp:                                            ; preds = %bb.co
  %i.pj = trunc nuw nsw i64 %indvars.iv.i.i.i72.i to i32 ; 3 uses
  %i.pk = icmp samesign ugt i64 %indvars.iv.i.i.i72.i, 15
  br i1 %i.pk, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pl = sub nuw nsw i32 16, %i.pj
  %i.pm = lshr i32 %i.pf, %i.pl
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i72.i
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !41
  %i.pp = zext i16 %i.po to i32
  %i.pq = sub nsw i32 %i.pm, %i.pp
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i72.i
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !41
  %i.pt = zext i16 %i.ps to i32
  %i.pu = add nsw i32 %i.pq, %i.pt                ; 2 uses
  %i.pv = icmp sgt i32 %i.pu, 287
  br i1 %i.pv, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pw = sext i32 %i.pu to i64                   ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %i.ak, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !35
  %i.pz = zext i8 %i.py to i64
  %.not.i17.i.i74.i = icmp eq i64 %indvars.iv.i.i.i72.i, %i.pz
  br i1 %.not.i17.i.i74.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.qa = lshr i32 %i.ov, %i.pj                   ; 2 uses
  store i32 %i.qa, ptr %i.y, align 4, !tbaa !514
  %i.qb = sub nsw i32 %i.ou, %i.pj                ; 2 uses
  store i32 %i.qb, ptr %i.x, align 8, !tbaa !513
  %i.qc = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.pw
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !41
  %i.qe = zext i16 %i.qd to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i: ; preds = %bb.cs, %bb.cm
  %.promoted.i.i82.i.i = phi i32 [ %i.qa, %bb.cs ], [ %i.pc, %bb.cm ] ; 3 uses
  %.pr.i55.i = phi i32 [ %i.qb, %bb.cs ], [ %i.pd, %bb.cm ] ; 4 uses
  %.0.i.i56.i = phi i32 [ %i.qe, %bb.cs ], [ %i.pe, %bb.cm ] ; 6 uses
  %i.qf = icmp samesign ult i32 %.0.i.i56.i, 256
  br i1 %i.qf, label %bb.cu, label %bb.de

bb.ct:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cg
  store ptr @.str.67, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

bb.cu:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i
  %i.qg = load ptr, ptr %i.h, align 8, !tbaa !511 ; 2 uses
  %.not80.i.i = icmp ult ptr %.061.i.i, %i.qg
  br i1 %.not80.i.i, label %bb.dd, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store ptr %.061.i.i, ptr %i.e, align 8, !tbaa !109
  %i.qh = load i32, ptr %i.i, align 8, !tbaa !512
  %.not.i.i64.i = icmp eq i32 %i.qh, 0
  br i1 %.not.i.i64.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store ptr @.str.78, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

bb.cx:                                            ; preds = %bb.cv
  %i.qi = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.qj = ptrtoint ptr %.061.i.i to i64
  %i.qk = ptrtoint ptr %i.qi to i64               ; 2 uses
  %i.ql = sub i64 %i.qj, %i.qk                    ; 2 uses
  %i.qm = trunc i64 %i.ql to i32                  ; 3 uses
  %i.qn = icmp eq i32 %i.qm, -1
  br i1 %i.qn, label %bb.cy, label %.preheader.i.i65.i

.preheader.i.i65.i:                               ; preds = %bb.cx
  %i.qo = ptrtoint ptr %i.qg to i64
  %i.qp = sub i64 %i.qo, %i.qk
  %i.qq = trunc i64 %i.qp to i32                  ; 3 uses
  %.not258.i.i = icmp ult i32 %i.qm, %i.qq
  br i1 %.not258.i.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i66.i

bb.cy:                                            ; preds = %bb.cx
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

.lr.ph.i.i66.i:                                   ; preds = %.preheader.i.i65.i, %bb.da
  %.028.i.i67.i = phi i32 [ %i.qs, %bb.da ], [ %i.qq, %.preheader.i.i65.i ] ; 2 uses
  %i.qr = icmp slt i32 %.028.i.i67.i, 0
  br i1 %i.qr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i.i66.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

bb.da:                                            ; preds = %.lr.ph.i.i66.i
  %i.qs = shl nuw i32 %.028.i.i67.i, 1            ; 3 uses
  %.not259.i.i = icmp ugt i32 %i.qs, %i.qm
  br i1 %.not259.i.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i66.i, !llvm.loop !501

._crit_edge.i.i68.i:                              ; preds = %bb.da, %.preheader.i.i65.i
  %.0.lcssa.i.i69.i = phi i32 [ %i.qq, %.preheader.i.i65.i ], [ %i.qs, %bb.da ]
  %i.qt = zext i32 %.0.lcssa.i.i69.i to i64       ; 2 uses
  %i.qu = tail call ptr @realloc(ptr noundef %i.qi, i64 noundef %i.qt) #38 ; 4 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i68.i
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

bb.dc:                                            ; preds = %._crit_edge.i.i68.i
  store ptr %i.qu, ptr %i.d, align 8, !tbaa !108
  %i.qw = and i64 %i.ql, 4294967295
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qw ; 2 uses
  store ptr %i.qx, ptr %i.e, align 8, !tbaa !109
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qt
  store ptr %i.qy, ptr %i.h, align 8, !tbaa !511
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cu
  %.162.i.i = phi ptr [ %i.qx, %bb.dc ], [ %.061.i.i, %bb.cu ] ; 2 uses
  %i.qz = trunc nuw i32 %.0.i.i56.i to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %.162.i.i, i64 1
  store i8 %i.qz, ptr %.162.i.i, align 1, !tbaa !35
  br label %.loopexit.i.i

bb.de:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i54.i
  %i.rb = icmp eq i32 %.0.i.i56.i, 256
  br i1 %i.rb, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rc = icmp samesign ugt i32 %.0.i.i56.i, 285
  br i1 %i.rc, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store ptr @.str.67, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

bb.dh:                                            ; preds = %bb.df
  %i.rd = add nsw i32 %.0.i.i56.i, -257
  %i.re = zext nneg i32 %i.rd to i64              ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr @_ZL18stbi__zlength_base, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !23 ; 2 uses
  %i.rh = add nsw i32 %.0.i.i56.i, -285
  %.not.i57.i = icmp ult i32 %i.rh, -20
  br i1 %.not.i57.i, label %thread-pre-split.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr @_ZL19stbi__zlength_extra, i64 %i.re
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !23 ; 4 uses
  %i.rk = icmp slt i32 %.pr.i55.i, %i.rj
  br i1 %i.rk, label %.preheader186.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i

.preheader186.i.i:                                ; preds = %bb.di, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i
  %i.rl = phi i32 [ %i.ru, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i ], [ %.pr.i55.i, %bb.di ] ; 5 uses
  %i.rm = phi i32 [ %i.rt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i ], [ %.promoted.i.i82.i.i, %bb.di ] ; 3 uses
  %.highbits.i.i84.i.i = lshr i32 %i.rm, %i.rl
  %.not.i.i85.i.i = icmp eq i32 %.highbits.i.i84.i.i, 0
  br i1 %.not.i.i85.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.preheader186.i.i
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !107
  store ptr %i.rn, ptr %0, align 8, !tbaa !106
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i

bb.dk:                                            ; preds = %.preheader186.i.i
  %.val.i.i.i86.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 3 uses
  %.val2.i.i.i.i63.i = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not3.i.i.i87.i.i = icmp ult ptr %.val.i.i.i86.i.i, %.val2.i.i.i.i63.i
  br i1 %.not3.i.i.i87.i.i, label %bb.dl, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i.i.i86.i.i, i64 1
  store ptr %i.ro, ptr %0, align 8, !tbaa !106
  %i.rp = load i8, ptr %.val.i.i.i86.i.i, align 1, !tbaa !35
  %i.rq = zext i8 %i.rp to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i:     ; preds = %bb.dl, %bb.dk
  %i.rr = phi i32 [ %i.rq, %bb.dl ], [ 0, %bb.dk ]
  %i.rs = shl i32 %i.rr, %i.rl
  %i.rt = or i32 %i.rs, %i.rm                     ; 3 uses
  store i32 %i.rt, ptr %i.y, align 4, !tbaa !514
  %i.ru = add nsw i32 %i.rl, 8                    ; 3 uses
  store i32 %i.ru, ptr %i.x, align 8, !tbaa !513
  %i.rv = icmp slt i32 %i.rl, 17
  br i1 %i.rv, label %.preheader186.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i, !llvm.loop !497

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i, %bb.dj, %bb.di
  %i.rw = phi i32 [ %.pr.i55.i, %bb.di ], [ %i.rl, %bb.dj ], [ %i.ru, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i ]
  %i.rx = phi i32 [ %.promoted.i.i82.i.i, %bb.di ], [ %i.rm, %bb.dj ], [ %i.rt, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i88.i.i ] ; 2 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.rj
  %i.ry = xor i32 %notmask.i.i.i, -1
  %i.rz = and i32 %i.rx, %i.ry
  %i.sa = lshr i32 %i.rx, %i.rj                   ; 2 uses
  store i32 %i.sa, ptr %i.y, align 4, !tbaa !514
  %i.sb = sub nsw i32 %i.rw, %i.rj                ; 2 uses
  store i32 %i.sb, ptr %i.x, align 8, !tbaa !513
  %i.sc = add i32 %i.rz, %i.rg
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i, %bb.dh
  %.promoted.i.i103.i.i = phi i32 [ %i.sa, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i ], [ %.promoted.i.i82.i.i, %bb.dh ] ; 2 uses
  %i.sd = phi i32 [ %i.sb, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i ], [ %.pr.i55.i, %bb.dh ] ; 3 uses
  %.057.i.i = phi i32 [ %i.sc, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i58.i ], [ %i.rg, %bb.dh ] ; 12 uses
  %i.se = icmp slt i32 %i.sd, 16
  br i1 %i.se, label %bb.dm, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i

bb.dm:                                            ; preds = %thread-pre-split.i.i
  %.val.i100.i.i = load ptr, ptr %0, align 8, !tbaa !106 ; 2 uses
  %.val16.i101.i.i = load ptr, ptr %i.z, align 8, !tbaa !107 ; 3 uses
  %.not18.i102.i.i = icmp ult ptr %.val.i100.i.i, %.val16.i101.i.i
  br i1 %.not18.i102.i.i, label %.preheader.i, label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit110.thread.i.i

.preheader.i:                                     ; preds = %bb.dm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i
  %.val.i.i.i104.i.i = phi ptr [ %.val.i.i19.i109.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i ], [ %.val.i100.i.i, %bb.dm ] ; 4 uses
  %i.sf = phi i32 [ %i.sn, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i ], [ %i.sd, %bb.dm ] ; 5 uses
  %i.sg = phi i32 [ %i.sm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i ], [ %.promoted.i.i103.i.i, %bb.dm ] ; 3 uses
  %.highbits.i.i105.i.i = lshr i32 %i.sg, %i.sf
  %.not.i.i106.i.i = icmp eq i32 %.highbits.i.i105.i.i, 0
  br i1 %.not.i.i106.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.preheader.i
  store ptr %.val16.i101.i.i, ptr %0, align 8, !tbaa !106
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i

bb.do:                                            ; preds = %.preheader.i
  %.not3.i.i.i107.i61.i = icmp ult ptr %.val.i.i.i104.i.i, %.val16.i101.i.i
  br i1 %.not3.i.i.i107.i61.i, label %bb.dp, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i

bb.dp:                                            ; preds = %bb.do
  %i.sh = getelementptr inbounds nuw i8, ptr %.val.i.i.i104.i.i, i64 1 ; 2 uses
  store ptr %i.sh, ptr %0, align 8, !tbaa !106
  %i.si = load i8, ptr %.val.i.i.i104.i.i, align 1, !tbaa !35
  %i.sj = zext i8 %i.si to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i:  ; preds = %bb.dp, %bb.do
  %.val.i.i19.i109.i.i = phi ptr [ %i.sh, %bb.dp ], [ %.val.i.i.i104.i.i, %bb.do ]
  %i.sk = phi i32 [ %i.sj, %bb.dp ], [ 0, %bb.do ]
  %i.sl = shl i32 %i.sk, %i.sf
  %i.sm = or i32 %i.sl, %i.sg                     ; 3 uses
  store i32 %i.sm, ptr %i.y, align 4, !tbaa !514
  %i.sn = add nsw i32 %i.sf, 8                    ; 3 uses
  store i32 %i.sn, ptr %i.x, align 8, !tbaa !513
  %i.so = icmp slt i32 %i.sf, 17
  br i1 %i.so, label %.preheader.i, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i, !llvm.loop !497

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i, %bb.dn, %thread-pre-split.i.i
  %i.sp = phi i32 [ %i.sd, %thread-pre-split.i.i ], [ %i.sf, %bb.dn ], [ %i.sn, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i ] ; 2 uses
  %i.sq = phi i32 [ %.promoted.i.i103.i.i, %thread-pre-split.i.i ], [ %i.sg, %bb.dn ], [ %i.sm, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i108.i62.i ] ; 4 uses
  %i.sr = and i32 %i.sq, 511
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !41 ; 2 uses
  %.not15.i93.i.i = icmp eq i16 %i.su, 0
  br i1 %.not15.i93.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i
  %i.sv = zext i16 %i.su to i32                   ; 2 uses
  %i.sw = lshr i32 %i.sv, 9                       ; 2 uses
  %i.sx = lshr i32 %i.sq, %i.sw                   ; 2 uses
  store i32 %i.sx, ptr %i.y, align 4, !tbaa !514
  %i.sy = sub nsw i32 %i.sp, %i.sw                ; 2 uses
  store i32 %i.sy, ptr %i.x, align 8, !tbaa !513
  %i.sz = and i32 %i.sv, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit110.i.i

bb.dr:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i92.i.i
  %trunc.i.i.i.i95.i.i = trunc i32 %i.sq to i16
  %rev.i.i.i.i96.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i95.i.i)
  %i.ta = zext i16 %rev.i.i.i.i96.i.i to i32      ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %bb.dr
  %indvars.iv.i.i97.i.i = phi i64 [ %indvars.iv.next.i.i98.i.i, %bb.ds ], [ 10, %bb.dr ] ; 7 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i97.i.i
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !23
  %i.td = icmp sgt i32 %i.tc, %i.ta
  %indvars.iv.next.i.i98.i.i = add nuw nsw i64 %indvars.iv.i.i97.i.i, 1
  br i1 %i.td, label %bb.dt, label %bb.ds, !llvm.loop !503

bb.dt:                                            ; preds = %bb.ds
  %i.te = trunc nuw nsw i64 %indvars.iv.i.i97.i.i to i32 ; 3 uses
  %i.tf = icmp samesign ugt i64 %indvars.iv.i.i97.i.i, 15
  br i1 %i.tf, label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit110.thread.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.tg = sub nuw nsw i32 16, %i.te
  %i.th = lshr i32 %i.ta, %i.tg
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i97.i.i
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !41
  %i.tk = zext i16 %i.tj to i32
  %i.tl = sub nsw i32 %i.th, %i.tk
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.i.i97.i.i
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !41
  %i.to = zext i16 %i.tn to i32
  %i.tp = add nsw i32 %i.tl, %i.to                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_:.lver.check
bb.aq:                                            ; preds = %bb.ap
  %i.ue = icmp eq i32 %i.lt, 0
  br i1 %i.ue, label %bb.ar, label %.preheader.lr.ph

bb.ar:                                            ; preds = %bb.aq
  %i.uf = icmp eq i32 %i.kn, 0
  br i1 %i.uf, label %bb.as, label %.preheader.lr.ph

bb.as:                                            ; preds = %bb.ar
  %i.ug = icmp eq i32 %i.je, 0
  br i1 %i.ug, label %bb.at, label %.preheader.lr.ph

bb.at:                                            ; preds = %bb.as
  %i.uh = icmp eq i32 %i.hv, 0
  br i1 %i.uh, label %bb.au, label %.preheader.lr.ph

bb.au:                                            ; preds = %bb.at
  %i.ui = icmp eq i32 %i.gm, 0
  br i1 %i.ui, label %bb.av, label %.preheader.lr.ph

bb.av:                                            ; preds = %bb.au
  %i.uj = icmp eq i32 %i.gk, 0
  br i1 %i.uj, label %bb.aw, label %.preheader.lr.ph

bb.aw:                                            ; preds = %bb.av
  %i.uk = icmp eq i32 %i.ht, 0
  br i1 %i.uk, label %bb.ax, label %.preheader.lr.ph

bb.ax:                                            ; preds = %bb.aw
  %i.ul = icmp eq i32 %i.jc, 0
  br i1 %i.ul, label %bb.ay, label %.preheader.lr.ph

bb.ay:                                            ; preds = %bb.ax
  %i.um = icmp eq i32 %i.ki, 0
  br i1 %i.um, label %bb.az, label %.preheader.lr.ph

bb.az:                                            ; preds = %bb.ay
  %i.un = icmp eq i32 %i.lr, 0
  br i1 %i.un, label %bb.ba, label %.preheader.lr.ph

bb.ba:                                            ; preds = %bb.az
  %i.uo = icmp eq i32 %i.na, 0
  br i1 %i.uo, label %bb.bb, label %.preheader.lr.ph

bb.bb:                                            ; preds = %bb.ba
  %i.up = icmp eq i32 %i.oj, 0
  br i1 %i.up, label %bb.bc, label %.preheader.lr.ph

bb.bc:                                            ; preds = %bb.bb
  %i.uq = icmp eq i32 %i.my, 0
  br i1 %i.uq, label %bb.bd, label %.preheader.lr.ph

bb.bd:                                            ; preds = %bb.bc
  %i.ur = icmp eq i32 %i.lp, 0
  br i1 %i.ur, label %bb.be, label %.preheader.lr.ph

bb.be:                                            ; preds = %bb.bd
  %i.us = icmp eq i32 %i.kg, 0
  br i1 %i.us, label %bb.bf, label %.preheader.lr.ph

bb.bf:                                            ; preds = %bb.be
  %i.ut = icmp eq i32 %i.ix, 0
  br i1 %i.ut, label %bb.bg, label %.preheader.lr.ph

bb.bg:                                            ; preds = %bb.bf
  %i.uu = icmp eq i32 %i.hr, 0
  br i1 %i.uu, label %bb.bh, label %.preheader.lr.ph

bb.bh:                                            ; preds = %bb.bg
  %i.uv = icmp eq i32 %i.gi, 0
  br i1 %i.uv, label %bb.bi, label %.preheader.lr.ph

bb.bi:                                            ; preds = %bb.bh
  %i.uw = icmp eq i32 %i.gg, 0
  br i1 %i.uw, label %bb.bj, label %.preheader.lr.ph

bb.bj:                                            ; preds = %bb.bi
  %i.ux = icmp eq i32 %i.hm, 0
  br i1 %i.ux, label %bb.bk, label %.preheader.lr.ph

bb.bk:                                            ; preds = %bb.bj
  %i.uy = icmp eq i32 %i.iv, 0
  br i1 %i.uy, label %bb.bl, label %.preheader.lr.ph

bb.bl:                                            ; preds = %bb.bk
  %i.uz = icmp eq i32 %i.ke, 0
  br i1 %i.uz, label %bb.bm, label %.preheader.lr.ph

bb.bm:                                            ; preds = %bb.bl
  %i.va = icmp eq i32 %i.ln, 0
  br i1 %i.va, label %bb.bn, label %.preheader.lr.ph

bb.bn:                                            ; preds = %bb.bm
  %i.vb = icmp eq i32 %i.kc, 0
  br i1 %i.vb, label %bb.bo, label %.preheader.lr.ph

bb.bo:                                            ; preds = %bb.bn
  %i.vc = icmp eq i32 %i.it, 0
  br i1 %i.vc, label %bb.bp, label %.preheader.lr.ph

bb.bp:                                            ; preds = %bb.bo
  %i.vd = icmp eq i32 %i.hk, 0
  br i1 %i.vd, label %bb.bq, label %.preheader.lr.ph

bb.bq:                                            ; preds = %bb.bp
  %i.ve = icmp eq i32 %i.gb, 0
  br i1 %i.ve, label %bb.br, label %.preheader.lr.ph

bb.br:                                            ; preds = %bb.bq
  %i.vf = icmp eq i32 %i.fz, 0
  br i1 %i.vf, label %bb.bs, label %.preheader.lr.ph

bb.bs:                                            ; preds = %bb.br
  %i.vg = icmp eq i32 %i.hi, 0
  br i1 %i.vg, label %bb.bt, label %.preheader.lr.ph

bb.bt:                                            ; preds = %bb.bs
  %i.vh = icmp eq i32 %i.ir, 0
  br i1 %i.vh, label %bb.bu, label %.preheader.lr.ph

bb.bu:                                            ; preds = %bb.bt
  %i.vi = icmp eq i32 %i.hg, 0
  br i1 %i.vi, label %bb.bv, label %.preheader.lr.ph

bb.bv:                                            ; preds = %bb.bu
  %i.vj = icmp eq i32 %i.fx, 0
  br i1 %i.vj, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bg, %bb.aq, %bb.ay, %bb.ap, %bb.bh, %bb.ao, %bb.ba, %bb.an, %bb.bi, %bb.am, %bb.ax, %bb.al, %bb.bj, %bb.ak, %bb.bd, %bb.aj, %bb.bk, %bb.ai, %bb.aw, %bb.ah, %bb.bl, %bb.ag, %bb.bb, %bb.af, %bb.bm, %bb.ae, %bb.av, %bb.ad, %bb.bn, %bb.ac, %bb.be, %bb.ab, %bb.bo, %bb.aa, %bb.au, %bb.z, %bb.bp, %bb.y, %bb.az, %bb.x, %bb.bq, %bb.w, %bb.at, %bb.v, %bb.br, %bb.u, %bb.bf, %bb.t, %bb.bs, %bb.s, %bb.as, %bb.r, %bb.bt, %bb.q, %bb.bc, %bb.p, %bb.bu, %bb.o, %bb.ar, %bb.n, %bb.bv, %bb.m, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %.0123.lcssa.ph = phi i32 [ 16, %bb.bg ], [ 32, %bb.aq ], [ 24, %bb.ay ], [ 33, %bb.ap ], [ 15, %bb.bh ], [ 34, %bb.ao ], [ 22, %bb.ba ], [ 35, %bb.an ], [ 14, %bb.bi ], [ 36, %bb.am ], [ 25, %bb.ax ], [ 37, %bb.al ], [ 13, %bb.bj ], [ 38, %bb.ak ], [ 19, %bb.bd ], [ 39, %bb.aj ], [ 12, %bb.bk ], [ 40, %bb.ai ], [ 26, %bb.aw ], [ 41, %bb.ah ], [ 11, %bb.bl ], [ 42, %bb.ag ], [ 21, %bb.bb ], [ 43, %bb.af ], [ 10, %bb.bm ], [ 44, %bb.ae ], [ 27, %bb.av ], [ 45, %bb.ad ], [ 9, %bb.bn ], [ 46, %bb.ac ], [ 18, %bb.be ], [ 47, %bb.ab ], [ 8, %bb.bo ], [ 48, %bb.aa ], [ 28, %bb.au ], [ 49, %bb.z ], [ 7, %bb.bp ], [ 50, %bb.y ], [ 23, %bb.az ], [ 51, %bb.x ], [ 6, %bb.bq ], [ 52, %bb.w ], [ 29, %bb.at ], [ 53, %bb.v ], [ 5, %bb.br ], [ 54, %bb.u ], [ 17, %bb.bf ], [ 55, %bb.t ], [ 4, %bb.bs ], [ 56, %bb.s ], [ 30, %bb.as ], [ 57, %bb.r ], [ 3, %bb.bt ], [ 58, %bb.q ], [ 20, %bb.bc ], [ 59, %bb.p ], [ 2, %bb.bu ], [ 60, %bb.o ], [ 31, %bb.ar ], [ 61, %bb.n ], [ 1, %bb.bv ], [ 62, %bb.m ], [ 63, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit ] ; 2 uses
  %i.vk = zext i16 %i.x to i32
  %i.vl = zext i16 %i.v to i32
  %i.vm = getelementptr i8, ptr %0, i64 8         ; 6 uses
  %i.vn = zext nneg i32 %.0123.lcssa.ph to i64
  br label %.preheader

.critedge:                                        ; preds = %bb.bv
  %i.vo = load i32, ptr %1, align 4, !tbaa !23
  %i.vp = zext i16 %i.t to i32
  %i.vq = add nsw i32 %i.sz, %i.vp                ; 4 uses
  %i.vr = zext i16 %i.r to i32
  %i.vs = sub nsw i32 24, %i.vq
  %i.vt = shl i32 %i.vr, %i.vs
  %i.vu = or i32 %i.vt, %i.vo                     ; 2 uses
  %i.vv = icmp sgt i32 %i.vq, 7
  br i1 %i.vv, label %.lr.ph.i171, label %.sink.split

.lr.ph.i171:                                      ; preds = %.critedge
  %i.vw = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.lr.ph.i171
  %.02.i172 = phi i32 [ %i.vq, %.lr.ph.i171 ], [ %i.wc, %bb.by ] ; 2 uses
  %.0181.i173 = phi i32 [ %i.vu, %.lr.ph.i171 ], [ %i.wb, %bb.by ] ; 3 uses
  %i.vx = lshr i32 %.0181.i173, 16
  %i.vy = trunc i32 %i.vx to i8
  %.val20.i174 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i175 = load ptr, ptr %i.vw, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.vy, ptr %i.j, align 1, !tbaa !35
  call void %.val20.i174(ptr noundef %.val21.i175, ptr noundef nonnull %i.j, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.vz = and i32 %.0181.i173, 16711680
  %i.wa = icmp eq i32 %i.vz, 16711680
  br i1 %i.wa, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.val.i176 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i177 = load ptr, ptr %i.vw, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1, !tbaa !35
  call void %.val.i176(ptr noundef %.val19.i177, ptr noundef nonnull %i.i, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.wb = shl i32 %.0181.i173, 8                  ; 2 uses
  %i.wc = add nsw i32 %.02.i172, -8               ; 2 uses
  %i.wd = icmp sgt i32 %.02.i172, 15
  br i1 %i.wd, label %bb.bw, label %.sink.split, !llvm.loop !9

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210
  %i.we = phi i32 [ %i.sz, %.preheader.lr.ph ], [ %.0.lcssa.i202, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210 ] ; 2 uses
  %.0125262 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.yv, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210 ] ; 2 uses
  %i.wf = sext i32 %.0125262 to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.preheader
  %indvars.iv305 = phi i32 [ %indvars.iv.next306, %bb.bz ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %bb.bz ], [ %i.wf, %.preheader ] ; 4 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv302
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !23 ; 4 uses
  %i.wi = icmp eq i32 %i.wh, 0
  %i.wj = icmp sle i64 %indvars.iv302, %i.vn
  %i.wk = and i1 %i.wj, %i.wi
  %indvars.iv.next303 = add nsw i64 %indvars.iv302, 1
  %indvars.iv.next306 = add nuw i32 %indvars.iv305, 1
  br i1 %i.wk, label %bb.bz, label %bb.ca, !llvm.loop !612

bb.ca:                                            ; preds = %bb.bz
  %i.wl = trunc nsw i64 %indvars.iv302 to i32     ; 3 uses
  %i.wm = sub nsw i32 %i.wl, %.0125262            ; 3 uses
  %i.wn = icmp sgt i32 %i.wm, 15
  br i1 %i.wn, label %.lr.ph.preheader, label %bb.cd

.lr.ph.preheader:                                 ; preds = %bb.ca
  %i.wo = lshr i32 %indvars.iv305, 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188
  %i.wp = phi i32 [ %.0.lcssa.i180, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188 ], [ %i.we, %.lr.ph.preheader ]
  %.0260 = phi i32 [ %i.xd, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188 ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.wq = load i32, ptr %1, align 4, !tbaa !23
  %i.wr = add nsw i32 %i.wp, %i.vk                ; 4 uses
  %i.ws = sub nsw i32 24, %i.wr
  %i.wt = shl i32 %i.vl, %i.ws
  %i.wu = or i32 %i.wt, %i.wq                     ; 2 uses
  %i.wv = icmp sgt i32 %i.wr, 7
  br i1 %i.wv, label %.lr.ph.i181, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188

.lr.ph.i181:                                      ; preds = %.lr.ph, %bb.cc
  %.02.i182 = phi i32 [ %i.xb, %bb.cc ], [ %i.wr, %.lr.ph ] ; 2 uses
  %.0181.i183 = phi i32 [ %i.xa, %bb.cc ], [ %i.wu, %.lr.ph ] ; 3 uses
  %i.ww = lshr i32 %.0181.i183, 16
  %i.wx = trunc i32 %i.ww to i8
  %.val20.i184 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i185 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.wx, ptr %i.h, align 1, !tbaa !35
  call void %.val20.i184(ptr noundef %.val21.i185, ptr noundef nonnull %i.h, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.wy = and i32 %.0181.i183, 16711680
  %i.wz = icmp eq i32 %i.wy, 16711680
  br i1 %i.wz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i181
  %.val.i186 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i187 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1, !tbaa !35
  call void %.val.i186(ptr noundef %.val19.i187, ptr noundef nonnull %i.g, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i181
  %i.xa = shl i32 %.0181.i183, 8                  ; 2 uses
  %i.xb = add nsw i32 %.02.i182, -8               ; 2 uses
  %i.xc = icmp sgt i32 %.02.i182, 15
  br i1 %i.xc, label %.lr.ph.i181, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188: ; preds = %bb.cc, %.lr.ph
  %.018.lcssa.i179 = phi i32 [ %i.wu, %.lr.ph ], [ %i.xa, %bb.cc ]
  %.0.lcssa.i180 = phi i32 [ %i.wr, %.lr.ph ], [ %i.xb, %bb.cc ] ; 3 uses
  store i32 %.018.lcssa.i179, ptr %1, align 4, !tbaa !23
  store i32 %.0.lcssa.i180, ptr %2, align 4, !tbaa !23
  %i.xd = add nuw nsw i32 %.0260, 1
  %exitcond307.not = icmp eq i32 %.0260, %i.wo
  br i1 %exitcond307.not, label %._crit_edge, label %.lr.ph, !llvm.loop !613

._crit_edge:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit188
  %i.xe = and i32 %i.wm, 15
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge, %bb.ca
  %i.xf = phi i32 [ %.0.lcssa.i180, %._crit_edge ], [ %i.we, %bb.ca ]
  %.0119 = phi i32 [ %i.xe, %._crit_edge ], [ %i.wm, %bb.ca ]
  %i.xg = call i32 @llvm.abs.i32(i32 %i.wh, i1 true)
  %i.xh = lshr i32 %i.xg, 1
  %i.xi = call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.xh, i1 false)
  %i.xj = sub nuw nsw i32 33, %i.xi               ; 3 uses
  %.lobit.i189 = ashr i32 %i.wh, 31
  %i.xk = add nsw i32 %.lobit.i189, %i.wh
  %notmask.i190 = shl nsw i32 -1, %i.xj
  %i.xl = xor i32 %notmask.i190, -1
  %i.xm = shl i32 %.0119, 4
  %i.xn = add nsw i32 %i.xm, %i.xj
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [4 x i8], ptr %8, i64 %i.xo ; 2 uses
  %.val137 = load i16, ptr %i.xp, align 2, !tbaa !41
  %i.xq = getelementptr i8, ptr %i.xp, i64 2
  %.val138 = load i16, ptr %i.xq, align 2, !tbaa !41
  %i.xr = load i32, ptr %1, align 4, !tbaa !23
  %i.xs = zext i16 %.val138 to i32
  %i.xt = add nsw i32 %i.xf, %i.xs                ; 4 uses
  %i.xu = zext i16 %.val137 to i32
  %i.xv = sub nsw i32 24, %i.xt
  %i.xw = shl i32 %i.xu, %i.xv
  %i.xx = or i32 %i.xw, %i.xr                     ; 2 uses
  %i.xy = icmp sgt i32 %i.xt, 7
  br i1 %i.xy, label %.lr.ph.i193, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200

.lr.ph.i193:                                      ; preds = %bb.cd, %bb.cf
  %.02.i194 = phi i32 [ %i.ye, %bb.cf ], [ %i.xt, %bb.cd ] ; 2 uses
  %.0181.i195 = phi i32 [ %i.yd, %bb.cf ], [ %i.xx, %bb.cd ] ; 3 uses
  %i.xz = lshr i32 %.0181.i195, 16
  %i.ya = trunc i32 %i.xz to i8
  %.val20.i196 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i197 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.ya, ptr %i.f, align 1, !tbaa !35
  call void %.val20.i196(ptr noundef %.val21.i197, ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.yb = and i32 %.0181.i195, 16711680
  %i.yc = icmp eq i32 %i.yb, 16711680
  br i1 %i.yc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i193
  %.val.i198 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i199 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !35
  call void %.val.i198(ptr noundef %.val19.i199, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i193
  %i.yd = shl i32 %.0181.i195, 8                  ; 2 uses
  %i.ye = add nsw i32 %.02.i194, -8               ; 2 uses
  %i.yf = icmp samesign ugt i32 %.02.i194, 15
  br i1 %i.yf, label %.lr.ph.i193, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200: ; preds = %bb.cf, %bb.cd
  %.018.lcssa.i191 = phi i32 [ %i.xx, %bb.cd ], [ %i.yd, %bb.cf ]
  %.0.lcssa.i192 = phi i32 [ %i.xt, %bb.cd ], [ %i.ye, %bb.cf ] ; 2 uses
  store i32 %.018.lcssa.i191, ptr %1, align 4, !tbaa !23
  store i32 %.0.lcssa.i192, ptr %2, align 4, !tbaa !23
  %i.yg = load i32, ptr %1, align 4, !tbaa !23
  %i.yh = add nsw i32 %.0.lcssa.i192, %i.xj       ; 4 uses
  %i.yi = and i32 %i.xk, 65535
  %i.yj = and i32 %i.yi, %i.xl
  %i.yk = sub nsw i32 24, %i.yh
  %i.yl = shl i32 %i.yj, %i.yk
  %i.ym = or i32 %i.yl, %i.yg                     ; 2 uses
  %i.yn = icmp sgt i32 %i.yh, 7
  br i1 %i.yn, label %.lr.ph.i203, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210

.lr.ph.i203:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200, %bb.ch
  %.02.i204 = phi i32 [ %i.yt, %bb.ch ], [ %i.yh, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200 ] ; 2 uses
  %.0181.i205 = phi i32 [ %i.ys, %bb.ch ], [ %i.ym, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200 ] ; 3 uses
  %i.yo = lshr i32 %.0181.i205, 16
  %i.yp = trunc i32 %i.yo to i8
  %.val20.i206 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i207 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.yp, ptr %i.d, align 1, !tbaa !35
  call void %.val20.i206(ptr noundef %.val21.i207, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.yq = and i32 %.0181.i205, 16711680
  %i.yr = icmp eq i32 %i.yq, 16711680
  br i1 %i.yr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i203
  %.val.i208 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i209 = load ptr, ptr %i.vm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !35
  call void %.val.i208(ptr noundef %.val19.i209, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i203
  %i.ys = shl i32 %.0181.i205, 8                  ; 2 uses
  %i.yt = add nsw i32 %.02.i204, -8               ; 2 uses
  %i.yu = icmp samesign ugt i32 %.02.i204, 15
  br i1 %i.yu, label %.lr.ph.i203, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210: ; preds = %bb.ch, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200
  %.018.lcssa.i201 = phi i32 [ %i.ym, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200 ], [ %i.ys, %bb.ch ]
  %.0.lcssa.i202 = phi i32 [ %i.yh, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit200 ], [ %i.yt, %bb.ch ] ; 3 uses
  store i32 %.018.lcssa.i201, ptr %1, align 4, !tbaa !23
  store i32 %.0.lcssa.i202, ptr %2, align 4, !tbaa !23
  %i.yv = add nsw i32 %i.wl, 1
  %.not.not = icmp sgt i32 %.0123.lcssa.ph, %i.wl
  br i1 %.not.not, label %.preheader, label %._crit_edge263, !llvm.loop !614

._crit_edge263:                                   ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit210
  br i1 %.not.a, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %._crit_edge263
  %i.yw = load i32, ptr %1, align 4, !tbaa !23
  %i.yx = zext i16 %i.t to i32
  %i.yy = add nsw i32 %.0.lcssa.i202, %i.yx       ; 4 uses
  %i.yz = zext i16 %i.r to i32
  %i.za = sub nsw i32 24, %i.yy
  %i.zb = shl i32 %i.yz, %i.za
  %i.zc = or i32 %i.zb, %i.yw                     ; 2 uses
  %i.zd = icmp sgt i32 %i.yy, 7
  br i1 %i.zd, label %.lr.ph.i213, label %.sink.split

.lr.ph.i213:                                      ; preds = %bb.ci
  %i.ze = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph.i213
  %.02.i214 = phi i32 [ %i.yy, %.lr.ph.i213 ], [ %i.zk, %bb.cl ] ; 2 uses
  %.0181.i215 = phi i32 [ %i.zc, %.lr.ph.i213 ], [ %i.zj, %bb.cl ] ; 3 uses
  %i.zf = lshr i32 %.0181.i215, 16
  %i.zg = trunc i32 %i.zf to i8
  %.val20.i216 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i217 = load ptr, ptr %i.ze, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.zg, ptr %i.b, align 1, !tbaa !35
  call void %.val20.i216(ptr noundef %.val21.i217, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.zh = and i32 %.0181.i215, 16711680
  %i.zi = icmp eq i32 %i.zh, 16711680
  br i1 %i.zi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val.i218 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i219 = load ptr, ptr %i.ze, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !35
  call void %.val.i218(ptr noundef %.val19.i219, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.zj = shl i32 %.0181.i215, 8                  ; 2 uses
  %i.zk = add nsw i32 %.02.i214, -8               ; 2 uses
  %i.zl = icmp sgt i32 %.02.i214, 15
  br i1 %i.zl, label %bb.cj, label %.sink.split, !llvm.loop !9

.sink.split:                                      ; preds = %bb.cl, %bb.by, %bb.ci, %.critedge
  %.018.lcssa.i211.sink = phi i32 [ %i.wb, %bb.by ], [ %i.vu, %.critedge ], [ %i.zc, %bb.ci ], [ %i.zj, %bb.cl ]
  %.0.lcssa.i212.sink = phi i32 [ %i.wc, %bb.by ], [ %i.vq, %.critedge ], [ %i.yy, %bb.ci ], [ %i.zk, %bb.cl ]
  store i32 %.018.lcssa.i211.sink, ptr %1, align 4, !tbaa !23
  store i32 %.0.lcssa.i212.sink, ptr %2, align 4, !tbaa !23
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #36
  ret i32 %i.fv
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_jpg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 3 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %6, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !115
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi(ptr noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Mat") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  switch i32 %2, label %bb.c [
    i32 -1, label %.thread
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.b
  %.025 = phi i32 [ 3, %bb.b ], [ 1, %bb.a ]      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.g = load ptr, ptr %1, align 8, !tbaa !120
  %i.h = call ptr @stbi_load(ptr noundef %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %.025) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.i = load ptr, ptr %1, align 8, !tbaa !120
  %i.j = call ptr @stbi_load(ptr noundef %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) ; 2 uses
  %.not66 = icmp eq ptr %i.j, null
  br i1 %.not66, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %_ZN2cv3MatD2Ev.exit51

thread-pre-split:                                 ; preds = %.thread
  %.pr = load i32, ptr %i.f, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %thread-pre-split
  %.pr71 = phi i32 [ %.pr, %thread-pre-split ], [ %.025, %bb.d ] ; 5 uses
  %i.k = phi ptr [ %i.j, %thread-pre-split ], [ %i.h, %bb.d ] ; 3 uses
  switch i32 %.pr71, label %.thread72 [
    i32 1, label %_ZN2cv3Mat7releaseEv.exit.i
    i32 3, label %_ZN2cv3Mat7releaseEv.exit.i33
    i32 4, label %_ZN2cv3Mat7releaseEv.exit.i41
  ]

_ZN2cv3Mat7releaseEv.exit.i:                      ; preds = %bb.f
  %i.l = load i32, ptr %i.e, align 4, !tbaa !23   ; 3 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %i.p = mul nsw i64 %i.n, %i.o                   ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN2cv3Mat6createEiii.exit, label %._ZN4ncnnL10fastMallocEm.exit_crit_edge.i

._ZN4ncnnL10fastMallocEm.exit_crit_edge.i:        ; preds = %_ZN2cv3Mat7releaseEv.exit.i
  %i.q = add nsw i64 %i.p, 3
  %i.r = and i64 %i.q, -4                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %i.s = add i64 %i.r, 68
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 64, i64 noundef %i.s) #36 ; 0 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.r ; 2 uses
  store i32 1, ptr %i.u, align 4, !tbaa !23
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat7releaseEv.exit.i33:                    ; preds = %bb.f
  %i.v = load i32, ptr %i.e, align 4, !tbaa !23   ; 3 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = sext i32 %i.v to i64                     ; 3 uses
  %i.z = mul nsw i64 %i.x, %i.y                   ; 2 uses
  %.not.i34 = icmp eq i64 %i.z, 0
  br i1 %.not.i34, label %_ZN2cv3Mat6createEiii.exit, label %._ZN4ncnnL10fastMallocEm.exit_crit_edge.i35

._ZN4ncnnL10fastMallocEm.exit_crit_edge.i35:      ; preds = %_ZN2cv3Mat7releaseEv.exit.i33
  %i.aa = mul i64 %i.z, 3
  %i.ab = add i64 %i.aa, 3
  %i.ac = and i64 %i.ab, -4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.ad = add i64 %i.ac, 68
  %i.ae = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef %i.ad) #36 ; 0 uses
  %.pre.i37 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i37, i64 %i.ac ; 2 uses
  store i32 1, ptr %i.af, align 4, !tbaa !23
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat7releaseEv.exit.i41:                    ; preds = %bb.f
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !23  ; 3 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !23  ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = sext i32 %i.ag to i64                   ; 3 uses
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = mul i64 %i.ak, %i.ai                    ; 3 uses
  %.not.i42 = icmp eq i64 %i.al, 0
  br i1 %.not.i42, label %_ZN2cv3Mat6createEiii.exit, label %._ZN4ncnnL10fastMallocEm.exit_crit_edge.i43

._ZN4ncnnL10fastMallocEm.exit_crit_edge.i43:      ; preds = %_ZN2cv3Mat7releaseEv.exit.i41
end_hunk_2
