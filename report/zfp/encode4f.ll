Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4f?download=true
inline.NumInlined: 61
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 49
begin_hunk_0_@zfp_encode_block_float_4:bb.a
  %i.bff = ashr i32 %i.bfe, 1                     ; 2 uses
  %i.bfg = sub nsw i32 %i.bfc, %i.bff
  %i.bfh = add nsw i32 %i.bfa, %i.bfd
  %i.bfi = ashr i32 %i.bfh, 1                     ; 2 uses
  %i.bfj = sub nsw i32 %i.bfd, %i.bfi             ; 2 uses
  %i.bfk = ashr i32 %i.bfj, 1
  %i.bfl = add nsw i32 %i.bfk, %i.bfi             ; 2 uses
  %i.bfm = ashr i32 %i.bfl, 1
  %i.bfn = sub nsw i32 %i.bfj, %i.bfm
  store i32 %i.bfl, ptr %i.bew, align 4, !tbaa !12
  store i32 %i.bfg, ptr %i.beu, align 4, !tbaa !12
  store i32 %i.bfn, ptr %i.bes, align 4, !tbaa !12
  store i32 %i.bff, ptr %gep69.1.i.i.i, align 4, !tbaa !12
  %gep69.2.i.i.i = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 128 ; 2 uses
  %i.bfo = load i32, ptr %gep69.2.i.i.i, align 4, !tbaa !12
  %i.bfp = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 144 ; 2 uses
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !12 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 160 ; 2 uses
  %i.bfs = load i32, ptr %i.bfr, align 4, !tbaa !12
  %i.bft = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 176 ; 2 uses
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !12 ; 2 uses
  %i.bfv = add nsw i32 %i.bfu, %i.bfo
  %i.bfw = ashr i32 %i.bfv, 1                     ; 2 uses
  %i.bfx = sub i32 %i.bfu, %i.bfw
  %i.bfy = add nsw i32 %i.bfs, %i.bfq
  %i.bfz = ashr i32 %i.bfy, 1                     ; 3 uses
  %i.bga = sub nsw i32 %i.bfq, %i.bfz             ; 2 uses
  %i.bgb = add nsw i32 %i.bfw, %i.bfz
  %i.bgc = ashr i32 %i.bgb, 1                     ; 2 uses
  %i.bgd = sub nsw i32 %i.bfz, %i.bgc
  %i.bge = add nsw i32 %i.bfx, %i.bga
  %i.bgf = ashr i32 %i.bge, 1                     ; 2 uses
  %i.bgg = sub nsw i32 %i.bga, %i.bgf             ; 2 uses
  %i.bgh = ashr i32 %i.bgg, 1
  %i.bgi = add nsw i32 %i.bgh, %i.bgf             ; 2 uses
  %i.bgj = ashr i32 %i.bgi, 1
  %i.bgk = sub nsw i32 %i.bgg, %i.bgj
  store i32 %i.bgi, ptr %i.bft, align 4, !tbaa !12
  store i32 %i.bgd, ptr %i.bfr, align 4, !tbaa !12
  store i32 %i.bgk, ptr %i.bfp, align 4, !tbaa !12
  store i32 %i.bgc, ptr %gep69.2.i.i.i, align 4, !tbaa !12
  %gep69.3.i.i.i = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 192 ; 2 uses
  %i.bgl = load i32, ptr %gep69.3.i.i.i, align 4, !tbaa !12
  %i.bgm = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 208 ; 2 uses
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !12 ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 224 ; 2 uses
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !12
  %i.bgq = getelementptr inbounds nuw i8, ptr %gep72.i.i.i, i64 240 ; 2 uses
  %i.bgr = load i32, ptr %i.bgq, align 4, !tbaa !12 ; 2 uses
  %i.bgs = add nsw i32 %i.bgr, %i.bgl
  %i.bgt = ashr i32 %i.bgs, 1                     ; 2 uses
  %i.bgu = sub i32 %i.bgr, %i.bgt
  %i.bgv = add nsw i32 %i.bgp, %i.bgn
  %i.bgw = ashr i32 %i.bgv, 1                     ; 3 uses
  %i.bgx = sub nsw i32 %i.bgn, %i.bgw             ; 2 uses
  %i.bgy = add nsw i32 %i.bgt, %i.bgw
  %i.bgz = ashr i32 %i.bgy, 1                     ; 2 uses
  %i.bha = sub nsw i32 %i.bgw, %i.bgz
  %i.bhb = add nsw i32 %i.bgu, %i.bgx
  %i.bhc = ashr i32 %i.bhb, 1                     ; 2 uses
  %i.bhd = sub nsw i32 %i.bgx, %i.bhc             ; 2 uses
  %i.bhe = ashr i32 %i.bhd, 1
  %i.bhf = add nsw i32 %i.bhe, %i.bhc             ; 2 uses
  %i.bhg = ashr i32 %i.bhf, 1
  %i.bhh = sub nsw i32 %i.bhd, %i.bhg
  store i32 %i.bhf, ptr %i.bgq, align 4, !tbaa !12
  store i32 %i.bha, ptr %i.bgo, align 4, !tbaa !12
  store i32 %i.bhh, ptr %i.bgm, align 4, !tbaa !12
  store i32 %i.bgz, ptr %gep69.3.i.i.i, align 4, !tbaa !12
  %indvars.iv.next102.i.i.i = add nuw nsw i64 %indvars.iv101.i.i.i, 1 ; 2 uses
  %exitcond104.not.i.i.i = icmp eq i64 %indvars.iv.next102.i.i.i, 4
  br i1 %exitcond104.not.i.i.i, label %bb.s, label %.preheader56.i.i.i

