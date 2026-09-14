Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512bf16?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.adm = load <8 x bfloat>, ptr %i.adl, align 16, !tbaa !24
  %i.adn = fpext fast <8 x bfloat> %i.adm to <8 x float>
  %i.ado = getelementptr inbounds nuw i8, ptr %.1213172995, i64 80
  %i.adp = load <8 x bfloat>, ptr %i.ado, align 16, !tbaa !24
  %i.adq = fpext fast <8 x bfloat> %i.adp to <8 x float>
  %i.adr = getelementptr inbounds nuw i8, ptr %.1213172995, i64 96
  %i.ads = load <8 x bfloat>, ptr %i.adr, align 16, !tbaa !24
  %i.adt = fpext fast <8 x bfloat> %i.ads to <8 x float>
  %i.adu = getelementptr inbounds nuw i8, ptr %.1213172995, i64 112
  %i.adv = load <8 x bfloat>, ptr %i.adu, align 16, !tbaa !24
  %i.adw = fpext fast <8 x bfloat> %i.adv to <8 x float>
  %i.adx = load <4 x i16>, ptr %.214282994, align 2, !tbaa !27
  %i.ady = load <4 x i16>, ptr %.014322993, align 2, !tbaa !27
  %i.adz = shufflevector <4 x i16> %i.adx, <4 x i16> %i.ady, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aea = zext <8 x i16> %i.adz to <8 x i32>
  %i.aeb = shl nuw <8 x i32> %i.aea, splat (i32 16) ; 8 uses
  %i.aec = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aed = shufflevector <8 x float> %i.aec, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adb, <8 x float> nofpclass(nan inf) %i.aed, <8 x float> nofpclass(nan inf) %.1325642991)
  %i.aef = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aeg = shufflevector <8 x float> %i.aef, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aeh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ade, <8 x float> nofpclass(nan inf) %i.aeg, <8 x float> nofpclass(nan inf) %.1225882990)
  %i.aei = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aej = shufflevector <8 x float> %i.aei, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aek = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adh, <8 x float> nofpclass(nan inf) %i.aej, <8 x float> nofpclass(nan inf) %.1226112989)
  %i.ael = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aem = shufflevector <8 x float> %i.ael, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aen = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adk, <8 x float> nofpclass(nan inf) %i.aem, <8 x float> nofpclass(nan inf) %.1226322988)
  %i.aeo = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aep = shufflevector <8 x float> %i.aeo, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.aeq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> nofpclass(nan inf) %i.aep, <8 x float> nofpclass(nan inf) %i.aee) ; 2 uses
  %i.aer = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aes = shufflevector <8 x float> %i.aer, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.aet = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> nofpclass(nan inf) %i.aes, <8 x float> nofpclass(nan inf) %i.aeh) ; 2 uses
  %i.aeu = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aev = shufflevector <8 x float> %i.aeu, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.aew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adt, <8 x float> nofpclass(nan inf) %i.aev, <8 x float> nofpclass(nan inf) %i.aek) ; 2 uses
  %i.aex = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aey = shufflevector <8 x float> %i.aex, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.aez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adw, <8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %i.aen) ; 2 uses
  %i.afa = getelementptr inbounds [2 x i8], ptr %.214282994, i64 %i.fz
  %i.afb = getelementptr inbounds [2 x i8], ptr %.014322993, i64 %i.fz
  %i.afc = getelementptr inbounds nuw i8, ptr %.1213172995, i64 128
  %i.afd = add nuw nsw i32 %.014332992, 1         ; 2 uses
  %exitcond4022.not = icmp eq i32 %i.afd, %i.fr
  br i1 %exitcond4022.not, label %.loopexit2889.loopexit, label %.lr.ph2996, !llvm.loop !42

.loopexit2889.loopexit:                           ; preds = %.lr.ph2996
  %scevgep4020 = getelementptr i8, ptr %.913143021, i64 128
  %scevgep4021 = getelementptr i8, ptr %scevgep4020, i64 %i.gp
  br label %.loopexit2888

.loopexit2889:                                    ; preds = %.loopexit2891
  br i1 %i.ce, label %.preheader2887, label %.loopexit2888

.preheader2887:                                   ; preds = %.loopexit2889
  br i1 %i.fs, label %.lr.ph3010, label %.loopexit2888

.lr.ph3010:                                       ; preds = %.preheader2887, %.lr.ph3010
  %.1413193009 = phi ptr [ %i.ain, %.lr.ph3010 ], [ %.913143021, %.preheader2887 ] ; 9 uses
  %.414303008 = phi ptr [ %i.aim, %.lr.ph3010 ], [ %gep3032, %.preheader2887 ] ; 9 uses
  %.014343007 = phi i32 [ %i.aio, %.lr.ph3010 ], [ 0, %.preheader2887 ]
  %.1525663006 = phi <8 x float> [ %i.ahn, %.lr.ph3010 ], [ %.1025613019, %.preheader2887 ]
  %.1425903005 = phi <8 x float> [ %i.ahv, %.lr.ph3010 ], [ %.925853018, %.preheader2887 ]
  %.1426133004 = phi <8 x float> [ %i.aid, %.lr.ph3010 ], [ %.926083017, %.preheader2887 ]
  %.1426343003 = phi <8 x float> [ %i.ail, %.lr.ph3010 ], [ %.926293016, %.preheader2887 ]
  %i.afe = load <8 x bfloat>, ptr %.1413193009, align 16, !tbaa !24
  %i.aff = fpext fast <8 x bfloat> %i.afe to <8 x float>
  %i.afg = getelementptr inbounds nuw i8, ptr %.1413193009, i64 16
  %i.afh = load <8 x bfloat>, ptr %i.afg, align 16, !tbaa !24
  %i.afi = fpext fast <8 x bfloat> %i.afh to <8 x float>
  %i.afj = getelementptr inbounds nuw i8, ptr %.1413193009, i64 32
  %i.afk = load <8 x bfloat>, ptr %i.afj, align 16, !tbaa !24
  %i.afl = fpext fast <8 x bfloat> %i.afk to <8 x float>
  %i.afm = getelementptr inbounds nuw i8, ptr %.1413193009, i64 48
  %i.afn = load <8 x bfloat>, ptr %i.afm, align 16, !tbaa !24
  %i.afo = fpext fast <8 x bfloat> %i.afn to <8 x float>
  %i.afp = getelementptr inbounds nuw i8, ptr %.1413193009, i64 64
  %i.afq = load <8 x bfloat>, ptr %i.afp, align 16, !tbaa !24
  %i.afr = fpext fast <8 x bfloat> %i.afq to <8 x float>
  %i.afs = getelementptr inbounds nuw i8, ptr %.1413193009, i64 80
  %i.aft = load <8 x bfloat>, ptr %i.afs, align 16, !tbaa !24
  %i.afu = fpext fast <8 x bfloat> %i.aft to <8 x float>
  %i.afv = getelementptr inbounds nuw i8, ptr %.1413193009, i64 96
  %i.afw = load <8 x bfloat>, ptr %i.afv, align 16, !tbaa !24
  %i.afx = fpext fast <8 x bfloat> %i.afw to <8 x float>
  %i.afy = getelementptr inbounds nuw i8, ptr %.1413193009, i64 112
  %i.afz = load <8 x bfloat>, ptr %i.afy, align 16, !tbaa !24
  %i.aga = fpext fast <8 x bfloat> %i.afz to <8 x float>
  %i.agb = load i16, ptr %.414303008, align 2, !tbaa !27
  %i.agc = zext i16 %i.agb to i32
  %i.agd = shl nuw i32 %i.agc, 16
  %i.age = insertelement <8 x i32> poison, i32 %i.agd, i64 0
  %i.agf = bitcast <8 x i32> %i.age to <8 x float>
  %i.agg = shufflevector <8 x float> %i.agf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aff, <8 x float> nofpclass(nan inf) %i.agg, <8 x float> nofpclass(nan inf) %.1525663006)
  %i.agi = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.fx
  %i.agj = load i16, ptr %i.agi, align 2, !tbaa !27
  %i.agk = zext i16 %i.agj to i32
  %i.agl = shl nuw i32 %i.agk, 16
  %i.agm = insertelement <8 x i32> poison, i32 %i.agl, i64 0
  %i.agn = bitcast <8 x i32> %i.agm to <8 x float>
  %i.ago = shufflevector <8 x float> %i.agn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afi, <8 x float> nofpclass(nan inf) %i.ago, <8 x float> nofpclass(nan inf) %.1425903005)
  %i.agq = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gb
  %i.agr = load i16, ptr %i.agq, align 2, !tbaa !27
  %i.ags = zext i16 %i.agr to i32
  %i.agt = shl nuw i32 %i.ags, 16
  %i.agu = insertelement <8 x i32> poison, i32 %i.agt, i64 0
  %i.agv = bitcast <8 x i32> %i.agu to <8 x float>
  %i.agw = shufflevector <8 x float> %i.agv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afl, <8 x float> nofpclass(nan inf) %i.agw, <8 x float> nofpclass(nan inf) %.1426133004)
  %i.agy = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gd
  %i.agz = load i16, ptr %i.agy, align 2, !tbaa !27
  %i.aha = zext i16 %i.agz to i32
  %i.ahb = shl nuw i32 %i.aha, 16
  %i.ahc = insertelement <8 x i32> poison, i32 %i.ahb, i64 0
  %i.ahd = bitcast <8 x i32> %i.ahc to <8 x float>
  %i.ahe = shufflevector <8 x float> %i.ahd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afo, <8 x float> nofpclass(nan inf) %i.ahe, <8 x float> nofpclass(nan inf) %.1426343003)
  %i.ahg = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gf
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !27
  %i.ahi = zext i16 %i.ahh to i32
  %i.ahj = shl nuw i32 %i.ahi, 16
  %i.ahk = insertelement <8 x i32> poison, i32 %i.ahj, i64 0
  %i.ahl = bitcast <8 x i32> %i.ahk to <8 x float>
  %i.ahm = shufflevector <8 x float> %i.ahl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afr, <8 x float> nofpclass(nan inf) %i.ahm, <8 x float> nofpclass(nan inf) %i.agh) ; 2 uses
  %i.aho = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gh
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !27
  %i.ahq = zext i16 %i.ahp to i32
  %i.ahr = shl nuw i32 %i.ahq, 16
  %i.ahs = insertelement <8 x i32> poison, i32 %i.ahr, i64 0
  %i.aht = bitcast <8 x i32> %i.ahs to <8 x float>
  %i.ahu = shufflevector <8 x float> %i.aht, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afu, <8 x float> nofpclass(nan inf) %i.ahu, <8 x float> nofpclass(nan inf) %i.agp) ; 2 uses
  %i.ahw = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gj
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !27
  %i.ahy = zext i16 %i.ahx to i32
  %i.ahz = shl nuw i32 %i.ahy, 16
  %i.aia = insertelement <8 x i32> poison, i32 %i.ahz, i64 0
  %i.aib = bitcast <8 x i32> %i.aia to <8 x float>
  %i.aic = shufflevector <8 x float> %i.aib, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aid = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afx, <8 x float> nofpclass(nan inf) %i.aic, <8 x float> nofpclass(nan inf) %i.agx) ; 2 uses
  %i.aie = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gl
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !27
  %i.aig = zext i16 %i.aif to i32
  %i.aih = shl nuw i32 %i.aig, 16
  %i.aii = insertelement <8 x i32> poison, i32 %i.aih, i64 0
  %i.aij = bitcast <8 x i32> %i.aii to <8 x float>
  %i.aik = shufflevector <8 x float> %i.aij, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ail = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aga, <8 x float> nofpclass(nan inf) %i.aik, <8 x float> nofpclass(nan inf) %i.ahf) ; 2 uses
  %i.aim = getelementptr inbounds [2 x i8], ptr %.414303008, i64 %i.gm
  %i.ain = getelementptr inbounds nuw i8, ptr %.1413193009, i64 128
  %i.aio = add nuw nsw i32 %.014343007, 1         ; 2 uses
  %exitcond4025.not = icmp eq i32 %i.aio, %i.fr
  br i1 %exitcond4025.not, label %.loopexit2888.loopexit, label %.lr.ph3010, !llvm.loop !43

.loopexit2888.loopexit:                           ; preds = %.lr.ph3010
  %scevgep4023 = getelementptr i8, ptr %.913143021, i64 128
  %scevgep4024 = getelementptr i8, ptr %scevgep4023, i64 %i.gp
  br label %.loopexit2888

.loopexit2888:                                    ; preds = %.preheader2890, %.loopexit2891.loopexit, %bb.h, %.loopexit2889.loopexit, %.loopexit2888.loopexit, %.preheader2887, %.loopexit2889
  %.152635 = phi nsz <8 x float> [ %.926293016, %.loopexit2889 ], [ %.926293016, %.preheader2887 ], [ %i.ail, %.loopexit2888.loopexit ], [ %.926293016, %bb.h ], [ %i.aez, %.loopexit2889.loopexit ], [ %i.acv, %.loopexit2891.loopexit ], [ %.926293016, %.preheader2890 ] ; 2 uses
  %.152614 = phi nsz <8 x float> [ %.926083017, %.loopexit2889 ], [ %.926083017, %.preheader2887 ], [ %i.aid, %.loopexit2888.loopexit ], [ %.926083017, %bb.h ], [ %i.aew, %.loopexit2889.loopexit ], [ %i.acs, %.loopexit2891.loopexit ], [ %.926083017, %.preheader2890 ] ; 2 uses
  %.152591 = phi nsz <8 x float> [ %.925853018, %.loopexit2889 ], [ %.925853018, %.preheader2887 ], [ %i.ahv, %.loopexit2888.loopexit ], [ %.925853018, %bb.h ], [ %i.aet, %.loopexit2889.loopexit ], [ %i.acp, %.loopexit2891.loopexit ], [ %.925853018, %.preheader2890 ] ; 2 uses
  %.162567 = phi nsz <8 x float> [ %.1025613019, %.loopexit2889 ], [ %.1025613019, %.preheader2887 ], [ %i.ahn, %.loopexit2888.loopexit ], [ %.1025613019, %bb.h ], [ %i.aeq, %.loopexit2889.loopexit ], [ %i.acm, %.loopexit2891.loopexit ], [ %.1025613019, %.preheader2890 ] ; 2 uses
  %.151320 = phi ptr [ %.913143021, %.loopexit2889 ], [ %.913143021, %.preheader2887 ], [ %scevgep4024, %.loopexit2888.loopexit ], [ %.913143021, %bb.h ], [ %scevgep4021, %.loopexit2889.loopexit ], [ %scevgep4018, %.loopexit2891.loopexit ], [ %.913143021, %.preheader2890 ] ; 2 uses
  %i.aip = add nuw nsw i32 %.113353020, 8         ; 3 uses
  %i.aiq = or disjoint i32 %i.aip, 7
  %i.air = icmp slt i32 %i.aiq, %i.bg
  br i1 %i.air, label %bb.g, label %.preheader2900, !llvm.loop !44

.preheader2899:                                   ; preds = %.loopexit2884, %.preheader2900
  %.162636.lcssa = phi <8 x float> [ %.92629.lcssa, %.preheader2900 ], [ %.202640, %.loopexit2884 ]
  %.162615.lcssa = phi <8 x float> [ %.92608.lcssa, %.preheader2900 ], [ %.202619, %.loopexit2884 ]
  %.162592.lcssa = phi <8 x float> [ %.92585.lcssa, %.preheader2900 ], [ %.202596, %.loopexit2884 ] ; 3 uses
  %.172568.lcssa = phi <8 x float> [ %.102561.lcssa, %.preheader2900 ], [ %.212572, %.loopexit2884 ] ; 3 uses
  %.21336.lcssa = phi i32 [ %.11335.lcssa, %.preheader2900 ], [ %i.ang, %.loopexit2884 ] ; 5 uses
  %.161321.lcssa = phi ptr [ %.91314.lcssa, %.preheader2900 ], [ %.201325, %.loopexit2884 ] ; 3 uses
  %i.ais = or disjoint i32 %.21336.lcssa, 1
  %i.ait = icmp slt i32 %i.ais, %i.bg
  br i1 %i.ait, label %.lr.ph3090, label %.preheader2898

.lr.ph3090:                                       ; preds = %.preheader2899
  %i.aiu = load ptr, ptr %0, align 8, !tbaa !18
  %i.aiv = load i32, ptr %i.o, align 4, !tbaa !17
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = load i64, ptr %i.al, align 8, !tbaa !21
  %factor.op.mul3095 = mul i64 %i.aix, %i.aiw
  %i.aiy = mul nsw i64 %indvars.iv4042, %i.db
  %invariant.gep3097 = getelementptr [2 x i8], ptr %i.aiu, i64 %i.aiy
  %i.aiz = load i32, ptr %i.e, align 4
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = load i32, ptr %i.b, align 4
  %i.ajc = sext i32 %i.ajb to i64
  br i1 %i.cg, label %.lr.ph3082.us.preheader, label %.lr.ph3090.split.preheader

.lr.ph3090.split.preheader:                       ; preds = %.lr.ph3090
  %i.ajd = add i32 %.21336.lcssa, 2
  %i.aje = sub i32 %i.cw, %.21336.lcssa
  %i.ajf = and i32 %i.aje, -2
  %i.ajg = add i32 %i.ajd, %i.ajf
  br label %.preheader2898

.lr.ph3082.us.preheader:                          ; preds = %.lr.ph3090
  %i.ajh = zext i32 %.21336.lcssa to i64
  br label %.lr.ph3082.us

.lr.ph3082.us:                                    ; preds = %.lr.ph3082.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.ajh, %.lr.ph3082.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.2113263089.us = phi ptr [ %.161321.lcssa, %.lr.ph3082.us.preheader ], [ %scevgep4033, %._crit_edge.us ] ; 2 uses
  %.2225733087.us = phi <8 x float> [ %.172568.lcssa, %.lr.ph3082.us.preheader ], [ %i.ajt, %._crit_edge.us ]
  %.2125973086.us = phi <8 x float> [ %.162592.lcssa, %.lr.ph3082.us.preheader ], [ %i.akb, %._crit_edge.us ]
  %.reass3096.us = mul i64 %factor.op.mul3095, %indvars.iv
  %gep3098.us = getelementptr i8, ptr %invariant.gep3097, i64 %.reass3096.us
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph3082.us, %bb.i
  %.2213273081.us = phi ptr [ %.2113263089.us, %.lr.ph3082.us ], [ %i.akd, %bb.i ] ; 3 uses
  %.014403080.us = phi ptr [ %gep3098.us, %.lr.ph3082.us ], [ %i.akc, %bb.i ] ; 3 uses
  %.014413079.us = phi i32 [ 0, %.lr.ph3082.us ], [ %i.ake, %bb.i ]
  %.2325743078.us = phi <8 x float> [ %.2225733087.us, %.lr.ph3082.us ], [ %i.ajt, %bb.i ]
  %.2225983077.us = phi <8 x float> [ %.2125973086.us, %.lr.ph3082.us ], [ %i.akb, %bb.i ]
  %i.aji = load <8 x bfloat>, ptr %.2213273081.us, align 16, !tbaa !24
  %i.ajj = fpext fast <8 x bfloat> %i.aji to <8 x float>
  %i.ajk = getelementptr inbounds nuw i8, ptr %.2213273081.us, i64 16
  %i.ajl = load <8 x bfloat>, ptr %i.ajk, align 16, !tbaa !24
  %i.ajm = fpext fast <8 x bfloat> %i.ajl to <8 x float>
  %i.ajn = load i16, ptr %.014403080.us, align 2, !tbaa !27
  %i.ajo = zext i16 %i.ajn to i32
  %i.ajp = shl nuw i32 %i.ajo, 16
  %i.ajq = insertelement <8 x i32> poison, i32 %i.ajp, i64 0
  %i.ajr = bitcast <8 x i32> %i.ajq to <8 x float>
  %i.ajs = shufflevector <8 x float> %i.ajr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajj, <8 x float> nofpclass(nan inf) %i.ajs, <8 x float> nofpclass(nan inf) %.2325743078.us) ; 3 uses
  %i.aju = getelementptr inbounds [2 x i8], ptr %.014403080.us, i64 %i.aja
  %i.ajv = load i16, ptr %i.aju, align 2, !tbaa !27
  %i.ajw = zext i16 %i.ajv to i32
  %i.ajx = shl nuw i32 %i.ajw, 16
  %i.ajy = insertelement <8 x i32> poison, i32 %i.ajx, i64 0
  %i.ajz = bitcast <8 x i32> %i.ajy to <8 x float>
  %i.aka = shufflevector <8 x float> %i.ajz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajm, <8 x float> nofpclass(nan inf) %i.aka, <8 x float> nofpclass(nan inf) %.2225983077.us) ; 3 uses
  %i.akc = getelementptr inbounds [2 x i8], ptr %.014403080.us, i64 %i.ajc
  %i.akd = getelementptr inbounds nuw i8, ptr %.2213273081.us, i64 32
  %i.ake = add nuw nsw i32 %.014413079.us, 1      ; 2 uses
  %exitcond4034.not = icmp eq i32 %i.ake, %i.cf
  br i1 %exitcond4034.not, label %._crit_edge.us, label %bb.i, !llvm.loop !45

._crit_edge.us:                                   ; preds = %bb.i
  %scevgep4032 = getelementptr i8, ptr %.2113263089.us, i64 32
  %scevgep4033 = getelementptr i8, ptr %scevgep4032, i64 %i.cz ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.akf = trunc i64 %indvars.iv.next to i32
  %i.akg = or i32 %i.akf, 1
  %i.akh = icmp slt i32 %i.akg, %i.bg
  br i1 %i.akh, label %.lr.ph3082.us, label %.preheader2898.loopexit, !llvm.loop !46

bb.j:                                             ; preds = %.lr.ph3066, %.loopexit2884
  %.1613213065 = phi ptr [ %.91314.lcssa, %.lr.ph3066 ], [ %.201325, %.loopexit2884 ] ; 7 uses
  %.213363064 = phi i32 [ %.11335.lcssa, %.lr.ph3066 ], [ %i.ang, %.loopexit2884 ] ; 2 uses
  %.1725683063 = phi <8 x float> [ %.102561.lcssa, %.lr.ph3066 ], [ %.212572, %.loopexit2884 ] ; 5 uses
  %.1625923062 = phi <8 x float> [ %.92585.lcssa, %.lr.ph3066 ], [ %.202596, %.loopexit2884 ] ; 5 uses
  %.1626153061 = phi <8 x float> [ %.92608.lcssa, %.lr.ph3066 ], [ %.202619, %.loopexit2884 ] ; 5 uses
  %.1626363060 = phi <8 x float> [ %.92629.lcssa, %.lr.ph3066 ], [ %.202640, %.loopexit2884 ] ; 5 uses
  %i.aki = sdiv i32 %.213363064, %i.be
  %i.akj = sext i32 %i.aki to i64
  %.reass3074 = mul i64 %factor.op.mul3073, %i.akj
  %gep3076 = getelementptr i8, ptr %invariant.gep3075, i64 %.reass3074 ; 2 uses
  br i1 %i.cd, label %.preheader2885, label %.loopexit2886

.preheader2885:                                   ; preds = %bb.j
  br i1 %i.aai, label %.lr.ph3040, label %.loopexit2884

.lr.ph3040:                                       ; preds = %.preheader2885, %.lr.ph3040
  %.1713223039 = phi ptr [ %i.all, %.lr.ph3040 ], [ %.1613213065, %.preheader2885 ] ; 5 uses
  %.014353038 = phi ptr [ %i.alk, %.lr.ph3040 ], [ %gep3076, %.preheader2885 ] ; 2 uses
  %.014383037 = phi i32 [ %i.alm, %.lr.ph3040 ], [ 0, %.preheader2885 ]
  %.1825693036 = phi <8 x float> [ %i.ala, %.lr.ph3040 ], [ %.1725683063, %.preheader2885 ]
  %.1725933035 = phi <8 x float> [ %i.ald, %.lr.ph3040 ], [ %.1625923062, %.preheader2885 ]
  %.1726163034 = phi <8 x float> [ %i.alg, %.lr.ph3040 ], [ %.1626153061, %.preheader2885 ]
  %.1726373033 = phi <8 x float> [ %i.alj, %.lr.ph3040 ], [ %.1626363060, %.preheader2885 ]
  %i.akk = load <8 x bfloat>, ptr %.1713223039, align 16, !tbaa !24
  %i.akl = fpext fast <8 x bfloat> %i.akk to <8 x float>
  %i.akm = getelementptr inbounds nuw i8, ptr %.1713223039, i64 16
  %i.akn = load <8 x bfloat>, ptr %i.akm, align 16, !tbaa !24
  %i.ako = fpext fast <8 x bfloat> %i.akn to <8 x float>
  %i.akp = getelementptr inbounds nuw i8, ptr %.1713223039, i64 32
  %i.akq = load <8 x bfloat>, ptr %i.akp, align 16, !tbaa !24
  %i.akr = fpext fast <8 x bfloat> %i.akq to <8 x float>
  %i.aks = getelementptr inbounds nuw i8, ptr %.1713223039, i64 48
  %i.akt = load <8 x bfloat>, ptr %i.aks, align 16, !tbaa !24
  %i.aku = fpext fast <8 x bfloat> %i.akt to <8 x float>
  %i.akv = load <4 x i16>, ptr %.014353038, align 2, !tbaa !27
  %i.akw = zext <4 x i16> %i.akv to <4 x i32>
  %i.akx = shl nuw <4 x i32> %i.akw, splat (i32 16) ; 4 uses
  %i.aky = bitcast <4 x i32> %i.akx to <4 x float>
  %i.akz = shufflevector <4 x float> %i.aky, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ala = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akl, <8 x float> nofpclass(nan inf) %i.akz, <8 x float> nofpclass(nan inf) %.1825693036) ; 2 uses
  %i.alb = bitcast <4 x i32> %i.akx to <4 x float>
  %i.alc = shufflevector <4 x float> %i.alb, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ald = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ako, <8 x float> nofpclass(nan inf) %i.alc, <8 x float> nofpclass(nan inf) %.1725933035) ; 2 uses
  %i.ale = bitcast <4 x i32> %i.akx to <4 x float>
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.alg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akr, <8 x float> nofpclass(nan inf) %i.alf, <8 x float> nofpclass(nan inf) %.1726163034) ; 2 uses
  %i.alh = bitcast <4 x i32> %i.akx to <4 x float>
  %i.ali = shufflevector <4 x float> %i.alh, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.alj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aku, <8 x float> nofpclass(nan inf) %i.ali, <8 x float> nofpclass(nan inf) %.1726373033) ; 2 uses
  %i.alk = getelementptr inbounds [2 x i8], ptr %.014353038, i64 %i.aal
  %i.all = getelementptr inbounds nuw i8, ptr %.1713223039, i64 64
  %i.alm = add nuw nsw i32 %.014383037, 1         ; 2 uses
  %exitcond4028.not = icmp eq i32 %i.alm, %i.aah
  br i1 %exitcond4028.not, label %.loopexit2886.loopexit, label %.lr.ph3040, !llvm.loop !47

.loopexit2886.loopexit:                           ; preds = %.lr.ph3040
  %scevgep4026 = getelementptr i8, ptr %.1613213065, i64 64
  %scevgep4027 = getelementptr i8, ptr %scevgep4026, i64 %i.aav
  br label %.loopexit2884

.loopexit2886:                                    ; preds = %bb.j
  br i1 %i.ce, label %.preheader2883, label %.loopexit2884

.preheader2883:                                   ; preds = %.loopexit2886
  br i1 %i.aai, label %.lr.ph3054, label %.loopexit2884

.lr.ph3054:                                       ; preds = %.preheader2883, %.lr.ph3054
  %.1913243053 = phi ptr [ %i.ane, %.lr.ph3054 ], [ %.1613213065, %.preheader2883 ] ; 5 uses
  %.214373052 = phi ptr [ %i.and, %.lr.ph3054 ], [ %gep3076, %.preheader2883 ] ; 5 uses
  %.014393051 = phi i32 [ %i.anf, %.lr.ph3054 ], [ 0, %.preheader2883 ]
  %.2025713050 = phi <8 x float> [ %i.ame, %.lr.ph3054 ], [ %.1725683063, %.preheader2883 ]
  %.1925953049 = phi <8 x float> [ %i.amm, %.lr.ph3054 ], [ %.1625923062, %.preheader2883 ]
  %.1926183048 = phi <8 x float> [ %i.amu, %.lr.ph3054 ], [ %.1626153061, %.preheader2883 ]
  %.1926393047 = phi <8 x float> [ %i.anc, %.lr.ph3054 ], [ %.1626363060, %.preheader2883 ]
  %i.aln = load <8 x bfloat>, ptr %.1913243053, align 16, !tbaa !24
  %i.alo = fpext fast <8 x bfloat> %i.aln to <8 x float>
  %i.alp = getelementptr inbounds nuw i8, ptr %.1913243053, i64 16
  %i.alq = load <8 x bfloat>, ptr %i.alp, align 16, !tbaa !24
  %i.alr = fpext fast <8 x bfloat> %i.alq to <8 x float>
  %i.als = getelementptr inbounds nuw i8, ptr %.1913243053, i64 32
  %i.alt = load <8 x bfloat>, ptr %i.als, align 16, !tbaa !24
  %i.alu = fpext fast <8 x bfloat> %i.alt to <8 x float>
  %i.alv = getelementptr inbounds nuw i8, ptr %.1913243053, i64 48
  %i.alw = load <8 x bfloat>, ptr %i.alv, align 16, !tbaa !24
  %i.alx = fpext fast <8 x bfloat> %i.alw to <8 x float>
  %i.aly = load i16, ptr %.214373052, align 2, !tbaa !27
  %i.alz = zext i16 %i.aly to i32
  %i.ama = shl nuw i32 %i.alz, 16
  %i.amb = insertelement <8 x i32> poison, i32 %i.ama, i64 0
  %i.amc = bitcast <8 x i32> %i.amb to <8 x float>
  %i.amd = shufflevector <8 x float> %i.amc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ame = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alo, <8 x float> nofpclass(nan inf) %i.amd, <8 x float> nofpclass(nan inf) %.2025713050) ; 2 uses
  %i.amf = getelementptr inbounds [2 x i8], ptr %.214373052, i64 %i.aan
  %i.amg = load i16, ptr %i.amf, align 2, !tbaa !27
  %i.amh = zext i16 %i.amg to i32
  %i.ami = shl nuw i32 %i.amh, 16
  %i.amj = insertelement <8 x i32> poison, i32 %i.ami, i64 0
  %i.amk = bitcast <8 x i32> %i.amj to <8 x float>
  %i.aml = shufflevector <8 x float> %i.amk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alr, <8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %.1925953049) ; 2 uses
  %i.amn = getelementptr inbounds [2 x i8], ptr %.214373052, i64 %i.aap
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !27
  %i.amp = zext i16 %i.amo to i32
  %i.amq = shl nuw i32 %i.amp, 16
  %i.amr = insertelement <8 x i32> poison, i32 %i.amq, i64 0
  %i.ams = bitcast <8 x i32> %i.amr to <8 x float>
  %i.amt = shufflevector <8 x float> %i.ams, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alu, <8 x float> nofpclass(nan inf) %i.amt, <8 x float> nofpclass(nan inf) %.1926183048) ; 2 uses
  %i.amv = getelementptr inbounds [2 x i8], ptr %.214373052, i64 %i.aar
  %i.amw = load i16, ptr %i.amv, align 2, !tbaa !27
  %i.amx = zext i16 %i.amw to i32
  %i.amy = shl nuw i32 %i.amx, 16
  %i.amz = insertelement <8 x i32> poison, i32 %i.amy, i64 0
  %i.ana = bitcast <8 x i32> %i.amz to <8 x float>
  %i.anb = shufflevector <8 x float> %i.ana, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alx, <8 x float> nofpclass(nan inf) %i.anb, <8 x float> nofpclass(nan inf) %.1926393047) ; 2 uses
  %i.and = getelementptr inbounds [2 x i8], ptr %.214373052, i64 %i.aas
  %i.ane = getelementptr inbounds nuw i8, ptr %.1913243053, i64 64
  %i.anf = add nuw nsw i32 %.014393051, 1         ; 2 uses
  %exitcond4031.not = icmp eq i32 %i.anf, %i.aah
  br i1 %exitcond4031.not, label %.loopexit2884.loopexit, label %.lr.ph3054, !llvm.loop !48

.loopexit2884.loopexit:                           ; preds = %.lr.ph3054
  %scevgep4029 = getelementptr i8, ptr %.1613213065, i64 64
  %scevgep4030 = getelementptr i8, ptr %scevgep4029, i64 %i.aav
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %.preheader2885, %.loopexit2886.loopexit, %.loopexit2884.loopexit, %.preheader2883, %.loopexit2886
  %.202640 = phi nsz <8 x float> [ %.1626363060, %.loopexit2886 ], [ %.1626363060, %.preheader2883 ], [ %i.anc, %.loopexit2884.loopexit ], [ %i.alj, %.loopexit2886.loopexit ], [ %.1626363060, %.preheader2885 ] ; 2 uses
  %.202619 = phi nsz <8 x float> [ %.1626153061, %.loopexit2886 ], [ %.1626153061, %.preheader2883 ], [ %i.amu, %.loopexit2884.loopexit ], [ %i.alg, %.loopexit2886.loopexit ], [ %.1626153061, %.preheader2885 ] ; 2 uses
  %.202596 = phi nsz <8 x float> [ %.1625923062, %.loopexit2886 ], [ %.1625923062, %.preheader2883 ], [ %i.amm, %.loopexit2884.loopexit ], [ %i.ald, %.loopexit2886.loopexit ], [ %.1625923062, %.preheader2885 ] ; 2 uses
  %.212572 = phi nsz <8 x float> [ %.1725683063, %.loopexit2886 ], [ %.1725683063, %.preheader2883 ], [ %i.ame, %.loopexit2884.loopexit ], [ %i.ala, %.loopexit2886.loopexit ], [ %.1725683063, %.preheader2885 ] ; 2 uses
  %.201325 = phi ptr [ %.1613213065, %.loopexit2886 ], [ %.1613213065, %.preheader2883 ], [ %scevgep4030, %.loopexit2884.loopexit ], [ %scevgep4027, %.loopexit2886.loopexit ], [ %.1613213065, %.preheader2885 ] ; 2 uses
  %i.ang = add nuw nsw i32 %.213363064, 4         ; 3 uses
  %i.anh = or disjoint i32 %i.ang, 3
  %i.ani = icmp slt i32 %i.anh, %i.bg
  br i1 %i.ani, label %bb.j, label %.preheader2899, !llvm.loop !49

.preheader2898.loopexit:                          ; preds = %._crit_edge.us
  %i.anj = trunc nuw i64 %indvars.iv.next to i32
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.cjc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chk, <4 x float> nofpclass(nan inf) %i.cjb, <4 x float> nofpclass(nan inf) %.1227073229)
  %i.cjd = bitcast <8 x i32> %i.cit to <8 x float>
  %i.cje = shufflevector <8 x float> %i.cjd, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cjf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chq, <4 x float> nofpclass(nan inf) %i.cje, <4 x float> nofpclass(nan inf) %.1227353228)
  %i.cjg = bitcast <8 x i32> %i.cit to <8 x float>
  %i.cjh = shufflevector <8 x float> %i.cjg, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chw, <4 x float> nofpclass(nan inf) %i.cjh, <4 x float> nofpclass(nan inf) %i.ciw) ; 2 uses
  %i.cjj = bitcast <8 x i32> %i.cit to <8 x float>
  %i.cjk = shufflevector <8 x float> %i.cjj, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.cjl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cic, <4 x float> nofpclass(nan inf) %i.cjk, <4 x float> nofpclass(nan inf) %i.ciz) ; 2 uses
  %i.cjm = bitcast <8 x i32> %i.cit to <8 x float>
  %i.cjn = shufflevector <8 x float> %i.cjm, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cjo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cii, <4 x float> nofpclass(nan inf) %i.cjn, <4 x float> nofpclass(nan inf) %i.cjc) ; 2 uses
  %i.cjp = bitcast <8 x i32> %i.cit to <8 x float>
  %i.cjq = shufflevector <8 x float> %i.cjp, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cjr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cio, <4 x float> nofpclass(nan inf) %i.cjq, <4 x float> nofpclass(nan inf) %i.cjf) ; 2 uses
  %i.cjs = getelementptr inbounds [2 x i8], ptr %.214193233, i64 %i.bbl
  %i.cjt = getelementptr inbounds [2 x i8], ptr %.014153234, i64 %i.bbl
  %i.cju = getelementptr inbounds nuw i8, ptr %.1214623232, i64 64
  %i.cjv = add nuw nsw i32 %.014143235, 1         ; 2 uses
  %exitcond4068.not = icmp eq i32 %i.cjv, %i.bbd
  br i1 %exitcond4068.not, label %.loopexit2870.loopexit, label %.lr.ph3237, !llvm.loop !64

.loopexit2870.loopexit:                           ; preds = %.lr.ph3237
  %scevgep4066 = getelementptr i8, ptr %.914593262, i64 64
  %scevgep4067 = getelementptr i8, ptr %scevgep4066, i64 %i.bcb
  br label %.loopexit2869

.loopexit2870:                                    ; preds = %.loopexit2872
  br i1 %i.axy, label %.preheader2868, label %.loopexit2869

.preheader2868:                                   ; preds = %.loopexit2870
  br i1 %i.bbe, label %.lr.ph3251, label %.loopexit2869

