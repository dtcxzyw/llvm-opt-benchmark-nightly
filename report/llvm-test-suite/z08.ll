inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Manifest:bb.a
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 24 ; 2 uses
  %i.bgt = load ptr, ptr %i.bgs, align 8, !tbaa !8 ; 5 uses
  %i.bgu = icmp eq ptr %i.bgt, %i.bgr
  br i1 %i.bgu, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  store ptr %i.bgt, ptr @zz_res, align 8, !tbaa !11
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgr, i64 16 ; 2 uses
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !8 ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgt, i64 16
  store ptr %i.bgw, ptr %i.bgx, align 8, !tbaa !8
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 24
  store ptr %i.bgt, ptr %i.bgy, align 8, !tbaa !8
  store ptr %i.bgr, ptr %i.bgs, align 8, !tbaa !8
  store ptr %i.bgr, ptr %i.bgv, align 8, !tbaa !8
  br label %bb.ju

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %i.bgz = phi ptr [ %i.bgt, %bb.jt ], [ null, %bb.js ]
  store ptr %i.bgz, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.bgr, ptr @zz_hold, align 8, !tbaa !11
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgr, i64 8
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !8 ; 3 uses
  %i.bhc = icmp eq ptr %i.bhb, %i.bgr
  br i1 %i.bhc, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  store ptr %i.bhb, ptr @zz_res, align 8, !tbaa !11
  %i.bhd = load ptr, ptr %i.bgr, align 8, !tbaa !8
  store ptr %i.bhd, ptr %i.bhb, align 8, !tbaa !8
  %i.bhe = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bhf = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !8
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  store ptr %i.bhe, ptr %i.bhh, align 8, !tbaa !8
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  store ptr %i.bhf, ptr %i.bhi, align 8, !tbaa !8
  store ptr %i.bhf, ptr %i.bhf, align 8, !tbaa !8
  %.pre2659 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.jw

bb.jw:                                            ; preds = %bb.ju, %bb.jv
  %i.bhj = phi ptr [ %i.bgr, %bb.ju ], [ %.pre2659, %bb.jv ] ; 4 uses
  store ptr %i.bhj, ptr @zz_hold, align 8, !tbaa !11
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 32
  %i.bhl = load i8, ptr %i.bhk, align 8, !tbaa !8 ; 2 uses
  %.off2370 = add i8 %i.bhl, -11
  %switch2371 = icmp ult i8 %.off2370, 2
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhj, i64 33
  %i.bhn = zext i8 %i.bhl to i64
  %i.bho = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.bhn
  %.in2294.in = select i1 %switch2371, ptr %i.bhm, ptr %i.bho
  %.in2294 = load i8, ptr %.in2294.in, align 1, !tbaa !8 ; 2 uses
  %i.bhp = zext i8 %.in2294 to i32
  store i32 %i.bhp, ptr @zz_size, align 4, !tbaa !4
  %i.bhq = zext i8 %.in2294 to i64
  %i.bhr = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bhq
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !11
  store ptr %i.bhs, ptr %i.bhj, align 8, !tbaa !8
  %i.bht = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bhu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bhv = sext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bhv
  store ptr %i.bht, ptr %i.bhw, align 8, !tbaa !11
  %i.bhx = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 24
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !8
  %i.bia = icmp eq ptr %i.bhz, %i.bhx
  br i1 %i.bia, label %.sink.split, label %bb.kh

bb.jx:                                            ; preds = %bb.c, %bb.c
  %i.bib = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !8
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jy, %bb.jx
  %.pn2289 = phi ptr [ %i.bic, %bb.jx ], [ %.9, %bb.jy ]
  %.9.in = getelementptr inbounds nuw i8, ptr %.pn2289, i64 16
  %.9 = load ptr, ptr %.9.in, align 8, !tbaa !8   ; 3 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %.9, i64 32
  %i.bie = load i8, ptr %i.bid, align 8, !tbaa !8
  %i.bif = icmp eq i8 %i.bie, 0
  br i1 %i.bif, label %bb.jy, label %bb.jz, !llvm.loop !47