bb.s:                                             ; preds = %.preheader56.i.i.i
  %indvars.iv.next106.i.i.i = add nuw nsw i64 %indvars.iv105.i.i.i, 1 ; 2 uses
  %exitcond108.not.i.i.i = icmp eq i64 %indvars.iv.next106.i.i.i, 4
  br i1 %exitcond108.not.i.i.i, label %.preheader54.i.i.i, label %.preheader57.i.i.i

.preheader54.i.i.i:                               ; preds = %bb.s, %.preheader54.i.i.i
  %indvars.iv117.i.i.i = phi i64 [ %indvars.iv.next118.i.i.i, %.preheader54.i.i.i ], [ 0, %bb.s ] ; 2 uses
  %invariant.gep79.idx.i.i.i = shl nuw nsw i64 %indvars.iv117.i.i.i, 4
  %invariant.gep79.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %invariant.gep79.idx.i.i.i ; 17 uses
  %wide.load418 = load <4 x i32>, ptr %invariant.gep79.i.i.i, align 16, !tbaa !12
  %i.bhi = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 64 ; 2 uses
  %wide.load419 = load <4 x i32>, ptr %i.bhi, align 16, !tbaa !12 ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 128 ; 2 uses
  %wide.load420 = load <4 x i32>, ptr %i.bhj, align 16, !tbaa !12
  %i.bhk = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 192 ; 2 uses
  %wide.load421 = load <4 x i32>, ptr %i.bhk, align 16, !tbaa !12 ; 2 uses
  %i.bhl = add nsw <4 x i32> %wide.load421, %wide.load418
  %i.bhm = ashr <4 x i32> %i.bhl, splat (i32 1)   ; 2 uses
  %i.bhn = sub <4 x i32> %wide.load421, %i.bhm
  %i.bho = add nsw <4 x i32> %wide.load420, %wide.load419
  %i.bhp = ashr <4 x i32> %i.bho, splat (i32 1)   ; 3 uses
  %i.bhq = sub nsw <4 x i32> %wide.load419, %i.bhp ; 2 uses
  %i.bhr = add nsw <4 x i32> %i.bhm, %i.bhp
  %i.bhs = ashr <4 x i32> %i.bhr, splat (i32 1)   ; 2 uses
  %i.bht = sub nsw <4 x i32> %i.bhp, %i.bhs
  %i.bhu = add nsw <4 x i32> %i.bhn, %i.bhq
  %i.bhv = ashr <4 x i32> %i.bhu, splat (i32 1)   ; 2 uses
  %i.bhw = sub nsw <4 x i32> %i.bhq, %i.bhv       ; 2 uses
  %i.bhx = ashr <4 x i32> %i.bhw, splat (i32 1)
  %i.bhy = add nsw <4 x i32> %i.bhx, %i.bhv       ; 2 uses
  %i.bhz = ashr <4 x i32> %i.bhy, splat (i32 1)
  %i.bia = sub nsw <4 x i32> %i.bhw, %i.bhz
  store <4 x i32> %i.bhy, ptr %i.bhk, align 16, !tbaa !12
  store <4 x i32> %i.bht, ptr %i.bhj, align 16, !tbaa !12
  store <4 x i32> %i.bia, ptr %i.bhi, align 16, !tbaa !12
  store <4 x i32> %i.bhs, ptr %invariant.gep79.i.i.i, align 16, !tbaa !12
  %i.bib = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 256 ; 2 uses
  %wide.load422 = load <4 x i32>, ptr %i.bib, align 16, !tbaa !12
  %i.bic = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 320 ; 2 uses
  %wide.load423 = load <4 x i32>, ptr %i.bic, align 16, !tbaa !12 ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 384 ; 2 uses
  %wide.load424 = load <4 x i32>, ptr %i.bid, align 16, !tbaa !12
  %i.bie = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 448 ; 2 uses
  %wide.load425 = load <4 x i32>, ptr %i.bie, align 16, !tbaa !12 ; 2 uses
  %i.bif = add nsw <4 x i32> %wide.load425, %wide.load422
  %i.big = ashr <4 x i32> %i.bif, splat (i32 1)   ; 2 uses
  %i.bih = sub <4 x i32> %wide.load425, %i.big
  %i.bii = add nsw <4 x i32> %wide.load424, %wide.load423
  %i.bij = ashr <4 x i32> %i.bii, splat (i32 1)   ; 3 uses
  %i.bik = sub nsw <4 x i32> %wide.load423, %i.bij ; 2 uses
  %i.bil = add nsw <4 x i32> %i.big, %i.bij
  %i.bim = ashr <4 x i32> %i.bil, splat (i32 1)   ; 2 uses
  %i.bin = sub nsw <4 x i32> %i.bij, %i.bim
  %i.bio = add nsw <4 x i32> %i.bih, %i.bik
  %i.bip = ashr <4 x i32> %i.bio, splat (i32 1)   ; 2 uses
  %i.biq = sub nsw <4 x i32> %i.bik, %i.bip       ; 2 uses
  %i.bir = ashr <4 x i32> %i.biq, splat (i32 1)
  %i.bis = add nsw <4 x i32> %i.bir, %i.bip       ; 2 uses
  %i.bit = ashr <4 x i32> %i.bis, splat (i32 1)
  %i.biu = sub nsw <4 x i32> %i.biq, %i.bit
  store <4 x i32> %i.bis, ptr %i.bie, align 16, !tbaa !12
  store <4 x i32> %i.bin, ptr %i.bid, align 16, !tbaa !12
  store <4 x i32> %i.biu, ptr %i.bic, align 16, !tbaa !12
  store <4 x i32> %i.bim, ptr %i.bib, align 16, !tbaa !12
  %i.biv = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 512 ; 2 uses
  %wide.load426 = load <4 x i32>, ptr %i.biv, align 16, !tbaa !12
  %i.biw = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 576 ; 2 uses
  %wide.load427 = load <4 x i32>, ptr %i.biw, align 16, !tbaa !12 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 640 ; 2 uses
  %wide.load428 = load <4 x i32>, ptr %i.bix, align 16, !tbaa !12
  %i.biy = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 704 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %i.biy, align 16, !tbaa !12 ; 2 uses
  %i.biz = add nsw <4 x i32> %wide.load429, %wide.load426
  %i.bja = ashr <4 x i32> %i.biz, splat (i32 1)   ; 2 uses
  %i.bjb = sub <4 x i32> %wide.load429, %i.bja
  %i.bjc = add nsw <4 x i32> %wide.load428, %wide.load427
  %i.bjd = ashr <4 x i32> %i.bjc, splat (i32 1)   ; 3 uses
  %i.bje = sub nsw <4 x i32> %wide.load427, %i.bjd ; 2 uses
  %i.bjf = add nsw <4 x i32> %i.bja, %i.bjd
  %i.bjg = ashr <4 x i32> %i.bjf, splat (i32 1)   ; 2 uses
  %i.bjh = sub nsw <4 x i32> %i.bjd, %i.bjg
  %i.bji = add nsw <4 x i32> %i.bjb, %i.bje
  %i.bjj = ashr <4 x i32> %i.bji, splat (i32 1)   ; 2 uses
  %i.bjk = sub nsw <4 x i32> %i.bje, %i.bjj       ; 2 uses
  %i.bjl = ashr <4 x i32> %i.bjk, splat (i32 1)
  %i.bjm = add nsw <4 x i32> %i.bjl, %i.bjj       ; 2 uses
  %i.bjn = ashr <4 x i32> %i.bjm, splat (i32 1)
  %i.bjo = sub nsw <4 x i32> %i.bjk, %i.bjn
  store <4 x i32> %i.bjm, ptr %i.biy, align 16, !tbaa !12
  store <4 x i32> %i.bjh, ptr %i.bix, align 16, !tbaa !12
  store <4 x i32> %i.bjo, ptr %i.biw, align 16, !tbaa !12
  store <4 x i32> %i.bjg, ptr %i.biv, align 16, !tbaa !12
  %i.bjp = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 768 ; 2 uses
  %wide.load430 = load <4 x i32>, ptr %i.bjp, align 16, !tbaa !12
  %i.bjq = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 832 ; 2 uses
  %wide.load431 = load <4 x i32>, ptr %i.bjq, align 16, !tbaa !12 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 896 ; 2 uses
  %wide.load432 = load <4 x i32>, ptr %i.bjr, align 16, !tbaa !12
  %i.bjs = getelementptr inbounds nuw i8, ptr %invariant.gep79.i.i.i, i64 960 ; 2 uses
  %wide.load433 = load <4 x i32>, ptr %i.bjs, align 16, !tbaa !12 ; 2 uses
  %i.bjt = add nsw <4 x i32> %wide.load433, %wide.load430
  %i.bju = ashr <4 x i32> %i.bjt, splat (i32 1)   ; 2 uses
  %i.bjv = sub <4 x i32> %wide.load433, %i.bju
  %i.bjw = add nsw <4 x i32> %wide.load432, %wide.load431
  %i.bjx = ashr <4 x i32> %i.bjw, splat (i32 1)   ; 3 uses
  %i.bjy = sub nsw <4 x i32> %wide.load431, %i.bjx ; 2 uses
  %i.bjz = add nsw <4 x i32> %i.bju, %i.bjx
  %i.bka = ashr <4 x i32> %i.bjz, splat (i32 1)   ; 2 uses
  %i.bkb = sub nsw <4 x i32> %i.bjx, %i.bka
  %i.bkc = add nsw <4 x i32> %i.bjv, %i.bjy
  %i.bkd = ashr <4 x i32> %i.bkc, splat (i32 1)   ; 2 uses
  %i.bke = sub nsw <4 x i32> %i.bjy, %i.bkd       ; 2 uses
  %i.bkf = ashr <4 x i32> %i.bke, splat (i32 1)
  %i.bkg = add nsw <4 x i32> %i.bkf, %i.bkd       ; 2 uses
  %i.bkh = ashr <4 x i32> %i.bkg, splat (i32 1)
  %i.bki = sub nsw <4 x i32> %i.bke, %i.bkh
  store <4 x i32> %i.bkg, ptr %i.bjs, align 16, !tbaa !12
  store <4 x i32> %i.bkb, ptr %i.bjr, align 16, !tbaa !12
  store <4 x i32> %i.bki, ptr %i.bjq, align 16, !tbaa !12
  store <4 x i32> %i.bka, ptr %i.bjp, align 16, !tbaa !12
  %indvars.iv.next118.i.i.i = add nuw nsw i64 %indvars.iv117.i.i.i, 1 ; 2 uses
  %exitcond120.not.i.i.i = icmp eq i64 %indvars.iv.next118.i.i.i, 4
  br i1 %exitcond120.not.i.i.i, label %.preheader51.i.i.i, label %.preheader54.i.i.i

