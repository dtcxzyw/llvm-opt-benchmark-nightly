Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/simple_idct?download=true
inline.NumInlined: 16
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ff_simple_idct_put_int32_10bit:bb.a
  %i.yc = add i32 %i.ya, %i.yb
  %i.yd = mul i32 %i.xg, 4520
  %i.ye = add i32 %i.yd, %i.wu
  %i.yf = mul i32 %i.xe, 19265
  %i.yg = add i32 %i.ye, %i.yf
  %i.yh = mul i32 %i.xg, 19265
  %i.yi = add i32 %i.yh, %i.wx
  %i.yj = mul i32 %i.xe, -22725
  %i.yk = add i32 %i.yi, %i.yj
  br label %idctRowCondDC_int32_10bit.exit.7

idctRowCondDC_int32_10bit.exit.7:                 ; preds = %bb.i, %idctRowCondDC_int32_10bit.exit.6
  %.092.i.7 = phi i32 [ %i.xm, %bb.i ], [ %i.wd, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.091.i.7 = phi i32 [ %i.xq, %bb.i ], [ %i.wf, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.090.i.7 = phi i32 [ %i.xs, %bb.i ], [ %i.wg, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.089.i.7 = phi i32 [ %i.xu, %bb.i ], [ %i.wh, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.088.i.7 = phi i32 [ %i.xy, %bb.i ], [ %i.wo, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.087.i.7 = phi i32 [ %i.yc, %bb.i ], [ %i.wr, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.086.i.7 = phi i32 [ %i.yg, %bb.i ], [ %i.wu, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.0.i.7 = phi i32 [ %i.yk, %bb.i ], [ %i.wx, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %i.yl = add i32 %.088.i.7, %.092.i.7
  %i.ym = ashr i32 %i.yl, 13
  store i32 %i.ym, ptr %i.vw, align 8, !tbaa !20
  %i.yn = sub i32 %.092.i.7, %.088.i.7
  %i.yo = ashr i32 %i.yn, 13
  %i.yp = getelementptr inbounds nuw i8, ptr %2, i64 252
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !20
  %i.yq = add i32 %.087.i.7, %.091.i.7
  %i.yr = ashr i32 %i.yq, 13
  store i32 %i.yr, ptr %i.wi, align 4, !tbaa !20
  %i.ys = sub i32 %.091.i.7, %.087.i.7
  %i.yt = ashr i32 %i.ys, 13
  store i32 %i.yt, ptr %i.xa, align 8, !tbaa !20
  %i.yu = add i32 %.086.i.7, %.090.i.7
  %i.yv = ashr i32 %i.yu, 13
  store i32 %i.yv, ptr %i.wa, align 8, !tbaa !20
  %i.yw = sub i32 %.090.i.7, %.086.i.7
  %i.yx = ashr i32 %i.yw, 13
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 244
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !20
  %i.yz = add i32 %.0.i.7, %.089.i.7
  %i.za = ashr i32 %i.yz, 13
  store i32 %i.za, ptr %i.wl, align 4, !tbaa !20
  %i.zb = sub i32 %.089.i.7, %.0.i.7
  %i.zc = ashr i32 %i.zb, 13
  store i32 %i.zc, ptr %i.wy, align 8, !tbaa !20
  %i.zd = lshr i64 %1, 1                          ; 19 uses
  %i.ze = and i64 %1, -2
  %i.zf = add i64 %i.ze, -1
  %diff.check = icmp ult i64 %i.zf, 7
  %i.zg = shl i64 %i.zd, 2
  %i.zh = add i64 %i.zg, -1
  %diff.check34 = icmp ult i64 %i.zh, 7
  %conflict.rdx = or i1 %diff.check, %diff.check34
  %i.zi = mul i64 %i.zd, 6
  %i.zj = add i64 %i.zi, -1
  %diff.check35 = icmp ult i64 %i.zj, 7
  %conflict.rdx36 = or i1 %conflict.rdx, %diff.check35
  %i.zk = mul i64 %i.zd, 10
  %i.zl = add i64 %i.zk, -1
  %diff.check39 = icmp ult i64 %i.zl, 7
  %conflict.rdx40 = or i1 %conflict.rdx36, %diff.check39
  %i.zm = mul i64 %i.zd, 12
  %i.zn = add i64 %i.zm, -1
  %diff.check41 = icmp ult i64 %i.zn, 7
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %i.zo = mul i64 %i.zd, 14
  %i.zp = add i64 %i.zo, -1
  %diff.check43 = icmp ult i64 %i.zp, 7
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  br i1 %conflict.rdx44, label %.preheader, label %vector.body

vector.body:                                      ; preds = %idctRowCondDC_int32_10bit.exit.7, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %idctRowCondDC_int32_10bit.exit.7 ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.zr, align 4, !tbaa !20
  %i.zs = shl <4 x i32> %wide.load, splat (i32 14)
  %i.zt = add <4 x i32> %i.zs, splat (i32 1048576) ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 64
  %wide.load45 = load <4 x i32>, ptr %i.zu, align 4, !tbaa !20 ; 4 uses
  %i.zv = mul <4 x i32> %wide.load45, splat (i32 21407)
  %i.zw = add <4 x i32> %i.zt, %i.zv
  %i.zx = mul <4 x i32> %wide.load45, splat (i32 8867)
  %i.zy = add <4 x i32> %i.zt, %i.zx
  %i.zz = mul <4 x i32> %wide.load45, splat (i32 -8867)
  %i.aaa = add <4 x i32> %i.zt, %i.zz
  %i.aab = mul <4 x i32> %wide.load45, splat (i32 -21407)
  %i.aac = add <4 x i32> %i.zt, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  %wide.load46 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !20 ; 4 uses
  %i.aae = mul <4 x i32> %wide.load46, splat (i32 22725)
  %i.aaf = mul <4 x i32> %wide.load46, splat (i32 19265)
  %i.aag = mul <4 x i32> %wide.load46, splat (i32 12873)
  %i.aah = mul <4 x i32> %wide.load46, splat (i32 4520)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zr, i64 96
  %wide.load47 = load <4 x i32>, ptr %i.aai, align 4, !tbaa !20 ; 4 uses
  %i.aaj = mul <4 x i32> %wide.load47, splat (i32 19265)
  %i.aak = add <4 x i32> %i.aaj, %i.aae
  %i.aal = mul <4 x i32> %wide.load47, splat (i32 -4520)
  %i.aam = add <4 x i32> %i.aal, %i.aaf
  %i.aan = mul <4 x i32> %wide.load47, splat (i32 -22725)
  %i.aao = add <4 x i32> %i.aan, %i.aag
  %i.aap = mul <4 x i32> %wide.load47, splat (i32 -12873)
  %i.aaq = add <4 x i32> %i.aap, %i.aah
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zr, i64 128
  %wide.load48 = load <4 x i32>, ptr %i.aar, align 4, !tbaa !20 ; 2 uses
  %i.aas = shl <4 x i32> %wide.load48, splat (i32 14) ; 2 uses
  %i.aat = add <4 x i32> %i.aas, %i.zw
  %i.aau = mul <4 x i32> %wide.load48, splat (i32 -16384) ; 2 uses
  %i.aav = add <4 x i32> %i.aau, %i.zy
  %i.aaw = add <4 x i32> %i.aau, %i.aaa
  %i.aax = add <4 x i32> %i.aas, %i.aac
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zr, i64 160
  %wide.load52 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !20 ; 4 uses
  %i.aaz = mul <4 x i32> %wide.load52, splat (i32 12873)
  %i.aba = add <4 x i32> %i.aaz, %i.aak
  %i.abb = mul <4 x i32> %wide.load52, splat (i32 -22725)
  %i.abc = add <4 x i32> %i.abb, %i.aam
  %i.abd = mul <4 x i32> %wide.load52, splat (i32 4520)
  %i.abe = add <4 x i32> %i.abd, %i.aao
  %i.abf = mul <4 x i32> %wide.load52, splat (i32 19265)
  %i.abg = add <4 x i32> %i.abf, %i.aaq
  %i.abh = getelementptr inbounds nuw i8, ptr %i.zr, i64 192
  %wide.load57 = load <4 x i32>, ptr %i.abh, align 4, !tbaa !20 ; 4 uses
  %i.abi = mul <4 x i32> %wide.load57, splat (i32 8867)
  %i.abj = add <4 x i32> %i.abi, %i.aat           ; 2 uses
  %i.abk = mul <4 x i32> %wide.load57, splat (i32 -21407)
  %i.abl = add <4 x i32> %i.abk, %i.aav           ; 2 uses
  %i.abm = mul <4 x i32> %wide.load57, splat (i32 21407)
  %i.abn = add <4 x i32> %i.abm, %i.aaw           ; 2 uses
  %i.abo = mul <4 x i32> %wide.load57, splat (i32 -8867)
  %i.abp = add <4 x i32> %i.abo, %i.aax           ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zr, i64 224
  %wide.load62 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !20 ; 4 uses
  %i.abr = mul <4 x i32> %wide.load62, splat (i32 4520)
  %i.abs = add <4 x i32> %i.abr, %i.aba           ; 2 uses
  %i.abt = mul <4 x i32> %wide.load62, splat (i32 -12873)
  %i.abu = add <4 x i32> %i.abt, %i.abc           ; 2 uses
  %i.abv = mul <4 x i32> %wide.load62, splat (i32 19265)
  %i.abw = add <4 x i32> %i.abv, %i.abe           ; 2 uses
  %i.abx = mul <4 x i32> %wide.load62, splat (i32 -22725)
  %i.aby = add <4 x i32> %i.abx, %i.abg           ; 2 uses
  %i.abz = add <4 x i32> %i.abs, %i.abj
  %i.aca = ashr <4 x i32> %i.abz, splat (i32 21)
  %i.acb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aca, <4 x i32> zeroinitializer)
  %i.acc = trunc nuw nsw <4 x i32> %i.acb to <4 x i16>
  store <4 x i16> %i.acc, ptr %i.zq, align 2, !tbaa !10
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.zq, i64 %i.zd ; 2 uses
  %i.ace = add <4 x i32> %i.abu, %i.abl
  %i.acf = ashr <4 x i32> %i.ace, splat (i32 21)
  %i.acg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.acf, <4 x i32> zeroinitializer)
  %i.ach = trunc nuw nsw <4 x i32> %i.acg to <4 x i16>
  store <4 x i16> %i.ach, ptr %i.acd, align 2, !tbaa !10
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %i.zd ; 2 uses
  %i.acj = add <4 x i32> %i.abw, %i.abn
  %i.ack = ashr <4 x i32> %i.acj, splat (i32 21)
  %i.acl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ack, <4 x i32> zeroinitializer)
  %i.acm = trunc nuw nsw <4 x i32> %i.acl to <4 x i16>
  store <4 x i16> %i.acm, ptr %i.aci, align 2, !tbaa !10
  %i.acn = getelementptr inbounds nuw [2 x i8], ptr %i.aci, i64 %i.zd ; 2 uses
  %i.aco = add <4 x i32> %i.aby, %i.abp
  %i.acp = ashr <4 x i32> %i.aco, splat (i32 21)
  %i.acq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.acp, <4 x i32> zeroinitializer)
  %i.acr = trunc nuw nsw <4 x i32> %i.acq to <4 x i16>
  store <4 x i16> %i.acr, ptr %i.acn, align 2, !tbaa !10
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.acn, i64 %i.zd ; 2 uses
  %i.act = sub <4 x i32> %i.abp, %i.aby
  %i.acu = ashr <4 x i32> %i.act, splat (i32 21)
  %i.acv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.acu, <4 x i32> zeroinitializer)
  %i.acw = trunc nuw nsw <4 x i32> %i.acv to <4 x i16>
  store <4 x i16> %i.acw, ptr %i.acs, align 2, !tbaa !10
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %i.zd ; 2 uses
  %i.acy = sub <4 x i32> %i.abn, %i.abw
  %i.acz = ashr <4 x i32> %i.acy, splat (i32 21)
  %i.ada = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.acz, <4 x i32> zeroinitializer)
  %i.adb = trunc nuw nsw <4 x i32> %i.ada to <4 x i16>
  store <4 x i16> %i.adb, ptr %i.acx, align 2, !tbaa !10
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.acx, i64 %i.zd ; 2 uses
  %i.add = sub <4 x i32> %i.abl, %i.abu
  %i.ade = ashr <4 x i32> %i.add, splat (i32 21)
  %i.adf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ade, <4 x i32> zeroinitializer)
  %i.adg = trunc nuw nsw <4 x i32> %i.adf to <4 x i16>
  store <4 x i16> %i.adg, ptr %i.adc, align 2, !tbaa !10
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %i.zd
  %i.adi = sub <4 x i32> %i.abj, %i.abs
  %i.adj = ashr <4 x i32> %i.adi, splat (i32 21)
  %i.adk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.adj, <4 x i32> zeroinitializer)
  %i.adl = trunc nuw nsw <4 x i32> %i.adk to <4 x i16>
  store <4 x i16> %i.adl, ptr %i.adh, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.adm = icmp eq i64 %index.next, 8
  br i1 %i.adm, label %middle.block, label %vector.body, !llvm.loop !18