bb.jz:                                            ; preds = %bb.jy
  %i.big = tail call ptr @Manifest(ptr noundef nonnull %.9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.bih = tail call ptr @ReplaceWithTidy(ptr noundef %i.big, i32 noundef 0) ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @GetGap(ptr noundef %i.bih, ptr noundef %2, ptr noundef nonnull %i.bii, ptr noundef nonnull %i.k) #9
  %i.bij = load i32, ptr %i.k, align 4, !tbaa !4
  %i.bik = trunc i32 %i.bij to i16
  %i.bil = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  store i16 %i.bik, ptr %i.bil, align 2, !tbaa !8
  %i.bim = load i16, ptr %i.bii, align 8          ; 2 uses
  %.mask2285 = and i16 %i.bim, -8192
  %.not2284 = icmp eq i16 %.mask2285, 8192
  br i1 %.not2284, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bin = lshr i16 %i.bim, 10
  %i.bio = and i16 %i.bin, 7
  switch i16 %i.bio, label %bb.kb [
    i16 1, label %bb.kc
    i16 5, label %bb.kc
  ]

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bih, i64 32
  %i.biq = load i8, ptr %i.t, align 8, !tbaa !8
  %i.bir = zext i8 %i.biq to i32
  %i.bis = call ptr @Image(i32 noundef %i.bir) #9
  %i.bit = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 27, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %i.bip, ptr noundef %i.bis) #9 ; 0 uses
  store i16 159, ptr %i.bil, align 2, !tbaa !8
  %i.biu = load i16, ptr %i.bii, align 8
  %i.biv = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 0, ptr %i.biv, align 2, !tbaa !8
  %i.biw = and i16 %i.biu, 1023
  %i.bix = or disjoint i16 %i.biw, 9216
  store i16 %i.bix, ptr %i.bii, align 8
  br label %bb.kc

bb.kc:                                            ; preds = %bb.ka, %bb.ka, %bb.kb
  %i.biy = load ptr, ptr %i.bib, align 8, !tbaa !8 ; 11 uses
  store ptr %i.biy, ptr @xx_link, align 8, !tbaa !11
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 24 ; 2 uses
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !8 ; 5 uses
  %i.bjb = icmp eq ptr %i.bja, %i.biy
  br i1 %i.bjb, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  store ptr %i.bja, ptr @zz_res, align 8, !tbaa !11
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biy, i64 16 ; 2 uses
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !8 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bja, i64 16
  store ptr %i.bjd, ptr %i.bje, align 8, !tbaa !8
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjd, i64 24
  store ptr %i.bja, ptr %i.bjf, align 8, !tbaa !8
  store ptr %i.biy, ptr %i.biz, align 8, !tbaa !8
  store ptr %i.biy, ptr %i.bjc, align 8, !tbaa !8
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kc, %bb.kd
  %i.bjg = phi ptr [ %i.bja, %bb.kd ], [ null, %bb.kc ]
  store ptr %i.bjg, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.biy, ptr @zz_hold, align 8, !tbaa !11
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.biy, i64 8
  %i.bji = load ptr, ptr %i.bjh, align 8, !tbaa !8 ; 3 uses
  %i.bjj = icmp eq ptr %i.bji, %i.biy
  br i1 %i.bjj, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  store ptr %i.bji, ptr @zz_res, align 8, !tbaa !11
  %i.bjk = load ptr, ptr %i.biy, align 8, !tbaa !8
  store ptr %i.bjk, ptr %i.bji, align 8, !tbaa !8
  %i.bjl = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bjm = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !8
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  store ptr %i.bjl, ptr %i.bjo, align 8, !tbaa !8
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjm, i64 8
  store ptr %i.bjm, ptr %i.bjp, align 8, !tbaa !8
  store ptr %i.bjm, ptr %i.bjm, align 8, !tbaa !8
  %.pre2655 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf
  %i.bjq = phi ptr [ %i.biy, %bb.ke ], [ %.pre2655, %bb.kf ] ; 4 uses
  store ptr %i.bjq, ptr @zz_hold, align 8, !tbaa !11
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 32
  %i.bjs = load i8, ptr %i.bjr, align 8, !tbaa !8 ; 2 uses
  %.off2372 = add i8 %i.bjs, -11
  %switch2373 = icmp ult i8 %.off2372, 2
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjq, i64 33
  %i.bju = zext i8 %i.bjs to i64
  %i.bjv = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.bju
  %.in2288.in = select i1 %switch2373, ptr %i.bjt, ptr %i.bjv
  %.in2288 = load i8, ptr %.in2288.in, align 1, !tbaa !8 ; 2 uses
  %i.bjw = zext i8 %.in2288 to i32
  store i32 %i.bjw, ptr @zz_size, align 4, !tbaa !4
  %i.bjx = zext i8 %.in2288 to i64
  %i.bjy = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bjx
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !11
  store ptr %i.bjz, ptr %i.bjq, align 8, !tbaa !8
  %i.bka = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bkb = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bkc = sext i32 %i.bkb to i64
  %i.bkd = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bkc
  store ptr %i.bka, ptr %i.bkd, align 8, !tbaa !11
  %i.bke = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 24
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !8
  %i.bkh = icmp eq ptr %i.bkg, %i.bke
  br i1 %i.bkh, label %.sink.split, label %bb.kh

