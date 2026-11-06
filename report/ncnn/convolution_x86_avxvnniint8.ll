Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avxvnniint8?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.aah = select i1 %i.aaf, i32 0, i32 %i.aag
  %i.aai = sub i32 %i.aah, %i.zh
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = shl nuw i64 %i.aaj, 32
  %i.aal = zext i32 %i.zh to i64
  %i.aam = udiv i64 %i.aak, %i.aal
  %i.aan = trunc i64 %i.aam to i32
  %i.aao = add i32 %i.aan, 1
  %i.aap = xor i32 %i.aad, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1259.i.i

_ZN17FastDivider_epu32C2Ej.exit1259.i.i:          ; preds = %bb.g, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i
  %.012.i1256.i.i = phi i32 [ %i.aap, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.011.i1257.i.i = phi i32 [ 1, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.0.i1258.i.i = phi i32 [ %i.aao, %bb.g ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %i.aaq = insertelement <8 x i32> poison, i32 %.0.i1258.i.i, i64 0
  %i.aar = shufflevector <8 x i32> %i.aaq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aas = bitcast <8 x i32> %i.aar to <4 x i64>  ; 4 uses
  %i.aat = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1257.i.i, i64 0 ; 4 uses
  %i.aau = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1256.i.i, i64 0 ; 7 uses
  br i1 %i.a, label %_ZN17FastDivider_epu32C2Ej.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %i.aav = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zc, i1 true) ; 3 uses
  %i.aaw = sub nuw nsw i32 32, %i.aav
  %i.aax = icmp eq i32 %i.aav, 0
  %i.aay = shl nuw i32 1, %i.aaw
  %i.aaz = select i1 %i.aax, i32 0, i32 %i.aay
  %i.aba = sub i32 %i.aaz, %6
  %i.abb = zext i32 %i.aba to i64
  %i.abc = shl nuw i64 %i.abb, 32
  %i.abd = zext i32 %6 to i64
  %i.abe = udiv i64 %i.abc, %i.abd
  %i.abf = trunc i64 %i.abe to i32
  %i.abg = add i32 %i.abf, 1
  %i.abh = xor i32 %i.aav, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit.i.i

_ZN17FastDivider_epu32C2Ej.exit.i.i:              ; preds = %bb.h, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %.012.i.i.i = phi i32 [ %i.abh, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.011.i.i.i = phi i32 [ 1, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.0.i.i.i = phi i32 [ %i.abg, %bb.h ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %i.abi = insertelement <8 x i32> poison, i32 %.0.i.i.i, i64 0
  %i.abj = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abk = bitcast <8 x i32> %i.abj to <4 x i64>  ; 4 uses
  %i.abl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i.i.i, i64 0 ; 4 uses
  %i.abm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i.i.i, i64 0 ; 7 uses
  %i.abn = icmp sgt i32 %3, 7
  br i1 %i.abn, label %.lr.ph265.i.i, label %.preheader216.i.i

.lr.ph265.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %i.abo = bitcast <8 x i32> %i.zx to <4 x i64>
  %i.abp = and <4 x i64> %i.abo, splat (i64 4294967295) ; 2 uses
  %i.abq = shufflevector <4 x i32> %i.zz, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.abr = insertelement <8 x i32> poison, i32 %i.zg, i64 0
  %i.abs = shufflevector <8 x i32> %i.abr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abt = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.abu = shufflevector <8 x i32> %i.abt, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.yz, %11
  %i.abv = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.abw = shufflevector <8 x i32> %i.abv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abx = icmp eq i32 %i.zb, 1                   ; 2 uses
  %i.aby = icmp sgt i32 %5, 3                     ; 2 uses
  %i.abz = shufflevector <4 x i64> %i.aas, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aca = and <2 x i64> %i.abz, splat (i64 4294967295) ; 4 uses
  %i.acb = shufflevector <4 x i32> %i.aat, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acc = insertelement <4 x i32> poison, i32 %i.zh, i64 0
  %i.acd = shufflevector <4 x i32> %i.acc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ace = shufflevector <4 x i64> %i.abk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acf = and <2 x i64> %i.ace, splat (i64 4294967295) ; 4 uses
  %i.acg = shufflevector <4 x i32> %i.abl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ach = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.aci = shufflevector <4 x i32> %i.ach, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acj = trunc i64 %i.l to i32                  ; 4 uses
  %i.ack = insertelement <4 x i32> poison, i32 %i.acj, i64 0
  %i.acl = shufflevector <4 x i32> %i.ack, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acm = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.acn = shufflevector <4 x i32> %i.acm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar451.i.i = mul i32 %i.yz, %9             ; 8 uses
  %i.aco = insertelement <4 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acp = shufflevector <4 x i32> %i.aco, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acq = icmp ne i32 %i.zb, 8
  %i.acr = sdiv i32 %5, 8                         ; 2 uses
  %i.acs = icmp slt i32 %5, 8
  %i.act = sdiv i32 %4, 8                         ; 2 uses
  %brmerge375.i.i = or i1 %i.acs, %i.acq          ; 2 uses
  %i.acu = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.acv = insertelement <2 x i32> %i.acu, i32 %i.zh, i64 1
  %i.acw = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acx = insertelement <2 x i32> %i.acw, i32 %i.acj, i64 1
  %i.acy = insertelement <2 x i32> poison, i32 %i.zh, i64 0
  %i.acz = shufflevector <2 x i32> %i.acy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ada = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.adb = shufflevector <2 x i32> %i.ada, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.adc = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.add = shufflevector <2 x i32> %i.adc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ade = insertelement <2 x i32> %i.ada, i32 %i.zh, i64 1 ; 2 uses
  %i.adf = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.adg = insertelement <2 x i32> %i.adf, i32 %i.acj, i64 1 ; 2 uses
  %i.adh = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.adi = insertelement <2 x i32> %i.adh, i32 %i.zh, i64 1
  %i.adj = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.adk = insertelement <2 x i32> %i.adj, i32 %i.acj, i64 1
  %i.adl = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.adm = shufflevector <2 x i64> %i.adl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.adn = insertelement <2 x i32> poison, i32 %i.zh, i64 0
  %i.ado = shufflevector <2 x i32> %i.adn, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.i

.preheader216.i.i:                                ; preds = %.loopexit218.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01222.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.ati, %.loopexit218.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 2 uses
  %i.adp = or disjoint i32 %.01222.lcssa.i.i, 3
  %i.adq = icmp slt i32 %i.adp, %3
  br i1 %i.adq, label %.lr.ph306.i.i, label %.preheader203.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader216.i.i
  %i.adr = shufflevector <4 x i64> %i.zy, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ads = and <2 x i64> %i.adr, splat (i64 4294967295) ; 2 uses
  %i.adt = shufflevector <4 x i32> %i.zz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adu = insertelement <4 x i32> poison, i32 %i.zg, i64 0
  %i.adv = shufflevector <4 x i32> %i.adu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adw = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.adx = shufflevector <4 x i32> %i.adw, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar453.i.i = mul i32 %i.yz, %11
  %i.ady = insertelement <4 x i32> poison, i32 %.scalar453.i.i, i64 0
  %i.adz = shufflevector <4 x i32> %i.ady, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aea = icmp eq i32 %i.zb, 1                   ; 2 uses
  %i.aeb = icmp sgt i32 %5, 3                     ; 2 uses
  %i.aec = shufflevector <4 x i64> %i.aas, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aed = and <2 x i64> %i.aec, splat (i64 4294967295) ; 4 uses
  %i.aee = shufflevector <4 x i32> %i.aat, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aef = insertelement <4 x i32> poison, i32 %i.zh, i64 0
  %i.aeg = shufflevector <4 x i32> %i.aef, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aeh = shufflevector <4 x i64> %i.abk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aei = and <2 x i64> %i.aeh, splat (i64 4294967295) ; 4 uses
  %i.aej = shufflevector <4 x i32> %i.abl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aek = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.ael = shufflevector <4 x i32> %i.aek, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aem = trunc i64 %i.l to i32                  ; 4 uses
  %i.aen = insertelement <4 x i32> poison, i32 %i.aem, i64 0
  %i.aeo = shufflevector <4 x i32> %i.aen, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aep = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.aeq = shufflevector <4 x i32> %i.aep, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar454.i.i = mul i32 %i.yz, %9             ; 8 uses
  %i.aer = insertelement <4 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.aes = shufflevector <4 x i32> %i.aer, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aet = icmp ne i32 %i.zb, 8
  %i.aeu = sdiv i32 %5, 8                         ; 2 uses
  %i.aev = icmp slt i32 %5, 8
  %i.aew = sdiv i32 %4, 8                         ; 2 uses
  %brmerge381.i.i = or i1 %i.aev, %i.aet          ; 2 uses
  %i.aex = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aey = insertelement <2 x i32> %i.aex, i32 %i.zh, i64 1
  %i.aez = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.afa = insertelement <2 x i32> %i.aez, i32 %i.aem, i64 1
  %i.afb = insertelement <2 x i32> poison, i32 %i.zh, i64 0
  %i.afc = shufflevector <2 x i32> %i.afb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afd = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.afe = shufflevector <2 x i32> %i.afd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aff = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.afg = shufflevector <2 x i32> %i.aff, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afh = insertelement <2 x i32> %i.afd, i32 %i.zh, i64 1 ; 2 uses
  %i.afi = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.afj = insertelement <2 x i32> %i.afi, i32 %i.aem, i64 1 ; 2 uses
  %i.afk = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.afl = insertelement <2 x i32> %i.afk, i32 %i.zh, i64 1
  %i.afm = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.afn = insertelement <2 x i32> %i.afm, i32 %i.aem, i64 1
  %i.afo = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.afp = shufflevector <2 x i64> %i.afo, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.afq = insertelement <2 x i32> poison, i32 %i.zh, i64 0
  %i.afr = shufflevector <2 x i32> %i.afq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.i:                                             ; preds = %.loopexit218.i.i, %.lr.ph265.i.i
  %.0264.i.i = phi ptr [ %.val, %.lr.ph265.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 8 uses
  %.01222263.i.i = phi i32 [ 0, %.lr.ph265.i.i ], [ %i.ati, %.loopexit218.i.i ] ; 2 uses
  %i.afs = add nsw i32 %.01222263.i.i, %2
  %i.aft = insertelement <8 x i32> poison, i32 %i.afs, i64 0
  %i.afu = shufflevector <8 x i32> %i.aft, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.afv = add <8 x i32> %i.afu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afw = bitcast <8 x i32> %i.afv to <4 x i64>
  %i.afx = bitcast <8 x i32> %i.afv to <4 x i64>
  %i.afy = and <4 x i64> %i.afx, splat (i64 4294967295)
  %i.afz = mul nuw <4 x i64> %i.afy, %i.abp
  %i.aga = lshr <4 x i64> %i.afz, splat (i64 32)
  %i.agb = lshr <4 x i64> %i.afw, splat (i64 32)
  %i.agc = mul nuw <4 x i64> %i.agb, %i.abp
  %i.agd = bitcast <4 x i64> %i.aga to <16 x i16>
  %i.age = bitcast <4 x i64> %i.agc to <16 x i16>
  %i.agf = shufflevector <16 x i16> %i.agd, <16 x i16> %i.age, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.agg = bitcast <16 x i16> %i.agf to <8 x i32> ; 2 uses
  %i.agh = sub <8 x i32> %i.afv, %i.agg
  %i.agi = lshr <8 x i32> %i.agh, %i.abq
  %i.agj = add <8 x i32> %i.agi, %i.agg
  %i.agk = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.agj, <4 x i32> %i.aaa) ; 2 uses
  %i.agl = mul <8 x i32> %i.agk, %i.abs
  %i.agm = sub <8 x i32> %i.afv, %i.agl
  %i.agn = mul <8 x i32> %i.agm, %i.abu           ; 2 uses
  %i.ago = mul <8 x i32> %i.agk, %i.abw           ; 3 uses
  %i.agp = add <8 x i32> %i.agn, %i.ago           ; 8 uses
  %12 = extractelement <8 x i32> %i.ago, i64 0    ; 2 uses
  %13 = extractelement <8 x i32> %i.ago, i64 7
  %14 = icmp eq i32 %12, %13
  %or.cond.i.i = and i1 %i.g, %14
  br i1 %or.cond.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %15 = extractelement <8 x i32> %i.agn, i64 0
  %16 = add nsw i32 %15, %12                      ; 4 uses
  br i1 %i.abx, label %.preheader222.i.i, label %.loopexit220.i.i

.preheader222.i.i:                                ; preds = %bb.j
  br i1 %i.aby, label %.lr.ph247.i.i, label %.preheader221.i.i

.lr.ph247.i.i:                                    ; preds = %.preheader222.i.i
  %17 = insertelement <4 x i32> poison, i32 %16, i64 0
  %i.agq = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.k

.preheader221.i.i:                                ; preds = %bb.k, %.preheader222.i.i
  %.01226.lcssa.i.i = phi i32 [ 0, %.preheader222.i.i ], [ %i.aiv, %bb.k ] ; 3 uses
  %.1.lcssa.i.i = phi ptr [ %.0264.i.i, %.preheader222.i.i ], [ %i.aiu, %bb.k ] ; 2 uses
  %i.agr = or disjoint i32 %.01226.lcssa.i.i, 1
  %i.ags = icmp slt i32 %i.agr, %5
  br i1 %i.ags, label %.lr.ph252.i.i, label %.preheader219.i.i

.lr.ph252.i.i:                                    ; preds = %.preheader221.i.i
  %i.agt = sext i32 %16 to i64                    ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph247.i.i
  %.1246.i.i = phi ptr [ %.0264.i.i, %.lr.ph247.i.i ], [ %i.aiu, %bb.k ] ; 2 uses
  %.01226245.i.i = phi i32 [ 0, %.lr.ph247.i.i ], [ %i.aiv, %bb.k ] ; 2 uses
  %i.agu = add nsw i32 %.01226245.i.i, %4
  %i.agv = insertelement <4 x i32> poison, i32 %i.agu, i64 0
  %i.agw = shufflevector <4 x i32> %i.agv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agx = add <4 x i32> %i.agw, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.agy = bitcast <4 x i32> %i.agx to <2 x i64>
  %i.agz = bitcast <4 x i32> %i.agx to <2 x i64>
  %i.aha = and <2 x i64> %i.agz, splat (i64 4294967295)
  %i.ahb = mul nuw <2 x i64> %i.aha, %i.aca
  %i.ahc = lshr <2 x i64> %i.ahb, splat (i64 32)
  %i.ahd = lshr <2 x i64> %i.agy, splat (i64 32)
  %i.ahe = mul nuw <2 x i64> %i.ahd, %i.aca
  %i.ahf = bitcast <2 x i64> %i.ahc to <8 x i16>
  %i.ahg = bitcast <2 x i64> %i.ahe to <8 x i16>
  %i.ahh = shufflevector <8 x i16> %i.ahf, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ahi = bitcast <8 x i16> %i.ahh to <4 x i32>  ; 2 uses
  %i.ahj = sub <4 x i32> %i.agx, %i.ahi
  %i.ahk = lshr <4 x i32> %i.ahj, %i.acb
  %i.ahl = add <4 x i32> %i.ahk, %i.ahi
  %i.ahm = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ahl, <4 x i32> %i.aau) ; 2 uses
  %i.ahn = mul <4 x i32> %i.ahm, %i.acd
  %i.aho = sub <4 x i32> %i.agx, %i.ahn           ; 4 uses
  %i.ahp = bitcast <4 x i32> %i.aho to <2 x i64>
  %i.ahq = bitcast <4 x i32> %i.aho to <2 x i64>
  %i.ahr = and <2 x i64> %i.ahq, splat (i64 4294967295)
  %i.ahs = mul nuw <2 x i64> %i.ahr, %i.acf
  %i.aht = lshr <2 x i64> %i.ahs, splat (i64 32)
  %i.ahu = lshr <2 x i64> %i.ahp, splat (i64 32)
  %i.ahv = mul nuw <2 x i64> %i.ahu, %i.acf
  %i.ahw = bitcast <2 x i64> %i.aht to <8 x i16>
  %i.ahx = bitcast <2 x i64> %i.ahv to <8 x i16>
  %i.ahy = shufflevector <8 x i16> %i.ahw, <8 x i16> %i.ahx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ahz = bitcast <8 x i16> %i.ahy to <4 x i32>  ; 2 uses
  %i.aia = sub <4 x i32> %i.aho, %i.ahz
  %i.aib = lshr <4 x i32> %i.aia, %i.acg
  %i.aic = add <4 x i32> %i.aib, %i.ahz
  %i.aid = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.aic, <4 x i32> %i.abm) ; 2 uses
  %i.aie = mul <4 x i32> %i.aid, %i.aci
  %i.aif = sub <4 x i32> %i.aho, %i.aie
  %i.aig = mul <4 x i32> %i.ahm, %i.acl
  %i.aih = mul <4 x i32> %i.aif, %i.acn
  %i.aii = mul <4 x i32> %i.aid, %i.acp
  %i.aij = add <4 x i32> %i.aig, %i.agq
  %i.aik = add <4 x i32> %i.aij, %i.aii
  %i.ail = add <4 x i32> %i.aik, %i.aih
  %i.aim = load ptr, ptr %0, align 8, !tbaa !87
  %i.ain = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aim, <4 x i32> %i.ail, <4 x i64> splat (i64 -1), i8 1)
  %i.aio = bitcast <4 x i64> %i.ain to <8 x i32>
  %i.aip = shufflevector <8 x i32> %i.aio, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.aiq = bitcast <8 x i32> %i.aip to <4 x i64>
  %i.air = shufflevector <4 x i64> %i.aiq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ais = bitcast <4 x i64> %i.air to <32 x i8>
  %i.ait = shufflevector <32 x i8> %i.ais, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %i.ait, ptr %.1246.i.i, align 1, !tbaa !90
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1246.i.i, i64 32 ; 2 uses
  %i.aiv = add nuw nsw i32 %.01226245.i.i, 4      ; 3 uses
  %i.aiw = or disjoint i32 %i.aiv, 3
  %i.aix = icmp slt i32 %i.aiw, %5
  br i1 %i.aix, label %bb.k, label %.preheader221.i.i, !llvm.loop !48

.preheader219.i.i:                                ; preds = %bb.l, %.preheader221.i.i
  %.11227.lcssa.i.i = phi i32 [ %.01226.lcssa.i.i, %.preheader221.i.i ], [ %i.akm, %bb.l ] ; 2 uses
  %.2.lcssa.i.i = phi ptr [ %.1.lcssa.i.i, %.preheader221.i.i ], [ %i.akl, %bb.l ] ; 2 uses
  %i.aiy = icmp slt i32 %.11227.lcssa.i.i, %5
  br i1 %i.aiy, label %.lr.ph257.i.i, label %.loopexit218.i.i

.lr.ph257.i.i:                                    ; preds = %.preheader219.i.i
  %i.aiz = sext i32 %16 to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph252.i.i
  %.2251.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph252.i.i ], [ %i.akl, %bb.l ] ; 2 uses
  %.11227250.i.i = phi i32 [ %.01226.lcssa.i.i, %.lr.ph252.i.i ], [ %i.akm, %bb.l ] ; 2 uses
  %i.aja = add nsw i32 %.11227250.i.i, %4         ; 3 uses
  %i.ajb = add nsw i32 %i.aja, 1                  ; 2 uses
  %i.ajc = srem i32 %i.aja, %i.zh                 ; 2 uses
  %i.ajd = srem i32 %i.ajb, %i.zh                 ; 2 uses
  %i.aje = sdiv i32 %i.ajc, %6
  %i.ajf = sdiv i32 %i.ajd, %6
  %i.ajg = srem i32 %i.ajc, %6
  %i.ajh = srem i32 %i.ajd, %6
  %i.aji = mul i32 %i.aje, %.scalar451.i.i
  %i.ajj = mul nsw i32 %i.ajg, %8
  %i.ajk = add nsw i32 %i.ajj, %i.aji
  %i.ajl = sext i32 %i.ajk to i64
  %i.ajm = insertelement <2 x i32> poison, i32 %i.aja, i64 0
  %i.ajn = insertelement <2 x i32> %i.ajm, i32 %i.ajb, i64 1
  %i.ajo = sdiv <2 x i32> %i.ajn, %i.ado
  %i.ajp = sext <2 x i32> %i.ajo to <2 x i64>
  %i.ajq = mul <2 x i64> %i.adm, %i.ajp           ; 2 uses
  %i.ajr = mul i32 %i.ajf, %.scalar451.i.i
  %i.ajs = mul nsw i32 %i.ajh, %8
  %i.ajt = add nsw i32 %i.ajs, %i.ajr
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = load ptr, ptr %0, align 8, !tbaa !87   ; 2 uses
  %i.ajw = extractelement <2 x i64> %i.ajq, i64 0
  %i.ajx = getelementptr i8, ptr %i.ajv, i64 %i.ajw
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 %i.agt
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 %i.ajl
  %i.aka = load i64, ptr %i.ajz, align 1, !tbaa !90
  %i.akb = insertelement <2 x i64> poison, i64 %i.aka, i64 0
  %i.akc = extractelement <2 x i64> %i.ajq, i64 1
  %i.akd = getelementptr i8, ptr %i.ajv, i64 %i.akc
  %i.ake = getelementptr i8, ptr %i.akd, i64 %i.agt
  %i.akf = getelementptr i8, ptr %i.ake, i64 %i.aju
  %i.akg = load i64, ptr %i.akf, align 1, !tbaa !90
  %i.akh = insertelement <2 x i64> poison, i64 %i.akg, i64 0
  %i.aki = bitcast <2 x i64> %i.akb to <16 x i8>
  %i.akj = bitcast <2 x i64> %i.akh to <16 x i8>
  %i.akk = shufflevector <16 x i8> %i.aki, <16 x i8> %i.akj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.akk, ptr %.2251.i.i, align 1, !tbaa !90
  %i.akl = getelementptr inbounds nuw i8, ptr %.2251.i.i, i64 16 ; 2 uses
  %i.akm = add nuw nsw i32 %.11227250.i.i, 2      ; 3 uses
  %i.akn = or disjoint i32 %i.akm, 1
  %i.ako = icmp slt i32 %i.akn, %5
  br i1 %i.ako, label %bb.l, label %.preheader219.i.i, !llvm.loop !49

bb.m:                                             ; preds = %bb.m, %.lr.ph257.i.i
  %.3256.i.i = phi ptr [ %.2.lcssa.i.i, %.lr.ph257.i.i ], [ %i.alf, %bb.m ] ; 2 uses
  %.21228255.i.i = phi i32 [ %.11227.lcssa.i.i, %.lr.ph257.i.i ], [ %i.alg, %bb.m ] ; 2 uses
  %i.akp = add nsw i32 %.21228255.i.i, %4         ; 2 uses
  %i.akq = sdiv i32 %i.akp, %i.zh
  %i.akr = srem i32 %i.akp, %i.zh                 ; 2 uses
  %i.aks = sdiv i32 %i.akr, %6
  %i.akt = srem i32 %i.akr, %6
  %i.aku = sext i32 %i.akq to i64
  %i.akv = mul i64 %i.l, %i.aku
  %i.akw = mul i32 %i.aks, %.scalar451.i.i
  %i.akx = mul nsw i32 %i.akt, %8
  %i.aky = add nsw i32 %i.akx, %i.akw
  %i.akz = sext i32 %i.aky to i64
  %i.ala = load ptr, ptr %0, align 8, !tbaa !87
  %i.alb = getelementptr i8, ptr %i.ala, i64 %i.akv
  %i.alc = getelementptr i8, ptr %i.alb, i64 %i.aiz
  %i.ald = getelementptr i8, ptr %i.alc, i64 %i.akz
  %i.ale = load i64, ptr %i.ald, align 1, !tbaa !90
  store i64 %i.ale, ptr %.3256.i.i, align 1, !tbaa !90
  %i.alf = getelementptr inbounds nuw i8, ptr %.3256.i.i, i64 8 ; 2 uses
  %i.alg = add nuw nsw i32 %.21228255.i.i, 1      ; 2 uses
  %exitcond438.not.i.i = icmp eq i32 %i.alg, %5
  br i1 %exitcond438.not.i.i, label %.loopexit218.i.i, label %bb.m, !llvm.loop !50

.loopexit220.i.i:                                 ; preds = %bb.j
  br i1 %brmerge375.i.i, label %.loopexit218.i.i, label %.lr.ph261.i.i

.lr.ph261.i.i:                                    ; preds = %.loopexit220.i.i
  %i.alh = sext i32 %16 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph261.i.i
  %.5260.i.i = phi ptr [ %.0264.i.i, %.lr.ph261.i.i ], [ %i.amg, %bb.n ] ; 3 uses
  %.01229259.i.i = phi i32 [ 0, %.lr.ph261.i.i ], [ %i.amh, %bb.n ] ; 2 uses
  %i.ali = add nsw i32 %.01229259.i.i, %i.act     ; 2 uses
  %i.alj = sdiv i32 %i.ali, %i.zh
  %i.alk = srem i32 %i.ali, %i.zh                 ; 2 uses
  %i.all = sdiv i32 %i.alk, %6
  %i.alm = srem i32 %i.alk, %6
  %i.aln = sext i32 %i.alj to i64
  %i.alo = mul i64 %i.l, %i.aln
  %i.alp = add i64 %i.alo, %i.alh
  %i.alq = mul i32 %i.all, %.scalar451.i.i
  %i.alr = mul nsw i32 %i.alm, %8
  %i.als = add nsw i32 %i.alr, %i.alq
  %i.alt = sext i32 %i.als to i64
  %i.alu = add i64 %i.alp, %i.alt
  %i.alv = shl i64 %i.alu, 3
  %i.alw = load ptr, ptr %0, align 8, !tbaa !87
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.alv
  %i.aly = load <16 x i32>, ptr %i.alx, align 1, !tbaa !90 ; 2 uses
  %i.alz = shufflevector <16 x i32> %i.aly, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ama = bitcast <8 x i32> %i.alz to <4 x i64>
  %i.amb = shufflevector <16 x i32> %i.aly, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.amc = bitcast <8 x i32> %i.amb to <4 x i64>
  %i.amd = shufflevector <4 x i64> %i.ama, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ame = shufflevector <4 x i64> %i.amc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amd, ptr %.5260.i.i, align 1, !tbaa !90
  %i.amf = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 32
  store <4 x i64> %i.ame, ptr %i.amf, align 1, !tbaa !90
  %i.amg = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 64 ; 2 uses
  %i.amh = add nuw nsw i32 %.01229259.i.i, 1      ; 2 uses
  %exitcond439.not.i.i = icmp eq i32 %i.amh, %i.acr
  br i1 %exitcond439.not.i.i, label %.loopexit218.i.i, label %bb.n, !llvm.loop !51

bb.o:                                             ; preds = %bb.i
  br i1 %i.abx, label %.preheader228.i.i, label %.loopexit226.i.i

.preheader228.i.i:                                ; preds = %bb.o
  br i1 %i.aby, label %.lr.ph.i37.i, label %.preheader227.i.i

.preheader227.i.i:                                ; preds = %.lr.ph.i37.i, %.preheader228.i.i
  %.01230.lcssa.i.i = phi i32 [ 0, %.preheader228.i.i ], [ %i.apo, %.lr.ph.i37.i ] ; 3 uses
  %.7.lcssa.i35.i = phi ptr [ %.0264.i.i, %.preheader228.i.i ], [ %i.apn, %.lr.ph.i37.i ] ; 2 uses
  %i.ami = or disjoint i32 %.01230.lcssa.i.i, 1
  %i.amj = icmp slt i32 %i.ami, %5
  br i1 %i.amj, label %.lr.ph234.i.i, label %.preheader225.i.i

.lr.ph.i37.i:                                     ; preds = %.preheader228.i.i, %.lr.ph.i37.i
  %.7230.i.i = phi ptr [ %i.apn, %.lr.ph.i37.i ], [ %.0264.i.i, %.preheader228.i.i ] ; 3 uses
  %.01230229.i.i = phi i32 [ %i.apo, %.lr.ph.i37.i ], [ 0, %.preheader228.i.i ] ; 2 uses
  %i.amk = add nsw i32 %.01230229.i.i, %4
  %i.aml = insertelement <4 x i32> poison, i32 %i.amk, i64 0
  %i.amm = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amn = add <4 x i32> %i.amm, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.amo = bitcast <4 x i32> %i.amn to <2 x i64>
  %i.amp = bitcast <4 x i32> %i.amn to <2 x i64>
  %i.amq = and <2 x i64> %i.amp, splat (i64 4294967295)
  %i.amr = mul nuw <2 x i64> %i.amq, %i.aca
  %i.ams = lshr <2 x i64> %i.amr, splat (i64 32)
  %i.amt = lshr <2 x i64> %i.amo, splat (i64 32)
  %i.amu = mul nuw <2 x i64> %i.amt, %i.aca
  %i.amv = bitcast <2 x i64> %i.ams to <8 x i16>
  %i.amw = bitcast <2 x i64> %i.amu to <8 x i16>
  %i.amx = shufflevector <8 x i16> %i.amv, <8 x i16> %i.amw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.amy = bitcast <8 x i16> %i.amx to <4 x i32>  ; 2 uses
  %i.amz = sub <4 x i32> %i.amn, %i.amy
  %i.ana = lshr <4 x i32> %i.amz, %i.acb
  %i.anb = add <4 x i32> %i.ana, %i.amy
  %i.anc = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.anb, <4 x i32> %i.aau) ; 2 uses
  %i.and = mul <4 x i32> %i.anc, %i.acd
  %i.ane = sub <4 x i32> %i.amn, %i.and           ; 4 uses
  %i.anf = bitcast <4 x i32> %i.ane to <2 x i64>
  %i.ang = bitcast <4 x i32> %i.ane to <2 x i64>
  %i.anh = and <2 x i64> %i.ang, splat (i64 4294967295)
  %i.ani = mul nuw <2 x i64> %i.anh, %i.acf
  %i.anj = lshr <2 x i64> %i.ani, splat (i64 32)
  %i.ank = lshr <2 x i64> %i.anf, splat (i64 32)
  %i.anl = mul nuw <2 x i64> %i.ank, %i.acf
  %i.anm = bitcast <2 x i64> %i.anj to <8 x i16>
  %i.ann = bitcast <2 x i64> %i.anl to <8 x i16>
  %i.ano = shufflevector <8 x i16> %i.anm, <8 x i16> %i.ann, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.anp = bitcast <8 x i16> %i.ano to <4 x i32>  ; 2 uses
  %i.anq = sub <4 x i32> %i.ane, %i.anp
  %i.anr = lshr <4 x i32> %i.anq, %i.acg
  %i.ans = add <4 x i32> %i.anr, %i.anp
  %i.ant = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ans, <4 x i32> %i.abm) ; 2 uses
  %i.anu = mul <4 x i32> %i.ant, %i.aci
  %i.anv = sub <4 x i32> %i.ane, %i.anu
  %i.anw = mul <4 x i32> %i.anc, %i.acl
  %i.anx = mul <4 x i32> %i.anv, %i.acn
  %i.any = mul <4 x i32> %i.ant, %i.acp
  %i.anz = add <4 x i32> %i.any, %i.anw
  %i.aoa = add <4 x i32> %i.anz, %i.anx           ; 4 uses
  %i.aob = shufflevector <4 x i32> %i.aoa, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.aoc = add <8 x i32> %i.aob, %i.agp
  %i.aod = shufflevector <4 x i32> %i.aoa, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aoe = add <8 x i32> %i.aod, %i.agp
  %i.aof = shufflevector <4 x i32> %i.aoa, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aog = add <8 x i32> %i.aof, %i.agp
  %i.aoh = shufflevector <4 x i32> %i.aoa, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aoi = add <8 x i32> %i.aoh, %i.agp
  %i.aoj = load ptr, ptr %0, align 8, !tbaa !87   ; 4 uses
  %i.aok = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aoj, <8 x i32> %i.aoc, <8 x i32> splat (i32 -1), i8 1)
  %i.aol = bitcast <8 x i32> %i.aok to <32 x i8>
  %i.aom = shufflevector <32 x i8> %i.aol, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aon = bitcast <32 x i8> %i.aom to <8 x i32>
  %i.aoo = shufflevector <8 x i32> %i.aon, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aop = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aoj, <8 x i32> %i.aoe, <8 x i32> splat (i32 -1), i8 1)
  %i.aoq = bitcast <8 x i32> %i.aop to <32 x i8>
  %i.aor = shufflevector <32 x i8> %i.aoq, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aos = bitcast <32 x i8> %i.aor to <8 x i32>
  %i.aot = shufflevector <8 x i32> %i.aos, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aou = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aoj, <8 x i32> %i.aog, <8 x i32> splat (i32 -1), i8 1)
  %i.aov = bitcast <8 x i32> %i.aou to <32 x i8>
  %i.aow = shufflevector <32 x i8> %i.aov, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aox = bitcast <32 x i8> %i.aow to <8 x i32>
  %i.aoy = shufflevector <8 x i32> %i.aox, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aoj, <8 x i32> %i.aoi, <8 x i32> splat (i32 -1), i8 1)
  %i.apa = bitcast <8 x i32> %i.aoz to <32 x i8>
  %i.apb = shufflevector <32 x i8> %i.apa, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apc = bitcast <32 x i8> %i.apb to <8 x i32>
  %i.apd = shufflevector <8 x i32> %i.apc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ape = bitcast <4 x i32> %i.aoo to <16 x i8>
  %i.apf = bitcast <4 x i32> %i.aot to <16 x i8>
  %i.apg = shufflevector <16 x i8> %i.ape, <16 x i8> %i.apf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aph = bitcast <4 x i32> %i.aoy to <16 x i8>
  %i.api = bitcast <4 x i32> %i.apd to <16 x i8>
  %i.apj = shufflevector <16 x i8> %i.aph, <16 x i8> %i.api, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.apk = shufflevector <16 x i8> %i.apg, <16 x i8> %i.apj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.apl = shufflevector <16 x i8> %i.apg, <16 x i8> %i.apj, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <16 x i8> %i.apk, ptr %.7230.i.i, align 1, !tbaa !90
  %i.apm = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 16
  store <16 x i8> %i.apl, ptr %i.apm, align 1, !tbaa !90
  %i.apn = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 32 ; 2 uses
  %i.apo = add nuw nsw i32 %.01230229.i.i, 4      ; 3 uses
  %i.app = or disjoint i32 %i.apo, 3
  %i.apq = icmp slt i32 %i.app, %5
  br i1 %i.apq, label %.lr.ph.i37.i, label %.preheader227.i.i, !llvm.loop !52