.preheader:                                       ; preds = %idctRowCondDC_int32_10bit.exit.7, %idctSparseColPut_int32_10bit.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %idctSparseColPut_int32_10bit.exit ], [ 0, %idctRowCondDC_int32_10bit.exit.7 ] ; 3 uses
  %i.adn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !20
  %i.adq = shl i32 %i.adp, 14
  %i.adr = add i32 %i.adq, 1048576
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 64
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !20
  %3 = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  %4 = load i32, ptr %3, align 4, !tbaa !20
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ado, i64 96
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !20
  %5 = insertelement <4 x i32> poison, i32 %i.adt, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = mul <4 x i32> %6, <i32 -21407, i32 -8867, i32 8867, i32 21407>
  %8 = insertelement <4 x i32> poison, i32 %i.adr, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = add <4 x i32> %9, %7                      ; 2 uses
  %11 = insertelement <4 x i32> poison, i32 %4, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = mul <4 x i32> %12, <i32 4520, i32 12873, i32 19265, i32 22725>
  %14 = insertelement <4 x i32> poison, i32 %i.adv, i64 0
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = mul <4 x i32> %15, <i32 -12873, i32 -22725, i32 -4520, i32 19265>
  %17 = add <4 x i32> %16, %13                    ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ado, i64 128
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !20 ; 2 uses
  %.not.i13 = icmp eq i32 %i.adx, 0
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %18 = insertelement <4 x i32> poison, i32 %i.adx, i64 0
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  %20 = mul <4 x i32> %19, <i32 16384, i32 -16384, i32 -16384, i32 16384>
  %21 = add <4 x i32> %20, %10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %22 = phi <4 x i32> [ %21, %bb.j ], [ %10, %.preheader ] ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ado, i64 160
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !20 ; 2 uses
  %.not115.i = icmp eq i32 %i.adz, 0
  br i1 %.not115.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %23 = insertelement <4 x i32> poison, i32 %i.adz, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %25 = mul <4 x i32> %24, <i32 19265, i32 4520, i32 -22725, i32 12873>
  %26 = add <4 x i32> %25, %17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %27 = phi <4 x i32> [ %26, %bb.l ], [ %17, %bb.k ] ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ado, i64 192
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !20 ; 2 uses
  %.not116.i = icmp eq i32 %i.aeb, 0
  br i1 %.not116.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %28 = insertelement <4 x i32> poison, i32 %i.aeb, i64 0
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> zeroinitializer
  %30 = mul <4 x i32> %29, <i32 -8867, i32 21407, i32 -21407, i32 8867>
  %31 = add <4 x i32> %30, %22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %32 = phi <4 x i32> [ %31, %bb.n ], [ %22, %bb.m ] ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ado, i64 224
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !20 ; 2 uses
  %.not117.i = icmp eq i32 %i.aed, 0
  br i1 %.not117.i, label %idctSparseColPut_int32_10bit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %33 = insertelement <4 x i32> poison, i32 %i.aed, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = mul <4 x i32> %34, <i32 -22725, i32 19265, i32 -12873, i32 4520>
  %36 = add <4 x i32> %35, %27
  br label %idctSparseColPut_int32_10bit.exit