.sink.split:                                      ; preds = %bb.kg, %bb.jw
  %.sink3075 = phi ptr [ %i.bhx, %bb.jw ], [ %i.bke, %bb.kg ]
  %i.bki = call i32 @DisposeObject(ptr noundef nonnull %.sink3075) #9 ; 0 uses
  br label %bb.kh

bb.kh:                                            ; preds = %.sink.split, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.kg, %bb.jw
  %i.bkj = load i8, ptr %i.t, align 8, !tbaa !8   ; 3 uses
  %14 = call i8 @llvm.fshl.i8(i8 %i.bkj, i8 %i.bkj, i8 7)
  %switch.tableidx = add i8 %14, -12              ; 2 uses
  %i.bkk = icmp ult i8 %switch.tableidx, 9
  br i1 %i.bkk, label %switch.hole_check, label %bb.ki

bb.ki:                                            ; preds = %switch.hole_check, %bb.kh
  %i.bkl = icmp ne i8 %i.bkj, 28
  %i.bkm = zext i1 %i.bkl to i32
  br label %switch.lookup

switch.hole_check:                                ; preds = %bb.kh
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 451, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ki

switch.lookup:                                    ; preds = %switch.hole_check, %bb.ki
  %not. = phi i32 [ %i.bkm, %bb.ki ], [ 0, %switch.hole_check ] ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !8
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kj, %switch.lookup
  %.pn2295 = phi ptr [ %i.bko, %switch.lookup ], [ %.10, %bb.kj ]
  %.10.in = getelementptr inbounds nuw i8, ptr %.pn2295, i64 16
  %.10 = load ptr, ptr %.10.in, align 8, !tbaa !8 ; 3 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %.10, i64 32
  %i.bkq = load i8, ptr %i.bkp, align 8, !tbaa !8
  %i.bkr = icmp eq i8 %i.bkq, 0
  br i1 %i.bkr, label %bb.kj, label %bb.kk, !llvm.loop !48