.lr.ph3251:                                       ; preds = %.preheader2868, %.lr.ph3251
  %.014133250 = phi i32 [ %i.coe, %.lr.ph3251 ], [ 0, %.preheader2868 ]
  %.414213249 = phi ptr [ %i.coc, %.lr.ph3251 ], [ %gep3273, %.preheader2868 ] ; 9 uses
  %.1414643248 = phi ptr [ %i.cod, %.lr.ph3251 ], [ %.914593262, %.preheader2868 ] ; 9 uses
  %.1526613247 = phi <4 x float> [ %i.cnd, %.lr.ph3251 ], [ %.1026563260, %.preheader2868 ]
  %.1426863246 = phi <4 x float> [ %i.cnl, %.lr.ph3251 ], [ %.926813259, %.preheader2868 ]
  %.1427093245 = phi <4 x float> [ %i.cnt, %.lr.ph3251 ], [ %.927043258, %.preheader2868 ]
  %.1427373244 = phi <4 x float> [ %i.cob, %.lr.ph3251 ], [ %.927323257, %.preheader2868 ]
  %i.cjw = load i64, ptr %.1414643248, align 1, !tbaa !24
  %i.cjx = insertelement <2 x i64> poison, i64 %i.cjw, i64 0
  %i.cjy = bitcast <2 x i64> %i.cjx to <8 x i16>
  %i.cjz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cjy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cka = bitcast <8 x i16> %i.cjz to <4 x float>
  %i.ckb = getelementptr inbounds nuw i8, ptr %.1414643248, i64 8
  %i.ckc = load i64, ptr %i.ckb, align 1, !tbaa !24
  %i.ckd = insertelement <2 x i64> poison, i64 %i.ckc, i64 0
  %i.cke = bitcast <2 x i64> %i.ckd to <8 x i16>
  %i.ckf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cke, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckg = bitcast <8 x i16> %i.ckf to <4 x float>
  %i.ckh = getelementptr inbounds nuw i8, ptr %.1414643248, i64 16
  %i.cki = load i64, ptr %i.ckh, align 1, !tbaa !24
  %i.ckj = insertelement <2 x i64> poison, i64 %i.cki, i64 0
  %i.ckk = bitcast <2 x i64> %i.ckj to <8 x i16>
  %i.ckl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckm = bitcast <8 x i16> %i.ckl to <4 x float>
  %i.ckn = getelementptr inbounds nuw i8, ptr %.1414643248, i64 24
  %i.cko = load i64, ptr %i.ckn, align 1, !tbaa !24
  %i.ckp = insertelement <2 x i64> poison, i64 %i.cko, i64 0
  %i.ckq = bitcast <2 x i64> %i.ckp to <8 x i16>
  %i.ckr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cks = bitcast <8 x i16> %i.ckr to <4 x float>
  %i.ckt = getelementptr inbounds nuw i8, ptr %.1414643248, i64 32
  %i.cku = load i64, ptr %i.ckt, align 1, !tbaa !24
  %i.ckv = insertelement <2 x i64> poison, i64 %i.cku, i64 0
  %i.ckw = bitcast <2 x i64> %i.ckv to <8 x i16>
  %i.ckx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cky = bitcast <8 x i16> %i.ckx to <4 x float>
  %i.ckz = getelementptr inbounds nuw i8, ptr %.1414643248, i64 40
  %i.cla = load i64, ptr %i.ckz, align 1, !tbaa !24
  %i.clb = insertelement <2 x i64> poison, i64 %i.cla, i64 0
  %i.clc = bitcast <2 x i64> %i.clb to <8 x i16>
  %i.cld = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cle = bitcast <8 x i16> %i.cld to <4 x float>
  %i.clf = getelementptr inbounds nuw i8, ptr %.1414643248, i64 48
  %i.clg = load i64, ptr %i.clf, align 1, !tbaa !24
  %i.clh = insertelement <2 x i64> poison, i64 %i.clg, i64 0
  %i.cli = bitcast <2 x i64> %i.clh to <8 x i16>
  %i.clj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cli, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clk = bitcast <8 x i16> %i.clj to <4 x float>
  %i.cll = getelementptr inbounds nuw i8, ptr %.1414643248, i64 56
  %i.clm = load i64, ptr %i.cll, align 1, !tbaa !24
  %i.cln = insertelement <2 x i64> poison, i64 %i.clm, i64 0
  %i.clo = bitcast <2 x i64> %i.cln to <8 x i16>
  %i.clp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clq = bitcast <8 x i16> %i.clp to <4 x float>
  %i.clr = load i16, ptr %.414213249, align 2, !tbaa !27
  %i.cls = zext i16 %i.clr to i32
  %i.clt = shl nuw i32 %i.cls, 16
  %i.clu = insertelement <4 x i32> poison, i32 %i.clt, i64 0
  %i.clv = bitcast <4 x i32> %i.clu to <4 x float>
  %i.clw = shufflevector <4 x float> %i.clv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cka, <4 x float> nofpclass(nan inf) %i.clw, <4 x float> nofpclass(nan inf) %.1526613247)
  %i.cly = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbj
  %i.clz = load i16, ptr %i.cly, align 2, !tbaa !27
  %i.cma = zext i16 %i.clz to i32
  %i.cmb = shl nuw i32 %i.cma, 16
  %i.cmc = insertelement <4 x i32> poison, i32 %i.cmb, i64 0
  %i.cmd = bitcast <4 x i32> %i.cmc to <4 x float>
  %i.cme = shufflevector <4 x float> %i.cmd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckg, <4 x float> nofpclass(nan inf) %i.cme, <4 x float> nofpclass(nan inf) %.1426863246)
  %i.cmg = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbn
  %i.cmh = load i16, ptr %i.cmg, align 2, !tbaa !27
  %i.cmi = zext i16 %i.cmh to i32
  %i.cmj = shl nuw i32 %i.cmi, 16
  %i.cmk = insertelement <4 x i32> poison, i32 %i.cmj, i64 0
  %i.cml = bitcast <4 x i32> %i.cmk to <4 x float>
  %i.cmm = shufflevector <4 x float> %i.cml, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckm, <4 x float> nofpclass(nan inf) %i.cmm, <4 x float> nofpclass(nan inf) %.1427093245)
  %i.cmo = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbp
  %i.cmp = load i16, ptr %i.cmo, align 2, !tbaa !27
  %i.cmq = zext i16 %i.cmp to i32
  %i.cmr = shl nuw i32 %i.cmq, 16
  %i.cms = insertelement <4 x i32> poison, i32 %i.cmr, i64 0
  %i.cmt = bitcast <4 x i32> %i.cms to <4 x float>
  %i.cmu = shufflevector <4 x float> %i.cmt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cks, <4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) %.1427373244)
  %i.cmw = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbr
  %i.cmx = load i16, ptr %i.cmw, align 2, !tbaa !27
  %i.cmy = zext i16 %i.cmx to i32
  %i.cmz = shl nuw i32 %i.cmy, 16
  %i.cna = insertelement <4 x i32> poison, i32 %i.cmz, i64 0
  %i.cnb = bitcast <4 x i32> %i.cna to <4 x float>
  %i.cnc = shufflevector <4 x float> %i.cnb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cky, <4 x float> nofpclass(nan inf) %i.cnc, <4 x float> nofpclass(nan inf) %i.clx) ; 2 uses
  %i.cne = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbt
  %i.cnf = load i16, ptr %i.cne, align 2, !tbaa !27
  %i.cng = zext i16 %i.cnf to i32
  %i.cnh = shl nuw i32 %i.cng, 16
  %i.cni = insertelement <4 x i32> poison, i32 %i.cnh, i64 0
  %i.cnj = bitcast <4 x i32> %i.cni to <4 x float>
  %i.cnk = shufflevector <4 x float> %i.cnj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cle, <4 x float> nofpclass(nan inf) %i.cnk, <4 x float> nofpclass(nan inf) %i.cmf) ; 2 uses
  %i.cnm = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbv
  %i.cnn = load i16, ptr %i.cnm, align 2, !tbaa !27
  %i.cno = zext i16 %i.cnn to i32
  %i.cnp = shl nuw i32 %i.cno, 16
  %i.cnq = insertelement <4 x i32> poison, i32 %i.cnp, i64 0
  %i.cnr = bitcast <4 x i32> %i.cnq to <4 x float>
  %i.cns = shufflevector <4 x float> %i.cnr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clk, <4 x float> nofpclass(nan inf) %i.cns, <4 x float> nofpclass(nan inf) %i.cmn) ; 2 uses
  %i.cnu = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bbx
  %i.cnv = load i16, ptr %i.cnu, align 2, !tbaa !27
  %i.cnw = zext i16 %i.cnv to i32
  %i.cnx = shl nuw i32 %i.cnw, 16
  %i.cny = insertelement <4 x i32> poison, i32 %i.cnx, i64 0
  %i.cnz = bitcast <4 x i32> %i.cny to <4 x float>
  %i.coa = shufflevector <4 x float> %i.cnz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cob = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clq, <4 x float> nofpclass(nan inf) %i.coa, <4 x float> nofpclass(nan inf) %i.cmv) ; 2 uses
  %i.coc = getelementptr inbounds [2 x i8], ptr %.414213249, i64 %i.bby
  %i.cod = getelementptr inbounds nuw i8, ptr %.1414643248, i64 64
  %i.coe = add nuw nsw i32 %.014133250, 1         ; 2 uses
  %exitcond4071.not = icmp eq i32 %i.coe, %i.bbd
  br i1 %exitcond4071.not, label %.loopexit2869.loopexit, label %.lr.ph3251, !llvm.loop !65

.loopexit2869.loopexit:                           ; preds = %.lr.ph3251
  %scevgep4069 = getelementptr i8, ptr %.914593262, i64 64
  %scevgep4070 = getelementptr i8, ptr %scevgep4069, i64 %i.bcb
  br label %.loopexit2869

.loopexit2869:                                    ; preds = %.preheader2871, %.loopexit2872.loopexit, %bb.y, %.loopexit2870.loopexit, %.loopexit2869.loopexit, %.preheader2868, %.loopexit2870
  %.152738 = phi nsz <4 x float> [ %.927323257, %.loopexit2870 ], [ %.927323257, %.preheader2868 ], [ %i.cob, %.loopexit2869.loopexit ], [ %.927323257, %bb.y ], [ %i.cjr, %.loopexit2870.loopexit ], [ %i.cgp, %.loopexit2872.loopexit ], [ %.927323257, %.preheader2871 ] ; 2 uses
  %.152710 = phi nsz <4 x float> [ %.927043258, %.loopexit2870 ], [ %.927043258, %.preheader2868 ], [ %i.cnt, %.loopexit2869.loopexit ], [ %.927043258, %bb.y ], [ %i.cjo, %.loopexit2870.loopexit ], [ %i.cgm, %.loopexit2872.loopexit ], [ %.927043258, %.preheader2871 ] ; 2 uses
  %.152687 = phi nsz <4 x float> [ %.926813259, %.loopexit2870 ], [ %.926813259, %.preheader2868 ], [ %i.cnl, %.loopexit2869.loopexit ], [ %.926813259, %bb.y ], [ %i.cjl, %.loopexit2870.loopexit ], [ %i.cgj, %.loopexit2872.loopexit ], [ %.926813259, %.preheader2871 ] ; 2 uses
  %.162662 = phi nsz <4 x float> [ %.1026563260, %.loopexit2870 ], [ %.1026563260, %.preheader2868 ], [ %i.cnd, %.loopexit2869.loopexit ], [ %.1026563260, %bb.y ], [ %i.cji, %.loopexit2870.loopexit ], [ %i.cgg, %.loopexit2872.loopexit ], [ %.1026563260, %.preheader2871 ] ; 2 uses
  %.151465 = phi ptr [ %.914593262, %.loopexit2870 ], [ %.914593262, %.preheader2868 ], [ %scevgep4070, %.loopexit2869.loopexit ], [ %.914593262, %bb.y ], [ %scevgep4067, %.loopexit2870.loopexit ], [ %scevgep4064, %.loopexit2872.loopexit ], [ %.914593262, %.preheader2871 ] ; 2 uses
  %i.cof = add nuw nsw i32 %.114763261, 8         ; 3 uses
  %i.cog = or disjoint i32 %i.cof, 7
  %i.coh = icmp slt i32 %i.cog, %i.awu
  br i1 %i.coh, label %bb.x, label %.preheader2881, !llvm.loop !66

.preheader2880:                                   ; preds = %.loopexit2865, %.preheader2881
  %.162739.lcssa = phi <4 x float> [ %.92732.lcssa, %.preheader2881 ], [ %.202743, %.loopexit2865 ]
  %.162711.lcssa = phi <4 x float> [ %.92704.lcssa, %.preheader2881 ], [ %.202715, %.loopexit2865 ]
  %.162688.lcssa = phi <4 x float> [ %.92681.lcssa, %.preheader2881 ], [ %.202692, %.loopexit2865 ] ; 3 uses
  %.172663.lcssa = phi <4 x float> [ %.102656.lcssa, %.preheader2881 ], [ %.212667, %.loopexit2865 ] ; 3 uses
  %.21477.lcssa = phi i32 [ %.11476.lcssa, %.preheader2881 ], [ %i.cua, %.loopexit2865 ] ; 5 uses
  %.161466.lcssa = phi ptr [ %.91459.lcssa, %.preheader2881 ], [ %.201470, %.loopexit2865 ] ; 3 uses
  %i.coi = or disjoint i32 %.21477.lcssa, 1
  %i.coj = icmp slt i32 %i.coi, %i.awu
  br i1 %i.coj, label %.lr.ph3333, label %.preheader2879

.lr.ph3333:                                       ; preds = %.preheader2880
  %i.cok = load ptr, ptr %0, align 8, !tbaa !18
  %i.col = load i32, ptr %i.o, align 4, !tbaa !17
  %i.com = sext i32 %i.col to i64
  %i.con = load i64, ptr %i.ay, align 8, !tbaa !21
  %factor.op.mul3338 = mul i64 %i.con, %i.com
  %i.coo = mul nsw i64 %indvars.iv4090, %i.ayn
  %invariant.gep3340 = getelementptr [2 x i8], ptr %i.cok, i64 %i.coo
  %i.cop = load i32, ptr %i.e, align 4
  %i.coq = sext i32 %i.cop to i64
  %i.cor = load i32, ptr %i.b, align 4
  %i.cos = sext i32 %i.cor to i64
  br i1 %i.aya, label %.lr.ph3324.us.preheader, label %.lr.ph3333.split.preheader

.lr.ph3333.split.preheader:                       ; preds = %.lr.ph3333
  %i.cot = add i32 %.21477.lcssa, 2
  %i.cou = sub i32 %i.ayi, %.21477.lcssa
  %i.cov = and i32 %i.cou, -2
  %i.cow = add i32 %i.cot, %i.cov
  br label %.preheader2879

.lr.ph3324.us.preheader:                          ; preds = %.lr.ph3333
  %i.cox = zext i32 %.21477.lcssa to i64
  br label %.lr.ph3324.us

.lr.ph3324.us:                                    ; preds = %.lr.ph3324.us.preheader, %._crit_edge3325.us
  %indvars.iv4081 = phi i64 [ %i.cox, %.lr.ph3324.us.preheader ], [ %indvars.iv.next4082, %._crit_edge3325.us ] ; 2 uses
  %.2114713332.us = phi ptr [ %.161466.lcssa, %.lr.ph3324.us.preheader ], [ %scevgep4079, %._crit_edge3325.us ] ; 2 uses
  %.2226683330.us = phi <4 x float> [ %.172663.lcssa, %.lr.ph3324.us.preheader ], [ %i.cpp, %._crit_edge3325.us ]
  %.2126933329.us = phi <4 x float> [ %.162688.lcssa, %.lr.ph3324.us.preheader ], [ %i.cpx, %._crit_edge3325.us ]
  %.reass3339.us = mul i64 %factor.op.mul3338, %indvars.iv4081
  %gep3341.us = getelementptr i8, ptr %invariant.gep3340, i64 %.reass3339.us
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph3324.us, %bb.z
  %.014063322.us = phi i32 [ 0, %.lr.ph3324.us ], [ %i.cqa, %bb.z ]
  %.014073321.us = phi ptr [ %gep3341.us, %.lr.ph3324.us ], [ %i.cpy, %bb.z ] ; 3 uses
  %.2214723320.us = phi ptr [ %.2114713332.us, %.lr.ph3324.us ], [ %i.cpz, %bb.z ] ; 3 uses
  %.2326693319.us = phi <4 x float> [ %.2226683330.us, %.lr.ph3324.us ], [ %i.cpp, %bb.z ]
  %.2226943318.us = phi <4 x float> [ %.2126933329.us, %.lr.ph3324.us ], [ %i.cpx, %bb.z ]
  %i.coy = load i64, ptr %.2214723320.us, align 1, !tbaa !24
  %i.coz = insertelement <2 x i64> poison, i64 %i.coy, i64 0
  %i.cpa = bitcast <2 x i64> %i.coz to <8 x i16>
  %i.cpb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cpa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cpc = bitcast <8 x i16> %i.cpb to <4 x float>
  %i.cpd = getelementptr inbounds nuw i8, ptr %.2214723320.us, i64 8
  %i.cpe = load i64, ptr %i.cpd, align 1, !tbaa !24
  %i.cpf = insertelement <2 x i64> poison, i64 %i.cpe, i64 0
  %i.cpg = bitcast <2 x i64> %i.cpf to <8 x i16>
  %i.cph = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cpg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cpi = bitcast <8 x i16> %i.cph to <4 x float>
  %i.cpj = load i16, ptr %.014073321.us, align 2, !tbaa !27
  %i.cpk = zext i16 %i.cpj to i32
  %i.cpl = shl nuw i32 %i.cpk, 16
  %i.cpm = insertelement <4 x i32> poison, i32 %i.cpl, i64 0
  %i.cpn = bitcast <4 x i32> %i.cpm to <4 x float>
  %i.cpo = shufflevector <4 x float> %i.cpn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpc, <4 x float> nofpclass(nan inf) %i.cpo, <4 x float> nofpclass(nan inf) %.2326693319.us) ; 3 uses
  %i.cpq = getelementptr inbounds [2 x i8], ptr %.014073321.us, i64 %i.coq
  %i.cpr = load i16, ptr %i.cpq, align 2, !tbaa !27
  %i.cps = zext i16 %i.cpr to i32
  %i.cpt = shl nuw i32 %i.cps, 16
  %i.cpu = insertelement <4 x i32> poison, i32 %i.cpt, i64 0
  %i.cpv = bitcast <4 x i32> %i.cpu to <4 x float>
  %i.cpw = shufflevector <4 x float> %i.cpv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpi, <4 x float> nofpclass(nan inf) %i.cpw, <4 x float> nofpclass(nan inf) %.2226943318.us) ; 3 uses
  %i.cpy = getelementptr inbounds [2 x i8], ptr %.014073321.us, i64 %i.cos
  %i.cpz = getelementptr inbounds nuw i8, ptr %.2214723320.us, i64 16
  %i.cqa = add nuw nsw i32 %.014063322.us, 1      ; 2 uses
  %exitcond4080.not = icmp eq i32 %i.cqa, %i.axz
  br i1 %exitcond4080.not, label %._crit_edge3325.us, label %bb.z, !llvm.loop !67

._crit_edge3325.us:                               ; preds = %bb.z
  %scevgep4078 = getelementptr i8, ptr %.2114713332.us, i64 16
  %scevgep4079 = getelementptr i8, ptr %scevgep4078, i64 %i.ayl ; 2 uses
  %indvars.iv.next4082 = add nuw nsw i64 %indvars.iv4081, 2 ; 3 uses
  %i.cqb = trunc i64 %indvars.iv.next4082 to i32
  %i.cqc = or i32 %i.cqb, 1
  %i.cqd = icmp slt i32 %i.cqc, %i.awu
  br i1 %i.cqd, label %.lr.ph3324.us, label %.preheader2879.loopexit, !llvm.loop !68

bb.aa:                                            ; preds = %.lr.ph3307, %.loopexit2865
  %.1614663306 = phi ptr [ %.91459.lcssa, %.lr.ph3307 ], [ %.201470, %.loopexit2865 ] ; 7 uses
  %.214773305 = phi i32 [ %.11476.lcssa, %.lr.ph3307 ], [ %i.cua, %.loopexit2865 ] ; 2 uses
  %.1726633304 = phi <4 x float> [ %.102656.lcssa, %.lr.ph3307 ], [ %.212667, %.loopexit2865 ] ; 5 uses
  %.1626883303 = phi <4 x float> [ %.92681.lcssa, %.lr.ph3307 ], [ %.202692, %.loopexit2865 ] ; 5 uses
  %.1627113302 = phi <4 x float> [ %.92704.lcssa, %.lr.ph3307 ], [ %.202715, %.loopexit2865 ] ; 5 uses
  %.1627393301 = phi <4 x float> [ %.92732.lcssa, %.lr.ph3307 ], [ %.202743, %.loopexit2865 ] ; 5 uses
  %i.cqe = sdiv i32 %.214773305, %i.aws
  %i.cqf = sext i32 %i.cqe to i64
  %.reass3315 = mul i64 %factor.op.mul3314, %i.cqf
  %gep3317 = getelementptr i8, ptr %invariant.gep3316, i64 %.reass3315 ; 2 uses
  br i1 %i.axx, label %.preheader2866, label %.loopexit2867

.preheader2866:                                   ; preds = %bb.aa
  br i1 %i.cde, label %.lr.ph3281, label %.loopexit2865

.lr.ph3281:                                       ; preds = %.preheader2866, %.lr.ph3281
  %.014093280 = phi i32 [ %i.cru, %.lr.ph3281 ], [ 0, %.preheader2866 ]
  %.014103279 = phi ptr [ %i.crs, %.lr.ph3281 ], [ %gep3317, %.preheader2866 ] ; 2 uses
  %.1714673278 = phi ptr [ %i.crt, %.lr.ph3281 ], [ %.1614663306, %.preheader2866 ] ; 5 uses
  %.1826643277 = phi <4 x float> [ %i.cri, %.lr.ph3281 ], [ %.1726633304, %.preheader2866 ]
  %.1726893276 = phi <4 x float> [ %i.crl, %.lr.ph3281 ], [ %.1626883303, %.preheader2866 ]
  %.1727123275 = phi <4 x float> [ %i.cro, %.lr.ph3281 ], [ %.1627113302, %.preheader2866 ]
  %.1727403274 = phi <4 x float> [ %i.crr, %.lr.ph3281 ], [ %.1627393301, %.preheader2866 ]
  %i.cqg = load i64, ptr %.1714673278, align 1, !tbaa !24
  %i.cqh = insertelement <2 x i64> poison, i64 %i.cqg, i64 0
  %i.cqi = bitcast <2 x i64> %i.cqh to <8 x i16>
  %i.cqj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqk = bitcast <8 x i16> %i.cqj to <4 x float>
  %i.cql = getelementptr inbounds nuw i8, ptr %.1714673278, i64 8
  %i.cqm = load i64, ptr %i.cql, align 1, !tbaa !24
  %i.cqn = insertelement <2 x i64> poison, i64 %i.cqm, i64 0
  %i.cqo = bitcast <2 x i64> %i.cqn to <8 x i16>
  %i.cqp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqq = bitcast <8 x i16> %i.cqp to <4 x float>
  %i.cqr = getelementptr inbounds nuw i8, ptr %.1714673278, i64 16
  %i.cqs = load i64, ptr %i.cqr, align 1, !tbaa !24
  %i.cqt = insertelement <2 x i64> poison, i64 %i.cqs, i64 0
  %i.cqu = bitcast <2 x i64> %i.cqt to <8 x i16>
  %i.cqv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqw = bitcast <8 x i16> %i.cqv to <4 x float>
  %i.cqx = getelementptr inbounds nuw i8, ptr %.1714673278, i64 24
  %i.cqy = load i64, ptr %i.cqx, align 1, !tbaa !24
  %i.cqz = insertelement <2 x i64> poison, i64 %i.cqy, i64 0
  %i.cra = bitcast <2 x i64> %i.cqz to <8 x i16>
  %i.crb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cra, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.crc = bitcast <8 x i16> %i.crb to <4 x float>
  %i.crd = load <4 x i16>, ptr %.014103279, align 2, !tbaa !27
  %i.cre = zext <4 x i16> %i.crd to <4 x i32>
  %i.crf = shl nuw <4 x i32> %i.cre, splat (i32 16) ; 4 uses
  %i.crg = bitcast <4 x i32> %i.crf to <4 x float>
  %i.crh = shufflevector <4 x float> %i.crg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cri = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqk, <4 x float> nofpclass(nan inf) %i.crh, <4 x float> nofpclass(nan inf) %.1826643277) ; 2 uses
  %i.crj = bitcast <4 x i32> %i.crf to <4 x float>
  %i.crk = shufflevector <4 x float> %i.crj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.crl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqq, <4 x float> nofpclass(nan inf) %i.crk, <4 x float> nofpclass(nan inf) %.1726893276) ; 2 uses
  %i.crm = bitcast <4 x i32> %i.crf to <4 x float>
  %i.crn = shufflevector <4 x float> %i.crm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqw, <4 x float> nofpclass(nan inf) %i.crn, <4 x float> nofpclass(nan inf) %.1727123275) ; 2 uses
  %i.crp = bitcast <4 x i32> %i.crf to <4 x float>
  %i.crq = shufflevector <4 x float> %i.crp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.crr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crc, <4 x float> nofpclass(nan inf) %i.crq, <4 x float> nofpclass(nan inf) %.1727403274) ; 2 uses
  %i.crs = getelementptr inbounds [2 x i8], ptr %.014103279, i64 %i.cdh
  %i.crt = getelementptr inbounds nuw i8, ptr %.1714673278, i64 32
  %i.cru = add nuw nsw i32 %.014093280, 1         ; 2 uses
  %exitcond4074.not = icmp eq i32 %i.cru, %i.cdd
  br i1 %exitcond4074.not, label %.loopexit2867.loopexit, label %.lr.ph3281, !llvm.loop !69

.loopexit2867.loopexit:                           ; preds = %.lr.ph3281
  %scevgep4072 = getelementptr i8, ptr %.1614663306, i64 32
  %scevgep4073 = getelementptr i8, ptr %scevgep4072, i64 %i.cdr
  br label %.loopexit2865

.loopexit2867:                                    ; preds = %bb.aa
  br i1 %i.axy, label %.preheader2864, label %.loopexit2865

.preheader2864:                                   ; preds = %.loopexit2867
  br i1 %i.cde, label %.lr.ph3295, label %.loopexit2865

.lr.ph3295:                                       ; preds = %.preheader2864, %.lr.ph3295
  %.014083294 = phi i32 [ %i.ctz, %.lr.ph3295 ], [ 0, %.preheader2864 ]
  %.214123293 = phi ptr [ %i.ctx, %.lr.ph3295 ], [ %gep3317, %.preheader2864 ] ; 5 uses
  %.1914693292 = phi ptr [ %i.cty, %.lr.ph3295 ], [ %.1614663306, %.preheader2864 ] ; 5 uses
  %.2026663291 = phi <4 x float> [ %i.csy, %.lr.ph3295 ], [ %.1726633304, %.preheader2864 ]
  %.1926913290 = phi <4 x float> [ %i.ctg, %.lr.ph3295 ], [ %.1626883303, %.preheader2864 ]
  %.1927143289 = phi <4 x float> [ %i.cto, %.lr.ph3295 ], [ %.1627113302, %.preheader2864 ]
  %.1927423288 = phi <4 x float> [ %i.ctw, %.lr.ph3295 ], [ %.1627393301, %.preheader2864 ]
  %i.crv = load i64, ptr %.1914693292, align 1, !tbaa !24
  %i.crw = insertelement <2 x i64> poison, i64 %i.crv, i64 0
  %i.crx = bitcast <2 x i64> %i.crw to <8 x i16>
  %i.cry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.crx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.crz = bitcast <8 x i16> %i.cry to <4 x float>
  %i.csa = getelementptr inbounds nuw i8, ptr %.1914693292, i64 8
  %i.csb = load i64, ptr %i.csa, align 1, !tbaa !24
  %i.csc = insertelement <2 x i64> poison, i64 %i.csb, i64 0
  %i.csd = bitcast <2 x i64> %i.csc to <8 x i16>
  %i.cse = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csf = bitcast <8 x i16> %i.cse to <4 x float>
  %i.csg = getelementptr inbounds nuw i8, ptr %.1914693292, i64 16
  %i.csh = load i64, ptr %i.csg, align 1, !tbaa !24
  %i.csi = insertelement <2 x i64> poison, i64 %i.csh, i64 0
  %i.csj = bitcast <2 x i64> %i.csi to <8 x i16>
  %i.csk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csl = bitcast <8 x i16> %i.csk to <4 x float>
  %i.csm = getelementptr inbounds nuw i8, ptr %.1914693292, i64 24
  %i.csn = load i64, ptr %i.csm, align 1, !tbaa !24
  %i.cso = insertelement <2 x i64> poison, i64 %i.csn, i64 0
  %i.csp = bitcast <2 x i64> %i.cso to <8 x i16>
  %i.csq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csr = bitcast <8 x i16> %i.csq to <4 x float>
  %i.css = load i16, ptr %.214123293, align 2, !tbaa !27
  %i.cst = zext i16 %i.css to i32
  %i.csu = shl nuw i32 %i.cst, 16
  %i.csv = insertelement <4 x i32> poison, i32 %i.csu, i64 0
  %i.csw = bitcast <4 x i32> %i.csv to <4 x float>
  %i.csx = shufflevector <4 x float> %i.csw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crz, <4 x float> nofpclass(nan inf) %i.csx, <4 x float> nofpclass(nan inf) %.2026663291) ; 2 uses
  %i.csz = getelementptr inbounds [2 x i8], ptr %.214123293, i64 %i.cdj
  %i.cta = load i16, ptr %i.csz, align 2, !tbaa !27
  %i.ctb = zext i16 %i.cta to i32
  %i.ctc = shl nuw i32 %i.ctb, 16
  %i.ctd = insertelement <4 x i32> poison, i32 %i.ctc, i64 0
  %i.cte = bitcast <4 x i32> %i.ctd to <4 x float>
  %i.ctf = shufflevector <4 x float> %i.cte, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csf, <4 x float> nofpclass(nan inf) %i.ctf, <4 x float> nofpclass(nan inf) %.1926913290) ; 2 uses
  %i.cth = getelementptr inbounds [2 x i8], ptr %.214123293, i64 %i.cdl
  %i.cti = load i16, ptr %i.cth, align 2, !tbaa !27
  %i.ctj = zext i16 %i.cti to i32
  %i.ctk = shl nuw i32 %i.ctj, 16
  %i.ctl = insertelement <4 x i32> poison, i32 %i.ctk, i64 0
  %i.ctm = bitcast <4 x i32> %i.ctl to <4 x float>
  %i.ctn = shufflevector <4 x float> %i.ctm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cto = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csl, <4 x float> nofpclass(nan inf) %i.ctn, <4 x float> nofpclass(nan inf) %.1927143289) ; 2 uses
  %i.ctp = getelementptr inbounds [2 x i8], ptr %.214123293, i64 %i.cdn
  %i.ctq = load i16, ptr %i.ctp, align 2, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a

.preheader2850:                                   ; preds = %bb.aq
  br i1 %i.dtq, label %.lr.ph3493.preheader, label %.loopexit2849

.lr.ph3493.preheader:                             ; preds = %.preheader2850
  br i1 %i.duf, label %.lr.ph3493.epil.preheader, label %.lr.ph3493

.lr.ph3493:                                       ; preds = %.lr.ph3493.preheader, %.lr.ph3493
  %.012873491 = phi ptr [ %i.dvu, %.lr.ph3493 ], [ %gep3521, %.lr.ph3493.preheader ] ; 2 uses
  %.1713823490 = phi ptr [ %i.dvv, %.lr.ph3493 ], [ %.1613813509, %.lr.ph3493.preheader ] ; 5 uses
  %.127863489 = phi <4 x float> [ %i.dvs, %.lr.ph3493 ], [ %.027853508, %.lr.ph3493.preheader ]
  %.127913488 = phi <4 x float> [ %i.dvt, %.lr.ph3493 ], [ %.027903507, %.lr.ph3493.preheader ]
  %niter4781 = phi i32 [ %niter4781.next.1, %.lr.ph3493 ], [ 0, %.lr.ph3493.preheader ]
  %i.dui = load i64, ptr %.012873491, align 1, !tbaa !24
  %i.duj = insertelement <2 x i64> poison, i64 %i.dui, i64 0
  %i.duk = bitcast <2 x i64> %i.duj to <8 x i16>
  %i.dul = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.duk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dum = bitcast <8 x i16> %i.dul to <4 x float> ; 2 uses
  %i.dun = load i64, ptr %.1713823490, align 1, !tbaa !24
  %i.duo = insertelement <2 x i64> poison, i64 %i.dun, i64 0
  %i.dup = bitcast <2 x i64> %i.duo to <8 x i16>
  %i.duq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dup, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dur = bitcast <8 x i16> %i.duq to <4 x float>
  %i.dus = getelementptr inbounds nuw i8, ptr %.1713823490, i64 8
  %i.dut = load i64, ptr %i.dus, align 1, !tbaa !24
  %i.duu = insertelement <2 x i64> poison, i64 %i.dut, i64 0
  %i.duv = bitcast <2 x i64> %i.duu to <8 x i16>
  %i.duw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.duv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dux = bitcast <8 x i16> %i.duw to <4 x float>
  %i.duy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dum, <4 x float> nofpclass(nan inf) %i.dur, <4 x float> nofpclass(nan inf) %.127863489)
  %i.duz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dum, <4 x float> nofpclass(nan inf) %i.dux, <4 x float> nofpclass(nan inf) %.127913488)
  %i.dva = getelementptr inbounds [2 x i8], ptr %.012873491, i64 %i.dtt ; 2 uses
  %i.dvb = getelementptr inbounds nuw i8, ptr %.1713823490, i64 16
  %i.dvc = load i64, ptr %i.dva, align 1, !tbaa !24
  %i.dvd = insertelement <2 x i64> poison, i64 %i.dvc, i64 0
  %i.dve = bitcast <2 x i64> %i.dvd to <8 x i16>
  %i.dvf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dve, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvg = bitcast <8 x i16> %i.dvf to <4 x float> ; 2 uses
  %i.dvh = load i64, ptr %i.dvb, align 1, !tbaa !24
  %i.dvi = insertelement <2 x i64> poison, i64 %i.dvh, i64 0
  %i.dvj = bitcast <2 x i64> %i.dvi to <8 x i16>
  %i.dvk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvl = bitcast <8 x i16> %i.dvk to <4 x float>
  %i.dvm = getelementptr inbounds nuw i8, ptr %.1713823490, i64 24
  %i.dvn = load i64, ptr %i.dvm, align 1, !tbaa !24
  %i.dvo = insertelement <2 x i64> poison, i64 %i.dvn, i64 0
  %i.dvp = bitcast <2 x i64> %i.dvo to <8 x i16>
  %i.dvq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvr = bitcast <8 x i16> %i.dvq to <4 x float>
  %i.dvs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvg, <4 x float> nofpclass(nan inf) %i.dvl, <4 x float> nofpclass(nan inf) %i.duy) ; 3 uses
  %i.dvt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvg, <4 x float> nofpclass(nan inf) %i.dvr, <4 x float> nofpclass(nan inf) %i.duz) ; 3 uses
  %i.dvu = getelementptr inbounds [2 x i8], ptr %i.dva, i64 %i.dtt ; 2 uses
  %i.dvv = getelementptr inbounds nuw i8, ptr %.1713823490, i64 32 ; 2 uses
  %niter4781.next.1 = add nuw nsw i32 %niter4781, 2 ; 2 uses
  %niter4781.ncmp.1 = icmp eq i32 %niter4781.next.1, %unroll_iter4780
  br i1 %niter4781.ncmp.1, label %.loopexit2851.loopexit.unr-lcssa, label %.lr.ph3493, !llvm.loop !87

.loopexit2851.loopexit.unr-lcssa:                 ; preds = %.lr.ph3493
  br i1 %lcmp.mod4776.not, label %.loopexit2851.loopexit, label %.lr.ph3493.epil.preheader

.lr.ph3493.epil.preheader:                        ; preds = %.loopexit2851.loopexit.unr-lcssa, %.lr.ph3493.preheader
  %.012873491.epil.init = phi ptr [ %gep3521, %.lr.ph3493.preheader ], [ %i.dvu, %.loopexit2851.loopexit.unr-lcssa ]
  %.1713823490.epil.init = phi ptr [ %.1613813509, %.lr.ph3493.preheader ], [ %i.dvv, %.loopexit2851.loopexit.unr-lcssa ] ; 2 uses
  %.127863489.epil.init = phi <4 x float> [ %.027853508, %.lr.ph3493.preheader ], [ %i.dvs, %.loopexit2851.loopexit.unr-lcssa ]
  %.127913488.epil.init = phi <4 x float> [ %.027903507, %.lr.ph3493.preheader ], [ %i.dvt, %.loopexit2851.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4779)
  %i.dvw = load i64, ptr %.012873491.epil.init, align 1, !tbaa !24
  %i.dvx = insertelement <2 x i64> poison, i64 %i.dvw, i64 0
  %i.dvy = bitcast <2 x i64> %i.dvx to <8 x i16>
  %i.dvz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwa = bitcast <8 x i16> %i.dvz to <4 x float> ; 2 uses
  %i.dwb = load i64, ptr %.1713823490.epil.init, align 1, !tbaa !24
  %i.dwc = insertelement <2 x i64> poison, i64 %i.dwb, i64 0
  %i.dwd = bitcast <2 x i64> %i.dwc to <8 x i16>
  %i.dwe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dwd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwf = bitcast <8 x i16> %i.dwe to <4 x float>
  %i.dwg = getelementptr inbounds nuw i8, ptr %.1713823490.epil.init, i64 8
  %i.dwh = load i64, ptr %i.dwg, align 1, !tbaa !24
  %i.dwi = insertelement <2 x i64> poison, i64 %i.dwh, i64 0
  %i.dwj = bitcast <2 x i64> %i.dwi to <8 x i16>
  %i.dwk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dwj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwl = bitcast <8 x i16> %i.dwk to <4 x float>
  %i.dwm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwa, <4 x float> nofpclass(nan inf) %i.dwf, <4 x float> nofpclass(nan inf) %.127863489.epil.init)
  %i.dwn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwa, <4 x float> nofpclass(nan inf) %i.dwl, <4 x float> nofpclass(nan inf) %.127913488.epil.init)
  br label %.loopexit2851.loopexit