idctSparseColPut_int32_10bit.exit:                ; preds = %bb.o, %bb.p
  %37 = phi <4 x i32> [ %36, %bb.p ], [ %27, %bb.o ] ; 2 uses
  %38 = add <4 x i32> %37, %32
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.adn, i64 %i.zd ; 2 uses
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.aee, i64 %i.zd ; 2 uses
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %i.aef, i64 %i.zd ; 2 uses
  %39 = getelementptr inbounds nuw [2 x i8], ptr %i.aeg, i64 %i.zd ; 2 uses
  %40 = sub <4 x i32> %32, %37
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %39, i64 %i.zd ; 2 uses
  %41 = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.zd ; 2 uses
  %42 = getelementptr inbounds nuw [2 x i8], ptr %41, i64 %i.zd
  %43 = shufflevector <4 x i32> %38, <4 x i32> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %44 = ashr <8 x i32> %43, splat (i32 21)
  %45 = trunc nsw <8 x i32> %44 to <8 x i16>
  %46 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %45, <8 x i16> zeroinitializer) ; 8 uses
  %47 = extractelement <8 x i16> %46, i64 3
  store i16 %47, ptr %i.adn, align 2, !tbaa !10
  %48 = extractelement <8 x i16> %46, i64 2
  store i16 %48, ptr %i.aee, align 2, !tbaa !10
  %49 = extractelement <8 x i16> %46, i64 1
  store i16 %49, ptr %i.aef, align 2, !tbaa !10
  %50 = extractelement <8 x i16> %46, i64 0
  store i16 %50, ptr %i.aeg, align 2, !tbaa !10
  %51 = extractelement <8 x i16> %46, i64 4
  store i16 %51, ptr %39, align 2, !tbaa !10
  %52 = extractelement <8 x i16> %46, i64 5
  store i16 %52, ptr %i.aeh, align 2, !tbaa !10
  %53 = extractelement <8 x i16> %46, i64 6
  store i16 %53, ptr %41, align 2, !tbaa !10
  %54 = extractelement <8 x i16> %46, i64 7
  store i16 %54, ptr %42, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %middle.block, label %.preheader, !llvm.loop !19