bb.kk:                                            ; preds = %bb.kj
  %i.bks = zext nneg i32 %not. to i64             ; 4 uses
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bks ; 2 uses
  store ptr null, ptr %i.bkt, align 8, !tbaa !11
  %i.bku = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bks ; 2 uses
  store ptr null, ptr %i.bku, align 8, !tbaa !11
  %i.bkv = xor i32 %not., 1
  %i.bkw = zext nneg i32 %i.bkv to i64            ; 4 uses
  %i.bkx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bkw
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !11
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bkw ; 2 uses
  store ptr %i.bky, ptr %i.bkz, align 8, !tbaa !11
  %i.bla = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bkw
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !11
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bkw ; 2 uses
  store ptr %i.blb, ptr %i.blc, align 8, !tbaa !11
  %i.bld = call ptr @Manifest(ptr noundef nonnull %.10, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10) ; 0 uses
  %i.ble = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bks
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !11
  store ptr %i.blf, ptr %i.bku, align 8, !tbaa !11
  %i.blg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bks
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !11
  store ptr %i.blh, ptr %i.bkt, align 8, !tbaa !11
  store ptr null, ptr %i.blc, align 8, !tbaa !11
  store ptr null, ptr %i.bkz, align 8, !tbaa !11
  %i.bli = load <2 x ptr>, ptr %i.d, align 16
  %i.blj = shufflevector <2 x ptr> %i.bli, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.blk = load <2 x ptr>, ptr %i.e, align 16
  %i.bll = shufflevector <2 x ptr> %i.blk, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.blm = shufflevector <2 x ptr> %i.blj, <2 x ptr> %i.bll, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr3113 = freeze <4 x ptr> %i.blm
  %i.bln = icmp ne <4 x ptr> %.fr3113, splat (ptr null)
  %i.blo = bitcast <4 x i1> %i.bln to i4
  %.not3114 = icmp eq i4 %i.blo, 0
  br i1 %.not3114, label %bb.aax, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.blp = call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  br label %bb.aax

bb.km:                                            ; preds = %bb.c, %bb.c
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !8
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %bb.km
  %.pn2283 = phi ptr [ %i.blr, %bb.km ], [ %.11, %bb.kn ]
  %.11.in = getelementptr inbounds nuw i8, ptr %.pn2283, i64 16
  %.11 = load ptr, ptr %.11.in, align 8, !tbaa !8 ; 3 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.11, i64 32
  %i.blt = load i8, ptr %i.bls, align 8, !tbaa !8
  %i.blu = icmp eq i8 %i.blt, 0
  br i1 %i.blu, label %bb.kn, label %bb.ko, !llvm.loop !49

