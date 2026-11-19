Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpc8?download=true
inline.NumInlined: 33
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mpc8_decode_frame:bb.a
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %get_vlc2.exit386.1
  %.lcssa462466.1 = phi i32 [ %i.xw, %bb.bp ], [ %i.xl, %get_vlc2.exit386.1 ]
  %.0313.1 = phi i32 [ %i.xx, %bb.bp ], [ %.167.i383.1, %get_vlc2.exit386.1 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !31
  %i.yb = add nsw i32 %.0313.1, 103
  %i.yc = add i32 %i.yb, %i.ya
  %i.yd = and i32 %i.yc, 127
  %i.ye = add nsw i32 %i.yd, -6
  store i32 %i.ye, ptr %i.xy, align 4, !tbaa !31
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bm
  %.lcssa462465.1 = phi i32 [ %.lcssa462466.1, %bb.bq ], [ %i.wf, %bb.bm ] ; 5 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.yg = getelementptr inbounds nuw i8, ptr %i.on, i64 32 ; 2 uses
  %i.yh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dscf_vlc, i64 8), align 8 ; 4 uses
  %i.yi = load i32, ptr %i.yf, align 4, !tbaa !31 ; 2 uses
  %i.yj = and i32 %i.yi, 2
  %.not352.1685 = icmp eq i32 %i.yj, 0
  br i1 %.not352.1685, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yk = load i32, ptr %i.yg, align 4, !tbaa !31
  br label %bb.bx

bb.bt:                                            ; preds = %bb.br
  %i.yl = lshr i32 %.lcssa462465.1, 3
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 1, !tbaa !30
  %i.yp = tail call i32 @llvm.bswap.i32(i32 %i.yo)
  %i.yq = and i32 %.lcssa462465.1, 7
  %i.yr = shl i32 %i.yp, %i.yq
  %i.ys = lshr i32 %i.yr, 23
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.yt ; 2 uses
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !30
  %i.yw = sext i16 %i.yv to i32                   ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !30 ; 2 uses
  %i.yz = sext i16 %i.yy to i32                   ; 2 uses
  %i.za = icmp slt i16 %i.yy, 0
  br i1 %i.za, label %bb.bu, label %get_vlc2.exit382.1689

bb.bu:                                            ; preds = %bb.bt
  %i.zb = add i32 %.lcssa462465.1, 9
  %i.zc = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.zb) ; 3 uses
  %i.zd = lshr i32 %i.zc, 3
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 1, !tbaa !30
  %i.zh = tail call i32 @llvm.bswap.i32(i32 %i.zg)
  %i.zi = and i32 %i.zc, 7
  %i.zj = shl i32 %i.zh, %i.zi
  %i.zk = add nsw i32 %i.yz, 32
  %i.zl = lshr i32 %i.zj, %i.zk
  %i.zm = add i32 %i.zl, %i.yw
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 2
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !30
  %i.zr = sext i16 %i.zq to i32
  %i.zs = load i16, ptr %i.zo, align 2, !tbaa !30
  %i.zt = sext i16 %i.zs to i32
  br label %get_vlc2.exit382.1689

get_vlc2.exit382.1689:                            ; preds = %bb.bu, %bb.bt
  %.167.i379.1686 = phi i32 [ %i.zt, %bb.bu ], [ %i.yw, %bb.bt ] ; 2 uses
  %.165.i380.1687 = phi i32 [ %i.zc, %bb.bu ], [ %.lcssa462465.1, %bb.bt ]
  %.1.i381.1688 = phi i32 [ %i.zr, %bb.bu ], [ %i.yz, %bb.bt ]
  %i.zu = add i32 %.1.i381.1688, %.165.i380.1687
  %i.zv = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.zu) ; 4 uses
  %i.zw = icmp eq i32 %.167.i379.1686, 31
  br i1 %i.zw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %get_vlc2.exit382.1689
  %i.zx = lshr i32 %i.zv, 3
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 1, !tbaa !30
  %i.aab = tail call i32 @llvm.bswap.i32(i32 %i.aaa)
  %i.aac = and i32 %i.zv, 7
  %i.aad = shl i32 %i.aab, %i.aac
  %i.aae = lshr i32 %i.aad, 26
  %i.aaf = add i32 %i.zv, 6
  %i.aag = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.aaf)
  %i.aah = or disjoint i32 %i.aae, 64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %get_vlc2.exit382.1689
  %i.aai = phi i32 [ %i.aag, %bb.bv ], [ %i.zv, %get_vlc2.exit382.1689 ]
  %.1314.1690 = phi i32 [ %i.aah, %bb.bv ], [ %.167.i379.1686, %get_vlc2.exit382.1689 ]
  %i.aaj = load i32, ptr %i.yg, align 4, !tbaa !31
  %i.aak = add nsw i32 %.1314.1690, 103
  %i.aal = add i32 %i.aak, %i.aaj
  %i.aam = and i32 %i.aal, 127
  %i.aan = add nsw i32 %i.aam, -6
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  %.sink.1 = phi i32 [ %i.yk, %bb.bs ], [ %i.aan, %bb.bw ] ; 3 uses
  %i.aao = phi i32 [ %.lcssa462465.1, %bb.bs ], [ %i.aai, %bb.bw ] ; 5 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.on, i64 36
  store i32 %.sink.1, ptr %i.aap, align 4, !tbaa !31
  %i.aaq = and i32 %i.yi, 1
  %.not352.1.1 = icmp eq i32 %i.aaq, 0
  br i1 %.not352.1.1, label %bb.by, label %.loopexit431.sink.split.1

bb.by:                                            ; preds = %bb.bx
  %i.aar = lshr i32 %i.aao, 3
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 1, !tbaa !30
  %i.aav = tail call i32 @llvm.bswap.i32(i32 %i.aau)
  %i.aaw = and i32 %i.aao, 7
  %i.aax = shl i32 %i.aav, %i.aaw
  %i.aay = lshr i32 %i.aax, 23
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.aaz ; 2 uses
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !30
  %i.abc = sext i16 %i.abb to i32                 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 2
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !30 ; 2 uses
  %i.abf = sext i16 %i.abe to i32                 ; 2 uses
  %i.abg = icmp slt i16 %i.abe, 0
  br i1 %i.abg, label %bb.bz, label %get_vlc2.exit382.1.1

bb.bz:                                            ; preds = %bb.by
  %i.abh = add i32 %i.aao, 9
  %i.abi = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.abh) ; 3 uses
  %i.abj = lshr i32 %i.abi, 3
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 1, !tbaa !30
  %i.abn = tail call i32 @llvm.bswap.i32(i32 %i.abm)
  %i.abo = and i32 %i.abi, 7
  %i.abp = shl i32 %i.abn, %i.abo
  %i.abq = add nsw i32 %i.abf, 32
  %i.abr = lshr i32 %i.abp, %i.abq
  %i.abs = add i32 %i.abr, %i.abc
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.abt ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 2
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !30
  %i.abx = sext i16 %i.abw to i32
  %i.aby = load i16, ptr %i.abu, align 2, !tbaa !30
  %i.abz = sext i16 %i.aby to i32
  br label %get_vlc2.exit382.1.1