middle.block:                                     ; preds = %vector.body, %idctSparseColPut_int32_10bit.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct248_put(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
.preheader94.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load <8 x i16>, ptr %2, align 2, !tbaa !10 ; 2 uses
  %i.c = load <8 x i16>, ptr %i.a, align 2, !tbaa !10 ; 2 uses
  %i.d = add <8 x i16> %i.c, %i.b
  store <8 x i16> %i.d, ptr %2, align 2, !tbaa !10
  %i.e = sub <8 x i16> %i.b, %i.c
  store <8 x i16> %i.e, ptr %i.a, align 2, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = load <8 x i16>, ptr %i.f, align 2, !tbaa !10 ; 2 uses
  %i.i = load <8 x i16>, ptr %i.g, align 2, !tbaa !10 ; 2 uses
  %i.j = add <8 x i16> %i.i, %i.h
  store <8 x i16> %i.j, ptr %i.f, align 2, !tbaa !10
  %i.k = sub <8 x i16> %i.h, %i.i
  store <8 x i16> %i.k, ptr %i.g, align 2, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.n = load <8 x i16>, ptr %i.l, align 2, !tbaa !10 ; 2 uses
  %i.o = load <8 x i16>, ptr %i.m, align 2, !tbaa !10 ; 2 uses
  %i.p = add <8 x i16> %i.o, %i.n
  store <8 x i16> %i.p, ptr %i.l, align 2, !tbaa !10
  %i.q = sub <8 x i16> %i.n, %i.o
  store <8 x i16> %i.q, ptr %i.m, align 2, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.t = load <8 x i16>, ptr %i.r, align 2, !tbaa !10 ; 2 uses
  %i.u = load <8 x i16>, ptr %i.s, align 2, !tbaa !10 ; 2 uses
  %i.v = add <8 x i16> %i.u, %i.t
  store <8 x i16> %i.v, ptr %i.r, align 2, !tbaa !10
  %i.w = sub <8 x i16> %i.t, %i.u
  store <8 x i16> %i.w, ptr %i.s, align 2, !tbaa !10
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %2)
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.a)
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.ab)
  %i.ac = shl nsw i64 %1, 1                       ; 6 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %1
  br label %bb.a

