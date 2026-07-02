inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.auq = load i8, ptr %i.auo, align 1
  store i8 %i.auq, ptr %i.aup, align 1
  %i.aur = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 4
  %i.aus = load i8, ptr %i.aur, align 1
  %i.aut = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 5
  store i8 %i.aus, ptr %i.aut, align 1
  %i.auu = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 5
  %i.auv = load i8, ptr %i.auu, align 1
  %i.auw = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 6
  store i8 %i.auv, ptr %i.auw, align 1
  %i.aux = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 7
  store i8 -1, ptr %i.aux, align 1
  %i.auy = getelementptr inbounds nuw i8, ptr %.6148223.i.i.i, i64 6
  %i.auz = getelementptr inbounds nuw i8, ptr %.6224.i.i.i, i64 8
  %.6165.i.i.i.1 = add i32 %.6165225.i.i.i, -2    ; 2 uses
  %i.ava = icmp sgt i32 %.6165.i.i.i.1, -1
  br i1 %i.ava, label %.lr.ph226.i.i.i, label %.loopexit.i.i.i, !llvm.loop !127

.lr.ph221.i.i.i:                                  ; preds = %.lr.ph221.i.i.i.preheader, %.lr.ph221.i.i.i
  %.7166220.i.i.i = phi i32 [ %.7166.i.i.i, %.lr.ph221.i.i.i ], [ %.7166220.i.i.i.ph, %.lr.ph221.i.i.i.preheader ]
  %.7219.i.i.i = phi ptr [ %i.avr, %.lr.ph221.i.i.i ], [ %.7219.i.i.i.ph, %.lr.ph221.i.i.i.preheader ] ; 2 uses
  %.7149218.i.i.i = phi ptr [ %i.avq, %.lr.ph221.i.i.i ], [ %.7149218.i.i.i.ph, %.lr.ph221.i.i.i.preheader ] ; 4 uses
  %i.avb = load i8, ptr %.7149218.i.i.i, align 1
  %i.avc = zext i8 %i.avb to i16
  %i.avd = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 1
  %i.ave = load i8, ptr %i.avd, align 1
  %i.avf = zext i8 %i.ave to i16
  %i.avg = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 2
  %i.avh = load i8, ptr %i.avg, align 1
  %i.avi = zext i8 %i.avh to i16
  %i.avj = mul nuw nsw i16 %i.avc, 77
  %i.avk = mul nuw i16 %i.avf, 150
  %i.avl = add nuw i16 %i.avk, %i.avj
  %i.avm = mul nuw nsw i16 %i.avi, 29
  %i.avn = add nuw i16 %i.avl, %i.avm
  %i.avo = lshr i16 %i.avn, 8
  %i.avp = trunc nuw i16 %i.avo to i8
  store i8 %i.avp, ptr %.7219.i.i.i, align 1
  %i.avq = getelementptr inbounds nuw i8, ptr %.7149218.i.i.i, i64 3
  %i.avr = getelementptr inbounds nuw i8, ptr %.7219.i.i.i, i64 1
  %.7166.i.i.i = add i32 %.7166220.i.i.i, -1      ; 2 uses
  %i.avs = icmp sgt i32 %.7166.i.i.i, -1
  br i1 %i.avs, label %.lr.ph221.i.i.i, label %.loopexit.i.i.i, !llvm.loop !128