get_vlc2.exit382.1.1:                             ; preds = %bb.bz, %bb.by
  %.167.i379.1.1 = phi i32 [ %i.abz, %bb.bz ], [ %i.abc, %bb.by ] ; 2 uses
  %.165.i380.1.1 = phi i32 [ %i.abi, %bb.bz ], [ %i.aao, %bb.by ]
  %.1.i381.1.1 = phi i32 [ %i.abx, %bb.bz ], [ %i.abf, %bb.by ]
  %i.aca = add i32 %.1.i381.1.1, %.165.i380.1.1
  %i.acb = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.aca) ; 4 uses
  %i.acc = icmp eq i32 %.167.i379.1.1, 31
  br i1 %i.acc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %get_vlc2.exit382.1.1
  %i.acd = lshr i32 %i.acb, 3
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 1, !tbaa !30
  %i.ach = tail call i32 @llvm.bswap.i32(i32 %i.acg)
  %i.aci = and i32 %i.acb, 7
  %i.acj = shl i32 %i.ach, %i.aci
  %i.ack = lshr i32 %i.acj, 26
  %i.acl = add i32 %i.acb, 6
  %i.acm = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.acl)
  %i.acn = or disjoint i32 %i.ack, 64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %get_vlc2.exit382.1.1
  %i.aco = phi i32 [ %i.acm, %bb.ca ], [ %i.acb, %get_vlc2.exit382.1.1 ]
  %.1314.1.1 = phi i32 [ %i.acn, %bb.ca ], [ %.167.i379.1.1, %get_vlc2.exit382.1.1 ]
  %i.acp = add nsw i32 %.1314.1.1, 103
  %i.acq = add i32 %i.acp, %.sink.1
  %i.acr = and i32 %i.acq, 127
  %i.acs = add nsw i32 %i.acr, -6
  br label %.loopexit431.sink.split.1

.loopexit431.sink.split.1:                        ; preds = %bb.cb, %bb.bx
  %.sink653.1 = phi i32 [ %i.acs, %bb.cb ], [ %.sink.1, %bb.bx ]
  %.lcssa462467.ph.1 = phi i32 [ %i.aco, %bb.cb ], [ %i.aao, %bb.bx ]
  %i.act = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  store i32 %.sink653.1, ptr %i.act, align 4, !tbaa !31
  br label %.loopexit431.1

.loopexit431.1:                                   ; preds = %.loopexit431.sink.split.1, %.loopexit431
  %.lcssa462467.1 = phi i32 [ %.lcssa462467, %.loopexit431 ], [ %.lcssa462467.ph.1, %.loopexit431.sink.split.1 ] ; 2 uses
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %exitcond553.not = icmp eq i64 %indvars.iv.next550, %wide.trip.count552
  br i1 %exitcond553.not, label %.preheader429.lr.ph, label %.preheader432, !llvm.loop !59

.preheader429:                                    ; preds = %.preheader429.lr.ph, %bb.dl
  %indvars.iv584 = phi i64 [ 0, %.preheader429.lr.ph ], [ %indvars.iv.next585, %bb.dl ] ; 2 uses
  %.0312513 = phi i32 [ 0, %.preheader429.lr.ph ], [ %6, %bb.dl ] ; 2 uses
  %.promoted501509511 = phi i32 [ %.lcssa462467.1, %.preheader429.lr.ph ], [ %.promoted501507, %bb.dl ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [52 x i8], ptr %i.g, i64 %indvars.iv584
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.acw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @q1_vlc, i64 8), align 8 ; 4 uses
  %i.acx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @q9up_vlc, i64 8), align 8 ; 2 uses
  %5 = zext nneg i32 %.0312513 to i64             ; 7 uses
  %invariant.gep642.a = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %5
  %invariant.gep644.a = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %5
  %invariant.gep646.a = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %5
  %invariant.gep648.a = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %5
  %invariant.gep650 = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %5
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader429, %.loopexit422
  %i.acy = phi i1 [ true, %.preheader429 ], [ false, %.loopexit422 ]
  %indvars.iv579 = phi i64 [ 0, %.preheader429 ], [ 1, %.loopexit422 ] ; 7 uses
  %.promoted501508 = phi i32 [ %.promoted501509511, %.preheader429 ], [ %.promoted501507, %.loopexit422 ] ; 2 uses
  %.lcssa499503504 = phi i32 [ %.promoted501509511, %.preheader429 ], [ %.lcssa499502, %.loopexit422 ] ; 10 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv579
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !31 ; 7 uses
  switch i32 %i.ada, label %.preheader [
    i32 -1, label %.preheader421
    i32 0, label %.loopexit422
    i32 1, label %.preheader423
    i32 2, label %.preheader425
    i32 3, label %bb.db
    i32 4, label %bb.db
    i32 5, label %bb.de
    i32 6, label %bb.de
    i32 7, label %bb.de
    i32 8, label %bb.de
  ]

.preheader425:                                    ; preds = %bb.cc
  %gep647.a = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep646.a, i64 %indvars.iv579
  br label %bb.cz

.preheader423:                                    ; preds = %bb.cc
  %i.adb = getelementptr inbounds nuw [4608 x i8], ptr %i.ov, i64 %indvars.iv579 ; 2 uses
  %i.adc = lshr i32 %.lcssa499503504, 3
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 1, !tbaa !30
  %i.adg = tail call i32 @llvm.bswap.i32(i32 %i.adf)
  %i.adh = and i32 %.lcssa499503504, 7
  %i.adi = shl i32 %i.adg, %i.adh
  %i.adj = lshr i32 %i.adi, 23
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.adk ; 2 uses
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !30
  %i.adn = sext i16 %i.adm to i32                 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 2
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !30 ; 2 uses
  %i.adq = sext i16 %i.adp to i32                 ; 2 uses
  %i.adr = icmp slt i16 %i.adp, 0
  br i1 %i.adr, label %bb.ce, label %get_vlc2.exit378

.preheader421:                                    ; preds = %bb.cc
  %gep649.a = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep648.a, i64 %indvars.iv579
  br label %bb.cd

.preheader:                                       ; preds = %bb.cc
  %.not349 = icmp eq i32 %i.ada, 9
  %i.ads = add nsw i32 %i.ada, -2
  %notmask = shl nsw i32 -1, %i.ads
  %.neg = add nuw nsw i32 %notmask, 1
  %i.adt = add nsw i32 %i.ada, -9                 ; 2 uses
  %i.adu = sub nsw i32 41, %i.ada
  %gep651 = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep650, i64 %indvars.iv579
  br label %bb.dh

bb.cd:                                            ; preds = %.preheader421, %bb.cd
  %indvars.iv571 = phi i64 [ 0, %.preheader421 ], [ %indvars.iv.next572, %bb.cd ] ; 2 uses
  %i.adv = load i32, ptr %i.ox, align 4, !tbaa !78 ; 4 uses
  %i.adw = add i32 %i.adv, 40
  %i.adx = and i32 %i.adw, 63
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !31
  %i.aeb = add i32 %i.adv, 9
  %i.aec = and i32 %i.aeb, 63
  %i.aed = zext nneg i32 %i.aec to i64
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.aed
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !31
  %i.aeg = add i32 %i.aef, %i.aea                 ; 2 uses
  %i.aeh = and i32 %i.adv, 63
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.aei
  store i32 %i.aeg, ptr %i.aej, align 4, !tbaa !31
  %i.aek = add i32 %i.adv, 1
  store i32 %i.aek, ptr %i.ox, align 4, !tbaa !78
  %i.ael = and i32 %i.aeg, 1020
  %i.aem = add nsw i32 %i.ael, -510
  %gep639.a = getelementptr inbounds nuw [4 x i8], ptr %gep649.a, i64 %indvars.iv571
  store i32 %i.aem, ptr %gep639.a, align 4, !tbaa !31
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next572, 36
  br i1 %exitcond574.not, label %.loopexit422, label %bb.cd, !llvm.loop !60