.preheader51.i.i.i:                               ; preds = %.preheader54.i.i.i, %.preheader51.i.i.i
  %indvars.iv129.i.i.i = phi i64 [ %indvars.iv.next130.i.i.i, %.preheader51.i.i.i ], [ 0, %.preheader54.i.i.i ] ; 2 uses
  %invariant.gep87.idx.i.i.i = shl nuw nsw i64 %indvars.iv129.i.i.i, 6
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.c, i64 %invariant.gep87.idx.i.i.i ; 17 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 256 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkj, i64 512 ; 2 uses
  %gep85.2.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.bkj, i64 768 ; 2 uses
  %i.bkm = load <4 x i32>, ptr %i.bkj, align 64, !tbaa !12
  %i.bkn = load <4 x i32>, ptr %i.bkk, align 64, !tbaa !12 ; 2 uses
  %i.bko = load <4 x i32>, ptr %i.bkl, align 64, !tbaa !12
  %i.bkp = load <4 x i32>, ptr %gep85.2.i.i.i18, align 64, !tbaa !12 ; 2 uses
  %i.bkq = add nsw <4 x i32> %i.bkp, %i.bkm
  %i.bkr = ashr <4 x i32> %i.bkq, splat (i32 1)   ; 2 uses
  %i.bks = add nsw <4 x i32> %i.bko, %i.bkn
  %i.bkt = ashr <4 x i32> %i.bks, splat (i32 1)   ; 3 uses
  %i.bku = sub <4 x i32> %i.bkp, %i.bkr
  %i.bkv = sub nsw <4 x i32> %i.bkn, %i.bkt       ; 2 uses
  %i.bkw = add nsw <4 x i32> %i.bku, %i.bkv
  %i.bkx = ashr <4 x i32> %i.bkw, splat (i32 1)   ; 2 uses
  %i.bky = sub nsw <4 x i32> %i.bkv, %i.bkx       ; 2 uses
  %i.bkz = ashr <4 x i32> %i.bky, splat (i32 1)
  %i.bla = add nsw <4 x i32> %i.bkz, %i.bkx       ; 2 uses
  %i.blb = ashr <4 x i32> %i.bla, splat (i32 1)
  %i.blc = sub nsw <4 x i32> %i.bky, %i.blb
  store <4 x i32> %i.bla, ptr %gep85.2.i.i.i18, align 64, !tbaa !12
  %i.bld = add nsw <4 x i32> %i.bkr, %i.bkt
  %i.ble = ashr <4 x i32> %i.bld, splat (i32 1)   ; 2 uses
  %i.blf = sub nsw <4 x i32> %i.bkt, %i.ble
  store <4 x i32> %i.blf, ptr %i.bkl, align 64, !tbaa !12
  store <4 x i32> %i.blc, ptr %i.bkk, align 64, !tbaa !12
  store <4 x i32> %i.ble, ptr %i.bkj, align 64, !tbaa !12
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkj, i64 16 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bkj, i64 272 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bkj, i64 528 ; 2 uses
  %gep85.2.i.i.i18.1 = getelementptr inbounds nuw i8, ptr %i.bkj, i64 784 ; 2 uses
  %i.blj = load <4 x i32>, ptr %i.blg, align 16, !tbaa !12
  %i.blk = load <4 x i32>, ptr %i.blh, align 16, !tbaa !12 ; 2 uses
  %i.bll = load <4 x i32>, ptr %i.bli, align 16, !tbaa !12
  %i.blm = load <4 x i32>, ptr %gep85.2.i.i.i18.1, align 16, !tbaa !12 ; 2 uses
  %i.bln = add nsw <4 x i32> %i.blm, %i.blj
  %i.blo = ashr <4 x i32> %i.bln, splat (i32 1)   ; 2 uses
  %i.blp = add nsw <4 x i32> %i.bll, %i.blk
  %i.blq = ashr <4 x i32> %i.blp, splat (i32 1)   ; 3 uses
  %i.blr = sub <4 x i32> %i.blm, %i.blo
  %i.bls = sub nsw <4 x i32> %i.blk, %i.blq       ; 2 uses
  %i.blt = add nsw <4 x i32> %i.blr, %i.bls
  %i.blu = ashr <4 x i32> %i.blt, splat (i32 1)   ; 2 uses
  %i.blv = sub nsw <4 x i32> %i.bls, %i.blu       ; 2 uses
  %i.blw = ashr <4 x i32> %i.blv, splat (i32 1)
  %i.blx = add nsw <4 x i32> %i.blw, %i.blu       ; 2 uses
  %i.bly = ashr <4 x i32> %i.blx, splat (i32 1)
  %i.blz = sub nsw <4 x i32> %i.blv, %i.bly
  store <4 x i32> %i.blx, ptr %gep85.2.i.i.i18.1, align 16, !tbaa !12
  %i.bma = add nsw <4 x i32> %i.blo, %i.blq
  %i.bmb = ashr <4 x i32> %i.bma, splat (i32 1)   ; 2 uses
  %i.bmc = sub nsw <4 x i32> %i.blq, %i.bmb
  store <4 x i32> %i.bmc, ptr %i.bli, align 16, !tbaa !12
  store <4 x i32> %i.blz, ptr %i.blh, align 16, !tbaa !12
  store <4 x i32> %i.bmb, ptr %i.blg, align 16, !tbaa !12
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bkj, i64 32 ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bkj, i64 288 ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bkj, i64 544 ; 2 uses
  %gep85.2.i.i.i18.2 = getelementptr inbounds nuw i8, ptr %i.bkj, i64 800 ; 2 uses
  %i.bmg = load <4 x i32>, ptr %i.bmd, align 32, !tbaa !12
  %i.bmh = load <4 x i32>, ptr %i.bme, align 32, !tbaa !12 ; 2 uses
  %i.bmi = load <4 x i32>, ptr %i.bmf, align 32, !tbaa !12
  %i.bmj = load <4 x i32>, ptr %gep85.2.i.i.i18.2, align 32, !tbaa !12 ; 2 uses
  %i.bmk = add nsw <4 x i32> %i.bmj, %i.bmg
  %i.bml = ashr <4 x i32> %i.bmk, splat (i32 1)   ; 2 uses
  %i.bmm = add nsw <4 x i32> %i.bmi, %i.bmh
  %i.bmn = ashr <4 x i32> %i.bmm, splat (i32 1)   ; 3 uses
  %i.bmo = sub <4 x i32> %i.bmj, %i.bml
  %i.bmp = sub nsw <4 x i32> %i.bmh, %i.bmn       ; 2 uses
  %i.bmq = add nsw <4 x i32> %i.bmo, %i.bmp
  %i.bmr = ashr <4 x i32> %i.bmq, splat (i32 1)   ; 2 uses
  %i.bms = sub nsw <4 x i32> %i.bmp, %i.bmr       ; 2 uses
  %i.bmt = ashr <4 x i32> %i.bms, splat (i32 1)
  %i.bmu = add nsw <4 x i32> %i.bmt, %i.bmr       ; 2 uses
  %i.bmv = ashr <4 x i32> %i.bmu, splat (i32 1)
  %i.bmw = sub nsw <4 x i32> %i.bms, %i.bmv
  store <4 x i32> %i.bmu, ptr %gep85.2.i.i.i18.2, align 32, !tbaa !12
  %i.bmx = add nsw <4 x i32> %i.bml, %i.bmn
  %i.bmy = ashr <4 x i32> %i.bmx, splat (i32 1)   ; 2 uses
  %i.bmz = sub nsw <4 x i32> %i.bmn, %i.bmy
  store <4 x i32> %i.bmz, ptr %i.bmf, align 32, !tbaa !12
  store <4 x i32> %i.bmw, ptr %i.bme, align 32, !tbaa !12
  store <4 x i32> %i.bmy, ptr %i.bmd, align 32, !tbaa !12
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bkj, i64 48 ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bkj, i64 304 ; 2 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bkj, i64 560 ; 2 uses
  %gep85.2.i.i.i18.3 = getelementptr inbounds nuw i8, ptr %i.bkj, i64 816 ; 2 uses
  %i.bnd = load <4 x i32>, ptr %i.bna, align 16, !tbaa !12
  %i.bne = load <4 x i32>, ptr %i.bnb, align 16, !tbaa !12 ; 2 uses
  %i.bnf = load <4 x i32>, ptr %i.bnc, align 16, !tbaa !12
  %i.bng = load <4 x i32>, ptr %gep85.2.i.i.i18.3, align 16, !tbaa !12 ; 2 uses
  %i.bnh = add nsw <4 x i32> %i.bng, %i.bnd
  %i.bni = ashr <4 x i32> %i.bnh, splat (i32 1)   ; 2 uses
  %i.bnj = add nsw <4 x i32> %i.bnf, %i.bne
  %i.bnk = ashr <4 x i32> %i.bnj, splat (i32 1)   ; 3 uses
  %i.bnl = sub <4 x i32> %i.bng, %i.bni
  %i.bnm = sub nsw <4 x i32> %i.bne, %i.bnk       ; 2 uses
  %i.bnn = add nsw <4 x i32> %i.bnl, %i.bnm
  %i.bno = ashr <4 x i32> %i.bnn, splat (i32 1)   ; 2 uses
  %i.bnp = sub nsw <4 x i32> %i.bnm, %i.bno       ; 2 uses
  %i.bnq = ashr <4 x i32> %i.bnp, splat (i32 1)
  %i.bnr = add nsw <4 x i32> %i.bnq, %i.bno       ; 2 uses
  %i.bns = ashr <4 x i32> %i.bnr, splat (i32 1)
  %i.bnt = sub nsw <4 x i32> %i.bnp, %i.bns
  store <4 x i32> %i.bnr, ptr %gep85.2.i.i.i18.3, align 16, !tbaa !12
  %i.bnu = add nsw <4 x i32> %i.bni, %i.bnk
  %i.bnv = ashr <4 x i32> %i.bnu, splat (i32 1)   ; 2 uses
  %i.bnw = sub nsw <4 x i32> %i.bnk, %i.bnv
  store <4 x i32> %i.bnw, ptr %i.bnc, align 16, !tbaa !12
  store <4 x i32> %i.bnt, ptr %i.bnb, align 16, !tbaa !12
  store <4 x i32> %i.bnv, ptr %i.bna, align 16, !tbaa !12
  %indvars.iv.next130.i.i.i = add nuw nsw i64 %indvars.iv129.i.i.i, 1 ; 2 uses
  %exitcond132.not.i.i.i = icmp eq i64 %indvars.iv.next130.i.i.i, 4
  br i1 %exitcond132.not.i.i.i, label %fwd_xform_int32_4.exit.i.i, label %.preheader51.i.i.i