bb.a:                                             ; preds = %.preheader94.preheader, %bb.a
  %indvars.iv = phi i64 [ 0, %.preheader94.preheader ], [ %indvars.iv.next, %bb.a ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = sext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = sext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = add nsw i32 %i.an, %i.ah
  %i.as = shl nsw i32 %i.ar, 11
  %i.at = add nsw i32 %i.as, 65536                ; 2 uses
  %i.au = sub nsw i32 %i.ah, %i.an
  %i.av = shl nsw i32 %i.au, 11
  %i.aw = add nsw i32 %i.av, 65536                ; 2 uses
  %i.ax = mul nsw i32 %i.ak, 2676
  %i.ay = mul nsw i32 %i.aq, 1108
  %i.az = add nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = mul nsw i32 %i.ak, 1108
  %.neg.i = mul nsw i32 %i.aq, -2676
  %i.bb = add nsw i32 %.neg.i, %i.ba              ; 2 uses
  %i.bc = add nsw i32 %i.at, %i.az
  %i.bd = ashr i32 %i.bc, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %.0.i3435.i = tail call i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %.0.i34.i = trunc nuw i32 %.0.i3435.i to i8
  store i8 %.0.i34.i, ptr %i.ae, align 1, !tbaa !11
  %i.bf = getelementptr inbounds i8, ptr %i.ae, i64 %i.ac ; 2 uses
  %i.bg = add nsw i32 %i.aw, %i.bb
  %i.bh = ashr i32 %i.bg, 17
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %.0.i3236.i = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 255)
  %.0.i32.i = trunc nuw i32 %.0.i3236.i to i8
  store i8 %.0.i32.i, ptr %i.bf, align 1, !tbaa !11
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.ac ; 2 uses
  %i.bk = sub nsw i32 %i.aw, %i.bb
  %i.bl = ashr i32 %i.bk, 17
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %.0.i3037.i = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 255)
  %.0.i30.i = trunc nuw i32 %.0.i3037.i to i8
  store i8 %.0.i30.i, ptr %i.bj, align 1, !tbaa !11
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.ac
  %i.bo = sub nsw i32 %i.at, %i.az
  %i.bp = ashr i32 %i.bo, 17
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %.0.i38.i = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i38.i to i8
  store i8 %.0.i.i, ptr %i.bn, align 1, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !10
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !10
  %i.ca = sext i16 %i.bz to i32                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !10
  %i.cd = sext i16 %i.cc to i32                   ; 2 uses
  %i.ce = add nsw i32 %i.ca, %i.bu
  %i.cf = shl nsw i32 %i.ce, 11
  %i.cg = add nsw i32 %i.cf, 65536                ; 2 uses
  %i.ch = sub nsw i32 %i.bu, %i.ca
  %i.ci = shl nsw i32 %i.ch, 11
  %i.cj = add nsw i32 %i.ci, 65536                ; 2 uses
  %i.ck = mul nsw i32 %i.bx, 2676
  %i.cl = mul nsw i32 %i.cd, 1108
  %i.cm = add nsw i32 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul nsw i32 %i.bx, 1108
  %.neg.i85 = mul nsw i32 %i.cd, -2676
  %i.co = add nsw i32 %.neg.i85, %i.cn            ; 2 uses
  %i.cp = add nsw i32 %i.cg, %i.cm
  %i.cq = ashr i32 %i.cp, 17
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %.0.i3435.i86 = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %.0.i34.i87 = trunc nuw i32 %.0.i3435.i86 to i8
  store i8 %.0.i34.i87, ptr %i.br, align 1, !tbaa !11
  %i.cs = getelementptr inbounds i8, ptr %i.br, i64 %i.ac ; 2 uses
  %i.ct = add nsw i32 %i.cj, %i.co
  %i.cu = ashr i32 %i.ct, 17
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %.0.i3236.i88 = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 255)
  %.0.i32.i89 = trunc nuw i32 %.0.i3236.i88 to i8
  store i8 %.0.i32.i89, ptr %i.cs, align 1, !tbaa !11
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.ac ; 2 uses
  %i.cx = sub nsw i32 %i.cj, %i.co
  %i.cy = ashr i32 %i.cx, 17
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %.0.i3037.i90 = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 255)
  %.0.i30.i91 = trunc nuw i32 %.0.i3037.i90 to i8
  store i8 %.0.i30.i91, ptr %i.cw, align 1, !tbaa !11
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.ac
  %i.db = sub nsw i32 %i.cg, %i.cm
  %i.dc = ashr i32 %i.db, 17
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %.0.i38.i92 = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %.0.i.i93 = trunc nuw i32 %.0.i38.i92 to i8
  store i8 %.0.i.i93, ptr %i.da, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.a, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct84_add(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
.preheader.preheader:
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.c)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !10
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10
  %i.p = sext i16 %i.o to i32                     ; 2 uses