.preheader225.i.i:                                ; preds = %.lr.ph234.i.i, %.preheader227.i.i
  %.11231.lcssa.i.i = phi i32 [ %.01230.lcssa.i.i, %.preheader227.i.i ], [ %i.are, %.lr.ph234.i.i ] ; 2 uses
  %.8.lcssa.i.i = phi ptr [ %.7.lcssa.i35.i, %.preheader227.i.i ], [ %i.ard, %.lr.ph234.i.i ] ; 2 uses
  %i.apr = icmp slt i32 %.11231.lcssa.i.i, %5
  br i1 %i.apr, label %.lr.ph239.i.i, label %.loopexit218.i.i

.lr.ph234.i.i:                                    ; preds = %.preheader227.i.i, %.lr.ph234.i.i
  %.8233.i.i = phi ptr [ %i.ard, %.lr.ph234.i.i ], [ %.7.lcssa.i35.i, %.preheader227.i.i ] ; 2 uses
  %.11231232.i.i = phi i32 [ %i.are, %.lr.ph234.i.i ], [ %.01230.lcssa.i.i, %.preheader227.i.i ] ; 2 uses
  %i.aps = add nsw i32 %.11231232.i.i, %4         ; 3 uses
  %i.apt = add nsw i32 %i.aps, 1                  ; 2 uses
  %i.apu = insertelement <2 x i32> poison, i32 %i.aps, i64 0
  %i.apv = insertelement <2 x i32> %i.apu, i32 %i.apt, i64 1
  %i.apw = srem <2 x i32> %i.apv, %i.acz          ; 3 uses
  %i.apx = srem <2 x i32> %i.apw, %i.adb
  %i.apy = mul nsw <2 x i32> %i.apx, %i.add       ; 2 uses
  %i.apz = insertelement <2 x i32> %i.apw, i32 %i.aps, i64 1
  %i.aqa = sdiv <2 x i32> %i.apz, %i.ade
  %i.aqb = mul <2 x i32> %i.aqa, %i.adg           ; 2 uses
  %shift = shufflevector <2 x i32> %i.aqb, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop370.a = add <2 x i32> %i.aqb, %shift
  %foldExtExtBinop372 = add <2 x i32> %foldExtExtBinop370.a, %i.apy
  %i.aqc = shufflevector <2 x i32> %foldExtExtBinop372, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.aqd = add <8 x i32> %i.aqc, %i.agp
  %i.aqe = shufflevector <2 x i32> %i.apw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aqf = insertelement <2 x i32> %i.aqe, i32 %i.apt, i64 1
  %i.aqg = sdiv <2 x i32> %i.aqf, %i.ade
  %i.aqh = mul <2 x i32> %i.aqg, %i.adg           ; 2 uses
  %i.aqi = shufflevector <2 x i32> %i.aqh, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqj = shufflevector <2 x i32> %i.aqh, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqk = add <8 x i32> %i.aqi, %i.aqj
  %i.aql = shufflevector <8 x i32> %i.aqk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aqm = shufflevector <2 x i32> %i.apy, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aqn = add <8 x i32> %i.aql, %i.aqm
  %i.aqo = add <8 x i32> %i.aqn, %i.agp
  %i.aqp = load ptr, ptr %0, align 8, !tbaa !87   ; 2 uses
  %i.aqq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aqp, <8 x i32> %i.aqd, <8 x i32> splat (i32 -1), i8 1)
  %i.aqr = bitcast <8 x i32> %i.aqq to <32 x i8>
  %i.aqs = shufflevector <32 x i8> %i.aqr, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqt = bitcast <32 x i8> %i.aqs to <8 x i32>
  %i.aqu = shufflevector <8 x i32> %i.aqt, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aqv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aqp, <8 x i32> %i.aqo, <8 x i32> splat (i32 -1), i8 1)
  %i.aqw = bitcast <8 x i32> %i.aqv to <32 x i8>
  %i.aqx = shufflevector <32 x i8> %i.aqw, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqy = bitcast <32 x i8> %i.aqx to <8 x i32>
  %i.aqz = shufflevector <8 x i32> %i.aqy, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ara = bitcast <4 x i32> %i.aqu to <16 x i8>
  %i.arb = bitcast <4 x i32> %i.aqz to <16 x i8>
  %i.arc = shufflevector <16 x i8> %i.ara, <16 x i8> %i.arb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.arc, ptr %.8233.i.i, align 1, !tbaa !90
  %i.ard = getelementptr inbounds nuw i8, ptr %.8233.i.i, i64 16 ; 2 uses
  %i.are = add nuw nsw i32 %.11231232.i.i, 2      ; 3 uses
  %i.arf = or disjoint i32 %i.are, 1
  %i.arg = icmp slt i32 %i.arf, %5
  br i1 %i.arg, label %.lr.ph234.i.i, label %.preheader225.i.i, !llvm.loop !53

.lr.ph239.i.i:                                    ; preds = %.preheader225.i.i, %.lr.ph239.i.i
  %.9238.i.i = phi ptr [ %i.asc, %.lr.ph239.i.i ], [ %.8.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
  %.21232237.i.i = phi i32 [ %i.asd, %.lr.ph239.i.i ], [ %.11231.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
end_hunk_0