fwd_xform_int32_4.exit.i.i:                       ; preds = %.preheader51.i.i.i, %fwd_xform_int32_4.exit.i.i
  %.04.i.i.i20 = phi ptr [ %i.bpc, %fwd_xform_int32_4.exit.i.i ], [ %i.a, %.preheader51.i.i.i ] ; 5 uses
  %.03.i.i.i21 = phi ptr [ %i.bov, %fwd_xform_int32_4.exit.i.i ], [ @perm_4, %.preheader51.i.i.i ] ; 5 uses
  %.0.i.i.i22 = phi i32 [ %i.bpd, %fwd_xform_int32_4.exit.i.i ], [ 256, %.preheader51.i.i.i ]
  %i.bnx = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 1
  %i.bny = load i8, ptr %.03.i.i.i21, align 1, !tbaa !37
  %i.bnz = zext i8 %i.bny to i64
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bnz
  %i.bob = load i32, ptr %i.boa, align 4, !tbaa !12
  %i.boc = add i32 %i.bob, -1431655766
  %i.bod = xor i32 %i.boc, -1431655766
  %i.boe = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  store i32 %i.bod, ptr %.04.i.i.i20, align 4, !tbaa !12
  %i.bof = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 2
  %i.bog = load i8, ptr %i.bnx, align 1, !tbaa !37
  %i.boh = zext i8 %i.bog to i64
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.boh
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !12
  %i.bok = add i32 %i.boj, -1431655766
  %i.bol = xor i32 %i.bok, -1431655766
  %i.bom = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 8
  store i32 %i.bol, ptr %i.boe, align 4, !tbaa !12
  %i.bon = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 3
  %i.boo = load i8, ptr %i.bof, align 1, !tbaa !37
  %i.bop = zext i8 %i.boo to i64
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bop
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !12
  %i.bos = add i32 %i.bor, -1431655766
  %i.bot = xor i32 %i.bos, -1431655766
  %i.bou = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 12
  store i32 %i.bot, ptr %i.bom, align 4, !tbaa !12
  %i.bov = getelementptr inbounds nuw i8, ptr %.03.i.i.i21, i64 4
  %i.bow = load i8, ptr %i.bon, align 1, !tbaa !37
  %i.box = zext i8 %i.bow to i64
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.box
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !12
  %i.bpa = add i32 %i.boz, -1431655766
  %i.bpb = xor i32 %i.bpa, -1431655766
  %i.bpc = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 16
  store i32 %i.bpb, ptr %i.bou, align 4, !tbaa !12
  %i.bpd = add nsw i32 %.0.i.i.i22, -4            ; 2 uses
  %.not.i.i.i23.3 = icmp eq i32 %i.bpd, 0
  br i1 %.not.i.i.i23.3, label %fwd_order_int32.exit.i.i24, label %fwd_xform_int32_4.exit.i.i