.loopexit2851.loopexit:                           ; preds = %.loopexit2851.loopexit.unr-lcssa, %.lr.ph3493.epil.preheader
  %.lcssa4659 = phi <4 x float> [ %i.dvs, %.loopexit2851.loopexit.unr-lcssa ], [ %i.dwm, %.lr.ph3493.epil.preheader ]
  %.lcssa4658 = phi <4 x float> [ %i.dvt, %.loopexit2851.loopexit.unr-lcssa ], [ %i.dwn, %.lr.ph3493.epil.preheader ]
  %scevgep4121 = getelementptr i8, ptr %.1613813509, i64 16
  %scevgep4122 = getelementptr i8, ptr %scevgep4121, i64 %i.due
  br label %.loopexit2849

.loopexit2851:                                    ; preds = %bb.aq
  br i1 %brmerge3780, label %.loopexit2849, label %.lr.ph3503

.lr.ph3503:                                       ; preds = %.loopexit2851, %.lr.ph3503
  %.012853502 = phi i32 [ %i.dxu, %.lr.ph3503 ], [ 0, %.loopexit2851 ]
  %.212893501 = phi ptr [ %i.dxs, %.lr.ph3503 ], [ %gep3521, %.loopexit2851 ] ; 5 uses
  %.1913843500 = phi ptr [ %i.dxt, %.lr.ph3503 ], [ %.1613813509, %.loopexit2851 ] ; 3 uses
  %.327883499 = phi <4 x float> [ %i.dxq, %.lr.ph3503 ], [ %.027853508, %.loopexit2851 ]
  %.327933498 = phi <4 x float> [ %i.dxr, %.lr.ph3503 ], [ %.027903507, %.loopexit2851 ]
  %i.dwo = getelementptr inbounds [2 x i8], ptr %.212893501, i64 %i.dtx
  %i.dwp = load i16, ptr %i.dwo, align 2, !tbaa !27
  %i.dwq = getelementptr inbounds [2 x i8], ptr %.212893501, i64 %i.dtz
  %i.dwr = load i16, ptr %i.dwq, align 2, !tbaa !27
  %i.dws = getelementptr inbounds [2 x i8], ptr %.212893501, i64 %i.dua
  %i.dwt = load i16, ptr %i.dws, align 2, !tbaa !27
  %i.dwu = load i16, ptr %.212893501, align 2, !tbaa !27
  %i.dwv = zext i16 %i.dwp to i32
  %i.dww = zext i16 %i.dwr to i32
  %i.dwx = zext i16 %i.dwt to i32
  %i.dwy = zext i16 %i.dwu to i32
  %i.dwz = insertelement <4 x i32> poison, i32 %i.dwy, i64 0
  %i.dxa = insertelement <4 x i32> %i.dwz, i32 %i.dwx, i64 1
  %i.dxb = insertelement <4 x i32> %i.dxa, i32 %i.dww, i64 2
  %i.dxc = insertelement <4 x i32> %i.dxb, i32 %i.dwv, i64 3
  %i.dxd = shl nuw <4 x i32> %i.dxc, splat (i32 16)
  %i.dxe = bitcast <4 x i32> %i.dxd to <4 x float> ; 2 uses
  %i.dxf = load i64, ptr %.1913843500, align 1, !tbaa !24
  %i.dxg = insertelement <2 x i64> poison, i64 %i.dxf, i64 0
  %i.dxh = bitcast <2 x i64> %i.dxg to <8 x i16>
  %i.dxi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxj = bitcast <8 x i16> %i.dxi to <4 x float>
  %i.dxk = getelementptr inbounds nuw i8, ptr %.1913843500, i64 8
  %i.dxl = load i64, ptr %i.dxk, align 1, !tbaa !24
  %i.dxm = insertelement <2 x i64> poison, i64 %i.dxl, i64 0
  %i.dxn = bitcast <2 x i64> %i.dxm to <8 x i16>
  %i.dxo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxp = bitcast <8 x i16> %i.dxo to <4 x float>
  %i.dxq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxe, <4 x float> nofpclass(nan inf) %i.dxj, <4 x float> nofpclass(nan inf) %.327883499) ; 2 uses
  %i.dxr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxe, <4 x float> nofpclass(nan inf) %i.dxp, <4 x float> nofpclass(nan inf) %.327933498) ; 2 uses
  %i.dxs = getelementptr inbounds [2 x i8], ptr %.212893501, i64 %i.dub
  %i.dxt = getelementptr inbounds nuw i8, ptr %.1913843500, i64 16
  %i.dxu = add nuw nsw i32 %.012853502, 1         ; 2 uses
  %exitcond4126.not = icmp eq i32 %i.dxu, %i.dtp
  br i1 %exitcond4126.not, label %.loopexit2849.loopexit, label %.lr.ph3503, !llvm.loop !88

.loopexit2849.loopexit:                           ; preds = %.lr.ph3503
  %scevgep4124 = getelementptr i8, ptr %.1613813509, i64 16
  %scevgep4125 = getelementptr i8, ptr %scevgep4124, i64 %i.due
  br label %.loopexit2849

.loopexit2849:                                    ; preds = %.preheader2850, %.loopexit2851.loopexit, %.loopexit2849.loopexit, %.loopexit2851
  %.42794 = phi nsz <4 x float> [ %.027903507, %.loopexit2851 ], [ %i.dxr, %.loopexit2849.loopexit ], [ %.lcssa4658, %.loopexit2851.loopexit ], [ %.027903507, %.preheader2850 ] ; 2 uses
  %.42789 = phi nsz <4 x float> [ %.027853508, %.loopexit2851 ], [ %i.dxq, %.loopexit2849.loopexit ], [ %.lcssa4659, %.loopexit2851.loopexit ], [ %.027853508, %.preheader2850 ] ; 2 uses
  %.201385 = phi ptr [ %.1613813509, %.loopexit2851 ], [ %scevgep4125, %.loopexit2849.loopexit ], [ %scevgep4122, %.loopexit2851.loopexit ], [ %.1613813509, %.preheader2850 ] ; 2 uses
  %i.dxv = add nuw nsw i32 %.213623510, 4         ; 3 uses
  %i.dxw = or disjoint i32 %i.dxv, 3
  %i.dxx = icmp slt i32 %i.dxw, %i.avt
  br i1 %i.dxx, label %bb.aq, label %._crit_edge3513, !llvm.loop !89

._crit_edge3513:                                  ; preds = %.loopexit2849, %._crit_edge3479
  %.02790.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3479 ], [ %.42794, %.loopexit2849 ] ; 4 uses
  %.02785.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3479 ], [ %.42789, %.loopexit2849 ] ; 4 uses
  %.161381.lcssa = phi ptr [ %.91374.lcssa, %._crit_edge3479 ], [ %.201385, %.loopexit2849 ] ; 3 uses
  %.21362.lcssa = phi i32 [ %.11361.lcssa, %._crit_edge3479 ], [ %i.dxv, %.loopexit2849 ] ; 5 uses
  %i.dxy = shufflevector <4 x float> %i.dnv, <4 x float> %i.dob, <2 x i32> <i32 3, i32 7>
  %i.dxz = shufflevector <4 x float> %i.dnv, <4 x float> %i.dob, <2 x i32> <i32 1, i32 5>
  %i.dya = fadd fast <2 x float> %i.dxy, %i.dxz
  %i.dyb = fadd fast <2 x float> %i.dya, %i.det
  %i.dyc = shufflevector <4 x float> %i.dnv, <4 x float> %i.dob, <2 x i32> <i32 2, i32 6>
  %i.dyd = shufflevector <4 x float> %i.dnv, <4 x float> %i.dob, <2 x i32> <i32 0, i32 4>
  %i.dye = fadd fast <2 x float> %i.dyc, %i.dyd
  %i.dyf = fadd fast <2 x float> %i.dyb, %i.dye
  %i.dyg = shufflevector <4 x float> %i.dtd, <4 x float> %i.dtg, <2 x i32> <i32 3, i32 7>
  %i.dyh = shufflevector <4 x float> %i.dtd, <4 x float> %i.dtg, <2 x i32> <i32 1, i32 5>
  %i.dyi = fadd fast <2 x float> %i.dyg, %i.dyh
  %i.dyj = fadd fast <2 x float> %i.dyf, %i.dyi
  %i.dyk = shufflevector <4 x float> %i.dtd, <4 x float> %i.dtg, <2 x i32> <i32 2, i32 6>
  %i.dyl = shufflevector <4 x float> %i.dtd, <4 x float> %i.dtg, <2 x i32> <i32 0, i32 4>
  %i.dym = fadd fast <2 x float> %i.dyk, %i.dyl
  %i.dyn = fadd fast <2 x float> %i.dyj, %i.dym
  %i.dyo = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 3, i32 7>
  %i.dyp = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 1, i32 5>
  %i.dyq = fadd fast <2 x float> %i.dyo, %i.dyp
  %i.dyr = fadd fast <2 x float> %i.dyn, %i.dyq
  %i.dys = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 2, i32 6>
  %i.dyt = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 0, i32 4>
  %i.dyu = fadd fast <2 x float> %i.dys, %i.dyt
  %i.dyv = fadd fast <2 x float> %i.dyr, %i.dyu   ; 3 uses
  %i.dyw = or disjoint i32 %.21362.lcssa, 1
  %i.dyx = icmp slt i32 %i.dyw, %i.avt
  br i1 %i.dyx, label %.lr.ph3538, label %.preheader2863

.lr.ph3538:                                       ; preds = %._crit_edge3513
  %i.dyy = load ptr, ptr %0, align 8, !tbaa !18
  %i.dyz = load i32, ptr %i.o, align 4, !tbaa !17
  %i.dza = sext i32 %i.dyz to i64
  %i.dzb = load i64, ptr %i.awd, align 8, !tbaa !21
  %factor.op.mul3543 = mul i64 %i.dzb, %i.dza
  %i.dzc = mul nsw i64 %indvars.iv4139, %i.deq
  %invariant.gep3545 = getelementptr [2 x i8], ptr %i.dyy, i64 %i.dzc
  %i.dzd = load i32, ptr %i.e, align 4
  %i.dze = sext i32 %i.dzd to i64
  %i.dzf = load i32, ptr %i.b, align 4
  %i.dzg = sext i32 %i.dzf to i64
  br i1 %i.del, label %.lr.ph3528.us.preheader, label %.lr.ph3538.split.preheader

.lr.ph3538.split.preheader:                       ; preds = %.lr.ph3538
  %i.dzh = add i32 %.21362.lcssa, 2
  %i.dzi = sub i32 %i.awp, %.21362.lcssa
  %i.dzj = and i32 %i.dzi, -2
  %i.dzk = add i32 %i.dzh, %i.dzj
  br label %.preheader2863

.lr.ph3528.us.preheader:                          ; preds = %.lr.ph3538
  %i.dzl = zext i32 %.21362.lcssa to i64
  br label %.lr.ph3528.us

.lr.ph3528.us:                                    ; preds = %.lr.ph3528.us.preheader, %._crit_edge3529.us
  %indvars.iv4130 = phi i64 [ %i.dzl, %.lr.ph3528.us.preheader ], [ %indvars.iv.next4131, %._crit_edge3529.us ] ; 2 uses
  %.2113863535.us = phi ptr [ %.161381.lcssa, %.lr.ph3528.us.preheader ], [ %scevgep4128, %._crit_edge3529.us ] ; 2 uses
  %i.dzm = phi <2 x float> [ %i.dyv, %.lr.ph3528.us.preheader ], [ %i.eal, %._crit_edge3529.us ]
  %.reass3544.us = mul i64 %factor.op.mul3543, %indvars.iv4130
  %gep3546.us = getelementptr i8, ptr %invariant.gep3545, i64 %.reass3544.us
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph3528.us, %bb.ar
  %.012833526.us = phi i32 [ 0, %.lr.ph3528.us ], [ %i.eao, %bb.ar ]
  %.012843525.us = phi ptr [ %gep3546.us, %.lr.ph3528.us ], [ %i.eam, %bb.ar ] ; 3 uses
  %.2213873524.us = phi ptr [ %.2113863535.us, %.lr.ph3528.us ], [ %i.ean, %bb.ar ] ; 3 uses
  %i.dzn = phi <2 x float> [ %i.dzm, %.lr.ph3528.us ], [ %i.eal, %bb.ar ]
  %i.dzo = load i16, ptr %.012843525.us, align 2, !tbaa !27
  %i.dzp = getelementptr inbounds [2 x i8], ptr %.012843525.us, i64 %i.dze
  %i.dzq = load i16, ptr %i.dzp, align 2, !tbaa !27
  %i.dzr = getelementptr inbounds nuw i8, ptr %.2213873524.us, i64 4
  %i.dzs = load <2 x i16>, ptr %.2213873524.us, align 2, !tbaa !27
  %i.dzt = zext <2 x i16> %i.dzs to <2 x i32>
  %i.dzu = shl nuw <2 x i32> %i.dzt, splat (i32 16)
  %i.dzv = bitcast <2 x i32> %i.dzu to <2 x float>
  %i.dzw = zext i16 %i.dzo to i32
  %i.dzx = zext i16 %i.dzq to i32
  %i.dzy = insertelement <2 x i32> poison, i32 %i.dzx, i64 0
  %i.dzz = insertelement <2 x i32> %i.dzy, i32 %i.dzw, i64 1
  %i.eaa = shl nuw <2 x i32> %i.dzz, splat (i32 16)
  %i.eab = bitcast <2 x i32> %i.eaa to <2 x float> ; 2 uses
  %i.eac = shufflevector <2 x float> %i.eab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ead = fmul fast <2 x float> %i.eac, %i.dzv
  %i.eae = fadd fast <2 x float> %i.dzn, %i.ead
  %i.eaf = load <2 x i16>, ptr %i.dzr, align 2, !tbaa !27
  %i.eag = zext <2 x i16> %i.eaf to <2 x i32>
  %i.eah = shl nuw <2 x i32> %i.eag, splat (i32 16)
  %i.eai = bitcast <2 x i32> %i.eah to <2 x float>
  %i.eaj = shufflevector <2 x float> %i.eab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eak = fmul fast <2 x float> %i.eaj, %i.eai
  %i.eal = fadd fast <2 x float> %i.eak, %i.eae   ; 3 uses
  %i.eam = getelementptr inbounds [2 x i8], ptr %.012843525.us, i64 %i.dzg
  %i.ean = getelementptr inbounds nuw i8, ptr %.2213873524.us, i64 8
  %i.eao = add nuw nsw i32 %.012833526.us, 1      ; 2 uses
  %exitcond4129.not = icmp eq i32 %i.eao, %i.dek
  br i1 %exitcond4129.not, label %._crit_edge3529.us, label %bb.ar, !llvm.loop !90

._crit_edge3529.us:                               ; preds = %bb.ar
  %scevgep4127 = getelementptr i8, ptr %.2113863535.us, i64 8
  %scevgep4128 = getelementptr i8, ptr %scevgep4127, i64 %i.deo ; 2 uses
  %indvars.iv.next4131 = add nuw nsw i64 %indvars.iv4130, 2 ; 3 uses
  %i.eap = trunc i64 %indvars.iv.next4131 to i32
  %i.eaq = or i32 %i.eap, 1
  %i.ear = icmp slt i32 %i.eaq, %i.avt
  br i1 %i.ear, label %.lr.ph3528.us, label %.preheader2863.loopexit, !llvm.loop !91

.preheader2863.loopexit:                          ; preds = %._crit_edge3529.us
  %i.eas = trunc nuw i64 %indvars.iv.next4131 to i32
  br label %.preheader2863

.preheader2863:                                   ; preds = %.lr.ph3538.split.preheader, %.preheader2863.loopexit, %._crit_edge3513
  %.211386.lcssa = phi ptr [ %.161381.lcssa, %._crit_edge3513 ], [ %scevgep4128, %.preheader2863.loopexit ], [ %.161381.lcssa, %.lr.ph3538.split.preheader ]
  %.31363.lcssa = phi i32 [ %.21362.lcssa, %._crit_edge3513 ], [ %i.eas, %.preheader2863.loopexit ], [ %i.dzk, %.lr.ph3538.split.preheader ] ; 2 uses
  %i.eat = phi <2 x float> [ %i.dyv, %._crit_edge3513 ], [ %i.eal, %.preheader2863.loopexit ], [ %i.dyv, %.lr.ph3538.split.preheader ] ; 3 uses
  %i.eau = icmp slt i32 %.31363.lcssa, %i.avt
  br i1 %i.eau, label %.lr.ph3566, label %._crit_edge3567

.lr.ph3566:                                       ; preds = %.preheader2863
  %i.eav = load ptr, ptr %0, align 8, !tbaa !18
  %i.eaw = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eax = sext i32 %i.eaw to i64
  %i.eay = load i64, ptr %i.awd, align 8, !tbaa !21
  %factor.op.mul3570 = mul i64 %i.eay, %i.eax
  %i.eaz = mul nsw i64 %indvars.iv4139, %i.deq
  %invariant.gep3572 = getelementptr [2 x i8], ptr %i.eav, i64 %i.eaz
  %i.eba = load i32, ptr %i.b, align 4
  %i.ebb = sext i32 %i.eba to i64                 ; 2 uses
  br i1 %i.del, label %.lr.ph3557.us.preheader, label %._crit_edge3567

.lr.ph3557.us.preheader:                          ; preds = %.lr.ph3566
  %i.ebc = zext i32 %.31363.lcssa to i64
  br label %.lr.ph3557.us

.lr.ph3557.us:                                    ; preds = %.lr.ph3557.us.preheader, %._crit_edge3558.us
  %indvars.iv4136 = phi i64 [ %i.ebc, %.lr.ph3557.us.preheader ], [ %indvars.iv.next4137, %._crit_edge3558.us ] ; 2 uses
  %.2313883564.us = phi ptr [ %.211386.lcssa, %.lr.ph3557.us.preheader ], [ %scevgep4134, %._crit_edge3558.us ] ; 3 uses
  %i.ebd = phi <2 x float> [ %i.eat, %.lr.ph3557.us.preheader ], [ %.lcssa4662, %._crit_edge3558.us ] ; 2 uses
  %.reass3571.us = mul i64 %factor.op.mul3570, %indvars.iv4136
  %gep3573.us = getelementptr i8, ptr %invariant.gep3572, i64 %.reass3571.us ; 2 uses
  br i1 %i.der, label %.epil.preheader4782, label %.lr.ph3557.us.new

.lr.ph3557.us.new:                                ; preds = %.lr.ph3557.us, %.lr.ph3557.us.new
  %.012823554.us = phi ptr [ %i.ecf, %.lr.ph3557.us.new ], [ %gep3573.us, %.lr.ph3557.us ] ; 2 uses
  %.2413893553.us = phi ptr [ %i.ecg, %.lr.ph3557.us.new ], [ %.2313883564.us, %.lr.ph3557.us ] ; 3 uses
  %i.ebe = phi <2 x float> [ %i.ece, %.lr.ph3557.us.new ], [ %i.ebd, %.lr.ph3557.us ]
  %niter4788 = phi i32 [ %niter4788.next.1, %.lr.ph3557.us.new ], [ 0, %.lr.ph3557.us ]
  %i.ebf = load i16, ptr %.012823554.us, align 2, !tbaa !27
  %i.ebg = zext i16 %i.ebf to i32
  %i.ebh = shl nuw i32 %i.ebg, 16
  %i.ebi = load <2 x i16>, ptr %.2413893553.us, align 2, !tbaa !27
  %i.ebj = zext <2 x i16> %i.ebi to <2 x i32>
  %i.ebk = shl nuw <2 x i32> %i.ebj, splat (i32 16)
  %i.ebl = bitcast <2 x i32> %i.ebk to <2 x float>
  %i.ebm = insertelement <2 x i32> poison, i32 %i.ebh, i64 0
  %i.ebn = bitcast <2 x i32> %i.ebm to <2 x float>
  %i.ebo = shufflevector <2 x float> %i.ebn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ebp = fmul fast <2 x float> %i.ebo, %i.ebl
  %i.ebq = fadd fast <2 x float> %i.ebp, %i.ebe
  %i.ebr = getelementptr inbounds [2 x i8], ptr %.012823554.us, i64 %i.ebb ; 2 uses
  %i.ebs = getelementptr inbounds nuw i8, ptr %.2413893553.us, i64 4
  %i.ebt = load i16, ptr %i.ebr, align 2, !tbaa !27
  %i.ebu = zext i16 %i.ebt to i32
  %i.ebv = shl nuw i32 %i.ebu, 16
  %i.ebw = load <2 x i16>, ptr %i.ebs, align 2, !tbaa !27
  %i.ebx = zext <2 x i16> %i.ebw to <2 x i32>
  %i.eby = shl nuw <2 x i32> %i.ebx, splat (i32 16)
  %i.ebz = bitcast <2 x i32> %i.eby to <2 x float>
  %i.eca = insertelement <2 x i32> poison, i32 %i.ebv, i64 0
  %i.ecb = bitcast <2 x i32> %i.eca to <2 x float>
  %i.ecc = shufflevector <2 x float> %i.ecb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ecd = fmul fast <2 x float> %i.ecc, %i.ebz
  %i.ece = fadd fast <2 x float> %i.ecd, %i.ebq   ; 3 uses
  %i.ecf = getelementptr inbounds [2 x i8], ptr %i.ebr, i64 %i.ebb ; 2 uses
  %i.ecg = getelementptr inbounds nuw i8, ptr %.2413893553.us, i64 8 ; 2 uses
  %niter4788.next.1 = add nuw nsw i32 %niter4788, 2 ; 2 uses
  %niter4788.ncmp.1 = icmp eq i32 %niter4788.next.1, %unroll_iter4787
  br i1 %niter4788.ncmp.1, label %._crit_edge3558.us.unr-lcssa, label %.lr.ph3557.us.new, !llvm.loop !92

._crit_edge3558.us.unr-lcssa:                     ; preds = %.lr.ph3557.us.new
  br i1 %lcmp.mod4784.not, label %._crit_edge3558.us, label %.epil.preheader4782

.epil.preheader4782:                              ; preds = %._crit_edge3558.us.unr-lcssa, %.lr.ph3557.us
  %.012823554.us.epil.init = phi ptr [ %gep3573.us, %.lr.ph3557.us ], [ %i.ecf, %._crit_edge3558.us.unr-lcssa ]
  %.2413893553.us.epil.init = phi ptr [ %.2313883564.us, %.lr.ph3557.us ], [ %i.ecg, %._crit_edge3558.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.ebd, %.lr.ph3557.us ], [ %i.ece, %._crit_edge3558.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4786)
  %i.ech = load i16, ptr %.012823554.us.epil.init, align 2, !tbaa !27
  %i.eci = zext i16 %i.ech to i32
  %i.ecj = shl nuw i32 %i.eci, 16
  %i.eck = load <2 x i16>, ptr %.2413893553.us.epil.init, align 2, !tbaa !27
  %i.ecl = zext <2 x i16> %i.eck to <2 x i32>
  %i.ecm = shl nuw <2 x i32> %i.ecl, splat (i32 16)
  %i.ecn = bitcast <2 x i32> %i.ecm to <2 x float>
  %i.eco = insertelement <2 x i32> poison, i32 %i.ecj, i64 0
  %i.ecp = bitcast <2 x i32> %i.eco to <2 x float>
  %i.ecq = shufflevector <2 x float> %i.ecp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ecr = fmul fast <2 x float> %i.ecq, %i.ecn
  %i.ecs = fadd fast <2 x float> %i.ecr, %.epil.init
  br label %._crit_edge3558.us

._crit_edge3558.us:                               ; preds = %._crit_edge3558.us.unr-lcssa, %.epil.preheader4782
  %.lcssa4662 = phi <2 x float> [ %i.ece, %._crit_edge3558.us.unr-lcssa ], [ %i.ecs, %.epil.preheader4782 ] ; 2 uses
  %scevgep4133 = getelementptr i8, ptr %.2313883564.us, i64 4
  %scevgep4134 = getelementptr i8, ptr %scevgep4133, i64 %i.dep
  %indvars.iv.next4137 = add nuw nsw i64 %indvars.iv4136, 1 ; 2 uses
  %i.ect = trunc nuw i64 %indvars.iv.next4137 to i32
  %i.ecu = icmp sgt i32 %i.avt, %i.ect
  br i1 %i.ecu, label %.lr.ph3557.us, label %._crit_edge3567, !llvm.loop !93

._crit_edge3567:                                  ; preds = %._crit_edge3558.us, %.lr.ph3566, %.preheader2863
  %i.ecv = phi <2 x float> [ %i.eat, %.preheader2863 ], [ %i.eat, %.lr.ph3566 ], [ %.lcssa4662, %._crit_edge3558.us ] ; 12 uses
  switch i32 %i.awi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2814
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2817
    i32 6, label %bb.as
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808: ; preds = %._crit_edge3567
  %i.ecw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ecv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811: ; preds = %._crit_edge3567
  %i.ecx = load ptr, ptr %8, align 8, !tbaa !18
  %i.ecy = load float, ptr %i.ecx, align 4, !tbaa !29
  %i.ecz = fcmp fast ogt <2 x float> %i.ecv, zeroinitializer
  %i.eda = insertelement <2 x float> poison, float %i.ecy, i64 0
  %i.edb = shufflevector <2 x float> %i.eda, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edc = select <2 x i1> %i.ecz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.edb
  %i.edd = fmul fast <2 x float> %i.edc, %i.ecv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805: ; preds = %._crit_edge3567
  %i.ede = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.edf = load float, ptr %i.ede, align 4, !tbaa !29 ; 2 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %i.ede, i64 4
  %i.edh = load float, ptr %i.edg, align 4, !tbaa !29 ; 3 uses
  %i.edi = extractelement <2 x float> %i.ecv, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edi, float %i.edf) ; 2 uses
  %i.edj = fcmp fast ogt float %spec.select, %i.edh
  %.125462807 = select i1 %i.edj, float %i.edh, float %spec.select
  %i.edk = extractelement <2 x float> %i.ecv, i64 1
  %.02547 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edk, float %i.edf)
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a

._crit_edge3674:                                  ; preds = %.loopexit2837, %._crit_edge3636
  %.02716.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge3636 ], [ %.62722, %.loopexit2837 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.01266.lcssa, %._crit_edge3636 ], [ %.15, %.loopexit2837 ] ; 2 uses
  %.11262.lcssa = phi i32 [ %.01261.lcssa, %._crit_edge3636 ], [ %i.euu, %.loopexit2837 ] ; 3 uses
  %i.eux = shufflevector <8 x float> %.02716.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.euy = shufflevector <8 x float> %.02716.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.euz = fadd fast <4 x float> %i.eux, %i.euy   ; 2 uses
  %i.eva = or disjoint i32 %.11262.lcssa, 3
  %i.evb = icmp slt i32 %i.eva, %i.n
  br i1 %i.evb, label %.lr.ph3701, label %._crit_edge3702

.lr.ph3701:                                       ; preds = %._crit_edge3674
  %i.evc = load ptr, ptr %0, align 8, !tbaa !18
  %i.evd = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eve = sext i32 %i.evd to i64
  %i.evf = load i64, ptr %i.dcv, align 8, !tbaa !21
  %factor.op.mul3706 = mul i64 %i.evf, %i.eve
  %i.evg = trunc nuw nsw i64 %indvars.iv4188 to i32
  %.reass3764 = mul i32 %factor.op.mul3759, %i.evg
  %i.evh = sext i32 %.reass3764 to i64
  %invariant.gep3708 = getelementptr [2 x i8], ptr %i.evc, i64 %i.evh
  %i.evi = load i32, ptr %i.a, align 4            ; 6 uses
  %i.evj = icmp slt i32 %i.evi, 1                 ; 2 uses
  %i.evk = load i32, ptr %i.b, align 4            ; 2 uses
  %i.evl = shl nsw i32 %i.evk, 2
  %i.evm = sext i32 %i.evl to i64                 ; 2 uses
  %i.evn = load i32, ptr %i.e, align 4            ; 3 uses
  %i.evo = mul nsw i32 %i.evn, 3
  %i.evp = sext i32 %i.evo to i64
  %i.evq = shl nsw i32 %i.evn, 1
  %i.evr = sext i32 %i.evq to i64
  %i.evs = sext i32 %i.evn to i64
  %i.evt = sext i32 %i.evk to i64
  %i.evu = add i32 %i.evi, -1                     ; 2 uses
  %i.evv = zext i32 %i.evu to i64
  %i.evw = shl nuw nsw i64 %i.evv, 3              ; 2 uses
  %brmerge3795 = select i1 %i.ddb, i1 true, i1 %i.evj
  %brmerge3798 = select i1 %i.dcz, i1 true, i1 %i.evj
  %xtraiter4816 = and i32 %i.evi, 1
  %i.evx = icmp eq i32 %i.evu, 0
  %unroll_iter4821 = and i32 %i.evi, 2147483646
  %lcmp.mod4818.not = icmp eq i32 %xtraiter4816, 0
  %lcmp.mod4820 = trunc i32 %i.evi to i1
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph3701, %.loopexit
  %.212633699 = phi i32 [ %.11262.lcssa, %.lr.ph3701 ], [ %i.eyl, %.loopexit ] ; 2 uses
  %.163698 = phi ptr [ %.9.lcssa, %.lr.ph3701 ], [ %.20, %.loopexit ] ; 6 uses
  %.026413697 = phi <4 x float> [ zeroinitializer, %.lr.ph3701 ], [ %.42645, %.loopexit ] ; 4 uses
  %i.evy = sdiv i32 %.212633699, %i.k
  %i.evz = sext i32 %i.evy to i64
  %.reass3707 = mul i64 %factor.op.mul3706, %i.evz
  %gep3709 = getelementptr i8, ptr %invariant.gep3708, i64 %.reass3707 ; 3 uses
  br i1 %brmerge3795, label %.loopexit2835, label %.lr.ph3686.preheader

.lr.ph3686.preheader:                             ; preds = %bb.be
  br i1 %i.evx, label %.lr.ph3686.epil.preheader, label %.lr.ph3686

.lr.ph3686:                                       ; preds = %.lr.ph3686.preheader, %.lr.ph3686
  %.012393684 = phi ptr [ %i.ewy, %.lr.ph3686 ], [ %gep3709, %.lr.ph3686.preheader ] ; 2 uses
  %.173683 = phi ptr [ %i.ewz, %.lr.ph3686 ], [ %.163698, %.lr.ph3686.preheader ] ; 3 uses
  %.126423682 = phi <4 x float> [ %i.ewx, %.lr.ph3686 ], [ %.026413697, %.lr.ph3686.preheader ]
  %niter4822 = phi i32 [ %niter4822.next.1, %.lr.ph3686 ], [ 0, %.lr.ph3686.preheader ]
  %i.ewa = load i64, ptr %.012393684, align 1, !tbaa !24
  %i.ewb = insertelement <2 x i64> poison, i64 %i.ewa, i64 0
  %i.ewc = bitcast <2 x i64> %i.ewb to <8 x i16>
  %i.ewd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewe = bitcast <8 x i16> %i.ewd to <4 x float>
  %i.ewf = load i64, ptr %.173683, align 1, !tbaa !24
  %i.ewg = insertelement <2 x i64> poison, i64 %i.ewf, i64 0
  %i.ewh = bitcast <2 x i64> %i.ewg to <8 x i16>
  %i.ewi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewj = bitcast <8 x i16> %i.ewi to <4 x float>
  %i.ewk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewe, <4 x float> nofpclass(nan inf) %i.ewj, <4 x float> nofpclass(nan inf) %.126423682)
  %i.ewl = getelementptr inbounds [2 x i8], ptr %.012393684, i64 %i.evm ; 2 uses
  %i.ewm = getelementptr inbounds nuw i8, ptr %.173683, i64 8
  %i.ewn = load i64, ptr %i.ewl, align 1, !tbaa !24
  %i.ewo = insertelement <2 x i64> poison, i64 %i.ewn, i64 0
  %i.ewp = bitcast <2 x i64> %i.ewo to <8 x i16>
  %i.ewq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewr = bitcast <8 x i16> %i.ewq to <4 x float>
  %i.ews = load i64, ptr %i.ewm, align 1, !tbaa !24
  %i.ewt = insertelement <2 x i64> poison, i64 %i.ews, i64 0
  %i.ewu = bitcast <2 x i64> %i.ewt to <8 x i16>
  %i.ewv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eww = bitcast <8 x i16> %i.ewv to <4 x float>
  %i.ewx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewr, <4 x float> nofpclass(nan inf) %i.eww, <4 x float> nofpclass(nan inf) %i.ewk) ; 3 uses
  %i.ewy = getelementptr inbounds [2 x i8], ptr %i.ewl, i64 %i.evm ; 2 uses
  %i.ewz = getelementptr inbounds nuw i8, ptr %.173683, i64 16 ; 2 uses
  %niter4822.next.1 = add nuw nsw i32 %niter4822, 2 ; 2 uses
  %niter4822.ncmp.1 = icmp eq i32 %niter4822.next.1, %unroll_iter4821
  br i1 %niter4822.ncmp.1, label %.loopexit2835.thread.unr-lcssa, label %.lr.ph3686, !llvm.loop !107

.loopexit2835.thread.unr-lcssa:                   ; preds = %.lr.ph3686
  br i1 %lcmp.mod4818.not, label %.loopexit2835.thread, label %.lr.ph3686.epil.preheader

.lr.ph3686.epil.preheader:                        ; preds = %.loopexit2835.thread.unr-lcssa, %.lr.ph3686.preheader
  %.012393684.epil.init = phi ptr [ %gep3709, %.lr.ph3686.preheader ], [ %i.ewy, %.loopexit2835.thread.unr-lcssa ]
  %.173683.epil.init = phi ptr [ %.163698, %.lr.ph3686.preheader ], [ %i.ewz, %.loopexit2835.thread.unr-lcssa ]
  %.126423682.epil.init = phi <4 x float> [ %.026413697, %.lr.ph3686.preheader ], [ %i.ewx, %.loopexit2835.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4820)
  %i.exa = load i64, ptr %.012393684.epil.init, align 1, !tbaa !24
  %i.exb = insertelement <2 x i64> poison, i64 %i.exa, i64 0
  %i.exc = bitcast <2 x i64> %i.exb to <8 x i16>
  %i.exd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.exc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.exe = bitcast <8 x i16> %i.exd to <4 x float>
  %i.exf = load i64, ptr %.173683.epil.init, align 1, !tbaa !24
  %i.exg = insertelement <2 x i64> poison, i64 %i.exf, i64 0
  %i.exh = bitcast <2 x i64> %i.exg to <8 x i16>
  %i.exi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.exh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.exj = bitcast <8 x i16> %i.exi to <4 x float>
  %i.exk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exe, <4 x float> nofpclass(nan inf) %i.exj, <4 x float> nofpclass(nan inf) %.126423682.epil.init)
  br label %.loopexit2835.thread

.loopexit2835.thread:                             ; preds = %.loopexit2835.thread.unr-lcssa, %.lr.ph3686.epil.preheader
  %.lcssa4636 = phi <4 x float> [ %i.ewx, %.loopexit2835.thread.unr-lcssa ], [ %i.exk, %.lr.ph3686.epil.preheader ]
  %scevgep4170 = getelementptr i8, ptr %.163698, i64 8
  %scevgep4171 = getelementptr i8, ptr %scevgep4170, i64 %i.evw
  br label %.loopexit

.loopexit2835:                                    ; preds = %bb.be
  br i1 %brmerge3798, label %.loopexit, label %.lr.ph3694

.lr.ph3694:                                       ; preds = %.loopexit2835, %.lr.ph3694
  %.012373693 = phi i32 [ %i.eyk, %.lr.ph3694 ], [ 0, %.loopexit2835 ]
  %.23692 = phi ptr [ %i.eyi, %.lr.ph3694 ], [ %gep3709, %.loopexit2835 ] ; 5 uses
  %.193691 = phi ptr [ %i.eyj, %.lr.ph3694 ], [ %.163698, %.loopexit2835 ] ; 2 uses
  %.326443690 = phi <4 x float> [ %i.eyh, %.lr.ph3694 ], [ %.026413697, %.loopexit2835 ]
  %i.exl = getelementptr inbounds [2 x i8], ptr %.23692, i64 %i.evp
  %i.exm = load i16, ptr %i.exl, align 2, !tbaa !27
  %i.exn = getelementptr inbounds [2 x i8], ptr %.23692, i64 %i.evr
  %i.exo = load i16, ptr %i.exn, align 2, !tbaa !27
  %i.exp = getelementptr inbounds [2 x i8], ptr %.23692, i64 %i.evs
  %i.exq = load i16, ptr %i.exp, align 2, !tbaa !27
  %i.exr = load i16, ptr %.23692, align 2, !tbaa !27
  %i.exs = zext i16 %i.exm to i32
  %i.ext = zext i16 %i.exo to i32
  %i.exu = zext i16 %i.exq to i32
  %i.exv = zext i16 %i.exr to i32
  %i.exw = insertelement <4 x i32> poison, i32 %i.exv, i64 0
  %i.exx = insertelement <4 x i32> %i.exw, i32 %i.exu, i64 1
  %i.exy = insertelement <4 x i32> %i.exx, i32 %i.ext, i64 2
  %i.exz = insertelement <4 x i32> %i.exy, i32 %i.exs, i64 3
  %i.eya = shl nuw <4 x i32> %i.exz, splat (i32 16)
  %i.eyb = bitcast <4 x i32> %i.eya to <4 x float>
  %i.eyc = load i64, ptr %.193691, align 1, !tbaa !24
  %i.eyd = insertelement <2 x i64> poison, i64 %i.eyc, i64 0
  %i.eye = bitcast <2 x i64> %i.eyd to <8 x i16>
  %i.eyf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eye, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eyg = bitcast <8 x i16> %i.eyf to <4 x float>
  %i.eyh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyb, <4 x float> nofpclass(nan inf) %i.eyg, <4 x float> nofpclass(nan inf) %.326443690) ; 2 uses
  %i.eyi = getelementptr inbounds [2 x i8], ptr %.23692, i64 %i.evt
  %i.eyj = getelementptr inbounds nuw i8, ptr %.193691, i64 8
  %i.eyk = add nuw nsw i32 %.012373693, 1         ; 2 uses
  %exitcond4175.not = icmp eq i32 %i.eyk, %i.evi
  br i1 %exitcond4175.not, label %.loopexit.loopexit, label %.lr.ph3694, !llvm.loop !108