bb.ce:                                            ; preds = %.preheader423
  %i.aen = add i32 %.lcssa499503504, 9
  %i.aeo = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.aen) ; 3 uses
  %i.aep = lshr i32 %i.aeo, 3
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 1, !tbaa !30
  %i.aet = tail call i32 @llvm.bswap.i32(i32 %i.aes)
  %i.aeu = and i32 %i.aeo, 7
  %i.aev = shl i32 %i.aet, %i.aeu
  %i.aew = add nsw i32 %i.adq, 32
  %i.aex = lshr i32 %i.aev, %i.aew
  %i.aey = add i32 %i.aex, %i.adn
  %i.aez = zext i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aez ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 2
  %i.afc = load i16, ptr %i.afb, align 2, !tbaa !30
  %i.afd = sext i16 %i.afc to i32
  %i.afe = load i16, ptr %i.afa, align 2, !tbaa !30
  %i.aff = sext i16 %i.afe to i32
  br label %get_vlc2.exit378

get_vlc2.exit378:                                 ; preds = %.preheader423, %bb.ce
  %.167.i375 = phi i32 [ %i.aff, %bb.ce ], [ %i.adn, %.preheader423 ] ; 4 uses
  %.165.i376 = phi i32 [ %i.aeo, %bb.ce ], [ %.lcssa499503504, %.preheader423 ]
  %.1.i377 = phi i32 [ %i.afd, %bb.ce ], [ %i.adq, %.preheader423 ]
  %i.afg = add i32 %.1.i377, %.165.i376
  %i.afh = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.afg) ; 6 uses
  switch i32 %.167.i375, label %bb.cf [
    i32 18, label %mpc8_get_mask.exit
    i32 0, label %mpc8_get_mask.exit
  ]

bb.cf:                                            ; preds = %get_vlc2.exit378
  %i.afi = sub nsw i32 18, %.167.i375
  %i.afj = tail call i32 @llvm.smin.i32(i32 %.167.i375, i32 %i.afi) ; 3 uses
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr [128 x i8], ptr @mpc8_cnk, i64 %i.afk
  %i.afm = getelementptr i8, ptr %i.afl, i64 -128
  %i.afn = add nsw i32 %i.afj, -1
  %i.afo = sext i32 %i.afn to i64                 ; 2 uses
  %i.afp = getelementptr inbounds [33 x i8], ptr @mpc8_cnk_len, i64 %i.afo
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 17
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !30
  %i.afs = zext i8 %i.afr to i32                  ; 2 uses
  %i.aft = add nsw i32 %i.afs, -1                 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aft, 0
  br i1 %.not.i.i.i, label %get_bits_long.exit.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.afu = lshr i32 %i.afh, 3
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.afv
  %i.afx = load i32, ptr %i.afw, align 1, !tbaa !30
  %i.afy = tail call i32 @llvm.bswap.i32(i32 %i.afx)
  %i.afz = and i32 %i.afh, 7
  %i.aga = shl i32 %i.afy, %i.afz
  %i.agb = sub nuw nsw i32 33, %i.afs
  %i.agc = lshr i32 %i.aga, %i.agb
  %i.agd = add i32 %i.aft, %i.afh
  %i.age = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.agd)
  br label %get_bits_long.exit.i.i.i

get_bits_long.exit.i.i.i:                         ; preds = %bb.cg, %bb.cf
  %.lcssa488493 = phi i32 [ %i.afh, %bb.cf ], [ %i.age, %bb.cg ] ; 5 uses
  %i.agf = phi i32 [ 0, %bb.cf ], [ %i.agc, %bb.cg ] ; 3 uses
  %i.agg = getelementptr inbounds [132 x i8], ptr @mpc8_cnk_lost, i64 %i.afo
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 68
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !31 ; 2 uses
  %.not14.i.i.i = icmp ult i32 %i.agf, %i.agi
  br i1 %.not14.i.i.i, label %mpc8_dec_base.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %get_bits_long.exit.i.i.i
  %i.agj = shl i32 %i.agf, 1
  %i.agk = lshr i32 %.lcssa488493, 3
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.agl
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !30
  %i.ago = icmp slt i32 %.lcssa488493, %i.ot
  %i.agp = zext i1 %i.ago to i32
  %spec.select.i.i.i.i = add i32 %.lcssa488493, %i.agp
  %i.agq = zext i8 %i.agn to i32
  %i.agr = and i32 %.lcssa488493, 7
  %i.ags = shl nuw nsw i32 %i.agq, %i.agr
  %i.agt = lshr i32 %i.ags, 7
  %i.agu = and i32 %i.agt, 1
  %i.agv = sub i32 %i.agj, %i.agi
  %i.agw = add i32 %i.agv, %i.agu
  br label %mpc8_dec_base.exit.i.i