.lr.ph216.i.i.i:                                  ; preds = %.lr.ph216.i.i.i.preheader356, %.lr.ph216.i.i.i
  %.8167215.i.i.i = phi i32 [ %.8167.i.i.i, %.lr.ph216.i.i.i ], [ %.8167215.i.i.i.ph, %.lr.ph216.i.i.i.preheader356 ]
  %.8214.i.i.i = phi ptr [ %i.awk, %.lr.ph216.i.i.i ], [ %.8214.i.i.i.ph, %.lr.ph216.i.i.i.preheader356 ] ; 3 uses
  %.8150213.i.i.i = phi ptr [ %i.awj, %.lr.ph216.i.i.i ], [ %.8150213.i.i.i.ph, %.lr.ph216.i.i.i.preheader356 ] ; 4 uses
  %i.avt = load i8, ptr %.8150213.i.i.i, align 1
  %i.avu = zext i8 %i.avt to i16
  %i.avv = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 1
  %i.avw = load i8, ptr %i.avv, align 1
  %i.avx = zext i8 %i.avw to i16
  %i.avy = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 2
  %i.avz = load i8, ptr %i.avy, align 1
  %i.awa = zext i8 %i.avz to i16
  %i.awb = mul nuw nsw i16 %i.avu, 77
  %i.awc = mul nuw i16 %i.avx, 150
  %i.awd = add nuw i16 %i.awc, %i.awb
  %i.awe = mul nuw nsw i16 %i.awa, 29
  %i.awf = add nuw i16 %i.awd, %i.awe
  %i.awg = lshr i16 %i.awf, 8
  %i.awh = trunc nuw i16 %i.awg to i8
  store i8 %i.awh, ptr %.8214.i.i.i, align 1
  %i.awi = getelementptr inbounds nuw i8, ptr %.8214.i.i.i, i64 1
  store i8 -1, ptr %i.awi, align 1
  %i.awj = getelementptr inbounds nuw i8, ptr %.8150213.i.i.i, i64 3
  %i.awk = getelementptr inbounds nuw i8, ptr %.8214.i.i.i, i64 2
  %.8167.i.i.i = add i32 %.8167215.i.i.i, -1      ; 2 uses
  %i.awl = icmp sgt i32 %.8167.i.i.i, -1
  br i1 %i.awl, label %.lr.ph216.i.i.i, label %.loopexit.i.i.i, !llvm.loop !129

.lr.ph211.i.i.i:                                  ; preds = %.lr.ph211.i.i.i.preheader, %.lr.ph211.i.i.i
  %.9168210.i.i.i = phi i32 [ %.9168.i.i.i, %.lr.ph211.i.i.i ], [ %.9168210.i.i.i.ph, %.lr.ph211.i.i.i.preheader ]
  %.9209.i.i.i = phi ptr [ %i.axc, %.lr.ph211.i.i.i ], [ %.9209.i.i.i.ph, %.lr.ph211.i.i.i.preheader ] ; 2 uses
  %.9151208.i.i.i = phi ptr [ %i.axb, %.lr.ph211.i.i.i ], [ %.9151208.i.i.i.ph, %.lr.ph211.i.i.i.preheader ] ; 4 uses
  %i.awm = load i8, ptr %.9151208.i.i.i, align 1
  %i.awn = zext i8 %i.awm to i16
  %i.awo = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 1
  %i.awp = load i8, ptr %i.awo, align 1
  %i.awq = zext i8 %i.awp to i16
  %i.awr = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 2
  %i.aws = load i8, ptr %i.awr, align 1
  %i.awt = zext i8 %i.aws to i16
  %i.awu = mul nuw nsw i16 %i.awn, 77
  %i.awv = mul nuw i16 %i.awq, 150
  %i.aww = add nuw i16 %i.awv, %i.awu
  %i.awx = mul nuw nsw i16 %i.awt, 29
  %i.awy = add nuw i16 %i.aww, %i.awx
  %i.awz = lshr i16 %i.awy, 8
  %i.axa = trunc nuw i16 %i.awz to i8
  store i8 %i.axa, ptr %.9209.i.i.i, align 1
  %i.axb = getelementptr inbounds nuw i8, ptr %.9151208.i.i.i, i64 4
  %i.axc = getelementptr inbounds nuw i8, ptr %.9209.i.i.i, i64 1
  %.9168.i.i.i = add i32 %.9168210.i.i.i, -1      ; 2 uses
  %i.axd = icmp sgt i32 %.9168.i.i.i, -1
  br i1 %i.axd, label %.lr.ph211.i.i.i, label %.loopexit.i.i.i, !llvm.loop !130