end_hunk_0
begin_hunk_1_@ff_simple_idct44_add:.preheader.preheader
  %i.gb = load i16, ptr %i.c, align 2, !tbaa !10
  %i.gc = sext i16 %i.gb to i32                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !10
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !10
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !10
  %i.gl = sext i16 %i.gk to i32                   ; 2 uses
  %i.gm = add nsw i32 %i.gi, %i.gc
  %i.gn = mul nsw i32 %i.gm, 2896
  %i.go = add nsw i32 %i.gn, 65536                ; 2 uses
  %i.gp = sub nsw i32 %i.gc, %i.gi
  %i.gq = mul nsw i32 %i.gp, 2896
  %i.gr = add nsw i32 %i.gq, 65536                ; 2 uses
  %i.gs = mul nsw i32 %i.gf, 3784
  %i.gt = mul nsw i32 %i.gl, 1567
  %i.gu = add nsw i32 %i.gt, %i.gs                ; 2 uses
  %i.gv = mul nsw i32 %i.gf, 1567
  %.neg.i10.1 = mul nsw i32 %i.gl, -3784
  %i.gw = add nsw i32 %.neg.i10.1, %i.gv          ; 2 uses
  %i.gx = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.go, %i.gu
  %i.ha = ashr i32 %i.gz, 17
  %i.hb = add nsw i32 %i.ha, %i.gy
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %.0.i3839.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 255)
  %.0.i38.i.1 = trunc nuw i32 %.0.i3839.i.1 to i8
  store i8 %.0.i38.i.1, ptr %i.ga, align 1, !tbaa !11
  %i.hd = getelementptr inbounds i8, ptr %i.ga, i64 %1 ; 3 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !11
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nsw i32 %i.gr, %i.gw
  %i.hh = ashr i32 %i.hg, 17
  %i.hi = add nsw i32 %i.hh, %i.hf
  %i.hj = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %.0.i3640.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 255)
  %.0.i36.i.1 = trunc nuw i32 %.0.i3640.i.1 to i8
  store i8 %.0.i36.i.1, ptr %i.hd, align 1, !tbaa !11
  %i.hk = getelementptr inbounds i8, ptr %i.hd, i64 %1 ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !11
  %i.hm = zext i8 %i.hl to i32
  %i.hn = sub nsw i32 %i.gr, %i.gw
  %i.ho = ashr i32 %i.hn, 17
  %i.hp = add nsw i32 %i.ho, %i.hm
  %i.hq = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %.0.i3441.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hq, i32 255)
  %.0.i34.i.1 = trunc nuw i32 %.0.i3441.i.1 to i8
  store i8 %.0.i34.i.1, ptr %i.hk, align 1, !tbaa !11
  %i.hr = getelementptr inbounds i8, ptr %i.hk, i64 %1 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = zext i8 %i.hs to i32
  %i.hu = sub nsw i32 %i.go, %i.gu
  %i.hv = ashr i32 %i.hu, 17
  %i.hw = add nsw i32 %i.hv, %i.ht
  %i.hx = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %.0.i42.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hx, i32 255)
  %.0.i.i.1 = trunc nuw i32 %.0.i42.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.hr, align 1, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.hz = load i16, ptr %i.f, align 2, !tbaa !10
  %i.ia = sext i16 %i.hz to i32                   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !10
  %i.id = sext i16 %i.ic to i32                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !10
  %i.ig = sext i16 %i.if to i32                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !10
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = add nsw i32 %i.ig, %i.ia
  %i.il = mul nsw i32 %i.ik, 2896
  %i.im = add nsw i32 %i.il, 65536                ; 2 uses
  %i.in = sub nsw i32 %i.ia, %i.ig
  %i.io = mul nsw i32 %i.in, 2896
  %i.ip = add nsw i32 %i.io, 65536                ; 2 uses
  %i.iq = mul nsw i32 %i.id, 3784
  %i.ir = mul nsw i32 %i.ij, 1567
  %i.is = add nsw i32 %i.ir, %i.iq                ; 2 uses
  %i.it = mul nsw i32 %i.id, 1567
  %.neg.i10.2 = mul nsw i32 %i.ij, -3784
  %i.iu = add nsw i32 %.neg.i10.2, %i.it          ; 2 uses
  %i.iv = load i8, ptr %i.hy, align 1, !tbaa !11
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.im, %i.is
  %i.iy = ashr i32 %i.ix, 17
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 0)
  %.0.i3839.i.2 = tail call i32 @llvm.umin.i32(i32 %i.ja, i32 255)
  %.0.i38.i.2 = trunc nuw i32 %.0.i3839.i.2 to i8
  store i8 %.0.i38.i.2, ptr %i.hy, align 1, !tbaa !11
  %i.jb = getelementptr inbounds i8, ptr %i.hy, i64 %1 ; 3 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !11
  %i.jd = zext i8 %i.jc to i32
  %i.je = add nsw i32 %i.ip, %i.iu
  %i.jf = ashr i32 %i.je, 17
  %i.jg = add nsw i32 %i.jf, %i.jd
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %.0.i3640.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 255)
  %.0.i36.i.2 = trunc nuw i32 %.0.i3640.i.2 to i8
  store i8 %.0.i36.i.2, ptr %i.jb, align 1, !tbaa !11
  %i.ji = getelementptr inbounds i8, ptr %i.jb, i64 %1 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.ip, %i.iu
  %i.jm = ashr i32 %i.jl, 17
  %i.jn = add nsw i32 %i.jm, %i.jk
  %i.jo = tail call i32 @llvm.smax.i32(i32 %i.jn, i32 0)
  %.0.i3441.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jo, i32 255)
  %.0.i34.i.2 = trunc nuw i32 %.0.i3441.i.2 to i8
  store i8 %.0.i34.i.2, ptr %i.ji, align 1, !tbaa !11
  %i.jp = getelementptr inbounds i8, ptr %i.ji, i64 %1 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !11
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.im, %i.is
  %i.jt = ashr i32 %i.js, 17
  %i.ju = add nsw i32 %i.jt, %i.jr
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 0)
  %.0.i42.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 255)
  %.0.i.i.2 = trunc nuw i32 %.0.i42.i.2 to i8
  store i8 %.0.i.i.2, ptr %i.jp, align 1, !tbaa !11
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.jx = load i16, ptr %i.i, align 2, !tbaa !10
  %i.jy = sext i16 %i.jx to i32                   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !10
  %i.kb = sext i16 %i.ka to i32                   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !10
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !10
  %i.kh = sext i16 %i.kg to i32                   ; 2 uses
  %i.ki = add nsw i32 %i.ke, %i.jy
  %i.kj = mul nsw i32 %i.ki, 2896
  %i.kk = add nsw i32 %i.kj, 65536                ; 2 uses
  %i.kl = sub nsw i32 %i.jy, %i.ke
  %i.km = mul nsw i32 %i.kl, 2896
  %i.kn = add nsw i32 %i.km, 65536                ; 2 uses
  %i.ko = mul nsw i32 %i.kb, 3784
  %i.kp = mul nsw i32 %i.kh, 1567
  %i.kq = add nsw i32 %i.kp, %i.ko                ; 2 uses
  %i.kr = mul nsw i32 %i.kb, 1567
  %.neg.i10.3 = mul nsw i32 %i.kh, -3784
  %i.ks = add nsw i32 %.neg.i10.3, %i.kr          ; 2 uses
  %i.kt = load i8, ptr %i.jw, align 1, !tbaa !11
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nsw i32 %i.kk, %i.kq
  %i.kw = ashr i32 %i.kv, 17
  %i.kx = add nsw i32 %i.kw, %i.ku
  %i.ky = tail call i32 @llvm.smax.i32(i32 %i.kx, i32 0)
  %.0.i3839.i.3 = tail call i32 @llvm.umin.i32(i32 %i.ky, i32 255)
  %.0.i38.i.3 = trunc nuw i32 %.0.i3839.i.3 to i8
  store i8 %.0.i38.i.3, ptr %i.jw, align 1, !tbaa !11
  %i.kz = getelementptr inbounds i8, ptr %i.jw, i64 %1 ; 3 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !11
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nsw i32 %i.kn, %i.ks
  %i.ld = ashr i32 %i.lc, 17
  %i.le = add nsw i32 %i.ld, %i.lb
  %i.lf = tail call i32 @llvm.smax.i32(i32 %i.le, i32 0)
  %.0.i3640.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lf, i32 255)
  %.0.i36.i.3 = trunc nuw i32 %.0.i3640.i.3 to i8
  store i8 %.0.i36.i.3, ptr %i.kz, align 1, !tbaa !11
  %i.lg = getelementptr inbounds i8, ptr %i.kz, i64 %1 ; 3 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !11
  %i.li = zext i8 %i.lh to i32
  %i.lj = sub nsw i32 %i.kn, %i.ks
  %i.lk = ashr i32 %i.lj, 17
  %i.ll = add nsw i32 %i.lk, %i.li
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ll, i32 0)
  %.0.i3441.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lm, i32 255)
  %.0.i34.i.3 = trunc nuw i32 %.0.i3441.i.3 to i8
  store i8 %.0.i34.i.3, ptr %i.lg, align 1, !tbaa !11
  %i.ln = getelementptr inbounds i8, ptr %i.lg, i64 %1 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.lp = zext i8 %i.lo to i32
  %i.lq = sub nsw i32 %i.kk, %i.kq
  %i.lr = ashr i32 %i.lq, 17
  %i.ls = add nsw i32 %i.lr, %i.lp
  %i.lt = tail call i32 @llvm.smax.i32(i32 %i.ls, i32 0)
  %.0.i42.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lt, i32 255)
  %.0.i.i.3 = trunc nuw i32 %.0.i42.i.3 to i8
  store i8 %.0.i.i.3, ptr %i.ln, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !21, !22}
!19 = distinct !{!19, !12, !21}
!20 = !{!6, !6, i64 0}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
end_hunk_1