.loopexit.loopexit:                               ; preds = %.lr.ph3694
  %scevgep4173 = getelementptr i8, ptr %.163698, i64 8
  %scevgep4174 = getelementptr i8, ptr %scevgep4173, i64 %i.evw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2835.thread, %.loopexit.loopexit, %.loopexit2835
  %.42645 = phi nsz <4 x float> [ %.026413697, %.loopexit2835 ], [ %i.eyh, %.loopexit.loopexit ], [ %.lcssa4636, %.loopexit2835.thread ] ; 2 uses
  %.20 = phi ptr [ %.163698, %.loopexit2835 ], [ %scevgep4174, %.loopexit.loopexit ], [ %scevgep4171, %.loopexit2835.thread ] ; 2 uses
  %i.eyl = add nuw nsw i32 %.212633699, 4         ; 3 uses
  %i.eym = or disjoint i32 %i.eyl, 3
  %i.eyn = icmp slt i32 %i.eym, %i.n
  br i1 %i.eyn, label %bb.be, label %._crit_edge3702, !llvm.loop !109

._crit_edge3702:                                  ; preds = %.loopexit, %._crit_edge3674
  %.02641.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3674 ], [ %.42645, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge3674 ], [ %.20, %.loopexit ] ; 3 uses
  %.21263.lcssa = phi i32 [ %.11262.lcssa, %._crit_edge3674 ], [ %i.eyl, %.loopexit ] ; 5 uses
  %i.eyo = shufflevector <4 x float> %.02641.lcssa, <4 x float> %i.euz, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.eyp = shufflevector <4 x float> %.02641.lcssa, <4 x float> %i.euz, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.eyq = fadd fast <4 x float> %i.eyo, %i.eyp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.eox, <4 x float> %i.eyq)
  %op.rdx4627 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01273, <8 x float> %i.eoy)
  %op.rdx4628 = fadd fast float %op.rdx, %op.rdx4627 ; 3 uses
  %i.eyr = or disjoint i32 %.21263.lcssa, 1
  %i.eys = icmp slt i32 %i.eyr, %i.n
  br i1 %i.eys, label %.lr.ph3723, label %.preheader2847

.lr.ph3723:                                       ; preds = %._crit_edge3702
  %i.eyt = load ptr, ptr %0, align 8, !tbaa !18
  %i.eyu = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eyv = sext i32 %i.eyu to i64
  %i.eyw = load i64, ptr %i.dcv, align 8, !tbaa !21
  %factor.op.mul3727 = mul i64 %i.eyw, %i.eyv
  %i.eyx = mul nsw i64 %indvars.iv4188, %i.egg
  %invariant.gep3729 = getelementptr [2 x i8], ptr %i.eyt, i64 %i.eyx
  %i.eyy = load i32, ptr %i.e, align 4
  %i.eyz = sext i32 %i.eyy to i64
  %i.eza = load i32, ptr %i.b, align 4
  %i.ezb = sext i32 %i.eza to i64
  br i1 %i.egb, label %.lr.ph3715.us.preheader, label %.lr.ph3723.split.preheader

.lr.ph3723.split.preheader:                       ; preds = %.lr.ph3723
  %i.ezc = add i32 %.21263.lcssa, 2
  %i.ezd = sub i32 %i.ddj, %.21263.lcssa
  %i.eze = and i32 %i.ezd, -2
  %i.ezf = add i32 %i.ezc, %i.eze
  br label %.preheader2847

.lr.ph3715.us.preheader:                          ; preds = %.lr.ph3723
  %i.ezg = zext i32 %.21263.lcssa to i64
  br label %.lr.ph3715.us

.lr.ph3715.us:                                    ; preds = %.lr.ph3715.us.preheader, %._crit_edge3716.us
  %indvars.iv4179 = phi i64 [ %i.ezg, %.lr.ph3715.us.preheader ], [ %indvars.iv.next4180, %._crit_edge3716.us ] ; 2 uses
  %.213720.us = phi ptr [ %.16.lcssa, %.lr.ph3715.us.preheader ], [ %scevgep4177, %._crit_edge3716.us ] ; 2 uses
  %.112743719.us = phi float [ %op.rdx4628, %.lr.ph3715.us.preheader ], [ %i.fac, %._crit_edge3716.us ]
  %.reass3728.us = mul i64 %factor.op.mul3727, %indvars.iv4179
  %gep3730.us = getelementptr i8, ptr %invariant.gep3729, i64 %.reass3728.us
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph3715.us, %bb.bf
  %.012353713.us = phi i32 [ 0, %.lr.ph3715.us ], [ %i.faf, %bb.bf ]
  %.012363712.us = phi ptr [ %gep3730.us, %.lr.ph3715.us ], [ %i.fad, %bb.bf ] ; 3 uses
  %.223711.us = phi ptr [ %.213720.us, %.lr.ph3715.us ], [ %i.fae, %bb.bf ] ; 3 uses
  %.212753710.us = phi float [ %.112743719.us, %.lr.ph3715.us ], [ %i.fac, %bb.bf ]
  %i.ezh = load i16, ptr %.012363712.us, align 2, !tbaa !27
  %i.ezi = zext i16 %i.ezh to i32
  %i.ezj = shl nuw i32 %i.ezi, 16
  %i.ezk = bitcast i32 %i.ezj to float
  %i.ezl = load i16, ptr %.223711.us, align 2, !tbaa !27
  %i.ezm = zext i16 %i.ezl to i32
  %i.ezn = shl nuw i32 %i.ezm, 16
  %i.ezo = bitcast i32 %i.ezn to float
  %i.ezp = fmul fast float %i.ezo, %i.ezk
  %i.ezq = fadd fast float %.212753710.us, %i.ezp
  %i.ezr = getelementptr inbounds [2 x i8], ptr %.012363712.us, i64 %i.eyz
  %i.ezs = load i16, ptr %i.ezr, align 2, !tbaa !27
  %i.ezt = zext i16 %i.ezs to i32
  %i.ezu = shl nuw i32 %i.ezt, 16
  %i.ezv = bitcast i32 %i.ezu to float
  %i.ezw = getelementptr inbounds nuw i8, ptr %.223711.us, i64 2
  %i.ezx = load i16, ptr %i.ezw, align 2, !tbaa !27
  %i.ezy = zext i16 %i.ezx to i32
  %i.ezz = shl nuw i32 %i.ezy, 16
  %i.faa = bitcast i32 %i.ezz to float
  %i.fab = fmul fast float %i.faa, %i.ezv
  %i.fac = fadd fast float %i.fab, %i.ezq         ; 3 uses
  %i.fad = getelementptr inbounds [2 x i8], ptr %.012363712.us, i64 %i.ezb
  %i.fae = getelementptr inbounds nuw i8, ptr %.223711.us, i64 4
  %i.faf = add nuw nsw i32 %.012353713.us, 1      ; 2 uses
  %exitcond4178.not = icmp eq i32 %i.faf, %i.ega
  br i1 %exitcond4178.not, label %._crit_edge3716.us, label %bb.bf, !llvm.loop !110

._crit_edge3716.us:                               ; preds = %bb.bf
  %scevgep4176 = getelementptr i8, ptr %.213720.us, i64 4
  %scevgep4177 = getelementptr i8, ptr %scevgep4176, i64 %i.ege ; 2 uses
  %indvars.iv.next4180 = add nuw nsw i64 %indvars.iv4179, 2 ; 3 uses
  %i.fag = trunc i64 %indvars.iv.next4180 to i32
  %i.fah = or i32 %i.fag, 1
  %i.fai = icmp slt i32 %i.fah, %i.n
  br i1 %i.fai, label %.lr.ph3715.us, label %.preheader2847.loopexit, !llvm.loop !111

.preheader2847.loopexit:                          ; preds = %._crit_edge3716.us
  %i.faj = trunc nuw i64 %indvars.iv.next4180 to i32
  br label %.preheader2847

.preheader2847:                                   ; preds = %.lr.ph3723.split.preheader, %.preheader2847.loopexit, %._crit_edge3702
  %.11274.lcssa = phi float [ %op.rdx4628, %._crit_edge3702 ], [ %i.fac, %.preheader2847.loopexit ], [ %op.rdx4628, %.lr.ph3723.split.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge3702 ], [ %scevgep4177, %.preheader2847.loopexit ], [ %.16.lcssa, %.lr.ph3723.split.preheader ]
  %.31264.lcssa = phi i32 [ %.21263.lcssa, %._crit_edge3702 ], [ %i.faj, %.preheader2847.loopexit ], [ %i.ezf, %.lr.ph3723.split.preheader ] ; 2 uses
  %i.fak = icmp slt i32 %.31264.lcssa, %i.n
  br i1 %i.fak, label %.lr.ph3746, label %._crit_edge3747

.lr.ph3746:                                       ; preds = %.preheader2847
  %i.fal = load ptr, ptr %0, align 8, !tbaa !18
  %i.fam = load i32, ptr %i.o, align 4, !tbaa !17
  %i.fan = sext i32 %i.fam to i64
  %i.fao = load i64, ptr %i.dcv, align 8, !tbaa !21
  %factor.op.mul3749 = mul i64 %i.fao, %i.fan
  %i.fap = mul nsw i64 %indvars.iv4188, %i.egg
  %invariant.gep3751 = getelementptr [2 x i8], ptr %i.fal, i64 %i.fap
  %i.faq = load i32, ptr %i.b, align 4
  %i.far = sext i32 %i.faq to i64                 ; 2 uses
  br i1 %i.egb, label %.lr.ph3739.us.preheader, label %._crit_edge3747

.lr.ph3739.us.preheader:                          ; preds = %.lr.ph3746
  %i.fas = zext i32 %.31264.lcssa to i64
  br label %.lr.ph3739.us

.lr.ph3739.us:                                    ; preds = %.lr.ph3739.us.preheader, %._crit_edge3740.us
  %indvars.iv4185 = phi i64 [ %i.fas, %.lr.ph3739.us.preheader ], [ %indvars.iv.next4186, %._crit_edge3740.us ] ; 2 uses
  %.233744.us = phi ptr [ %.21.lcssa, %.lr.ph3739.us.preheader ], [ %scevgep4183, %._crit_edge3740.us ] ; 3 uses
  %.312763743.us = phi float [ %.11274.lcssa, %.lr.ph3739.us.preheader ], [ %.lcssa4640, %._crit_edge3740.us ] ; 2 uses
  %.reass3750.us = mul i64 %factor.op.mul3749, %indvars.iv4185
  %gep3752.us = getelementptr i8, ptr %invariant.gep3751, i64 %.reass3750.us ; 2 uses
  br i1 %i.egh, label %.epil.preheader4823, label %.lr.ph3739.us.new

.lr.ph3739.us.new:                                ; preds = %.lr.ph3739.us, %.lr.ph3739.us.new
  %.012343736.us = phi ptr [ %i.fbp, %.lr.ph3739.us.new ], [ %gep3752.us, %.lr.ph3739.us ] ; 2 uses
  %.243735.us = phi ptr [ %i.fbq, %.lr.ph3739.us.new ], [ %.233744.us, %.lr.ph3739.us ] ; 3 uses
  %.412773734.us = phi float [ %i.fbo, %.lr.ph3739.us.new ], [ %.312763743.us, %.lr.ph3739.us ]
  %niter4830 = phi i32 [ %niter4830.next.1, %.lr.ph3739.us.new ], [ 0, %.lr.ph3739.us ]
  %i.fat = load i16, ptr %.012343736.us, align 2, !tbaa !27
  %i.fau = zext i16 %i.fat to i32
  %i.fav = shl nuw i32 %i.fau, 16
  %i.faw = bitcast i32 %i.fav to float
  %i.fax = load i16, ptr %.243735.us, align 2, !tbaa !27
  %i.fay = zext i16 %i.fax to i32
  %i.faz = shl nuw i32 %i.fay, 16
  %i.fba = bitcast i32 %i.faz to float
  %i.fbb = fmul fast float %i.fba, %i.faw
  %i.fbc = fadd fast float %i.fbb, %.412773734.us
  %i.fbd = getelementptr inbounds [2 x i8], ptr %.012343736.us, i64 %i.far ; 2 uses
  %i.fbe = getelementptr inbounds nuw i8, ptr %.243735.us, i64 2
  %i.fbf = load i16, ptr %i.fbd, align 2, !tbaa !27
  %i.fbg = zext i16 %i.fbf to i32
  %i.fbh = shl nuw i32 %i.fbg, 16
  %i.fbi = bitcast i32 %i.fbh to float
  %i.fbj = load i16, ptr %i.fbe, align 2, !tbaa !27
  %i.fbk = zext i16 %i.fbj to i32
  %i.fbl = shl nuw i32 %i.fbk, 16
  %i.fbm = bitcast i32 %i.fbl to float
  %i.fbn = fmul fast float %i.fbm, %i.fbi
  %i.fbo = fadd fast float %i.fbn, %i.fbc         ; 3 uses
  %i.fbp = getelementptr inbounds [2 x i8], ptr %i.fbd, i64 %i.far ; 2 uses
  %i.fbq = getelementptr inbounds nuw i8, ptr %.243735.us, i64 4 ; 2 uses
  %niter4830.next.1 = add nuw nsw i32 %niter4830, 2 ; 2 uses
  %niter4830.ncmp.1 = icmp eq i32 %niter4830.next.1, %unroll_iter4829
  br i1 %niter4830.ncmp.1, label %._crit_edge3740.us.unr-lcssa, label %.lr.ph3739.us.new, !llvm.loop !112

._crit_edge3740.us.unr-lcssa:                     ; preds = %.lr.ph3739.us.new
  br i1 %lcmp.mod4826.not, label %._crit_edge3740.us, label %.epil.preheader4823

.epil.preheader4823:                              ; preds = %._crit_edge3740.us.unr-lcssa, %.lr.ph3739.us
  %.012343736.us.epil.init = phi ptr [ %gep3752.us, %.lr.ph3739.us ], [ %i.fbp, %._crit_edge3740.us.unr-lcssa ]
  %.243735.us.epil.init = phi ptr [ %.233744.us, %.lr.ph3739.us ], [ %i.fbq, %._crit_edge3740.us.unr-lcssa ]
  %.412773734.us.epil.init = phi float [ %.312763743.us, %.lr.ph3739.us ], [ %i.fbo, %._crit_edge3740.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4828)
  %i.fbr = load i16, ptr %.012343736.us.epil.init, align 2, !tbaa !27
  %i.fbs = zext i16 %i.fbr to i32
  %i.fbt = shl nuw i32 %i.fbs, 16
  %i.fbu = bitcast i32 %i.fbt to float
  %i.fbv = load i16, ptr %.243735.us.epil.init, align 2, !tbaa !27
  %i.fbw = zext i16 %i.fbv to i32
  %i.fbx = shl nuw i32 %i.fbw, 16
  %i.fby = bitcast i32 %i.fbx to float
  %i.fbz = fmul fast float %i.fby, %i.fbu
  %i.fca = fadd fast float %i.fbz, %.412773734.us.epil.init
  br label %._crit_edge3740.us

._crit_edge3740.us:                               ; preds = %._crit_edge3740.us.unr-lcssa, %.epil.preheader4823
  %.lcssa4640 = phi float [ %i.fbo, %._crit_edge3740.us.unr-lcssa ], [ %i.fca, %.epil.preheader4823 ] ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %.233744.us, i64 2
  %scevgep4183 = getelementptr i8, ptr %scevgep4182, i64 %i.egf
  %indvars.iv.next4186 = add nuw nsw i64 %indvars.iv4185, 1 ; 2 uses
  %i.fcb = trunc nuw i64 %indvars.iv.next4186 to i32
  %i.fcc = icmp sgt i32 %i.n, %i.fcb
  br i1 %i.fcc, label %.lr.ph3739.us, label %._crit_edge3747, !llvm.loop !113

._crit_edge3747:                                  ; preds = %._crit_edge3740.us, %.lr.ph3746, %.preheader2847
  %.31276.lcssa = phi float [ %.11274.lcssa, %.preheader2847 ], [ %.11274.lcssa, %.lr.ph3746 ], [ %.lcssa4640, %._crit_edge3740.us ] ; 13 uses
  switch i32 %i.ddc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bg
    i32 2, label %bb.bh
    i32 3, label %bb.bi
    i32 4, label %bb.bj
    i32 5, label %bb.bk
    i32 6, label %bb.bl
  ]

bb.bg:                                            ; preds = %._crit_edge3747
  %i.fcd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31276.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bh:                                            ; preds = %._crit_edge3747
  %i.fce = load ptr, ptr %8, align 8, !tbaa !18
  %i.fcf = load float, ptr %i.fce, align 4, !tbaa !29
  %i.fcg = fcmp fast ogt float %.31276.lcssa, 0.000000e+00
  %i.fch = select fast i1 %i.fcg, float 1.000000e+00, float %i.fcf
  %i.fci = fmul fast float %i.fch, %.31276.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bi:                                            ; preds = %._crit_edge3747
  %i.fcj = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fck = load float, ptr %i.fcj, align 4, !tbaa !29
  %i.fcl = getelementptr inbounds nuw i8, ptr %i.fcj, i64 4
  %i.fcm = load float, ptr %i.fcl, align 4, !tbaa !29
  %spec.select2830 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31276.lcssa, float %i.fck)
  %spec.select2831 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2830, float %i.fcm)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bj:                                            ; preds = %._crit_edge3747
  %.sroa.speculated2291 = call nnan ninf nsz float @llvm.minnum.f32(float %.31276.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2291, float f0xC2B0C0A5)
  %i.fcn = fneg fast float %.sroa.speculated
  %i.fco = call fast float @llvm.exp.f32(float %i.fcn)
  %i.fcp = fadd fast float %i.fco, 1.000000e+00
  %i.fcq = fdiv fast float 1.000000e+00, %i.fcp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge3747
  %i.fcr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31276.lcssa)
  %i.fcs = fadd fast float %i.fcr, 1.000000e+00
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.acp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abm, <16 x float> nofpclass(nan inf) %i.aco, <16 x float> nofpclass(nan inf) %.12592971)
  %i.acq = bitcast <8 x i32> %i.acd to <8 x float>
  %i.acr = shufflevector <8 x float> %i.acq, <8 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.acs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abp, <16 x float> nofpclass(nan inf) %i.acr, <16 x float> nofpclass(nan inf) %i.acg) ; 2 uses
  %i.act = bitcast <8 x i32> %i.acd to <8 x float>
  %i.acu = shufflevector <8 x float> %i.act, <8 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.acv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abs, <16 x float> nofpclass(nan inf) %i.acu, <16 x float> nofpclass(nan inf) %i.acj) ; 2 uses
  %i.acw = bitcast <8 x i32> %i.acd to <8 x float>
  %i.acx = shufflevector <8 x float> %i.acw, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.acy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abv, <16 x float> nofpclass(nan inf) %i.acx, <16 x float> nofpclass(nan inf) %i.acm) ; 2 uses
  %i.acz = bitcast <8 x i32> %i.acd to <8 x float>
  %i.ada = shufflevector <8 x float> %i.acz, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.adb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aby, <16 x float> nofpclass(nan inf) %i.ada, <16 x float> nofpclass(nan inf) %i.acp) ; 2 uses
  %i.adc = getelementptr inbounds [2 x i8], ptr %.2554973, i64 %i.abb
  %i.add = getelementptr inbounds [2 x i8], ptr %.0550974, i64 %i.abb
  %i.ade = getelementptr inbounds nuw i8, ptr %.12972, i64 256
  %i.adf = add nuw nsw i32 %.0549975, 1           ; 2 uses
  %exitcond1187.not = icmp eq i32 %i.adf, %i.aau
  br i1 %exitcond1187.not, label %.loopexit871.loopexit, label %bb.o, !llvm.loop !131

.loopexit871.loopexit:                            ; preds = %bb.o
  %scevgep1185 = getelementptr i8, ptr %.91000, i64 256
  %i.adg = add nsw i32 %i.aau, -1
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = shl nuw nsw i64 %i.adh, 8
  %scevgep1186 = getelementptr i8, ptr %scevgep1185, i64 %i.adi
  br label %.loopexit870

.loopexit871:                                     ; preds = %.loopexit873
  br i1 %i.as, label %.preheader869, label %.loopexit870

.preheader869:                                    ; preds = %.loopexit871
  %i.adj = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.adk = icmp sgt i32 %i.adj, 0
  br i1 %i.adk, label %.lr.ph990, label %.loopexit870

.lr.ph990:                                        ; preds = %.preheader869
  %i.adl = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.adm = sext i32 %i.adl to i64
  %i.adn = shl nsw i32 %i.adl, 1
  %i.ado = sext i32 %i.adn to i64
  %i.adp = mul nsw i32 %i.adl, 3
  %i.adq = sext i32 %i.adp to i64
  %i.adr = shl nsw i32 %i.adl, 2
  %i.ads = sext i32 %i.adr to i64
  %i.adt = mul nsw i32 %i.adl, 5
  %i.adu = sext i32 %i.adt to i64
  %i.adv = mul nsw i32 %i.adl, 6
  %i.adw = sext i32 %i.adv to i64
  %i.adx = mul nsw i32 %i.adl, 7
  %i.ady = sext i32 %i.adx to i64
  %i.adz = load i32, ptr %9, align 4, !tbaa !9
  %i.aea = sext i32 %i.adz to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph990, %bb.p
  %.0548989 = phi i32 [ 0, %.lr.ph990 ], [ %i.ahl, %bb.p ]
  %.4988 = phi ptr [ %gep1012, %.lr.ph990 ], [ %i.ahj, %bb.p ] ; 9 uses
  %.14987 = phi ptr [ %.91000, %.lr.ph990 ], [ %i.ahk, %bb.p ] ; 9 uses
  %.14594986 = phi <16 x float> [ %.9589999, %.lr.ph990 ], [ %i.ahi, %bb.p ]
  %.14615985 = phi <16 x float> [ %.9610998, %.lr.ph990 ], [ %i.aha, %bb.p ]
  %.14636984 = phi <16 x float> [ %.9631997, %.lr.ph990 ], [ %i.ags, %bb.p ]
  %.15851983 = phi <16 x float> [ %.10846996, %.lr.ph990 ], [ %i.agk, %bb.p ]
  %i.aeb = load <16 x bfloat>, ptr %.14987, align 32, !tbaa !24
  %i.aec = fpext fast <16 x bfloat> %i.aeb to <16 x float>
  %i.aed = getelementptr inbounds nuw i8, ptr %.14987, i64 32
  %i.aee = load <16 x bfloat>, ptr %i.aed, align 32, !tbaa !24
  %i.aef = fpext fast <16 x bfloat> %i.aee to <16 x float>
  %i.aeg = getelementptr inbounds nuw i8, ptr %.14987, i64 64
  %i.aeh = load <16 x bfloat>, ptr %i.aeg, align 32, !tbaa !24
  %i.aei = fpext fast <16 x bfloat> %i.aeh to <16 x float>
  %i.aej = getelementptr inbounds nuw i8, ptr %.14987, i64 96
  %i.aek = load <16 x bfloat>, ptr %i.aej, align 32, !tbaa !24
  %i.ael = fpext fast <16 x bfloat> %i.aek to <16 x float>
  %i.aem = getelementptr inbounds nuw i8, ptr %.14987, i64 128
  %i.aen = load <16 x bfloat>, ptr %i.aem, align 32, !tbaa !24
  %i.aeo = fpext fast <16 x bfloat> %i.aen to <16 x float>
  %i.aep = getelementptr inbounds nuw i8, ptr %.14987, i64 160
  %i.aeq = load <16 x bfloat>, ptr %i.aep, align 32, !tbaa !24
  %i.aer = fpext fast <16 x bfloat> %i.aeq to <16 x float>
  %i.aes = getelementptr inbounds nuw i8, ptr %.14987, i64 192
  %i.aet = load <16 x bfloat>, ptr %i.aes, align 32, !tbaa !24
  %i.aeu = fpext fast <16 x bfloat> %i.aet to <16 x float>
  %i.aev = getelementptr inbounds nuw i8, ptr %.14987, i64 224
  %i.aew = load <16 x bfloat>, ptr %i.aev, align 32, !tbaa !24
  %i.aex = fpext fast <16 x bfloat> %i.aew to <16 x float>
  %i.aey = load i16, ptr %.4988, align 2, !tbaa !27
  %i.aez = zext i16 %i.aey to i32
  %i.afa = shl nuw i32 %i.aez, 16
  %i.afb = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.afc = bitcast <16 x i32> %i.afb to <16 x float>
  %i.afd = shufflevector <16 x float> %i.afc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aec, <16 x float> nofpclass(nan inf) %i.afd, <16 x float> nofpclass(nan inf) %.15851983)
  %i.aff = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adm
  %i.afg = load i16, ptr %i.aff, align 2, !tbaa !27
  %i.afh = zext i16 %i.afg to i32
  %i.afi = shl nuw i32 %i.afh, 16
  %i.afj = insertelement <16 x i32> poison, i32 %i.afi, i64 0
  %i.afk = bitcast <16 x i32> %i.afj to <16 x float>
  %i.afl = shufflevector <16 x float> %i.afk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aef, <16 x float> nofpclass(nan inf) %i.afl, <16 x float> nofpclass(nan inf) %.14636984)
  %i.afn = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.ado
  %i.afo = load i16, ptr %i.afn, align 2, !tbaa !27
  %i.afp = zext i16 %i.afo to i32
  %i.afq = shl nuw i32 %i.afp, 16
  %i.afr = insertelement <16 x i32> poison, i32 %i.afq, i64 0
  %i.afs = bitcast <16 x i32> %i.afr to <16 x float>
  %i.aft = shufflevector <16 x float> %i.afs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aei, <16 x float> nofpclass(nan inf) %i.aft, <16 x float> nofpclass(nan inf) %.14615985)
  %i.afv = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adq
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !27
  %i.afx = zext i16 %i.afw to i32
  %i.afy = shl nuw i32 %i.afx, 16
  %i.afz = insertelement <16 x i32> poison, i32 %i.afy, i64 0
  %i.aga = bitcast <16 x i32> %i.afz to <16 x float>
  %i.agb = shufflevector <16 x float> %i.aga, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ael, <16 x float> nofpclass(nan inf) %i.agb, <16 x float> nofpclass(nan inf) %.14594986)
  %i.agd = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.ads
  %i.age = load i16, ptr %i.agd, align 2, !tbaa !27
  %i.agf = zext i16 %i.age to i32
  %i.agg = shl nuw i32 %i.agf, 16
  %i.agh = insertelement <16 x i32> poison, i32 %i.agg, i64 0
  %i.agi = bitcast <16 x i32> %i.agh to <16 x float>
  %i.agj = shufflevector <16 x float> %i.agi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeo, <16 x float> nofpclass(nan inf) %i.agj, <16 x float> nofpclass(nan inf) %i.afe) ; 2 uses
  %i.agl = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adu
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !27
  %i.agn = zext i16 %i.agm to i32
  %i.ago = shl nuw i32 %i.agn, 16
  %i.agp = insertelement <16 x i32> poison, i32 %i.ago, i64 0
  %i.agq = bitcast <16 x i32> %i.agp to <16 x float>
  %i.agr = shufflevector <16 x float> %i.agq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ags = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aer, <16 x float> nofpclass(nan inf) %i.agr, <16 x float> nofpclass(nan inf) %i.afm) ; 2 uses
  %i.agt = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adw
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !27
  %i.agv = zext i16 %i.agu to i32
  %i.agw = shl nuw i32 %i.agv, 16
  %i.agx = insertelement <16 x i32> poison, i32 %i.agw, i64 0
  %i.agy = bitcast <16 x i32> %i.agx to <16 x float>
  %i.agz = shufflevector <16 x float> %i.agy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aha = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeu, <16 x float> nofpclass(nan inf) %i.agz, <16 x float> nofpclass(nan inf) %i.afu) ; 2 uses
  %i.ahb = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.ady
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !27
  %i.ahd = zext i16 %i.ahc to i32
  %i.ahe = shl nuw i32 %i.ahd, 16
  %i.ahf = insertelement <16 x i32> poison, i32 %i.ahe, i64 0
  %i.ahg = bitcast <16 x i32> %i.ahf to <16 x float>
  %i.ahh = shufflevector <16 x float> %i.ahg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aex, <16 x float> nofpclass(nan inf) %i.ahh, <16 x float> nofpclass(nan inf) %i.agc) ; 2 uses
  %i.ahj = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.aea
  %i.ahk = getelementptr inbounds nuw i8, ptr %.14987, i64 256
  %i.ahl = add nuw nsw i32 %.0548989, 1           ; 2 uses
  %exitcond1190.not = icmp eq i32 %i.ahl, %i.adj
  br i1 %exitcond1190.not, label %.loopexit870.loopexit, label %bb.p, !llvm.loop !132

.loopexit870.loopexit:                            ; preds = %bb.p
  %scevgep1188 = getelementptr i8, ptr %.91000, i64 256
  %i.ahm = add nsw i32 %i.adj, -1
  %i.ahn = zext nneg i32 %i.ahm to i64
  %i.aho = shl nuw nsw i64 %i.ahn, 8
  %scevgep1189 = getelementptr i8, ptr %scevgep1188, i64 %i.aho
  br label %.loopexit870

.loopexit870:                                     ; preds = %.preheader872, %.loopexit873.loopexit, %bb.n, %.loopexit871.loopexit, %.loopexit870.loopexit, %.preheader869, %.loopexit871
  %.16852 = phi nsz <16 x float> [ %.10846996, %.loopexit871 ], [ %.10846996, %.preheader869 ], [ %i.agk, %.loopexit870.loopexit ], [ %.10846996, %bb.n ], [ %i.acs, %.loopexit871.loopexit ], [ %i.aae, %.loopexit873.loopexit ], [ %.10846996, %.preheader872 ] ; 2 uses
  %.15637 = phi nsz <16 x float> [ %.9631997, %.loopexit871 ], [ %.9631997, %.preheader869 ], [ %i.ags, %.loopexit870.loopexit ], [ %.9631997, %bb.n ], [ %i.acv, %.loopexit871.loopexit ], [ %i.aah, %.loopexit873.loopexit ], [ %.9631997, %.preheader872 ] ; 2 uses
  %.15616 = phi nsz <16 x float> [ %.9610998, %.loopexit871 ], [ %.9610998, %.preheader869 ], [ %i.aha, %.loopexit870.loopexit ], [ %.9610998, %bb.n ], [ %i.acy, %.loopexit871.loopexit ], [ %i.aak, %.loopexit873.loopexit ], [ %.9610998, %.preheader872 ] ; 2 uses
  %.15595 = phi nsz <16 x float> [ %.9589999, %.loopexit871 ], [ %.9589999, %.preheader869 ], [ %i.ahi, %.loopexit870.loopexit ], [ %.9589999, %bb.n ], [ %i.adb, %.loopexit871.loopexit ], [ %i.aan, %.loopexit873.loopexit ], [ %.9589999, %.preheader872 ] ; 2 uses
  %.15 = phi ptr [ %.91000, %.loopexit871 ], [ %.91000, %.preheader869 ], [ %scevgep1189, %.loopexit870.loopexit ], [ %.91000, %bb.n ], [ %scevgep1186, %.loopexit871.loopexit ], [ %scevgep1183, %.loopexit873.loopexit ], [ %.91000, %.preheader872 ] ; 2 uses
  %i.ahp = add nuw nsw i32 %.15691001, 8          ; 3 uses
  %i.ahq = or disjoint i32 %i.ahp, 7
  %i.ahr = icmp slt i32 %i.ahq, %i.ab
  br i1 %i.ahr, label %bb.l, label %.preheader882, !llvm.loop !133

.preheader881:                                    ; preds = %.loopexit, %.preheader882
  %.17853.lcssa = phi <16 x float> [ %.10846.lcssa, %.preheader882 ], [ %.21857, %.loopexit ] ; 3 uses
  %.16638.lcssa = phi <16 x float> [ %.9631.lcssa, %.preheader882 ], [ %.20642, %.loopexit ] ; 3 uses
  %.16617.lcssa = phi <16 x float> [ %.9610.lcssa, %.preheader882 ], [ %.20621, %.loopexit ]
  %.16596.lcssa = phi <16 x float> [ %.9589.lcssa, %.preheader882 ], [ %.20600, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader882 ], [ %.20, %.loopexit ] ; 3 uses
  %.2570.lcssa = phi i32 [ %.1569.lcssa, %.preheader882 ], [ %i.ani, %.loopexit ] ; 5 uses
  %i.ahs = or disjoint i32 %.2570.lcssa, 1
  %i.aht = icmp slt i32 %i.ahs, %i.ab
  br i1 %i.aht, label %.lr.ph1070, label %.preheader880

.lr.ph1070:                                       ; preds = %.preheader881
  %i.ahu = load ptr, ptr %3, align 8, !tbaa !18
  %i.ahv = load i32, ptr %i.s, align 4, !tbaa !17
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = load i64, ptr %i.t, align 8, !tbaa !21
  %factor.op.mul1075 = mul i64 %i.ahx, %i.ahw
  %i.ahy = load i32, ptr %7, align 4, !tbaa !9
  %i.ahz = mul nsw i32 %i.ahy, %.06451102
  %i.aia = sext i32 %i.ahz to i64
  %invariant.gep1077 = getelementptr [2 x i8], ptr %i.ahu, i64 %i.aia
  %i.aib = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.aic = icmp sgt i32 %i.aib, 0
  br i1 %i.aic, label %.lr.ph1070.split.us, label %.lr.ph1070.split.preheader

.lr.ph1070.split.preheader:                       ; preds = %.lr.ph1070
  %i.aid = add i32 %.2570.lcssa, 2
  %i.aie = sub i32 %i.ax, %.2570.lcssa
  %i.aif = and i32 %i.aie, -2
  %i.aig = add i32 %i.aid, %i.aif
  br label %.preheader880

.lr.ph1070.split.us:                              ; preds = %.lr.ph1070
  %i.aih = load i32, ptr %10, align 4, !tbaa !9
  %i.aii = sext i32 %i.aih to i64
  %i.aij = load i32, ptr %9, align 4, !tbaa !9
  %i.aik = sext i32 %i.aij to i64
  %i.ail = add nsw i32 %i.aib, -1
  %i.aim = zext nneg i32 %i.ail to i64
  %i.ain = shl nuw nsw i64 %i.aim, 6
  %i.aio = zext i32 %.2570.lcssa to i64
  br label %.lr.ph1062.us

.lr.ph1062.us:                                    ; preds = %._crit_edge.us, %.lr.ph1070.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.aio, %.lr.ph1070.split.us ] ; 2 uses
  %.211068.us = phi ptr [ %scevgep1198, %._crit_edge.us ], [ %.16.lcssa, %.lr.ph1070.split.us ] ; 2 uses
  %.216431067.us = phi <16 x float> [ %i.aji, %._crit_edge.us ], [ %.16638.lcssa, %.lr.ph1070.split.us ]
  %.228581066.us = phi <16 x float> [ %i.aja, %._crit_edge.us ], [ %.17853.lcssa, %.lr.ph1070.split.us ]
  %.reass1076.us = mul i64 %factor.op.mul1075, %indvars.iv
  %gep1078.us = getelementptr i8, ptr %invariant.gep1077, i64 %.reass1076.us
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1062.us, %bb.q
  %.05431061.us = phi i32 [ 0, %.lr.ph1062.us ], [ %i.ajl, %bb.q ]
  %.05441060.us = phi ptr [ %gep1078.us, %.lr.ph1062.us ], [ %i.ajj, %bb.q ] ; 3 uses
  %.221059.us = phi ptr [ %.211068.us, %.lr.ph1062.us ], [ %i.ajk, %bb.q ] ; 3 uses
  %.226441058.us = phi <16 x float> [ %.216431067.us, %.lr.ph1062.us ], [ %i.aji, %bb.q ]
  %.238591057.us = phi <16 x float> [ %.228581066.us, %.lr.ph1062.us ], [ %i.aja, %bb.q ]
  %i.aip = load <16 x bfloat>, ptr %.221059.us, align 32, !tbaa !24
  %i.aiq = fpext fast <16 x bfloat> %i.aip to <16 x float>
  %i.air = getelementptr inbounds nuw i8, ptr %.221059.us, i64 32
  %i.ais = load <16 x bfloat>, ptr %i.air, align 32, !tbaa !24
  %i.ait = fpext fast <16 x bfloat> %i.ais to <16 x float>
  %i.aiu = load i16, ptr %.05441060.us, align 2, !tbaa !27
  %i.aiv = zext i16 %i.aiu to i32
  %i.aiw = shl nuw i32 %i.aiv, 16
  %i.aix = insertelement <16 x i32> poison, i32 %i.aiw, i64 0
  %i.aiy = bitcast <16 x i32> %i.aix to <16 x float>
  %i.aiz = shufflevector <16 x float> %i.aiy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aja = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aiq, <16 x float> nofpclass(nan inf) %i.aiz, <16 x float> nofpclass(nan inf) %.238591057.us) ; 3 uses
  %i.ajb = getelementptr inbounds [2 x i8], ptr %.05441060.us, i64 %i.aii
  %i.ajc = load i16, ptr %i.ajb, align 2, !tbaa !27
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = shl nuw i32 %i.ajd, 16
  %i.ajf = insertelement <16 x i32> poison, i32 %i.aje, i64 0
  %i.ajg = bitcast <16 x i32> %i.ajf to <16 x float>
  %i.ajh = shufflevector <16 x float> %i.ajg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aji = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ait, <16 x float> nofpclass(nan inf) %i.ajh, <16 x float> nofpclass(nan inf) %.226441058.us) ; 3 uses
  %i.ajj = getelementptr inbounds [2 x i8], ptr %.05441060.us, i64 %i.aik
  %i.ajk = getelementptr inbounds nuw i8, ptr %.221059.us, i64 64
  %i.ajl = add nuw nsw i32 %.05431061.us, 1       ; 2 uses
  %exitcond1199.not = icmp eq i32 %i.ajl, %i.aib
  br i1 %exitcond1199.not, label %._crit_edge.us, label %bb.q, !llvm.loop !134