fwd_order_int32.exit.i.i24:                       ; preds = %fwd_xform_int32_4.exit.i.i
  %i.bpe = tail call i32 @llvm.usub.sat.i32(i32 %i.bad, i32 9) ; 3 uses
  %i.bpf = add i32 %i.baf, -9
  %i.bpg = call fastcc i32 @encode_ints_uint32(ptr noundef nonnull %i.ayp, i32 noundef %i.bpf, i32 noundef range(i32 0, -2147483648) %i.aym, ptr noundef %i.a) ; 3 uses
  %i.bph = icmp ult i32 %i.bpg, %i.bpe
  br i1 %i.bph, label %bb.t, label %encode_block_int32_4.exit.i

bb.t:                                             ; preds = %fwd_order_int32.exit.i.i24
  %i.bpi = sub nuw i32 %i.bpe, %i.bpg
  %i.bpj = zext i32 %i.bpi to i64
  %i.bpk = load i64, ptr %i.ayp, align 8, !tbaa !31
  %i.bpl = add i64 %i.bpk, %i.bpj                 ; 5 uses
  %i.bpm = icmp ugt i64 %i.bpl, 63
  br i1 %i.bpm, label %.lr.ph.i.i.i27, label %stream_pad.exit.i.i25

.lr.ph.i.i.i27:                                   ; preds = %bb.t
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16 ; 2 uses
  %.promoted.i.i.i28 = load ptr, ptr %i.bpn, align 8, !tbaa !33 ; 3 uses
  %.pre.i.i.i29 = load i64, ptr %i.ayv, align 8, !tbaa !32
  %i.bpo = getelementptr i8, ptr %.promoted.i.i.i28, i64 8 ; 2 uses
  store i64 %.pre.i.i.i29, ptr %.promoted.i.i.i28, align 8, !tbaa !17
  store i64 0, ptr %i.ayv, align 8, !tbaa !32
  %i.bpp = add i64 %i.bpl, -64                    ; 2 uses
  %i.bpq = icmp ugt i64 %i.bpp, 63
  br i1 %i.bpq, label %.peel.next.i.preheader.i32, label %._crit_edge.i.i.i30