mpc8_dec_base.exit.i.i:                           ; preds = %bb.ch, %get_bits_long.exit.i.i.i
  %.lcssa488492 = phi i32 [ %spec.select.i.i.i.i, %bb.ch ], [ %.lcssa488493, %get_bits_long.exit.i.i.i ]
  %.0.i.i.i = phi i32 [ %i.agw, %bb.ch ], [ %i.agf, %get_bits_long.exit.i.i.i ]
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %mpc8_dec_base.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ck ], [ 18, %mpc8_dec_base.exit.i.i ]
  %.021.i.i = phi i32 [ %.122.i.i, %bb.ck ], [ %i.afj, %mpc8_dec_base.exit.i.i ] ; 2 uses
  %.018.i.i = phi i32 [ %.119.i.i, %bb.ck ], [ 0, %mpc8_dec_base.exit.i.i ] ; 2 uses
  %.016.i.i = phi ptr [ %.117.i.i, %bb.ck ], [ %i.afm, %mpc8_dec_base.exit.i.i ] ; 3 uses
  %.0.i.i413 = phi i32 [ %.1.i.i, %bb.ck ], [ %.0.i.i.i, %mpc8_dec_base.exit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.agx = getelementptr inbounds [4 x i8], ptr %.016.i.i, i64 %indvars.iv.next.i.i
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !31 ; 2 uses
  %.not.i.i414 = icmp ult i32 %.0.i.i413, %i.agy
  br i1 %.not.i.i414, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.agz = trunc nsw i64 %indvars.iv.next.i.i to i32
  %i.aha = shl nuw i32 1, %i.agz
  %i.ahb = or i32 %i.aha, %.018.i.i
  %i.ahc = sub nuw i32 %.0.i.i413, %i.agy
  %i.ahd = getelementptr inbounds i8, ptr %.016.i.i, i64 -128
  %i.ahe = add nsw i32 %.021.i.i, -1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.122.i.i = phi i32 [ %i.ahe, %bb.cj ], [ %.021.i.i, %bb.ci ] ; 2 uses
  %.119.i.i = phi i32 [ %i.ahb, %bb.cj ], [ %.018.i.i, %bb.ci ] ; 2 uses
  %.117.i.i = phi ptr [ %i.ahd, %bb.cj ], [ %.016.i.i, %bb.ci ]
  %.1.i.i = phi i32 [ %i.ahc, %bb.cj ], [ %.0.i.i413, %bb.ci ]
  %i.ahf = icmp sgt i32 %.122.i.i, 0
  br i1 %i.ahf, label %bb.ci, label %mpc8_get_mask.exit, !llvm.loop !0

mpc8_get_mask.exit:                               ; preds = %bb.ck, %get_vlc2.exit378, %get_vlc2.exit378
  %.lcssa488491 = phi i32 [ %i.afh, %get_vlc2.exit378 ], [ %i.afh, %get_vlc2.exit378 ], [ %.lcssa488492, %bb.ck ]
  %.0.i415 = phi i32 [ 0, %get_vlc2.exit378 ], [ 0, %get_vlc2.exit378 ], [ %.119.i.i, %bb.ck ]
  %i.ahg = icmp sgt i32 %.167.i375, 9
  %i.ahh = sext i1 %i.ahg to i32
  %spec.select.i = xor i32 %.0.i415, %i.ahh
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %5
  br label %bb.cl

bb.cl:                                            ; preds = %mpc8_get_mask.exit, %bb.cn
  %indvars.iv564 = phi i64 [ 0, %mpc8_get_mask.exit ], [ %indvars.iv.next565, %bb.cn ] ; 3 uses
  %i.ahj = phi i32 [ %.lcssa488491, %mpc8_get_mask.exit ], [ %i.ahz, %bb.cn ] ; 5 uses
  %i.ahk = trunc nuw nsw i64 %indvars.iv564 to i32
  %i.ahl = lshr exact i32 131072, %i.ahk
  %i.ahm = and i32 %i.ahl, %spec.select.i
  %.not348 = icmp eq i32 %i.ahm, 0
  br i1 %.not348, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ahn = lshr i32 %i.ahj, 3
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !30
  %i.ahr = icmp slt i32 %i.ahj, %i.ot
  %i.ahs = zext i1 %i.ahr to i32
  %spec.select.i416 = add i32 %i.ahj, %i.ahs
  %i.aht = zext i8 %i.ahq to i32
  %i.ahu = and i32 %i.ahj, 7
  %i.ahv = shl nuw nsw i32 %i.aht, %i.ahu
  %i.ahw = lshr i32 %i.ahv, 6
  %i.ahx = and i32 %i.ahw, 2
  %i.ahy = add nsw i32 %i.ahx, -1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.ahz = phi i32 [ %spec.select.i416, %bb.cm ], [ %i.ahj, %bb.cl ] ; 5 uses
  %i.aia = phi i32 [ %i.ahy, %bb.cm ], [ 0, %bb.cl ]
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %indvars.iv564
  store i32 %i.aia, ptr %i.aib, align 4, !tbaa !31
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond567.not = icmp eq i64 %indvars.iv.next565, 18
  br i1 %exitcond567.not, label %bb.co, label %bb.cl, !llvm.loop !61

bb.co:                                            ; preds = %bb.cn
  %i.aic = lshr i32 %i.ahz, 3
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aid
  %i.aif = load i32, ptr %i.aie, align 1, !tbaa !30
  %i.aig = tail call i32 @llvm.bswap.i32(i32 %i.aif)
  %i.aih = and i32 %i.ahz, 7
  %i.aii = shl i32 %i.aig, %i.aih
  %i.aij = lshr i32 %i.aii, 23
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aik ; 2 uses
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !30
  %i.ain = sext i16 %i.aim to i32                 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !30 ; 2 uses
  %i.aiq = sext i16 %i.aip to i32                 ; 2 uses
  %i.air = icmp slt i16 %i.aip, 0
  br i1 %i.air, label %bb.cp, label %get_vlc2.exit378.1

bb.cp:                                            ; preds = %bb.co
  %i.ais = add i32 %i.ahz, 9
  %i.ait = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.ais) ; 3 uses
  %i.aiu = lshr i32 %i.ait, 3
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aiv
  %i.aix = load i32, ptr %i.aiw, align 1, !tbaa !30
  %i.aiy = tail call i32 @llvm.bswap.i32(i32 %i.aix)
  %i.aiz = and i32 %i.ait, 7
  %i.aja = shl i32 %i.aiy, %i.aiz
  %i.ajb = add nsw i32 %i.aiq, 32
  %i.ajc = lshr i32 %i.aja, %i.ajb
  %i.ajd = add i32 %i.ajc, %i.ain
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.aje ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 2
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !30
  %i.aji = sext i16 %i.ajh to i32
  %i.ajj = load i16, ptr %i.ajf, align 2, !tbaa !30
  %i.ajk = sext i16 %i.ajj to i32
  br label %get_vlc2.exit378.1

get_vlc2.exit378.1:                               ; preds = %bb.cp, %bb.co
  %.167.i375.1 = phi i32 [ %i.ajk, %bb.cp ], [ %i.ain, %bb.co ] ; 4 uses
  %.165.i376.1 = phi i32 [ %i.ait, %bb.cp ], [ %i.ahz, %bb.co ]
  %.1.i377.1 = phi i32 [ %i.aji, %bb.cp ], [ %i.aiq, %bb.co ]
  %i.ajl = add i32 %.1.i377.1, %.165.i376.1
  %i.ajm = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.ajl) ; 6 uses
  switch i32 %.167.i375.1, label %bb.cq [
    i32 18, label %mpc8_get_mask.exit.1
    i32 0, label %mpc8_get_mask.exit.1
  ]

bb.cq:                                            ; preds = %get_vlc2.exit378.1
  %i.ajn = sub nsw i32 18, %.167.i375.1
  %i.ajo = tail call i32 @llvm.smin.i32(i32 %.167.i375.1, i32 %i.ajn) ; 3 uses
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = getelementptr [128 x i8], ptr @mpc8_cnk, i64 %i.ajp
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 -128
  %i.ajs = add nsw i32 %i.ajo, -1
  %i.ajt = sext i32 %i.ajs to i64                 ; 2 uses
  %i.aju = getelementptr inbounds [33 x i8], ptr @mpc8_cnk_len, i64 %i.ajt
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 17
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !30
  %i.ajx = zext i8 %i.ajw to i32                  ; 2 uses
  %i.ajy = add nsw i32 %i.ajx, -1                 ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.ajy, 0
  br i1 %.not.i.i.i.1, label %get_bits_long.exit.i.i.i.1, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ajz = lshr i32 %i.ajm, 3
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 1, !tbaa !30
  %i.akd = tail call i32 @llvm.bswap.i32(i32 %i.akc)
  %i.ake = and i32 %i.ajm, 7
  %i.akf = shl i32 %i.akd, %i.ake
  %i.akg = sub nuw nsw i32 33, %i.ajx
  %i.akh = lshr i32 %i.akf, %i.akg
  %i.aki = add i32 %i.ajy, %i.ajm
  %i.akj = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.aki)
  br label %get_bits_long.exit.i.i.i.1

get_bits_long.exit.i.i.i.1:                       ; preds = %bb.cr, %bb.cq
  %.lcssa488493.1 = phi i32 [ %i.ajm, %bb.cq ], [ %i.akj, %bb.cr ] ; 5 uses
  %i.akk = phi i32 [ 0, %bb.cq ], [ %i.akh, %bb.cr ] ; 3 uses
  %i.akl = getelementptr inbounds [132 x i8], ptr @mpc8_cnk_lost, i64 %i.ajt
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 68
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !31 ; 2 uses
  %.not14.i.i.i.1 = icmp ult i32 %i.akk, %i.akn
  br i1 %.not14.i.i.i.1, label %mpc8_dec_base.exit.i.i.1, label %bb.cs

bb.cs:                                            ; preds = %get_bits_long.exit.i.i.i.1
  %i.ako = shl i32 %i.akk, 1
  %i.akp = lshr i32 %.lcssa488493.1, 3
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.akq
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !30
  %i.akt = icmp slt i32 %.lcssa488493.1, %i.ot
  %i.aku = zext i1 %i.akt to i32
  %spec.select.i.i.i.i.1 = add i32 %.lcssa488493.1, %i.aku
  %i.akv = zext i8 %i.aks to i32
  %i.akw = and i32 %.lcssa488493.1, 7
  %i.akx = shl nuw nsw i32 %i.akv, %i.akw
  %i.aky = lshr i32 %i.akx, 7
  %i.akz = and i32 %i.aky, 1
  %i.ala = sub i32 %i.ako, %i.akn
  %i.alb = add i32 %i.ala, %i.akz
  br label %mpc8_dec_base.exit.i.i.1