._crit_edge.us:                                   ; preds = %bb.q
  %scevgep1197 = getelementptr i8, ptr %.211068.us, i64 64
  %scevgep1198 = getelementptr i8, ptr %scevgep1197, i64 %i.ain ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ajm = trunc i64 %indvars.iv.next to i32
  %i.ajn = or i32 %i.ajm, 1
  %i.ajo = icmp slt i32 %i.ajn, %i.ab
  br i1 %i.ajo, label %.lr.ph1062.us, label %.preheader880.loopexit, !llvm.loop !135

bb.r:                                             ; preds = %.lr.ph1046, %.loopexit
  %.25701045 = phi i32 [ %.1569.lcssa, %.lr.ph1046 ], [ %i.ani, %.loopexit ] ; 2 uses
  %.161044 = phi ptr [ %.9.lcssa, %.lr.ph1046 ], [ %.20, %.loopexit ] ; 7 uses
  %.165961043 = phi <16 x float> [ %.9589.lcssa, %.lr.ph1046 ], [ %.20600, %.loopexit ] ; 5 uses
  %.166171042 = phi <16 x float> [ %.9610.lcssa, %.lr.ph1046 ], [ %.20621, %.loopexit ] ; 5 uses
  %.166381041 = phi <16 x float> [ %.9631.lcssa, %.lr.ph1046 ], [ %.20642, %.loopexit ] ; 5 uses
  %.178531040 = phi <16 x float> [ %.10846.lcssa, %.lr.ph1046 ], [ %.21857, %.loopexit ] ; 5 uses
  %i.ajp = sdiv i32 %.25701045, %i.z
  %i.ajq = sext i32 %i.ajp to i64
  %.reass1054 = mul i64 %factor.op.mul1053, %i.ajq
  %gep1056 = getelementptr i8, ptr %invariant.gep1055, i64 %.reass1054 ; 2 uses
  br i1 %i.ar, label %.preheader867, label %.loopexit868

.preheader867:                                    ; preds = %bb.r
  %i.ajr = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.ajs = icmp sgt i32 %i.ajr, 0
  br i1 %i.ajs, label %.lr.ph1020, label %.loopexit

.lr.ph1020:                                       ; preds = %.preheader867
  %i.ajt = load i32, ptr %9, align 4, !tbaa !9
  %i.aju = shl nsw i32 %i.ajt, 2
  %i.ajv = sext i32 %i.aju to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1020, %bb.s
  %.05461019 = phi i32 [ 0, %.lr.ph1020 ], [ %i.aky, %bb.s ]
  %.05471018 = phi ptr [ %gep1056, %.lr.ph1020 ], [ %i.akw, %bb.s ] ; 2 uses
  %.171017 = phi ptr [ %.161044, %.lr.ph1020 ], [ %i.akx, %bb.s ] ; 5 uses
  %.175971016 = phi <16 x float> [ %.165961043, %.lr.ph1020 ], [ %i.akv, %bb.s ]
  %.176181015 = phi <16 x float> [ %.166171042, %.lr.ph1020 ], [ %i.aks, %bb.s ]
  %.176391014 = phi <16 x float> [ %.166381041, %.lr.ph1020 ], [ %i.akp, %bb.s ]
  %.188541013 = phi <16 x float> [ %.178531040, %.lr.ph1020 ], [ %i.akm, %bb.s ]
  %i.ajw = load <16 x bfloat>, ptr %.171017, align 32, !tbaa !24
  %i.ajx = fpext fast <16 x bfloat> %i.ajw to <16 x float>
  %i.ajy = getelementptr inbounds nuw i8, ptr %.171017, i64 32
  %i.ajz = load <16 x bfloat>, ptr %i.ajy, align 32, !tbaa !24
  %i.aka = fpext fast <16 x bfloat> %i.ajz to <16 x float>
  %i.akb = getelementptr inbounds nuw i8, ptr %.171017, i64 64
  %i.akc = load <16 x bfloat>, ptr %i.akb, align 32, !tbaa !24
  %i.akd = fpext fast <16 x bfloat> %i.akc to <16 x float>
  %i.ake = getelementptr inbounds nuw i8, ptr %.171017, i64 96
  %i.akf = load <16 x bfloat>, ptr %i.ake, align 32, !tbaa !24
  %i.akg = fpext fast <16 x bfloat> %i.akf to <16 x float>
  %i.akh = load <4 x i16>, ptr %.05471018, align 2, !tbaa !27
  %i.aki = zext <4 x i16> %i.akh to <4 x i32>
  %i.akj = shl nuw <4 x i32> %i.aki, splat (i32 16) ; 4 uses
  %i.akk = bitcast <4 x i32> %i.akj to <4 x float>
  %i.akl = shufflevector <4 x float> %i.akk, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajx, <16 x float> nofpclass(nan inf) %i.akl, <16 x float> nofpclass(nan inf) %.188541013) ; 2 uses
  %i.akn = bitcast <4 x i32> %i.akj to <4 x float>
  %i.ako = shufflevector <4 x float> %i.akn, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.akp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aka, <16 x float> nofpclass(nan inf) %i.ako, <16 x float> nofpclass(nan inf) %.176391014) ; 2 uses
  %i.akq = bitcast <4 x i32> %i.akj to <4 x float>
  %i.akr = shufflevector <4 x float> %i.akq, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aks = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akd, <16 x float> nofpclass(nan inf) %i.akr, <16 x float> nofpclass(nan inf) %.176181015) ; 2 uses
  %i.akt = bitcast <4 x i32> %i.akj to <4 x float>
  %i.aku = shufflevector <4 x float> %i.akt, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.akv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akg, <16 x float> nofpclass(nan inf) %i.aku, <16 x float> nofpclass(nan inf) %.175971016) ; 2 uses
  %i.akw = getelementptr inbounds [2 x i8], ptr %.05471018, i64 %i.ajv
  %i.akx = getelementptr inbounds nuw i8, ptr %.171017, i64 128
  %i.aky = add nuw nsw i32 %.05461019, 1          ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.aky, %i.ajr
  br i1 %exitcond1193.not, label %.loopexit868.loopexit, label %bb.s, !llvm.loop !136

.loopexit868.loopexit:                            ; preds = %bb.s
  %scevgep1191 = getelementptr i8, ptr %.161044, i64 128
  %i.akz = add nsw i32 %i.ajr, -1
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = shl nuw nsw i64 %i.ala, 7
  %scevgep1192 = getelementptr i8, ptr %scevgep1191, i64 %i.alb
  br label %.loopexit

.loopexit868:                                     ; preds = %bb.r
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit868
  %i.alc = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.ald = icmp sgt i32 %i.alc, 0
  br i1 %i.ald, label %.lr.ph1034, label %.loopexit

.lr.ph1034:                                       ; preds = %.preheader
  %i.ale = load i32, ptr %10, align 4, !tbaa !9   ; 3 uses
  %i.alf = sext i32 %i.ale to i64
  %i.alg = shl nsw i32 %i.ale, 1
  %i.alh = sext i32 %i.alg to i64
  %i.ali = mul nsw i32 %i.ale, 3
  %i.alj = sext i32 %i.ali to i64
  %i.alk = load i32, ptr %9, align 4, !tbaa !9
  %i.all = sext i32 %i.alk to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph1034, %bb.t
  %.05451033 = phi i32 [ 0, %.lr.ph1034 ], [ %i.ane, %bb.t ]
  %.21032 = phi ptr [ %gep1056, %.lr.ph1034 ], [ %i.anc, %bb.t ] ; 5 uses
  %.191031 = phi ptr [ %.161044, %.lr.ph1034 ], [ %i.and, %bb.t ] ; 5 uses
  %.195991030 = phi <16 x float> [ %.165961043, %.lr.ph1034 ], [ %i.anb, %bb.t ]
  %.196201029 = phi <16 x float> [ %.166171042, %.lr.ph1034 ], [ %i.amt, %bb.t ]
  %.196411028 = phi <16 x float> [ %.166381041, %.lr.ph1034 ], [ %i.aml, %bb.t ]
  %.208561027 = phi <16 x float> [ %.178531040, %.lr.ph1034 ], [ %i.amd, %bb.t ]
  %i.alm = load <16 x bfloat>, ptr %.191031, align 32, !tbaa !24
  %i.aln = fpext fast <16 x bfloat> %i.alm to <16 x float>
  %i.alo = getelementptr inbounds nuw i8, ptr %.191031, i64 32
  %i.alp = load <16 x bfloat>, ptr %i.alo, align 32, !tbaa !24
  %i.alq = fpext fast <16 x bfloat> %i.alp to <16 x float>
  %i.alr = getelementptr inbounds nuw i8, ptr %.191031, i64 64
  %i.als = load <16 x bfloat>, ptr %i.alr, align 32, !tbaa !24
  %i.alt = fpext fast <16 x bfloat> %i.als to <16 x float>
  %i.alu = getelementptr inbounds nuw i8, ptr %.191031, i64 96
  %i.alv = load <16 x bfloat>, ptr %i.alu, align 32, !tbaa !24
  %i.alw = fpext fast <16 x bfloat> %i.alv to <16 x float>
  %i.alx = load i16, ptr %.21032, align 2, !tbaa !27
  %i.aly = zext i16 %i.alx to i32
  %i.alz = shl nuw i32 %i.aly, 16
  %i.ama = insertelement <16 x i32> poison, i32 %i.alz, i64 0
  %i.amb = bitcast <16 x i32> %i.ama to <16 x float>
  %i.amc = shufflevector <16 x float> %i.amb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aln, <16 x float> nofpclass(nan inf) %i.amc, <16 x float> nofpclass(nan inf) %.208561027) ; 2 uses
  %i.ame = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.alf
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !27
  %i.amg = zext i16 %i.amf to i32
  %i.amh = shl nuw i32 %i.amg, 16
  %i.ami = insertelement <16 x i32> poison, i32 %i.amh, i64 0
  %i.amj = bitcast <16 x i32> %i.ami to <16 x float>
  %i.amk = shufflevector <16 x float> %i.amj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aml = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alq, <16 x float> nofpclass(nan inf) %i.amk, <16 x float> nofpclass(nan inf) %.196411028) ; 2 uses
  %i.amm = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.alh
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !27
  %i.amo = zext i16 %i.amn to i32
  %i.amp = shl nuw i32 %i.amo, 16
  %i.amq = insertelement <16 x i32> poison, i32 %i.amp, i64 0
  %i.amr = bitcast <16 x i32> %i.amq to <16 x float>
  %i.ams = shufflevector <16 x float> %i.amr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alt, <16 x float> nofpclass(nan inf) %i.ams, <16 x float> nofpclass(nan inf) %.196201029) ; 2 uses
  %i.amu = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.alj
end_hunk_4
begin_hunk_5_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
bb.ax:                                            ; preds = %bb.ax, %.preheader1596.us.i
  %indvars.iv2180.i = phi i64 [ 0, %.preheader1596.us.i ], [ %indvars.iv.next2181.i, %bb.ax ] ; 17 uses
  %.111641601.us.i = phi ptr [ %.011631603.us.i, %.preheader1596.us.i ], [ %i.sq, %bb.ax ] ; 17 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.010911619.us.i, i64 %indvars.iv2180.i
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.010961618.us.i, i64 %indvars.iv2180.i
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.010981617.us.i, i64 %indvars.iv2180.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.011141616.us.i, i64 %indvars.iv2180.i
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.011151615.us.i, i64 %indvars.iv2180.i
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.011211614.us.i, i64 %indvars.iv2180.i
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.011221613.us.i, i64 %indvars.iv2180.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.011241612.us.i, i64 %indvars.iv2180.i
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.011251611.us.i, i64 %indvars.iv2180.i
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.011271610.us.i, i64 %indvars.iv2180.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.011281609.us.i, i64 %indvars.iv2180.i
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.011541608.us.i, i64 %indvars.iv2180.i
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.011591607.us.i, i64 %indvars.iv2180.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.011601606.us.i, i64 %indvars.iv2180.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.011611605.us.i, i64 %indvars.iv2180.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.011621604.us.i, i64 %indvars.iv2180.i
  %i.oj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nt, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ok = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nu, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ol = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nv, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.om = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nw, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.on = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nx, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ny, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.op = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nz, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oa, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.or = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ob, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.os = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oc, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ot = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.od, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ou = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oe, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ov = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.of, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ow = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.og, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ox = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oh, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oi, <16 x i32> %i.hy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oz = shufflevector <16 x float> %i.oj, <16 x float> %i.ok, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pa = shufflevector <16 x float> %i.oj, <16 x float> %i.ok, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pb = shufflevector <16 x float> %i.ol, <16 x float> %i.om, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pc = shufflevector <16 x float> %i.ol, <16 x float> %i.om, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pd = shufflevector <16 x float> %i.on, <16 x float> %i.oo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pe = shufflevector <16 x float> %i.on, <16 x float> %i.oo, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pf = shufflevector <16 x float> %i.op, <16 x float> %i.oq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pg = shufflevector <16 x float> %i.op, <16 x float> %i.oq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ph = shufflevector <16 x float> %i.or, <16 x float> %i.os, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pi = shufflevector <16 x float> %i.or, <16 x float> %i.os, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pj = shufflevector <16 x float> %i.ot, <16 x float> %i.ou, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pk = shufflevector <16 x float> %i.ot, <16 x float> %i.ou, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pl = shufflevector <16 x float> %i.ov, <16 x float> %i.ow, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pm = shufflevector <16 x float> %i.ov, <16 x float> %i.ow, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pn = shufflevector <16 x float> %i.ox, <16 x float> %i.oy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.po = shufflevector <16 x float> %i.ox, <16 x float> %i.oy, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oz, <16 x float> %i.pb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.oz, <16 x float> %i.pb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pd, <16 x float> %i.pf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pd, <16 x float> %i.pf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.px = shufflevector <16 x float> %i.ph, <16 x float> %i.pj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.py = shufflevector <16 x float> %i.ph, <16 x float> %i.pj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pl, <16 x float> %i.pn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pl, <16 x float> %i.pn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pp, <16 x float> %i.pt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.px, <16 x float> %i.qb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pr, <16 x float> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.ps, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.pp, <16 x float> %i.pt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.px, <16 x float> %i.qb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.pq, <16 x float> %i.pu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.pr, <16 x float> %i.pv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.ps, <16 x float> %i.pw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qu = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.qv = shufflevector <16 x float> %i.qf, <16 x float> %i.qg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qw = shufflevector <16 x float> %i.qh, <16 x float> %i.qi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qx = shufflevector <16 x float> %i.qj, <16 x float> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qy = shufflevector <16 x float> %i.ql, <16 x float> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.qz = shufflevector <16 x float> %i.qn, <16 x float> %i.qo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ra = shufflevector <16 x float> %i.qp, <16 x float> %i.qq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rb = shufflevector <16 x float> %i.qr, <16 x float> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rc = shufflevector <16 x float> %i.qt, <16 x float> %i.qu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rd = shufflevector <16 x float> %i.qf, <16 x float> %i.qg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.re = shufflevector <16 x float> %i.qh, <16 x float> %i.qi, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rf = shufflevector <16 x float> %i.qj, <16 x float> %i.qk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rg = shufflevector <16 x float> %i.ql, <16 x float> %i.qm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rh = shufflevector <16 x float> %i.qn, <16 x float> %i.qo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ri = shufflevector <16 x float> %i.qp, <16 x float> %i.qq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rj = shufflevector <16 x float> %i.qr, <16 x float> %i.qs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rk = shufflevector <16 x float> %i.qt, <16 x float> %i.qu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qv)
  store <16 x bfloat> %i.rl, ptr %.111641601.us.i, align 32, !tbaa !24
  %i.rm = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 32
  %i.rn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qw)
  store <16 x bfloat> %i.rn, ptr %i.rm, align 32, !tbaa !24
  %i.ro = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 64
  %i.rp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qx)
  store <16 x bfloat> %i.rp, ptr %i.ro, align 32, !tbaa !24
  %i.rq = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 96
  %i.rr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qy)
  store <16 x bfloat> %i.rr, ptr %i.rq, align 32, !tbaa !24
  %i.rs = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 128
  %i.rt = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qz)
  store <16 x bfloat> %i.rt, ptr %i.rs, align 32, !tbaa !24
  %i.ru = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 160
  %i.rv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ra)
  store <16 x bfloat> %i.rv, ptr %i.ru, align 32, !tbaa !24
  %i.rw = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 192
  %i.rx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rb)
  store <16 x bfloat> %i.rx, ptr %i.rw, align 32, !tbaa !24
  %i.ry = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 224
  %i.rz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rc)
  store <16 x bfloat> %i.rz, ptr %i.ry, align 32, !tbaa !24
  %i.sa = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 256
  %i.sb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rd)
  store <16 x bfloat> %i.sb, ptr %i.sa, align 32, !tbaa !24
  %i.sc = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 288
  %i.sd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.re)
  store <16 x bfloat> %i.sd, ptr %i.sc, align 32, !tbaa !24
  %i.se = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 320
  %i.sf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rf)
  store <16 x bfloat> %i.sf, ptr %i.se, align 32, !tbaa !24
  %i.sg = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 352
  %i.sh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rg)
  store <16 x bfloat> %i.sh, ptr %i.sg, align 32, !tbaa !24
  %i.si = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 384
  %i.sj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rh)
  store <16 x bfloat> %i.sj, ptr %i.si, align 32, !tbaa !24
  %i.sk = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 416
  %i.sl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ri)
  store <16 x bfloat> %i.sl, ptr %i.sk, align 32, !tbaa !24
  %i.sm = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 448
  %i.sn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rj)
  store <16 x bfloat> %i.sn, ptr %i.sm, align 32, !tbaa !24
  %i.so = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 480
  %i.sp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rk)
  store <16 x bfloat> %i.sp, ptr %i.so, align 32, !tbaa !24
  %i.sq = getelementptr inbounds nuw i8, ptr %.111641601.us.i, i64 512 ; 3 uses
  %indvars.iv.next2181.i = add nuw nsw i64 %indvars.iv2180.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next2181.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.ax, !llvm.loop !145

._crit_edge.us.i:                                 ; preds = %bb.ax
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.010911619.us.i, i64 %i.ib ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.010961618.us.i, i64 %i.ib
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.010981617.us.i, i64 %i.ib
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.011141616.us.i, i64 %i.ib
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.011151615.us.i, i64 %i.ib
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.011211614.us.i, i64 %i.ib
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.011221613.us.i, i64 %i.ib
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.011241612.us.i, i64 %i.ib
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.011251611.us.i, i64 %i.ib
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.011271610.us.i, i64 %i.ib
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.011281609.us.i, i64 %i.ib
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.011541608.us.i, i64 %i.ib
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.011591607.us.i, i64 %i.ib
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.011601606.us.i, i64 %i.ib
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.011611605.us.i, i64 %i.ib
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.011621604.us.i, i64 %i.ib
  %i.th = add nuw nsw i32 %.011741602.us.i, 16    ; 2 uses
  %i.ti = or disjoint i32 %i.th, 15
  %i.tj = icmp slt i32 %i.ti, %2
  br i1 %i.tj, label %.preheader1596.us.i, label %._crit_edge1620.i, !llvm.loop !146

._crit_edge1620.i:                                ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1298.i
  %.01174.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1298.i ], [ %i.iu, %._crit_edge.us.i ] ; 4 uses
  %.01163.lcssa.i = phi ptr [ %i.lk, %_ZN4ncnn3MatD2Ev.exit1298.i ], [ %i.sq, %._crit_edge.us.i ] ; 3 uses
  %.01091.lcssa.i = phi ptr [ %i.ld, %_ZN4ncnn3MatD2Ev.exit1298.i ], [ %i.sr, %._crit_edge.us.i ] ; 3 uses
  %i.tk = or disjoint i32 %.01174.lcssa.i, 7
  %i.tl = icmp slt i32 %i.tk, %2
  br i1 %i.tl, label %.preheader1595.lr.ph.i, label %.preheader1599.i

._crit_edge1620.thread.i:                         ; preds = %.preheader1596.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.kz, i64 %i.ir
  %scevgep2179.i = getelementptr i8, ptr %scevgep.i, i64 %i.ky ; 2 uses
  br i1 %i.iy, label %.preheader1595.preheader.i, label %.preheader1599.i

.preheader1595.lr.ph.i:                           ; preds = %._crit_edge1620.i
  br i1 %i.hz, label %.preheader1595.us.i, label %.preheader1595.preheader.i

.preheader1595.preheader.i:                       ; preds = %.preheader1595.lr.ph.i, %._crit_edge1620.thread.i
  %.01174.lcssa24492457.i = phi i32 [ %.01174.lcssa.i, %.preheader1595.lr.ph.i ], [ %i.iu, %._crit_edge1620.thread.i ] ; 2 uses
  %.01163.lcssa24502456.i = phi ptr [ %.01163.lcssa.i, %.preheader1595.lr.ph.i ], [ %i.lk, %._crit_edge1620.thread.i ]
  %.01091.lcssa24512455.i = phi ptr [ %.01091.lcssa.i, %.preheader1595.lr.ph.i ], [ %scevgep2179.i, %._crit_edge1620.thread.i ]
  %i.tm = sub i32 %i.iv, %.01174.lcssa24492457.i  ; 2 uses
  %i.tn = lshr i32 %i.tm, 1
  %i.to = and i32 %i.tn, 2147483644
  %narrow2437.i = add nuw i32 %i.to, 4
  %i.tp = zext i32 %narrow2437.i to i64
  %i.tq = mul nsw i64 %i.tp, %i.ih
  %scevgep2183.i = getelementptr i8, ptr %.01091.lcssa24512455.i, i64 %i.tq
  %i.tr = add i32 %.01174.lcssa24492457.i, 8
  %i.ts = and i32 %i.tm, -8
  %i.tt = add i32 %i.tr, %i.ts
  br label %.preheader1599.i

.preheader1595.us.i:                              ; preds = %.preheader1595.lr.ph.i, %._crit_edge.us1637.i
  %.110921633.us.i = phi ptr [ %i.va, %._crit_edge.us1637.i ], [ %.01091.lcssa.i, %.preheader1595.lr.ph.i ] ; 2 uses
  %.211651632.us.i = phi ptr [ %i.uz, %._crit_edge.us1637.i ], [ %.01163.lcssa.i, %.preheader1595.lr.ph.i ]
  %.111751631.us.i = phi i32 [ %i.vb, %._crit_edge.us1637.i ], [ %.01174.lcssa.i, %.preheader1595.lr.ph.i ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.preheader1595.us.i
  %indvars.iv2185.i = phi i64 [ 0, %.preheader1595.us.i ], [ %indvars.iv.next2186.i, %bb.ay ] ; 2 uses
  %.311661630.us.i = phi ptr [ %.211651632.us.i, %.preheader1595.us.i ], [ %i.uz, %bb.ay ] ; 9 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.110921633.us.i, i64 %indvars.iv2185.i ; 2 uses
  %i.tv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.tu, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.tw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tv)
  store <16 x bfloat> %i.tw, ptr %.311661630.us.i, align 32, !tbaa !24
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.if ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 32
  %i.tz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.tx, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.ua = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tz)
  store <16 x bfloat> %i.ua, ptr %i.ty, align 32, !tbaa !24
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.if ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 64
  %i.ud = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ub, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.ue = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ud)
  store <16 x bfloat> %i.ue, ptr %i.uc, align 32, !tbaa !24
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.if ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 96
  %i.uh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uf, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.ui = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.uh)
  store <16 x bfloat> %i.ui, ptr %i.ug, align 32, !tbaa !24
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.if ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 128
  %i.ul = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uj, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.um = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ul)
  store <16 x bfloat> %i.um, ptr %i.uk, align 32, !tbaa !24
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.if ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 160
  %i.up = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.un, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.uq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.up)
  store <16 x bfloat> %i.uq, ptr %i.uo, align 32, !tbaa !24
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.if ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 192
  %i.ut = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ur, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.uu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ut)
  store <16 x bfloat> %i.uu, ptr %i.us, align 32, !tbaa !24
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.if
  %i.uw = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 224
  %i.ux = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.uv, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.uy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ux)
  store <16 x bfloat> %i.uy, ptr %i.uw, align 32, !tbaa !24
  %i.uz = getelementptr inbounds nuw i8, ptr %.311661630.us.i, i64 256 ; 3 uses
  %indvars.iv.next2186.i = add nuw nsw i64 %indvars.iv2185.i, 1 ; 2 uses
  %exitcond2189.not.i = icmp eq i64 %indvars.iv.next2186.i, %wide.trip.count.i
  br i1 %exitcond2189.not.i, label %._crit_edge.us1637.i, label %bb.ay, !llvm.loop !147

._crit_edge.us1637.i:                             ; preds = %bb.ay
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.110921633.us.i, i64 %i.ih ; 2 uses
  %i.vb = add nuw nsw i32 %.111751631.us.i, 8     ; 3 uses
  %i.vc = or disjoint i32 %i.vb, 7
  %i.vd = icmp slt i32 %i.vc, %2
  br i1 %i.vd, label %.preheader1595.us.i, label %.preheader1599.i, !llvm.loop !148

.preheader1599.i:                                 ; preds = %._crit_edge.us1637.i, %.preheader1595.preheader.i, %._crit_edge1620.thread.i, %._crit_edge1620.i
  %.11175.lcssa.i = phi i32 [ %.01174.lcssa.i, %._crit_edge1620.i ], [ %i.iu, %._crit_edge1620.thread.i ], [ %i.tt, %.preheader1595.preheader.i ], [ %i.vb, %._crit_edge.us1637.i ] ; 3 uses
  %.21165.lcssa.i = phi ptr [ %.01163.lcssa.i, %._crit_edge1620.i ], [ %i.lk, %._crit_edge1620.thread.i ], [ %.01163.lcssa24502456.i, %.preheader1595.preheader.i ], [ %i.uz, %._crit_edge.us1637.i ] ; 2 uses
  %.11092.lcssa.i = phi ptr [ %.01091.lcssa.i, %._crit_edge1620.i ], [ %scevgep2179.i, %._crit_edge1620.thread.i ], [ %scevgep2183.i, %.preheader1595.preheader.i ], [ %i.va, %._crit_edge.us1637.i ] ; 2 uses
  %i.ve = or disjoint i32 %.11175.lcssa.i, 3
  %i.vf = icmp slt i32 %i.ve, %2
  br i1 %i.vf, label %.preheader1594.lr.ph.i, label %.preheader1598.i

.preheader1594.lr.ph.i:                           ; preds = %.preheader1599.i
  br i1 %i.hz, label %.preheader1594.us.i, label %._crit_edge1678.split.i

.preheader1594.us.i:                              ; preds = %.preheader1594.lr.ph.i, %._crit_edge.us1653.i
  %.210931649.us.i = phi ptr [ %i.xd, %._crit_edge.us1653.i ], [ %.11092.lcssa.i, %.preheader1594.lr.ph.i ] ; 4 uses
  %.511681648.us.i = phi ptr [ %.lcssa515, %._crit_edge.us1653.i ], [ %.21165.lcssa.i, %.preheader1594.lr.ph.i ] ; 2 uses
  %.211761647.us.i = phi i32 [ %i.xe, %._crit_edge.us1653.i ], [ %.11175.lcssa.i, %.preheader1594.lr.ph.i ]
  br i1 %i.ja, label %.epil.preheader, label %.preheader1594.us.i.new

.preheader1594.us.i.new:                          ; preds = %.preheader1594.us.i, %.preheader1594.us.i.new
  %indvars.iv2192.i = phi i64 [ %indvars.iv.next2193.i.1, %.preheader1594.us.i.new ], [ 0, %.preheader1594.us.i ] ; 3 uses
  %.611691646.us.i = phi ptr [ %i.wm, %.preheader1594.us.i.new ], [ %.511681648.us.i, %.preheader1594.us.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.preheader1594.us.i.new ], [ 0, %.preheader1594.us.i ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.210931649.us.i, i64 %indvars.iv2192.i ; 2 uses
  %i.vh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.vg, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.vi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vh)
  store <16 x bfloat> %i.vi, ptr %.611691646.us.i, align 32, !tbaa !24
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.if ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 32
  %i.vl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vj, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.vm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vl)
  store <16 x bfloat> %i.vm, ptr %i.vk, align 32, !tbaa !24
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.if ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 64
  %i.vp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vn, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.vq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vp)
  store <16 x bfloat> %i.vq, ptr %i.vo, align 32, !tbaa !24
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.if
  %i.vs = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 96
  %i.vt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vr, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.vu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vt)
  store <16 x bfloat> %i.vu, ptr %i.vs, align 32, !tbaa !24
  %i.vv = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 128
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.210931649.us.i, i64 %indvars.iv2192.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4 ; 2 uses
  %i.vy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.vx, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.vz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.vy)
  store <16 x bfloat> %i.vz, ptr %i.vv, align 32, !tbaa !24
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.if ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 160
  %i.wc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wa, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wc)
  store <16 x bfloat> %i.wd, ptr %i.wb, align 32, !tbaa !24
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %i.if ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 192
  %i.wg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.we, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wg)
  store <16 x bfloat> %i.wh, ptr %i.wf, align 32, !tbaa !24
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.if
  %i.wj = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 224
  %i.wk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wi, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wk)
  store <16 x bfloat> %i.wl, ptr %i.wj, align 32, !tbaa !24
  %i.wm = getelementptr inbounds nuw i8, ptr %.611691646.us.i, i64 256 ; 3 uses
  %indvars.iv.next2193.i.1 = add nuw nsw i64 %indvars.iv2192.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1653.i.unr-lcssa, label %.preheader1594.us.i.new, !llvm.loop !149

._crit_edge.us1653.i.unr-lcssa:                   ; preds = %.preheader1594.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1653.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1653.i.unr-lcssa, %.preheader1594.us.i
  %indvars.iv2192.i.epil.init = phi i64 [ 0, %.preheader1594.us.i ], [ %indvars.iv.next2193.i.1, %._crit_edge.us1653.i.unr-lcssa ]
  %.611691646.us.i.epil.init = phi ptr [ %.511681648.us.i, %.preheader1594.us.i ], [ %i.wm, %._crit_edge.us1653.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod523)
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.210931649.us.i, i64 %indvars.iv2192.i.epil.init ; 2 uses
  %i.wo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.wn, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wo)
  store <16 x bfloat> %i.wp, ptr %.611691646.us.i.epil.init, align 32, !tbaa !24
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.if ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.611691646.us.i.epil.init, i64 32
  %i.ws = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wq, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wt = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ws)
  store <16 x bfloat> %i.wt, ptr %i.wr, align 32, !tbaa !24
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.if ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.611691646.us.i.epil.init, i64 64
  %i.ww = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wu, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.wx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ww)
  store <16 x bfloat> %i.wx, ptr %i.wv, align 32, !tbaa !24
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.if
  %i.wz = getelementptr inbounds nuw i8, ptr %.611691646.us.i.epil.init, i64 96
  %i.xa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wy, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.xb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xa)
  store <16 x bfloat> %i.xb, ptr %i.wz, align 32, !tbaa !24
  %i.xc = getelementptr inbounds nuw i8, ptr %.611691646.us.i.epil.init, i64 128
  br label %._crit_edge.us1653.i

._crit_edge.us1653.i:                             ; preds = %._crit_edge.us1653.i.unr-lcssa, %.epil.preheader
  %.lcssa515 = phi ptr [ %i.wm, %._crit_edge.us1653.i.unr-lcssa ], [ %i.xc, %.epil.preheader ] ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.210931649.us.i, i64 %i.ij ; 2 uses
  %i.xe = add nuw nsw i32 %.211761647.us.i, 4     ; 3 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %2
  br i1 %i.xg, label %.preheader1594.us.i, label %.preheader1598.i, !llvm.loop !150

.preheader1598.i:                                 ; preds = %._crit_edge.us1653.i, %.preheader1599.i
  %.21176.lcssa.i = phi i32 [ %.11175.lcssa.i, %.preheader1599.i ], [ %i.xe, %._crit_edge.us1653.i ] ; 3 uses
  %.51168.lcssa.i = phi ptr [ %.21165.lcssa.i, %.preheader1599.i ], [ %.lcssa515, %._crit_edge.us1653.i ] ; 2 uses
  %.21093.lcssa.i = phi ptr [ %.11092.lcssa.i, %.preheader1599.i ], [ %i.xd, %._crit_edge.us1653.i ] ; 2 uses
  %i.xh = or disjoint i32 %.21176.lcssa.i, 1
  %i.xi = icmp slt i32 %i.xh, %2
  br i1 %i.xi, label %.preheader1593.lr.ph.i, label %.preheader1597.i

.preheader1593.lr.ph.i:                           ; preds = %.preheader1598.i
  br i1 %i.hz, label %.preheader1593.us.i, label %._crit_edge1678.split.i

.preheader1593.us.i:                              ; preds = %.preheader1593.lr.ph.i, %._crit_edge.us1669.i
  %.310941665.us.i = phi ptr [ %i.yi, %._crit_edge.us1669.i ], [ %.21093.lcssa.i, %.preheader1593.lr.ph.i ] ; 4 uses
  %.811711664.us.i = phi ptr [ %.lcssa518, %._crit_edge.us1669.i ], [ %.51168.lcssa.i, %.preheader1593.lr.ph.i ] ; 2 uses
  %.311771663.us.i = phi i32 [ %i.yj, %._crit_edge.us1669.i ], [ %.21176.lcssa.i, %.preheader1593.lr.ph.i ]
  br i1 %i.jb, label %.epil.preheader524, label %.preheader1593.us.i.new

.preheader1593.us.i.new:                          ; preds = %.preheader1593.us.i, %.preheader1593.us.i.new
  %indvars.iv2198.i = phi i64 [ %indvars.iv.next2199.i.1, %.preheader1593.us.i.new ], [ 0, %.preheader1593.us.i ] ; 3 uses
  %.911721662.us.i = phi ptr [ %i.xz, %.preheader1593.us.i.new ], [ %.811711664.us.i, %.preheader1593.us.i ] ; 5 uses
  %niter530 = phi i64 [ %niter530.next.1, %.preheader1593.us.i.new ], [ 0, %.preheader1593.us.i ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.310941665.us.i, i64 %indvars.iv2198.i ; 2 uses
  %i.xk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xj, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.xl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xk)
  store <16 x bfloat> %i.xl, ptr %.911721662.us.i, align 32, !tbaa !24
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.if
  %i.xn = getelementptr inbounds nuw i8, ptr %.911721662.us.i, i64 32
  %i.xo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xm, <16 x i32> %i.ie, <16 x i1> splat (i1 true), i32 4)
  %i.xp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xo)
  store <16 x bfloat> %i.xp, ptr %i.xn, align 32, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.911721662.us.i, i64 64
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.310941665.us.i, i64 %indvars.iv2198.i
end_hunk_5
begin_hunk_6_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  %i.abo = icmp ult i64 %i.abm, 3
  %unroll_iter576 = and i64 %wide.trip.count2291.i, 2147483644
  %lcmp.mod573.not = icmp eq i64 %xtraiter571, 0
  %lcmp.mod575 = icmp ne i64 %xtraiter571, 0
  br label %_ZN4ncnn3MatD2Ev.exit1296.i

_ZN4ncnn3MatD2Ev.exit1297.i:                      ; preds = %._crit_edge1774.split.i, %_ZN4ncnn3MatD2Ev.exit1297.lr.ph.i
  %indvars.iv2270.i = phi i64 [ %i.ko, %_ZN4ncnn3MatD2Ev.exit1297.lr.ph.i ], [ %indvars.iv.next2271.i, %._crit_edge1774.split.i ] ; 2 uses
  %indvars.iv2268.i = phi i32 [ %i.kp, %_ZN4ncnn3MatD2Ev.exit1297.lr.ph.i ], [ %indvars.iv.next2269.i, %._crit_edge1774.split.i ] ; 2 uses
  %indvars.iv2213.i = phi i32 [ %i.kj, %_ZN4ncnn3MatD2Ev.exit1297.lr.ph.i ], [ %indvars.iv.next2214.i, %._crit_edge1774.split.i ] ; 2 uses
  %i.abp = sext i32 %indvars.iv2213.i to i64
  %i.abq = shl nsw i64 %i.abp, 2
  %i.abr = load ptr, ptr %0, align 8, !tbaa !18   ; 9 uses
  %i.abs = trunc nuw i64 %indvars.iv2270.i to i32 ; 9 uses
  %i.abt = mul i32 %i.jg, %i.abs
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abu ; 2 uses
  %i.abw = add i32 %i.abs, 1
  %i.abx = mul i32 %i.abw, %i.jg
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.aby ; 2 uses
  %i.aca = add i32 %i.abs, 2
  %i.acb = mul i32 %i.aca, %i.jg
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acc ; 2 uses
  %i.ace = add i32 %i.abs, 3
  %i.acf = mul i32 %i.ace, %i.jg
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acg ; 2 uses
  %i.aci = add i32 %i.abs, 4
  %i.acj = mul i32 %i.aci, %i.jg
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.ack ; 2 uses
  %i.acm = add i32 %i.abs, 5
  %i.acn = mul i32 %i.acm, %i.jg
  %i.aco = sext i32 %i.acn to i64
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.aco ; 2 uses
  %i.acq = add i32 %i.abs, 6
  %i.acr = mul i32 %i.acq, %i.jg
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acs ; 2 uses
  %i.acu = mul i32 %indvars.iv2268.i, %i.jg
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acv ; 2 uses
  %i.acx = lshr i32 %i.abs, 4
  %i.acy = lshr i32 %i.abs, 3
  %i.acz = and i32 %i.acy, 1
  %i.ada = add nuw nsw i32 %i.acz, %i.acx
  %i.adb = load ptr, ptr %1, align 8, !tbaa !18, !noalias !223
  %i.adc = load i64, ptr %i.jh, align 8, !tbaa !25, !noalias !223
  %i.add = zext nneg i32 %i.ada to i64
  %i.ade = mul i64 %i.adc, %i.add
  %i.adf = load i64, ptr %i.ji, align 8, !tbaa !21, !noalias !223
  %i.adg = mul i64 %i.ade, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adg ; 4 uses
  br i1 %i.jp, label %.preheader1587.lr.ph.i, label %.preheader1590.i

.preheader1587.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1297.i
  br i1 %i.jq, label %.preheader1587.us.i, label %.preheader1590.thread.i