.peel.next.i.preheader.i32:                       ; preds = %.lr.ph.i.i.i27
  %i.bpr = add i64 %i.bpl, -128                   ; 2 uses
  %i.bps = lshr i64 %i.bpr, 3
  %i.bpt = and i64 %i.bps, 2305843009213693944
  %i.bpu = add nuw nsw i64 %i.bpt, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bpo, i8 0, i64 %i.bpu, i1 false), !tbaa !17
  store i64 0, ptr %i.ayv, align 8, !tbaa !32
  %i.bpv = lshr i64 %i.bpr, 3
  %i.bpw = and i64 %i.bpv, 2305843009213693944
  %i.bpx = getelementptr i8, ptr %.promoted.i.i.i28, i64 %i.bpw
  %scevgep = getelementptr i8, ptr %i.bpx, i64 16
  %i.bpy = and i64 %i.bpl, 63
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %.peel.next.i.preheader.i32, %.lr.ph.i.i.i27
  %.lcssa29.i.i = phi ptr [ %i.bpo, %.lr.ph.i.i.i27 ], [ %scevgep, %.peel.next.i.preheader.i32 ]
  %.lcssa.i.i31 = phi i64 [ %i.bpp, %.lr.ph.i.i.i27 ], [ %i.bpy, %.peel.next.i.preheader.i32 ]
  store ptr %.lcssa29.i.i, ptr %i.bpn, align 8, !tbaa !33
  br label %stream_pad.exit.i.i25