mpc8_dec_base.exit.i.i.1:                         ; preds = %bb.cs, %get_bits_long.exit.i.i.i.1
  %.lcssa488492.1 = phi i32 [ %spec.select.i.i.i.i.1, %bb.cs ], [ %.lcssa488493.1, %get_bits_long.exit.i.i.i.1 ]
  %.0.i.i.i.1 = phi i32 [ %i.alb, %bb.cs ], [ %i.akk, %get_bits_long.exit.i.i.i.1 ]
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %mpc8_dec_base.exit.i.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %bb.cv ], [ 18, %mpc8_dec_base.exit.i.i.1 ]
  %.021.i.i.1 = phi i32 [ %.122.i.i.1, %bb.cv ], [ %i.ajo, %mpc8_dec_base.exit.i.i.1 ] ; 2 uses
  %.018.i.i.1 = phi i32 [ %.119.i.i.1, %bb.cv ], [ 0, %mpc8_dec_base.exit.i.i.1 ] ; 2 uses
  %.016.i.i.1 = phi ptr [ %.117.i.i.1, %bb.cv ], [ %i.ajr, %mpc8_dec_base.exit.i.i.1 ] ; 3 uses
  %.0.i.i413.1 = phi i32 [ %.1.i.i.1, %bb.cv ], [ %.0.i.i.i.1, %mpc8_dec_base.exit.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i.1, -1 ; 3 uses
  %i.alc = getelementptr inbounds [4 x i8], ptr %.016.i.i.1, i64 %indvars.iv.next.i.i.1
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !31 ; 2 uses
  %.not.i.i414.1 = icmp ult i32 %.0.i.i413.1, %i.ald
  br i1 %.not.i.i414.1, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ale = trunc nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.alf = shl nuw i32 1, %i.ale
  %i.alg = or i32 %i.alf, %.018.i.i.1
  %i.alh = sub nuw i32 %.0.i.i413.1, %i.ald
  %i.ali = getelementptr inbounds i8, ptr %.016.i.i.1, i64 -128
  %i.alj = add nsw i32 %.021.i.i.1, -1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.122.i.i.1 = phi i32 [ %i.alj, %bb.cu ], [ %.021.i.i.1, %bb.ct ] ; 2 uses
  %.119.i.i.1 = phi i32 [ %i.alg, %bb.cu ], [ %.018.i.i.1, %bb.ct ] ; 2 uses
  %.117.i.i.1 = phi ptr [ %i.ali, %bb.cu ], [ %.016.i.i.1, %bb.ct ]
  %.1.i.i.1 = phi i32 [ %i.alh, %bb.cu ], [ %.0.i.i413.1, %bb.ct ]
  %i.alk = icmp sgt i32 %.122.i.i.1, 0
  br i1 %i.alk, label %bb.ct, label %mpc8_get_mask.exit.1, !llvm.loop !0

mpc8_get_mask.exit.1:                             ; preds = %bb.cv, %get_vlc2.exit378.1, %get_vlc2.exit378.1
  %.lcssa488491.1 = phi i32 [ %i.ajm, %get_vlc2.exit378.1 ], [ %i.ajm, %get_vlc2.exit378.1 ], [ %.lcssa488492.1, %bb.cv ]
  %.0.i415.1 = phi i32 [ 0, %get_vlc2.exit378.1 ], [ 0, %get_vlc2.exit378.1 ], [ %.119.i.i.1, %bb.cv ]
  %i.all = icmp sgt i32 %.167.i375.1, 9
  %i.alm = sext i1 %i.all to i32
  %spec.select.i.1 = xor i32 %.0.i415.1, %i.alm
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %5
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 72
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %mpc8_get_mask.exit.1
  %indvars.iv564.1 = phi i64 [ 0, %mpc8_get_mask.exit.1 ], [ %indvars.iv.next565.1, %bb.cy ] ; 3 uses
  %i.alp = phi i32 [ %.lcssa488491.1, %mpc8_get_mask.exit.1 ], [ %i.amf, %bb.cy ] ; 5 uses
  %i.alq = trunc nuw nsw i64 %indvars.iv564.1 to i32
  %i.alr = lshr exact i32 131072, %i.alq
  %i.als = and i32 %i.alr, %spec.select.i.1
  %.not348.1 = icmp eq i32 %i.als, 0
  br i1 %.not348.1, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.alt = lshr i32 %i.alp, 3
  %i.alu = zext nneg i32 %i.alt to i64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !30
  %i.alx = icmp slt i32 %i.alp, %i.ot
  %i.aly = zext i1 %i.alx to i32
  %spec.select.i416.1 = add i32 %i.alp, %i.aly
  %i.alz = zext i8 %i.alw to i32
  %i.ama = and i32 %i.alp, 7
  %i.amb = shl nuw nsw i32 %i.alz, %i.ama
  %i.amc = lshr i32 %i.amb, 6
  %i.amd = and i32 %i.amc, 2
  %i.ame = add nsw i32 %i.amd, -1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.amf = phi i32 [ %spec.select.i416.1, %bb.cx ], [ %i.alp, %bb.cw ] ; 3 uses
  %i.amg = phi i32 [ %i.ame, %bb.cx ], [ 0, %bb.cw ]
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %indvars.iv564.1
  store i32 %i.amg, ptr %i.amh, align 4, !tbaa !31
  %indvars.iv.next565.1 = add nuw nsw i64 %indvars.iv564.1, 1 ; 2 uses
  %exitcond567.1.not = icmp eq i64 %indvars.iv.next565.1, 18
  br i1 %exitcond567.1.not, label %.loopexit422, label %bb.cw, !llvm.loop !61

bb.cz:                                            ; preds = %.preheader425, %get_vlc2.exit374
  %indvars.iv561 = phi i64 [ 0, %.preheader425 ], [ %indvars.iv.next562, %get_vlc2.exit374 ] ; 3 uses
  %.2486 = phi i32 [ 6, %.preheader425 ], [ %i.aop, %get_vlc2.exit374 ] ; 2 uses
  %i.ami = phi i32 [ %.lcssa499503504, %.preheader425 ], [ %i.any, %get_vlc2.exit374 ] ; 4 uses
  %i.amj = icmp sgt i32 %.2486, 3
  %i.amk = zext i1 %i.amj to i64
  %i.aml = getelementptr inbounds nuw [24 x i8], ptr @q2_vlc, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !46 ; 2 uses
  %i.amo = lshr i32 %i.ami, 3
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.amp
  %i.amr = load i32, ptr %i.amq, align 1, !tbaa !30
  %i.ams = tail call i32 @llvm.bswap.i32(i32 %i.amr)
  %i.amt = and i32 %i.ami, 7
  %i.amu = shl i32 %i.ams, %i.amt
  %i.amv = lshr i32 %i.amu, 23
  %i.amw = zext nneg i32 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %i.amw ; 2 uses
  %i.amy = load i16, ptr %i.amx, align 2, !tbaa !30
  %i.amz = sext i16 %i.amy to i32                 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 2
  %i.anb = load i16, ptr %i.ana, align 2, !tbaa !30 ; 2 uses
  %i.anc = sext i16 %i.anb to i32                 ; 2 uses
  %i.and = icmp slt i16 %i.anb, 0
  br i1 %i.and, label %bb.da, label %get_vlc2.exit374

bb.da:                                            ; preds = %bb.cz
  %i.ane = add i32 %i.ami, 9
  %i.anf = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.ane) ; 3 uses
  %i.ang = lshr i32 %i.anf, 3
  %i.anh = zext nneg i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.anh
  %i.anj = load i32, ptr %i.ani, align 1, !tbaa !30
  %i.ank = tail call i32 @llvm.bswap.i32(i32 %i.anj)
  %i.anl = and i32 %i.anf, 7
  %i.anm = shl i32 %i.ank, %i.anl
  %i.ann = add nsw i32 %i.anc, 32
  %i.ano = lshr i32 %i.anm, %i.ann
  %i.anp = add i32 %i.ano, %i.amz
  %i.anq = zext i32 %i.anp to i64
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %i.anq ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 2
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !30
  %i.anu = sext i16 %i.ant to i32
  %i.anv = load i16, ptr %i.anr, align 2, !tbaa !30
  %i.anw = sext i16 %i.anv to i32
  br label %get_vlc2.exit374