.preheader1587.us.i:                              ; preds = %.preheader1587.lr.ph.i, %._crit_edge1683.us.i
  %.012291694.us.i = phi ptr [ %i.afu, %._crit_edge1683.us.i ], [ %i.abv, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012331693.us.i = phi ptr [ %i.afv, %._crit_edge1683.us.i ], [ %i.abz, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012351692.us.i = phi ptr [ %i.afw, %._crit_edge1683.us.i ], [ %i.acd, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012371691.us.i = phi ptr [ %i.afx, %._crit_edge1683.us.i ], [ %i.ach, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012391690.us.i = phi ptr [ %i.afy, %._crit_edge1683.us.i ], [ %i.acl, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012411689.us.i = phi ptr [ %i.afz, %._crit_edge1683.us.i ], [ %i.acp, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012441688.us.i = phi ptr [ %i.aga, %._crit_edge1683.us.i ], [ %i.act, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012461687.us.i = phi ptr [ %i.agb, %._crit_edge1683.us.i ], [ %i.acw, %.preheader1587.lr.ph.i ] ; 2 uses
  %.012481686.us.i = phi ptr [ %i.aft, %._crit_edge1683.us.i ], [ %i.adh, %.preheader1587.lr.ph.i ]
  %.012601685.us.i = phi i32 [ %i.agc, %._crit_edge1683.us.i ], [ 0, %.preheader1587.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1587.us.i
  %indvars.iv2238.i = phi i64 [ 0, %.preheader1587.us.i ], [ %indvars.iv.next2239.i, %bb.ba ] ; 9 uses
  %.112491682.us.i = phi ptr [ %.012481686.us.i, %.preheader1587.us.i ], [ %i.aft, %bb.ba ] ; 9 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.012291694.us.i, i64 %indvars.iv2238.i
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012331693.us.i, i64 %indvars.iv2238.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012351692.us.i, i64 %indvars.iv2238.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012371691.us.i, i64 %indvars.iv2238.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012391690.us.i, i64 %indvars.iv2238.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012411689.us.i, i64 %indvars.iv2238.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012441688.us.i, i64 %indvars.iv2238.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012461687.us.i, i64 %indvars.iv2238.i
  %i.adq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adi, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.jo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aex = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afb = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afe = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aew)
  store <16 x bfloat> %i.afe, ptr %.112491682.us.i, align 1, !tbaa !24
  %i.aff = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 32
  %i.afg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aex)
  store <16 x bfloat> %i.afg, ptr %i.aff, align 1, !tbaa !24
  %i.afh = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 64
  %i.afi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aey)
  store <16 x bfloat> %i.afi, ptr %i.afh, align 1, !tbaa !24
  %i.afj = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 96
  %i.afk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aez)
  store <16 x bfloat> %i.afk, ptr %i.afj, align 1, !tbaa !24
  %i.afl = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 128
  %i.afm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afa)
  store <16 x bfloat> %i.afm, ptr %i.afl, align 1, !tbaa !24
  %i.afn = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 160
  %i.afo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afb)
  store <16 x bfloat> %i.afo, ptr %i.afn, align 1, !tbaa !24
  %i.afp = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 192
  %i.afq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afc)
  store <16 x bfloat> %i.afq, ptr %i.afp, align 1, !tbaa !24
  %i.afr = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 224
  %i.afs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afd)
  store <16 x bfloat> %i.afs, ptr %i.afr, align 1, !tbaa !24
  %i.aft = getelementptr inbounds nuw i8, ptr %.112491682.us.i, i64 256 ; 3 uses
  %indvars.iv.next2239.i = add nuw nsw i64 %indvars.iv2238.i, 1 ; 2 uses
  %exitcond2242.not.i = icmp eq i64 %indvars.iv.next2239.i, %wide.trip.count2241.i
  br i1 %exitcond2242.not.i, label %._crit_edge1683.us.i, label %bb.ba, !llvm.loop !159

._crit_edge1683.us.i:                             ; preds = %bb.ba
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %.012291694.us.i, i64 %i.js ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.012331693.us.i, i64 %i.js ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.012351692.us.i, i64 %i.js ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.012371691.us.i, i64 %i.js ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.012391690.us.i, i64 %i.js ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.012411689.us.i, i64 %i.js ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.012441688.us.i, i64 %i.js ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.012461687.us.i, i64 %i.js ; 2 uses
  %i.agc = add nuw nsw i32 %.012601685.us.i, 16   ; 2 uses
  %i.agd = or disjoint i32 %i.agc, 15
  %i.age = icmp slt i32 %i.agd, %2
  br i1 %i.age, label %.preheader1587.us.i, label %.preheader1590.i, !llvm.loop !160

.preheader1590.i:                                 ; preds = %._crit_edge1683.us.i, %_ZN4ncnn3MatD2Ev.exit1297.i
  %.01260.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.km, %._crit_edge1683.us.i ] ; 4 uses
  %.01248.lcssa.i = phi ptr [ %i.adh, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.aft, %._crit_edge1683.us.i ] ; 3 uses
  %.01246.lcssa.i = phi ptr [ %i.acw, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.agb, %._crit_edge1683.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.act, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.aga, %._crit_edge1683.us.i ]
  %.01241.lcssa.i = phi ptr [ %i.acp, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afz, %._crit_edge1683.us.i ]
  %.01239.lcssa.i = phi ptr [ %i.acl, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afy, %._crit_edge1683.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.ach, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afx, %._crit_edge1683.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.acd, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afw, %._crit_edge1683.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.abz, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afv, %._crit_edge1683.us.i ]
  %.01229.lcssa.i = phi ptr [ %i.abv, %_ZN4ncnn3MatD2Ev.exit1297.i ], [ %i.afu, %._crit_edge1683.us.i ] ; 3 uses
  %i.agf = or disjoint i32 %.01260.lcssa.i, 7
  %i.agg = icmp slt i32 %i.agf, %2
  br i1 %i.agg, label %.preheader1586.lr.ph.i, label %._crit_edge1729.i

.preheader1590.thread.i:                          ; preds = %.preheader1587.lr.ph.i
  %scevgep2212.i = getelementptr i8, ptr %i.abr, i64 %i.ki
  %scevgep2215.i = getelementptr i8, ptr %scevgep2212.i, i64 %i.abq ; 2 uses
  br i1 %i.ks, label %.preheader1586.preheader.i, label %._crit_edge1729.i

.preheader1586.lr.ph.i:                           ; preds = %.preheader1590.i
  br i1 %i.jq, label %.preheader1586.us.i, label %.preheader1586.preheader.i

.preheader1586.preheader.i:                       ; preds = %.preheader1586.lr.ph.i, %.preheader1590.thread.i
  %.01260.lcssa24842506.i = phi i32 [ %.01260.lcssa.i, %.preheader1586.lr.ph.i ], [ %i.km, %.preheader1590.thread.i ] ; 2 uses
  %.01248.lcssa24852505.i = phi ptr [ %.01248.lcssa.i, %.preheader1586.lr.ph.i ], [ %i.adh, %.preheader1590.thread.i ]
  %.01229.lcssa24932504.i = phi ptr [ %.01229.lcssa.i, %.preheader1586.lr.ph.i ], [ %scevgep2215.i, %.preheader1590.thread.i ]
  %i.agh = sub i32 %i.kn, %.01260.lcssa24842506.i ; 2 uses
  %i.agi = lshr i32 %i.agh, 1
  %i.agj = and i32 %i.agi, 2147483644
  %narrow2439.i = add nuw i32 %i.agj, 4
  %i.agk = zext i32 %narrow2439.i to i64
  %i.agl = mul nsw i64 %i.agk, %i.ju
  %scevgep2243.i = getelementptr i8, ptr %.01229.lcssa24932504.i, i64 %i.agl
  %i.agm = add i32 %.01260.lcssa24842506.i, 8
  %i.agn = and i32 %i.agh, -8
  %i.ago = add i32 %i.agm, %i.agn
  br label %._crit_edge1729.i

.preheader1586.us.i:                              ; preds = %.preheader1586.lr.ph.i, %._crit_edge1717.us.i
  %.112301728.us.i = phi ptr [ %i.ait, %._crit_edge1717.us.i ], [ %.01229.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112341727.us.i = phi ptr [ %i.aiu, %._crit_edge1717.us.i ], [ %.01233.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112361726.us.i = phi ptr [ %i.aiv, %._crit_edge1717.us.i ], [ %.01235.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112381725.us.i = phi ptr [ %i.aiw, %._crit_edge1717.us.i ], [ %.01237.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112401724.us.i = phi ptr [ %i.aix, %._crit_edge1717.us.i ], [ %.01239.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112421723.us.i = phi ptr [ %i.aiy, %._crit_edge1717.us.i ], [ %.01241.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112451722.us.i = phi ptr [ %i.aiz, %._crit_edge1717.us.i ], [ %.01244.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.112471721.us.i = phi ptr [ %i.aja, %._crit_edge1717.us.i ], [ %.01246.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.212501720.us.i = phi ptr [ %i.ais, %._crit_edge1717.us.i ], [ %.01248.lcssa.i, %.preheader1586.lr.ph.i ]
  %.112611719.us.i = phi i32 [ %i.ajb, %._crit_edge1717.us.i ], [ %.01260.lcssa.i, %.preheader1586.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1586.us.i
  %indvars.iv2244.i = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2245.i, %bb.bb ] ; 9 uses
  %.312511715.us.i = phi ptr [ %.212501720.us.i, %.preheader1586.us.i ], [ %i.ais, %bb.bb ] ; 9 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %.112301728.us.i, i64 %indvars.iv2244.i
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.112341727.us.i, i64 %indvars.iv2244.i
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.112361726.us.i, i64 %indvars.iv2244.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.112381725.us.i, i64 %indvars.iv2244.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.112401724.us.i, i64 %indvars.iv2244.i
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.112421723.us.i, i64 %indvars.iv2244.i
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.112451722.us.i, i64 %indvars.iv2244.i
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.112471721.us.i, i64 %indvars.iv2244.i
  %i.agx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agp, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agq, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agr, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aha = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ags, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agt, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agu, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agv, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agw, <8 x i32> %i.jl, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahf = shufflevector <8 x float> %i.agx, <8 x float> %i.agy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahg = shufflevector <8 x float> %i.agx, <8 x float> %i.agy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahh = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahi = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahj = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahn = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.aho = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahp = shufflevector <8 x float> %i.ahg, <8 x float> %i.ahi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahq = shufflevector <8 x float> %i.ahg, <8 x float> %i.ahi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahr = shufflevector <8 x float> %i.ahj, <8 x float> %i.ahl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahs = shufflevector <8 x float> %i.ahj, <8 x float> %i.ahl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aht = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahu = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahv = shufflevector <8 x float> %i.ahn, <8 x float> %i.ahr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahw = shufflevector <8 x float> %i.aho, <8 x float> %i.ahs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahx = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahy = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahz = shufflevector <8 x float> %i.ahn, <8 x float> %i.ahr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aia = shufflevector <8 x float> %i.aho, <8 x float> %i.ahs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aib = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aic = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aid = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahv)
  store <8 x bfloat> %i.aid, ptr %.312511715.us.i, align 16, !tbaa !24
  %i.aie = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 16
  %i.aif = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahw)
  store <8 x bfloat> %i.aif, ptr %i.aie, align 16, !tbaa !24
  %i.aig = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 32
  %i.aih = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahx)
  store <8 x bfloat> %i.aih, ptr %i.aig, align 16, !tbaa !24
  %i.aii = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 48
  %i.aij = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahy)
  store <8 x bfloat> %i.aij, ptr %i.aii, align 16, !tbaa !24
  %i.aik = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 64
  %i.ail = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahz)
  store <8 x bfloat> %i.ail, ptr %i.aik, align 16, !tbaa !24
  %i.aim = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 80
  %i.ain = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aia)
  store <8 x bfloat> %i.ain, ptr %i.aim, align 16, !tbaa !24
  %i.aio = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 96
  %i.aip = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aib)
  store <8 x bfloat> %i.aip, ptr %i.aio, align 16, !tbaa !24
  %i.aiq = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 112
  %i.air = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aic)
  store <8 x bfloat> %i.air, ptr %i.aiq, align 16, !tbaa !24
  %i.ais = getelementptr inbounds nuw i8, ptr %.312511715.us.i, i64 128 ; 3 uses
  %indvars.iv.next2245.i = add nuw nsw i64 %indvars.iv2244.i, 1 ; 2 uses
  %exitcond2248.not.i = icmp eq i64 %indvars.iv.next2245.i, %wide.trip.count2241.i
  br i1 %exitcond2248.not.i, label %._crit_edge1717.us.i, label %bb.bb, !llvm.loop !161

._crit_edge1717.us.i:                             ; preds = %bb.bb
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.112301728.us.i, i64 %i.ju ; 2 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.112341727.us.i, i64 %i.ju
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %.112361726.us.i, i64 %i.ju
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.112381725.us.i, i64 %i.ju
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.112401724.us.i, i64 %i.ju
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.112421723.us.i, i64 %i.ju
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.112451722.us.i, i64 %i.ju
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %.112471721.us.i, i64 %i.ju
  %i.ajb = add nuw nsw i32 %.112611719.us.i, 8    ; 3 uses
  %i.ajc = or disjoint i32 %i.ajb, 7
  %i.ajd = icmp slt i32 %i.ajc, %2
  br i1 %i.ajd, label %.preheader1586.us.i, label %._crit_edge1729.i, !llvm.loop !162

._crit_edge1729.i:                                ; preds = %._crit_edge1717.us.i, %.preheader1586.preheader.i, %.preheader1590.thread.i, %.preheader1590.i
  %.11261.lcssa.i = phi i32 [ %.01260.lcssa.i, %.preheader1590.i ], [ %i.km, %.preheader1590.thread.i ], [ %i.ago, %.preheader1586.preheader.i ], [ %i.ajb, %._crit_edge1717.us.i ] ; 3 uses
  %.21250.lcssa.i = phi ptr [ %.01248.lcssa.i, %.preheader1590.i ], [ %i.adh, %.preheader1590.thread.i ], [ %.01248.lcssa24852505.i, %.preheader1586.preheader.i ], [ %i.ais, %._crit_edge1717.us.i ] ; 2 uses
  %.11230.lcssa.i = phi ptr [ %.01229.lcssa.i, %.preheader1590.i ], [ %scevgep2215.i, %.preheader1590.thread.i ], [ %scevgep2243.i, %.preheader1586.preheader.i ], [ %i.ait, %._crit_edge1717.us.i ] ; 2 uses
  %i.aje = or disjoint i32 %.11261.lcssa.i, 3
  %i.ajf = icmp slt i32 %i.aje, %2
  br i1 %i.ajf, label %.preheader1585.lr.ph.i, label %.preheader1589.i

.preheader1585.lr.ph.i:                           ; preds = %._crit_edge1729.i
  br i1 %i.jq, label %.preheader1585.us.i, label %._crit_edge1774.split.i

.preheader1585.us.i:                              ; preds = %.preheader1585.lr.ph.i, %._crit_edge1741.us.i
  %.212311745.us.i = phi ptr [ %i.ald, %._crit_edge1741.us.i ], [ %.11230.lcssa.i, %.preheader1585.lr.ph.i ] ; 4 uses
  %.412521744.us.i = phi ptr [ %.lcssa503, %._crit_edge1741.us.i ], [ %.21250.lcssa.i, %.preheader1585.lr.ph.i ] ; 2 uses
  %.212621743.us.i = phi i32 [ %i.ale, %._crit_edge1741.us.i ], [ %.11261.lcssa.i, %.preheader1585.lr.ph.i ]
  br i1 %i.ku, label %.epil.preheader538, label %.preheader1585.us.i.new

.preheader1585.us.i.new:                          ; preds = %.preheader1585.us.i, %.preheader1585.us.i.new
  %indvars.iv2251.i = phi i64 [ %indvars.iv.next2252.i.1, %.preheader1585.us.i.new ], [ 0, %.preheader1585.us.i ] ; 3 uses
  %.512531739.us.i = phi ptr [ %i.akm, %.preheader1585.us.i.new ], [ %.412521744.us.i, %.preheader1585.us.i ] ; 9 uses
  %niter545 = phi i64 [ %niter545.next.1, %.preheader1585.us.i.new ], [ 0, %.preheader1585.us.i ]
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %.212311745.us.i, i64 %indvars.iv2251.i ; 2 uses
  %i.ajh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajg, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aji = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajh)
  store <8 x bfloat> %i.aji, ptr %.512531739.us.i, align 16, !tbaa !24
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.jy ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 16
  %i.ajl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajj, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajl)
  store <8 x bfloat> %i.ajm, ptr %i.ajk, align 16, !tbaa !24
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %i.jy ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 32
  %i.ajp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajn, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajp)
  store <8 x bfloat> %i.ajq, ptr %i.ajo, align 16, !tbaa !24
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %i.jy
  %i.ajs = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 48
  %i.ajt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajr, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aju = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajt)
  store <8 x bfloat> %i.aju, ptr %i.ajs, align 16, !tbaa !24
  %i.ajv = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 64
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %.212311745.us.i, i64 %indvars.iv2251.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4 ; 2 uses
  %i.ajy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ajx, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajy)
  store <8 x bfloat> %i.ajz, ptr %i.ajv, align 16, !tbaa !24
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.jy ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 80
  %i.akc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aka, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akc)
  store <8 x bfloat> %i.akd, ptr %i.akb, align 16, !tbaa !24
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.jy ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 96
  %i.akg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ake, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akg)
  store <8 x bfloat> %i.akh, ptr %i.akf, align 16, !tbaa !24
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %i.jy
  %i.akj = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 112
  %i.akk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aki, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akk)
  store <8 x bfloat> %i.akl, ptr %i.akj, align 16, !tbaa !24
  %i.akm = getelementptr inbounds nuw i8, ptr %.512531739.us.i, i64 128 ; 3 uses
  %indvars.iv.next2252.i.1 = add nuw nsw i64 %indvars.iv2251.i, 2 ; 2 uses
  %niter545.next.1 = add i64 %niter545, 2         ; 2 uses
  %niter545.ncmp.1 = icmp eq i64 %niter545.next.1, %unroll_iter544
  br i1 %niter545.ncmp.1, label %._crit_edge1741.us.i.unr-lcssa, label %.preheader1585.us.i.new, !llvm.loop !163

._crit_edge1741.us.i.unr-lcssa:                   ; preds = %.preheader1585.us.i.new
  br i1 %lcmp.mod541.not, label %._crit_edge1741.us.i, label %.epil.preheader538

.epil.preheader538:                               ; preds = %._crit_edge1741.us.i.unr-lcssa, %.preheader1585.us.i
  %indvars.iv2251.i.epil.init = phi i64 [ 0, %.preheader1585.us.i ], [ %indvars.iv.next2252.i.1, %._crit_edge1741.us.i.unr-lcssa ]
  %.512531739.us.i.epil.init = phi ptr [ %.412521744.us.i, %.preheader1585.us.i ], [ %i.akm, %._crit_edge1741.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod543)
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %.212311745.us.i, i64 %indvars.iv2251.i.epil.init ; 2 uses
  %i.ako = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akn, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ako)
  store <8 x bfloat> %i.akp, ptr %.512531739.us.i.epil.init, align 16, !tbaa !24
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %i.jy ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.512531739.us.i.epil.init, i64 16
  %i.aks = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akq, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aks)
  store <8 x bfloat> %i.akt, ptr %i.akr, align 16, !tbaa !24
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.jy ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.512531739.us.i.epil.init, i64 32
  %i.akw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aku, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akw)
  store <8 x bfloat> %i.akx, ptr %i.akv, align 16, !tbaa !24
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.jy
  %i.akz = getelementptr inbounds nuw i8, ptr %.512531739.us.i.epil.init, i64 48
  %i.ala = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aky, <8 x i32> %i.jx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ala)
  store <8 x bfloat> %i.alb, ptr %i.akz, align 16, !tbaa !24
  %i.alc = getelementptr inbounds nuw i8, ptr %.512531739.us.i.epil.init, i64 64
  br label %._crit_edge1741.us.i

._crit_edge1741.us.i:                             ; preds = %._crit_edge1741.us.i.unr-lcssa, %.epil.preheader538
  %.lcssa503 = phi ptr [ %i.akm, %._crit_edge1741.us.i.unr-lcssa ], [ %i.alc, %.epil.preheader538 ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  %i.aok = shl i32 %4, 1
  %i.aol = sext i32 %i.aok to i64                 ; 2 uses
  %i.aom = icmp slt i32 %4, 1
  %i.aon = add i32 %2, -16                        ; 2 uses
  %i.aoo = lshr i32 %i.aon, 2
  %i.aop = and i32 %i.aoo, 1073741820
  %narrow2442.i = add nuw nsw i32 %i.aop, 4
  %i.aoq = zext nneg i32 %narrow2442.i to i64
  %i.aor = mul nsw i64 %i.aoq, %i.aoe
  %i.aos = mul i32 %i.anp, %.2.lcssa.i
  %i.aot = shl i32 %i.anp, 1                      ; 2 uses
  %i.aou = mul i32 %i.ann, %i.anp
  %i.aov = and i32 %i.aon, -16
  %i.aow = add nuw i32 %i.aov, 16                 ; 4 uses
  %i.aox = add i32 %2, -8
  %i.aoy = sext i32 %.2.lcssa.i to i64
  %i.aoz = sext i32 %3 to i64
  %i.apa = or disjoint i32 %i.aow, 7
  %i.apb = icmp slt i32 %i.apa, %2
  %wide.trip.count2333.i = zext i32 %4 to i64     ; 19 uses
  %i.apc = add nsw i64 %wide.trip.count2333.i, -1 ; 3 uses
  %xtraiter579 = and i64 %wide.trip.count2333.i, 1
  %i.apd = icmp eq i64 %i.apc, 0
  %unroll_iter584 = and i64 %wide.trip.count2333.i, 2147483646
  %lcmp.mod581.not = icmp eq i64 %xtraiter579, 0
  %lcmp.mod583 = trunc i32 %4 to i1
  %xtraiter587 = and i64 %wide.trip.count2333.i, 1
  %i.ape = icmp eq i64 %i.apc, 0
  %unroll_iter592 = and i64 %wide.trip.count2333.i, 2147483646
  %lcmp.mod589.not = icmp eq i64 %xtraiter587, 0
  %lcmp.mod591 = trunc i32 %4 to i1
  %xtraiter595 = and i64 %wide.trip.count2333.i, 1
  %i.apf = icmp eq i64 %i.apc, 0
  %unroll_iter600 = and i64 %wide.trip.count2333.i, 2147483646
  %lcmp.mod597.not = icmp eq i64 %xtraiter595, 0
  %lcmp.mod599 = trunc i32 %4 to i1
  %min.iters.check333 = icmp ult i32 %4, 4
  %min.iters.check335 = icmp ult i32 %4, 16
  %i.apg = and i64 %wide.trip.count2333.i, 12
  %n.vec337 = and i64 %wide.trip.count2333.i, 2147483632 ; 5 uses
  %i.aph = shl nuw nsw i64 %n.vec337, 3
  %cmp.n348 = icmp eq i64 %n.vec337, %wide.trip.count2333.i
  %min.epilog.iters.check353 = icmp eq i64 %i.apg, 0
  %n.vec355 = and i64 %wide.trip.count2333.i, 2147483644 ; 4 uses
  %i.api = shl nuw nsw i64 %n.vec355, 3
  %cmp.n366 = icmp eq i64 %n.vec355, %wide.trip.count2333.i
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check321 = icmp ult i32 %4, 16
  %i.apj = and i64 %wide.trip.count2333.i, 12
  %n.vec = and i64 %wide.trip.count2333.i, 2147483632 ; 5 uses
  %i.apk = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2333.i
  %min.epilog.iters.check = icmp eq i64 %i.apj, 0
  %n.vec323 = and i64 %wide.trip.count2333.i, 2147483644 ; 4 uses
  %i.apl = shl nuw nsw i64 %n.vec323, 2
  %cmp.n330 = icmp eq i64 %n.vec323, %wide.trip.count2333.i
  br label %_ZN4ncnn3MatD2Ev.exit1295.i

_ZN4ncnn3MatD2Ev.exit1296.i:                      ; preds = %._crit_edge1860.split.i, %_ZN4ncnn3MatD2Ev.exit1296.lr.ph.i
  %indvars.iv2320.i = phi i64 [ %i.abg, %_ZN4ncnn3MatD2Ev.exit1296.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1860.split.i ] ; 2 uses
  %i.apm = phi i32 [ %i.zo, %_ZN4ncnn3MatD2Ev.exit1296.lr.ph.i ], [ %i.ayv, %._crit_edge1860.split.i ]
  %i.apn = phi <4 x i32> [ %i.abc, %_ZN4ncnn3MatD2Ev.exit1296.lr.ph.i ], [ %i.ayu, %._crit_edge1860.split.i ] ; 2 uses
  %i.apo = sext <4 x i32> %i.apn to <4 x i64>
  %i.app = shl nsw <4 x i64> %i.apo, splat (i64 2) ; 4 uses
  %i.apq = load ptr, ptr %0, align 8, !tbaa !18   ; 5 uses
  %i.apr = trunc i64 %indvars.iv2320.i to i32     ; 6 uses
  %i.aps = mul i32 %i.aay, %i.apr
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.apt ; 2 uses
  %i.apv = add i32 %i.apr, 1
  %i.apw = mul i32 %i.apv, %i.aay
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.apx ; 2 uses
  %i.apz = add i32 %i.apr, 2
  %i.aqa = mul i32 %i.apz, %i.aay
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.aqb ; 2 uses
  %i.aqd = mul i32 %i.apm, %i.aay
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.aqe ; 2 uses
  %i.aqg = lshr i32 %i.apr, 4
  %i.aqh = lshr i32 %i.apr, 3
  %i.aqi = and i32 %i.aqh, 1
  %i.aqj = add nuw nsw i32 %i.aqi, %i.aqg
  %i.aqk = lshr i32 %i.apr, 2
  %i.aql = and i32 %i.aqk, 1
  %i.aqm = add nuw nsw i32 %i.aqj, %i.aql
  %i.aqn = load ptr, ptr %1, align 8, !tbaa !18, !noalias !224
  %i.aqo = load i64, ptr %i.zt, align 8, !tbaa !25, !noalias !224
  %i.aqp = zext nneg i32 %i.aqm to i64
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = load i64, ptr %i.zu, align 8, !tbaa !21, !noalias !224
  %i.aqs = mul i64 %i.aqq, %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqs ; 4 uses
  br i1 %i.aae, label %.preheader1578.lr.ph.i, label %.preheader1581.i

.preheader1578.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1296.i
  br i1 %i.aaf, label %.preheader1578.us.i, label %.preheader1581.thread.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1779.us.i
  %.011901786.us.i = phi i32 [ %i.asa, %._crit_edge1779.us.i ], [ 0, %.preheader1578.lr.ph.i ]
  %.011951785.us.i = phi ptr [ %i.arv, %._crit_edge1779.us.i ], [ %i.aqt, %.preheader1578.lr.ph.i ]
  %.012061784.us.i = phi ptr [ %i.arz, %._crit_edge1779.us.i ], [ %i.aqf, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012091783.us.i = phi ptr [ %i.ary, %._crit_edge1779.us.i ], [ %i.aqc, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012121782.us.i = phi ptr [ %i.arx, %._crit_edge1779.us.i ], [ %i.apy, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012151781.us.i = phi ptr [ %i.arw, %._crit_edge1779.us.i ], [ %i.apu, %.preheader1578.lr.ph.i ] ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader1578.us.i
  %indvars.iv2288.i = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2289.i, %bb.bd ] ; 5 uses
  %.111961777.us.i = phi ptr [ %.011951785.us.i, %.preheader1578.us.i ], [ %i.arv, %bb.bd ] ; 5 uses
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.012151781.us.i, i64 %indvars.iv2288.i
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012121782.us.i, i64 %indvars.iv2288.i
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.012091783.us.i, i64 %indvars.iv2288.i
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.012061784.us.i, i64 %indvars.iv2288.i
  %i.aqy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqu, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqw, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqx, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arc = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.are = shufflevector <16 x float> %i.ara, <16 x float> %i.arb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.ara, <16 x float> %i.arb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arj = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ark = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arl = shufflevector <16 x float> %i.ari, <16 x float> %i.arj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arm = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arn = shufflevector <16 x float> %i.ari, <16 x float> %i.arj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aro = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ark)
  store <16 x bfloat> %i.aro, ptr %.111961777.us.i, align 1, !tbaa !24
  %i.arp = getelementptr inbounds nuw i8, ptr %.111961777.us.i, i64 32
  %i.arq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arl)
  store <16 x bfloat> %i.arq, ptr %i.arp, align 1, !tbaa !24
  %i.arr = getelementptr inbounds nuw i8, ptr %.111961777.us.i, i64 64
  %i.ars = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arm)
  store <16 x bfloat> %i.ars, ptr %i.arr, align 1, !tbaa !24
  %i.art = getelementptr inbounds nuw i8, ptr %.111961777.us.i, i64 96
  %i.aru = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arn)
  store <16 x bfloat> %i.aru, ptr %i.art, align 1, !tbaa !24
  %i.arv = getelementptr inbounds nuw i8, ptr %.111961777.us.i, i64 128 ; 3 uses
  %indvars.iv.next2289.i = add nuw nsw i64 %indvars.iv2288.i, 1 ; 2 uses
  %exitcond2292.not.i = icmp eq i64 %indvars.iv.next2289.i, %wide.trip.count2291.i
  br i1 %exitcond2292.not.i, label %._crit_edge1779.us.i, label %bb.bd, !llvm.loop !173

._crit_edge1779.us.i:                             ; preds = %bb.bd
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %.012151781.us.i, i64 %i.aah ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %.012121782.us.i, i64 %i.aah ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.012091783.us.i, i64 %i.aah ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.012061784.us.i, i64 %i.aah ; 2 uses
  %i.asa = add nuw nsw i32 %.011901786.us.i, 16   ; 2 uses
  %i.asb = or disjoint i32 %i.asa, 15
  %i.asc = icmp slt i32 %i.asb, %2
  br i1 %i.asc, label %.preheader1578.us.i, label %.preheader1581.i, !llvm.loop !174

.preheader1581.i:                                 ; preds = %._crit_edge1779.us.i, %_ZN4ncnn3MatD2Ev.exit1296.i
  %.01215.lcssa.i = phi ptr [ %i.apu, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.arw, %._crit_edge1779.us.i ] ; 3 uses
  %.01212.lcssa.i = phi ptr [ %i.apy, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.arx, %._crit_edge1779.us.i ] ; 3 uses
  %.01209.lcssa.i = phi ptr [ %i.aqc, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.ary, %._crit_edge1779.us.i ] ; 3 uses
  %.01206.lcssa.i = phi ptr [ %i.aqf, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.arz, %._crit_edge1779.us.i ] ; 3 uses
  %.01195.lcssa.i = phi ptr [ %i.aqt, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.arv, %._crit_edge1779.us.i ] ; 3 uses
  %.01190.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1296.i ], [ %i.abe, %._crit_edge1779.us.i ] ; 4 uses
  %i.asd = or disjoint i32 %.01190.lcssa.i, 7
  %i.ase = icmp slt i32 %i.asd, %2
  br i1 %i.ase, label %.preheader1577.lr.ph.i, label %.preheader1580.i

.preheader1581.thread.i:                          ; preds = %.preheader1578.lr.ph.i
  %scevgep2275.i = getelementptr i8, ptr %i.apq, i64 %i.aax ; 4 uses
  %i.asf = extractelement <4 x i64> %i.app, i64 0
  %scevgep2278.i = getelementptr i8, ptr %scevgep2275.i, i64 %i.asf ; 2 uses
  %i.asg = extractelement <4 x i64> %i.app, i64 1
  %scevgep2281.i = getelementptr i8, ptr %scevgep2275.i, i64 %i.asg ; 2 uses
  %i.ash = extractelement <4 x i64> %i.app, i64 2
  %scevgep2284.i = getelementptr i8, ptr %scevgep2275.i, i64 %i.ash ; 2 uses
  %i.asi = extractelement <4 x i64> %i.app, i64 3
  %scevgep2287.i = getelementptr i8, ptr %scevgep2275.i, i64 %i.asi ; 2 uses
  br i1 %i.abj, label %.preheader1577.preheader.i, label %.preheader1580.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1581.i
  br i1 %i.aaf, label %.preheader1577.us.i, label %.preheader1577.preheader.i

.preheader1577.preheader.i:                       ; preds = %.preheader1577.lr.ph.i, %.preheader1581.thread.i
  %.01215.lcssa25292546.i = phi ptr [ %.01215.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2278.i, %.preheader1581.thread.i ]
  %.01212.lcssa25302545.i = phi ptr [ %.01212.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2281.i, %.preheader1581.thread.i ]
  %.01209.lcssa25312544.i = phi ptr [ %.01209.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2284.i, %.preheader1581.thread.i ]
  %.01206.lcssa25322543.i = phi ptr [ %.01206.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2287.i, %.preheader1581.thread.i ]
  %.01195.lcssa25332542.i = phi ptr [ %.01195.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.aqt, %.preheader1581.thread.i ]
  %.01190.lcssa25342541.i = phi i32 [ %.01190.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.abe, %.preheader1581.thread.i ] ; 2 uses
  %i.asj = sub i32 %i.abf, %.01190.lcssa25342541.i ; 2 uses
  %i.ask = lshr i32 %i.asj, 1
  %i.asl = and i32 %i.ask, 2147483644
  %narrow2441.i = add nuw i32 %i.asl, 4
  %i.asm = zext i32 %narrow2441.i to i64
  %i.asn = mul nsw i64 %i.asm, %i.aaj             ; 4 uses
  %scevgep2293.i = getelementptr i8, ptr %.01215.lcssa25292546.i, i64 %i.asn
  %scevgep2294.i = getelementptr i8, ptr %.01212.lcssa25302545.i, i64 %i.asn
  %scevgep2295.i = getelementptr i8, ptr %.01209.lcssa25312544.i, i64 %i.asn
  %scevgep2296.i = getelementptr i8, ptr %.01206.lcssa25322543.i, i64 %i.asn
  %i.aso = add i32 %.01190.lcssa25342541.i, 8
  %i.asp = and i32 %i.asj, -8
  %i.asq = add i32 %i.aso, %i.asp
  br label %.preheader1580.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1801.us.i
  %.111911808.us.i = phi i32 [ %i.att, %._crit_edge1801.us.i ], [ %.01190.lcssa.i, %.preheader1577.lr.ph.i ]
  %.211971807.us.i = phi ptr [ %i.ato, %._crit_edge1801.us.i ], [ %.01195.lcssa.i, %.preheader1577.lr.ph.i ]
  %.112071806.us.i = phi ptr [ %i.ats, %._crit_edge1801.us.i ], [ %.01206.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112101805.us.i = phi ptr [ %i.atr, %._crit_edge1801.us.i ], [ %.01209.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112131804.us.i = phi ptr [ %i.atq, %._crit_edge1801.us.i ], [ %.01212.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.112161803.us.i = phi ptr [ %i.atp, %._crit_edge1801.us.i ], [ %.01215.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1577.us.i
  %indvars.iv2297.i = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2298.i, %bb.be ] ; 5 uses
  %.311981799.us.i = phi ptr [ %.211971807.us.i, %.preheader1577.us.i ], [ %i.ato, %bb.be ] ; 5 uses
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %.112161803.us.i, i64 %indvars.iv2297.i
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %.112131804.us.i, i64 %indvars.iv2297.i
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112101805.us.i, i64 %indvars.iv2297.i
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.112071806.us.i, i64 %indvars.iv2297.i
  %i.asv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asr, <8 x i32> %i.aaa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ass, <8 x i32> %i.aaa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ast, <8 x i32> %i.aaa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asu, <8 x i32> %i.aaa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asz = shufflevector <8 x float> %i.asv, <8 x float> %i.asw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ata = shufflevector <8 x float> %i.asv, <8 x float> %i.asw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atb = shufflevector <8 x float> %i.asx, <8 x float> %i.asy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atc = shufflevector <8 x float> %i.asx, <8 x float> %i.asy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atd = shufflevector <8 x float> %i.asz, <8 x float> %i.atb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ate = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atf = shufflevector <8 x float> %i.asz, <8 x float> %i.atb, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.atg = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ath = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atd)
  store <8 x bfloat> %i.ath, ptr %.311981799.us.i, align 1, !tbaa !24
  %i.ati = getelementptr inbounds nuw i8, ptr %.311981799.us.i, i64 16
  %i.atj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ate)
  store <8 x bfloat> %i.atj, ptr %i.ati, align 1, !tbaa !24
  %i.atk = getelementptr inbounds nuw i8, ptr %.311981799.us.i, i64 32
  %i.atl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atf)
  store <8 x bfloat> %i.atl, ptr %i.atk, align 1, !tbaa !24
  %i.atm = getelementptr inbounds nuw i8, ptr %.311981799.us.i, i64 48
  %i.atn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atg)
  store <8 x bfloat> %i.atn, ptr %i.atm, align 1, !tbaa !24
  %i.ato = getelementptr inbounds nuw i8, ptr %.311981799.us.i, i64 64 ; 3 uses
  %indvars.iv.next2298.i = add nuw nsw i64 %indvars.iv2297.i, 1 ; 2 uses
  %exitcond2301.not.i = icmp eq i64 %indvars.iv.next2298.i, %wide.trip.count2291.i
  br i1 %exitcond2301.not.i, label %._crit_edge1801.us.i, label %bb.be, !llvm.loop !175

._crit_edge1801.us.i:                             ; preds = %bb.be
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %.112161803.us.i, i64 %i.aaj ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.112131804.us.i, i64 %i.aaj ; 2 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.112101805.us.i, i64 %i.aaj ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.112071806.us.i, i64 %i.aaj ; 2 uses
  %i.att = add nuw nsw i32 %.111911808.us.i, 8    ; 3 uses
  %i.atu = or disjoint i32 %i.att, 7
  %i.atv = icmp slt i32 %i.atu, %2
  br i1 %i.atv, label %.preheader1577.us.i, label %.preheader1580.i, !llvm.loop !176