stream_pad.exit.i.i25:                            ; preds = %._crit_edge.i.i.i30, %bb.t
  %.0.lcssa.i.i.i26 = phi i64 [ %.lcssa.i.i31, %._crit_edge.i.i.i30 ], [ %i.bpl, %bb.t ]
  store i64 %.0.lcssa.i.i.i26, ptr %i.ayp, align 8, !tbaa !31
  br label %encode_block_int32_4.exit.i

encode_block_int32_4.exit.i:                      ; preds = %stream_pad.exit.i.i25, %fwd_order_int32.exit.i.i24
  %.0.i39.i = phi i32 [ %i.bpe, %stream_pad.exit.i.i25 ], [ %i.bpg, %fwd_order_int32.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bpz = add i32 %.0.i39.i, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %encode_block_float_4.exit

bb.u:                                             ; preds = %exponent_block_float.exit.i10
  %i.bqa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !29 ; 5 uses
  %i.bqc = load i64, ptr %i.bqb, align 8, !tbaa !31
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8
  %i.bqe = load i64, ptr %i.bqd, align 8, !tbaa !32
  %i.bqf = add i64 %i.bqc, 1                      ; 2 uses
  store i64 %i.bqf, ptr %i.bqb, align 8, !tbaa !31
  %i.bqg = icmp eq i64 %i.bqf, 64
  br i1 %i.bqg, label %bb.v, label %stream_write_bit.exit.i35

bb.v:                                             ; preds = %bb.u
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqb, i64 16 ; 2 uses
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !33 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  store ptr %i.bqj, ptr %i.bqh, align 8, !tbaa !33
  store i64 %i.bqe, ptr %i.bqi, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqb, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i35

stream_write_bit.exit.i35:                        ; preds = %bb.v, %bb.u
  %i.bqk = load i32, ptr %0, align 8, !tbaa !34   ; 3 uses
  %i.bql = icmp ugt i32 %i.bqk, 1
  br i1 %i.bql, label %bb.w, label %encode_block_float_4.exit

bb.w:                                             ; preds = %stream_write_bit.exit.i35
  %i.bqm = load ptr, ptr %i.bqa, align 8, !tbaa !29 ; 4 uses
  %i.bqn = add i32 %i.bqk, -1
  %i.bqo = zext i32 %i.bqn to i64                 ; 2 uses
  %i.bqp = load i64, ptr %i.bqm, align 8, !tbaa !31 ; 2 uses
  %i.bqq = add i64 %i.bqp, %i.bqo                 ; 4 uses
  %i.bqr = icmp ugt i64 %i.bqq, 63
  br i1 %i.bqr, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqm, i64 8 ; 3 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqm, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.bqt, align 8, !tbaa !33 ; 2 uses
  %.pre.i.i = load i64, ptr %i.bqs, align 8, !tbaa !32
  %i.bqu = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !17
  store i64 0, ptr %i.bqs, align 8, !tbaa !32
  %i.bqv = add i64 %i.bqq, -64                    ; 4 uses
  %i.bqw = icmp ugt i64 %i.bqv, 63
  br i1 %i.bqw, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.bqx = add i64 %i.bqq, -128
  %i.bqy = lshr i64 %i.bqx, 3
  %i.bqz = and i64 %i.bqy, 2305843009213693944
  %i.bra = add nuw nsw i64 %i.bqz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bqu, i8 0, i64 %i.bra, i1 false), !tbaa !17
  store i64 0, ptr %i.bqs, align 8, !tbaa !32
  %i.brb = add i64 %i.bqp, %i.bqo
  %i.brc = add i64 %i.brb, -128                   ; 2 uses
  %i.brd = lshr i64 %i.brc, 6
  %i.bre = add nuw nsw i64 %i.brd, 1
  %xtraiter = and i64 %i.bre, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.brf = phi ptr [ %i.brg, %.peel.next.i.prol ], [ %i.bqu, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.brh, %.peel.next.i.prol ], [ %i.bqv, %.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 8 ; 3 uses
  %i.brh = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !23

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr = phi ptr [ %i.bqu, %.peel.next.i.preheader ], [ %i.brg, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.bqv, %.peel.next.i.preheader ], [ %i.brh, %.peel.next.i.prol ]
  %.lcssa564.unr = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.brg, %.peel.next.i.prol ]
  %.lcssa563.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.brh, %.peel.next.i.prol ]
  %i.bri = icmp ult i64 %i.brc, 448
  br i1 %i.bri, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.brj = phi ptr [ %i.brk, %.peel.next.i ], [ %.unr, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.brl, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 64 ; 2 uses
  %i.brl = add i64 %.09.i.i, -512                 ; 3 uses
  %i.brm = icmp ugt i64 %i.brl, 63
  br i1 %i.brm, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !24

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa58.i = phi ptr [ %i.bqu, %.lr.ph.i.i ], [ %.lcssa564.unr, %.peel.next.i.prol.loopexit ], [ %i.brk, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.bqv, %.lr.ph.i.i ], [ %.lcssa563.unr, %.peel.next.i.prol.loopexit ], [ %i.brl, %.peel.next.i ]
  store ptr %.lcssa58.i, ptr %i.bqt, align 8, !tbaa !33
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.w
end_hunk_0