bb.ko:                                            ; preds = %bb.kn
  %i.blv = tail call ptr @Manifest(ptr noundef nonnull %.11, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.blw = tail call ptr @ReplaceWithTidy(ptr noundef %i.blv, i32 noundef 0)
  %i.blx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @GetGap(ptr noundef %i.blw, ptr noundef %2, ptr noundef nonnull %i.blx, ptr noundef nonnull %i.k) #9
  %i.bly = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.kp

bb.kp:                                            ; preds = %bb.kp, %bb.ko
  %.pn2282 = phi ptr [ %i.bly, %bb.ko ], [ %.12, %bb.kp ]
  %.12.in = getelementptr inbounds nuw i8, ptr %.pn2282, i64 16
  %.12 = load ptr, ptr %.12.in, align 8, !tbaa !8 ; 3 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %.12, i64 32
  %i.bma = load i8, ptr %i.blz, align 8, !tbaa !8
  %i.bmb = icmp eq i8 %i.bma, 0
  br i1 %i.bmb, label %bb.kp, label %bb.kq, !llvm.loop !50

bb.kq:                                            ; preds = %bb.kp
  %i.bmc = call ptr @Manifest(ptr noundef nonnull %.12, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) ; 0 uses
  br label %bb.aax

bb.kr:                                            ; preds = %bb.c, %bb.c
  %i.bmd = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.t) #9 ; 5 uses
  %i.bme = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 3 uses
  %i.bmf = zext i8 %i.bme to i32                  ; 2 uses
  store i32 %i.bmf, ptr @zz_size, align 4, !tbaa !4
  %i.bmg = zext i8 %i.bme to i64
  %i.bmh = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bmg
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !11 ; 4 uses
  %i.bmj = icmp eq ptr %i.bmi, null
  br i1 %i.bmj, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bmk = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.bml = tail call ptr @GetMemory(i32 noundef %i.bmf, ptr noundef %i.bmk) #9
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  store ptr %i.bmi, ptr @zz_hold, align 8, !tbaa !11
  %i.bmm = load ptr, ptr %i.bmi, align 8, !tbaa !8
  %i.bmn = zext i8 %i.bme to i64
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bmn
  store ptr %i.bmm, ptr %i.bmo, align 8, !tbaa !11
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %i.bmp = phi ptr [ %i.bml, %bb.ks ], [ %i.bmi, %bb.kt ] ; 12 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 32
  store i8 0, ptr %i.bmq, align 8, !tbaa !8
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmp, i64 24
  store ptr %i.bmp, ptr %i.bmr, align 8, !tbaa !8
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmp, i64 16
  store ptr %i.bmp, ptr %i.bms, align 8, !tbaa !8
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmp, i64 8
  store ptr %i.bmp, ptr %i.bmt, align 8, !tbaa !8
  store ptr %i.bmp, ptr %i.bmp, align 8, !tbaa !8
  store ptr %i.bmp, ptr @xx_link, align 8, !tbaa !11
  store ptr %i.bmp, ptr @zz_res, align 8, !tbaa !11
  store ptr %0, ptr @zz_hold, align 8, !tbaa !11
  %i.bmu = load ptr, ptr %0, align 8, !tbaa !8
  store ptr %i.bmu, ptr @zz_tmp, align 8, !tbaa !11
  %i.bmv = load ptr, ptr %i.bmp, align 8, !tbaa !8
  store ptr %i.bmv, ptr %0, align 8, !tbaa !8
  %i.bmw = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.bmx = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !8
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 8
  store ptr %i.bmw, ptr %i.bmz, align 8, !tbaa !8
  %i.bna = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.bna, ptr %i.bmx, align 8, !tbaa !8
  %i.bnb = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bna, i64 8
  store ptr %i.bnb, ptr %i.bnc, align 8, !tbaa !8
  %.pre2654 = load ptr, ptr @xx_link, align 8, !tbaa !11 ; 4 uses
  store ptr %.pre2654, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.bmd, ptr @zz_hold, align 8, !tbaa !11
  %i.bnd = icmp eq ptr %i.bmd, null
  %i.bne = icmp eq ptr %.pre2654, null
  %or.cond50 = select i1 %i.bnd, i1 true, i1 %i.bne
  br i1 %or.cond50, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bmd, i64 16 ; 2 uses
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !8 ; 3 uses
  store ptr %i.bng, ptr @zz_tmp, align 8, !tbaa !11
  %i.bnh = getelementptr inbounds nuw i8, ptr %.pre2654, i64 16 ; 2 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !8 ; 2 uses
  store ptr %i.bni, ptr %i.bnf, align 8, !tbaa !8
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 24
  store ptr %i.bmd, ptr %i.bnj, align 8, !tbaa !8
  store ptr %i.bng, ptr %i.bnh, align 8, !tbaa !8
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bng, i64 24
  store ptr %.pre2654, ptr %i.bnk, align 8, !tbaa !8
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %i.bnl = tail call ptr @Manifest(ptr noundef %i.bmd, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) ; 0 uses
  br label %bb.aax

bb.kx:                                            ; preds = %bb.c, %bb.c
  %i.bnm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !11
  %.not2278 = icmp eq ptr %i.bnn, null
  br i1 %.not2278, label %bb.ky, label %bb.lb

bb.ky:                                            ; preds = %bb.kx
  %i.bno = load ptr, ptr %3, align 8, !tbaa !11
  %.not2279 = icmp eq ptr %i.bno, null
  br i1 %.not2279, label %bb.kz, label %bb.lb

bb.kz:                                            ; preds = %bb.ky
  %i.bnp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !11
  %.not2280 = icmp eq ptr %i.bnq, null
  br i1 %.not2280, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.bnr = load ptr, ptr %4, align 8, !tbaa !11
  %.not2281 = icmp eq ptr %i.bnr, null
  br i1 %.not2281, label %bb.aax, label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz, %bb.ky, %bb.kx
  %i.bns = tail call fastcc ptr @insert_split(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.aax

bb.lc:                                            ; preds = %bb.c
  %i.bnt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