.preheader1580.i:                                 ; preds = %._crit_edge1801.us.i, %.preheader1577.preheader.i, %.preheader1581.thread.i, %.preheader1581.i
  %.11216.lcssa.i = phi ptr [ %.01215.lcssa.i, %.preheader1581.i ], [ %scevgep2278.i, %.preheader1581.thread.i ], [ %scevgep2293.i, %.preheader1577.preheader.i ], [ %i.atp, %._crit_edge1801.us.i ] ; 2 uses
  %.11213.lcssa.i = phi ptr [ %.01212.lcssa.i, %.preheader1581.i ], [ %scevgep2281.i, %.preheader1581.thread.i ], [ %scevgep2294.i, %.preheader1577.preheader.i ], [ %i.atq, %._crit_edge1801.us.i ]
  %.11210.lcssa.i = phi ptr [ %.01209.lcssa.i, %.preheader1581.i ], [ %scevgep2284.i, %.preheader1581.thread.i ], [ %scevgep2295.i, %.preheader1577.preheader.i ], [ %i.atr, %._crit_edge1801.us.i ]
  %.11207.lcssa.i = phi ptr [ %.01206.lcssa.i, %.preheader1581.i ], [ %scevgep2287.i, %.preheader1581.thread.i ], [ %scevgep2296.i, %.preheader1577.preheader.i ], [ %i.ats, %._crit_edge1801.us.i ]
  %.21197.lcssa.i = phi ptr [ %.01195.lcssa.i, %.preheader1581.i ], [ %i.aqt, %.preheader1581.thread.i ], [ %.01195.lcssa25332542.i, %.preheader1577.preheader.i ], [ %i.ato, %._crit_edge1801.us.i ] ; 2 uses
  %.11191.lcssa.i = phi i32 [ %.01190.lcssa.i, %.preheader1581.i ], [ %i.abe, %.preheader1581.thread.i ], [ %i.asq, %.preheader1577.preheader.i ], [ %i.att, %._crit_edge1801.us.i ] ; 3 uses
  %i.atw = or disjoint i32 %.11191.lcssa.i, 3
  %i.atx = icmp slt i32 %i.atw, %2
  br i1 %i.atx, label %.preheader1576.lr.ph.i, label %._crit_edge1831.i

.preheader1576.lr.ph.i:                           ; preds = %.preheader1580.i
  br i1 %i.aaf, label %.preheader1576.us.i, label %._crit_edge1860.split.i

.preheader1576.us.i:                              ; preds = %.preheader1576.lr.ph.i, %._crit_edge1823.us.i
  %.211921830.us.i = phi i32 [ %i.ave, %._crit_edge1823.us.i ], [ %.11191.lcssa.i, %.preheader1576.lr.ph.i ]
  %.411991829.us.i = phi ptr [ %i.auz, %._crit_edge1823.us.i ], [ %.21197.lcssa.i, %.preheader1576.lr.ph.i ]
  %.212081828.us.i = phi ptr [ %i.avd, %._crit_edge1823.us.i ], [ %.11207.lcssa.i, %.preheader1576.lr.ph.i ] ; 2 uses
  %.212111827.us.i = phi ptr [ %i.avc, %._crit_edge1823.us.i ], [ %.11210.lcssa.i, %.preheader1576.lr.ph.i ] ; 2 uses
  %.212141826.us.i = phi ptr [ %i.avb, %._crit_edge1823.us.i ], [ %.11213.lcssa.i, %.preheader1576.lr.ph.i ] ; 2 uses
  %.212171825.us.i = phi ptr [ %i.ava, %._crit_edge1823.us.i ], [ %.11216.lcssa.i, %.preheader1576.lr.ph.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1576.us.i
  %indvars.iv2303.i = phi i64 [ 0, %.preheader1576.us.i ], [ %indvars.iv.next2304.i, %bb.bf ] ; 5 uses
  %.512001821.us.i = phi ptr [ %.411991829.us.i, %.preheader1576.us.i ], [ %i.auz, %bb.bf ] ; 3 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.212171825.us.i, i64 %indvars.iv2303.i
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.212141826.us.i, i64 %indvars.iv2303.i
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.212111827.us.i, i64 %indvars.iv2303.i
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.212081828.us.i, i64 %indvars.iv2303.i
  %i.auc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aty, <4 x i32> %i.zx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aud = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.atz, <4 x i32> %i.zx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aue = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aua, <4 x i32> %i.zx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.auf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aub, <4 x i32> %i.zx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aug = shufflevector <4 x float> %i.auc, <4 x float> %i.aud, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auh = shufflevector <4 x float> %i.aue, <4 x float> %i.auf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aui = shufflevector <4 x float> %i.auc, <4 x float> %i.aud, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.auj = shufflevector <4 x float> %i.aue, <4 x float> %i.auf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.auk = shufflevector <4 x float> %i.aug, <4 x float> %i.auh, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 0, i32 1, i32 4, i32 5>
  %i.aul = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.auk)
  %i.aum = bitcast <8 x bfloat> %i.aul to <2 x i64>
  %i.aun = shufflevector <4 x float> %i.aug, <4 x float> %i.auh, <8 x i32> <i32 2, i32 3, i32 6, i32 7, i32 2, i32 3, i32 6, i32 7>
  %i.auo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aun)
  %i.aup = bitcast <8 x bfloat> %i.auo to <2 x i64>
  %i.auq = shufflevector <2 x i64> %i.aum, <2 x i64> %i.aup, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.auq, ptr %.512001821.us.i, align 1, !tbaa !24
  %i.aur = getelementptr inbounds nuw i8, ptr %.512001821.us.i, i64 16
  %i.aus = shufflevector <4 x float> %i.aui, <4 x float> %i.auj, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 0, i32 1, i32 4, i32 5>
  %i.aut = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aus)
  %i.auu = bitcast <8 x bfloat> %i.aut to <2 x i64>
  %i.auv = shufflevector <4 x float> %i.aui, <4 x float> %i.auj, <8 x i32> <i32 2, i32 3, i32 6, i32 7, i32 2, i32 3, i32 6, i32 7>
  %i.auw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.auv)
  %i.aux = bitcast <8 x bfloat> %i.auw to <2 x i64>
  %i.auy = shufflevector <2 x i64> %i.auu, <2 x i64> %i.aux, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.auy, ptr %i.aur, align 1, !tbaa !24
  %i.auz = getelementptr inbounds nuw i8, ptr %.512001821.us.i, i64 32 ; 3 uses
  %indvars.iv.next2304.i = add nuw nsw i64 %indvars.iv2303.i, 1 ; 2 uses
  %exitcond2307.not.i = icmp eq i64 %indvars.iv.next2304.i, %wide.trip.count2291.i
  br i1 %exitcond2307.not.i, label %._crit_edge1823.us.i, label %bb.bf, !llvm.loop !177

._crit_edge1823.us.i:                             ; preds = %bb.bf
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %.212171825.us.i, i64 %i.aal ; 2 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.212141826.us.i, i64 %i.aal
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.212111827.us.i, i64 %i.aal
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.212081828.us.i, i64 %i.aal
  %i.ave = add nuw nsw i32 %.211921830.us.i, 4    ; 3 uses
  %i.avf = or disjoint i32 %i.ave, 3
  %i.avg = icmp slt i32 %i.avf, %2
  br i1 %i.avg, label %.preheader1576.us.i, label %._crit_edge1831.i, !llvm.loop !178

._crit_edge1831.i:                                ; preds = %._crit_edge1823.us.i, %.preheader1580.i
  %.21217.lcssa.i = phi ptr [ %.11216.lcssa.i, %.preheader1580.i ], [ %i.ava, %._crit_edge1823.us.i ] ; 2 uses
  %.41199.lcssa.i = phi ptr [ %.21197.lcssa.i, %.preheader1580.i ], [ %i.auz, %._crit_edge1823.us.i ] ; 2 uses
  %.21192.lcssa.i = phi i32 [ %.11191.lcssa.i, %.preheader1580.i ], [ %i.ave, %._crit_edge1823.us.i ] ; 3 uses
  %i.avh = or disjoint i32 %.21192.lcssa.i, 1
  %i.avi = icmp slt i32 %i.avh, %2
  br i1 %i.avi, label %.preheader1575.lr.ph.i, label %.preheader1579.i

.preheader1575.lr.ph.i:                           ; preds = %._crit_edge1831.i
  br i1 %i.aaf, label %.preheader1575.us.i, label %._crit_edge1860.split.i

.preheader1575.us.i:                              ; preds = %.preheader1575.lr.ph.i, %._crit_edge1843.us.i
  %.311931847.us.i = phi i32 [ %i.axb, %._crit_edge1843.us.i ], [ %.21192.lcssa.i, %.preheader1575.lr.ph.i ]
  %.612011846.us.i = phi ptr [ %.lcssa487, %._crit_edge1843.us.i ], [ %.41199.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
  %.312181845.us.i = phi ptr [ %i.axa, %._crit_edge1843.us.i ], [ %.21217.lcssa.i, %.preheader1575.lr.ph.i ] ; 4 uses
  br i1 %i.abn, label %.epil.preheader562, label %.preheader1575.us.i.new

.preheader1575.us.i.new:                          ; preds = %.preheader1575.us.i, %.preheader1575.us.i.new
  %indvars.iv2309.i = phi i64 [ %indvars.iv.next2310.i.1, %.preheader1575.us.i.new ], [ 0, %.preheader1575.us.i ] ; 3 uses
  %.712021841.us.i = phi ptr [ %i.awl, %.preheader1575.us.i.new ], [ %.612011846.us.i, %.preheader1575.us.i ] ; 5 uses
  %niter569 = phi i64 [ %niter569.next.1, %.preheader1575.us.i.new ], [ 0, %.preheader1575.us.i ]
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %.312181845.us.i, i64 %indvars.iv2309.i ; 2 uses
  %i.avk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avj, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avl = shufflevector <4 x float> %i.avk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.avm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.avl)
  %i.avn = bitcast <8 x bfloat> %i.avm to <2 x i64>
  %i.avo = extractelement <2 x i64> %i.avn, i64 0
  store i64 %i.avo, ptr %.712021841.us.i, align 1, !tbaa !24
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %i.aap
  %i.avq = getelementptr inbounds nuw i8, ptr %.712021841.us.i, i64 8
  %i.avr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avp, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avs = shufflevector <4 x float> %i.avr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.avt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.avs)
  %i.avu = bitcast <8 x bfloat> %i.avt to <2 x i64>
  %i.avv = extractelement <2 x i64> %i.avu, i64 0
  store i64 %i.avv, ptr %i.avq, align 1, !tbaa !24
  %i.avw = getelementptr inbounds nuw i8, ptr %.712021841.us.i, i64 16
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.312181845.us.i, i64 %indvars.iv2309.i
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 4 ; 2 uses
  %i.avz = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avy, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awa = shufflevector <4 x float> %i.avz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.awb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awa)
  %i.awc = bitcast <8 x bfloat> %i.awb to <2 x i64>
  %i.awd = extractelement <2 x i64> %i.awc, i64 0
  store i64 %i.awd, ptr %i.avw, align 1, !tbaa !24
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.avy, i64 %i.aap
  %i.awf = getelementptr inbounds nuw i8, ptr %.712021841.us.i, i64 24
  %i.awg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awe, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awh = shufflevector <4 x float> %i.awg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.awi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awh)
  %i.awj = bitcast <8 x bfloat> %i.awi to <2 x i64>
  %i.awk = extractelement <2 x i64> %i.awj, i64 0
  store i64 %i.awk, ptr %i.awf, align 1, !tbaa !24
  %i.awl = getelementptr inbounds nuw i8, ptr %.712021841.us.i, i64 32 ; 3 uses
  %indvars.iv.next2310.i.1 = add nuw nsw i64 %indvars.iv2309.i, 2 ; 2 uses
  %niter569.next.1 = add i64 %niter569, 2         ; 2 uses
  %niter569.ncmp.1 = icmp eq i64 %niter569.next.1, %unroll_iter568
  br i1 %niter569.ncmp.1, label %._crit_edge1843.us.i.unr-lcssa, label %.preheader1575.us.i.new, !llvm.loop !179

._crit_edge1843.us.i.unr-lcssa:                   ; preds = %.preheader1575.us.i.new
  br i1 %lcmp.mod565.not, label %._crit_edge1843.us.i, label %.epil.preheader562

.epil.preheader562:                               ; preds = %._crit_edge1843.us.i.unr-lcssa, %.preheader1575.us.i
  %indvars.iv2309.i.epil.init = phi i64 [ 0, %.preheader1575.us.i ], [ %indvars.iv.next2310.i.1, %._crit_edge1843.us.i.unr-lcssa ]
  %.712021841.us.i.epil.init = phi ptr [ %.612011846.us.i, %.preheader1575.us.i ], [ %i.awl, %._crit_edge1843.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod567)
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %.312181845.us.i, i64 %indvars.iv2309.i.epil.init ; 2 uses
  %i.awn = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awm, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.awp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.awo)
  %i.awq = bitcast <8 x bfloat> %i.awp to <2 x i64>
  %i.awr = extractelement <2 x i64> %i.awq, i64 0
end_hunk_7
begin_hunk_8_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  %i.azf = shufflevector <8 x i32> %i.aze, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.azg = mul <8 x i32> %i.azf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.azh = insertelement <16 x i32> poison, i32 %4, i64 0
  %i.azi = shufflevector <16 x i32> %i.azh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.azj = mul <16 x i32> %i.azi, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.azk = icmp sgt i32 %2, 15
  %i.azl = icmp sgt i32 %4, 0                     ; 4 uses
  %i.azm = shl i32 %4, 4
  %i.azn = sext i32 %i.azm to i64                 ; 2 uses
  %i.azo = shl i32 %4, 3
  %i.azp = sext i32 %i.azo to i64                 ; 2 uses
  %i.azq = shl i32 %4, 2
  %i.azr = sext i32 %i.azq to i64
  %i.azs = sext i32 %4 to i64                     ; 3 uses
  %i.azt = shl i32 %4, 1
  %i.azu = sext i32 %i.azt to i64
  %i.azv = icmp slt i32 %4, 1
  %i.azw = add i32 %2, -16                        ; 2 uses
  %i.azx = lshr i32 %i.azw, 2
  %i.azy = and i32 %i.azx, 1073741820
  %narrow2444.i = add nuw nsw i32 %i.azy, 4
  %i.azz = zext nneg i32 %narrow2444.i to i64
  %i.baa = mul nsw i64 %i.azz, %i.azn
  %i.bab = mul i32 %i.ayy, %.3.lcssa.i
  %i.bac = and i32 %i.azw, -16
  %i.bad = add nuw i32 %i.bac, 16                 ; 4 uses
  %i.bae = add i32 %2, -8
  %i.baf = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2401.i = sext i32 %3 to i64
  %i.bag = or disjoint i32 %i.bad, 7
  %i.bah = icmp slt i32 %i.bag, %2
  %wide.trip.count2372.i = zext i32 %4 to i64     ; 19 uses
  %i.bai = add nsw i64 %wide.trip.count2372.i, -1 ; 3 uses
  %xtraiter603 = and i64 %wide.trip.count2372.i, 3 ; 3 uses
  %i.baj = icmp ult i64 %i.bai, 3
  %unroll_iter608 = and i64 %wide.trip.count2372.i, 2147483644
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  %lcmp.mod607 = icmp ne i64 %xtraiter603, 0
  %xtraiter611 = and i64 %wide.trip.count2372.i, 3 ; 3 uses
  %i.bak = icmp ult i64 %i.bai, 3
  %unroll_iter616 = and i64 %wide.trip.count2372.i, 2147483644
  %lcmp.mod613.not = icmp eq i64 %xtraiter611, 0
  %lcmp.mod615 = icmp ne i64 %xtraiter611, 0
  %xtraiter619 = and i64 %wide.trip.count2372.i, 3 ; 3 uses
  %i.bal = icmp ult i64 %i.bai, 3
  %unroll_iter624 = and i64 %wide.trip.count2372.i, 2147483644
  %lcmp.mod621.not = icmp eq i64 %xtraiter619, 0
  %lcmp.mod623 = icmp ne i64 %xtraiter619, 0
  %min.iters.check400 = icmp ult i32 %4, 8
  %min.iters.check402 = icmp ult i32 %4, 32
  %i.bam = and i64 %wide.trip.count2372.i, 24
  %n.vec404 = and i64 %wide.trip.count2372.i, 2147483616 ; 5 uses
  %i.ban = shl nuw nsw i64 %n.vec404, 2
  %cmp.n417 = icmp eq i64 %n.vec404, %wide.trip.count2372.i
  %min.epilog.iters.check422 = icmp eq i64 %i.bam, 0
  %n.vec424 = and i64 %wide.trip.count2372.i, 2147483640 ; 4 uses
  %i.bao = shl nuw nsw i64 %n.vec424, 2
  %cmp.n433 = icmp eq i64 %n.vec424, %wide.trip.count2372.i
  %min.iters.check369 = icmp ult i32 %4, 8
  %min.iters.check371 = icmp ult i32 %4, 64
  %i.bap = and i64 %wide.trip.count2372.i, 56
  %n.vec373 = and i64 %wide.trip.count2372.i, 2147483584 ; 5 uses
  %i.baq = shl nuw nsw i64 %n.vec373, 1
  %cmp.n383 = icmp eq i64 %n.vec373, %wide.trip.count2372.i
  %min.epilog.iters.check388 = icmp eq i64 %i.bap, 0
  %n.vec390 = and i64 %wide.trip.count2372.i, 2147483640 ; 4 uses
  %i.bar = shl nuw nsw i64 %n.vec390, 1
  %cmp.n397 = icmp eq i64 %n.vec390, %wide.trip.count2372.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1295.i:                      ; preds = %._crit_edge1937.split.i, %_ZN4ncnn3MatD2Ev.exit1295.lr.ph.i
  %indvars.iv2362.i = phi i64 [ %i.aoy, %_ZN4ncnn3MatD2Ev.exit1295.lr.ph.i ], [ %indvars.iv.next2363.i, %._crit_edge1937.split.i ] ; 2 uses
  %indvars.iv2327.i = phi i32 [ %i.aou, %_ZN4ncnn3MatD2Ev.exit1295.lr.ph.i ], [ %indvars.iv.next2328.i, %._crit_edge1937.split.i ] ; 2 uses
  %indvars.iv2324.i = phi i32 [ %i.aos, %_ZN4ncnn3MatD2Ev.exit1295.lr.ph.i ], [ %indvars.iv.next2325.i, %._crit_edge1937.split.i ] ; 2 uses
  %i.bas = phi i32 [ %i.ann, %_ZN4ncnn3MatD2Ev.exit1295.lr.ph.i ], [ %i.biu, %._crit_edge1937.split.i ]
  %i.bat = sext i32 %indvars.iv2324.i to i64
  %i.bau = shl nsw i64 %i.bat, 2
  %i.bav = sext i32 %indvars.iv2327.i to i64
  %i.baw = shl nsw i64 %i.bav, 2
  %i.bax = load ptr, ptr %0, align 8, !tbaa !18   ; 3 uses
  %i.bay = trunc nsw i64 %indvars.iv2362.i to i32 ; 2 uses
  %i.baz = mul i32 %i.anp, %i.bay
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bba ; 2 uses
  %i.bbc = mul i32 %i.bas, %i.anp
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bbd ; 2 uses
  %i.bbf = insertelement <4 x i32> poison, i32 %i.bay, i64 0
  %i.bbg = shufflevector <4 x i32> %i.bbf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbh = lshr <4 x i32> %i.bbg, <i32 3, i32 2, i32 1, i32 4>
  %i.bbi = and <4 x i32> %i.bbh, <i32 1, i32 1, i32 1, i32 -1>
  %i.bbj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bbi)
  %i.bbk = load ptr, ptr %1, align 8, !tbaa !18, !noalias !225
  %i.bbl = load i64, ptr %i.anq, align 8, !tbaa !25, !noalias !225
  %i.bbm = zext nneg i32 %i.bbj to i64
  %i.bbn = mul i64 %i.bbl, %i.bbm
  %i.bbo = load i64, ptr %i.anr, align 8, !tbaa !21, !noalias !225
  %i.bbp = mul i64 %i.bbn, %i.bbo
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbp ; 4 uses
  br i1 %i.aob, label %.preheader1568.lr.ph.i, label %.preheader1572.i

.preheader1568.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1295.i
  br i1 %i.aoc, label %.preheader1568.us.i, label %.preheader1572.thread.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1865.us.i
  %.011301870.us.i = phi i32 [ %i.bcr, %._crit_edge1865.us.i ], [ 0, %.preheader1568.lr.ph.i ]
  %.011351869.us.i = phi ptr [ %.lcssa457, %._crit_edge1865.us.i ], [ %i.bbq, %.preheader1568.lr.ph.i ] ; 2 uses
  %.011461868.us.i = phi ptr [ %i.bcq, %._crit_edge1865.us.i ], [ %i.bbe, %.preheader1568.lr.ph.i ] ; 4 uses
  %.011501867.us.i = phi ptr [ %i.bcp, %._crit_edge1865.us.i ], [ %i.bbb, %.preheader1568.lr.ph.i ] ; 4 uses
  br i1 %i.apd, label %.epil.preheader578, label %.preheader1568.us.i.new

.preheader1568.us.i.new:                          ; preds = %.preheader1568.us.i, %.preheader1568.us.i.new
  %indvars.iv2330.i = phi i64 [ %indvars.iv.next2331.i.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ] ; 4 uses
  %.111361863.us.i = phi ptr [ %i.bcg, %.preheader1568.us.i.new ], [ %.011351869.us.i, %.preheader1568.us.i ] ; 5 uses
  %niter585 = phi i64 [ %niter585.next.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ]
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %.011501867.us.i, i64 %indvars.iv2330.i
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.011461868.us.i, i64 %indvars.iv2330.i
  %i.bbt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbr, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bbu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbs, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bbv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbt)
  store <16 x bfloat> %i.bbv, ptr %.111361863.us.i, align 1, !tbaa !24
  %i.bbw = getelementptr inbounds nuw i8, ptr %.111361863.us.i, i64 32
  %i.bbx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bbu)
  store <16 x bfloat> %i.bbx, ptr %i.bbw, align 1, !tbaa !24
  %i.bby = getelementptr inbounds nuw i8, ptr %.111361863.us.i, i64 64
  %indvars.iv.next2331.i = or disjoint i64 %indvars.iv2330.i, 1 ; 2 uses
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %.011501867.us.i, i64 %indvars.iv.next2331.i
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %.011461868.us.i, i64 %indvars.iv.next2331.i
  %i.bcb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbz, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bcc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bca, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bcd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bcb)
  store <16 x bfloat> %i.bcd, ptr %i.bby, align 1, !tbaa !24
  %i.bce = getelementptr inbounds nuw i8, ptr %.111361863.us.i, i64 96
  %i.bcf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bcc)
  store <16 x bfloat> %i.bcf, ptr %i.bce, align 1, !tbaa !24
  %i.bcg = getelementptr inbounds nuw i8, ptr %.111361863.us.i, i64 128 ; 3 uses
  %indvars.iv.next2331.i.1 = add nuw nsw i64 %indvars.iv2330.i, 2 ; 2 uses
  %niter585.next.1 = add i64 %niter585, 2         ; 2 uses
  %niter585.ncmp.1 = icmp eq i64 %niter585.next.1, %unroll_iter584
  br i1 %niter585.ncmp.1, label %._crit_edge1865.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !187

._crit_edge1865.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod581.not, label %._crit_edge1865.us.i, label %.epil.preheader578

.epil.preheader578:                               ; preds = %._crit_edge1865.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2330.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2331.i.1, %._crit_edge1865.us.i.unr-lcssa ] ; 2 uses
  %.111361863.us.i.epil.init = phi ptr [ %.011351869.us.i, %.preheader1568.us.i ], [ %i.bcg, %._crit_edge1865.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod583)
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %.011501867.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %.011461868.us.i, i64 %indvars.iv2330.i.epil.init
  %i.bcj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bch, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bck = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bci, <16 x i32> %i.aoa, <16 x i1> splat (i1 true), i32 4)
  %i.bcl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bcj)
  store <16 x bfloat> %i.bcl, ptr %.111361863.us.i.epil.init, align 1, !tbaa !24
  %i.bcm = getelementptr inbounds nuw i8, ptr %.111361863.us.i.epil.init, i64 32
  %i.bcn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bck)
  store <16 x bfloat> %i.bcn, ptr %i.bcm, align 1, !tbaa !24
  %i.bco = getelementptr inbounds nuw i8, ptr %.111361863.us.i.epil.init, i64 64
  br label %._crit_edge1865.us.i

._crit_edge1865.us.i:                             ; preds = %._crit_edge1865.us.i.unr-lcssa, %.epil.preheader578
  %.lcssa457 = phi ptr [ %i.bcg, %._crit_edge1865.us.i.unr-lcssa ], [ %i.bco, %.epil.preheader578 ] ; 2 uses
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %.011501867.us.i, i64 %i.aoe ; 2 uses
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %.011461868.us.i, i64 %i.aoe ; 2 uses
  %i.bcr = add nuw nsw i32 %.011301870.us.i, 16   ; 2 uses
  %i.bcs = or disjoint i32 %i.bcr, 15
  %i.bct = icmp slt i32 %i.bcs, %2
  br i1 %i.bct, label %.preheader1568.us.i, label %.preheader1572.i, !llvm.loop !188

.preheader1572.i:                                 ; preds = %._crit_edge1865.us.i, %_ZN4ncnn3MatD2Ev.exit1295.i
  %.01150.lcssa.i = phi ptr [ %i.bbb, %_ZN4ncnn3MatD2Ev.exit1295.i ], [ %i.bcp, %._crit_edge1865.us.i ] ; 3 uses
  %.01146.lcssa.i = phi ptr [ %i.bbe, %_ZN4ncnn3MatD2Ev.exit1295.i ], [ %i.bcq, %._crit_edge1865.us.i ] ; 3 uses
  %.01135.lcssa.i = phi ptr [ %i.bbq, %_ZN4ncnn3MatD2Ev.exit1295.i ], [ %.lcssa457, %._crit_edge1865.us.i ] ; 3 uses
  %.01130.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1295.i ], [ %i.aow, %._crit_edge1865.us.i ] ; 4 uses
  %i.bcu = or disjoint i32 %.01130.lcssa.i, 7
  %i.bcv = icmp slt i32 %i.bcu, %2
  br i1 %i.bcv, label %.preheader1567.lr.ph.i, label %.preheader1571.i

.preheader1572.thread.i:                          ; preds = %.preheader1568.lr.ph.i
  %scevgep2323.i = getelementptr i8, ptr %i.bax, i64 %i.aor ; 2 uses
  %scevgep2326.i = getelementptr i8, ptr %scevgep2323.i, i64 %i.bau ; 2 uses
  %scevgep2329.i = getelementptr i8, ptr %scevgep2323.i, i64 %i.baw ; 2 uses
  br i1 %i.apb, label %.preheader1567.preheader.i, label %.preheader1571.i

.preheader1567.lr.ph.i:                           ; preds = %.preheader1572.i
  br i1 %i.aoc, label %.preheader1567.us.i, label %.preheader1567.preheader.i

.preheader1567.preheader.i:                       ; preds = %.preheader1567.lr.ph.i, %.preheader1572.thread.i
  %.01150.lcssa25672578.i = phi ptr [ %.01150.lcssa.i, %.preheader1567.lr.ph.i ], [ %scevgep2326.i, %.preheader1572.thread.i ]
  %.01146.lcssa25682577.i = phi ptr [ %.01146.lcssa.i, %.preheader1567.lr.ph.i ], [ %scevgep2329.i, %.preheader1572.thread.i ]
  %.01135.lcssa25692576.i = phi ptr [ %.01135.lcssa.i, %.preheader1567.lr.ph.i ], [ %i.bbq, %.preheader1572.thread.i ]
  %.01130.lcssa25702575.i = phi i32 [ %.01130.lcssa.i, %.preheader1567.lr.ph.i ], [ %i.aow, %.preheader1572.thread.i ] ; 2 uses
  %i.bcw = sub i32 %i.aox, %.01130.lcssa25702575.i ; 2 uses
  %i.bcx = lshr i32 %i.bcw, 1
  %i.bcy = and i32 %i.bcx, 2147483644
  %narrow2443.i = add nuw i32 %i.bcy, 4
  %i.bcz = zext i32 %narrow2443.i to i64
  %i.bda = mul nsw i64 %i.bcz, %i.aog             ; 2 uses
  %scevgep2335.i = getelementptr i8, ptr %.01150.lcssa25672578.i, i64 %i.bda
  %scevgep2336.i = getelementptr i8, ptr %.01146.lcssa25682577.i, i64 %i.bda
  %i.bdb = add i32 %.01130.lcssa25702575.i, 8
  %i.bdc = and i32 %i.bcw, -8
  %i.bdd = add i32 %i.bdb, %i.bdc
  br label %.preheader1571.i

.preheader1567.us.i:                              ; preds = %.preheader1567.lr.ph.i, %._crit_edge1881.us.i
  %.111311886.us.i = phi i32 [ %i.bee, %._crit_edge1881.us.i ], [ %.01130.lcssa.i, %.preheader1567.lr.ph.i ]
  %.211371885.us.i = phi ptr [ %.lcssa460, %._crit_edge1881.us.i ], [ %.01135.lcssa.i, %.preheader1567.lr.ph.i ] ; 2 uses
  %.111471884.us.i = phi ptr [ %i.bed, %._crit_edge1881.us.i ], [ %.01146.lcssa.i, %.preheader1567.lr.ph.i ] ; 4 uses
  %.111511883.us.i = phi ptr [ %i.bec, %._crit_edge1881.us.i ], [ %.01150.lcssa.i, %.preheader1567.lr.ph.i ] ; 4 uses
  br i1 %i.ape, label %.epil.preheader586, label %.preheader1567.us.i.new

.preheader1567.us.i.new:                          ; preds = %.preheader1567.us.i, %.preheader1567.us.i.new
  %indvars.iv2337.i = phi i64 [ %indvars.iv.next2338.i.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ] ; 4 uses
  %.311381879.us.i = phi ptr [ %i.bdt, %.preheader1567.us.i.new ], [ %.211371885.us.i, %.preheader1567.us.i ] ; 5 uses
  %niter593 = phi i64 [ %niter593.next.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ]
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %.111511883.us.i, i64 %indvars.iv2337.i
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %.111471884.us.i, i64 %indvars.iv2337.i
  %i.bdg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bde, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdf, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdg)
  store <8 x bfloat> %i.bdi, ptr %.311381879.us.i, align 1, !tbaa !24
  %i.bdj = getelementptr inbounds nuw i8, ptr %.311381879.us.i, i64 16
  %i.bdk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdh)
  store <8 x bfloat> %i.bdk, ptr %i.bdj, align 1, !tbaa !24
  %i.bdl = getelementptr inbounds nuw i8, ptr %.311381879.us.i, i64 32
  %indvars.iv.next2338.i = or disjoint i64 %indvars.iv2337.i, 1 ; 2 uses
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.111511883.us.i, i64 %indvars.iv.next2338.i
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.111471884.us.i, i64 %indvars.iv.next2338.i
  %i.bdo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdm, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdn, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdo)
  store <8 x bfloat> %i.bdq, ptr %i.bdl, align 1, !tbaa !24
  %i.bdr = getelementptr inbounds nuw i8, ptr %.311381879.us.i, i64 48
  %i.bds = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdp)
  store <8 x bfloat> %i.bds, ptr %i.bdr, align 1, !tbaa !24
  %i.bdt = getelementptr inbounds nuw i8, ptr %.311381879.us.i, i64 64 ; 3 uses
  %indvars.iv.next2338.i.1 = add nuw nsw i64 %indvars.iv2337.i, 2 ; 2 uses
  %niter593.next.1 = add i64 %niter593, 2         ; 2 uses
  %niter593.ncmp.1 = icmp eq i64 %niter593.next.1, %unroll_iter592
  br i1 %niter593.ncmp.1, label %._crit_edge1881.us.i.unr-lcssa, label %.preheader1567.us.i.new, !llvm.loop !189

._crit_edge1881.us.i.unr-lcssa:                   ; preds = %.preheader1567.us.i.new
  br i1 %lcmp.mod589.not, label %._crit_edge1881.us.i, label %.epil.preheader586

.epil.preheader586:                               ; preds = %._crit_edge1881.us.i.unr-lcssa, %.preheader1567.us.i
  %indvars.iv2337.i.epil.init = phi i64 [ 0, %.preheader1567.us.i ], [ %indvars.iv.next2338.i.1, %._crit_edge1881.us.i.unr-lcssa ] ; 2 uses
  %.311381879.us.i.epil.init = phi ptr [ %.211371885.us.i, %.preheader1567.us.i ], [ %i.bdt, %._crit_edge1881.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod591)
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %.111511883.us.i, i64 %indvars.iv2337.i.epil.init
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %.111471884.us.i, i64 %indvars.iv2337.i.epil.init
  %i.bdw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdu, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdv, <8 x i32> %i.anx, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdw)
  store <8 x bfloat> %i.bdy, ptr %.311381879.us.i.epil.init, align 1, !tbaa !24
  %i.bdz = getelementptr inbounds nuw i8, ptr %.311381879.us.i.epil.init, i64 16
  %i.bea = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bdx)
  store <8 x bfloat> %i.bea, ptr %i.bdz, align 1, !tbaa !24
  %i.beb = getelementptr inbounds nuw i8, ptr %.311381879.us.i.epil.init, i64 32
  br label %._crit_edge1881.us.i

._crit_edge1881.us.i:                             ; preds = %._crit_edge1881.us.i.unr-lcssa, %.epil.preheader586
  %.lcssa460 = phi ptr [ %i.bdt, %._crit_edge1881.us.i.unr-lcssa ], [ %i.beb, %.epil.preheader586 ] ; 2 uses
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.111511883.us.i, i64 %i.aog ; 2 uses
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %.111471884.us.i, i64 %i.aog ; 2 uses
  %i.bee = add nuw nsw i32 %.111311886.us.i, 8    ; 3 uses
  %i.bef = or disjoint i32 %i.bee, 7
  %i.beg = icmp slt i32 %i.bef, %2
  br i1 %i.beg, label %.preheader1567.us.i, label %.preheader1571.i, !llvm.loop !190

.preheader1571.i:                                 ; preds = %._crit_edge1881.us.i, %.preheader1567.preheader.i, %.preheader1572.thread.i, %.preheader1572.i
  %.11151.lcssa.i = phi ptr [ %.01150.lcssa.i, %.preheader1572.i ], [ %scevgep2326.i, %.preheader1572.thread.i ], [ %scevgep2335.i, %.preheader1567.preheader.i ], [ %i.bec, %._crit_edge1881.us.i ] ; 2 uses
  %.11147.lcssa.i = phi ptr [ %.01146.lcssa.i, %.preheader1572.i ], [ %scevgep2329.i, %.preheader1572.thread.i ], [ %scevgep2336.i, %.preheader1567.preheader.i ], [ %i.bed, %._crit_edge1881.us.i ] ; 2 uses
  %.21137.lcssa.i = phi ptr [ %.01135.lcssa.i, %.preheader1572.i ], [ %i.bbq, %.preheader1572.thread.i ], [ %.01135.lcssa25692576.i, %.preheader1567.preheader.i ], [ %.lcssa460, %._crit_edge1881.us.i ] ; 2 uses
  %.11131.lcssa.i = phi i32 [ %.01130.lcssa.i, %.preheader1572.i ], [ %i.aow, %.preheader1572.thread.i ], [ %i.bdd, %.preheader1567.preheader.i ], [ %i.bee, %._crit_edge1881.us.i ] ; 3 uses
  %i.beh = or disjoint i32 %.11131.lcssa.i, 3
  %i.bei = icmp slt i32 %i.beh, %2
  br i1 %i.bei, label %.preheader1566.lr.ph.i, label %.preheader1570.i

.preheader1566.lr.ph.i:                           ; preds = %.preheader1571.i
  br i1 %i.aoc, label %.preheader1566.us.i, label %._crit_edge1937.split.i

.preheader1566.us.i:                              ; preds = %.preheader1566.lr.ph.i, %._crit_edge1897.us.i
  %.211321902.us.i = phi i32 [ %i.bfv, %._crit_edge1897.us.i ], [ %.11131.lcssa.i, %.preheader1566.lr.ph.i ]
  %.411391901.us.i = phi ptr [ %.lcssa464, %._crit_edge1897.us.i ], [ %.21137.lcssa.i, %.preheader1566.lr.ph.i ] ; 2 uses
  %.211481900.us.i = phi ptr [ %i.bfu, %._crit_edge1897.us.i ], [ %.11147.lcssa.i, %.preheader1566.lr.ph.i ] ; 4 uses
  %.211521899.us.i = phi ptr [ %i.bft, %._crit_edge1897.us.i ], [ %.11151.lcssa.i, %.preheader1566.lr.ph.i ] ; 4 uses
  br i1 %i.apf, label %.epil.preheader594, label %.preheader1566.us.i.new