get_vlc2.exit374:                                 ; preds = %bb.cz, %bb.da
  %.167.i371 = phi i32 [ %i.anw, %bb.da ], [ %i.amz, %bb.cz ]
  %.165.i372 = phi i32 [ %i.anf, %bb.da ], [ %i.ami, %bb.cz ]
  %.1.i373 = phi i32 [ %i.anu, %bb.da ], [ %i.anc, %bb.cz ]
  %i.anx = add i32 %.1.i373, %.165.i372
  %i.any = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.anx) ; 3 uses
  %i.anz = sext i32 %.167.i371 to i64             ; 4 uses
  %i.aoa = getelementptr inbounds i8, ptr @mpc8_idx50, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !30
  %i.aoc = sext i8 %i.aob to i32
  %gep637 = getelementptr inbounds nuw [4 x i8], ptr %gep647.a, i64 %indvars.iv561 ; 3 uses
  store i32 %i.aoc, ptr %gep637, align 4, !tbaa !31
  %i.aod = getelementptr inbounds i8, ptr @mpc8_idx51, i64 %i.anz
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !30
  %i.aof = sext i8 %i.aoe to i32
  %i.aog = getelementptr inbounds nuw i8, ptr %gep637, i64 4
  store i32 %i.aof, ptr %i.aog, align 4, !tbaa !31
  %i.aoh = getelementptr inbounds i8, ptr @mpc8_idx52, i64 %i.anz
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !30
  %i.aoj = sext i8 %i.aoi to i32
  %i.aok = getelementptr inbounds nuw i8, ptr %gep637, i64 8
  store i32 %i.aoj, ptr %i.aok, align 4, !tbaa !31
  %i.aol = ashr i32 %.2486, 1
  %i.aom = getelementptr inbounds i8, ptr @mpc8_huffq2, i64 %i.anz
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !30
  %i.aoo = sext i8 %i.aon to i32
  %i.aop = add nsw i32 %i.aol, %i.aoo
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 3
  %i.aoq = icmp samesign ult i64 %indvars.iv561, 33
  br i1 %i.aoq, label %bb.cz, label %.loopexit422, !llvm.loop !62

bb.db:                                            ; preds = %bb.cc, %bb.cc
  %i.aor = zext nneg i32 %i.ada to i64
  %i.aos = getelementptr [24 x i8], ptr @q3_vlc, i64 %i.aor
  %i.aot = getelementptr i8, ptr %i.aos, i64 -64
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !46 ; 2 uses
  %gep645 = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep644.a, i64 %indvars.iv579
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %get_vlc2.exit370
  %indvars.iv558 = phi i64 [ 0, %bb.db ], [ %indvars.iv.next559, %get_vlc2.exit370 ] ; 3 uses
  %i.aov = phi i32 [ %.lcssa499503504, %bb.db ], [ %i.aqg, %get_vlc2.exit370 ] ; 4 uses
  %i.aow = lshr i32 %i.aov, 3
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.aox
  %i.aoz = load i32, ptr %i.aoy, align 1, !tbaa !30
  %i.apa = tail call i32 @llvm.bswap.i32(i32 %i.aoz)
  %i.apb = and i32 %i.aov, 7
  %i.apc = shl i32 %i.apa, %i.apb
  %i.apd = lshr i32 %i.apc, 23
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %i.ape ; 2 uses
  %i.apg = load i16, ptr %i.apf, align 2, !tbaa !30
  %i.aph = sext i16 %i.apg to i32                 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 2
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !30 ; 2 uses
  %i.apk = sext i16 %i.apj to i32                 ; 2 uses
  %i.apl = icmp slt i16 %i.apj, 0
  br i1 %i.apl, label %bb.dd, label %get_vlc2.exit370

bb.dd:                                            ; preds = %bb.dc
  %i.apm = add i32 %i.aov, 9
  %i.apn = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.apm) ; 3 uses
  %i.apo = lshr i32 %i.apn, 3
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.app
  %i.apr = load i32, ptr %i.apq, align 1, !tbaa !30
  %i.aps = tail call i32 @llvm.bswap.i32(i32 %i.apr)
  %i.apt = and i32 %i.apn, 7
  %i.apu = shl i32 %i.aps, %i.apt
  %i.apv = add nsw i32 %i.apk, 32
  %i.apw = lshr i32 %i.apu, %i.apv
  %i.apx = add i32 %i.apw, %i.aph
  %i.apy = zext i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %i.apy ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !30
  %i.aqc = sext i16 %i.aqb to i32
  %i.aqd = load i16, ptr %i.apz, align 2, !tbaa !30
  %i.aqe = sext i16 %i.aqd to i32
  br label %get_vlc2.exit370

get_vlc2.exit370:                                 ; preds = %bb.dc, %bb.dd
  %.167.i367 = phi i32 [ %i.aqe, %bb.dd ], [ %i.aph, %bb.dc ] ; 2 uses
  %.165.i368 = phi i32 [ %i.apn, %bb.dd ], [ %i.aov, %bb.dc ]
  %.1.i369 = phi i32 [ %i.aqc, %bb.dd ], [ %i.apk, %bb.dc ]
  %i.aqf = add i32 %.1.i369, %.165.i368
  %i.aqg = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.aqf) ; 3 uses
  %i.aqh = ashr i32 %.167.i367, 4
  %gep635 = getelementptr inbounds nuw [4 x i8], ptr %gep645, i64 %indvars.iv558 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %gep635, i64 4
  store i32 %i.aqh, ptr %i.aqi, align 4, !tbaa !31
  %i.aqj = shl i32 %.167.i367, 28
  %i.aqk = ashr exact i32 %i.aqj, 28
  store i32 %i.aqk, ptr %gep635, align 4, !tbaa !31
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 2
  %i.aql = icmp samesign ult i64 %indvars.iv558, 34
  br i1 %i.aql, label %bb.dc, label %.loopexit422, !llvm.loop !63

bb.de:                                            ; preds = %bb.cc, %bb.cc, %bb.cc, %bb.cc
  %i.aqm = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr @mpc8_thres, i64 %i.aqm
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !31 ; 2 uses
  %i.aqp = shl i32 %i.aqo, 1
  %i.aqq = getelementptr [48 x i8], ptr @quant_vlc, i64 %i.aqm
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 -240
  %gep643 = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep642.a, i64 %indvars.iv579
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %get_vlc2.exit366
  %indvars.iv554 = phi i64 [ 0, %bb.de ], [ %indvars.iv.next555, %get_vlc2.exit366 ] ; 2 uses
  %.3479 = phi i32 [ %i.aqp, %bb.de ], [ %i.asn, %get_vlc2.exit366 ] ; 2 uses
  %i.aqs = phi i32 [ %.lcssa499503504, %bb.de ], [ %i.ask, %get_vlc2.exit366 ] ; 4 uses
  %i.aqt = icmp ugt i32 %.3479, %i.aqo
  %i.aqu = zext i1 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [24 x i8], ptr %i.aqr, i64 %i.aqu ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !46 ; 2 uses
  %i.aqy = load i32, ptr %i.aqv, align 8, !tbaa !77 ; 2 uses
  %i.aqz = lshr i32 %i.aqs, 3
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ara
  %i.arc = load i32, ptr %i.arb, align 1, !tbaa !30
  %i.ard = tail call i32 @llvm.bswap.i32(i32 %i.arc)
  %i.are = and i32 %i.aqs, 7
  %i.arf = shl i32 %i.ard, %i.are
  %i.arg = sub nsw i32 32, %i.aqy
  %i.arh = lshr i32 %i.arf, %i.arg
  %i.ari = zext i32 %i.arh to i64
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.ari ; 2 uses
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !30
  %i.arl = sext i16 %i.ark to i32                 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 2
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !30 ; 2 uses
  %i.aro = sext i16 %i.arn to i32                 ; 2 uses
  %i.arp = icmp slt i16 %i.arn, 0
  br i1 %i.arp, label %bb.dg, label %get_vlc2.exit366