.lr.ph206.i.i.i:                                  ; preds = %.lr.ph206.i.i.i.preheader359, %.lr.ph206.i.i.i
  %.10169205.i.i.i = phi i32 [ %.10169.i.i.i, %.lr.ph206.i.i.i ], [ %.10169205.i.i.i.ph, %.lr.ph206.i.i.i.preheader359 ]
  %.10204.i.i.i = phi ptr [ %i.axx, %.lr.ph206.i.i.i ], [ %.10204.i.i.i.ph, %.lr.ph206.i.i.i.preheader359 ] ; 3 uses
  %.10152203.i.i.i = phi ptr [ %i.axw, %.lr.ph206.i.i.i ], [ %.10152203.i.i.i.ph, %.lr.ph206.i.i.i.preheader359 ] ; 5 uses
  %i.axe = load i8, ptr %.10152203.i.i.i, align 1
  %i.axf = zext i8 %i.axe to i16
  %i.axg = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 1
  %i.axh = load i8, ptr %i.axg, align 1
  %i.axi = zext i8 %i.axh to i16
  %i.axj = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 2
  %i.axk = load i8, ptr %i.axj, align 1
  %i.axl = zext i8 %i.axk to i16
  %i.axm = mul nuw nsw i16 %i.axf, 77
  %i.axn = mul nuw i16 %i.axi, 150
  %i.axo = add nuw i16 %i.axn, %i.axm
  %i.axp = mul nuw nsw i16 %i.axl, 29
  %i.axq = add nuw i16 %i.axo, %i.axp
  %i.axr = lshr i16 %i.axq, 8
  %i.axs = trunc nuw i16 %i.axr to i8
  store i8 %i.axs, ptr %.10204.i.i.i, align 1
  %i.axt = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 3
  %i.axu = load i8, ptr %i.axt, align 1
  %i.axv = getelementptr inbounds nuw i8, ptr %.10204.i.i.i, i64 1
  store i8 %i.axu, ptr %i.axv, align 1
  %i.axw = getelementptr inbounds nuw i8, ptr %.10152203.i.i.i, i64 4
  %i.axx = getelementptr inbounds nuw i8, ptr %.10204.i.i.i, i64 2
  %.10169.i.i.i = add i32 %.10169205.i.i.i, -1    ; 2 uses
  %i.axy = icmp sgt i32 %.10169.i.i.i, -1
  br i1 %i.axy, label %.lr.ph206.i.i.i, label %.loopexit.i.i.i, !llvm.loop !131

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.11170201.i.i.i = phi i32 [ %.11170.i.i.i.1, %.lr.ph.i.i.i ], [ %.11170201.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.11200.i.i.i = phi ptr [ %i.ayq, %.lr.ph.i.i.i ], [ %.11200.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %.11153199.i.i.i = phi ptr [ %i.ayp, %.lr.ph.i.i.i ], [ %.11153199.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.axz = load i8, ptr %.11153199.i.i.i, align 1
  store i8 %i.axz, ptr %.11200.i.i.i, align 1
  %i.aya = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 1
  %i.ayb = load i8, ptr %i.aya, align 1
  %i.ayc = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 1
  store i8 %i.ayb, ptr %i.ayc, align 1
  %i.ayd = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 2
  %i.aye = load i8, ptr %i.ayd, align 1
  %i.ayf = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 2
  store i8 %i.aye, ptr %i.ayf, align 1
  %i.ayg = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 4
  %i.ayh = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 3
  %i.ayi = load i8, ptr %i.ayg, align 1
  store i8 %i.ayi, ptr %i.ayh, align 1
  %i.ayj = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 5
  %i.ayk = load i8, ptr %i.ayj, align 1
  %i.ayl = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 4
  store i8 %i.ayk, ptr %i.ayl, align 1
  %i.aym = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 6
  %i.ayn = load i8, ptr %i.aym, align 1
  %i.ayo = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 5
  store i8 %i.ayn, ptr %i.ayo, align 1
  %i.ayp = getelementptr inbounds nuw i8, ptr %.11153199.i.i.i, i64 8
  %i.ayq = getelementptr inbounds nuw i8, ptr %.11200.i.i.i, i64 6
  %.11170.i.i.i.1 = add i32 %.11170201.i.i.i, -2  ; 2 uses
  %i.ayr = icmp sgt i32 %.11170.i.i.i.1, -1
  br i1 %i.ayr, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !132

.loopexit.i.i.i:                                  ; preds = %.lr.ph206.i.i.i, %.lr.ph211.i.i.i, %.lr.ph216.i.i.i, %.lr.ph221.i.i.i, %.lr.ph226.i.i.i.prol.loopexit, %.lr.ph226.i.i.i, %.lr.ph231.i.i.i.prol.loopexit, %.lr.ph231.i.i.i, %.lr.ph236.i.i.i.prol.loopexit, %.lr.ph236.i.i.i, %.lr.ph241.i.i.i, %.lr.ph246.i.i.i.prol.loopexit, %.lr.ph246.i.i.i, %.lr.ph251.i.i.i.prol.loopexit, %.lr.ph251.i.i.i, %.lr.ph256.i.i.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block343, %middle.block245, %middle.block187, %vec.epilog.middle.block212, %middle.block68, %vec.epilog.middle.block, %.preheader.i.i.i, %.preheader175.i.i.i, %.preheader177.i.i.i, %.preheader179.i.i.i, %.preheader181.i.i.i, %.preheader183.i.i.i, %.preheader185.i.i.i, %.preheader187.i.i.i, %.preheader189.i.i.i, %.preheader191.i.i.i, %.preheader193.i.i.i, %.preheader195.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i, label %bb.bg, !llvm.loop !133

bb.bh:                                            ; preds = %bb.bc
  %i.ays = shl nuw nsw i32 %4, 1
  %i.ayt = mul i32 %i.ays, %i.gm
  %i.ayu = mul i32 %i.ayt, %i.go
  %i.ayv = zext i32 %i.ayu to i64
  %i.ayw = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ayv) #50 ; 7 uses
  %i.ayx = icmp eq ptr %i.ayw, null
  br i1 %i.ayx, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader196.i.i.i

.preheader196.i.i.i:                              ; preds = %bb.bh
  %i.ayy = icmp sgt i32 %i.go, 0
  br i1 %i.ayy, label %.lr.ph257.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph257.i.i.i:                                  ; preds = %.preheader196.i.i.i
  %i.ayz = shl nsw i32 %i.gl, 3
  %i.aza = or disjoint i32 %i.ayz, %4             ; 2 uses
  %.11170197.i.i.i = add i32 %i.gm, -1            ; 30 uses
  %i.azb = icmp sgt i32 %.11170197.i.i.i, -1      ; 12 uses
  switch i32 %i.aza, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
    i32 10, label %.lr.ph257.split.i.i.i
    i32 11, label %.lr.ph257.split.i.i.i
    i32 12, label %.lr.ph257.split.i.i.i
    i32 17, label %.lr.ph257.split.i.i.i
    i32 19, label %.lr.ph257.split.i.i.i
    i32 20, label %.lr.ph257.split.i.i.i
    i32 28, label %.lr.ph257.split.i.i.i
    i32 25, label %.lr.ph257.split.i.i.i
    i32 26, label %.lr.ph257.split.i.i.i
    i32 33, label %.lr.ph257.split.i.i.i
    i32 34, label %.lr.ph257.split.i.i.i
    i32 35, label %.lr.ph257.split.i.i.i
  ]

.lr.ph257.split.i.i.i:                            ; preds = %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i, %.lr.ph257.i.i.i
  %wide.trip.count.i53.i.i = zext nneg i32 %i.go to i64
  %7 = zext i32 %i.gm to i64                      ; 2 uses
  %i.azc = mul i32 %i.gm, %4
  %i.azd = zext i32 %.11170197.i.i.i to i64       ; 2 uses
  %i.aze = shl nuw nsw i64 %i.azd, 1
  %i.azf = getelementptr i8, ptr %i.ayw, i64 %i.aze
  %scevgep30 = getelementptr i8, ptr %i.azf, i64 2
  %i.azg = mul i32 %i.gl, %i.gm
  %i.azh = shl nuw nsw i64 %i.azd, 2
  %i.azi = getelementptr i8, ptr %i.gj, i64 %i.azh
  %scevgep33 = getelementptr i8, ptr %i.azi, i64 2
  %8 = zext i32 %i.gm to i64                      ; 2 uses
  %xtraiter = and i32 %i.gm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.10169.i58.i.i.prol = add i32 %i.gm, -2
  %i.azj = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter375 = and i32 %i.gm, 1
  %lcmp.mod376.not = icmp eq i32 %xtraiter375, 0
  %.9168.i59.i.i.prol = add i32 %i.gm, -2
  %i.azk = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter377 = and i32 %i.gm, 1
  %lcmp.mod378.not = icmp eq i32 %xtraiter377, 0
  %.8167.i60.i.i.prol = add i32 %i.gm, -2
  %i.azl = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter379 = and i32 %i.gm, 1
  %lcmp.mod380.not = icmp eq i32 %xtraiter379, 0
  %.7166.i61.i.i.prol = add i32 %i.gm, -2
  %i.azm = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter381 = and i32 %i.gm, 1
  %lcmp.mod382.not = icmp eq i32 %xtraiter381, 0
  %.6165.i62.i.i.prol = add i32 %i.gm, -2
  %i.azn = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter383 = and i32 %i.gm, 1
  %lcmp.mod384.not = icmp eq i32 %xtraiter383, 0
  %.5164.i63.i.i.prol = add i32 %i.gm, -2
  %i.azo = icmp eq i32 %.11170197.i.i.i, 0
  %xtraiter385 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i32 %xtraiter385, 0
  %i.azp = icmp ult i32 %.11170197.i.i.i, 3
  %min.iters.check36 = icmp ult i32 %i.gm, 9
  %n.mod.vf38 = and i64 %8, 7                     ; 2 uses
  %i.azq = icmp eq i64 %n.mod.vf38, 0
  %i.azr = select i1 %i.azq, i64 8, i64 %n.mod.vf38
  %n.vec39 = sub nsw i64 %8, %i.azr               ; 4 uses
  %i.azs = trunc i64 %n.vec39 to i32
  %i.azt = sub i32 %.11170197.i.i.i, %i.azs
  %i.azu = shl nsw i64 %n.vec39, 1
  %i.azv = shl nsw i64 %n.vec39, 2
  %xtraiter390 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod391.not = icmp eq i32 %xtraiter390, 0
  %i.azw = icmp ult i32 %.11170197.i.i.i, 3
  %xtraiter393 = and i32 %i.gm, 3                 ; 2 uses
  %lcmp.mod394.not = icmp eq i32 %xtraiter393, 0
  %i.azx = icmp ult i32 %.11170197.i.i.i, 3
  %min.iters.check = icmp ult i32 %i.gm, 8
  %n.vec = and i64 %7, 4294967288                 ; 5 uses
  %i.azy = trunc nuw i64 %n.vec to i32
  %i.azz = sub i32 %.11170197.i.i.i, %i.azy
  %i.baa = shl nuw nsw i64 %n.vec, 2
  %i.bab = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %7
  %xtraiter396 = and i32 %i.gm, 1
  %lcmp.mod397.not = icmp eq i32 %xtraiter396, 0
  %.11170.i71.i.i.prol = add i32 %i.gm, -2
  %i.bac = icmp eq i32 %.11170197.i.i.i, 0
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i55.i.i, %.lr.ph257.split.i.i.i
  %indvars.iv.i54.i.i = phi i64 [ 0, %.lr.ph257.split.i.i.i ], [ %indvars.iv.next.i56.i.i, %.loopexit.i55.i.i ] ; 4 uses
  %i.bad = trunc i64 %indvars.iv.i54.i.i to i32
  %i.bae = mul i32 %i.azc, %i.bad
  %i.baf = zext i32 %i.bae to i64
  %i.bag = shl nuw nsw i64 %i.baf, 1              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ayw, i64 %i.bag
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.bag
  %i.bah = trunc i64 %indvars.iv.i54.i.i to i32
  %i.bai = mul i32 %i.azg, %i.bah
  %i.baj = zext i32 %i.bai to i64
  %i.bak = shl nuw nsw i64 %i.baj, 1              ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.gj, i64 %i.bak
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.bak
  %i.bal = trunc nuw nsw i64 %indvars.iv.i54.i.i to i32
  %i.bam = mul i32 %i.gm, %i.bal                  ; 2 uses
  %i.ban = mul i32 %i.bam, %i.gl
  %i.bao = zext i32 %i.ban to i64
  %i.bap = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.bao ; 49 uses
  %i.baq = mul i32 %i.bam, %4
  %i.bar = zext i32 %i.baq to i64
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %i.ayw, i64 %i.bar ; 45 uses
  switch i32 %i.aza, label %.preheader194.i.i.i [
    i32 10, label %.preheader.i68.i.i
    i32 11, label %.preheader174.i.i.i
    i32 12, label %.preheader176.i.i.i
    i32 17, label %.preheader178.i.i.i
    i32 19, label %.preheader180.i.i.i
    i32 20, label %.preheader182.i.i.i
    i32 28, label %.preheader184.i.i.i
    i32 25, label %.preheader186.i.i.i
    i32 26, label %.preheader188.i.i.i
    i32 33, label %.preheader190.i.i.i
    i32 34, label %.preheader192.i.i.i
  ]

.preheader194.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azb, label %.lr.ph.i70.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph.i70.i.i.preheader:                         ; preds = %.preheader194.i.i.i
  br i1 %lcmp.mod397.not, label %.lr.ph.i70.i.i.prol.loopexit, label %.lr.ph.i70.i.i.prol

.lr.ph.i70.i.i.prol:                              ; preds = %.lr.ph.i70.i.i.preheader
  %i.bat = load i16, ptr %i.bap, align 2
  store i16 %i.bat, ptr %i.bas, align 2
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bap, i64 2
  %i.bav = load i16, ptr %i.bau, align 2
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  store i16 %i.bav, ptr %i.baw, align 2
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  %i.bay = load i16, ptr %i.bax, align 2
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  store i16 %i.bay, ptr %i.baz, align 2
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bas, i64 6
  br label %.lr.ph.i70.i.i.prol.loopexit

.lr.ph.i70.i.i.prol.loopexit:                     ; preds = %.lr.ph.i70.i.i.prol, %.lr.ph.i70.i.i.preheader
  %.11170200.i.i.i.unr = phi i32 [ %.11170197.i.i.i, %.lr.ph.i70.i.i.preheader ], [ %.11170.i71.i.i.prol, %.lr.ph.i70.i.i.prol ]
  %.11199.i.i.i.unr = phi ptr [ %i.bas, %.lr.ph.i70.i.i.preheader ], [ %i.bbb, %.lr.ph.i70.i.i.prol ]
  %.11153198.i.i.i.unr = phi ptr [ %i.bap, %.lr.ph.i70.i.i.preheader ], [ %i.bba, %.lr.ph.i70.i.i.prol ]
  br i1 %i.bac, label %.loopexit.i55.i.i, label %.lr.ph.i70.i.i

.preheader192.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azb, label %.lr.ph205.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph205.i.i.i.preheader:                        ; preds = %.preheader192.i.i.i
  br i1 %lcmp.mod.not, label %.lr.ph205.i.i.i.prol.loopexit, label %.lr.ph205.i.i.i.prol

.lr.ph205.i.i.i.prol:                             ; preds = %.lr.ph205.i.i.i.preheader
  %i.bbc = load i16, ptr %i.bap, align 2
  %i.bbd = zext i16 %i.bbc to i32
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bap, i64 2
  %i.bbf = load i16, ptr %i.bbe, align 2
  %i.bbg = zext i16 %i.bbf to i32
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  %i.bbi = load i16, ptr %i.bbh, align 2
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = mul nuw nsw i32 %i.bbd, 77
  %i.bbl = mul nuw nsw i32 %i.bbg, 150
  %i.bbm = add nuw nsw i32 %i.bbl, %i.bbk
  %i.bbn = mul nuw nsw i32 %i.bbj, 29
  %i.bbo = add nuw nsw i32 %i.bbm, %i.bbn
  %i.bbp = lshr i32 %i.bbo, 8
  %i.bbq = trunc nuw i32 %i.bbp to i16
  store i16 %i.bbq, ptr %i.bas, align 2
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bap, i64 6
  %i.bbs = load i16, ptr %i.bbr, align 2
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  store i16 %i.bbs, ptr %i.bbt, align 2
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  br label %.lr.ph205.i.i.i.prol.loopexit

.lr.ph205.i.i.i.prol.loopexit:                    ; preds = %.lr.ph205.i.i.i.prol, %.lr.ph205.i.i.i.preheader
  %.10169204.i.i.i.unr = phi i32 [ %.11170197.i.i.i, %.lr.ph205.i.i.i.preheader ], [ %.10169.i58.i.i.prol, %.lr.ph205.i.i.i.prol ]
  %.10203.i.i.i.unr = phi ptr [ %i.bas, %.lr.ph205.i.i.i.preheader ], [ %i.bbv, %.lr.ph205.i.i.i.prol ]
  %.10152202.i.i.i.unr = phi ptr [ %i.bap, %.lr.ph205.i.i.i.preheader ], [ %i.bbu, %.lr.ph205.i.i.i.prol ]
  br i1 %i.azj, label %.loopexit.i55.i.i, label %.lr.ph205.i.i.i

.preheader190.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azb, label %.lr.ph210.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph210.i.i.i.preheader:                        ; preds = %.preheader190.i.i.i
  br i1 %lcmp.mod376.not, label %.lr.ph210.i.i.i.prol.loopexit, label %.lr.ph210.i.i.i.prol

.lr.ph210.i.i.i.prol:                             ; preds = %.lr.ph210.i.i.i.preheader
  %i.bbw = load i16, ptr %i.bap, align 2
  %i.bbx = zext i16 %i.bbw to i32
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bap, i64 2
  %i.bbz = load i16, ptr %i.bby, align 2
  %i.bca = zext i16 %i.bbz to i32
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  %i.bcc = load i16, ptr %i.bcb, align 2
  %i.bcd = zext i16 %i.bcc to i32
  %i.bce = mul nuw nsw i32 %i.bbx, 77
  %i.bcf = mul nuw nsw i32 %i.bca, 150
  %i.bcg = add nuw nsw i32 %i.bcf, %i.bce
  %i.bch = mul nuw nsw i32 %i.bcd, 29
  %i.bci = add nuw nsw i32 %i.bcg, %i.bch
  %i.bcj = lshr i32 %i.bci, 8
  %i.bck = trunc nuw i32 %i.bcj to i16
  store i16 %i.bck, ptr %i.bas, align 2
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  br label %.lr.ph210.i.i.i.prol.loopexit

.lr.ph210.i.i.i.prol.loopexit:                    ; preds = %.lr.ph210.i.i.i.prol, %.lr.ph210.i.i.i.preheader
  %.9168209.i.i.i.unr = phi i32 [ %.11170197.i.i.i, %.lr.ph210.i.i.i.preheader ], [ %.9168.i59.i.i.prol, %.lr.ph210.i.i.i.prol ]
  %.9208.i.i.i.unr = phi ptr [ %i.bas, %.lr.ph210.i.i.i.preheader ], [ %i.bcm, %.lr.ph210.i.i.i.prol ]
  %.9151207.i.i.i.unr = phi ptr [ %i.bap, %.lr.ph210.i.i.i.preheader ], [ %i.bcl, %.lr.ph210.i.i.i.prol ]
  br i1 %i.azk, label %.loopexit.i55.i.i, label %.lr.ph210.i.i.i

.preheader188.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azb, label %.lr.ph215.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph215.i.i.i.preheader:                        ; preds = %.preheader188.i.i.i
  br i1 %lcmp.mod378.not, label %.lr.ph215.i.i.i.prol.loopexit, label %.lr.ph215.i.i.i.prol

.lr.ph215.i.i.i.prol:                             ; preds = %.lr.ph215.i.i.i.preheader
  %i.bcn = load i16, ptr %i.bap, align 2
  %i.bco = zext i16 %i.bcn to i32
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bap, i64 2
  %i.bcq = load i16, ptr %i.bcp, align 2
  %i.bcr = zext i16 %i.bcq to i32
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  %i.bct = load i16, ptr %i.bcs, align 2
  %i.bcu = zext i16 %i.bct to i32
  %i.bcv = mul nuw nsw i32 %i.bco, 77
  %i.bcw = mul nuw nsw i32 %i.bcr, 150
  %i.bcx = add nuw nsw i32 %i.bcw, %i.bcv
  %i.bcy = mul nuw nsw i32 %i.bcu, 29
  %i.bcz = add nuw nsw i32 %i.bcx, %i.bcy
  %i.bda = lshr i32 %i.bcz, 8
  %i.bdb = trunc nuw i32 %i.bda to i16
  store i16 %i.bdb, ptr %i.bas, align 2
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  store i16 -1, ptr %i.bdc, align 2
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bap, i64 6
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  br label %.lr.ph215.i.i.i.prol.loopexit

.lr.ph215.i.i.i.prol.loopexit:                    ; preds = %.lr.ph215.i.i.i.prol, %.lr.ph215.i.i.i.preheader
  %.8167214.i.i.i.unr = phi i32 [ %.11170197.i.i.i, %.lr.ph215.i.i.i.preheader ], [ %.8167.i60.i.i.prol, %.lr.ph215.i.i.i.prol ]
  %.8213.i.i.i.unr = phi ptr [ %i.bas, %.lr.ph215.i.i.i.preheader ], [ %i.bde, %.lr.ph215.i.i.i.prol ]
  %.8150212.i.i.i.unr = phi ptr [ %i.bap, %.lr.ph215.i.i.i.preheader ], [ %i.bdd, %.lr.ph215.i.i.i.prol ]
  br i1 %i.azl, label %.loopexit.i55.i.i, label %.lr.ph215.i.i.i

.preheader186.i.i.i:                              ; preds = %bb.bi
  br i1 %i.azb, label %.lr.ph220.i.i.i.preheader, label %.loopexit.i55.i.i

.lr.ph220.i.i.i.preheader:                        ; preds = %.preheader186.i.i.i
  br i1 %lcmp.mod380.not, label %.lr.ph220.i.i.i.prol.loopexit, label %.lr.ph220.i.i.i.prol

.lr.ph220.i.i.i.prol:                             ; preds = %.lr.ph220.i.i.i.preheader
  %i.bdf = load i16, ptr %i.bap, align 2
  %i.bdg = zext i16 %i.bdf to i32
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bap, i64 2
  %i.bdi = load i16, ptr %i.bdh, align 2
  %i.bdj = zext i16 %i.bdi to i32
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  %i.bdl = load i16, ptr %i.bdk, align 2
  %i.bdm = zext i16 %i.bdl to i32
  %i.bdn = mul nuw nsw i32 %i.bdg, 77
  %i.bdo = mul nuw nsw i32 %i.bdj, 150
  %i.bdp = add nuw nsw i32 %i.bdo, %i.bdn
  %i.bdq = mul nuw nsw i32 %i.bdm, 29
  %i.bdr = add nuw nsw i32 %i.bdp, %i.bdq
  %i.bds = lshr i32 %i.bdr, 8
  %i.bdt = trunc nuw i32 %i.bds to i16
  store i16 %i.bdt, ptr %i.bas, align 2
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bap, i64 6
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  br label %.lr.ph220.i.i.i.prol.loopexit
end_hunk_0