.preheader1566.us.i.new:                          ; preds = %.preheader1566.us.i, %.preheader1566.us.i.new
  %indvars.iv2344.i = phi i64 [ %indvars.iv.next2345.i.1, %.preheader1566.us.i.new ], [ 0, %.preheader1566.us.i ] ; 4 uses
  %.511401895.us.i = phi ptr [ %i.bfg, %.preheader1566.us.i.new ], [ %.411391901.us.i, %.preheader1566.us.i ] ; 3 uses
  %niter601 = phi i64 [ %niter601.next.1, %.preheader1566.us.i.new ], [ 0, %.preheader1566.us.i ]
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %.211521899.us.i, i64 %indvars.iv2344.i
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %.211481900.us.i, i64 %indvars.iv2344.i
  %i.bel = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bej, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bem = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bek, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ben = shufflevector <4 x float> %i.bel, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.beo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ben)
  %i.bep = bitcast <8 x bfloat> %i.beo to <2 x i64>
  %i.beq = shufflevector <4 x float> %i.bem, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ber = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.beq)
  %i.bes = bitcast <8 x bfloat> %i.ber to <2 x i64>
  %i.bet = shufflevector <2 x i64> %i.bep, <2 x i64> %i.bes, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bet, ptr %.511401895.us.i, align 1, !tbaa !24
  %i.beu = getelementptr inbounds nuw i8, ptr %.511401895.us.i, i64 16
  %indvars.iv.next2345.i = or disjoint i64 %indvars.iv2344.i, 1 ; 2 uses
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %.211521899.us.i, i64 %indvars.iv.next2345.i
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %.211481900.us.i, i64 %indvars.iv.next2345.i
  %i.bex = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bev, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bey = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bew, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bez = shufflevector <4 x float> %i.bex, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bfa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bez)
  %i.bfb = bitcast <8 x bfloat> %i.bfa to <2 x i64>
  %i.bfc = shufflevector <4 x float> %i.bey, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bfd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bfc)
  %i.bfe = bitcast <8 x bfloat> %i.bfd to <2 x i64>
  %i.bff = shufflevector <2 x i64> %i.bfb, <2 x i64> %i.bfe, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bff, ptr %i.beu, align 1, !tbaa !24
  %i.bfg = getelementptr inbounds nuw i8, ptr %.511401895.us.i, i64 32 ; 3 uses
  %indvars.iv.next2345.i.1 = add nuw nsw i64 %indvars.iv2344.i, 2 ; 2 uses
  %niter601.next.1 = add i64 %niter601, 2         ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %._crit_edge1897.us.i.unr-lcssa, label %.preheader1566.us.i.new, !llvm.loop !191

._crit_edge1897.us.i.unr-lcssa:                   ; preds = %.preheader1566.us.i.new
  br i1 %lcmp.mod597.not, label %._crit_edge1897.us.i, label %.epil.preheader594

.epil.preheader594:                               ; preds = %._crit_edge1897.us.i.unr-lcssa, %.preheader1566.us.i
  %indvars.iv2344.i.epil.init = phi i64 [ 0, %.preheader1566.us.i ], [ %indvars.iv.next2345.i.1, %._crit_edge1897.us.i.unr-lcssa ] ; 2 uses
  %.511401895.us.i.epil.init = phi ptr [ %.411391901.us.i, %.preheader1566.us.i ], [ %i.bfg, %._crit_edge1897.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod599)
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %.211521899.us.i, i64 %indvars.iv2344.i.epil.init
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %.211481900.us.i, i64 %indvars.iv2344.i.epil.init
  %i.bfj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bfh, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bfk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bfi, <4 x i32> %i.anu, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bfl = shufflevector <4 x float> %i.bfj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bfm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bfl)
  %i.bfn = bitcast <8 x bfloat> %i.bfm to <2 x i64>
  %i.bfo = shufflevector <4 x float> %i.bfk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bfp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bfo)
  %i.bfq = bitcast <8 x bfloat> %i.bfp to <2 x i64>
  %i.bfr = shufflevector <2 x i64> %i.bfn, <2 x i64> %i.bfq, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bfr, ptr %.511401895.us.i.epil.init, align 1, !tbaa !24
  %i.bfs = getelementptr inbounds nuw i8, ptr %.511401895.us.i.epil.init, i64 16
  br label %._crit_edge1897.us.i

._crit_edge1897.us.i:                             ; preds = %._crit_edge1897.us.i.unr-lcssa, %.epil.preheader594
  %.lcssa464 = phi ptr [ %i.bfg, %._crit_edge1897.us.i.unr-lcssa ], [ %i.bfs, %.epil.preheader594 ] ; 2 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.211521899.us.i, i64 %i.aoi ; 2 uses
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %.211481900.us.i, i64 %i.aoi ; 2 uses
  %i.bfv = add nuw nsw i32 %.211321902.us.i, 4    ; 3 uses
  %i.bfw = or disjoint i32 %i.bfv, 3
  %i.bfx = icmp slt i32 %i.bfw, %2
  br i1 %i.bfx, label %.preheader1566.us.i, label %.preheader1570.i, !llvm.loop !192

.preheader1570.i:                                 ; preds = %._crit_edge1897.us.i, %.preheader1571.i
  %.21152.lcssa.i = phi ptr [ %.11151.lcssa.i, %.preheader1571.i ], [ %i.bft, %._crit_edge1897.us.i ] ; 2 uses
  %.21148.lcssa.i = phi ptr [ %.11147.lcssa.i, %.preheader1571.i ], [ %i.bfu, %._crit_edge1897.us.i ] ; 2 uses
  %.41139.lcssa.i = phi ptr [ %.21137.lcssa.i, %.preheader1571.i ], [ %.lcssa464, %._crit_edge1897.us.i ] ; 2 uses
  %.21132.lcssa.i = phi i32 [ %.11131.lcssa.i, %.preheader1571.i ], [ %i.bfv, %._crit_edge1897.us.i ] ; 3 uses
  %i.bfy = or disjoint i32 %.21132.lcssa.i, 1
  %i.bfz = icmp slt i32 %i.bfy, %2
  br i1 %i.bfz, label %.preheader1565.lr.ph.i, label %.preheader1569.i

.preheader1565.lr.ph.i:                           ; preds = %.preheader1570.i
  br i1 %i.aoc, label %iter.check350, label %._crit_edge1937.split.i

iter.check350:                                    ; preds = %.preheader1565.lr.ph.i, %._crit_edge1917.us.i
  %.311331922.us.i = phi i32 [ %i.bhp, %._crit_edge1917.us.i ], [ %.21132.lcssa.i, %.preheader1565.lr.ph.i ]
  %.611411921.us.i = phi ptr [ %.lcssa267, %._crit_edge1917.us.i ], [ %.41139.lcssa.i, %.preheader1565.lr.ph.i ] ; 5 uses
  %.311491920.us.i = phi ptr [ %i.bho, %._crit_edge1917.us.i ], [ %.21148.lcssa.i, %.preheader1565.lr.ph.i ] ; 4 uses
  %.311531919.us.i = phi ptr [ %i.bhn, %._crit_edge1917.us.i ], [ %.21152.lcssa.i, %.preheader1565.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check333, label %vec.epilog.scalar.ph351.preheader, label %vector.main.loop.iter.check334

vector.main.loop.iter.check334:                   ; preds = %iter.check350
  br i1 %min.iters.check335, label %vec.epilog.ph354, label %vector.ph336

vector.ph336:                                     ; preds = %vector.main.loop.iter.check334
  %i.bga = getelementptr i8, ptr %.611411921.us.i, i64 %i.aph ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next346, %vector.body338 ] ; 4 uses
  %i.bgb = shl i64 %index339, 3
  %next.gep340 = getelementptr i8, ptr %.611411921.us.i, i64 %i.bgb
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %.311531919.us.i, i64 %index339 ; 2 uses
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %.311491920.us.i, i64 %index339 ; 2 uses
  %wide.load341 = load <16 x i32>, ptr %i.bgc, align 4, !tbaa !29
  %wide.load342 = load <16 x i32>, ptr %i.bgd, align 4, !tbaa !29
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %i.aoj
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %i.aoj
  %wide.load343 = load <16 x i32>, ptr %i.bge, align 4, !tbaa !29
  %wide.load344 = load <16 x i32>, ptr %i.bgf, align 4, !tbaa !29
  %i.bgg = shufflevector <16 x i32> %wide.load341, <16 x i32> %wide.load342, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgh = lshr <32 x i32> %i.bgg, splat (i32 16)
  %i.bgi = trunc nuw <32 x i32> %i.bgh to <32 x i16>
  %i.bgj = shufflevector <16 x i32> %wide.load343, <16 x i32> %wide.load344, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgk = lshr <32 x i32> %i.bgj, splat (i32 16)
  %i.bgl = trunc nuw <32 x i32> %i.bgk to <32 x i16>
  %interleaved.vec345 = shufflevector <32 x i16> %i.bgi, <32 x i16> %i.bgl, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
end_hunk_8
begin_hunk_9_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  %interleaved.vec = trunc nuw <32 x i32> %i.bhy to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bhz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bhz, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1933.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bia = getelementptr i8, ptr %.911441935.i, i64 %i.apl ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index324 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next329, %vec.epilog.vector.body ] ; 4 uses
  %i.bib = shl i64 %index324, 2
  %next.gep325 = getelementptr i8, ptr %.911441935.i, i64 %i.bib
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %.31153.lcssa.i, i64 %index324
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %.31149.lcssa.i, i64 %index324
  %wide.load326 = load <4 x i32>, ptr %i.bic, align 4, !tbaa !29
  %wide.load327 = load <4 x i32>, ptr %i.bid, align 4, !tbaa !29
  %i.bie = shufflevector <4 x i32> %wide.load326, <4 x i32> %wide.load327, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bif = lshr <8 x i32> %i.bie, splat (i32 16)
  %interleaved.vec328 = trunc nuw <8 x i32> %i.bif to <8 x i16>
  store <8 x i16> %interleaved.vec328, ptr %next.gep325, align 2, !tbaa !27
  %index.next329 = add nuw i64 %index324, 4       ; 2 uses
  %i.big = icmp eq i64 %index.next329, %n.vec323
  br i1 %i.big, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n330, label %._crit_edge1933.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2356.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec323, %vec.epilog.middle.block ]
  %.1011451931.i.ph = phi ptr [ %.911441935.i, %iter.check ], [ %i.bht, %vec.epilog.iter.check ], [ %i.bia, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1933.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa271 = phi ptr [ %i.bia, %vec.epilog.middle.block ], [ %i.bht, %middle.block ], [ %i.bir, %vec.epilog.scalar.ph ]
  %i.bih = add nuw nsw i32 %.411341936.i, 1       ; 2 uses
  %exitcond2361.not.i = icmp eq i32 %i.bih, %2
  br i1 %exitcond2361.not.i, label %._crit_edge1937.split.i, label %iter.check, !llvm.loop !199

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2356.i = phi i64 [ %indvars.iv.next2357.i, %vec.epilog.scalar.ph ], [ %indvars.iv2356.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.1011451931.i = phi ptr [ %i.bir, %vec.epilog.scalar.ph ], [ %.1011451931.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %.31153.lcssa.i, i64 %indvars.iv2356.i
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %.31149.lcssa.i, i64 %indvars.iv2356.i
  %i.bik = load i32, ptr %i.bii, align 4, !tbaa !29
  %i.bil = lshr i32 %i.bik, 16
  %i.bim = trunc nuw i32 %i.bil to i16
  store i16 %i.bim, ptr %.1011451931.i, align 2, !tbaa !27
  %i.bin = load i32, ptr %i.bij, align 4, !tbaa !29
  %i.bio = lshr i32 %i.bin, 16
  %i.bip = trunc nuw i32 %i.bio to i16
  %i.biq = getelementptr inbounds nuw i8, ptr %.1011451931.i, i64 2
  store i16 %i.bip, ptr %i.biq, align 2, !tbaa !27
  %i.bir = getelementptr inbounds nuw i8, ptr %.1011451931.i, i64 4 ; 2 uses
  %indvars.iv.next2357.i = add nuw nsw i64 %indvars.iv2356.i, 1 ; 2 uses
  %exitcond2360.not.i = icmp eq i64 %indvars.iv.next2357.i, %wide.trip.count2333.i
  br i1 %exitcond2360.not.i, label %._crit_edge1933.i, label %vec.epilog.scalar.ph, !llvm.loop !200

._crit_edge1937.split.i:                          ; preds = %._crit_edge1933.i, %.preheader1569.i, %.preheader1565.lr.ph.i, %.preheader1566.lr.ph.i
  %indvars.iv.next2363.i = add nuw nsw i64 %indvars.iv2362.i, 2 ; 3 uses
  %i.bis = or disjoint i64 %indvars.iv.next2363.i, 1 ; 2 uses
  %i.bit = icmp slt i64 %i.bis, %i.aoz
  %indvars.iv.next2325.i = add i32 %indvars.iv2324.i, %i.aot
  %indvars.iv.next2328.i = add i32 %indvars.iv2327.i, %i.aot
  %i.biu = trunc nsw i64 %i.bis to i32
  br i1 %i.bit, label %_ZN4ncnn3MatD2Ev.exit1295.i, label %.preheader1563.loopexit.i, !llvm.loop !201

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge2001.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv2398.i = phi i64 [ %i.baf, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2399.i, %._crit_edge2001.split.i ] ; 2 uses
  %indvars.iv2366.i = phi i32 [ %i.bab, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next2367.i, %._crit_edge2001.split.i ] ; 2 uses
  %i.biv = sext i32 %indvars.iv2366.i to i64
  %i.biw = shl nsw i64 %i.biv, 2
  %i.bix = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.biy = trunc nsw i64 %indvars.iv2398.i to i32 ; 3 uses
  %i.biz = mul i32 %i.ayy, %i.biy
  %i.bja = sext i32 %i.biz to i64
  %i.bjb = getelementptr inbounds [4 x i8], ptr %i.bix, i64 %i.bja ; 2 uses
  %i.bjc = lshr i32 %i.biy, 4
  %i.bjd = insertelement <4 x i32> poison, i32 %i.biy, i64 0
  %i.bje = shufflevector <4 x i32> %i.bjd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bjf = lshr <4 x i32> %i.bje, <i32 0, i32 3, i32 2, i32 1>
  %i.bjg = and <4 x i32> %i.bjf, splat (i32 1)
  %i.bjh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bjg)
  %op.rdx = add nuw nsw i32 %i.bjh, %i.bjc
  %i.bji = load ptr, ptr %1, align 8, !tbaa !18, !noalias !229
  %i.bjj = load i64, ptr %i.ayz, align 8, !tbaa !25, !noalias !229
  %i.bjk = zext nneg i32 %op.rdx to i64
  %i.bjl = load i64, ptr %i.aza, align 8, !tbaa !21, !noalias !229
  %i.bjm = mul i64 %i.bjl, %i.bjj
  %i.bjn = mul i64 %i.bjm, %i.bjk
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bji, i64 %i.bjn ; 4 uses
  br i1 %i.azk, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.azl, label %.preheader1558.us.i, label %.preheader1562.thread.i

.preheader1558.us.i:                              ; preds = %.preheader1558.lr.ph.i, %._crit_edge1942.us.i
  %.011001946.us.i = phi i32 [ %i.bkn, %._crit_edge1942.us.i ], [ 0, %.preheader1558.lr.ph.i ]
  %.011051945.us.i = phi ptr [ %.lcssa, %._crit_edge1942.us.i ], [ %i.bjo, %.preheader1558.lr.ph.i ] ; 2 uses
  %.011101944.us.i = phi ptr [ %i.bkm, %._crit_edge1942.us.i ], [ %i.bjb, %.preheader1558.lr.ph.i ] ; 6 uses
  br i1 %i.baj, label %.epil.preheader602, label %.preheader1558.us.i.new

.preheader1558.us.i.new:                          ; preds = %.preheader1558.us.i, %.preheader1558.us.i.new
  %indvars.iv2369.i = phi i64 [ %indvars.iv.next2370.i.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ] ; 5 uses
  %.111061940.us.i = phi ptr [ %i.bkh, %.preheader1558.us.i.new ], [ %.011051945.us.i, %.preheader1558.us.i ] ; 5 uses
  %niter609 = phi i64 [ %niter609.next.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ]
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %indvars.iv2369.i
  %i.bjq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bjp, <16 x i32> %i.azj, <16 x i1> splat (i1 true), i32 4)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjq)
  store <16 x bfloat> %i.bjr, ptr %.111061940.us.i, align 1, !tbaa !24
  %i.bjs = getelementptr inbounds nuw i8, ptr %.111061940.us.i, i64 32
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %indvars.iv2369.i
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 4
  %i.bjv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bju, <16 x i32> %i.azj, <16 x i1> splat (i1 true), i32 4)
  %i.bjw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bjv)
  store <16 x bfloat> %i.bjw, ptr %i.bjs, align 1, !tbaa !24
  %i.bjx = getelementptr inbounds nuw i8, ptr %.111061940.us.i, i64 64
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %indvars.iv2369.i
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8
  %i.bka = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bjz, <16 x i32> %i.azj, <16 x i1> splat (i1 true), i32 4)
  %i.bkb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bka)
  store <16 x bfloat> %i.bkb, ptr %i.bjx, align 1, !tbaa !24
  %i.bkc = getelementptr inbounds nuw i8, ptr %.111061940.us.i, i64 96
  %i.bkd = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %indvars.iv2369.i
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 12
  %i.bkf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bke, <16 x i32> %i.azj, <16 x i1> splat (i1 true), i32 4)
  %i.bkg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bkf)
  store <16 x bfloat> %i.bkg, ptr %i.bkc, align 1, !tbaa !24
  %i.bkh = getelementptr inbounds nuw i8, ptr %.111061940.us.i, i64 128 ; 3 uses
  %indvars.iv.next2370.i.3 = add nuw nsw i64 %indvars.iv2369.i, 4 ; 2 uses
  %niter609.next.3 = add i64 %niter609, 4         ; 2 uses
  %niter609.ncmp.3 = icmp eq i64 %niter609.next.3, %unroll_iter608
  br i1 %niter609.ncmp.3, label %._crit_edge1942.us.i.unr-lcssa, label %.preheader1558.us.i.new, !llvm.loop !204

._crit_edge1942.us.i.unr-lcssa:                   ; preds = %.preheader1558.us.i.new
  br i1 %lcmp.mod605.not, label %._crit_edge1942.us.i, label %.epil.preheader602

.epil.preheader602:                               ; preds = %._crit_edge1942.us.i.unr-lcssa, %.preheader1558.us.i
  %indvars.iv2369.i.epil.init = phi i64 [ 0, %.preheader1558.us.i ], [ %indvars.iv.next2370.i.3, %._crit_edge1942.us.i.unr-lcssa ]
  %.111061940.us.i.epil.init = phi ptr [ %.011051945.us.i, %.preheader1558.us.i ], [ %i.bkh, %._crit_edge1942.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod607)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader602
  %indvars.iv2369.i.epil = phi i64 [ %indvars.iv2369.i.epil.init, %.epil.preheader602 ], [ %indvars.iv.next2370.i.epil, %bb.bh ] ; 2 uses
  %.111061940.us.i.epil = phi ptr [ %.111061940.us.i.epil.init, %.epil.preheader602 ], [ %i.bkl, %bb.bh ] ; 2 uses
  %epil.iter604 = phi i64 [ 0, %.epil.preheader602 ], [ %epil.iter604.next, %bb.bh ]
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %indvars.iv2369.i.epil
  %i.bkj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bki, <16 x i32> %i.azj, <16 x i1> splat (i1 true), i32 4)
  %i.bkk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bkj)
  store <16 x bfloat> %i.bkk, ptr %.111061940.us.i.epil, align 1, !tbaa !24
  %i.bkl = getelementptr inbounds nuw i8, ptr %.111061940.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2370.i.epil = add nuw nsw i64 %indvars.iv2369.i.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %._crit_edge1942.us.i, label %bb.bh, !llvm.loop !205

._crit_edge1942.us.i:                             ; preds = %bb.bh, %._crit_edge1942.us.i.unr-lcssa
  %.lcssa = phi ptr [ %i.bkh, %._crit_edge1942.us.i.unr-lcssa ], [ %i.bkl, %bb.bh ] ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %.011101944.us.i, i64 %i.azn ; 2 uses
  %i.bkn = add nuw nsw i32 %.011001946.us.i, 16   ; 2 uses
  %i.bko = or disjoint i32 %i.bkn, 15
  %i.bkp = icmp slt i32 %i.bko, %2
  br i1 %i.bkp, label %.preheader1558.us.i, label %.preheader1562.i, !llvm.loop !206

.preheader1562.i:                                 ; preds = %._crit_edge1942.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.01110.lcssa.i = phi ptr [ %i.bjb, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bkm, %._crit_edge1942.us.i ] ; 3 uses
  %.01105.lcssa.i = phi ptr [ %i.bjo, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1942.us.i ] ; 3 uses
  %.01100.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bad, %._crit_edge1942.us.i ] ; 4 uses
  %i.bkq = or disjoint i32 %.01100.lcssa.i, 7
  %i.bkr = icmp slt i32 %i.bkq, %2
  br i1 %i.bkr, label %.preheader1557.lr.ph.i, label %.preheader1561.i

.preheader1562.thread.i:                          ; preds = %.preheader1558.lr.ph.i
  %scevgep2365.i = getelementptr i8, ptr %i.bix, i64 %i.baa
  %scevgep2368.i = getelementptr i8, ptr %scevgep2365.i, i64 %i.biw ; 2 uses
  br i1 %i.bah, label %.preheader1557.preheader.i, label %.preheader1561.i

.preheader1557.lr.ph.i:                           ; preds = %.preheader1562.i
  br i1 %i.azl, label %.preheader1557.us.i, label %.preheader1557.preheader.i

.preheader1557.preheader.i:                       ; preds = %.preheader1557.lr.ph.i, %.preheader1562.thread.i
  %.01110.lcssa26032611.i = phi ptr [ %.01110.lcssa.i, %.preheader1557.lr.ph.i ], [ %scevgep2368.i, %.preheader1562.thread.i ]
  %.01105.lcssa26042610.i = phi ptr [ %.01105.lcssa.i, %.preheader1557.lr.ph.i ], [ %i.bjo, %.preheader1562.thread.i ]
  %.01100.lcssa26052609.i = phi i32 [ %.01100.lcssa.i, %.preheader1557.lr.ph.i ], [ %i.bad, %.preheader1562.thread.i ] ; 2 uses
  %i.bks = sub i32 %i.bae, %.01100.lcssa26052609.i ; 2 uses
  %i.bkt = lshr i32 %i.bks, 1
  %i.bku = and i32 %i.bkt, 2147483644
  %narrow2445.i = add nuw i32 %i.bku, 4
  %i.bkv = zext i32 %narrow2445.i to i64
  %i.bkw = mul nsw i64 %i.bkv, %i.azp
  %scevgep2374.i = getelementptr i8, ptr %.01110.lcssa26032611.i, i64 %i.bkw
  %i.bkx = add i32 %.01100.lcssa26052609.i, 8
  %i.bky = and i32 %i.bks, -8
  %i.bkz = add i32 %i.bkx, %i.bky
  br label %.preheader1561.i

.preheader1557.us.i:                              ; preds = %.preheader1557.lr.ph.i, %._crit_edge1955.us.i
  %.111011959.us.i = phi i32 [ %i.bly, %._crit_edge1955.us.i ], [ %.01100.lcssa.i, %.preheader1557.lr.ph.i ]
  %.211071958.us.i = phi ptr [ %.lcssa447, %._crit_edge1955.us.i ], [ %.01105.lcssa.i, %.preheader1557.lr.ph.i ] ; 2 uses
  %.111111957.us.i = phi ptr [ %i.blx, %._crit_edge1955.us.i ], [ %.01110.lcssa.i, %.preheader1557.lr.ph.i ] ; 6 uses
  br i1 %i.bak, label %.epil.preheader610, label %.preheader1557.us.i.new

.preheader1557.us.i.new:                          ; preds = %.preheader1557.us.i, %.preheader1557.us.i.new
  %indvars.iv2375.i = phi i64 [ %indvars.iv.next2376.i.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ] ; 5 uses
  %.311081953.us.i = phi ptr [ %i.bls, %.preheader1557.us.i.new ], [ %.211071958.us.i, %.preheader1557.us.i ] ; 5 uses
  %niter617 = phi i64 [ %niter617.next.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ]
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %indvars.iv2375.i
  %i.blb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bla, <8 x i32> %i.azg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blb)
  store <8 x bfloat> %i.blc, ptr %.311081953.us.i, align 1, !tbaa !24
  %i.bld = getelementptr inbounds nuw i8, ptr %.311081953.us.i, i64 16
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %indvars.iv2375.i
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 4
  %i.blg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blf, <8 x i32> %i.azg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blg)
  store <8 x bfloat> %i.blh, ptr %i.bld, align 1, !tbaa !24
  %i.bli = getelementptr inbounds nuw i8, ptr %.311081953.us.i, i64 32
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %indvars.iv2375.i
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  %i.bll = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blk, <8 x i32> %i.azg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bll)
  store <8 x bfloat> %i.blm, ptr %i.bli, align 1, !tbaa !24
  %i.bln = getelementptr inbounds nuw i8, ptr %.311081953.us.i, i64 48
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %indvars.iv2375.i
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 12
  %i.blq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blp, <8 x i32> %i.azg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blq)
  store <8 x bfloat> %i.blr, ptr %i.bln, align 1, !tbaa !24
  %i.bls = getelementptr inbounds nuw i8, ptr %.311081953.us.i, i64 64 ; 3 uses
  %indvars.iv.next2376.i.3 = add nuw nsw i64 %indvars.iv2375.i, 4 ; 2 uses
  %niter617.next.3 = add i64 %niter617, 4         ; 2 uses
  %niter617.ncmp.3 = icmp eq i64 %niter617.next.3, %unroll_iter616
  br i1 %niter617.ncmp.3, label %._crit_edge1955.us.i.unr-lcssa, label %.preheader1557.us.i.new, !llvm.loop !207

._crit_edge1955.us.i.unr-lcssa:                   ; preds = %.preheader1557.us.i.new
  br i1 %lcmp.mod613.not, label %._crit_edge1955.us.i, label %.epil.preheader610

.epil.preheader610:                               ; preds = %._crit_edge1955.us.i.unr-lcssa, %.preheader1557.us.i
  %indvars.iv2375.i.epil.init = phi i64 [ 0, %.preheader1557.us.i ], [ %indvars.iv.next2376.i.3, %._crit_edge1955.us.i.unr-lcssa ]
  %.311081953.us.i.epil.init = phi ptr [ %.211071958.us.i, %.preheader1557.us.i ], [ %i.bls, %._crit_edge1955.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod615)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader610
  %indvars.iv2375.i.epil = phi i64 [ %indvars.iv2375.i.epil.init, %.epil.preheader610 ], [ %indvars.iv.next2376.i.epil, %bb.bi ] ; 2 uses
  %.311081953.us.i.epil = phi ptr [ %.311081953.us.i.epil.init, %.epil.preheader610 ], [ %i.blw, %bb.bi ] ; 2 uses
  %epil.iter612 = phi i64 [ 0, %.epil.preheader610 ], [ %epil.iter612.next, %bb.bi ]
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %indvars.iv2375.i.epil
  %i.blu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blt, <8 x i32> %i.azg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blu)
  store <8 x bfloat> %i.blv, ptr %.311081953.us.i.epil, align 1, !tbaa !24
  %i.blw = getelementptr inbounds nuw i8, ptr %.311081953.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2376.i.epil = add nuw nsw i64 %indvars.iv2375.i.epil, 1
  %epil.iter612.next = add i64 %epil.iter612, 1   ; 2 uses
  %epil.iter612.cmp.not = icmp eq i64 %epil.iter612.next, %xtraiter611
  br i1 %epil.iter612.cmp.not, label %._crit_edge1955.us.i, label %bb.bi, !llvm.loop !208

._crit_edge1955.us.i:                             ; preds = %bb.bi, %._crit_edge1955.us.i.unr-lcssa
  %.lcssa447 = phi ptr [ %i.bls, %._crit_edge1955.us.i.unr-lcssa ], [ %i.blw, %bb.bi ] ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %.111111957.us.i, i64 %i.azp ; 2 uses
  %i.bly = add nuw nsw i32 %.111011959.us.i, 8    ; 3 uses
  %i.blz = or disjoint i32 %i.bly, 7
  %i.bma = icmp slt i32 %i.blz, %2
  br i1 %i.bma, label %.preheader1557.us.i, label %.preheader1561.i, !llvm.loop !209

.preheader1561.i:                                 ; preds = %._crit_edge1955.us.i, %.preheader1557.preheader.i, %.preheader1562.thread.i, %.preheader1562.i
  %.11111.lcssa.i = phi ptr [ %.01110.lcssa.i, %.preheader1562.i ], [ %scevgep2368.i, %.preheader1562.thread.i ], [ %scevgep2374.i, %.preheader1557.preheader.i ], [ %i.blx, %._crit_edge1955.us.i ] ; 2 uses
  %.21107.lcssa.i = phi ptr [ %.01105.lcssa.i, %.preheader1562.i ], [ %i.bjo, %.preheader1562.thread.i ], [ %.01105.lcssa26042610.i, %.preheader1557.preheader.i ], [ %.lcssa447, %._crit_edge1955.us.i ] ; 2 uses
  %.11101.lcssa.i = phi i32 [ %.01100.lcssa.i, %.preheader1562.i ], [ %i.bad, %.preheader1562.thread.i ], [ %i.bkz, %.preheader1557.preheader.i ], [ %i.bly, %._crit_edge1955.us.i ] ; 3 uses
  %i.bmb = or disjoint i32 %.11101.lcssa.i, 3
  %i.bmc = icmp slt i32 %i.bmb, %2
  br i1 %i.bmc, label %.preheader1556.lr.ph.i, label %.preheader1560.i

.preheader1556.lr.ph.i:                           ; preds = %.preheader1561.i
  br i1 %i.azl, label %.preheader1556.us.i, label %._crit_edge2001.split.i

.preheader1556.us.i:                              ; preds = %.preheader1556.lr.ph.i, %._crit_edge1968.us.i
  %.211021972.us.i = phi i32 [ %i.bnq, %._crit_edge1968.us.i ], [ %.11101.lcssa.i, %.preheader1556.lr.ph.i ]
  %.411091971.us.i = phi ptr [ %.lcssa450, %._crit_edge1968.us.i ], [ %.21107.lcssa.i, %.preheader1556.lr.ph.i ] ; 2 uses
  %.211121970.us.i = phi ptr [ %i.bnp, %._crit_edge1968.us.i ], [ %.11111.lcssa.i, %.preheader1556.lr.ph.i ] ; 6 uses
  br i1 %i.bal, label %.epil.preheader618, label %.preheader1556.us.i.new

.preheader1556.us.i.new:                          ; preds = %.preheader1556.us.i, %.preheader1556.us.i.new
  %indvars.iv2381.i = phi i64 [ %indvars.iv.next2382.i.3, %.preheader1556.us.i.new ], [ 0, %.preheader1556.us.i ] ; 5 uses
  %.51966.us.i = phi ptr [ %i.bnh, %.preheader1556.us.i.new ], [ %.411091971.us.i, %.preheader1556.us.i ] ; 5 uses
  %niter625 = phi i64 [ %niter625.next.3, %.preheader1556.us.i.new ], [ 0, %.preheader1556.us.i ]
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %indvars.iv2381.i
  %i.bme = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bmd, <4 x i32> %i.azd, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmf = shufflevector <4 x float> %i.bme, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bmg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bmf)
  %i.bmh = bitcast <8 x bfloat> %i.bmg to <2 x i64>
  %i.bmi = extractelement <2 x i64> %i.bmh, i64 0
  store i64 %i.bmi, ptr %.51966.us.i, align 1, !tbaa !24
  %i.bmj = getelementptr inbounds nuw i8, ptr %.51966.us.i, i64 8
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %indvars.iv2381.i
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 4
  %i.bmm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bml, <4 x i32> %i.azd, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmn = shufflevector <4 x float> %i.bmm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bmo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bmn)
  %i.bmp = bitcast <8 x bfloat> %i.bmo to <2 x i64>
  %i.bmq = extractelement <2 x i64> %i.bmp, i64 0
  store i64 %i.bmq, ptr %i.bmj, align 1, !tbaa !24
  %i.bmr = getelementptr inbounds nuw i8, ptr %.51966.us.i, i64 16
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %indvars.iv2381.i
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 8
  %i.bmu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmt, <4 x i32> %i.azd, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmv = shufflevector <4 x float> %i.bmu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bmw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bmv)
  %i.bmx = bitcast <8 x bfloat> %i.bmw to <2 x i64>
  %i.bmy = extractelement <2 x i64> %i.bmx, i64 0
  store i64 %i.bmy, ptr %i.bmr, align 1, !tbaa !24
  %i.bmz = getelementptr inbounds nuw i8, ptr %.51966.us.i, i64 24
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %indvars.iv2381.i
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 12
  %i.bnc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnb, <4 x i32> %i.azd, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnd = shufflevector <4 x float> %i.bnc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bne = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bnd)
  %i.bnf = bitcast <8 x bfloat> %i.bne to <2 x i64>
  %i.bng = extractelement <2 x i64> %i.bnf, i64 0
  store i64 %i.bng, ptr %i.bmz, align 1, !tbaa !24
  %i.bnh = getelementptr inbounds nuw i8, ptr %.51966.us.i, i64 32 ; 3 uses
  %indvars.iv.next2382.i.3 = add nuw nsw i64 %indvars.iv2381.i, 4 ; 2 uses
  %niter625.next.3 = add i64 %niter625, 4         ; 2 uses
  %niter625.ncmp.3 = icmp eq i64 %niter625.next.3, %unroll_iter624
  br i1 %niter625.ncmp.3, label %._crit_edge1968.us.i.unr-lcssa, label %.preheader1556.us.i.new, !llvm.loop !210

._crit_edge1968.us.i.unr-lcssa:                   ; preds = %.preheader1556.us.i.new
  br i1 %lcmp.mod621.not, label %._crit_edge1968.us.i, label %.epil.preheader618

.epil.preheader618:                               ; preds = %._crit_edge1968.us.i.unr-lcssa, %.preheader1556.us.i
  %indvars.iv2381.i.epil.init = phi i64 [ 0, %.preheader1556.us.i ], [ %indvars.iv.next2382.i.3, %._crit_edge1968.us.i.unr-lcssa ]
  %.51966.us.i.epil.init = phi ptr [ %.411091971.us.i, %.preheader1556.us.i ], [ %i.bnh, %._crit_edge1968.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod623)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader618
  %indvars.iv2381.i.epil = phi i64 [ %indvars.iv2381.i.epil.init, %.epil.preheader618 ], [ %indvars.iv.next2382.i.epil, %bb.bj ] ; 2 uses
  %.51966.us.i.epil = phi ptr [ %.51966.us.i.epil.init, %.epil.preheader618 ], [ %i.bno, %bb.bj ] ; 2 uses
  %epil.iter620 = phi i64 [ 0, %.epil.preheader618 ], [ %epil.iter620.next, %bb.bj ]
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %indvars.iv2381.i.epil
  %i.bnj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bni, <4 x i32> %i.azd, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnk = shufflevector <4 x float> %i.bnj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bnl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bnk)
  %i.bnm = bitcast <8 x bfloat> %i.bnl to <2 x i64>
  %i.bnn = extractelement <2 x i64> %i.bnm, i64 0
  store i64 %i.bnn, ptr %.51966.us.i.epil, align 1, !tbaa !24
  %i.bno = getelementptr inbounds nuw i8, ptr %.51966.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2382.i.epil = add nuw nsw i64 %indvars.iv2381.i.epil, 1
  %epil.iter620.next = add i64 %epil.iter620, 1   ; 2 uses
  %epil.iter620.cmp.not = icmp eq i64 %epil.iter620.next, %xtraiter619
  br i1 %epil.iter620.cmp.not, label %._crit_edge1968.us.i, label %bb.bj, !llvm.loop !211

._crit_edge1968.us.i:                             ; preds = %bb.bj, %._crit_edge1968.us.i.unr-lcssa
  %.lcssa450 = phi ptr [ %i.bnh, %._crit_edge1968.us.i.unr-lcssa ], [ %i.bno, %bb.bj ] ; 2 uses
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %.211121970.us.i, i64 %i.azr ; 2 uses
  %i.bnq = add nuw nsw i32 %.211021972.us.i, 4    ; 3 uses
  %i.bnr = or disjoint i32 %i.bnq, 3
  %i.bns = icmp slt i32 %i.bnr, %2
  br i1 %i.bns, label %.preheader1556.us.i, label %.preheader1560.i, !llvm.loop !212

.preheader1560.i:                                 ; preds = %._crit_edge1968.us.i, %.preheader1561.i
  %.21112.lcssa.i = phi ptr [ %.11111.lcssa.i, %.preheader1561.i ], [ %i.bnp, %._crit_edge1968.us.i ] ; 2 uses
  %.41109.lcssa.i = phi ptr [ %.21107.lcssa.i, %.preheader1561.i ], [ %.lcssa450, %._crit_edge1968.us.i ] ; 2 uses
  %.21102.lcssa.i = phi i32 [ %.11101.lcssa.i, %.preheader1561.i ], [ %i.bnq, %._crit_edge1968.us.i ] ; 3 uses
  %i.bnt = or disjoint i32 %.21102.lcssa.i, 1
  %i.bnu = icmp slt i32 %i.bnt, %2
  br i1 %i.bnu, label %.preheader1555.lr.ph.i, label %.preheader1559.i

.preheader1555.lr.ph.i:                           ; preds = %.preheader1560.i
  br i1 %i.azl, label %iter.check419, label %._crit_edge2001.split.i

iter.check419:                                    ; preds = %.preheader1555.lr.ph.i, %._crit_edge1984.us.i
  %.311031988.us.i = phi i32 [ %i.boz, %._crit_edge1984.us.i ], [ %.21102.lcssa.i, %.preheader1555.lr.ph.i ]
  %.61987.us.i = phi ptr [ %.lcssa252, %._crit_edge1984.us.i ], [ %.41109.lcssa.i, %.preheader1555.lr.ph.i ] ; 6 uses
  %.311131986.us.i = phi ptr [ %i.boy, %._crit_edge1984.us.i ], [ %.21112.lcssa.i, %.preheader1555.lr.ph.i ] ; 4 uses
  br i1 %min.iters.check400, label %vec.epilog.scalar.ph420.preheader, label %vector.main.loop.iter.check401

vector.main.loop.iter.check401:                   ; preds = %iter.check419
  br i1 %min.iters.check402, label %vec.epilog.ph423, label %vector.ph403

vector.ph403:                                     ; preds = %vector.main.loop.iter.check401
  %i.bnv = getelementptr i8, ptr %.61987.us.i, i64 %i.ban ; 2 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next415, %vector.body405 ] ; 3 uses
  %i.bnw = shl i64 %index406, 2                   ; 2 uses
  %next.gep407 = getelementptr i8, ptr %.61987.us.i, i64 %i.bnw
  %i.bnx = getelementptr i8, ptr %.61987.us.i, i64 %i.bnw
  %next.gep408 = getelementptr i8, ptr %i.bnx, i64 64
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %index406 ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 64
end_hunk_9