bb.dg:                                            ; preds = %bb.df
  %i.arq = add i32 %i.aqs, %i.aqy
  %i.arr = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.arq) ; 3 uses
  %i.ars = lshr i32 %i.arr, 3
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 1, !tbaa !30
  %i.arw = tail call i32 @llvm.bswap.i32(i32 %i.arv)
  %i.arx = and i32 %i.arr, 7
  %i.ary = shl i32 %i.arw, %i.arx
  %i.arz = add nsw i32 %i.aro, 32
  %i.asa = lshr i32 %i.ary, %i.arz
  %i.asb = add i32 %i.asa, %i.arl
  %i.asc = zext i32 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.asc ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 2
  %i.asf = load i16, ptr %i.ase, align 2, !tbaa !30
  %i.asg = sext i16 %i.asf to i32
  %i.ash = load i16, ptr %i.asd, align 2, !tbaa !30
  %i.asi = sext i16 %i.ash to i32
  br label %get_vlc2.exit366

get_vlc2.exit366:                                 ; preds = %bb.df, %bb.dg
  %.167.i363 = phi i32 [ %i.asi, %bb.dg ], [ %i.arl, %bb.df ] ; 2 uses
  %.165.i364 = phi i32 [ %i.arr, %bb.dg ], [ %i.aqs, %bb.df ]
  %.1.i365 = phi i32 [ %i.asg, %bb.dg ], [ %i.aro, %bb.df ]
  %i.asj = add i32 %.1.i365, %.165.i364
  %i.ask = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.asj) ; 3 uses
  %gep633 = getelementptr inbounds nuw [4 x i8], ptr %gep643, i64 %indvars.iv554
  store i32 %.167.i363, ptr %gep633, align 4, !tbaa !31
  %i.asl = ashr i32 %.3479, 1
  %i.asm = tail call i32 @llvm.abs.i32(i32 %.167.i363, i1 true)
  %i.asn = add nsw i32 %i.asm, %i.asl
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next555, 36
  br i1 %exitcond557.not, label %.loopexit422, label %bb.df, !llvm.loop !64

bb.dh:                                            ; preds = %.preheader, %bb.dk
  %indvars.iv575 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next576, %bb.dk ] ; 2 uses
  %i.aso = phi i32 [ %.lcssa499503504, %.preheader ], [ %i.aun, %bb.dk ] ; 4 uses
  %i.asp = lshr i32 %i.aso, 3
  %i.asq = zext nneg i32 %i.asp to i64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.asq
  %i.ass = load i32, ptr %i.asr, align 1, !tbaa !30
  %i.ast = tail call i32 @llvm.bswap.i32(i32 %i.ass)
  %i.asu = and i32 %i.aso, 7
  %i.asv = shl i32 %i.ast, %i.asu
  %i.asw = lshr i32 %i.asv, 23
  %i.asx = zext nneg i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.asx ; 2 uses
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !30
  %i.ata = sext i16 %i.asz to i32                 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asy, i64 2
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !30 ; 2 uses
  %i.atd = sext i16 %i.atc to i32                 ; 2 uses
  %i.ate = icmp slt i16 %i.atc, 0
  br i1 %i.ate, label %bb.di, label %get_vlc2.exit

bb.di:                                            ; preds = %bb.dh
  %i.atf = add i32 %i.aso, 9
  %i.atg = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.atf) ; 3 uses
  %i.ath = lshr i32 %i.atg, 3
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 1, !tbaa !30
  %i.atl = tail call i32 @llvm.bswap.i32(i32 %i.atk)
  %i.atm = and i32 %i.atg, 7
  %i.atn = shl i32 %i.atl, %i.atm
  %i.ato = add nsw i32 %i.atd, 32
  %i.atp = lshr i32 %i.atn, %i.ato
  %i.atq = add i32 %i.atp, %i.ata
  %i.atr = zext i32 %i.atq to i64
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.atr ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 2
  %i.atu = load i16, ptr %i.att, align 2, !tbaa !30
  %i.atv = sext i16 %i.atu to i32
  %i.atw = load i16, ptr %i.ats, align 2, !tbaa !30
  %i.atx = sext i16 %i.atw to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.dh, %bb.di
  %.167.i = phi i32 [ %i.atx, %bb.di ], [ %i.ata, %bb.dh ] ; 2 uses
  %.165.i = phi i32 [ %i.atg, %bb.di ], [ %i.aso, %bb.dh ]
  %.1.i = phi i32 [ %i.atv, %bb.di ], [ %i.atd, %bb.dh ]
  %i.aty = add i32 %.1.i, %.165.i
  %i.atz = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.aty) ; 4 uses
  %gep641 = getelementptr inbounds nuw [4 x i8], ptr %gep651, i64 %indvars.iv575 ; 2 uses
  br i1 %.not349, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %get_vlc2.exit
  %i.aua = shl i32 %.167.i, %i.adt                ; 2 uses
  store i32 %i.aua, ptr %gep641, align 4, !tbaa !31
  %i.aub = lshr i32 %i.atz, 3
  %i.auc = zext nneg i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.auc
  %i.aue = load i32, ptr %i.aud, align 1, !tbaa !30
  %i.auf = tail call i32 @llvm.bswap.i32(i32 %i.aue)
  %i.aug = and i32 %i.atz, 7
  %i.auh = shl i32 %i.auf, %i.aug
  %i.aui = lshr i32 %i.auh, %i.adu
  %i.auj = add i32 %i.atz, %i.adt
  %i.auk = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 %i.auj)
  %i.aul = or i32 %i.aui, %i.aua
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %get_vlc2.exit
  %i.aum = phi i32 [ %i.aul, %bb.dj ], [ %.167.i, %get_vlc2.exit ]
  %i.aun = phi i32 [ %i.auk, %bb.dj ], [ %i.atz, %get_vlc2.exit ] ; 3 uses
  %i.auo = add i32 %.neg, %i.aum
  store i32 %i.auo, ptr %gep641, align 4, !tbaa !31
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next576, 36
  br i1 %exitcond578.not, label %.loopexit422, label %bb.dh, !llvm.loop !65

.loopexit422:                                     ; preds = %get_vlc2.exit366, %get_vlc2.exit370, %get_vlc2.exit374, %bb.cy, %bb.cd, %bb.dk, %bb.cc
  %.promoted501507 = phi i32 [ %i.aun, %bb.dk ], [ %i.aqg, %get_vlc2.exit370 ], [ %i.amf, %bb.cy ], [ %.promoted501508, %bb.cd ], [ %.promoted501508, %bb.cc ], [ %i.any, %get_vlc2.exit374 ], [ %i.ask, %get_vlc2.exit366 ] ; 3 uses
  %.lcssa499502 = phi i32 [ %i.aun, %bb.dk ], [ %i.aqg, %get_vlc2.exit370 ], [ %i.amf, %bb.cy ], [ %.lcssa499503504, %bb.cd ], [ %.lcssa499503504, %bb.cc ], [ %i.any, %get_vlc2.exit374 ], [ %i.ask, %get_vlc2.exit366 ]
  br i1 %i.acy, label %bb.cc, label %bb.dl, !llvm.loop !66

bb.dl:                                            ; preds = %.loopexit422
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1 ; 2 uses
  %6 = add nuw nsw i32 %.0312513, 36
  %exitcond590.not = icmp eq i64 %indvars.iv.next585, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge514, label %.preheader429, !llvm.loop !67

._crit_edge514:                                   ; preds = %bb.dl, %.loopexit435
  %.val = phi i32 [ %.promoted, %.loopexit435 ], [ %.promoted501507, %bb.dl ] ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 1152, ptr %i.aup, align 8, !tbaa !83
  %i.auq = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.aur = icmp slt i32 %i.auq, 0
  br i1 %i.aur, label %bb.dt, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge514
  %i.aus = add nsw i32 %.0311, -1
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !84
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !85
  tail call void @ff_mpc_dequantize_and_synth(ptr noundef nonnull %i.f, i32 noundef %i.aus, ptr noundef %i.auu, i32 noundef %i.auw) #10
  %i.aux = load i32, ptr %i.h, align 4, !tbaa !39
  %i.auy = add nsw i32 %i.aux, 1                  ; 3 uses
  store i32 %i.auy, ptr %i.h, align 4, !tbaa !39
  store i32 %.val, ptr %i.t, align 8, !tbaa !71
  %i.auz = getelementptr inbounds nuw i8, ptr %i.f, i64 11232
  %i.ava = load i32, ptr %i.auz, align 16, !tbaa !38
  %.not346 = icmp slt i32 %i.auy, %i.ava
  br i1 %.not346, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.h, align 4, !tbaa !39
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.avb = phi i32 [ 0, %bb.dn ], [ %i.auy, %bb.dm ]
  %.val403 = load i32, ptr %i.p, align 4, !tbaa !72
  %i.avc = sub nsw i32 %.val403, %.val            ; 3 uses
  %i.avd = icmp slt i32 %i.avc, 0
  br i1 %i.avd, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ave = sub nsw i32 0, %i.avc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.ave) #10
  br label %.sink.split

bb.dq:                                            ; preds = %bb.do
  %i.avf = icmp eq i32 %i.avb, 0
  %i.avg = icmp samesign ult i32 %i.avc, 8
  %or.cond = select i1 %i.avf, i1 %i.avg, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.dr

.sink.split:                                      ; preds = %bb.dq, %bb.dp
  store i32 %i.m, ptr %i.t, align 8, !tbaa !71
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split, %bb.dq
  store i32 1, ptr %2, align 4, !tbaa !31
  %i.avh = load i32, ptr %i.h, align 4, !tbaa !39
  %.not347 = icmp eq i32 %i.avh, 0
  br i1 %.not347, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.avi = load i32, ptr %i.t, align 8, !tbaa !71
  %i.avj = ashr i32 %i.avi, 3
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge514, %bb.c, %bb.o, %bb.m
  %.0332 = phi i32 [ %i.auq, %._crit_edge514 ], [ %i.d, %bb.m ], [ -1094995529, %bb.o ], [ -1094995529, %bb.c ], [ %i.avj, %bb.ds ], [ %i.d, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0332
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mpc8_decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11228
  store i32 0, ptr %i.c, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden void @ff_mpadsp_init(ptr noundef) local_unnamed_addr #4

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind optsize uwtable
define internal void @mpc8_init_static() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr @mpc8_q_syms, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr @mpc8_bands_syms, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr @mpc8_res_syms, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store ptr @mpc8_scfi_syms, ptr %i.d, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store ptr @mpc8_dscf_syms, ptr %i.e, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 0, ptr %i.f, align 4, !tbaa !31
  call fastcc void @build_vlc(ptr noundef nonnull @band_vlc, ptr noundef %i.f, ptr noundef nonnull @mpc8_bands_len_counts, ptr noundef %i.b, i32 noundef 0) #11
  call fastcc void @build_vlc(ptr noundef nonnull @q1_vlc, ptr noundef %i.f, ptr noundef nonnull @mpc8_q1_len_counts, ptr noundef %i.a, i32 noundef 0) #11
  call fastcc void @build_vlc(ptr noundef nonnull @q9up_vlc, ptr noundef %i.f, ptr noundef nonnull @mpc8_q9up_len_counts, ptr noundef %i.a, i32 noundef 0) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  tail call void @ff_mpa_synth_init_fixed() #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.g = phi i1 [ true, %bb.a ], [ false, %bb.d ]
  %indvars.iv24 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ] ; 13 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr @scfi_vlc, i64 %indvars.iv24
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @mpc8_scfi_len_counts, i64 %indvars.iv24
  call fastcc void @build_vlc(ptr noundef nonnull %i.h, ptr noundef %i.f, ptr noundef nonnull %i.i, ptr noundef %i.d, i32 noundef 0) #11
  %i.j = getelementptr inbounds nuw [24 x i8], ptr @dscf_vlc, i64 %indvars.iv24
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @mpc8_dscf_len_counts, i64 %indvars.iv24
  call fastcc void @build_vlc(ptr noundef nonnull %i.j, ptr noundef %i.f, ptr noundef nonnull %i.k, ptr noundef %i.e, i32 noundef 0) #11
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @res_vlc, i64 %indvars.iv24
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @mpc8_res_len_counts, i64 %indvars.iv24
  call fastcc void @build_vlc(ptr noundef nonnull %i.l, ptr noundef %i.f, ptr noundef nonnull %i.m, ptr noundef %i.c, i32 noundef 0) #11
  %i.n = getelementptr inbounds nuw [24 x i8], ptr @q2_vlc, i64 %indvars.iv24
  %i.o = getelementptr inbounds nuw [16 x i8], ptr @mpc8_q2_len_counts, i64 %indvars.iv24
  call fastcc void @build_vlc(ptr noundef nonnull %i.n, ptr noundef %i.f, ptr noundef nonnull %i.o, ptr noundef %i.a, i32 noundef 0) #11
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @q3_vlc, i64 %indvars.iv24
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @mpc8_q34_len_counts, i64 %indvars.iv24
  %indvars.iv24.tr = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.r = shl nuw nsw i32 %indvars.iv24.tr, 4
  %i.s = sub nuw nsw i32 -48, %i.r
  call fastcc void @build_vlc(ptr noundef nonnull %i.p, ptr noundef %i.f, ptr noundef nonnull %i.q, ptr noundef %i.a, i32 noundef %i.s) #11
  %invariant.gep = getelementptr inbounds nuw [24 x i8], ptr @quant_vlc, i64 %indvars.iv24
  %i.t = getelementptr inbounds nuw [64 x i8], ptr @mpc8_q5_8_len_counts, i64 %indvars.iv24
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.c, label %bb.b, !llvm.loop !86

bb.e:                                             ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %gep = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %.neg = shl nsw i32 -8, %i.v
  %i.w = or disjoint i32 %.neg, 1
  call fastcc void @build_vlc(ptr noundef nonnull %gep, ptr noundef %i.f, ptr noundef nonnull %i.u, ptr noundef %i.a, i32 noundef %i.w) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !87
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @build_vlc(ptr noundef initializes((8, 16), (20, 24)) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 -2147483646, -2147483648) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr %1, align 4, !tbaa !31     ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @build_vlc.vlc_buf, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !46
  %i.f = sub i32 9296, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.f, ptr %i.g, align 4, !tbaa !89
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.h = load i8, ptr %i.a, align 16, !tbaa !30
  %i.i = tail call i8 @llvm.umin.i8(i8 %i.h, i8 9)
  %i.j = zext nneg i8 %i.i to i32
  %i.k = load ptr, ptr %3, align 8, !tbaa !48
end_hunk_0
